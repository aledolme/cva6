# Under development
#-----------------------------------------------------------------------------
# Author: Behnam Farnaghinejad
#-----------------------------------------------------------------------------

source ./verif/cryptography/setup-env.sh

export DV_SIMULATORS=veri-testharness
export DV_TARGET=cv64a6_imafdc_sv39

cd ./verif/sim

#export TRACE_FAST=1

BDIR=../tests/custom/cryptography/benchmark/
CVA6_FLAGS="--target $DV_TARGET --iss=$DV_SIMULATORS --iss_yaml cva6.yaml --linker ../tests/custom/common/test.ld"

GCC_COMMON_SRC=(
        ../tests/custom/common/syscalls.c \
        ../tests/custom/common/crt.S
)

GCC_CFLAGS=(
        -fno-tree-loop-distribute-patterns
        -static
        -mcmodel=medany
        -fvisibility=hidden
        -nostdlib
        -nostartfiles
        -lgcc
        -I../tests/custom/env
        -I../tests/custom/common
        -DNOPRINT
)

GCC_OPTS="${GCC_CFLAGS[*]} ${GCC_COMMON_SRC[*]}"

python3 cva6.py $CVA6_FLAGS --c_tests $BDIR/scalar/aes.c  --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh  --gcc_opts "$GCC_OPTS -I$BDIR/scalar/    $BDIR/scalar/main.c"

cd -
