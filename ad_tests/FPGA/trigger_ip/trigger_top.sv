`include "/register_interface/typedef.svh"
`include "/register_interface/assign.svh"

module trigger_top
    	#(
	 parameter int unsigned AXI_ADDR_WIDTH = 32,
	 localparam int unsigned AXI_DATA_WIDTH = 32, 
	 parameter int unsigned AXI_ID_WIDTH,
	 parameter int unsigned AXI_USER_WIDTH
     	)
       (
	input logic clk_i,
	input logic rst_ni,
	input logic test_mode_i,

	AXI_BUS.Slave axi_slave
       );
   
	import trigger_reg_pkg::trigger_hw2reg_t;
	import trigger_reg_pkg::trigger_reg2hw_t;

	 		
	// Wiring signals between reg file and ip
	REG_BUS #(.ADDR_WIDTH(32), .DATA_WIDTH(32)) axi_to_regfile();
	trigger_hw2reg_t ip_to_reg_file;
	trigger_reg2hw_t reg_file_to_ip;

	axi_to_reg_intf #(
	   		.ADDR_WIDTH(AXI_ADDR_WIDTH),
			.DATA_WIDTH(AXI_DATA_WIDTH),
			.ID_WIDTH(AXI_ID_WIDTH),
			.USER_WIDTH(AXI_USER_WIDTH),
	 		.DECOUPLE_W(0)
	) i_axi2reg (
		.clk_i,
		.rst_ni,
		.testmode_i (test_mode_i),
		.in(axi_slave),
		.reg_o (axi_to_regfile)
	);

	// Convert the REG_BUS interface to the struct signals used by autogenerated register file 
	typedef logic [AXI_ADDR_WIDTH-1:0] addr_t;
	typedef logic [AXI_ADDR_WIDTH-1:0] data_t;
	typedef logic [AXI_ADDR_WIDTH/8-1:0] strb_t;
	`REG_BUS_TYPEDEF_REQ(reg_req_t, addr_t, data_t, strb_t);
  	`REG_BUS_TYPEDEF_RSP(reg_rsp_t, data_t);
	reg_req_t to_reg_file_req;
	reg_rsp_t from_reg_file_rsp;
	`REG_BUS_ASSIGN_TO_REQ(to_reg_file_req, axi_to_regfile);
	`REG_BUS_ASSIGN_FROM_RSP(axi_to_regfile, from_reg_file_rsp);

	trigger_reg_top #(
	.reg_req_t(reg_req_t),
	.reg_rsp_t(reg_rsp_t)
	) i_regfile (
		.clk_i,
		.rst_ni,
		
		// From the protocol converters to regfile
		.reg_req_i(to_reg_file_req),
		.reg_rsp_o(from_reg_file_rsp),
		
		// Signals from trigger IP
		.hw2reg(ip_to_reg_file),
		.reg2hw(reg_file_to_ip),

		.devmode_i(1'b1)
	);

        
   // wiring signals between control unit and ip
   wire logic dout_gpio;
			       			        	
	trigger i_trigger (
		.clk_i(clk_i),
		.rst_ni(rst_ni),
		.trigger_on_i(reg_file_to_ip.ctrl.start.q & reg_file_to_ip.ctrl.start.qe),
		.trigger_off_i(reg_file_to_ip.ctrl.stop.q & reg_file_to_ip.ctrl.stop.qe),
		.gpio_o(dout_gpio)
	);

  assign ip_to_reg_file.gpio_o = dout_gpio;
  
endmodule : trigger_top