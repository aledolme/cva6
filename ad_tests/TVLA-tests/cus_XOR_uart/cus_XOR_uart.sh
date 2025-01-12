#!/bin/bash

# Source environment setup
source ./verif/sim/setup-env.sh

DV_TARGET=cv64a6_imafdc_sv39

# Set the NUM_JOBS variable to increase the number of parallel make jobs
# export NUM_JOBS=

export DV_SIMULATORS=veri-testharness
# export DV_SIMULATORS=spike
export TRACE_FAST=1

# Check input argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <mode>"
    echo "  mode: 0 for full simulation (run_c), 1 for FPGA file generation (generate_fpga_files)"
    exit 1
fi

MODE=$1

cd ./verif/sim

if [ "$MODE" -eq 0 ]; then
    echo "Running full simulation (run_c)..."
    python3 cva6.py --target cv64a6_imafdc_sv39 --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml \
    --c_tests ../../ad_tests/TVLA-tests/cus_XOR_uart/cus_XOR_uart.c \
    --linker=../tests/custom/common/test.ld \
    --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -O0 \
    -nostartfiles -g ../tests/custom/common/syscalls.c \
    ../tests/custom/common/crt.S -lgcc \
    -I../tests/custom/env -I../tests/custom/common"
elif [ "$MODE" -eq 1 ]; then
    echo "Generating FPGA files (generate_fpga_files)..."
    python3 -c "
from cva6 import generate_fpga_files

# Define parameters
c_test = '../../ad_tests/TVLA-tests/cus_XOR_uart/cus_XOR_uart.c'
linker = '../tests/custom/common/test.ld'
gcc_opts = '-static -mcmodel=medany -fvisibility=hidden -O0 -nostartfiles -g ../tests/custom/common/syscalls.c ../tests/custom/common/crt.S -lgcc -I../tests/custom/env -I../tests/custom/common'
output_dir = './FPGA_output'
isa = 'rv64imafdc'
mabi = 'lp64'

# Call the function
generate_fpga_files(c_test=c_test, linker=linker, gcc_opts=gcc_opts, isa=isa, mabi=mabi, output_dir=output_dir)
"
else
    echo "Invalid mode: $MODE. Use 0 for full simulation or 1 for FPGA file generation."
    exit 1
fi

cd ..
cd ..
