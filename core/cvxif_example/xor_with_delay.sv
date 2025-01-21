module xor_with_delay #(
    parameter int DELAY_CYCLES = 1 // Number of clock cycles to delay
) (
    input  logic          clk_i,
    input  logic          rst_ni,
    input  logic [31:0]   registers_0,
    input  logic [31:0]   registers_1,
    output logic [31:0]   result_n
);

    // Internal register array for delayed results
    logic [31:0] delayed_result [0:DELAY_CYCLES-1];

    // Sequential block for multi-cycle delay
    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            // Reset all delay registers to 0
            for (int i = 0; i < DELAY_CYCLES; i++) begin
                delayed_result[i] <= 32'b0;
            end
        end else begin
            // Shift the XOR result through the delay registers
            delayed_result[0] <= registers_0 ^ registers_1;
            for (int i = 1; i < DELAY_CYCLES; i++) begin
                delayed_result[i] <= delayed_result[i-1];
            end
        end
    end

    // Assign the last delayed result to the output
    assign result_n = delayed_result[DELAY_CYCLES-1];

endmodule
