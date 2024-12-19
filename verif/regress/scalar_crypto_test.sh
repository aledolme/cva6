# setup sim env
source ./verif/sim/setup-env.sh

export DV_SIMULATORS=veri-testharness,spike
export DV_TARGET=cv64a6_imafdc_sv39

TESTLIST=../tests/testlist_riscv-arch-test-crypto.yaml

cd verif/sim
python3 cva6.py --testlist=$TESTLIST --target $DV_TARGET --iss_yaml=cva6.yaml --iss=$DV_SIMULATORS --issrun_opts="+tb_performance_mode" $DV_OPTS --linker=../tests/riscv-arch-test/riscv-target/spike/link.ld --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh

cd ..
cd ..
