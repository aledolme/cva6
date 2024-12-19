# Under development
#-----------------------------------------------------------------------------
# Author: Behnam Farnaghinejad
#-----------------------------------------------------------------------------

source ./verif/cryptography/setup-env.sh

export DV_SIMULATORS=veri-testharness,vcs-testharness,spike
export DV_TARGET=cv64a6_imafdc_sv39

cd ./verif/sim

# Generate VCD waveforms
export TRACE_FAST=1 
export cov=1

python3 cva6.py --target $DV_TARGET --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml \
    --c_tests ../tests/custom/cryptography/aes_single_block/aes_asm_single_encryption_attack.c \
    --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh \
    --linker=../tests/custom/common/test.ld \
    --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -nostdlib \
    -nostartfiles -g ../tests/custom/common/syscalls.c \
    ../tests/custom/common/crt.S -lgcc \
    -I../tests/custom/env -I../tests/custom/common"

cd ..
cd ..