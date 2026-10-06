//------------------------------------------------------------------------------
// Company: 		 UIUC ECE Dept.
// Engineer:		 Stephen Kempf
//
// Create Date:    
// Design Name:    ECE 385 Given Code - SLC-3 core
// Module Name:    SLC3
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 09-22-2015 
//    Revised 06-09-2020
//	  Revised 03-02-2021
//    Xilinx vivado
//    Revised 07-25-2023 
//    Revised 12-29-2023
//    Revised 09-25-2024
//------------------------------------------------------------------------------

module cpu (
    input   logic        clk,
    input   logic        reset,

    input   logic        run_i,
    input   logic        continue_i,
    output  logic [15:0] hex_display_debug,
    output  logic [15:0] led_o,
   
    input   logic [15:0] mem_rdata,
    output  logic [15:0] mem_wdata,
    output  logic [15:0] mem_addr,
    output  logic        mem_mem_ena,
    output  logic        mem_wr_ena
);


// Internal connections, follow the datapath block diagram and add the additional needed signals
logic ld_mar; 
logic ld_mdr; 
logic ld_ir; 
logic ld_ben, ld_cc, ld_reg; 
logic ld_pc; 
logic ld_led;

logic gate_pc, gate_mdr, gate_alu, gate_marmux; 

logic [1:0] pcmux, addr2mux;
logic drmux, sr1mux, sr2mux, addr1mux; 

logic [1:0] alu_K;

logic [15:0] mar, marmux;
logic [15:0] mdr, mdr_next;
logic [15:0] ir;
logic [15:0] pc, pc_plusplus, pc_branch, pc_next;
logic ben;

assign mem_addr = mar;
assign mem_wdata = mdr;
assign mio_en = mem_mem_ena;
//logic mio_en;

// State machine, you need to fill in the code here as well
// .* auto-infers module input/output connections which have the same name
// This can help visually condense modules with large instantiations, 
// but can also lead to confusing code if used too commonly
control cpu_control (
    .*
);


//make datapath (mux and bus) connections here 
logic [15:0] databus; //connect pc,mdr,alu,marmux... with onehot mux
logic [15:0] alu_B, alu_out; 
logic [15:0] reg_sr1_out, reg_sr2_out; //output from register file
logic [15:0] addr1_mux_out, addr2_mux_out; 

logic [2:0] sr1, reg_dr_in; //input to register file
logic [2:0] cc, cc_next; 
logic ben_next; 

always_comb begin
//compute instruction pointer 
    pc_plusplus = pc + 1; 
    pc_branch = addr1_mux_out + addr2_mux_out;
//branch condition logic
    //              neg                 zero            pos
    ben_next = (ir[11] & cc[2]) + (ir[10] & cc[1]) + (ir[9] & cc[0]);
    if(databus == 16'h0000) cc_next = 3'b010; //set cc nzp=010 zero 
    else if(databus[15] == 1'b1) cc_next = 3'b100; //set cc nzp = 100 negative 
    else cc_next = 3'b001; //set cc nzp = 001 positive
end
//2:1 mux 
mux2_1 sr2_mux(.S(sr2mux), .B_In({{11{ir[4]}}, ir[4:0]}), .A_In(reg_sr2_out), .Q_Out(alu_B)); 
mux2_1 addr1_mux(.S(addr1mux), .A_In(pc), .B_In(reg_sr1_out), .Q_Out(addr1_mux_out));
//mux2_1 marmux(.S(marmux), .A_In(), .B_In(), .Q_Out());
mux2_1 mdr_mux(.S(mio_en), .A_In(databus), .B_In(mem_rdata), .Q_Out(mdr_next));
mux2_1 #(.N(3)) dr_mux(.S(drmux), .A_In(3'b111), .B_In(ir[11:9]), .Q_Out(reg_dr_in));
mux2_1 #(.N(3)) sr1_mux (.S(sr1mux), .B_In(ir[11:9]), .A_In(ir[8:6]), .Q_Out(sr1)); 
//4:1 mux
mux4_1 PC_mux(.S(pcmux), .A_In(pc_plusplus), .B_In(pc_branch), .C_In(databus), .D_In(16'h0000), .Q_Out(pc_next));
mux4_1 ADDR2_mux(.S(addr2mux), .A_In(16'h0000), .B_In({{10{ir[4]}}, ir[5:0]}), .C_In({{7{ir[4]}}, ir[8:0]}), .D_In({{5{ir[4]}}, ir[10:0]}), 
                    .Q_Out(addr2_mux_out));

//one hot 4:1 mux (databus)
mux4_1_onehot databus_mux(.S({gate_alu, gate_marmux, gate_mdr, gate_pc}), .A_In(alu_out), .B_In(pc_branch), .C_In(mdr), .D_In(pc), .Q_Out(databus));

alu cpu_alu(.A_In(reg_sr1_out), .B_In(alu_B), .K(alu_K), .out(alu_out));

assign led_o = ir;
assign hex_display_debug = ir;

load_reg #(.DATA_WIDTH(16)) ir_reg (
    .clk    (clk),
    .reset  (reset),

    .load   (ld_ir),
    .data_i (databus),

    .data_q (ir)
);

load_reg #(.DATA_WIDTH(16)) pc_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_pc),
    .data_i(pc_next),

    .data_q(pc)
);

load_reg #(.DATA_WIDTH(16)) mdr_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mdr),
    .data_i(mdr_next),

    .data_q(mdr)
);

load_reg #(.DATA_WIDTH(16)) mar_reg (
    .clk(clk),
    .reset(reset),

    .load(ld_mar),
    .data_i(databus),

    .data_q(mar)
);

regfile cpu_regfile(.clk(clk), .reset(reset), 
                    .LD_REG(ld_reg), .DR(reg_dr_in), .SR2(ir[2:0]), .SR1(sr1), 
                    .data_i(databus),
                    .SR1_OUT(reg_sr1_out), .SR2_OUT(reg_sr2_out));

endmodule