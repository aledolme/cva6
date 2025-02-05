module register_file (
    input  logic        clk_i,
    input  logic        rst_ni,
    input  logic [3:0]  addr_i,      // Address for read/write
    input  logic [63:0] input0_i,    // Input data 1
    input  logic [63:0] input1_i,    // Input data 2
    input  logic [63:0] input2_i,
    input  logic        random_i,
    input  logic        write_en_i,  // Enable signal for writing
    input  logic        read_en_i,   // Enable signal for reading
    output logic [63:0] output_o     // Output data
);

    parameter NUM_REGS = 16;  // 16 registers
    
    logic [63:0] register_array [0:NUM_REGS-1];

    // Synchronous write
    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            register_array <= '{default: '0}; // Reset all registers to 0
        end else if (write_en_i && ~random_i) begin
            register_array[addr_i] <= input0_i; 
            register_array[addr_i + 1] <= input1_i;
        end else if (write_en_i && random_i) begin
            register_array[addr_i]     <= register_array[input0_i[4:0]] ^ input1_i; 
            register_array[addr_i + 1] <= register_array[input0_i[4:0] + 1] ^ input2_i;
            register_array[addr_i + 2] <= input1_i;
            register_array[addr_i + 3] <= input2_i;
        end
    end

    // Read logic
    always_comb begin
        if (read_en_i)
            output_o = register_array[addr_i];
        else
            output_o = 64'b0;
    end

endmodule