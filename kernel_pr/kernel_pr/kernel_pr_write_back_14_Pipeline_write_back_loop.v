// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel_pr_write_back_14_Pipeline_write_back_loop (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        value_stream_14_dout,
        value_stream_14_empty_n,
        value_stream_14_read,
        m_axi_hbm30_AWVALID,
        m_axi_hbm30_AWREADY,
        m_axi_hbm30_AWADDR,
        m_axi_hbm30_AWID,
        m_axi_hbm30_AWLEN,
        m_axi_hbm30_AWSIZE,
        m_axi_hbm30_AWBURST,
        m_axi_hbm30_AWLOCK,
        m_axi_hbm30_AWCACHE,
        m_axi_hbm30_AWPROT,
        m_axi_hbm30_AWQOS,
        m_axi_hbm30_AWREGION,
        m_axi_hbm30_AWUSER,
        m_axi_hbm30_WVALID,
        m_axi_hbm30_WREADY,
        m_axi_hbm30_WDATA,
        m_axi_hbm30_WSTRB,
        m_axi_hbm30_WLAST,
        m_axi_hbm30_WID,
        m_axi_hbm30_WUSER,
        m_axi_hbm30_ARVALID,
        m_axi_hbm30_ARREADY,
        m_axi_hbm30_ARADDR,
        m_axi_hbm30_ARID,
        m_axi_hbm30_ARLEN,
        m_axi_hbm30_ARSIZE,
        m_axi_hbm30_ARBURST,
        m_axi_hbm30_ARLOCK,
        m_axi_hbm30_ARCACHE,
        m_axi_hbm30_ARPROT,
        m_axi_hbm30_ARQOS,
        m_axi_hbm30_ARREGION,
        m_axi_hbm30_ARUSER,
        m_axi_hbm30_RVALID,
        m_axi_hbm30_RREADY,
        m_axi_hbm30_RDATA,
        m_axi_hbm30_RLAST,
        m_axi_hbm30_RID,
        m_axi_hbm30_RFIFONUM,
        m_axi_hbm30_RUSER,
        m_axi_hbm30_RRESP,
        m_axi_hbm30_BVALID,
        m_axi_hbm30_BREADY,
        m_axi_hbm30_BRESP,
        m_axi_hbm30_BID,
        m_axi_hbm30_BUSER,
        sext_ln75,
        sub_hyperedge_size,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] value_stream_14_dout;
input   value_stream_14_empty_n;
output   value_stream_14_read;
output   m_axi_hbm30_AWVALID;
input   m_axi_hbm30_AWREADY;
output  [63:0] m_axi_hbm30_AWADDR;
output  [0:0] m_axi_hbm30_AWID;
output  [31:0] m_axi_hbm30_AWLEN;
output  [2:0] m_axi_hbm30_AWSIZE;
output  [1:0] m_axi_hbm30_AWBURST;
output  [1:0] m_axi_hbm30_AWLOCK;
output  [3:0] m_axi_hbm30_AWCACHE;
output  [2:0] m_axi_hbm30_AWPROT;
output  [3:0] m_axi_hbm30_AWQOS;
output  [3:0] m_axi_hbm30_AWREGION;
output  [0:0] m_axi_hbm30_AWUSER;
output   m_axi_hbm30_WVALID;
input   m_axi_hbm30_WREADY;
output  [31:0] m_axi_hbm30_WDATA;
output  [3:0] m_axi_hbm30_WSTRB;
output   m_axi_hbm30_WLAST;
output  [0:0] m_axi_hbm30_WID;
output  [0:0] m_axi_hbm30_WUSER;
output   m_axi_hbm30_ARVALID;
input   m_axi_hbm30_ARREADY;
output  [63:0] m_axi_hbm30_ARADDR;
output  [0:0] m_axi_hbm30_ARID;
output  [31:0] m_axi_hbm30_ARLEN;
output  [2:0] m_axi_hbm30_ARSIZE;
output  [1:0] m_axi_hbm30_ARBURST;
output  [1:0] m_axi_hbm30_ARLOCK;
output  [3:0] m_axi_hbm30_ARCACHE;
output  [2:0] m_axi_hbm30_ARPROT;
output  [3:0] m_axi_hbm30_ARQOS;
output  [3:0] m_axi_hbm30_ARREGION;
output  [0:0] m_axi_hbm30_ARUSER;
input   m_axi_hbm30_RVALID;
output   m_axi_hbm30_RREADY;
input  [31:0] m_axi_hbm30_RDATA;
input   m_axi_hbm30_RLAST;
input  [0:0] m_axi_hbm30_RID;
input  [8:0] m_axi_hbm30_RFIFONUM;
input  [0:0] m_axi_hbm30_RUSER;
input  [1:0] m_axi_hbm30_RRESP;
input   m_axi_hbm30_BVALID;
output   m_axi_hbm30_BREADY;
input  [1:0] m_axi_hbm30_BRESP;
input  [0:0] m_axi_hbm30_BID;
input  [0:0] m_axi_hbm30_BUSER;
input  [61:0] sext_ln75;
input  [28:0] sub_hyperedge_size;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_idle;
reg value_stream_14_read;
reg m_axi_hbm30_WVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
reg   [0:0] icmp_ln75_reg_132;
reg    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln75_fu_98_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    hbm30_blk_n_W;
wire    ap_block_pp0_stage0;
reg    value_stream_14_blk_n;
reg    ap_block_pp0_stage0_11001;
reg   [31:0] tmp_reg_141;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_block_pp0_stage0_01001;
reg   [28:0] hcount_fu_56;
wire   [28:0] add_ln75_fu_104_p2;
wire    ap_loop_init;
reg   [28:0] ap_sig_allocacmp_hcount_12;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_ext_blocking_cur_n;
wire    ap_int_blocking_cur_n;
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

kernel_pr_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln75_fu_98_p2 == 1'd0))) begin
            hcount_fu_56 <= add_ln75_fu_104_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            hcount_fu_56 <= 29'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln75_reg_132 <= icmp_ln75_fu_98_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln75_reg_132 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_reg_141 <= value_stream_14_dout;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln75_fu_98_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln75_reg_132 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_hcount_12 = 29'd0;
    end else begin
        ap_sig_allocacmp_hcount_12 = hcount_fu_56;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        hbm30_blk_n_W = m_axi_hbm30_WREADY;
    end else begin
        hbm30_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        m_axi_hbm30_WVALID = 1'b1;
    end else begin
        m_axi_hbm30_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln75_reg_132 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        value_stream_14_blk_n = value_stream_14_empty_n;
    end else begin
        value_stream_14_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((icmp_ln75_reg_132 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        value_stream_14_read = 1'b1;
    end else begin
        value_stream_14_read = 1'b0;
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

assign add_ln75_fu_104_p2 = (ap_sig_allocacmp_hcount_12 + 29'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((icmp_ln75_reg_132 == 1'd0) & (value_stream_14_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((m_axi_hbm30_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln75_reg_132 == 1'd0) & (value_stream_14_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((m_axi_hbm30_WREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((icmp_ln75_reg_132 == 1'd0) & (value_stream_14_empty_n == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b1)));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state2_pp0_stage0_iter1 = ((icmp_ln75_reg_132 == 1'd0) & (value_stream_14_empty_n == 1'b0));
end

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_ext_blocking_cur_n = hbm30_blk_n_W;

assign ap_ext_blocking_n = (ap_ext_blocking_cur_n & 1'b1);

assign ap_int_blocking_cur_n = value_stream_14_blk_n;

assign ap_int_blocking_n = (ap_int_blocking_cur_n & 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign ap_str_blocking_n = (1'b1 & 1'b1);

assign icmp_ln75_fu_98_p2 = ((ap_sig_allocacmp_hcount_12 == sub_hyperedge_size) ? 1'b1 : 1'b0);

assign m_axi_hbm30_ARADDR = 64'd0;

assign m_axi_hbm30_ARBURST = 2'd0;

assign m_axi_hbm30_ARCACHE = 4'd0;

assign m_axi_hbm30_ARID = 1'd0;

assign m_axi_hbm30_ARLEN = 32'd0;

assign m_axi_hbm30_ARLOCK = 2'd0;

assign m_axi_hbm30_ARPROT = 3'd0;

assign m_axi_hbm30_ARQOS = 4'd0;

assign m_axi_hbm30_ARREGION = 4'd0;

assign m_axi_hbm30_ARSIZE = 3'd0;

assign m_axi_hbm30_ARUSER = 1'd0;

assign m_axi_hbm30_ARVALID = 1'b0;

assign m_axi_hbm30_AWADDR = 64'd0;

assign m_axi_hbm30_AWBURST = 2'd0;

assign m_axi_hbm30_AWCACHE = 4'd0;

assign m_axi_hbm30_AWID = 1'd0;

assign m_axi_hbm30_AWLEN = 32'd0;

assign m_axi_hbm30_AWLOCK = 2'd0;

assign m_axi_hbm30_AWPROT = 3'd0;

assign m_axi_hbm30_AWQOS = 4'd0;

assign m_axi_hbm30_AWREGION = 4'd0;

assign m_axi_hbm30_AWSIZE = 3'd0;

assign m_axi_hbm30_AWUSER = 1'd0;

assign m_axi_hbm30_AWVALID = 1'b0;

assign m_axi_hbm30_BREADY = 1'b0;

assign m_axi_hbm30_RREADY = 1'b0;

assign m_axi_hbm30_WDATA = tmp_reg_141;

assign m_axi_hbm30_WID = 1'd0;

assign m_axi_hbm30_WLAST = 1'b0;

assign m_axi_hbm30_WSTRB = 4'd15;

assign m_axi_hbm30_WUSER = 1'd0;

endmodule //kernel_pr_write_back_14_Pipeline_write_back_loop
