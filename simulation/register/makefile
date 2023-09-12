TEST_BENCH = register_tb
SUB_MODULE_FILES = ../../moudles/register.v

MODULE_FILES=${TEST_BENCH}.v ${SUB_MODULE_FILES}

YOSYS_TOOLCHAIN = ${HOME}/.apio/packages/toolchain-yosys
SIM_TOOLCHAIN = ${HOME}/.apio/packages/toolchain-iverilog

OUTPUT_PATH = /media/RAMDisk

.PHONY: all

sim: 
	@echo "#### Simulating Register file via iverilog"
	${SIM_TOOLCHAIN}/bin/iverilog -B "${YOSYS_TOOLCHAIN}/lib/ivl" -o ${OUTPUT_PATH}/netlist.out \
	-DSIMULATE \
	-DNO_ICE40_DEFAULT_ASSIGNMENTS \
	${ICE}