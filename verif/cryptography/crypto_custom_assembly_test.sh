# Copyright 2022 Thales DIS design services SAS
#
# Licensed under the Solderpad Hardware Licence, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0
# You may obtain a copy of the License at https://solderpad.org/licenses/
#
# Original Author: Zbigniew CHAMSKI (zbigniew.chamski@thalesgroup.fr)

# where are the tools
if ! [ -n "$RISCV" ]; then
  echo "Error: RISCV variable undefined"
  return
fi

# install the required tools
source verif/regress/install-cva6.sh
source verif/regress/install-riscv-dv.sh
source verif/regress/install-riscv-tests.sh


if ! [ -n "$DV_TARGET" ]; then
  DV_TARGET=cv64a6_imafdc_sv39
fi

if ! [ -n "$DV_SIMULATORS" ]; then
  DV_SIMULATORS=vcs-uvm
fi

make clean
make -C verif/sim clean_all

cd verif/sim
python3 cva6.py \
        --testlist=../tests/testlist_custom_crypto.yaml  \
        --target $DV_TARGET \
        --iss=$DV_SIMULATORS \
        --iss_yaml=cva6.yaml $DV_OPTS \
        --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh \

cd -
cd -
