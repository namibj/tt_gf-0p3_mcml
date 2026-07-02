#!/usr/bin/env python3
import argparse
import shutil
import struct
from pathlib import Path

BOUNDARY = 0x08
LAYER = 0x0D
DATATYPE = 0x0E
XY = 0x10
ENDEL = 0x11
STRNAME = 0x06
ENDSTR = 0x07

ANALOG_STUBS = [
    (325820, 1000, 328860, 30000),
    (282140, 1000, 285140, 30000),
    (238460, 1000, 241460, 30000),
    (194780, 1000, 197780, 30000),
    (151100, 1000, 154100, 30000),
    (107420, 1000, 110420, 30000),
]


def record(record_type, data_type=0, payload=b""):
    return struct.pack(">HBB", len(payload) + 4, record_type, data_type) + payload


def int2(value):
    return struct.pack(">h", value)


def int4s(values):
    return struct.pack(">" + "i" * len(values), *values)


def boundary(rect):
    x1, y1, x2, y2 = rect
    xy = [x1, y1, x2, y1, x2, y2, x1, y2, x1, y1]
    return b"".join([
        record(BOUNDARY),
        record(LAYER, 2, int2(46)),
        record(DATATYPE, 2, int2(0)),
        record(XY, 3, int4s(xy)),
        record(ENDEL),
    ])


def existing_metal4_rects(data):
    rects = set()
    i = 0
    in_boundary = False
    layer = None
    datatype = None
    while i < len(data):
        length, record_type, _data_type = struct.unpack(">HBB", data[i:i + 4])
        payload = data[i + 4:i + length]
        if record_type == BOUNDARY:
            in_boundary = True
            layer = None
            datatype = None
        elif record_type == LAYER:
            layer = struct.unpack(">h", payload[:2])[0]
        elif record_type == DATATYPE:
            datatype = struct.unpack(">h", payload[:2])[0]
        elif record_type == XY and in_boundary and layer == 46 and datatype == 0:
            values = struct.unpack(">" + "i" * (len(payload) // 4), payload)
            xs = values[0::2]
            ys = values[1::2]
            rects.add((min(xs), min(ys), max(xs), max(ys)))
        elif record_type == ENDEL:
            in_boundary = False
        i += length
    return rects


def add_analog_stubs(source_gds, output_gds, top):
    data = source_gds.read_bytes()
    missing = [rect for rect in ANALOG_STUBS if rect not in existing_metal4_rects(data)]
    out = bytearray()
    i = 0
    in_top = False
    inserted = False
    stub_data = b"".join(boundary(rect) for rect in missing)

    while i < len(data):
        length, record_type, data_type = struct.unpack(">HBB", data[i:i + 4])
        if length < 4 or i + length > len(data):
            raise RuntimeError("invalid GDS record")
        rec = data[i:i + length]
        payload = rec[4:]

        if record_type == STRNAME:
            name = payload.rstrip(b"\0").decode("ascii", errors="replace")
            in_top = name == top
        elif record_type == ENDSTR and in_top:
            out.extend(stub_data)
            inserted = True
            in_top = False

        out.extend(rec)
        i += length

    if not inserted:
        raise RuntimeError(f"top cell {top!r} not found in {source_gds}")
    output_gds.parent.mkdir(parents=True, exist_ok=True)
    output_gds.write_bytes(out)
    print(f"added {len(missing)} analog pin metal stub(s)")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--top", required=True)
    parser.add_argument("--source-gds", required=True, type=Path)
    parser.add_argument("--source-lef", required=True, type=Path)
    parser.add_argument("--out-gds", required=True, type=Path)
    parser.add_argument("--out-lef", required=True, type=Path)
    args = parser.parse_args()

    add_analog_stubs(args.source_gds, args.out_gds, args.top)
    args.out_lef.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(args.source_lef, args.out_lef)


if __name__ == "__main__":
    main()
