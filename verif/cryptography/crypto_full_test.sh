#-----------------------------------------------------------------------------
# This script performs separate regression tests for each instruction within 
# the scalar cryptography extensions.
#-----------------------------------------------------------------------------
# Author: Behnam Farnaghinejad
#-----------------------------------------------------------------------------

source ./verif/cryptography/setup-env.sh

export DV_SIMULATORS=veri-testharness,spike
export DV_TARGET=cv64a6_imafdc_sv39

make clean
make -C verif/sim clean_all

cd verif/sim
python3 cva6.py \
        --testlist=../tests/testlist_riscv-arch-test-crypto.yaml  \
        --target $DV_TARGET \
        --iss=$DV_SIMULATORS \
        --iss_yaml=cva6.yaml $DV_OPTS \
        --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh \

cd -
cd -
