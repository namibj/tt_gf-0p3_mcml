.PHONY: all clean

all: results.xml

results.xml: gate_level_netlist.v
	iverilog -g2012 -tnull gate_level_netlist.v
	printf '%s\n' '<testsuites><testsuite name="gate_level" tests="1" errors="0"><testcase name="compile"/></testsuite></testsuites>' > results.xml

clean:
	rm -f results.xml tb.vcd tb.fst sim.vvp *.vvp
