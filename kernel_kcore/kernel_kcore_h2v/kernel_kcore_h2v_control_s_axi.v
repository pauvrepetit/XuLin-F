// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module kernel_kcore_h2v_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 11,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   V_value_hbm0,
    output wire [63:0]                   V_value_hbm1,
    output wire [63:0]                   V_value_hbm2,
    output wire [63:0]                   V_value_hbm3,
    output wire [63:0]                   V_value_hbm4,
    output wire [63:0]                   V_value_hbm5,
    output wire [63:0]                   V_value_hbm6,
    output wire [63:0]                   V_value_hbm7,
    output wire [63:0]                   V_value_hbm8,
    output wire [63:0]                   V_value_hbm9,
    output wire [63:0]                   V_value_hbm10,
    output wire [63:0]                   V_value_hbm11,
    output wire [63:0]                   V_value_hbm12,
    output wire [63:0]                   V_value_hbm13,
    output wire [63:0]                   V_value_hbm14,
    output wire [63:0]                   V_value_hbm15,
    output wire [63:0]                   H_value_hbm0,
    output wire [63:0]                   H_value_hbm1,
    output wire [63:0]                   H_value_hbm2,
    output wire [63:0]                   H_value_hbm3,
    output wire [63:0]                   H_value_hbm4,
    output wire [63:0]                   H_value_hbm5,
    output wire [63:0]                   H_value_hbm6,
    output wire [63:0]                   H_value_hbm7,
    output wire [63:0]                   H_value_hbm8,
    output wire [63:0]                   H_value_hbm9,
    output wire [63:0]                   H_value_hbm10,
    output wire [63:0]                   H_value_hbm11,
    output wire [63:0]                   H_value_hbm12,
    output wire [63:0]                   H_value_hbm13,
    output wire [63:0]                   H_value_hbm14,
    output wire [63:0]                   H_value_hbm15,
    output wire [63:0]                   vh_offset_hbm0,
    output wire [63:0]                   vh_offset_hbm1,
    output wire [63:0]                   vh_offset_hbm2,
    output wire [63:0]                   vh_offset_hbm3,
    output wire [63:0]                   vh_offset_hbm4,
    output wire [63:0]                   vh_offset_hbm5,
    output wire [63:0]                   vh_offset_hbm6,
    output wire [63:0]                   vh_offset_hbm7,
    output wire [63:0]                   vh_offset_hbm8,
    output wire [63:0]                   vh_offset_hbm9,
    output wire [63:0]                   vh_offset_hbm10,
    output wire [63:0]                   vh_offset_hbm11,
    output wire [63:0]                   vh_offset_hbm12,
    output wire [63:0]                   vh_offset_hbm13,
    output wire [63:0]                   vh_offset_hbm14,
    output wire [63:0]                   vh_offset_hbm15,
    output wire [63:0]                   vh_index_hbm0,
    output wire [63:0]                   vh_index_hbm1,
    output wire [63:0]                   vh_index_hbm2,
    output wire [63:0]                   vh_index_hbm3,
    output wire [63:0]                   vh_index_hbm4,
    output wire [63:0]                   vh_index_hbm5,
    output wire [63:0]                   vh_index_hbm6,
    output wire [63:0]                   vh_index_hbm7,
    output wire [63:0]                   vh_index_hbm8,
    output wire [63:0]                   vh_index_hbm9,
    output wire [63:0]                   vh_index_hbm10,
    output wire [63:0]                   vh_index_hbm11,
    output wire [63:0]                   vh_index_hbm12,
    output wire [63:0]                   vh_index_hbm13,
    output wire [63:0]                   vh_index_hbm14,
    output wire [63:0]                   vh_index_hbm15,
    output wire [63:0]                   to_process_index_hbm0,
    output wire [63:0]                   to_process_index_hbm1,
    output wire [63:0]                   to_process_index_hbm2,
    output wire [63:0]                   to_process_index_hbm3,
    output wire [63:0]                   to_process_index_hbm4,
    output wire [63:0]                   to_process_index_hbm5,
    output wire [63:0]                   to_process_index_hbm6,
    output wire [63:0]                   to_process_index_hbm7,
    output wire [63:0]                   to_process_index_hbm8,
    output wire [63:0]                   to_process_index_hbm9,
    output wire [63:0]                   to_process_index_hbm10,
    output wire [63:0]                   to_process_index_hbm11,
    output wire [63:0]                   to_process_index_hbm12,
    output wire [63:0]                   to_process_index_hbm13,
    output wire [63:0]                   to_process_index_hbm14,
    output wire [63:0]                   to_process_index_hbm15,
    output wire [31:0]                   to_process_count_hbm0,
    output wire [31:0]                   to_process_count_hbm1,
    output wire [31:0]                   to_process_count_hbm2,
    output wire [31:0]                   to_process_count_hbm3,
    output wire [31:0]                   to_process_count_hbm4,
    output wire [31:0]                   to_process_count_hbm5,
    output wire [31:0]                   to_process_count_hbm6,
    output wire [31:0]                   to_process_count_hbm7,
    output wire [31:0]                   to_process_count_hbm8,
    output wire [31:0]                   to_process_count_hbm9,
    output wire [31:0]                   to_process_count_hbm10,
    output wire [31:0]                   to_process_count_hbm11,
    output wire [31:0]                   to_process_count_hbm12,
    output wire [31:0]                   to_process_count_hbm13,
    output wire [31:0]                   to_process_count_hbm14,
    output wire [31:0]                   to_process_count_hbm15,
    output wire [31:0]                   k,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    output wire                          ap_continue,
    input  wire                          ap_idle,
    output wire                          event_start,
    input  wire [0:0]                    ap_local_deadlock
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 4  - ap_continue (Read/Write/SC)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (COR/TOW)
//         bit 1 - ap_ready (COR/TOW)
//         bit 5 - ap_local_deadlock (COR/TOW)
//         others - reserved
// 0x010 : Data signal of V_value_hbm0
//         bit 31~0 - V_value_hbm0[31:0] (Read/Write)
// 0x014 : Data signal of V_value_hbm0
//         bit 31~0 - V_value_hbm0[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of V_value_hbm1
//         bit 31~0 - V_value_hbm1[31:0] (Read/Write)
// 0x020 : Data signal of V_value_hbm1
//         bit 31~0 - V_value_hbm1[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of V_value_hbm2
//         bit 31~0 - V_value_hbm2[31:0] (Read/Write)
// 0x02c : Data signal of V_value_hbm2
//         bit 31~0 - V_value_hbm2[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of V_value_hbm3
//         bit 31~0 - V_value_hbm3[31:0] (Read/Write)
// 0x038 : Data signal of V_value_hbm3
//         bit 31~0 - V_value_hbm3[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of V_value_hbm4
//         bit 31~0 - V_value_hbm4[31:0] (Read/Write)
// 0x044 : Data signal of V_value_hbm4
//         bit 31~0 - V_value_hbm4[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of V_value_hbm5
//         bit 31~0 - V_value_hbm5[31:0] (Read/Write)
// 0x050 : Data signal of V_value_hbm5
//         bit 31~0 - V_value_hbm5[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of V_value_hbm6
//         bit 31~0 - V_value_hbm6[31:0] (Read/Write)
// 0x05c : Data signal of V_value_hbm6
//         bit 31~0 - V_value_hbm6[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of V_value_hbm7
//         bit 31~0 - V_value_hbm7[31:0] (Read/Write)
// 0x068 : Data signal of V_value_hbm7
//         bit 31~0 - V_value_hbm7[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of V_value_hbm8
//         bit 31~0 - V_value_hbm8[31:0] (Read/Write)
// 0x074 : Data signal of V_value_hbm8
//         bit 31~0 - V_value_hbm8[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of V_value_hbm9
//         bit 31~0 - V_value_hbm9[31:0] (Read/Write)
// 0x080 : Data signal of V_value_hbm9
//         bit 31~0 - V_value_hbm9[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of V_value_hbm10
//         bit 31~0 - V_value_hbm10[31:0] (Read/Write)
// 0x08c : Data signal of V_value_hbm10
//         bit 31~0 - V_value_hbm10[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of V_value_hbm11
//         bit 31~0 - V_value_hbm11[31:0] (Read/Write)
// 0x098 : Data signal of V_value_hbm11
//         bit 31~0 - V_value_hbm11[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of V_value_hbm12
//         bit 31~0 - V_value_hbm12[31:0] (Read/Write)
// 0x0a4 : Data signal of V_value_hbm12
//         bit 31~0 - V_value_hbm12[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of V_value_hbm13
//         bit 31~0 - V_value_hbm13[31:0] (Read/Write)
// 0x0b0 : Data signal of V_value_hbm13
//         bit 31~0 - V_value_hbm13[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of V_value_hbm14
//         bit 31~0 - V_value_hbm14[31:0] (Read/Write)
// 0x0bc : Data signal of V_value_hbm14
//         bit 31~0 - V_value_hbm14[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of V_value_hbm15
//         bit 31~0 - V_value_hbm15[31:0] (Read/Write)
// 0x0c8 : Data signal of V_value_hbm15
//         bit 31~0 - V_value_hbm15[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of H_value_hbm0
//         bit 31~0 - H_value_hbm0[31:0] (Read/Write)
// 0x0d4 : Data signal of H_value_hbm0
//         bit 31~0 - H_value_hbm0[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of H_value_hbm1
//         bit 31~0 - H_value_hbm1[31:0] (Read/Write)
// 0x0e0 : Data signal of H_value_hbm1
//         bit 31~0 - H_value_hbm1[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of H_value_hbm2
//         bit 31~0 - H_value_hbm2[31:0] (Read/Write)
// 0x0ec : Data signal of H_value_hbm2
//         bit 31~0 - H_value_hbm2[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of H_value_hbm3
//         bit 31~0 - H_value_hbm3[31:0] (Read/Write)
// 0x0f8 : Data signal of H_value_hbm3
//         bit 31~0 - H_value_hbm3[63:32] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of H_value_hbm4
//         bit 31~0 - H_value_hbm4[31:0] (Read/Write)
// 0x104 : Data signal of H_value_hbm4
//         bit 31~0 - H_value_hbm4[63:32] (Read/Write)
// 0x108 : reserved
// 0x10c : Data signal of H_value_hbm5
//         bit 31~0 - H_value_hbm5[31:0] (Read/Write)
// 0x110 : Data signal of H_value_hbm5
//         bit 31~0 - H_value_hbm5[63:32] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of H_value_hbm6
//         bit 31~0 - H_value_hbm6[31:0] (Read/Write)
// 0x11c : Data signal of H_value_hbm6
//         bit 31~0 - H_value_hbm6[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of H_value_hbm7
//         bit 31~0 - H_value_hbm7[31:0] (Read/Write)
// 0x128 : Data signal of H_value_hbm7
//         bit 31~0 - H_value_hbm7[63:32] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of H_value_hbm8
//         bit 31~0 - H_value_hbm8[31:0] (Read/Write)
// 0x134 : Data signal of H_value_hbm8
//         bit 31~0 - H_value_hbm8[63:32] (Read/Write)
// 0x138 : reserved
// 0x13c : Data signal of H_value_hbm9
//         bit 31~0 - H_value_hbm9[31:0] (Read/Write)
// 0x140 : Data signal of H_value_hbm9
//         bit 31~0 - H_value_hbm9[63:32] (Read/Write)
// 0x144 : reserved
// 0x148 : Data signal of H_value_hbm10
//         bit 31~0 - H_value_hbm10[31:0] (Read/Write)
// 0x14c : Data signal of H_value_hbm10
//         bit 31~0 - H_value_hbm10[63:32] (Read/Write)
// 0x150 : reserved
// 0x154 : Data signal of H_value_hbm11
//         bit 31~0 - H_value_hbm11[31:0] (Read/Write)
// 0x158 : Data signal of H_value_hbm11
//         bit 31~0 - H_value_hbm11[63:32] (Read/Write)
// 0x15c : reserved
// 0x160 : Data signal of H_value_hbm12
//         bit 31~0 - H_value_hbm12[31:0] (Read/Write)
// 0x164 : Data signal of H_value_hbm12
//         bit 31~0 - H_value_hbm12[63:32] (Read/Write)
// 0x168 : reserved
// 0x16c : Data signal of H_value_hbm13
//         bit 31~0 - H_value_hbm13[31:0] (Read/Write)
// 0x170 : Data signal of H_value_hbm13
//         bit 31~0 - H_value_hbm13[63:32] (Read/Write)
// 0x174 : reserved
// 0x178 : Data signal of H_value_hbm14
//         bit 31~0 - H_value_hbm14[31:0] (Read/Write)
// 0x17c : Data signal of H_value_hbm14
//         bit 31~0 - H_value_hbm14[63:32] (Read/Write)
// 0x180 : reserved
// 0x184 : Data signal of H_value_hbm15
//         bit 31~0 - H_value_hbm15[31:0] (Read/Write)
// 0x188 : Data signal of H_value_hbm15
//         bit 31~0 - H_value_hbm15[63:32] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of vh_offset_hbm0
//         bit 31~0 - vh_offset_hbm0[31:0] (Read/Write)
// 0x194 : Data signal of vh_offset_hbm0
//         bit 31~0 - vh_offset_hbm0[63:32] (Read/Write)
// 0x198 : reserved
// 0x19c : Data signal of vh_offset_hbm1
//         bit 31~0 - vh_offset_hbm1[31:0] (Read/Write)
// 0x1a0 : Data signal of vh_offset_hbm1
//         bit 31~0 - vh_offset_hbm1[63:32] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of vh_offset_hbm2
//         bit 31~0 - vh_offset_hbm2[31:0] (Read/Write)
// 0x1ac : Data signal of vh_offset_hbm2
//         bit 31~0 - vh_offset_hbm2[63:32] (Read/Write)
// 0x1b0 : reserved
// 0x1b4 : Data signal of vh_offset_hbm3
//         bit 31~0 - vh_offset_hbm3[31:0] (Read/Write)
// 0x1b8 : Data signal of vh_offset_hbm3
//         bit 31~0 - vh_offset_hbm3[63:32] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of vh_offset_hbm4
//         bit 31~0 - vh_offset_hbm4[31:0] (Read/Write)
// 0x1c4 : Data signal of vh_offset_hbm4
//         bit 31~0 - vh_offset_hbm4[63:32] (Read/Write)
// 0x1c8 : reserved
// 0x1cc : Data signal of vh_offset_hbm5
//         bit 31~0 - vh_offset_hbm5[31:0] (Read/Write)
// 0x1d0 : Data signal of vh_offset_hbm5
//         bit 31~0 - vh_offset_hbm5[63:32] (Read/Write)
// 0x1d4 : reserved
// 0x1d8 : Data signal of vh_offset_hbm6
//         bit 31~0 - vh_offset_hbm6[31:0] (Read/Write)
// 0x1dc : Data signal of vh_offset_hbm6
//         bit 31~0 - vh_offset_hbm6[63:32] (Read/Write)
// 0x1e0 : reserved
// 0x1e4 : Data signal of vh_offset_hbm7
//         bit 31~0 - vh_offset_hbm7[31:0] (Read/Write)
// 0x1e8 : Data signal of vh_offset_hbm7
//         bit 31~0 - vh_offset_hbm7[63:32] (Read/Write)
// 0x1ec : reserved
// 0x1f0 : Data signal of vh_offset_hbm8
//         bit 31~0 - vh_offset_hbm8[31:0] (Read/Write)
// 0x1f4 : Data signal of vh_offset_hbm8
//         bit 31~0 - vh_offset_hbm8[63:32] (Read/Write)
// 0x1f8 : reserved
// 0x1fc : Data signal of vh_offset_hbm9
//         bit 31~0 - vh_offset_hbm9[31:0] (Read/Write)
// 0x200 : Data signal of vh_offset_hbm9
//         bit 31~0 - vh_offset_hbm9[63:32] (Read/Write)
// 0x204 : reserved
// 0x208 : Data signal of vh_offset_hbm10
//         bit 31~0 - vh_offset_hbm10[31:0] (Read/Write)
// 0x20c : Data signal of vh_offset_hbm10
//         bit 31~0 - vh_offset_hbm10[63:32] (Read/Write)
// 0x210 : reserved
// 0x214 : Data signal of vh_offset_hbm11
//         bit 31~0 - vh_offset_hbm11[31:0] (Read/Write)
// 0x218 : Data signal of vh_offset_hbm11
//         bit 31~0 - vh_offset_hbm11[63:32] (Read/Write)
// 0x21c : reserved
// 0x220 : Data signal of vh_offset_hbm12
//         bit 31~0 - vh_offset_hbm12[31:0] (Read/Write)
// 0x224 : Data signal of vh_offset_hbm12
//         bit 31~0 - vh_offset_hbm12[63:32] (Read/Write)
// 0x228 : reserved
// 0x22c : Data signal of vh_offset_hbm13
//         bit 31~0 - vh_offset_hbm13[31:0] (Read/Write)
// 0x230 : Data signal of vh_offset_hbm13
//         bit 31~0 - vh_offset_hbm13[63:32] (Read/Write)
// 0x234 : reserved
// 0x238 : Data signal of vh_offset_hbm14
//         bit 31~0 - vh_offset_hbm14[31:0] (Read/Write)
// 0x23c : Data signal of vh_offset_hbm14
//         bit 31~0 - vh_offset_hbm14[63:32] (Read/Write)
// 0x240 : reserved
// 0x244 : Data signal of vh_offset_hbm15
//         bit 31~0 - vh_offset_hbm15[31:0] (Read/Write)
// 0x248 : Data signal of vh_offset_hbm15
//         bit 31~0 - vh_offset_hbm15[63:32] (Read/Write)
// 0x24c : reserved
// 0x250 : Data signal of vh_index_hbm0
//         bit 31~0 - vh_index_hbm0[31:0] (Read/Write)
// 0x254 : Data signal of vh_index_hbm0
//         bit 31~0 - vh_index_hbm0[63:32] (Read/Write)
// 0x258 : reserved
// 0x25c : Data signal of vh_index_hbm1
//         bit 31~0 - vh_index_hbm1[31:0] (Read/Write)
// 0x260 : Data signal of vh_index_hbm1
//         bit 31~0 - vh_index_hbm1[63:32] (Read/Write)
// 0x264 : reserved
// 0x268 : Data signal of vh_index_hbm2
//         bit 31~0 - vh_index_hbm2[31:0] (Read/Write)
// 0x26c : Data signal of vh_index_hbm2
//         bit 31~0 - vh_index_hbm2[63:32] (Read/Write)
// 0x270 : reserved
// 0x274 : Data signal of vh_index_hbm3
//         bit 31~0 - vh_index_hbm3[31:0] (Read/Write)
// 0x278 : Data signal of vh_index_hbm3
//         bit 31~0 - vh_index_hbm3[63:32] (Read/Write)
// 0x27c : reserved
// 0x280 : Data signal of vh_index_hbm4
//         bit 31~0 - vh_index_hbm4[31:0] (Read/Write)
// 0x284 : Data signal of vh_index_hbm4
//         bit 31~0 - vh_index_hbm4[63:32] (Read/Write)
// 0x288 : reserved
// 0x28c : Data signal of vh_index_hbm5
//         bit 31~0 - vh_index_hbm5[31:0] (Read/Write)
// 0x290 : Data signal of vh_index_hbm5
//         bit 31~0 - vh_index_hbm5[63:32] (Read/Write)
// 0x294 : reserved
// 0x298 : Data signal of vh_index_hbm6
//         bit 31~0 - vh_index_hbm6[31:0] (Read/Write)
// 0x29c : Data signal of vh_index_hbm6
//         bit 31~0 - vh_index_hbm6[63:32] (Read/Write)
// 0x2a0 : reserved
// 0x2a4 : Data signal of vh_index_hbm7
//         bit 31~0 - vh_index_hbm7[31:0] (Read/Write)
// 0x2a8 : Data signal of vh_index_hbm7
//         bit 31~0 - vh_index_hbm7[63:32] (Read/Write)
// 0x2ac : reserved
// 0x2b0 : Data signal of vh_index_hbm8
//         bit 31~0 - vh_index_hbm8[31:0] (Read/Write)
// 0x2b4 : Data signal of vh_index_hbm8
//         bit 31~0 - vh_index_hbm8[63:32] (Read/Write)
// 0x2b8 : reserved
// 0x2bc : Data signal of vh_index_hbm9
//         bit 31~0 - vh_index_hbm9[31:0] (Read/Write)
// 0x2c0 : Data signal of vh_index_hbm9
//         bit 31~0 - vh_index_hbm9[63:32] (Read/Write)
// 0x2c4 : reserved
// 0x2c8 : Data signal of vh_index_hbm10
//         bit 31~0 - vh_index_hbm10[31:0] (Read/Write)
// 0x2cc : Data signal of vh_index_hbm10
//         bit 31~0 - vh_index_hbm10[63:32] (Read/Write)
// 0x2d0 : reserved
// 0x2d4 : Data signal of vh_index_hbm11
//         bit 31~0 - vh_index_hbm11[31:0] (Read/Write)
// 0x2d8 : Data signal of vh_index_hbm11
//         bit 31~0 - vh_index_hbm11[63:32] (Read/Write)
// 0x2dc : reserved
// 0x2e0 : Data signal of vh_index_hbm12
//         bit 31~0 - vh_index_hbm12[31:0] (Read/Write)
// 0x2e4 : Data signal of vh_index_hbm12
//         bit 31~0 - vh_index_hbm12[63:32] (Read/Write)
// 0x2e8 : reserved
// 0x2ec : Data signal of vh_index_hbm13
//         bit 31~0 - vh_index_hbm13[31:0] (Read/Write)
// 0x2f0 : Data signal of vh_index_hbm13
//         bit 31~0 - vh_index_hbm13[63:32] (Read/Write)
// 0x2f4 : reserved
// 0x2f8 : Data signal of vh_index_hbm14
//         bit 31~0 - vh_index_hbm14[31:0] (Read/Write)
// 0x2fc : Data signal of vh_index_hbm14
//         bit 31~0 - vh_index_hbm14[63:32] (Read/Write)
// 0x300 : reserved
// 0x304 : Data signal of vh_index_hbm15
//         bit 31~0 - vh_index_hbm15[31:0] (Read/Write)
// 0x308 : Data signal of vh_index_hbm15
//         bit 31~0 - vh_index_hbm15[63:32] (Read/Write)
// 0x30c : reserved
// 0x310 : Data signal of to_process_index_hbm0
//         bit 31~0 - to_process_index_hbm0[31:0] (Read/Write)
// 0x314 : Data signal of to_process_index_hbm0
//         bit 31~0 - to_process_index_hbm0[63:32] (Read/Write)
// 0x318 : reserved
// 0x31c : Data signal of to_process_index_hbm1
//         bit 31~0 - to_process_index_hbm1[31:0] (Read/Write)
// 0x320 : Data signal of to_process_index_hbm1
//         bit 31~0 - to_process_index_hbm1[63:32] (Read/Write)
// 0x324 : reserved
// 0x328 : Data signal of to_process_index_hbm2
//         bit 31~0 - to_process_index_hbm2[31:0] (Read/Write)
// 0x32c : Data signal of to_process_index_hbm2
//         bit 31~0 - to_process_index_hbm2[63:32] (Read/Write)
// 0x330 : reserved
// 0x334 : Data signal of to_process_index_hbm3
//         bit 31~0 - to_process_index_hbm3[31:0] (Read/Write)
// 0x338 : Data signal of to_process_index_hbm3
//         bit 31~0 - to_process_index_hbm3[63:32] (Read/Write)
// 0x33c : reserved
// 0x340 : Data signal of to_process_index_hbm4
//         bit 31~0 - to_process_index_hbm4[31:0] (Read/Write)
// 0x344 : Data signal of to_process_index_hbm4
//         bit 31~0 - to_process_index_hbm4[63:32] (Read/Write)
// 0x348 : reserved
// 0x34c : Data signal of to_process_index_hbm5
//         bit 31~0 - to_process_index_hbm5[31:0] (Read/Write)
// 0x350 : Data signal of to_process_index_hbm5
//         bit 31~0 - to_process_index_hbm5[63:32] (Read/Write)
// 0x354 : reserved
// 0x358 : Data signal of to_process_index_hbm6
//         bit 31~0 - to_process_index_hbm6[31:0] (Read/Write)
// 0x35c : Data signal of to_process_index_hbm6
//         bit 31~0 - to_process_index_hbm6[63:32] (Read/Write)
// 0x360 : reserved
// 0x364 : Data signal of to_process_index_hbm7
//         bit 31~0 - to_process_index_hbm7[31:0] (Read/Write)
// 0x368 : Data signal of to_process_index_hbm7
//         bit 31~0 - to_process_index_hbm7[63:32] (Read/Write)
// 0x36c : reserved
// 0x370 : Data signal of to_process_index_hbm8
//         bit 31~0 - to_process_index_hbm8[31:0] (Read/Write)
// 0x374 : Data signal of to_process_index_hbm8
//         bit 31~0 - to_process_index_hbm8[63:32] (Read/Write)
// 0x378 : reserved
// 0x37c : Data signal of to_process_index_hbm9
//         bit 31~0 - to_process_index_hbm9[31:0] (Read/Write)
// 0x380 : Data signal of to_process_index_hbm9
//         bit 31~0 - to_process_index_hbm9[63:32] (Read/Write)
// 0x384 : reserved
// 0x388 : Data signal of to_process_index_hbm10
//         bit 31~0 - to_process_index_hbm10[31:0] (Read/Write)
// 0x38c : Data signal of to_process_index_hbm10
//         bit 31~0 - to_process_index_hbm10[63:32] (Read/Write)
// 0x390 : reserved
// 0x394 : Data signal of to_process_index_hbm11
//         bit 31~0 - to_process_index_hbm11[31:0] (Read/Write)
// 0x398 : Data signal of to_process_index_hbm11
//         bit 31~0 - to_process_index_hbm11[63:32] (Read/Write)
// 0x39c : reserved
// 0x3a0 : Data signal of to_process_index_hbm12
//         bit 31~0 - to_process_index_hbm12[31:0] (Read/Write)
// 0x3a4 : Data signal of to_process_index_hbm12
//         bit 31~0 - to_process_index_hbm12[63:32] (Read/Write)
// 0x3a8 : reserved
// 0x3ac : Data signal of to_process_index_hbm13
//         bit 31~0 - to_process_index_hbm13[31:0] (Read/Write)
// 0x3b0 : Data signal of to_process_index_hbm13
//         bit 31~0 - to_process_index_hbm13[63:32] (Read/Write)
// 0x3b4 : reserved
// 0x3b8 : Data signal of to_process_index_hbm14
//         bit 31~0 - to_process_index_hbm14[31:0] (Read/Write)
// 0x3bc : Data signal of to_process_index_hbm14
//         bit 31~0 - to_process_index_hbm14[63:32] (Read/Write)
// 0x3c0 : reserved
// 0x3c4 : Data signal of to_process_index_hbm15
//         bit 31~0 - to_process_index_hbm15[31:0] (Read/Write)
// 0x3c8 : Data signal of to_process_index_hbm15
//         bit 31~0 - to_process_index_hbm15[63:32] (Read/Write)
// 0x3cc : reserved
// 0x3d0 : Data signal of to_process_count_hbm0
//         bit 31~0 - to_process_count_hbm0[31:0] (Read/Write)
// 0x3d4 : reserved
// 0x3d8 : Data signal of to_process_count_hbm1
//         bit 31~0 - to_process_count_hbm1[31:0] (Read/Write)
// 0x3dc : reserved
// 0x3e0 : Data signal of to_process_count_hbm2
//         bit 31~0 - to_process_count_hbm2[31:0] (Read/Write)
// 0x3e4 : reserved
// 0x3e8 : Data signal of to_process_count_hbm3
//         bit 31~0 - to_process_count_hbm3[31:0] (Read/Write)
// 0x3ec : reserved
// 0x3f0 : Data signal of to_process_count_hbm4
//         bit 31~0 - to_process_count_hbm4[31:0] (Read/Write)
// 0x3f4 : reserved
// 0x3f8 : Data signal of to_process_count_hbm5
//         bit 31~0 - to_process_count_hbm5[31:0] (Read/Write)
// 0x3fc : reserved
// 0x400 : Data signal of to_process_count_hbm6
//         bit 31~0 - to_process_count_hbm6[31:0] (Read/Write)
// 0x404 : reserved
// 0x408 : Data signal of to_process_count_hbm7
//         bit 31~0 - to_process_count_hbm7[31:0] (Read/Write)
// 0x40c : reserved
// 0x410 : Data signal of to_process_count_hbm8
//         bit 31~0 - to_process_count_hbm8[31:0] (Read/Write)
// 0x414 : reserved
// 0x418 : Data signal of to_process_count_hbm9
//         bit 31~0 - to_process_count_hbm9[31:0] (Read/Write)
// 0x41c : reserved
// 0x420 : Data signal of to_process_count_hbm10
//         bit 31~0 - to_process_count_hbm10[31:0] (Read/Write)
// 0x424 : reserved
// 0x428 : Data signal of to_process_count_hbm11
//         bit 31~0 - to_process_count_hbm11[31:0] (Read/Write)
// 0x42c : reserved
// 0x430 : Data signal of to_process_count_hbm12
//         bit 31~0 - to_process_count_hbm12[31:0] (Read/Write)
// 0x434 : reserved
// 0x438 : Data signal of to_process_count_hbm13
//         bit 31~0 - to_process_count_hbm13[31:0] (Read/Write)
// 0x43c : reserved
// 0x440 : Data signal of to_process_count_hbm14
//         bit 31~0 - to_process_count_hbm14[31:0] (Read/Write)
// 0x444 : reserved
// 0x448 : Data signal of to_process_count_hbm15
//         bit 31~0 - to_process_count_hbm15[31:0] (Read/Write)
// 0x44c : reserved
// 0x450 : Data signal of k
//         bit 31~0 - k[31:0] (Read/Write)
// 0x454 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                       = 11'h000,
    ADDR_GIE                           = 11'h004,
    ADDR_IER                           = 11'h008,
    ADDR_ISR                           = 11'h00c,
    ADDR_V_VALUE_HBM0_DATA_0           = 11'h010,
    ADDR_V_VALUE_HBM0_DATA_1           = 11'h014,
    ADDR_V_VALUE_HBM0_CTRL             = 11'h018,
    ADDR_V_VALUE_HBM1_DATA_0           = 11'h01c,
    ADDR_V_VALUE_HBM1_DATA_1           = 11'h020,
    ADDR_V_VALUE_HBM1_CTRL             = 11'h024,
    ADDR_V_VALUE_HBM2_DATA_0           = 11'h028,
    ADDR_V_VALUE_HBM2_DATA_1           = 11'h02c,
    ADDR_V_VALUE_HBM2_CTRL             = 11'h030,
    ADDR_V_VALUE_HBM3_DATA_0           = 11'h034,
    ADDR_V_VALUE_HBM3_DATA_1           = 11'h038,
    ADDR_V_VALUE_HBM3_CTRL             = 11'h03c,
    ADDR_V_VALUE_HBM4_DATA_0           = 11'h040,
    ADDR_V_VALUE_HBM4_DATA_1           = 11'h044,
    ADDR_V_VALUE_HBM4_CTRL             = 11'h048,
    ADDR_V_VALUE_HBM5_DATA_0           = 11'h04c,
    ADDR_V_VALUE_HBM5_DATA_1           = 11'h050,
    ADDR_V_VALUE_HBM5_CTRL             = 11'h054,
    ADDR_V_VALUE_HBM6_DATA_0           = 11'h058,
    ADDR_V_VALUE_HBM6_DATA_1           = 11'h05c,
    ADDR_V_VALUE_HBM6_CTRL             = 11'h060,
    ADDR_V_VALUE_HBM7_DATA_0           = 11'h064,
    ADDR_V_VALUE_HBM7_DATA_1           = 11'h068,
    ADDR_V_VALUE_HBM7_CTRL             = 11'h06c,
    ADDR_V_VALUE_HBM8_DATA_0           = 11'h070,
    ADDR_V_VALUE_HBM8_DATA_1           = 11'h074,
    ADDR_V_VALUE_HBM8_CTRL             = 11'h078,
    ADDR_V_VALUE_HBM9_DATA_0           = 11'h07c,
    ADDR_V_VALUE_HBM9_DATA_1           = 11'h080,
    ADDR_V_VALUE_HBM9_CTRL             = 11'h084,
    ADDR_V_VALUE_HBM10_DATA_0          = 11'h088,
    ADDR_V_VALUE_HBM10_DATA_1          = 11'h08c,
    ADDR_V_VALUE_HBM10_CTRL            = 11'h090,
    ADDR_V_VALUE_HBM11_DATA_0          = 11'h094,
    ADDR_V_VALUE_HBM11_DATA_1          = 11'h098,
    ADDR_V_VALUE_HBM11_CTRL            = 11'h09c,
    ADDR_V_VALUE_HBM12_DATA_0          = 11'h0a0,
    ADDR_V_VALUE_HBM12_DATA_1          = 11'h0a4,
    ADDR_V_VALUE_HBM12_CTRL            = 11'h0a8,
    ADDR_V_VALUE_HBM13_DATA_0          = 11'h0ac,
    ADDR_V_VALUE_HBM13_DATA_1          = 11'h0b0,
    ADDR_V_VALUE_HBM13_CTRL            = 11'h0b4,
    ADDR_V_VALUE_HBM14_DATA_0          = 11'h0b8,
    ADDR_V_VALUE_HBM14_DATA_1          = 11'h0bc,
    ADDR_V_VALUE_HBM14_CTRL            = 11'h0c0,
    ADDR_V_VALUE_HBM15_DATA_0          = 11'h0c4,
    ADDR_V_VALUE_HBM15_DATA_1          = 11'h0c8,
    ADDR_V_VALUE_HBM15_CTRL            = 11'h0cc,
    ADDR_H_VALUE_HBM0_DATA_0           = 11'h0d0,
    ADDR_H_VALUE_HBM0_DATA_1           = 11'h0d4,
    ADDR_H_VALUE_HBM0_CTRL             = 11'h0d8,
    ADDR_H_VALUE_HBM1_DATA_0           = 11'h0dc,
    ADDR_H_VALUE_HBM1_DATA_1           = 11'h0e0,
    ADDR_H_VALUE_HBM1_CTRL             = 11'h0e4,
    ADDR_H_VALUE_HBM2_DATA_0           = 11'h0e8,
    ADDR_H_VALUE_HBM2_DATA_1           = 11'h0ec,
    ADDR_H_VALUE_HBM2_CTRL             = 11'h0f0,
    ADDR_H_VALUE_HBM3_DATA_0           = 11'h0f4,
    ADDR_H_VALUE_HBM3_DATA_1           = 11'h0f8,
    ADDR_H_VALUE_HBM3_CTRL             = 11'h0fc,
    ADDR_H_VALUE_HBM4_DATA_0           = 11'h100,
    ADDR_H_VALUE_HBM4_DATA_1           = 11'h104,
    ADDR_H_VALUE_HBM4_CTRL             = 11'h108,
    ADDR_H_VALUE_HBM5_DATA_0           = 11'h10c,
    ADDR_H_VALUE_HBM5_DATA_1           = 11'h110,
    ADDR_H_VALUE_HBM5_CTRL             = 11'h114,
    ADDR_H_VALUE_HBM6_DATA_0           = 11'h118,
    ADDR_H_VALUE_HBM6_DATA_1           = 11'h11c,
    ADDR_H_VALUE_HBM6_CTRL             = 11'h120,
    ADDR_H_VALUE_HBM7_DATA_0           = 11'h124,
    ADDR_H_VALUE_HBM7_DATA_1           = 11'h128,
    ADDR_H_VALUE_HBM7_CTRL             = 11'h12c,
    ADDR_H_VALUE_HBM8_DATA_0           = 11'h130,
    ADDR_H_VALUE_HBM8_DATA_1           = 11'h134,
    ADDR_H_VALUE_HBM8_CTRL             = 11'h138,
    ADDR_H_VALUE_HBM9_DATA_0           = 11'h13c,
    ADDR_H_VALUE_HBM9_DATA_1           = 11'h140,
    ADDR_H_VALUE_HBM9_CTRL             = 11'h144,
    ADDR_H_VALUE_HBM10_DATA_0          = 11'h148,
    ADDR_H_VALUE_HBM10_DATA_1          = 11'h14c,
    ADDR_H_VALUE_HBM10_CTRL            = 11'h150,
    ADDR_H_VALUE_HBM11_DATA_0          = 11'h154,
    ADDR_H_VALUE_HBM11_DATA_1          = 11'h158,
    ADDR_H_VALUE_HBM11_CTRL            = 11'h15c,
    ADDR_H_VALUE_HBM12_DATA_0          = 11'h160,
    ADDR_H_VALUE_HBM12_DATA_1          = 11'h164,
    ADDR_H_VALUE_HBM12_CTRL            = 11'h168,
    ADDR_H_VALUE_HBM13_DATA_0          = 11'h16c,
    ADDR_H_VALUE_HBM13_DATA_1          = 11'h170,
    ADDR_H_VALUE_HBM13_CTRL            = 11'h174,
    ADDR_H_VALUE_HBM14_DATA_0          = 11'h178,
    ADDR_H_VALUE_HBM14_DATA_1          = 11'h17c,
    ADDR_H_VALUE_HBM14_CTRL            = 11'h180,
    ADDR_H_VALUE_HBM15_DATA_0          = 11'h184,
    ADDR_H_VALUE_HBM15_DATA_1          = 11'h188,
    ADDR_H_VALUE_HBM15_CTRL            = 11'h18c,
    ADDR_VH_OFFSET_HBM0_DATA_0         = 11'h190,
    ADDR_VH_OFFSET_HBM0_DATA_1         = 11'h194,
    ADDR_VH_OFFSET_HBM0_CTRL           = 11'h198,
    ADDR_VH_OFFSET_HBM1_DATA_0         = 11'h19c,
    ADDR_VH_OFFSET_HBM1_DATA_1         = 11'h1a0,
    ADDR_VH_OFFSET_HBM1_CTRL           = 11'h1a4,
    ADDR_VH_OFFSET_HBM2_DATA_0         = 11'h1a8,
    ADDR_VH_OFFSET_HBM2_DATA_1         = 11'h1ac,
    ADDR_VH_OFFSET_HBM2_CTRL           = 11'h1b0,
    ADDR_VH_OFFSET_HBM3_DATA_0         = 11'h1b4,
    ADDR_VH_OFFSET_HBM3_DATA_1         = 11'h1b8,
    ADDR_VH_OFFSET_HBM3_CTRL           = 11'h1bc,
    ADDR_VH_OFFSET_HBM4_DATA_0         = 11'h1c0,
    ADDR_VH_OFFSET_HBM4_DATA_1         = 11'h1c4,
    ADDR_VH_OFFSET_HBM4_CTRL           = 11'h1c8,
    ADDR_VH_OFFSET_HBM5_DATA_0         = 11'h1cc,
    ADDR_VH_OFFSET_HBM5_DATA_1         = 11'h1d0,
    ADDR_VH_OFFSET_HBM5_CTRL           = 11'h1d4,
    ADDR_VH_OFFSET_HBM6_DATA_0         = 11'h1d8,
    ADDR_VH_OFFSET_HBM6_DATA_1         = 11'h1dc,
    ADDR_VH_OFFSET_HBM6_CTRL           = 11'h1e0,
    ADDR_VH_OFFSET_HBM7_DATA_0         = 11'h1e4,
    ADDR_VH_OFFSET_HBM7_DATA_1         = 11'h1e8,
    ADDR_VH_OFFSET_HBM7_CTRL           = 11'h1ec,
    ADDR_VH_OFFSET_HBM8_DATA_0         = 11'h1f0,
    ADDR_VH_OFFSET_HBM8_DATA_1         = 11'h1f4,
    ADDR_VH_OFFSET_HBM8_CTRL           = 11'h1f8,
    ADDR_VH_OFFSET_HBM9_DATA_0         = 11'h1fc,
    ADDR_VH_OFFSET_HBM9_DATA_1         = 11'h200,
    ADDR_VH_OFFSET_HBM9_CTRL           = 11'h204,
    ADDR_VH_OFFSET_HBM10_DATA_0        = 11'h208,
    ADDR_VH_OFFSET_HBM10_DATA_1        = 11'h20c,
    ADDR_VH_OFFSET_HBM10_CTRL          = 11'h210,
    ADDR_VH_OFFSET_HBM11_DATA_0        = 11'h214,
    ADDR_VH_OFFSET_HBM11_DATA_1        = 11'h218,
    ADDR_VH_OFFSET_HBM11_CTRL          = 11'h21c,
    ADDR_VH_OFFSET_HBM12_DATA_0        = 11'h220,
    ADDR_VH_OFFSET_HBM12_DATA_1        = 11'h224,
    ADDR_VH_OFFSET_HBM12_CTRL          = 11'h228,
    ADDR_VH_OFFSET_HBM13_DATA_0        = 11'h22c,
    ADDR_VH_OFFSET_HBM13_DATA_1        = 11'h230,
    ADDR_VH_OFFSET_HBM13_CTRL          = 11'h234,
    ADDR_VH_OFFSET_HBM14_DATA_0        = 11'h238,
    ADDR_VH_OFFSET_HBM14_DATA_1        = 11'h23c,
    ADDR_VH_OFFSET_HBM14_CTRL          = 11'h240,
    ADDR_VH_OFFSET_HBM15_DATA_0        = 11'h244,
    ADDR_VH_OFFSET_HBM15_DATA_1        = 11'h248,
    ADDR_VH_OFFSET_HBM15_CTRL          = 11'h24c,
    ADDR_VH_INDEX_HBM0_DATA_0          = 11'h250,
    ADDR_VH_INDEX_HBM0_DATA_1          = 11'h254,
    ADDR_VH_INDEX_HBM0_CTRL            = 11'h258,
    ADDR_VH_INDEX_HBM1_DATA_0          = 11'h25c,
    ADDR_VH_INDEX_HBM1_DATA_1          = 11'h260,
    ADDR_VH_INDEX_HBM1_CTRL            = 11'h264,
    ADDR_VH_INDEX_HBM2_DATA_0          = 11'h268,
    ADDR_VH_INDEX_HBM2_DATA_1          = 11'h26c,
    ADDR_VH_INDEX_HBM2_CTRL            = 11'h270,
    ADDR_VH_INDEX_HBM3_DATA_0          = 11'h274,
    ADDR_VH_INDEX_HBM3_DATA_1          = 11'h278,
    ADDR_VH_INDEX_HBM3_CTRL            = 11'h27c,
    ADDR_VH_INDEX_HBM4_DATA_0          = 11'h280,
    ADDR_VH_INDEX_HBM4_DATA_1          = 11'h284,
    ADDR_VH_INDEX_HBM4_CTRL            = 11'h288,
    ADDR_VH_INDEX_HBM5_DATA_0          = 11'h28c,
    ADDR_VH_INDEX_HBM5_DATA_1          = 11'h290,
    ADDR_VH_INDEX_HBM5_CTRL            = 11'h294,
    ADDR_VH_INDEX_HBM6_DATA_0          = 11'h298,
    ADDR_VH_INDEX_HBM6_DATA_1          = 11'h29c,
    ADDR_VH_INDEX_HBM6_CTRL            = 11'h2a0,
    ADDR_VH_INDEX_HBM7_DATA_0          = 11'h2a4,
    ADDR_VH_INDEX_HBM7_DATA_1          = 11'h2a8,
    ADDR_VH_INDEX_HBM7_CTRL            = 11'h2ac,
    ADDR_VH_INDEX_HBM8_DATA_0          = 11'h2b0,
    ADDR_VH_INDEX_HBM8_DATA_1          = 11'h2b4,
    ADDR_VH_INDEX_HBM8_CTRL            = 11'h2b8,
    ADDR_VH_INDEX_HBM9_DATA_0          = 11'h2bc,
    ADDR_VH_INDEX_HBM9_DATA_1          = 11'h2c0,
    ADDR_VH_INDEX_HBM9_CTRL            = 11'h2c4,
    ADDR_VH_INDEX_HBM10_DATA_0         = 11'h2c8,
    ADDR_VH_INDEX_HBM10_DATA_1         = 11'h2cc,
    ADDR_VH_INDEX_HBM10_CTRL           = 11'h2d0,
    ADDR_VH_INDEX_HBM11_DATA_0         = 11'h2d4,
    ADDR_VH_INDEX_HBM11_DATA_1         = 11'h2d8,
    ADDR_VH_INDEX_HBM11_CTRL           = 11'h2dc,
    ADDR_VH_INDEX_HBM12_DATA_0         = 11'h2e0,
    ADDR_VH_INDEX_HBM12_DATA_1         = 11'h2e4,
    ADDR_VH_INDEX_HBM12_CTRL           = 11'h2e8,
    ADDR_VH_INDEX_HBM13_DATA_0         = 11'h2ec,
    ADDR_VH_INDEX_HBM13_DATA_1         = 11'h2f0,
    ADDR_VH_INDEX_HBM13_CTRL           = 11'h2f4,
    ADDR_VH_INDEX_HBM14_DATA_0         = 11'h2f8,
    ADDR_VH_INDEX_HBM14_DATA_1         = 11'h2fc,
    ADDR_VH_INDEX_HBM14_CTRL           = 11'h300,
    ADDR_VH_INDEX_HBM15_DATA_0         = 11'h304,
    ADDR_VH_INDEX_HBM15_DATA_1         = 11'h308,
    ADDR_VH_INDEX_HBM15_CTRL           = 11'h30c,
    ADDR_TO_PROCESS_INDEX_HBM0_DATA_0  = 11'h310,
    ADDR_TO_PROCESS_INDEX_HBM0_DATA_1  = 11'h314,
    ADDR_TO_PROCESS_INDEX_HBM0_CTRL    = 11'h318,
    ADDR_TO_PROCESS_INDEX_HBM1_DATA_0  = 11'h31c,
    ADDR_TO_PROCESS_INDEX_HBM1_DATA_1  = 11'h320,
    ADDR_TO_PROCESS_INDEX_HBM1_CTRL    = 11'h324,
    ADDR_TO_PROCESS_INDEX_HBM2_DATA_0  = 11'h328,
    ADDR_TO_PROCESS_INDEX_HBM2_DATA_1  = 11'h32c,
    ADDR_TO_PROCESS_INDEX_HBM2_CTRL    = 11'h330,
    ADDR_TO_PROCESS_INDEX_HBM3_DATA_0  = 11'h334,
    ADDR_TO_PROCESS_INDEX_HBM3_DATA_1  = 11'h338,
    ADDR_TO_PROCESS_INDEX_HBM3_CTRL    = 11'h33c,
    ADDR_TO_PROCESS_INDEX_HBM4_DATA_0  = 11'h340,
    ADDR_TO_PROCESS_INDEX_HBM4_DATA_1  = 11'h344,
    ADDR_TO_PROCESS_INDEX_HBM4_CTRL    = 11'h348,
    ADDR_TO_PROCESS_INDEX_HBM5_DATA_0  = 11'h34c,
    ADDR_TO_PROCESS_INDEX_HBM5_DATA_1  = 11'h350,
    ADDR_TO_PROCESS_INDEX_HBM5_CTRL    = 11'h354,
    ADDR_TO_PROCESS_INDEX_HBM6_DATA_0  = 11'h358,
    ADDR_TO_PROCESS_INDEX_HBM6_DATA_1  = 11'h35c,
    ADDR_TO_PROCESS_INDEX_HBM6_CTRL    = 11'h360,
    ADDR_TO_PROCESS_INDEX_HBM7_DATA_0  = 11'h364,
    ADDR_TO_PROCESS_INDEX_HBM7_DATA_1  = 11'h368,
    ADDR_TO_PROCESS_INDEX_HBM7_CTRL    = 11'h36c,
    ADDR_TO_PROCESS_INDEX_HBM8_DATA_0  = 11'h370,
    ADDR_TO_PROCESS_INDEX_HBM8_DATA_1  = 11'h374,
    ADDR_TO_PROCESS_INDEX_HBM8_CTRL    = 11'h378,
    ADDR_TO_PROCESS_INDEX_HBM9_DATA_0  = 11'h37c,
    ADDR_TO_PROCESS_INDEX_HBM9_DATA_1  = 11'h380,
    ADDR_TO_PROCESS_INDEX_HBM9_CTRL    = 11'h384,
    ADDR_TO_PROCESS_INDEX_HBM10_DATA_0 = 11'h388,
    ADDR_TO_PROCESS_INDEX_HBM10_DATA_1 = 11'h38c,
    ADDR_TO_PROCESS_INDEX_HBM10_CTRL   = 11'h390,
    ADDR_TO_PROCESS_INDEX_HBM11_DATA_0 = 11'h394,
    ADDR_TO_PROCESS_INDEX_HBM11_DATA_1 = 11'h398,
    ADDR_TO_PROCESS_INDEX_HBM11_CTRL   = 11'h39c,
    ADDR_TO_PROCESS_INDEX_HBM12_DATA_0 = 11'h3a0,
    ADDR_TO_PROCESS_INDEX_HBM12_DATA_1 = 11'h3a4,
    ADDR_TO_PROCESS_INDEX_HBM12_CTRL   = 11'h3a8,
    ADDR_TO_PROCESS_INDEX_HBM13_DATA_0 = 11'h3ac,
    ADDR_TO_PROCESS_INDEX_HBM13_DATA_1 = 11'h3b0,
    ADDR_TO_PROCESS_INDEX_HBM13_CTRL   = 11'h3b4,
    ADDR_TO_PROCESS_INDEX_HBM14_DATA_0 = 11'h3b8,
    ADDR_TO_PROCESS_INDEX_HBM14_DATA_1 = 11'h3bc,
    ADDR_TO_PROCESS_INDEX_HBM14_CTRL   = 11'h3c0,
    ADDR_TO_PROCESS_INDEX_HBM15_DATA_0 = 11'h3c4,
    ADDR_TO_PROCESS_INDEX_HBM15_DATA_1 = 11'h3c8,
    ADDR_TO_PROCESS_INDEX_HBM15_CTRL   = 11'h3cc,
    ADDR_TO_PROCESS_COUNT_HBM0_DATA_0  = 11'h3d0,
    ADDR_TO_PROCESS_COUNT_HBM0_CTRL    = 11'h3d4,
    ADDR_TO_PROCESS_COUNT_HBM1_DATA_0  = 11'h3d8,
    ADDR_TO_PROCESS_COUNT_HBM1_CTRL    = 11'h3dc,
    ADDR_TO_PROCESS_COUNT_HBM2_DATA_0  = 11'h3e0,
    ADDR_TO_PROCESS_COUNT_HBM2_CTRL    = 11'h3e4,
    ADDR_TO_PROCESS_COUNT_HBM3_DATA_0  = 11'h3e8,
    ADDR_TO_PROCESS_COUNT_HBM3_CTRL    = 11'h3ec,
    ADDR_TO_PROCESS_COUNT_HBM4_DATA_0  = 11'h3f0,
    ADDR_TO_PROCESS_COUNT_HBM4_CTRL    = 11'h3f4,
    ADDR_TO_PROCESS_COUNT_HBM5_DATA_0  = 11'h3f8,
    ADDR_TO_PROCESS_COUNT_HBM5_CTRL    = 11'h3fc,
    ADDR_TO_PROCESS_COUNT_HBM6_DATA_0  = 11'h400,
    ADDR_TO_PROCESS_COUNT_HBM6_CTRL    = 11'h404,
    ADDR_TO_PROCESS_COUNT_HBM7_DATA_0  = 11'h408,
    ADDR_TO_PROCESS_COUNT_HBM7_CTRL    = 11'h40c,
    ADDR_TO_PROCESS_COUNT_HBM8_DATA_0  = 11'h410,
    ADDR_TO_PROCESS_COUNT_HBM8_CTRL    = 11'h414,
    ADDR_TO_PROCESS_COUNT_HBM9_DATA_0  = 11'h418,
    ADDR_TO_PROCESS_COUNT_HBM9_CTRL    = 11'h41c,
    ADDR_TO_PROCESS_COUNT_HBM10_DATA_0 = 11'h420,
    ADDR_TO_PROCESS_COUNT_HBM10_CTRL   = 11'h424,
    ADDR_TO_PROCESS_COUNT_HBM11_DATA_0 = 11'h428,
    ADDR_TO_PROCESS_COUNT_HBM11_CTRL   = 11'h42c,
    ADDR_TO_PROCESS_COUNT_HBM12_DATA_0 = 11'h430,
    ADDR_TO_PROCESS_COUNT_HBM12_CTRL   = 11'h434,
    ADDR_TO_PROCESS_COUNT_HBM13_DATA_0 = 11'h438,
    ADDR_TO_PROCESS_COUNT_HBM13_CTRL   = 11'h43c,
    ADDR_TO_PROCESS_COUNT_HBM14_DATA_0 = 11'h440,
    ADDR_TO_PROCESS_COUNT_HBM14_CTRL   = 11'h444,
    ADDR_TO_PROCESS_COUNT_HBM15_DATA_0 = 11'h448,
    ADDR_TO_PROCESS_COUNT_HBM15_CTRL   = 11'h44c,
    ADDR_K_DATA_0                      = 11'h450,
    ADDR_K_CTRL                        = 11'h454,
    WRIDLE                             = 2'd0,
    WRDATA                             = 2'd1,
    WRRESP                             = 2'd2,
    WRRESET                            = 2'd3,
    RDIDLE                             = 2'd0,
    RDDATA                             = 2'd1,
    RDRESET                            = 2'd2,
    ADDR_BITS                = 11;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_event_start = 1'b0;
    reg                           int_ap_idle;
    reg                           int_ap_continue;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    reg                           auto_restart_done = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [5:0]                    int_ier = 6'b0;
    reg  [5:0]                    int_isr = 6'b0;
    reg  [63:0]                   int_V_value_hbm0 = 'b0;
    reg  [63:0]                   int_V_value_hbm1 = 'b0;
    reg  [63:0]                   int_V_value_hbm2 = 'b0;
    reg  [63:0]                   int_V_value_hbm3 = 'b0;
    reg  [63:0]                   int_V_value_hbm4 = 'b0;
    reg  [63:0]                   int_V_value_hbm5 = 'b0;
    reg  [63:0]                   int_V_value_hbm6 = 'b0;
    reg  [63:0]                   int_V_value_hbm7 = 'b0;
    reg  [63:0]                   int_V_value_hbm8 = 'b0;
    reg  [63:0]                   int_V_value_hbm9 = 'b0;
    reg  [63:0]                   int_V_value_hbm10 = 'b0;
    reg  [63:0]                   int_V_value_hbm11 = 'b0;
    reg  [63:0]                   int_V_value_hbm12 = 'b0;
    reg  [63:0]                   int_V_value_hbm13 = 'b0;
    reg  [63:0]                   int_V_value_hbm14 = 'b0;
    reg  [63:0]                   int_V_value_hbm15 = 'b0;
    reg  [63:0]                   int_H_value_hbm0 = 'b0;
    reg  [63:0]                   int_H_value_hbm1 = 'b0;
    reg  [63:0]                   int_H_value_hbm2 = 'b0;
    reg  [63:0]                   int_H_value_hbm3 = 'b0;
    reg  [63:0]                   int_H_value_hbm4 = 'b0;
    reg  [63:0]                   int_H_value_hbm5 = 'b0;
    reg  [63:0]                   int_H_value_hbm6 = 'b0;
    reg  [63:0]                   int_H_value_hbm7 = 'b0;
    reg  [63:0]                   int_H_value_hbm8 = 'b0;
    reg  [63:0]                   int_H_value_hbm9 = 'b0;
    reg  [63:0]                   int_H_value_hbm10 = 'b0;
    reg  [63:0]                   int_H_value_hbm11 = 'b0;
    reg  [63:0]                   int_H_value_hbm12 = 'b0;
    reg  [63:0]                   int_H_value_hbm13 = 'b0;
    reg  [63:0]                   int_H_value_hbm14 = 'b0;
    reg  [63:0]                   int_H_value_hbm15 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm0 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm1 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm2 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm3 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm4 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm5 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm6 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm7 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm8 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm9 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm10 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm11 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm12 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm13 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm14 = 'b0;
    reg  [63:0]                   int_vh_offset_hbm15 = 'b0;
    reg  [63:0]                   int_vh_index_hbm0 = 'b0;
    reg  [63:0]                   int_vh_index_hbm1 = 'b0;
    reg  [63:0]                   int_vh_index_hbm2 = 'b0;
    reg  [63:0]                   int_vh_index_hbm3 = 'b0;
    reg  [63:0]                   int_vh_index_hbm4 = 'b0;
    reg  [63:0]                   int_vh_index_hbm5 = 'b0;
    reg  [63:0]                   int_vh_index_hbm6 = 'b0;
    reg  [63:0]                   int_vh_index_hbm7 = 'b0;
    reg  [63:0]                   int_vh_index_hbm8 = 'b0;
    reg  [63:0]                   int_vh_index_hbm9 = 'b0;
    reg  [63:0]                   int_vh_index_hbm10 = 'b0;
    reg  [63:0]                   int_vh_index_hbm11 = 'b0;
    reg  [63:0]                   int_vh_index_hbm12 = 'b0;
    reg  [63:0]                   int_vh_index_hbm13 = 'b0;
    reg  [63:0]                   int_vh_index_hbm14 = 'b0;
    reg  [63:0]                   int_vh_index_hbm15 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm0 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm1 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm2 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm3 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm4 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm5 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm6 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm7 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm8 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm9 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm10 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm11 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm12 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm13 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm14 = 'b0;
    reg  [63:0]                   int_to_process_index_hbm15 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm0 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm1 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm2 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm3 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm4 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm5 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm6 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm7 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm8 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm9 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm10 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm11 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm12 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm13 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm14 = 'b0;
    reg  [31:0]                   int_to_process_count_hbm15 = 'b0;
    reg  [31:0]                   int_k = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[4] <= int_ap_continue;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_V_VALUE_HBM0_DATA_0: begin
                    rdata <= int_V_value_hbm0[31:0];
                end
                ADDR_V_VALUE_HBM0_DATA_1: begin
                    rdata <= int_V_value_hbm0[63:32];
                end
                ADDR_V_VALUE_HBM1_DATA_0: begin
                    rdata <= int_V_value_hbm1[31:0];
                end
                ADDR_V_VALUE_HBM1_DATA_1: begin
                    rdata <= int_V_value_hbm1[63:32];
                end
                ADDR_V_VALUE_HBM2_DATA_0: begin
                    rdata <= int_V_value_hbm2[31:0];
                end
                ADDR_V_VALUE_HBM2_DATA_1: begin
                    rdata <= int_V_value_hbm2[63:32];
                end
                ADDR_V_VALUE_HBM3_DATA_0: begin
                    rdata <= int_V_value_hbm3[31:0];
                end
                ADDR_V_VALUE_HBM3_DATA_1: begin
                    rdata <= int_V_value_hbm3[63:32];
                end
                ADDR_V_VALUE_HBM4_DATA_0: begin
                    rdata <= int_V_value_hbm4[31:0];
                end
                ADDR_V_VALUE_HBM4_DATA_1: begin
                    rdata <= int_V_value_hbm4[63:32];
                end
                ADDR_V_VALUE_HBM5_DATA_0: begin
                    rdata <= int_V_value_hbm5[31:0];
                end
                ADDR_V_VALUE_HBM5_DATA_1: begin
                    rdata <= int_V_value_hbm5[63:32];
                end
                ADDR_V_VALUE_HBM6_DATA_0: begin
                    rdata <= int_V_value_hbm6[31:0];
                end
                ADDR_V_VALUE_HBM6_DATA_1: begin
                    rdata <= int_V_value_hbm6[63:32];
                end
                ADDR_V_VALUE_HBM7_DATA_0: begin
                    rdata <= int_V_value_hbm7[31:0];
                end
                ADDR_V_VALUE_HBM7_DATA_1: begin
                    rdata <= int_V_value_hbm7[63:32];
                end
                ADDR_V_VALUE_HBM8_DATA_0: begin
                    rdata <= int_V_value_hbm8[31:0];
                end
                ADDR_V_VALUE_HBM8_DATA_1: begin
                    rdata <= int_V_value_hbm8[63:32];
                end
                ADDR_V_VALUE_HBM9_DATA_0: begin
                    rdata <= int_V_value_hbm9[31:0];
                end
                ADDR_V_VALUE_HBM9_DATA_1: begin
                    rdata <= int_V_value_hbm9[63:32];
                end
                ADDR_V_VALUE_HBM10_DATA_0: begin
                    rdata <= int_V_value_hbm10[31:0];
                end
                ADDR_V_VALUE_HBM10_DATA_1: begin
                    rdata <= int_V_value_hbm10[63:32];
                end
                ADDR_V_VALUE_HBM11_DATA_0: begin
                    rdata <= int_V_value_hbm11[31:0];
                end
                ADDR_V_VALUE_HBM11_DATA_1: begin
                    rdata <= int_V_value_hbm11[63:32];
                end
                ADDR_V_VALUE_HBM12_DATA_0: begin
                    rdata <= int_V_value_hbm12[31:0];
                end
                ADDR_V_VALUE_HBM12_DATA_1: begin
                    rdata <= int_V_value_hbm12[63:32];
                end
                ADDR_V_VALUE_HBM13_DATA_0: begin
                    rdata <= int_V_value_hbm13[31:0];
                end
                ADDR_V_VALUE_HBM13_DATA_1: begin
                    rdata <= int_V_value_hbm13[63:32];
                end
                ADDR_V_VALUE_HBM14_DATA_0: begin
                    rdata <= int_V_value_hbm14[31:0];
                end
                ADDR_V_VALUE_HBM14_DATA_1: begin
                    rdata <= int_V_value_hbm14[63:32];
                end
                ADDR_V_VALUE_HBM15_DATA_0: begin
                    rdata <= int_V_value_hbm15[31:0];
                end
                ADDR_V_VALUE_HBM15_DATA_1: begin
                    rdata <= int_V_value_hbm15[63:32];
                end
                ADDR_H_VALUE_HBM0_DATA_0: begin
                    rdata <= int_H_value_hbm0[31:0];
                end
                ADDR_H_VALUE_HBM0_DATA_1: begin
                    rdata <= int_H_value_hbm0[63:32];
                end
                ADDR_H_VALUE_HBM1_DATA_0: begin
                    rdata <= int_H_value_hbm1[31:0];
                end
                ADDR_H_VALUE_HBM1_DATA_1: begin
                    rdata <= int_H_value_hbm1[63:32];
                end
                ADDR_H_VALUE_HBM2_DATA_0: begin
                    rdata <= int_H_value_hbm2[31:0];
                end
                ADDR_H_VALUE_HBM2_DATA_1: begin
                    rdata <= int_H_value_hbm2[63:32];
                end
                ADDR_H_VALUE_HBM3_DATA_0: begin
                    rdata <= int_H_value_hbm3[31:0];
                end
                ADDR_H_VALUE_HBM3_DATA_1: begin
                    rdata <= int_H_value_hbm3[63:32];
                end
                ADDR_H_VALUE_HBM4_DATA_0: begin
                    rdata <= int_H_value_hbm4[31:0];
                end
                ADDR_H_VALUE_HBM4_DATA_1: begin
                    rdata <= int_H_value_hbm4[63:32];
                end
                ADDR_H_VALUE_HBM5_DATA_0: begin
                    rdata <= int_H_value_hbm5[31:0];
                end
                ADDR_H_VALUE_HBM5_DATA_1: begin
                    rdata <= int_H_value_hbm5[63:32];
                end
                ADDR_H_VALUE_HBM6_DATA_0: begin
                    rdata <= int_H_value_hbm6[31:0];
                end
                ADDR_H_VALUE_HBM6_DATA_1: begin
                    rdata <= int_H_value_hbm6[63:32];
                end
                ADDR_H_VALUE_HBM7_DATA_0: begin
                    rdata <= int_H_value_hbm7[31:0];
                end
                ADDR_H_VALUE_HBM7_DATA_1: begin
                    rdata <= int_H_value_hbm7[63:32];
                end
                ADDR_H_VALUE_HBM8_DATA_0: begin
                    rdata <= int_H_value_hbm8[31:0];
                end
                ADDR_H_VALUE_HBM8_DATA_1: begin
                    rdata <= int_H_value_hbm8[63:32];
                end
                ADDR_H_VALUE_HBM9_DATA_0: begin
                    rdata <= int_H_value_hbm9[31:0];
                end
                ADDR_H_VALUE_HBM9_DATA_1: begin
                    rdata <= int_H_value_hbm9[63:32];
                end
                ADDR_H_VALUE_HBM10_DATA_0: begin
                    rdata <= int_H_value_hbm10[31:0];
                end
                ADDR_H_VALUE_HBM10_DATA_1: begin
                    rdata <= int_H_value_hbm10[63:32];
                end
                ADDR_H_VALUE_HBM11_DATA_0: begin
                    rdata <= int_H_value_hbm11[31:0];
                end
                ADDR_H_VALUE_HBM11_DATA_1: begin
                    rdata <= int_H_value_hbm11[63:32];
                end
                ADDR_H_VALUE_HBM12_DATA_0: begin
                    rdata <= int_H_value_hbm12[31:0];
                end
                ADDR_H_VALUE_HBM12_DATA_1: begin
                    rdata <= int_H_value_hbm12[63:32];
                end
                ADDR_H_VALUE_HBM13_DATA_0: begin
                    rdata <= int_H_value_hbm13[31:0];
                end
                ADDR_H_VALUE_HBM13_DATA_1: begin
                    rdata <= int_H_value_hbm13[63:32];
                end
                ADDR_H_VALUE_HBM14_DATA_0: begin
                    rdata <= int_H_value_hbm14[31:0];
                end
                ADDR_H_VALUE_HBM14_DATA_1: begin
                    rdata <= int_H_value_hbm14[63:32];
                end
                ADDR_H_VALUE_HBM15_DATA_0: begin
                    rdata <= int_H_value_hbm15[31:0];
                end
                ADDR_H_VALUE_HBM15_DATA_1: begin
                    rdata <= int_H_value_hbm15[63:32];
                end
                ADDR_VH_OFFSET_HBM0_DATA_0: begin
                    rdata <= int_vh_offset_hbm0[31:0];
                end
                ADDR_VH_OFFSET_HBM0_DATA_1: begin
                    rdata <= int_vh_offset_hbm0[63:32];
                end
                ADDR_VH_OFFSET_HBM1_DATA_0: begin
                    rdata <= int_vh_offset_hbm1[31:0];
                end
                ADDR_VH_OFFSET_HBM1_DATA_1: begin
                    rdata <= int_vh_offset_hbm1[63:32];
                end
                ADDR_VH_OFFSET_HBM2_DATA_0: begin
                    rdata <= int_vh_offset_hbm2[31:0];
                end
                ADDR_VH_OFFSET_HBM2_DATA_1: begin
                    rdata <= int_vh_offset_hbm2[63:32];
                end
                ADDR_VH_OFFSET_HBM3_DATA_0: begin
                    rdata <= int_vh_offset_hbm3[31:0];
                end
                ADDR_VH_OFFSET_HBM3_DATA_1: begin
                    rdata <= int_vh_offset_hbm3[63:32];
                end
                ADDR_VH_OFFSET_HBM4_DATA_0: begin
                    rdata <= int_vh_offset_hbm4[31:0];
                end
                ADDR_VH_OFFSET_HBM4_DATA_1: begin
                    rdata <= int_vh_offset_hbm4[63:32];
                end
                ADDR_VH_OFFSET_HBM5_DATA_0: begin
                    rdata <= int_vh_offset_hbm5[31:0];
                end
                ADDR_VH_OFFSET_HBM5_DATA_1: begin
                    rdata <= int_vh_offset_hbm5[63:32];
                end
                ADDR_VH_OFFSET_HBM6_DATA_0: begin
                    rdata <= int_vh_offset_hbm6[31:0];
                end
                ADDR_VH_OFFSET_HBM6_DATA_1: begin
                    rdata <= int_vh_offset_hbm6[63:32];
                end
                ADDR_VH_OFFSET_HBM7_DATA_0: begin
                    rdata <= int_vh_offset_hbm7[31:0];
                end
                ADDR_VH_OFFSET_HBM7_DATA_1: begin
                    rdata <= int_vh_offset_hbm7[63:32];
                end
                ADDR_VH_OFFSET_HBM8_DATA_0: begin
                    rdata <= int_vh_offset_hbm8[31:0];
                end
                ADDR_VH_OFFSET_HBM8_DATA_1: begin
                    rdata <= int_vh_offset_hbm8[63:32];
                end
                ADDR_VH_OFFSET_HBM9_DATA_0: begin
                    rdata <= int_vh_offset_hbm9[31:0];
                end
                ADDR_VH_OFFSET_HBM9_DATA_1: begin
                    rdata <= int_vh_offset_hbm9[63:32];
                end
                ADDR_VH_OFFSET_HBM10_DATA_0: begin
                    rdata <= int_vh_offset_hbm10[31:0];
                end
                ADDR_VH_OFFSET_HBM10_DATA_1: begin
                    rdata <= int_vh_offset_hbm10[63:32];
                end
                ADDR_VH_OFFSET_HBM11_DATA_0: begin
                    rdata <= int_vh_offset_hbm11[31:0];
                end
                ADDR_VH_OFFSET_HBM11_DATA_1: begin
                    rdata <= int_vh_offset_hbm11[63:32];
                end
                ADDR_VH_OFFSET_HBM12_DATA_0: begin
                    rdata <= int_vh_offset_hbm12[31:0];
                end
                ADDR_VH_OFFSET_HBM12_DATA_1: begin
                    rdata <= int_vh_offset_hbm12[63:32];
                end
                ADDR_VH_OFFSET_HBM13_DATA_0: begin
                    rdata <= int_vh_offset_hbm13[31:0];
                end
                ADDR_VH_OFFSET_HBM13_DATA_1: begin
                    rdata <= int_vh_offset_hbm13[63:32];
                end
                ADDR_VH_OFFSET_HBM14_DATA_0: begin
                    rdata <= int_vh_offset_hbm14[31:0];
                end
                ADDR_VH_OFFSET_HBM14_DATA_1: begin
                    rdata <= int_vh_offset_hbm14[63:32];
                end
                ADDR_VH_OFFSET_HBM15_DATA_0: begin
                    rdata <= int_vh_offset_hbm15[31:0];
                end
                ADDR_VH_OFFSET_HBM15_DATA_1: begin
                    rdata <= int_vh_offset_hbm15[63:32];
                end
                ADDR_VH_INDEX_HBM0_DATA_0: begin
                    rdata <= int_vh_index_hbm0[31:0];
                end
                ADDR_VH_INDEX_HBM0_DATA_1: begin
                    rdata <= int_vh_index_hbm0[63:32];
                end
                ADDR_VH_INDEX_HBM1_DATA_0: begin
                    rdata <= int_vh_index_hbm1[31:0];
                end
                ADDR_VH_INDEX_HBM1_DATA_1: begin
                    rdata <= int_vh_index_hbm1[63:32];
                end
                ADDR_VH_INDEX_HBM2_DATA_0: begin
                    rdata <= int_vh_index_hbm2[31:0];
                end
                ADDR_VH_INDEX_HBM2_DATA_1: begin
                    rdata <= int_vh_index_hbm2[63:32];
                end
                ADDR_VH_INDEX_HBM3_DATA_0: begin
                    rdata <= int_vh_index_hbm3[31:0];
                end
                ADDR_VH_INDEX_HBM3_DATA_1: begin
                    rdata <= int_vh_index_hbm3[63:32];
                end
                ADDR_VH_INDEX_HBM4_DATA_0: begin
                    rdata <= int_vh_index_hbm4[31:0];
                end
                ADDR_VH_INDEX_HBM4_DATA_1: begin
                    rdata <= int_vh_index_hbm4[63:32];
                end
                ADDR_VH_INDEX_HBM5_DATA_0: begin
                    rdata <= int_vh_index_hbm5[31:0];
                end
                ADDR_VH_INDEX_HBM5_DATA_1: begin
                    rdata <= int_vh_index_hbm5[63:32];
                end
                ADDR_VH_INDEX_HBM6_DATA_0: begin
                    rdata <= int_vh_index_hbm6[31:0];
                end
                ADDR_VH_INDEX_HBM6_DATA_1: begin
                    rdata <= int_vh_index_hbm6[63:32];
                end
                ADDR_VH_INDEX_HBM7_DATA_0: begin
                    rdata <= int_vh_index_hbm7[31:0];
                end
                ADDR_VH_INDEX_HBM7_DATA_1: begin
                    rdata <= int_vh_index_hbm7[63:32];
                end
                ADDR_VH_INDEX_HBM8_DATA_0: begin
                    rdata <= int_vh_index_hbm8[31:0];
                end
                ADDR_VH_INDEX_HBM8_DATA_1: begin
                    rdata <= int_vh_index_hbm8[63:32];
                end
                ADDR_VH_INDEX_HBM9_DATA_0: begin
                    rdata <= int_vh_index_hbm9[31:0];
                end
                ADDR_VH_INDEX_HBM9_DATA_1: begin
                    rdata <= int_vh_index_hbm9[63:32];
                end
                ADDR_VH_INDEX_HBM10_DATA_0: begin
                    rdata <= int_vh_index_hbm10[31:0];
                end
                ADDR_VH_INDEX_HBM10_DATA_1: begin
                    rdata <= int_vh_index_hbm10[63:32];
                end
                ADDR_VH_INDEX_HBM11_DATA_0: begin
                    rdata <= int_vh_index_hbm11[31:0];
                end
                ADDR_VH_INDEX_HBM11_DATA_1: begin
                    rdata <= int_vh_index_hbm11[63:32];
                end
                ADDR_VH_INDEX_HBM12_DATA_0: begin
                    rdata <= int_vh_index_hbm12[31:0];
                end
                ADDR_VH_INDEX_HBM12_DATA_1: begin
                    rdata <= int_vh_index_hbm12[63:32];
                end
                ADDR_VH_INDEX_HBM13_DATA_0: begin
                    rdata <= int_vh_index_hbm13[31:0];
                end
                ADDR_VH_INDEX_HBM13_DATA_1: begin
                    rdata <= int_vh_index_hbm13[63:32];
                end
                ADDR_VH_INDEX_HBM14_DATA_0: begin
                    rdata <= int_vh_index_hbm14[31:0];
                end
                ADDR_VH_INDEX_HBM14_DATA_1: begin
                    rdata <= int_vh_index_hbm14[63:32];
                end
                ADDR_VH_INDEX_HBM15_DATA_0: begin
                    rdata <= int_vh_index_hbm15[31:0];
                end
                ADDR_VH_INDEX_HBM15_DATA_1: begin
                    rdata <= int_vh_index_hbm15[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM0_DATA_0: begin
                    rdata <= int_to_process_index_hbm0[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM0_DATA_1: begin
                    rdata <= int_to_process_index_hbm0[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM1_DATA_0: begin
                    rdata <= int_to_process_index_hbm1[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM1_DATA_1: begin
                    rdata <= int_to_process_index_hbm1[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM2_DATA_0: begin
                    rdata <= int_to_process_index_hbm2[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM2_DATA_1: begin
                    rdata <= int_to_process_index_hbm2[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM3_DATA_0: begin
                    rdata <= int_to_process_index_hbm3[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM3_DATA_1: begin
                    rdata <= int_to_process_index_hbm3[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM4_DATA_0: begin
                    rdata <= int_to_process_index_hbm4[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM4_DATA_1: begin
                    rdata <= int_to_process_index_hbm4[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM5_DATA_0: begin
                    rdata <= int_to_process_index_hbm5[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM5_DATA_1: begin
                    rdata <= int_to_process_index_hbm5[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM6_DATA_0: begin
                    rdata <= int_to_process_index_hbm6[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM6_DATA_1: begin
                    rdata <= int_to_process_index_hbm6[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM7_DATA_0: begin
                    rdata <= int_to_process_index_hbm7[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM7_DATA_1: begin
                    rdata <= int_to_process_index_hbm7[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM8_DATA_0: begin
                    rdata <= int_to_process_index_hbm8[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM8_DATA_1: begin
                    rdata <= int_to_process_index_hbm8[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM9_DATA_0: begin
                    rdata <= int_to_process_index_hbm9[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM9_DATA_1: begin
                    rdata <= int_to_process_index_hbm9[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM10_DATA_0: begin
                    rdata <= int_to_process_index_hbm10[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM10_DATA_1: begin
                    rdata <= int_to_process_index_hbm10[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM11_DATA_0: begin
                    rdata <= int_to_process_index_hbm11[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM11_DATA_1: begin
                    rdata <= int_to_process_index_hbm11[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM12_DATA_0: begin
                    rdata <= int_to_process_index_hbm12[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM12_DATA_1: begin
                    rdata <= int_to_process_index_hbm12[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM13_DATA_0: begin
                    rdata <= int_to_process_index_hbm13[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM13_DATA_1: begin
                    rdata <= int_to_process_index_hbm13[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM14_DATA_0: begin
                    rdata <= int_to_process_index_hbm14[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM14_DATA_1: begin
                    rdata <= int_to_process_index_hbm14[63:32];
                end
                ADDR_TO_PROCESS_INDEX_HBM15_DATA_0: begin
                    rdata <= int_to_process_index_hbm15[31:0];
                end
                ADDR_TO_PROCESS_INDEX_HBM15_DATA_1: begin
                    rdata <= int_to_process_index_hbm15[63:32];
                end
                ADDR_TO_PROCESS_COUNT_HBM0_DATA_0: begin
                    rdata <= int_to_process_count_hbm0[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM1_DATA_0: begin
                    rdata <= int_to_process_count_hbm1[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM2_DATA_0: begin
                    rdata <= int_to_process_count_hbm2[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM3_DATA_0: begin
                    rdata <= int_to_process_count_hbm3[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM4_DATA_0: begin
                    rdata <= int_to_process_count_hbm4[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM5_DATA_0: begin
                    rdata <= int_to_process_count_hbm5[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM6_DATA_0: begin
                    rdata <= int_to_process_count_hbm6[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM7_DATA_0: begin
                    rdata <= int_to_process_count_hbm7[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM8_DATA_0: begin
                    rdata <= int_to_process_count_hbm8[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM9_DATA_0: begin
                    rdata <= int_to_process_count_hbm9[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM10_DATA_0: begin
                    rdata <= int_to_process_count_hbm10[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM11_DATA_0: begin
                    rdata <= int_to_process_count_hbm11[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM12_DATA_0: begin
                    rdata <= int_to_process_count_hbm12[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM13_DATA_0: begin
                    rdata <= int_to_process_count_hbm13[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM14_DATA_0: begin
                    rdata <= int_to_process_count_hbm14[31:0];
                end
                ADDR_TO_PROCESS_COUNT_HBM15_DATA_0: begin
                    rdata <= int_to_process_count_hbm15[31:0];
                end
                ADDR_K_DATA_0: begin
                    rdata <= int_k[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt              = int_gie & (|int_isr);
assign event_start            = int_event_start;
assign ap_start               = int_ap_start;
assign task_ap_done           = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready          = ap_ready && !int_auto_restart;
assign ap_continue            = int_ap_continue || auto_restart_status;
assign V_value_hbm0           = int_V_value_hbm0;
assign V_value_hbm1           = int_V_value_hbm1;
assign V_value_hbm2           = int_V_value_hbm2;
assign V_value_hbm3           = int_V_value_hbm3;
assign V_value_hbm4           = int_V_value_hbm4;
assign V_value_hbm5           = int_V_value_hbm5;
assign V_value_hbm6           = int_V_value_hbm6;
assign V_value_hbm7           = int_V_value_hbm7;
assign V_value_hbm8           = int_V_value_hbm8;
assign V_value_hbm9           = int_V_value_hbm9;
assign V_value_hbm10          = int_V_value_hbm10;
assign V_value_hbm11          = int_V_value_hbm11;
assign V_value_hbm12          = int_V_value_hbm12;
assign V_value_hbm13          = int_V_value_hbm13;
assign V_value_hbm14          = int_V_value_hbm14;
assign V_value_hbm15          = int_V_value_hbm15;
assign H_value_hbm0           = int_H_value_hbm0;
assign H_value_hbm1           = int_H_value_hbm1;
assign H_value_hbm2           = int_H_value_hbm2;
assign H_value_hbm3           = int_H_value_hbm3;
assign H_value_hbm4           = int_H_value_hbm4;
assign H_value_hbm5           = int_H_value_hbm5;
assign H_value_hbm6           = int_H_value_hbm6;
assign H_value_hbm7           = int_H_value_hbm7;
assign H_value_hbm8           = int_H_value_hbm8;
assign H_value_hbm9           = int_H_value_hbm9;
assign H_value_hbm10          = int_H_value_hbm10;
assign H_value_hbm11          = int_H_value_hbm11;
assign H_value_hbm12          = int_H_value_hbm12;
assign H_value_hbm13          = int_H_value_hbm13;
assign H_value_hbm14          = int_H_value_hbm14;
assign H_value_hbm15          = int_H_value_hbm15;
assign vh_offset_hbm0         = int_vh_offset_hbm0;
assign vh_offset_hbm1         = int_vh_offset_hbm1;
assign vh_offset_hbm2         = int_vh_offset_hbm2;
assign vh_offset_hbm3         = int_vh_offset_hbm3;
assign vh_offset_hbm4         = int_vh_offset_hbm4;
assign vh_offset_hbm5         = int_vh_offset_hbm5;
assign vh_offset_hbm6         = int_vh_offset_hbm6;
assign vh_offset_hbm7         = int_vh_offset_hbm7;
assign vh_offset_hbm8         = int_vh_offset_hbm8;
assign vh_offset_hbm9         = int_vh_offset_hbm9;
assign vh_offset_hbm10        = int_vh_offset_hbm10;
assign vh_offset_hbm11        = int_vh_offset_hbm11;
assign vh_offset_hbm12        = int_vh_offset_hbm12;
assign vh_offset_hbm13        = int_vh_offset_hbm13;
assign vh_offset_hbm14        = int_vh_offset_hbm14;
assign vh_offset_hbm15        = int_vh_offset_hbm15;
assign vh_index_hbm0          = int_vh_index_hbm0;
assign vh_index_hbm1          = int_vh_index_hbm1;
assign vh_index_hbm2          = int_vh_index_hbm2;
assign vh_index_hbm3          = int_vh_index_hbm3;
assign vh_index_hbm4          = int_vh_index_hbm4;
assign vh_index_hbm5          = int_vh_index_hbm5;
assign vh_index_hbm6          = int_vh_index_hbm6;
assign vh_index_hbm7          = int_vh_index_hbm7;
assign vh_index_hbm8          = int_vh_index_hbm8;
assign vh_index_hbm9          = int_vh_index_hbm9;
assign vh_index_hbm10         = int_vh_index_hbm10;
assign vh_index_hbm11         = int_vh_index_hbm11;
assign vh_index_hbm12         = int_vh_index_hbm12;
assign vh_index_hbm13         = int_vh_index_hbm13;
assign vh_index_hbm14         = int_vh_index_hbm14;
assign vh_index_hbm15         = int_vh_index_hbm15;
assign to_process_index_hbm0  = int_to_process_index_hbm0;
assign to_process_index_hbm1  = int_to_process_index_hbm1;
assign to_process_index_hbm2  = int_to_process_index_hbm2;
assign to_process_index_hbm3  = int_to_process_index_hbm3;
assign to_process_index_hbm4  = int_to_process_index_hbm4;
assign to_process_index_hbm5  = int_to_process_index_hbm5;
assign to_process_index_hbm6  = int_to_process_index_hbm6;
assign to_process_index_hbm7  = int_to_process_index_hbm7;
assign to_process_index_hbm8  = int_to_process_index_hbm8;
assign to_process_index_hbm9  = int_to_process_index_hbm9;
assign to_process_index_hbm10 = int_to_process_index_hbm10;
assign to_process_index_hbm11 = int_to_process_index_hbm11;
assign to_process_index_hbm12 = int_to_process_index_hbm12;
assign to_process_index_hbm13 = int_to_process_index_hbm13;
assign to_process_index_hbm14 = int_to_process_index_hbm14;
assign to_process_index_hbm15 = int_to_process_index_hbm15;
assign to_process_count_hbm0  = int_to_process_count_hbm0;
assign to_process_count_hbm1  = int_to_process_count_hbm1;
assign to_process_count_hbm2  = int_to_process_count_hbm2;
assign to_process_count_hbm3  = int_to_process_count_hbm3;
assign to_process_count_hbm4  = int_to_process_count_hbm4;
assign to_process_count_hbm5  = int_to_process_count_hbm5;
assign to_process_count_hbm6  = int_to_process_count_hbm6;
assign to_process_count_hbm7  = int_to_process_count_hbm7;
assign to_process_count_hbm8  = int_to_process_count_hbm8;
assign to_process_count_hbm9  = int_to_process_count_hbm9;
assign to_process_count_hbm10 = int_to_process_count_hbm10;
assign to_process_count_hbm11 = int_to_process_count_hbm11;
assign to_process_count_hbm12 = int_to_process_count_hbm12;
assign to_process_count_hbm13 = int_to_process_count_hbm13;
assign to_process_count_hbm14 = int_to_process_count_hbm14;
assign to_process_count_hbm15 = int_to_process_count_hbm15;
assign k                      = int_k;
// int_event_start
always @(posedge ACLK) begin
    if (ARESET)
        int_event_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_event_start <= 1'b1;
        else
            int_event_start <= 1'b0; // self clear
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_task_ap_done <= task_ap_done;
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_ap_continue
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_continue <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[4])
            int_ap_continue <= 1'b1;
        else
            int_ap_continue <= 1'b0; // self clear
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// auto_restart_done
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_done <= 1'b0;
    else if (ACLK_EN) begin
        if (auto_restart_status && (ap_idle && !int_ap_idle))
            auto_restart_done <= 1'b1;
        else if (int_ap_continue)
            auto_restart_done <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[5:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_isr[5]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[5] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[5] & ap_local_deadlock)
            int_isr[5] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[5] <= int_isr[5] ^ WDATA[5]; // toggle on write
    end
end

// int_V_value_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM0_DATA_0)
            int_V_value_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm0[31:0] & ~wmask);
    end
end

// int_V_value_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM0_DATA_1)
            int_V_value_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm0[63:32] & ~wmask);
    end
end

// int_V_value_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM1_DATA_0)
            int_V_value_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm1[31:0] & ~wmask);
    end
end

// int_V_value_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM1_DATA_1)
            int_V_value_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm1[63:32] & ~wmask);
    end
end

// int_V_value_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM2_DATA_0)
            int_V_value_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm2[31:0] & ~wmask);
    end
end

// int_V_value_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM2_DATA_1)
            int_V_value_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm2[63:32] & ~wmask);
    end
end

// int_V_value_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM3_DATA_0)
            int_V_value_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm3[31:0] & ~wmask);
    end
end

// int_V_value_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM3_DATA_1)
            int_V_value_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm3[63:32] & ~wmask);
    end
end

// int_V_value_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM4_DATA_0)
            int_V_value_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm4[31:0] & ~wmask);
    end
end

// int_V_value_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM4_DATA_1)
            int_V_value_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm4[63:32] & ~wmask);
    end
end

// int_V_value_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM5_DATA_0)
            int_V_value_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm5[31:0] & ~wmask);
    end
end

// int_V_value_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM5_DATA_1)
            int_V_value_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm5[63:32] & ~wmask);
    end
end

// int_V_value_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM6_DATA_0)
            int_V_value_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm6[31:0] & ~wmask);
    end
end

// int_V_value_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM6_DATA_1)
            int_V_value_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm6[63:32] & ~wmask);
    end
end

// int_V_value_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM7_DATA_0)
            int_V_value_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm7[31:0] & ~wmask);
    end
end

// int_V_value_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM7_DATA_1)
            int_V_value_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm7[63:32] & ~wmask);
    end
end

// int_V_value_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM8_DATA_0)
            int_V_value_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm8[31:0] & ~wmask);
    end
end

// int_V_value_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM8_DATA_1)
            int_V_value_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm8[63:32] & ~wmask);
    end
end

// int_V_value_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM9_DATA_0)
            int_V_value_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm9[31:0] & ~wmask);
    end
end

// int_V_value_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM9_DATA_1)
            int_V_value_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm9[63:32] & ~wmask);
    end
end

// int_V_value_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM10_DATA_0)
            int_V_value_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm10[31:0] & ~wmask);
    end
end

// int_V_value_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM10_DATA_1)
            int_V_value_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm10[63:32] & ~wmask);
    end
end

// int_V_value_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM11_DATA_0)
            int_V_value_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm11[31:0] & ~wmask);
    end
end

// int_V_value_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM11_DATA_1)
            int_V_value_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm11[63:32] & ~wmask);
    end
end

// int_V_value_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM12_DATA_0)
            int_V_value_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm12[31:0] & ~wmask);
    end
end

// int_V_value_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM12_DATA_1)
            int_V_value_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm12[63:32] & ~wmask);
    end
end

// int_V_value_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM13_DATA_0)
            int_V_value_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm13[31:0] & ~wmask);
    end
end

// int_V_value_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM13_DATA_1)
            int_V_value_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm13[63:32] & ~wmask);
    end
end

// int_V_value_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM14_DATA_0)
            int_V_value_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm14[31:0] & ~wmask);
    end
end

// int_V_value_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM14_DATA_1)
            int_V_value_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm14[63:32] & ~wmask);
    end
end

// int_V_value_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM15_DATA_0)
            int_V_value_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_V_value_hbm15[31:0] & ~wmask);
    end
end

// int_V_value_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_value_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_VALUE_HBM15_DATA_1)
            int_V_value_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_V_value_hbm15[63:32] & ~wmask);
    end
end

// int_H_value_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM0_DATA_0)
            int_H_value_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm0[31:0] & ~wmask);
    end
end

// int_H_value_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM0_DATA_1)
            int_H_value_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm0[63:32] & ~wmask);
    end
end

// int_H_value_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM1_DATA_0)
            int_H_value_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm1[31:0] & ~wmask);
    end
end

// int_H_value_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM1_DATA_1)
            int_H_value_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm1[63:32] & ~wmask);
    end
end

// int_H_value_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM2_DATA_0)
            int_H_value_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm2[31:0] & ~wmask);
    end
end

// int_H_value_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM2_DATA_1)
            int_H_value_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm2[63:32] & ~wmask);
    end
end

// int_H_value_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM3_DATA_0)
            int_H_value_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm3[31:0] & ~wmask);
    end
end

// int_H_value_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM3_DATA_1)
            int_H_value_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm3[63:32] & ~wmask);
    end
end

// int_H_value_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM4_DATA_0)
            int_H_value_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm4[31:0] & ~wmask);
    end
end

// int_H_value_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM4_DATA_1)
            int_H_value_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm4[63:32] & ~wmask);
    end
end

// int_H_value_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM5_DATA_0)
            int_H_value_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm5[31:0] & ~wmask);
    end
end

// int_H_value_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM5_DATA_1)
            int_H_value_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm5[63:32] & ~wmask);
    end
end

// int_H_value_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM6_DATA_0)
            int_H_value_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm6[31:0] & ~wmask);
    end
end

// int_H_value_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM6_DATA_1)
            int_H_value_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm6[63:32] & ~wmask);
    end
end

// int_H_value_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM7_DATA_0)
            int_H_value_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm7[31:0] & ~wmask);
    end
end

// int_H_value_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM7_DATA_1)
            int_H_value_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm7[63:32] & ~wmask);
    end
end

// int_H_value_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM8_DATA_0)
            int_H_value_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm8[31:0] & ~wmask);
    end
end

// int_H_value_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM8_DATA_1)
            int_H_value_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm8[63:32] & ~wmask);
    end
end

// int_H_value_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM9_DATA_0)
            int_H_value_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm9[31:0] & ~wmask);
    end
end

// int_H_value_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM9_DATA_1)
            int_H_value_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm9[63:32] & ~wmask);
    end
end

// int_H_value_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM10_DATA_0)
            int_H_value_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm10[31:0] & ~wmask);
    end
end

// int_H_value_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM10_DATA_1)
            int_H_value_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm10[63:32] & ~wmask);
    end
end

// int_H_value_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM11_DATA_0)
            int_H_value_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm11[31:0] & ~wmask);
    end
end

// int_H_value_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM11_DATA_1)
            int_H_value_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm11[63:32] & ~wmask);
    end
end

// int_H_value_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM12_DATA_0)
            int_H_value_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm12[31:0] & ~wmask);
    end
end

// int_H_value_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM12_DATA_1)
            int_H_value_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm12[63:32] & ~wmask);
    end
end

// int_H_value_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM13_DATA_0)
            int_H_value_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm13[31:0] & ~wmask);
    end
end

// int_H_value_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM13_DATA_1)
            int_H_value_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm13[63:32] & ~wmask);
    end
end

// int_H_value_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM14_DATA_0)
            int_H_value_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm14[31:0] & ~wmask);
    end
end

// int_H_value_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM14_DATA_1)
            int_H_value_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm14[63:32] & ~wmask);
    end
end

// int_H_value_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM15_DATA_0)
            int_H_value_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_H_value_hbm15[31:0] & ~wmask);
    end
end

// int_H_value_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_value_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_VALUE_HBM15_DATA_1)
            int_H_value_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_H_value_hbm15[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM0_DATA_0)
            int_vh_offset_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm0[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM0_DATA_1)
            int_vh_offset_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm0[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM1_DATA_0)
            int_vh_offset_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm1[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM1_DATA_1)
            int_vh_offset_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm1[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM2_DATA_0)
            int_vh_offset_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm2[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM2_DATA_1)
            int_vh_offset_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm2[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM3_DATA_0)
            int_vh_offset_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm3[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM3_DATA_1)
            int_vh_offset_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm3[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM4_DATA_0)
            int_vh_offset_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm4[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM4_DATA_1)
            int_vh_offset_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm4[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM5_DATA_0)
            int_vh_offset_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm5[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM5_DATA_1)
            int_vh_offset_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm5[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM6_DATA_0)
            int_vh_offset_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm6[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM6_DATA_1)
            int_vh_offset_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm6[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM7_DATA_0)
            int_vh_offset_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm7[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM7_DATA_1)
            int_vh_offset_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm7[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM8_DATA_0)
            int_vh_offset_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm8[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM8_DATA_1)
            int_vh_offset_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm8[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM9_DATA_0)
            int_vh_offset_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm9[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM9_DATA_1)
            int_vh_offset_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm9[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM10_DATA_0)
            int_vh_offset_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm10[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM10_DATA_1)
            int_vh_offset_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm10[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM11_DATA_0)
            int_vh_offset_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm11[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM11_DATA_1)
            int_vh_offset_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm11[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM12_DATA_0)
            int_vh_offset_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm12[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM12_DATA_1)
            int_vh_offset_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm12[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM13_DATA_0)
            int_vh_offset_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm13[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM13_DATA_1)
            int_vh_offset_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm13[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM14_DATA_0)
            int_vh_offset_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm14[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM14_DATA_1)
            int_vh_offset_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm14[63:32] & ~wmask);
    end
end

// int_vh_offset_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM15_DATA_0)
            int_vh_offset_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm15[31:0] & ~wmask);
    end
end

// int_vh_offset_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_offset_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_OFFSET_HBM15_DATA_1)
            int_vh_offset_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_vh_offset_hbm15[63:32] & ~wmask);
    end
end

// int_vh_index_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM0_DATA_0)
            int_vh_index_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm0[31:0] & ~wmask);
    end
end

// int_vh_index_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM0_DATA_1)
            int_vh_index_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm0[63:32] & ~wmask);
    end
end

// int_vh_index_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM1_DATA_0)
            int_vh_index_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm1[31:0] & ~wmask);
    end
end

// int_vh_index_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM1_DATA_1)
            int_vh_index_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm1[63:32] & ~wmask);
    end
end

// int_vh_index_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM2_DATA_0)
            int_vh_index_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm2[31:0] & ~wmask);
    end
end

// int_vh_index_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM2_DATA_1)
            int_vh_index_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm2[63:32] & ~wmask);
    end
end

// int_vh_index_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM3_DATA_0)
            int_vh_index_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm3[31:0] & ~wmask);
    end
end

// int_vh_index_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM3_DATA_1)
            int_vh_index_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm3[63:32] & ~wmask);
    end
end

// int_vh_index_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM4_DATA_0)
            int_vh_index_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm4[31:0] & ~wmask);
    end
end

// int_vh_index_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM4_DATA_1)
            int_vh_index_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm4[63:32] & ~wmask);
    end
end

// int_vh_index_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM5_DATA_0)
            int_vh_index_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm5[31:0] & ~wmask);
    end
end

// int_vh_index_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM5_DATA_1)
            int_vh_index_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm5[63:32] & ~wmask);
    end
end

// int_vh_index_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM6_DATA_0)
            int_vh_index_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm6[31:0] & ~wmask);
    end
end

// int_vh_index_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM6_DATA_1)
            int_vh_index_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm6[63:32] & ~wmask);
    end
end

// int_vh_index_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM7_DATA_0)
            int_vh_index_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm7[31:0] & ~wmask);
    end
end

// int_vh_index_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM7_DATA_1)
            int_vh_index_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm7[63:32] & ~wmask);
    end
end

// int_vh_index_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM8_DATA_0)
            int_vh_index_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm8[31:0] & ~wmask);
    end
end

// int_vh_index_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM8_DATA_1)
            int_vh_index_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm8[63:32] & ~wmask);
    end
end

// int_vh_index_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM9_DATA_0)
            int_vh_index_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm9[31:0] & ~wmask);
    end
end

// int_vh_index_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM9_DATA_1)
            int_vh_index_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm9[63:32] & ~wmask);
    end
end

// int_vh_index_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM10_DATA_0)
            int_vh_index_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm10[31:0] & ~wmask);
    end
end

// int_vh_index_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM10_DATA_1)
            int_vh_index_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm10[63:32] & ~wmask);
    end
end

// int_vh_index_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM11_DATA_0)
            int_vh_index_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm11[31:0] & ~wmask);
    end
end

// int_vh_index_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM11_DATA_1)
            int_vh_index_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm11[63:32] & ~wmask);
    end
end

// int_vh_index_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM12_DATA_0)
            int_vh_index_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm12[31:0] & ~wmask);
    end
end

// int_vh_index_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM12_DATA_1)
            int_vh_index_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm12[63:32] & ~wmask);
    end
end

// int_vh_index_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM13_DATA_0)
            int_vh_index_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm13[31:0] & ~wmask);
    end
end

// int_vh_index_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM13_DATA_1)
            int_vh_index_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm13[63:32] & ~wmask);
    end
end

// int_vh_index_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM14_DATA_0)
            int_vh_index_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm14[31:0] & ~wmask);
    end
end

// int_vh_index_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM14_DATA_1)
            int_vh_index_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm14[63:32] & ~wmask);
    end
end

// int_vh_index_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM15_DATA_0)
            int_vh_index_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm15[31:0] & ~wmask);
    end
end

// int_vh_index_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_vh_index_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_VH_INDEX_HBM15_DATA_1)
            int_vh_index_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_vh_index_hbm15[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM0_DATA_0)
            int_to_process_index_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm0[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM0_DATA_1)
            int_to_process_index_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm0[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM1_DATA_0)
            int_to_process_index_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm1[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM1_DATA_1)
            int_to_process_index_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm1[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM2_DATA_0)
            int_to_process_index_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm2[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM2_DATA_1)
            int_to_process_index_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm2[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM3_DATA_0)
            int_to_process_index_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm3[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM3_DATA_1)
            int_to_process_index_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm3[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM4_DATA_0)
            int_to_process_index_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm4[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM4_DATA_1)
            int_to_process_index_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm4[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM5_DATA_0)
            int_to_process_index_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm5[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM5_DATA_1)
            int_to_process_index_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm5[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM6_DATA_0)
            int_to_process_index_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm6[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM6_DATA_1)
            int_to_process_index_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm6[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM7_DATA_0)
            int_to_process_index_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm7[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM7_DATA_1)
            int_to_process_index_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm7[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM8_DATA_0)
            int_to_process_index_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm8[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM8_DATA_1)
            int_to_process_index_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm8[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM9_DATA_0)
            int_to_process_index_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm9[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM9_DATA_1)
            int_to_process_index_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm9[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM10_DATA_0)
            int_to_process_index_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm10[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM10_DATA_1)
            int_to_process_index_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm10[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM11_DATA_0)
            int_to_process_index_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm11[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM11_DATA_1)
            int_to_process_index_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm11[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM12_DATA_0)
            int_to_process_index_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm12[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM12_DATA_1)
            int_to_process_index_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm12[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM13_DATA_0)
            int_to_process_index_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm13[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM13_DATA_1)
            int_to_process_index_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm13[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM14_DATA_0)
            int_to_process_index_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm14[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM14_DATA_1)
            int_to_process_index_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm14[63:32] & ~wmask);
    end
end

// int_to_process_index_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM15_DATA_0)
            int_to_process_index_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm15[31:0] & ~wmask);
    end
end

// int_to_process_index_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_index_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_INDEX_HBM15_DATA_1)
            int_to_process_index_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_index_hbm15[63:32] & ~wmask);
    end
end

// int_to_process_count_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM0_DATA_0)
            int_to_process_count_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm0[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM1_DATA_0)
            int_to_process_count_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm1[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM2_DATA_0)
            int_to_process_count_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm2[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM3_DATA_0)
            int_to_process_count_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm3[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM4_DATA_0)
            int_to_process_count_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm4[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM5_DATA_0)
            int_to_process_count_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm5[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM6_DATA_0)
            int_to_process_count_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm6[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM7_DATA_0)
            int_to_process_count_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm7[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM8_DATA_0)
            int_to_process_count_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm8[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM9_DATA_0)
            int_to_process_count_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm9[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM10_DATA_0)
            int_to_process_count_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm10[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM11_DATA_0)
            int_to_process_count_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm11[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM12_DATA_0)
            int_to_process_count_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm12[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM13_DATA_0)
            int_to_process_count_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm13[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM14_DATA_0)
            int_to_process_count_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm14[31:0] & ~wmask);
    end
end

// int_to_process_count_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_count_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_COUNT_HBM15_DATA_0)
            int_to_process_count_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_count_hbm15[31:0] & ~wmask);
    end
end

// int_k[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_k[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K_DATA_0)
            int_k[31:0] <= (WDATA[31:0] & wmask) | (int_k[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
