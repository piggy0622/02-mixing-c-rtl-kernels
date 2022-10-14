// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module rtl_kernel_wizard_0_rtl_kernel_wizard_0_Pipeline_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        m_axi_m00_axi_AWVALID,
        m_axi_m00_axi_AWREADY,
        m_axi_m00_axi_AWADDR,
        m_axi_m00_axi_AWID,
        m_axi_m00_axi_AWLEN,
        m_axi_m00_axi_AWSIZE,
        m_axi_m00_axi_AWBURST,
        m_axi_m00_axi_AWLOCK,
        m_axi_m00_axi_AWCACHE,
        m_axi_m00_axi_AWPROT,
        m_axi_m00_axi_AWQOS,
        m_axi_m00_axi_AWREGION,
        m_axi_m00_axi_AWUSER,
        m_axi_m00_axi_WVALID,
        m_axi_m00_axi_WREADY,
        m_axi_m00_axi_WDATA,
        m_axi_m00_axi_WSTRB,
        m_axi_m00_axi_WLAST,
        m_axi_m00_axi_WID,
        m_axi_m00_axi_WUSER,
        m_axi_m00_axi_ARVALID,
        m_axi_m00_axi_ARREADY,
        m_axi_m00_axi_ARADDR,
        m_axi_m00_axi_ARID,
        m_axi_m00_axi_ARLEN,
        m_axi_m00_axi_ARSIZE,
        m_axi_m00_axi_ARBURST,
        m_axi_m00_axi_ARLOCK,
        m_axi_m00_axi_ARCACHE,
        m_axi_m00_axi_ARPROT,
        m_axi_m00_axi_ARQOS,
        m_axi_m00_axi_ARREGION,
        m_axi_m00_axi_ARUSER,
        m_axi_m00_axi_RVALID,
        m_axi_m00_axi_RREADY,
        m_axi_m00_axi_RDATA,
        m_axi_m00_axi_RLAST,
        m_axi_m00_axi_RID,
        m_axi_m00_axi_RFIFONUM,
        m_axi_m00_axi_RUSER,
        m_axi_m00_axi_RRESP,
        m_axi_m00_axi_BVALID,
        m_axi_m00_axi_BREADY,
        m_axi_m00_axi_BRESP,
        m_axi_m00_axi_BID,
        m_axi_m00_axi_BUSER,
        sext_ln47,
        m00_axi_output_buffer_address0,
        m00_axi_output_buffer_ce0,
        m00_axi_output_buffer_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output   m_axi_m00_axi_AWVALID;
input   m_axi_m00_axi_AWREADY;
output  [63:0] m_axi_m00_axi_AWADDR;
output  [0:0] m_axi_m00_axi_AWID;
output  [31:0] m_axi_m00_axi_AWLEN;
output  [2:0] m_axi_m00_axi_AWSIZE;
output  [1:0] m_axi_m00_axi_AWBURST;
output  [1:0] m_axi_m00_axi_AWLOCK;
output  [3:0] m_axi_m00_axi_AWCACHE;
output  [2:0] m_axi_m00_axi_AWPROT;
output  [3:0] m_axi_m00_axi_AWQOS;
output  [3:0] m_axi_m00_axi_AWREGION;
output  [0:0] m_axi_m00_axi_AWUSER;
output   m_axi_m00_axi_WVALID;
input   m_axi_m00_axi_WREADY;
output  [511:0] m_axi_m00_axi_WDATA;
output  [63:0] m_axi_m00_axi_WSTRB;
output   m_axi_m00_axi_WLAST;
output  [0:0] m_axi_m00_axi_WID;
output  [0:0] m_axi_m00_axi_WUSER;
output   m_axi_m00_axi_ARVALID;
input   m_axi_m00_axi_ARREADY;
output  [63:0] m_axi_m00_axi_ARADDR;
output  [0:0] m_axi_m00_axi_ARID;
output  [31:0] m_axi_m00_axi_ARLEN;
output  [2:0] m_axi_m00_axi_ARSIZE;
output  [1:0] m_axi_m00_axi_ARBURST;
output  [1:0] m_axi_m00_axi_ARLOCK;
output  [3:0] m_axi_m00_axi_ARCACHE;
output  [2:0] m_axi_m00_axi_ARPROT;
output  [3:0] m_axi_m00_axi_ARQOS;
output  [3:0] m_axi_m00_axi_ARREGION;
output  [0:0] m_axi_m00_axi_ARUSER;
input   m_axi_m00_axi_RVALID;
output   m_axi_m00_axi_RREADY;
input  [511:0] m_axi_m00_axi_RDATA;
input   m_axi_m00_axi_RLAST;
input  [0:0] m_axi_m00_axi_RID;
input  [8:0] m_axi_m00_axi_RFIFONUM;
input  [0:0] m_axi_m00_axi_RUSER;
input  [1:0] m_axi_m00_axi_RRESP;
input   m_axi_m00_axi_BVALID;
output   m_axi_m00_axi_BREADY;
input  [1:0] m_axi_m00_axi_BRESP;
input  [0:0] m_axi_m00_axi_BID;
input  [0:0] m_axi_m00_axi_BUSER;
input  [57:0] sext_ln47;
output  [12:0] m00_axi_output_buffer_address0;
output   m00_axi_output_buffer_ce0;
input  [31:0] m00_axi_output_buffer_q0;

reg ap_idle;
reg m_axi_m00_axi_WVALID;
reg m00_axi_output_buffer_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg   [0:0] empty_23_reg_225;
reg   [0:0] empty_23_reg_225_pp0_iter1_reg;
reg    ap_block_state3_io;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond3_fu_116_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    m00_axi_blk_n_W;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
reg   [0:0] exitcond3_reg_216;
wire   [0:0] empty_23_fu_137_p2;
reg   [31:0] m00_axi_output_buffer_load_reg_235;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] loop_index_cast3_fu_128_p1;
wire    ap_block_pp0_stage0_01001;
reg   [479:0] shiftreg_fu_64;
wire   [479:0] empty_21_fu_184_p3;
wire    ap_loop_init;
reg   [12:0] loop_index_fu_68;
wire   [12:0] empty_20_fu_122_p2;
reg   [12:0] ap_sig_allocacmp_loop_index_load;
wire   [3:0] empty_22_fu_133_p1;
wire   [447:0] tmp_1_fu_167_p4;
wire   [479:0] tmp_2_fu_177_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

rtl_kernel_wizard_0_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (exitcond3_fu_116_p2 == 1'd0))) begin
            loop_index_fu_68 <= empty_20_fu_122_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            loop_index_fu_68 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            shiftreg_fu_64 <= 480'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            shiftreg_fu_64 <= empty_21_fu_184_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_23_reg_225_pp0_iter1_reg <= empty_23_reg_225;
        exitcond3_reg_216 <= exitcond3_fu_116_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond3_fu_116_p2 == 1'd0))) begin
        empty_23_reg_225 <= empty_23_fu_137_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond3_reg_216 == 1'd0))) begin
        m00_axi_output_buffer_load_reg_235 <= m00_axi_output_buffer_q0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond3_fu_116_p2 == 1'd1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (exitcond3_reg_216 == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_loop_index_load = 13'd0;
    end else begin
        ap_sig_allocacmp_loop_index_load = loop_index_fu_68;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (empty_23_reg_225_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m00_axi_blk_n_W = m_axi_m00_axi_WREADY;
    end else begin
        m00_axi_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        m00_axi_output_buffer_ce0 = 1'b1;
    end else begin
        m00_axi_output_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (empty_23_reg_225_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        m_axi_m00_axi_WVALID = 1'b1;
    end else begin
        m_axi_m00_axi_WVALID = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_io));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_io));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_io = ((empty_23_reg_225_pp0_iter1_reg == 1'd1) & (m_axi_m00_axi_WREADY == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_20_fu_122_p2 = (ap_sig_allocacmp_loop_index_load + 13'd1);

assign empty_21_fu_184_p3 = ((empty_23_reg_225_pp0_iter1_reg[0:0] == 1'b1) ? 480'd0 : tmp_2_fu_177_p3);

assign empty_22_fu_133_p1 = ap_sig_allocacmp_loop_index_load[3:0];

assign empty_23_fu_137_p2 = ((empty_22_fu_133_p1 == 4'd15) ? 1'b1 : 1'b0);

assign exitcond3_fu_116_p2 = ((ap_sig_allocacmp_loop_index_load == 13'd4096) ? 1'b1 : 1'b0);

assign loop_index_cast3_fu_128_p1 = ap_sig_allocacmp_loop_index_load;

assign m00_axi_output_buffer_address0 = loop_index_cast3_fu_128_p1;

assign m_axi_m00_axi_ARADDR = 64'd0;

assign m_axi_m00_axi_ARBURST = 2'd0;

assign m_axi_m00_axi_ARCACHE = 4'd0;

assign m_axi_m00_axi_ARID = 1'd0;

assign m_axi_m00_axi_ARLEN = 32'd0;

assign m_axi_m00_axi_ARLOCK = 2'd0;

assign m_axi_m00_axi_ARPROT = 3'd0;

assign m_axi_m00_axi_ARQOS = 4'd0;

assign m_axi_m00_axi_ARREGION = 4'd0;

assign m_axi_m00_axi_ARSIZE = 3'd0;

assign m_axi_m00_axi_ARUSER = 1'd0;

assign m_axi_m00_axi_ARVALID = 1'b0;

assign m_axi_m00_axi_AWADDR = 64'd0;

assign m_axi_m00_axi_AWBURST = 2'd0;

assign m_axi_m00_axi_AWCACHE = 4'd0;

assign m_axi_m00_axi_AWID = 1'd0;

assign m_axi_m00_axi_AWLEN = 32'd0;

assign m_axi_m00_axi_AWLOCK = 2'd0;

assign m_axi_m00_axi_AWPROT = 3'd0;

assign m_axi_m00_axi_AWQOS = 4'd0;

assign m_axi_m00_axi_AWREGION = 4'd0;

assign m_axi_m00_axi_AWSIZE = 3'd0;

assign m_axi_m00_axi_AWUSER = 1'd0;

assign m_axi_m00_axi_AWVALID = 1'b0;

assign m_axi_m00_axi_BREADY = 1'b0;

assign m_axi_m00_axi_RREADY = 1'b0;

assign m_axi_m00_axi_WDATA = {{m00_axi_output_buffer_load_reg_235}, {shiftreg_fu_64}};

assign m_axi_m00_axi_WID = 1'd0;

assign m_axi_m00_axi_WLAST = 1'b0;

assign m_axi_m00_axi_WSTRB = 64'd18446744073709551615;

assign m_axi_m00_axi_WUSER = 1'd0;

assign tmp_1_fu_167_p4 = {{shiftreg_fu_64[479:32]}};

assign tmp_2_fu_177_p3 = {{m00_axi_output_buffer_load_reg_235}, {tmp_1_fu_167_p4}};

endmodule //rtl_kernel_wizard_0_rtl_kernel_wizard_0_Pipeline_3
