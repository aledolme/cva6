// Copyright (C) 2022 Thales DIS Design Services SAS
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.0.
//
// Original Author: Zbigniew CHAMSKI <zbigniew.chamski@thalesgroup.com>

#ifndef _RISCV_CVXIF_H
#define _RISCV_CVXIF_H

#include "extension.h"

// R-type instruction format
struct cvxif_r_insn_t
{
  unsigned opcode : 7;
  unsigned rd : 5;
  unsigned funct3 : 3;
  unsigned rs1 : 5;
  unsigned rs2 : 5;
  unsigned funct7 : 7;
};

// R4-type instruction format
struct cvxif_r4_insn_t
{
  unsigned opcode : 7;
  unsigned rd : 5;
  unsigned funct3 : 3;
  unsigned rs1 : 5;
  unsigned rs2 : 5;
  unsigned funct2 : 2;
  unsigned rs3 : 5;
};

// I-type instruction format
struct cvxif_i_insn_t
{
  unsigned opcode : 7;
  unsigned rd : 5;
  unsigned funct3 : 3;
  unsigned rs1 : 5;
  unsigned imm : 12;
};

// S-type instruction format
struct cvxif_s_insn_t
{
  unsigned opcode : 7;
  unsigned imm_low : 5;
  unsigned funct3 : 3;
  unsigned rs1 : 5;
  unsigned rs2 : 5;
  unsigned imm_high : 7;
};

union cvxif_insn_t
{
  cvxif_r_insn_t r_type;
  cvxif_r4_insn_t r4_type;
  cvxif_i_insn_t i_type;
  cvxif_s_insn_t s_type;
  insn_t i;
};

enum Func3 {FUNC3_0, FUNC3_1, FUNC3_2, FUNC3_3};
enum Func7 {CUS_ADD = 0, CUS_DOUBLE_RS1 = 1, CUS_DOUBLE_RS2 = 2, CUS_ADD_MULTICYCLE = 3, CUS_XOR = 5, CUS_OR = 6, CUS_AND = 7};

class cvxif_extn_t : public extension_t
{
 public:
  virtual bool do_writeback_p(cvxif_insn_t insn);
  virtual reg_t custom0(cvxif_insn_t insn);
  virtual reg_t custom1(cvxif_insn_t insn);
  virtual reg_t custom2(cvxif_insn_t insn);
  virtual reg_t custom3(cvxif_insn_t insn);
  std::vector<insn_desc_t> get_instructions();
  std::vector<disasm_insn_t*> get_disasms();
};

#endif
