# CVA6 project root
if [ -n "$BASH_VERSION" ]; then
  SCRIPT_PATH="$BASH_SOURCE[0]"
elif [ -n "$ZSH_VERSION" ]; then
  SCRIPT_PATH="${(%):-%N}"
else
  echo "Error: Non recognized shell."
  return
fi
export ROOT_PROJECT=$(readlink -f $(dirname "${SCRIPT_PATH}")/../..)

export RTL_PATH=$ROOT_PROJECT/
export TB_PATH=$ROOT_PROJECT/verif/tb/core
export TESTS_PATH=$ROOT_PROJECT/verif/tests

export RISCV=$ROOT_PROJECT/util/riscv_toolchain

# Set RISCV toolchain-related variables
export LIBRARY_PATH="$RISCV/lib"
export LD_LIBRARY_PATH="$RISCV/lib:$LD_LIBRARY_PATH"
export C_INCLUDE_PATH="$RISCV/include"
export CPLUS_INCLUDE_PATH="$RISCV/include"

export CV_SW_PREFIX="$(ls -1 -r $RISCV/bin/riscv*-gcc | head -n 1| grep gcc | rev | cut -d '/' -f 1 | cut -d '-' -f 2- | rev)-"
export RISCV_GCC=$RISCV/bin/${CV_SW_PREFIX}gcc
export RISCV_OBJCOPY=$RISCV/bin/${CV_SW_PREFIX}objcopy
export VERILATOR_INSTALL_DIR="$ROOT_PROJECT"/tools/verilator-v5.008
export SPIKE_SRC_DIR="$ROOT_PROJECT"/verif/core-v-verif/vendor/riscv/riscv-isa-sim
export SPIKE_INSTALL_DIR="$ROOT_PROJECT"/tools/spike

export SPIKE_PATH="$SPIKE_INSTALL_DIR"/bin

# Update the PATH to add all the tools
export PATH="$VERILATOR_INSTALL_DIR/bin:$RISCV/bin:$PATH"
