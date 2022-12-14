// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module kernel_pr_load_value_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        m_axi_hbm2_AWVALID,
        m_axi_hbm2_AWREADY,
        m_axi_hbm2_AWADDR,
        m_axi_hbm2_AWID,
        m_axi_hbm2_AWLEN,
        m_axi_hbm2_AWSIZE,
        m_axi_hbm2_AWBURST,
        m_axi_hbm2_AWLOCK,
        m_axi_hbm2_AWCACHE,
        m_axi_hbm2_AWPROT,
        m_axi_hbm2_AWQOS,
        m_axi_hbm2_AWREGION,
        m_axi_hbm2_AWUSER,
        m_axi_hbm2_WVALID,
        m_axi_hbm2_WREADY,
        m_axi_hbm2_WDATA,
        m_axi_hbm2_WSTRB,
        m_axi_hbm2_WLAST,
        m_axi_hbm2_WID,
        m_axi_hbm2_WUSER,
        m_axi_hbm2_ARVALID,
        m_axi_hbm2_ARREADY,
        m_axi_hbm2_ARADDR,
        m_axi_hbm2_ARID,
        m_axi_hbm2_ARLEN,
        m_axi_hbm2_ARSIZE,
        m_axi_hbm2_ARBURST,
        m_axi_hbm2_ARLOCK,
        m_axi_hbm2_ARCACHE,
        m_axi_hbm2_ARPROT,
        m_axi_hbm2_ARQOS,
        m_axi_hbm2_ARREGION,
        m_axi_hbm2_ARUSER,
        m_axi_hbm2_RVALID,
        m_axi_hbm2_RREADY,
        m_axi_hbm2_RDATA,
        m_axi_hbm2_RLAST,
        m_axi_hbm2_RID,
        m_axi_hbm2_RFIFONUM,
        m_axi_hbm2_RUSER,
        m_axi_hbm2_RRESP,
        m_axi_hbm2_BVALID,
        m_axi_hbm2_BREADY,
        m_axi_hbm2_BRESP,
        m_axi_hbm2_BID,
        m_axi_hbm2_BUSER,
        value_r,
        bipedge_size,
        bipedge_stream_2_dout,
        bipedge_stream_2_empty_n,
        bipedge_stream_2_read,
        value_stream_2_din,
        value_stream_2_full_n,
        value_stream_2_write,
        ap_ext_blocking_n,
        ap_str_blocking_n,
        ap_int_blocking_n
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   m_axi_hbm2_AWVALID;
input   m_axi_hbm2_AWREADY;
output  [63:0] m_axi_hbm2_AWADDR;
output  [0:0] m_axi_hbm2_AWID;
output  [31:0] m_axi_hbm2_AWLEN;
output  [2:0] m_axi_hbm2_AWSIZE;
output  [1:0] m_axi_hbm2_AWBURST;
output  [1:0] m_axi_hbm2_AWLOCK;
output  [3:0] m_axi_hbm2_AWCACHE;
output  [2:0] m_axi_hbm2_AWPROT;
output  [3:0] m_axi_hbm2_AWQOS;
output  [3:0] m_axi_hbm2_AWREGION;
output  [0:0] m_axi_hbm2_AWUSER;
output   m_axi_hbm2_WVALID;
input   m_axi_hbm2_WREADY;
output  [31:0] m_axi_hbm2_WDATA;
output  [3:0] m_axi_hbm2_WSTRB;
output   m_axi_hbm2_WLAST;
output  [0:0] m_axi_hbm2_WID;
output  [0:0] m_axi_hbm2_WUSER;
output   m_axi_hbm2_ARVALID;
input   m_axi_hbm2_ARREADY;
output  [63:0] m_axi_hbm2_ARADDR;
output  [0:0] m_axi_hbm2_ARID;
output  [31:0] m_axi_hbm2_ARLEN;
output  [2:0] m_axi_hbm2_ARSIZE;
output  [1:0] m_axi_hbm2_ARBURST;
output  [1:0] m_axi_hbm2_ARLOCK;
output  [3:0] m_axi_hbm2_ARCACHE;
output  [2:0] m_axi_hbm2_ARPROT;
output  [3:0] m_axi_hbm2_ARQOS;
output  [3:0] m_axi_hbm2_ARREGION;
output  [0:0] m_axi_hbm2_ARUSER;
input   m_axi_hbm2_RVALID;
output   m_axi_hbm2_RREADY;
input  [31:0] m_axi_hbm2_RDATA;
input   m_axi_hbm2_RLAST;
input  [0:0] m_axi_hbm2_RID;
input  [9:0] m_axi_hbm2_RFIFONUM;
input  [0:0] m_axi_hbm2_RUSER;
input  [1:0] m_axi_hbm2_RRESP;
input   m_axi_hbm2_BVALID;
output   m_axi_hbm2_BREADY;
input  [1:0] m_axi_hbm2_BRESP;
input  [0:0] m_axi_hbm2_BID;
input  [0:0] m_axi_hbm2_BUSER;
input  [63:0] value_r;
input  [31:0] bipedge_size;
input  [63:0] bipedge_stream_2_dout;
input   bipedge_stream_2_empty_n;
output   bipedge_stream_2_read;
output  [31:0] value_stream_2_din;
input   value_stream_2_full_n;
output   value_stream_2_write;
output   ap_ext_blocking_n;
output   ap_str_blocking_n;
output   ap_int_blocking_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg m_axi_hbm2_ARVALID;
reg m_axi_hbm2_RREADY;
reg bipedge_stream_2_read;
reg[31:0] value_stream_2_din;
reg value_stream_2_write;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    value_stream_2_blk_n;
wire    ap_CS_fsm_state4;
reg   [27:0] trunc_ln_reg_109;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_start;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_done;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_idle;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_ready;
wire    grp_load_value_2_Pipeline_load_value_fu_71_bipedge_stream_2_read;
wire    grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWVALID;
wire   [63:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWADDR;
wire   [0:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWID;
wire   [31:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWLEN;
wire   [2:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWSIZE;
wire   [1:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWBURST;
wire   [1:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWLOCK;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWCACHE;
wire   [2:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWPROT;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWQOS;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWREGION;
wire   [0:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWUSER;
wire    grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WVALID;
wire   [31:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WDATA;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WSTRB;
wire    grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WLAST;
wire   [0:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WID;
wire   [0:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WUSER;
wire    grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARVALID;
wire   [63:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARADDR;
wire   [0:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARID;
wire   [31:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARLEN;
wire   [2:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARSIZE;
wire   [1:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARBURST;
wire   [1:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARLOCK;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARCACHE;
wire   [2:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARPROT;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARQOS;
wire   [3:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARREGION;
wire   [0:0] grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARUSER;
wire    grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_RREADY;
wire    grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_BREADY;
wire   [31:0] grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_din;
wire    grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_write;
wire   [31:0] grp_load_value_2_Pipeline_load_value_fu_71_sum_V_out;
wire    grp_load_value_2_Pipeline_load_value_fu_71_sum_V_out_ap_vld;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_ext_blocking_n;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_str_blocking_n;
wire    grp_load_value_2_Pipeline_load_value_fu_71_ap_int_blocking_n;
reg    grp_load_value_2_Pipeline_load_value_fu_71_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg    ap_block_state1;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_int_blocking_cur_n;
reg    ap_ext_blocking_sub_n;
reg    ap_wait_0;
reg    ap_sub_ext_blocking_0;
reg    ap_str_blocking_sub_n;
reg    ap_sub_str_blocking_0;
reg    ap_int_blocking_sub_n;
reg    ap_sub_int_blocking_0;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
#0 grp_load_value_2_Pipeline_load_value_fu_71_ap_start_reg = 1'b0;
end

kernel_pr_load_value_2_Pipeline_load_value grp_load_value_2_Pipeline_load_value_fu_71(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_load_value_2_Pipeline_load_value_fu_71_ap_start),
    .ap_done(grp_load_value_2_Pipeline_load_value_fu_71_ap_done),
    .ap_idle(grp_load_value_2_Pipeline_load_value_fu_71_ap_idle),
    .ap_ready(grp_load_value_2_Pipeline_load_value_fu_71_ap_ready),
    .bipedge_stream_2_dout(bipedge_stream_2_dout),
    .bipedge_stream_2_empty_n(bipedge_stream_2_empty_n),
    .bipedge_stream_2_read(grp_load_value_2_Pipeline_load_value_fu_71_bipedge_stream_2_read),
    .m_axi_hbm2_AWVALID(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWVALID),
    .m_axi_hbm2_AWREADY(1'b0),
    .m_axi_hbm2_AWADDR(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWADDR),
    .m_axi_hbm2_AWID(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWID),
    .m_axi_hbm2_AWLEN(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWLEN),
    .m_axi_hbm2_AWSIZE(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWSIZE),
    .m_axi_hbm2_AWBURST(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWBURST),
    .m_axi_hbm2_AWLOCK(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWLOCK),
    .m_axi_hbm2_AWCACHE(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWCACHE),
    .m_axi_hbm2_AWPROT(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWPROT),
    .m_axi_hbm2_AWQOS(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWQOS),
    .m_axi_hbm2_AWREGION(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWREGION),
    .m_axi_hbm2_AWUSER(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_AWUSER),
    .m_axi_hbm2_WVALID(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WVALID),
    .m_axi_hbm2_WREADY(1'b0),
    .m_axi_hbm2_WDATA(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WDATA),
    .m_axi_hbm2_WSTRB(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WSTRB),
    .m_axi_hbm2_WLAST(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WLAST),
    .m_axi_hbm2_WID(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WID),
    .m_axi_hbm2_WUSER(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_WUSER),
    .m_axi_hbm2_ARVALID(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARVALID),
    .m_axi_hbm2_ARREADY(m_axi_hbm2_ARREADY),
    .m_axi_hbm2_ARADDR(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARADDR),
    .m_axi_hbm2_ARID(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARID),
    .m_axi_hbm2_ARLEN(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARLEN),
    .m_axi_hbm2_ARSIZE(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARSIZE),
    .m_axi_hbm2_ARBURST(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARBURST),
    .m_axi_hbm2_ARLOCK(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARLOCK),
    .m_axi_hbm2_ARCACHE(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARCACHE),
    .m_axi_hbm2_ARPROT(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARPROT),
    .m_axi_hbm2_ARQOS(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARQOS),
    .m_axi_hbm2_ARREGION(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARREGION),
    .m_axi_hbm2_ARUSER(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARUSER),
    .m_axi_hbm2_RVALID(m_axi_hbm2_RVALID),
    .m_axi_hbm2_RREADY(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_RREADY),
    .m_axi_hbm2_RDATA(m_axi_hbm2_RDATA),
    .m_axi_hbm2_RLAST(m_axi_hbm2_RLAST),
    .m_axi_hbm2_RID(m_axi_hbm2_RID),
    .m_axi_hbm2_RFIFONUM(m_axi_hbm2_RFIFONUM),
    .m_axi_hbm2_RUSER(m_axi_hbm2_RUSER),
    .m_axi_hbm2_RRESP(m_axi_hbm2_RRESP),
    .m_axi_hbm2_BVALID(1'b0),
    .m_axi_hbm2_BREADY(grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_BREADY),
    .m_axi_hbm2_BRESP(2'd0),
    .m_axi_hbm2_BID(1'd0),
    .m_axi_hbm2_BUSER(1'd0),
    .value_stream_2_din(grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_din),
    .value_stream_2_full_n(value_stream_2_full_n),
    .value_stream_2_write(grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_write),
    .trunc_ln(trunc_ln_reg_109),
    .value_r(value_r),
    .sum_V_out(grp_load_value_2_Pipeline_load_value_fu_71_sum_V_out),
    .sum_V_out_ap_vld(grp_load_value_2_Pipeline_load_value_fu_71_sum_V_out_ap_vld),
    .ap_ext_blocking_n(grp_load_value_2_Pipeline_load_value_fu_71_ap_ext_blocking_n),
    .ap_str_blocking_n(grp_load_value_2_Pipeline_load_value_fu_71_ap_str_blocking_n),
    .ap_int_blocking_n(grp_load_value_2_Pipeline_load_value_fu_71_ap_int_blocking_n)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((value_stream_2_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_load_value_2_Pipeline_load_value_fu_71_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_load_value_2_Pipeline_load_value_fu_71_ap_start_reg <= 1'b1;
        end else if ((grp_load_value_2_Pipeline_load_value_fu_71_ap_ready == 1'b1)) begin
            grp_load_value_2_Pipeline_load_value_fu_71_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        trunc_ln_reg_109 <= {{bipedge_size[31:4]}};
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_load_value_2_Pipeline_load_value_fu_71_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((value_stream_2_full_n == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if (((value_stream_2_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_ext_blocking_0) == 1'b1)) begin
        ap_ext_blocking_sub_n = 1'b0;
    end else begin
        ap_ext_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_int_blocking_0) == 1'b1)) begin
        ap_int_blocking_sub_n = 1'b0;
    end else begin
        ap_int_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if (((value_stream_2_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_wait_0 & ap_sub_str_blocking_0) == 1'b1)) begin
        ap_str_blocking_sub_n = 1'b0;
    end else begin
        ap_str_blocking_sub_n = 1'b1;
    end
end

always @ (*) begin
    if ((grp_load_value_2_Pipeline_load_value_fu_71_ap_ext_blocking_n == 1'b0)) begin
        ap_sub_ext_blocking_0 = 1'b1;
    end else begin
        ap_sub_ext_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_load_value_2_Pipeline_load_value_fu_71_ap_int_blocking_n == 1'b0)) begin
        ap_sub_int_blocking_0 = 1'b1;
    end else begin
        ap_sub_int_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((grp_load_value_2_Pipeline_load_value_fu_71_ap_str_blocking_n == 1'b0)) begin
        ap_sub_str_blocking_0 = 1'b1;
    end else begin
        ap_sub_str_blocking_0 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_ST_fsm_state3 == ap_CS_fsm)) begin
        ap_wait_0 = 1'b1;
    end else begin
        ap_wait_0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        bipedge_stream_2_read = grp_load_value_2_Pipeline_load_value_fu_71_bipedge_stream_2_read;
    end else begin
        bipedge_stream_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_hbm2_ARVALID = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARVALID;
    end else begin
        m_axi_hbm2_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        m_axi_hbm2_RREADY = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_RREADY;
    end else begin
        m_axi_hbm2_RREADY = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        value_stream_2_blk_n = value_stream_2_full_n;
    end else begin
        value_stream_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((value_stream_2_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        value_stream_2_din = grp_load_value_2_Pipeline_load_value_fu_71_sum_V_out;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        value_stream_2_din = grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_din;
    end else begin
        value_stream_2_din = grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_din;
    end
end

always @ (*) begin
    if (((value_stream_2_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        value_stream_2_write = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        value_stream_2_write = grp_load_value_2_Pipeline_load_value_fu_71_value_stream_2_write;
    end else begin
        value_stream_2_write = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_load_value_2_Pipeline_load_value_fu_71_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((value_stream_2_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_ext_blocking_n = (ap_ext_blocking_sub_n & 1'b1);

assign ap_int_blocking_cur_n = value_stream_2_blk_n;

assign ap_int_blocking_n = (ap_int_blocking_sub_n & ap_int_blocking_cur_n);

assign ap_str_blocking_n = (ap_str_blocking_sub_n & 1'b1);

assign grp_load_value_2_Pipeline_load_value_fu_71_ap_start = grp_load_value_2_Pipeline_load_value_fu_71_ap_start_reg;

assign m_axi_hbm2_ARADDR = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARADDR;

assign m_axi_hbm2_ARBURST = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARBURST;

assign m_axi_hbm2_ARCACHE = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARCACHE;

assign m_axi_hbm2_ARID = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARID;

assign m_axi_hbm2_ARLEN = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARLEN;

assign m_axi_hbm2_ARLOCK = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARLOCK;

assign m_axi_hbm2_ARPROT = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARPROT;

assign m_axi_hbm2_ARQOS = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARQOS;

assign m_axi_hbm2_ARREGION = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARREGION;

assign m_axi_hbm2_ARSIZE = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARSIZE;

assign m_axi_hbm2_ARUSER = grp_load_value_2_Pipeline_load_value_fu_71_m_axi_hbm2_ARUSER;

assign m_axi_hbm2_AWADDR = 64'd0;

assign m_axi_hbm2_AWBURST = 2'd0;

assign m_axi_hbm2_AWCACHE = 4'd0;

assign m_axi_hbm2_AWID = 1'd0;

assign m_axi_hbm2_AWLEN = 32'd0;

assign m_axi_hbm2_AWLOCK = 2'd0;

assign m_axi_hbm2_AWPROT = 3'd0;

assign m_axi_hbm2_AWQOS = 4'd0;

assign m_axi_hbm2_AWREGION = 4'd0;

assign m_axi_hbm2_AWSIZE = 3'd0;

assign m_axi_hbm2_AWUSER = 1'd0;

assign m_axi_hbm2_AWVALID = 1'b0;

assign m_axi_hbm2_BREADY = 1'b0;

assign m_axi_hbm2_WDATA = 32'd0;

assign m_axi_hbm2_WID = 1'd0;

assign m_axi_hbm2_WLAST = 1'b0;

assign m_axi_hbm2_WSTRB = 4'd0;

assign m_axi_hbm2_WUSER = 1'd0;

assign m_axi_hbm2_WVALID = 1'b0;

endmodule //kernel_pr_load_value_2
