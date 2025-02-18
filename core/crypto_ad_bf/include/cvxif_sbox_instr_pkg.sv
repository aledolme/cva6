
package cvxif_sbox_instr_pkg;

  localparam XLEN = riscv::XLEN;

  typedef enum logic[3:0] {
    ILLEGAL = 4'b0000,
    AES32   = 4'b0001,
    AES64_1 = 4'b0010,
    AES64_2 = 4'b0011,
    BREV8   = 4'b0100,
    CLMUL   = 4'b0101,
    PACK    = 4'b0110,
    SHA256  = 4'b0111,
    SHA512  = 4'b1000,
    SM3     = 4'b1001,
    SM4     = 4'b1010,
    XPERM   = 4'b1011,
    ZIP     = 4'b1100
  } opcode_t;
  
  typedef struct packed {
    logic accept;
    logic writeback;  // TODO depends on dualwrite
    logic [2:0] register_read;  // TODO Nr read ports
  } issue_resp_t;

  typedef struct packed {
    logic [31:0] instr;
    logic [31:0] mask;
    issue_resp_t resp;
    opcode_t     opcode;
  } copro_issue_resp_t;

  // 1 Types Possible instructions 
  parameter int unsigned NbInstr = 1;

  parameter copro_issue_resp_t CoproInstr[NbInstr] = '{
        '{
          instr: 32'b00001_00_00000_00000_1_00_00000_0110011,  // PACK opcode - 3 Instructions 
          mask:  32'b11111_11_00000_00000_1_00_00000_1110111,  
          resp : '{accept : 1'b1, writeback : 1'b1, register_read : {1'b0, 1'b1, 1'b1}},
          opcode : PACK
        }
  };
  

endpackage
