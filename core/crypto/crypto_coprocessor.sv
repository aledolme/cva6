
///////////////////////////////////////////////////////////////////////
// File: crypto_coprocessor.sv
// Date: 2024-10-28
// Author: Behnam Farnaghinejad <behnam.farnaghinejad@polito.it>
///////////////////////////////////////////////////////////////////////

module crypto_coprocessor
  import crypto_instr_pkg::*;
  #(
    // CVXIF Types
    parameter  int unsigned NrRgprPorts         = 2,
    parameter  int unsigned XLEN                = 64,
    parameter  type         readregflags_t      = logic,
    parameter  type         writeregflags_t     = logic,
    parameter  type         id_t                = logic,
    parameter  type         hartid_t            = logic,
    parameter  type         x_compressed_req_t  = logic,
    parameter  type         x_compressed_resp_t = logic,
    parameter  type         x_issue_req_t       = logic,
    parameter  type         x_issue_resp_t      = logic,
    parameter  type         x_register_t        = logic,
    parameter  type         x_commit_t          = logic,
    parameter  type         x_result_t          = logic,
    parameter  type         cvxif_req_t         = logic,
    parameter  type         cvxif_resp_t        = logic,
    localparam type         registers_t         = logic [NrRgprPorts-1:0][XLEN-1:0]
  ) 
  (
    input  logic        clk_i,        // Clock
    input  logic        rst_ni,       // Asynchronous reset active low
    input  cvxif_req_t  cvxif_req_i,
    output cvxif_resp_t cvxif_resp_o
  );

  logic compressed_valid, compressed_ready;
  // Issue interface signals
  x_issue_req_t  issue_req;
  x_issue_resp_t issue_resp;
  logic issue_valid, issue_ready;

  // Register interface signals
  x_register_t register;
  logic register_valid;

  // Decoder and alu signals
  registers_t registers;
  opcode_t opcode;
  hartid_t issue_hartid, hartid;
  id_t issue_id, id;
  logic [4:0] issue_rd, rd;
  logic [XLEN-1:0] result;
  logic            we;

  // Issue and Register interface
  // Mandatory when X_ISSUE_REGISTER_SPLIT = 0
  assign cvxif_resp_o.issue_ready      = issue_ready;
  assign cvxif_resp_o.issue_resp       = issue_resp;
  assign cvxif_resp_o.register_ready   = cvxif_resp_o.issue_ready;

  assign issue_req                     = cvxif_req_i.issue_req;
  assign issue_valid                   = cvxif_req_i.issue_valid;
  assign register                      = cvxif_req_i.register;
  assign register_valid                = cvxif_req_i.register_valid;

  instr_decoder #(
      .copro_issue_resp_t (crypto_instr_pkg::copro_issue_resp_t),
      .opcode_t (crypto_instr_pkg::opcode_t),
      .NbInstr   (crypto_instr_pkg::NbInstr),
      .CoproInstr(crypto_instr_pkg::CoproInstr),
      .NrRgprPorts(NrRgprPorts),
      .hartid_t (hartid_t),
      .id_t (id_t),
      .x_issue_req_t (x_issue_req_t),
      .x_issue_resp_t (x_issue_resp_t),
      .x_register_t (x_register_t),
      .registers_t (registers_t)
  ) instr_decoder_i (
      .clk_i           (clk_i),
      .rst_ni          (rst_ni),
      .issue_valid_i   (issue_valid),
      .issue_req_i     (issue_req),
      .issue_ready_o   (issue_ready),
      .issue_resp_o    (issue_resp),
      .register_valid_i(register_valid),
      .register_i      (register),
      .registers_o     (registers),
      .opcode_o        (opcode),
      .hartid_o        (issue_hartid),
      .id_o            (issue_id),
      .rd_o            (issue_rd)
  );

  logic alu_valid;
  crypto_scalar_fu #(
      .NrRgprPorts(NrRgprPorts),
      .XLEN(XLEN),
      .hartid_t(hartid_t),
      .id_t(id_t),
      .registers_t(registers_t)
  ) i_copro_alu (
      .clk_i      (clk_i),
      .rst_ni     (rst_ni),
      .registers_i(registers),
      .opcode_i   (opcode),
      .hartid_i   (issue_hartid),
      .id_i       (issue_id),
      .rd_i       (issue_rd),
      .instr_i    (issue_req.instr),
      .hartid_o   (hartid),
      .id_o       (id),
      .result_o   (result),
      .valid_o    (alu_valid),
      .rd_o       (rd),
      .we_o       (we)
  );

  //////////////////////////////////////////////////////////////////////////////////////
  always_comb begin
    cvxif_resp_o.result_valid  = alu_valid;  //TODO Should wait for ready from CPU
    cvxif_resp_o.result.hartid = hartid;
    cvxif_resp_o.result.id     = id;
    cvxif_resp_o.result.data   = result;
    cvxif_resp_o.result.rd     = rd;
    cvxif_resp_o.result.we     = we;
  end

endmodule