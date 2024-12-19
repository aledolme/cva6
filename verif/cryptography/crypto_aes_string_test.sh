#-----------------------------------------------------------------------------
# This script checks AES encryption and decryption functions. It tests AES-128 
# C programs with different key and text combinations, with and without a 
# cryptographic accelerator. The results are then analyzed and compared.
#-----------------------------------------------------------------------------
# Author: Behnam Farnaghinejad
#-----------------------------------------------------------------------------

source ./verif/cryptography/setup-env.sh

export DV_SIMULATORS=veri-testharness,spike
export DV_TARGET=cv64a6_imafdc_sv39

cd verif/sim

# run the test
python3 cva6.py --target $DV_TARGET --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml \
                --c_tests ../tests/custom/cryptography/aes_string/aes_asm.c \
                --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh \
                --linker=../tests/custom/common/test.ld \
                --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -nostdlib \
                            -nostartfiles -g ../tests/custom/common/syscalls.c \
                            ../tests/custom/common/crt.S -lgcc \
                            -I../tests/custom/env -I../tests/custom/common"

python3 cva6.py --target $DV_TARGET --iss=$DV_SIMULATORS --iss_yaml=cva6.yaml \
                --c_tests ../tests/custom/cryptography/aes_string/aes.c \
                --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh \
                --linker=../tests/custom/common/test.ld \
                --gcc_opts="-static -mcmodel=medany -fvisibility=hidden -nostdlib \
                            -nostartfiles -g ../tests/custom/common/syscalls.c \
                            ../tests/custom/common/crt.S -lgcc \
                            -I../tests/custom/env -I../tests/custom/common"


cd -
cd -
