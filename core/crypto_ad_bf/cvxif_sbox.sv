
module cvxif_sbox
  import cvxif_sbox_instr_pkg::*;
  #(
    parameter int unsigned NrRgprPorts = 2,
    parameter int unsigned XLEN = 64,
    parameter type hartid_t = logic[63:0],
    parameter type id_t = logic [2:0],
    parameter type registers_t = logic [NrRgprPorts-1:0][XLEN-1:0]

)
(
    input  logic                  clk_i,
    input  logic                  rst_ni,
    input  registers_t            registers_i,
    input  opcode_t               opcode_i,
    input  hartid_t               hartid_i,
    input  id_t                   id_i,
    input  logic       [     4:0] rd_i,
    input  logic       [    31:0] instr_i,
    output logic       [XLEN-1:0] result_o,
    output hartid_t               hartid_o,
    output id_t                   id_o,
    output logic       [     4:0] rd_o,
    output logic                  valid_o,
    output logic                  we_o
);

  // Select I'th byte of X.
  `define BY(X,I) X[7+8*I:8*I]
 
  logic [XLEN-1:0] result_n, result_q;
  hartid_t hartid_n, hartid_q;
  id_t id_n, id_q;
  logic valid_n, valid_q;
  logic [4:0] rd_n, rd_q;
  logic we_n, we_q;

  assign result_o = result_q;
  assign hartid_o = hartid_q;
  assign id_o     = id_q;
  assign valid_o  = valid_q;
  assign rd_o     = rd_q;
  assign we_o     = we_q;

  logic [XLEN-1:0]  rs0, rs1;
  assign rs0 = registers_i[0];
  assign rs1 = registers_i[1];

  logic [15:0] cvxif_xor_out;
  assign cvxif_xor_out = rs0[15:0] ^ rs1[15:0];

  //SBox input/output
  logic [ 7:0] sb_fwd_in  [1:0];
  logic [ 7:0] sb_fwd_out [1:0];

  assign      sb_fwd_in[0]=  `BY(cvxif_xor_out, 0);
  assign      sb_fwd_in[1]=  `BY(cvxif_xor_out, 1);

  logic [15:0] e_sbout;
  assign  e_sbout     = {sb_fwd_out[1], sb_fwd_out[0]};

  riscv_crypto_aes_fwd_sbox i_fwd_sbox0 (
    .in(sb_fwd_in [0]),
    .fx(sb_fwd_out[0])
  );
  riscv_crypto_aes_fwd_sbox i_fwd_sbox1 (
    .in(sb_fwd_in [1]),
    .fx(sb_fwd_out[1])
  );

  //////////////////////////////////////////////////////////////////////////////////////
  always_comb begin
    case (opcode_i)
      cvxif_sbox_instr_pkg::PACK: begin
      result_n = e_sbout;
      hartid_n = hartid_i;
      id_n     = id_i;
      valid_n  = 1'b1;
      rd_n     = rd_i;
      we_n     = 1'b1;
      end
      default: begin
          result_n = '0;
          hartid_n = '0;
          id_n     = '0;
          valid_n  = '0;
          rd_n     = '0;
          we_n     = '0;
      end
    endcase
  end
  //////////////////////////////////////////////////////////////////////////////////////
  always_ff @(posedge clk_i, negedge rst_ni) begin
    if (~rst_ni) begin
      result_q <= '0;
      hartid_q <= '0;
      id_q     <= '0;
      valid_q  <= '0;
      rd_q     <= '0;
      we_q     <= '0;
    end else begin
      result_q <= result_n;
      hartid_q <= hartid_n;
      id_q     <= id_n;
      valid_q  <= valid_n;
      rd_q     <= rd_n;
      we_q     <= we_n;
    end
  end

  `undef BY

endmodule 