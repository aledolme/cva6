#-----------------------------------------------------------------------------
# This shell script automates cryptographic verification tasks. It sets up the 
# environment, executes cryptographic tests, converts simulation output to 
# SAIF files, and cleans up afterward
#-----------------------------------------------------------------------------
# Author: Behnam Farnaghinejad
#-----------------------------------------------------------------------------

source ./verif/cryptography/setup-env.sh

export DV_SIMULATORS=veri-testharness,spike
export DV_TARGET=cv64a6_imafdc_sv39

cd ./verif/sim

# Generate VCD waveforms
#export TRACE_FAST=1 

# Directory containing the C files
C_DIR="../tests/custom/cryptography/aes_asm_multiple_tests/encryption/random/"

# Directory containing the VCD files
VCD_DIR="../sim/out_2024-05-08/veri-testharness_sim/"

# Output Directory to save the SAIF files
SAIF_DIR="../sim/saif_specific_programs_temp/"


mkdir -p ${SAIF_DIR}

# Loop through each file in the directory excluding aes_asm.h
for file in ${C_DIR}aes_asm_single_*; do
    # Exclude aes_asm.h
    if [[ "$file" == "${c_DIR}aes_asm.h" ]]; then
        continue
    fi

    # Extract the filename without extension
    filename=$(basename -- "$file")
    filename_no_ext="${filename%.*}"

    # Construct the command with the current filename
    cmd="python3 cva6.py --target \$DV_TARGET --iss=\$DV_SIMULATORS --iss_yaml=cva6.yaml \
        --c_tests ${file} \
        --isa_extension zbkb_zbkc_zbkx_zknd_zkne_zknh_zksed_zksh \
        --linker=../tests/custom/common/test.ld \
        --gcc_opts=\"-static -mcmodel=medany -fvisibility=hidden -nostdlib \
        -nostartfiles -g ../tests/custom/common/syscalls.c \
        ../tests/custom/common/crt.S -lgcc \
        -I../tests/custom/env -I../tests/custom/common\""

    # Execute the command
    echo "Executing: ${cmd}"
    eval ${cmd}
    
    sleep 2

    # Loop through each .vcd file in the directory
    for Vfile in ${VCD_DIR}*.vcd; do
        # Extract the filename without extension
        Vfilename=$(basename -- "$Vfile")
        Vfilename_no_ext="${Vfilename%.*}"

        # Replace '.' with '_' in the filename for the output saif file
        out_file="${Vfilename_no_ext//./_}.saif"

        # Construct the command with the current filenames
        cmd="vcd2saif -input ${Vfile} -output ${SAIF_DIR}${out_file}"

        # Execute the command
        echo "Executing: ${cmd}"
        eval ${cmd}

        # Remove the VCD file after conversion
        echo "Removing VCD file: ${Vfile}"
        rm ${Vfile}
    done

done

cd ..
cd ..