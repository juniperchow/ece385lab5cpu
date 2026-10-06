//------------------------------------------------------------------------------
// Company:          UIUC ECE Dept.
// Engineer:         Stephen Kempf
//
// Create Date:    17:44:03 10/08/06
// Design Name:    ECE 385 Given Code - Incomplete ISDU for SLC-3
// Module Name:    Control - Behavioral
//
// Comments:
//    Revised 03-22-2007
//    Spring 2007 Distribution
//    Revised 07-26-2013
//    Spring 2015 Distribution
//    Revised 02-13-2017
//    Spring 2017 Distribution
//    Revised 07-25-2023
//    Xilinx Vivado
//	  Revised 12-29-2023
// 	  Spring 2024 Distribution
// 	  Revised 6-22-2024
//	  Summer 2024 Distribution
//	  Revised 9-27-2024
//	  Fall 2024 Distribution
//------------------------------------------------------------------------------

module control (
	input logic			clk, 
	input logic			reset,

	input logic  [15:0]	ir,
	input logic			ben,

	input logic 		continue_i,
	input logic 		run_i,

	output logic		ld_mar,
	output logic		ld_mdr,
	output logic		ld_ir,
	output logic        ld_ben,
	                    ld_cc,
	                    ld_reg,
	output logic		ld_pc,
	output logic        ld_led, // pause instruction
						
	output logic		gate_pc,
	output logic		gate_mdr,
	                    gate_alu,
	                    gate_marmux,
						
	output logic [1:0]	pcmux,
	output logic        drmux, sr1mux, sr2mux, addr1mux, 
	output logic[1:0]   addr2mux,
	
	output logic [1:0]  alu_K, 
	
	//You should add additional control signals according to the SLC-3 datapath design

	output logic		mem_mem_ena, // Mem Operation Enable
	output logic		mem_wr_ena  // Mem Write Enable
);

	enum logic [4:0] {
		halted, 
		pause_ir1,pause_ir2, 
		s_00,
		s_01,
		s_04,
		s_05,
		s_06,
		s_07,
		s_09,
		s_12,
		s_16, s_16_1, s_16_2, s_16_3,
		s_18, 
		s_21,
		s_22, 
		s_23,
		s_25, s_25_1, s_25_2, s_25_3,
		s_27,
		s_32,
		s_33, s_33_1, s_33_2, s_33_3,
		s_35
	} state, state_nxt;   // Internal state logic


	always_ff @ (posedge clk)
	begin
		if (reset) 
			state <= halted;
		else 
			state <= state_nxt;
	end
   
	always_comb
	begin 
		
		// Default controls signal values so we don't have to set each signal
		// in each state case below (If we don't set all signals in each state,
		// we can create an inferred latch)
		ld_mar = 1'b0;
		ld_mdr = 1'b0;
		ld_ir = 1'b0;
		ld_ben = 1'b0;
		ld_cc = 1'b0;
		ld_reg = 1'b0;
		ld_pc = 1'b0;
		ld_led = 1'b0;
		
		gate_pc = 1'b0; //one hot logic
		gate_mdr = 1'b0;
		gate_alu = 1'b0;
		gate_marmux = 1'b0;
		
		alu_K = 2'b00; 
		
		pcmux = 2'b00;
		drmux = 1'b0;
		sr1mux = 1'b0;
		sr2mux = 1'b0;
		addr1mux = 1'b0;
		addr2mux = 2'b00;
		
		mem_mem_ena = 1'b0;
		mem_wr_ena = 1'b0;
	
		// Assign relevant control signals based on current state
		case (state)
			halted: ; 
			s_18 : 
				begin 
					gate_pc = 1'b1;
					ld_mar = 1'b1;
					pcmux = 2'b00;
					ld_pc = 1'b1;
				end
			s_33, s_33_1, s_33_2:
			    begin
			        mem_mem_ena = 1'b1;
			    end
			s_33_3 : //you may have to think about this as well to adapt to ram with wait-states
				begin
					mem_mem_ena = 1'b1;
					ld_mdr = 1'b1;
				end
			s_35 : 
				begin 
					gate_mdr = 1'b1;
					ld_ir = 1'b1;
				end
			pause_ir1: ld_led = 1'b1; 
			pause_ir2: ld_led = 1'b1; 
			// you need to finish the rest of state output logic..... 
            s_32: ld_ben = 1'b1;
            s_01: begin //ADD R(DR) <= R(SR1) + R(SR2)
                sr2mux = ir[5]; //sel imm5,sr2_out
                alu_K = 2'b00;
                gate_alu = 1'b1;
                ld_reg = 1'b1;
                ld_cc = 1'b1;
                sr1mux = 1'b0; //ir[8:6]
                drmux = 1'b1;
            end
            s_00: ld_ben = 1'b1;
            s_04: begin
                gate_pc = 1'b1;
                ld_reg = 1'b1;
                drmux = 1'b0; // 111 R7
            end
            s_05: begin // AND instruction R(dr) <- R(sr1) & R(sr2)
                sr2mux = ir[5];
                alu_K = 2'b01; //a&b 
                gate_alu = 1'b1;
                ld_reg = 1'b1;
                ld_cc = 1'b1;
                sr1mux = 1'b0; //sel ir[8:6]
                drmux = 1'b1; // sel ir[11:9]
            end
            //base reg B ir[8:6]
            s_06, s_07: begin
                ld_mar = 1'b1;
                sr1mux = 1'b0; //ir[8:6]
                addr1mux = 1'b1; //sr1_out
                addr2mux = 2'b01; //offset6 sign ext ir[5:0]
                gate_marmux = 1'b1; //marmux not used in SLC3 datapath the signal does not come from marmux mux 
            end
            s_09: begin //not instruction R(dr) <- ~R(sr1)
                sr2mux = ir[5];
                alu_K = 2'b10; //~a
                gate_alu = 1'b1; 
                ld_reg = 1'b1;
                ld_cc = 1'b1; 
                sr1mux = 1'b0; //ir[8:6]
                drmux = 1'b1; //ir[11:9]
            end
            s_12: begin //jmp instruction pc <- opcode baseR
                sr1mux = 1'b0; //ir[8:6]
                ld_pc = 1'b1;
                pcmux = 2'b01; //pc_alu_out
                addr2mux = 2'b01; // sel ir[5:0]
                addr1mux = 1'b1; //sel reg_sr1
            end
            s_16, s_16_1, s_16_2, s_16_3: mem_wr_ena = 1'b1; //write instruction M[mar] <- mdr
            s_21: begin //pc<-pc+off11
                addr2mux = 2'b11; //ir[10:0] off11
                pcmux = 2'b01;
                ld_pc = 1'b1; 
            end
            s_22: begin //pc<-pc+off9
                addr2mux = 2'b10; //ir[8:0] off9
                pcmux = 2'b01; //sel pc_branch
                ld_pc = 1'b1; 
            end
            s_23: begin //mdr<-sr
                alu_K = 2'b11; // a
                sr1mux = 1'b1; //ir[11:9]
                gate_alu = 1'b1;
                ld_mdr = 1'b1; 
            end
            //wait for memory to ready before loading MDR similar to given example in S_33
            s_25, s_25_1: mem_mem_ena = 1'b1; //mdr<-M[mar]
            s_25_2: begin
                mem_mem_ena = 1'b1;
                ld_mdr = 1'b1; 
            end
            s_27: begin // dr<-mdr
                ld_cc = 1'b1;
                drmux = 1'b1; //ir[11:9]
                gate_mdr = 1'b1;
                ld_reg = 1'b1;
            end
			default : ;
		endcase
	end 


	always_comb
	begin
		// default next state is staying at current state
		state_nxt = state;

		unique case (state) //assign next state 
			halted : 
				if (run_i) 
					state_nxt = s_18;
			s_18 : 
				state_nxt = s_33; //notice that we usually have 'r' here, but you will need to add extra states instead 
			s_33:
			    state_nxt = s_33_1;
			s_33_1 :                 //e.g. s_33_2, etc. how many? as a hint, note that the bram is synchronous, in addition, 
				state_nxt = s_33_2;   //it has an additional output register. 
			s_33_2 :
				state_nxt = s_33_3;
			s_33_3 : 
				state_nxt = s_35;
			s_35 : 
				state_nxt = s_32;
			pause_ir1 : 
				if (continue_i) 
					state_nxt = pause_ir2;
			pause_ir2 : 
				if (~continue_i)
					state_nxt = s_18;
			// you need to finish the rest of state transition logic.....
			s_32:
                case(ir[15:12]) //opcode
                    4'b0001 : 
                        state_nxt = s_01; // add 
                    4'b0101 : 
                        state_nxt = s_05; // and
                    4'b1001 : 
                        state_nxt = s_09; // not
                    4'b0000 : 
                        state_nxt = s_00; // br
                    4'b1100 : 
                        state_nxt = s_12; // jmp
                    4'b0100 : 
                        state_nxt = s_04; // jsr 
                    4'b0110 : 
                        state_nxt = s_06; // ldr
                    4'b0111 : 
                        state_nxt = s_07; // str
                    4'b1101 : 
                        state_nxt = s_18; // decode
                    4'b1101 : 
                        state_nxt = pause_ir1; //pause
                    default: 
                        //state_nxt = pause_ir1; //wk1 skip decode
                        state_nxt = s_18; //decode 
                endcase
            s_00: 
                begin
                    if(ben) state_nxt = s_22; 
                    else state_nxt = s_18;
                end
            //s_01 : state_nxt = s_18; //PauseIR1; 
            s_01, s_05, s_09, s_12, s_16_3, s_21, s_22, s_27 : state_nxt = s_18; 
            
			s_04: state_nxt = s_21; 
            s_06: state_nxt = s_25; 
            s_07: state_nxt = s_23; 
            s_16: state_nxt = s_16_1;
            s_16_1: state_nxt = s_16_2; 
            s_16_2: state_nxt = s_16_3; 
            s_23: state_nxt = s_16; 
            s_25: state_nxt = s_25_1; 
            s_25_1: state_nxt = s_25_2; 
            s_25_2: state_nxt = s_25_3; 
            s_25_3: state_nxt = s_27; 
            default : state_nxt = s_18;
		endcase
	end
	
endmodule
