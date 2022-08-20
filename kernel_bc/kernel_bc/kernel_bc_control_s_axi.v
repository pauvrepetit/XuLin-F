// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module kernel_bc_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 12,
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
    output wire [63:0]                   V_NumPaths_hbm0,
    output wire [63:0]                   V_NumPaths_hbm1,
    output wire [63:0]                   V_NumPaths_hbm2,
    output wire [63:0]                   V_NumPaths_hbm3,
    output wire [63:0]                   V_NumPaths_hbm4,
    output wire [63:0]                   V_NumPaths_hbm5,
    output wire [63:0]                   V_NumPaths_hbm6,
    output wire [63:0]                   V_NumPaths_hbm7,
    output wire [63:0]                   V_NumPaths_hbm8,
    output wire [63:0]                   V_NumPaths_hbm9,
    output wire [63:0]                   V_NumPaths_hbm10,
    output wire [63:0]                   V_NumPaths_hbm11,
    output wire [63:0]                   V_NumPaths_hbm12,
    output wire [63:0]                   V_NumPaths_hbm13,
    output wire [63:0]                   V_NumPaths_hbm14,
    output wire [63:0]                   V_NumPaths_hbm15,
    output wire [63:0]                   H_NumPaths_hbm0,
    output wire [63:0]                   H_NumPaths_hbm1,
    output wire [63:0]                   H_NumPaths_hbm2,
    output wire [63:0]                   H_NumPaths_hbm3,
    output wire [63:0]                   H_NumPaths_hbm4,
    output wire [63:0]                   H_NumPaths_hbm5,
    output wire [63:0]                   H_NumPaths_hbm6,
    output wire [63:0]                   H_NumPaths_hbm7,
    output wire [63:0]                   H_NumPaths_hbm8,
    output wire [63:0]                   H_NumPaths_hbm9,
    output wire [63:0]                   H_NumPaths_hbm10,
    output wire [63:0]                   H_NumPaths_hbm11,
    output wire [63:0]                   H_NumPaths_hbm12,
    output wire [63:0]                   H_NumPaths_hbm13,
    output wire [63:0]                   H_NumPaths_hbm14,
    output wire [63:0]                   H_NumPaths_hbm15,
    output wire [63:0]                   V_Dependencies_hbm0,
    output wire [63:0]                   V_Dependencies_hbm1,
    output wire [63:0]                   V_Dependencies_hbm2,
    output wire [63:0]                   V_Dependencies_hbm3,
    output wire [63:0]                   V_Dependencies_hbm4,
    output wire [63:0]                   V_Dependencies_hbm5,
    output wire [63:0]                   V_Dependencies_hbm6,
    output wire [63:0]                   V_Dependencies_hbm7,
    output wire [63:0]                   V_Dependencies_hbm8,
    output wire [63:0]                   V_Dependencies_hbm9,
    output wire [63:0]                   V_Dependencies_hbm10,
    output wire [63:0]                   V_Dependencies_hbm11,
    output wire [63:0]                   V_Dependencies_hbm12,
    output wire [63:0]                   V_Dependencies_hbm13,
    output wire [63:0]                   V_Dependencies_hbm14,
    output wire [63:0]                   V_Dependencies_hbm15,
    output wire [63:0]                   H_Dependencies_hbm0,
    output wire [63:0]                   H_Dependencies_hbm1,
    output wire [63:0]                   H_Dependencies_hbm2,
    output wire [63:0]                   H_Dependencies_hbm3,
    output wire [63:0]                   H_Dependencies_hbm4,
    output wire [63:0]                   H_Dependencies_hbm5,
    output wire [63:0]                   H_Dependencies_hbm6,
    output wire [63:0]                   H_Dependencies_hbm7,
    output wire [63:0]                   H_Dependencies_hbm8,
    output wire [63:0]                   H_Dependencies_hbm9,
    output wire [63:0]                   H_Dependencies_hbm10,
    output wire [63:0]                   H_Dependencies_hbm11,
    output wire [63:0]                   H_Dependencies_hbm12,
    output wire [63:0]                   H_Dependencies_hbm13,
    output wire [63:0]                   H_Dependencies_hbm14,
    output wire [63:0]                   H_Dependencies_hbm15,
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
    output wire [63:0]                   hv_offset_hbm0,
    output wire [63:0]                   hv_offset_hbm1,
    output wire [63:0]                   hv_offset_hbm2,
    output wire [63:0]                   hv_offset_hbm3,
    output wire [63:0]                   hv_offset_hbm4,
    output wire [63:0]                   hv_offset_hbm5,
    output wire [63:0]                   hv_offset_hbm6,
    output wire [63:0]                   hv_offset_hbm7,
    output wire [63:0]                   hv_offset_hbm8,
    output wire [63:0]                   hv_offset_hbm9,
    output wire [63:0]                   hv_offset_hbm10,
    output wire [63:0]                   hv_offset_hbm11,
    output wire [63:0]                   hv_offset_hbm12,
    output wire [63:0]                   hv_offset_hbm13,
    output wire [63:0]                   hv_offset_hbm14,
    output wire [63:0]                   hv_offset_hbm15,
    output wire [63:0]                   hv_index_hbm0,
    output wire [63:0]                   hv_index_hbm1,
    output wire [63:0]                   hv_index_hbm2,
    output wire [63:0]                   hv_index_hbm3,
    output wire [63:0]                   hv_index_hbm4,
    output wire [63:0]                   hv_index_hbm5,
    output wire [63:0]                   hv_index_hbm6,
    output wire [63:0]                   hv_index_hbm7,
    output wire [63:0]                   hv_index_hbm8,
    output wire [63:0]                   hv_index_hbm9,
    output wire [63:0]                   hv_index_hbm10,
    output wire [63:0]                   hv_index_hbm11,
    output wire [63:0]                   hv_index_hbm12,
    output wire [63:0]                   hv_index_hbm13,
    output wire [63:0]                   hv_index_hbm14,
    output wire [63:0]                   hv_index_hbm15,
    output wire [63:0]                   to_process_list_hbm0,
    output wire [63:0]                   to_process_list_hbm1,
    output wire [63:0]                   to_process_list_hbm2,
    output wire [63:0]                   to_process_list_hbm3,
    output wire [63:0]                   to_process_list_hbm4,
    output wire [63:0]                   to_process_list_hbm5,
    output wire [63:0]                   to_process_list_hbm6,
    output wire [63:0]                   to_process_list_hbm7,
    output wire [63:0]                   to_process_list_hbm8,
    output wire [63:0]                   to_process_list_hbm9,
    output wire [63:0]                   to_process_list_hbm10,
    output wire [63:0]                   to_process_list_hbm11,
    output wire [63:0]                   to_process_list_hbm12,
    output wire [63:0]                   to_process_list_hbm13,
    output wire [63:0]                   to_process_list_hbm14,
    output wire [63:0]                   to_process_list_hbm15,
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
    output wire [31:0]                   stage,
    output wire [31:0]                   r,
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
// 0x190 : Data signal of V_NumPaths_hbm0
//         bit 31~0 - V_NumPaths_hbm0[31:0] (Read/Write)
// 0x194 : Data signal of V_NumPaths_hbm0
//         bit 31~0 - V_NumPaths_hbm0[63:32] (Read/Write)
// 0x198 : reserved
// 0x19c : Data signal of V_NumPaths_hbm1
//         bit 31~0 - V_NumPaths_hbm1[31:0] (Read/Write)
// 0x1a0 : Data signal of V_NumPaths_hbm1
//         bit 31~0 - V_NumPaths_hbm1[63:32] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of V_NumPaths_hbm2
//         bit 31~0 - V_NumPaths_hbm2[31:0] (Read/Write)
// 0x1ac : Data signal of V_NumPaths_hbm2
//         bit 31~0 - V_NumPaths_hbm2[63:32] (Read/Write)
// 0x1b0 : reserved
// 0x1b4 : Data signal of V_NumPaths_hbm3
//         bit 31~0 - V_NumPaths_hbm3[31:0] (Read/Write)
// 0x1b8 : Data signal of V_NumPaths_hbm3
//         bit 31~0 - V_NumPaths_hbm3[63:32] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of V_NumPaths_hbm4
//         bit 31~0 - V_NumPaths_hbm4[31:0] (Read/Write)
// 0x1c4 : Data signal of V_NumPaths_hbm4
//         bit 31~0 - V_NumPaths_hbm4[63:32] (Read/Write)
// 0x1c8 : reserved
// 0x1cc : Data signal of V_NumPaths_hbm5
//         bit 31~0 - V_NumPaths_hbm5[31:0] (Read/Write)
// 0x1d0 : Data signal of V_NumPaths_hbm5
//         bit 31~0 - V_NumPaths_hbm5[63:32] (Read/Write)
// 0x1d4 : reserved
// 0x1d8 : Data signal of V_NumPaths_hbm6
//         bit 31~0 - V_NumPaths_hbm6[31:0] (Read/Write)
// 0x1dc : Data signal of V_NumPaths_hbm6
//         bit 31~0 - V_NumPaths_hbm6[63:32] (Read/Write)
// 0x1e0 : reserved
// 0x1e4 : Data signal of V_NumPaths_hbm7
//         bit 31~0 - V_NumPaths_hbm7[31:0] (Read/Write)
// 0x1e8 : Data signal of V_NumPaths_hbm7
//         bit 31~0 - V_NumPaths_hbm7[63:32] (Read/Write)
// 0x1ec : reserved
// 0x1f0 : Data signal of V_NumPaths_hbm8
//         bit 31~0 - V_NumPaths_hbm8[31:0] (Read/Write)
// 0x1f4 : Data signal of V_NumPaths_hbm8
//         bit 31~0 - V_NumPaths_hbm8[63:32] (Read/Write)
// 0x1f8 : reserved
// 0x1fc : Data signal of V_NumPaths_hbm9
//         bit 31~0 - V_NumPaths_hbm9[31:0] (Read/Write)
// 0x200 : Data signal of V_NumPaths_hbm9
//         bit 31~0 - V_NumPaths_hbm9[63:32] (Read/Write)
// 0x204 : reserved
// 0x208 : Data signal of V_NumPaths_hbm10
//         bit 31~0 - V_NumPaths_hbm10[31:0] (Read/Write)
// 0x20c : Data signal of V_NumPaths_hbm10
//         bit 31~0 - V_NumPaths_hbm10[63:32] (Read/Write)
// 0x210 : reserved
// 0x214 : Data signal of V_NumPaths_hbm11
//         bit 31~0 - V_NumPaths_hbm11[31:0] (Read/Write)
// 0x218 : Data signal of V_NumPaths_hbm11
//         bit 31~0 - V_NumPaths_hbm11[63:32] (Read/Write)
// 0x21c : reserved
// 0x220 : Data signal of V_NumPaths_hbm12
//         bit 31~0 - V_NumPaths_hbm12[31:0] (Read/Write)
// 0x224 : Data signal of V_NumPaths_hbm12
//         bit 31~0 - V_NumPaths_hbm12[63:32] (Read/Write)
// 0x228 : reserved
// 0x22c : Data signal of V_NumPaths_hbm13
//         bit 31~0 - V_NumPaths_hbm13[31:0] (Read/Write)
// 0x230 : Data signal of V_NumPaths_hbm13
//         bit 31~0 - V_NumPaths_hbm13[63:32] (Read/Write)
// 0x234 : reserved
// 0x238 : Data signal of V_NumPaths_hbm14
//         bit 31~0 - V_NumPaths_hbm14[31:0] (Read/Write)
// 0x23c : Data signal of V_NumPaths_hbm14
//         bit 31~0 - V_NumPaths_hbm14[63:32] (Read/Write)
// 0x240 : reserved
// 0x244 : Data signal of V_NumPaths_hbm15
//         bit 31~0 - V_NumPaths_hbm15[31:0] (Read/Write)
// 0x248 : Data signal of V_NumPaths_hbm15
//         bit 31~0 - V_NumPaths_hbm15[63:32] (Read/Write)
// 0x24c : reserved
// 0x250 : Data signal of H_NumPaths_hbm0
//         bit 31~0 - H_NumPaths_hbm0[31:0] (Read/Write)
// 0x254 : Data signal of H_NumPaths_hbm0
//         bit 31~0 - H_NumPaths_hbm0[63:32] (Read/Write)
// 0x258 : reserved
// 0x25c : Data signal of H_NumPaths_hbm1
//         bit 31~0 - H_NumPaths_hbm1[31:0] (Read/Write)
// 0x260 : Data signal of H_NumPaths_hbm1
//         bit 31~0 - H_NumPaths_hbm1[63:32] (Read/Write)
// 0x264 : reserved
// 0x268 : Data signal of H_NumPaths_hbm2
//         bit 31~0 - H_NumPaths_hbm2[31:0] (Read/Write)
// 0x26c : Data signal of H_NumPaths_hbm2
//         bit 31~0 - H_NumPaths_hbm2[63:32] (Read/Write)
// 0x270 : reserved
// 0x274 : Data signal of H_NumPaths_hbm3
//         bit 31~0 - H_NumPaths_hbm3[31:0] (Read/Write)
// 0x278 : Data signal of H_NumPaths_hbm3
//         bit 31~0 - H_NumPaths_hbm3[63:32] (Read/Write)
// 0x27c : reserved
// 0x280 : Data signal of H_NumPaths_hbm4
//         bit 31~0 - H_NumPaths_hbm4[31:0] (Read/Write)
// 0x284 : Data signal of H_NumPaths_hbm4
//         bit 31~0 - H_NumPaths_hbm4[63:32] (Read/Write)
// 0x288 : reserved
// 0x28c : Data signal of H_NumPaths_hbm5
//         bit 31~0 - H_NumPaths_hbm5[31:0] (Read/Write)
// 0x290 : Data signal of H_NumPaths_hbm5
//         bit 31~0 - H_NumPaths_hbm5[63:32] (Read/Write)
// 0x294 : reserved
// 0x298 : Data signal of H_NumPaths_hbm6
//         bit 31~0 - H_NumPaths_hbm6[31:0] (Read/Write)
// 0x29c : Data signal of H_NumPaths_hbm6
//         bit 31~0 - H_NumPaths_hbm6[63:32] (Read/Write)
// 0x2a0 : reserved
// 0x2a4 : Data signal of H_NumPaths_hbm7
//         bit 31~0 - H_NumPaths_hbm7[31:0] (Read/Write)
// 0x2a8 : Data signal of H_NumPaths_hbm7
//         bit 31~0 - H_NumPaths_hbm7[63:32] (Read/Write)
// 0x2ac : reserved
// 0x2b0 : Data signal of H_NumPaths_hbm8
//         bit 31~0 - H_NumPaths_hbm8[31:0] (Read/Write)
// 0x2b4 : Data signal of H_NumPaths_hbm8
//         bit 31~0 - H_NumPaths_hbm8[63:32] (Read/Write)
// 0x2b8 : reserved
// 0x2bc : Data signal of H_NumPaths_hbm9
//         bit 31~0 - H_NumPaths_hbm9[31:0] (Read/Write)
// 0x2c0 : Data signal of H_NumPaths_hbm9
//         bit 31~0 - H_NumPaths_hbm9[63:32] (Read/Write)
// 0x2c4 : reserved
// 0x2c8 : Data signal of H_NumPaths_hbm10
//         bit 31~0 - H_NumPaths_hbm10[31:0] (Read/Write)
// 0x2cc : Data signal of H_NumPaths_hbm10
//         bit 31~0 - H_NumPaths_hbm10[63:32] (Read/Write)
// 0x2d0 : reserved
// 0x2d4 : Data signal of H_NumPaths_hbm11
//         bit 31~0 - H_NumPaths_hbm11[31:0] (Read/Write)
// 0x2d8 : Data signal of H_NumPaths_hbm11
//         bit 31~0 - H_NumPaths_hbm11[63:32] (Read/Write)
// 0x2dc : reserved
// 0x2e0 : Data signal of H_NumPaths_hbm12
//         bit 31~0 - H_NumPaths_hbm12[31:0] (Read/Write)
// 0x2e4 : Data signal of H_NumPaths_hbm12
//         bit 31~0 - H_NumPaths_hbm12[63:32] (Read/Write)
// 0x2e8 : reserved
// 0x2ec : Data signal of H_NumPaths_hbm13
//         bit 31~0 - H_NumPaths_hbm13[31:0] (Read/Write)
// 0x2f0 : Data signal of H_NumPaths_hbm13
//         bit 31~0 - H_NumPaths_hbm13[63:32] (Read/Write)
// 0x2f4 : reserved
// 0x2f8 : Data signal of H_NumPaths_hbm14
//         bit 31~0 - H_NumPaths_hbm14[31:0] (Read/Write)
// 0x2fc : Data signal of H_NumPaths_hbm14
//         bit 31~0 - H_NumPaths_hbm14[63:32] (Read/Write)
// 0x300 : reserved
// 0x304 : Data signal of H_NumPaths_hbm15
//         bit 31~0 - H_NumPaths_hbm15[31:0] (Read/Write)
// 0x308 : Data signal of H_NumPaths_hbm15
//         bit 31~0 - H_NumPaths_hbm15[63:32] (Read/Write)
// 0x30c : reserved
// 0x310 : Data signal of V_Dependencies_hbm0
//         bit 31~0 - V_Dependencies_hbm0[31:0] (Read/Write)
// 0x314 : Data signal of V_Dependencies_hbm0
//         bit 31~0 - V_Dependencies_hbm0[63:32] (Read/Write)
// 0x318 : reserved
// 0x31c : Data signal of V_Dependencies_hbm1
//         bit 31~0 - V_Dependencies_hbm1[31:0] (Read/Write)
// 0x320 : Data signal of V_Dependencies_hbm1
//         bit 31~0 - V_Dependencies_hbm1[63:32] (Read/Write)
// 0x324 : reserved
// 0x328 : Data signal of V_Dependencies_hbm2
//         bit 31~0 - V_Dependencies_hbm2[31:0] (Read/Write)
// 0x32c : Data signal of V_Dependencies_hbm2
//         bit 31~0 - V_Dependencies_hbm2[63:32] (Read/Write)
// 0x330 : reserved
// 0x334 : Data signal of V_Dependencies_hbm3
//         bit 31~0 - V_Dependencies_hbm3[31:0] (Read/Write)
// 0x338 : Data signal of V_Dependencies_hbm3
//         bit 31~0 - V_Dependencies_hbm3[63:32] (Read/Write)
// 0x33c : reserved
// 0x340 : Data signal of V_Dependencies_hbm4
//         bit 31~0 - V_Dependencies_hbm4[31:0] (Read/Write)
// 0x344 : Data signal of V_Dependencies_hbm4
//         bit 31~0 - V_Dependencies_hbm4[63:32] (Read/Write)
// 0x348 : reserved
// 0x34c : Data signal of V_Dependencies_hbm5
//         bit 31~0 - V_Dependencies_hbm5[31:0] (Read/Write)
// 0x350 : Data signal of V_Dependencies_hbm5
//         bit 31~0 - V_Dependencies_hbm5[63:32] (Read/Write)
// 0x354 : reserved
// 0x358 : Data signal of V_Dependencies_hbm6
//         bit 31~0 - V_Dependencies_hbm6[31:0] (Read/Write)
// 0x35c : Data signal of V_Dependencies_hbm6
//         bit 31~0 - V_Dependencies_hbm6[63:32] (Read/Write)
// 0x360 : reserved
// 0x364 : Data signal of V_Dependencies_hbm7
//         bit 31~0 - V_Dependencies_hbm7[31:0] (Read/Write)
// 0x368 : Data signal of V_Dependencies_hbm7
//         bit 31~0 - V_Dependencies_hbm7[63:32] (Read/Write)
// 0x36c : reserved
// 0x370 : Data signal of V_Dependencies_hbm8
//         bit 31~0 - V_Dependencies_hbm8[31:0] (Read/Write)
// 0x374 : Data signal of V_Dependencies_hbm8
//         bit 31~0 - V_Dependencies_hbm8[63:32] (Read/Write)
// 0x378 : reserved
// 0x37c : Data signal of V_Dependencies_hbm9
//         bit 31~0 - V_Dependencies_hbm9[31:0] (Read/Write)
// 0x380 : Data signal of V_Dependencies_hbm9
//         bit 31~0 - V_Dependencies_hbm9[63:32] (Read/Write)
// 0x384 : reserved
// 0x388 : Data signal of V_Dependencies_hbm10
//         bit 31~0 - V_Dependencies_hbm10[31:0] (Read/Write)
// 0x38c : Data signal of V_Dependencies_hbm10
//         bit 31~0 - V_Dependencies_hbm10[63:32] (Read/Write)
// 0x390 : reserved
// 0x394 : Data signal of V_Dependencies_hbm11
//         bit 31~0 - V_Dependencies_hbm11[31:0] (Read/Write)
// 0x398 : Data signal of V_Dependencies_hbm11
//         bit 31~0 - V_Dependencies_hbm11[63:32] (Read/Write)
// 0x39c : reserved
// 0x3a0 : Data signal of V_Dependencies_hbm12
//         bit 31~0 - V_Dependencies_hbm12[31:0] (Read/Write)
// 0x3a4 : Data signal of V_Dependencies_hbm12
//         bit 31~0 - V_Dependencies_hbm12[63:32] (Read/Write)
// 0x3a8 : reserved
// 0x3ac : Data signal of V_Dependencies_hbm13
//         bit 31~0 - V_Dependencies_hbm13[31:0] (Read/Write)
// 0x3b0 : Data signal of V_Dependencies_hbm13
//         bit 31~0 - V_Dependencies_hbm13[63:32] (Read/Write)
// 0x3b4 : reserved
// 0x3b8 : Data signal of V_Dependencies_hbm14
//         bit 31~0 - V_Dependencies_hbm14[31:0] (Read/Write)
// 0x3bc : Data signal of V_Dependencies_hbm14
//         bit 31~0 - V_Dependencies_hbm14[63:32] (Read/Write)
// 0x3c0 : reserved
// 0x3c4 : Data signal of V_Dependencies_hbm15
//         bit 31~0 - V_Dependencies_hbm15[31:0] (Read/Write)
// 0x3c8 : Data signal of V_Dependencies_hbm15
//         bit 31~0 - V_Dependencies_hbm15[63:32] (Read/Write)
// 0x3cc : reserved
// 0x3d0 : Data signal of H_Dependencies_hbm0
//         bit 31~0 - H_Dependencies_hbm0[31:0] (Read/Write)
// 0x3d4 : Data signal of H_Dependencies_hbm0
//         bit 31~0 - H_Dependencies_hbm0[63:32] (Read/Write)
// 0x3d8 : reserved
// 0x3dc : Data signal of H_Dependencies_hbm1
//         bit 31~0 - H_Dependencies_hbm1[31:0] (Read/Write)
// 0x3e0 : Data signal of H_Dependencies_hbm1
//         bit 31~0 - H_Dependencies_hbm1[63:32] (Read/Write)
// 0x3e4 : reserved
// 0x3e8 : Data signal of H_Dependencies_hbm2
//         bit 31~0 - H_Dependencies_hbm2[31:0] (Read/Write)
// 0x3ec : Data signal of H_Dependencies_hbm2
//         bit 31~0 - H_Dependencies_hbm2[63:32] (Read/Write)
// 0x3f0 : reserved
// 0x3f4 : Data signal of H_Dependencies_hbm3
//         bit 31~0 - H_Dependencies_hbm3[31:0] (Read/Write)
// 0x3f8 : Data signal of H_Dependencies_hbm3
//         bit 31~0 - H_Dependencies_hbm3[63:32] (Read/Write)
// 0x3fc : reserved
// 0x400 : Data signal of H_Dependencies_hbm4
//         bit 31~0 - H_Dependencies_hbm4[31:0] (Read/Write)
// 0x404 : Data signal of H_Dependencies_hbm4
//         bit 31~0 - H_Dependencies_hbm4[63:32] (Read/Write)
// 0x408 : reserved
// 0x40c : Data signal of H_Dependencies_hbm5
//         bit 31~0 - H_Dependencies_hbm5[31:0] (Read/Write)
// 0x410 : Data signal of H_Dependencies_hbm5
//         bit 31~0 - H_Dependencies_hbm5[63:32] (Read/Write)
// 0x414 : reserved
// 0x418 : Data signal of H_Dependencies_hbm6
//         bit 31~0 - H_Dependencies_hbm6[31:0] (Read/Write)
// 0x41c : Data signal of H_Dependencies_hbm6
//         bit 31~0 - H_Dependencies_hbm6[63:32] (Read/Write)
// 0x420 : reserved
// 0x424 : Data signal of H_Dependencies_hbm7
//         bit 31~0 - H_Dependencies_hbm7[31:0] (Read/Write)
// 0x428 : Data signal of H_Dependencies_hbm7
//         bit 31~0 - H_Dependencies_hbm7[63:32] (Read/Write)
// 0x42c : reserved
// 0x430 : Data signal of H_Dependencies_hbm8
//         bit 31~0 - H_Dependencies_hbm8[31:0] (Read/Write)
// 0x434 : Data signal of H_Dependencies_hbm8
//         bit 31~0 - H_Dependencies_hbm8[63:32] (Read/Write)
// 0x438 : reserved
// 0x43c : Data signal of H_Dependencies_hbm9
//         bit 31~0 - H_Dependencies_hbm9[31:0] (Read/Write)
// 0x440 : Data signal of H_Dependencies_hbm9
//         bit 31~0 - H_Dependencies_hbm9[63:32] (Read/Write)
// 0x444 : reserved
// 0x448 : Data signal of H_Dependencies_hbm10
//         bit 31~0 - H_Dependencies_hbm10[31:0] (Read/Write)
// 0x44c : Data signal of H_Dependencies_hbm10
//         bit 31~0 - H_Dependencies_hbm10[63:32] (Read/Write)
// 0x450 : reserved
// 0x454 : Data signal of H_Dependencies_hbm11
//         bit 31~0 - H_Dependencies_hbm11[31:0] (Read/Write)
// 0x458 : Data signal of H_Dependencies_hbm11
//         bit 31~0 - H_Dependencies_hbm11[63:32] (Read/Write)
// 0x45c : reserved
// 0x460 : Data signal of H_Dependencies_hbm12
//         bit 31~0 - H_Dependencies_hbm12[31:0] (Read/Write)
// 0x464 : Data signal of H_Dependencies_hbm12
//         bit 31~0 - H_Dependencies_hbm12[63:32] (Read/Write)
// 0x468 : reserved
// 0x46c : Data signal of H_Dependencies_hbm13
//         bit 31~0 - H_Dependencies_hbm13[31:0] (Read/Write)
// 0x470 : Data signal of H_Dependencies_hbm13
//         bit 31~0 - H_Dependencies_hbm13[63:32] (Read/Write)
// 0x474 : reserved
// 0x478 : Data signal of H_Dependencies_hbm14
//         bit 31~0 - H_Dependencies_hbm14[31:0] (Read/Write)
// 0x47c : Data signal of H_Dependencies_hbm14
//         bit 31~0 - H_Dependencies_hbm14[63:32] (Read/Write)
// 0x480 : reserved
// 0x484 : Data signal of H_Dependencies_hbm15
//         bit 31~0 - H_Dependencies_hbm15[31:0] (Read/Write)
// 0x488 : Data signal of H_Dependencies_hbm15
//         bit 31~0 - H_Dependencies_hbm15[63:32] (Read/Write)
// 0x48c : reserved
// 0x490 : Data signal of vh_offset_hbm0
//         bit 31~0 - vh_offset_hbm0[31:0] (Read/Write)
// 0x494 : Data signal of vh_offset_hbm0
//         bit 31~0 - vh_offset_hbm0[63:32] (Read/Write)
// 0x498 : reserved
// 0x49c : Data signal of vh_offset_hbm1
//         bit 31~0 - vh_offset_hbm1[31:0] (Read/Write)
// 0x4a0 : Data signal of vh_offset_hbm1
//         bit 31~0 - vh_offset_hbm1[63:32] (Read/Write)
// 0x4a4 : reserved
// 0x4a8 : Data signal of vh_offset_hbm2
//         bit 31~0 - vh_offset_hbm2[31:0] (Read/Write)
// 0x4ac : Data signal of vh_offset_hbm2
//         bit 31~0 - vh_offset_hbm2[63:32] (Read/Write)
// 0x4b0 : reserved
// 0x4b4 : Data signal of vh_offset_hbm3
//         bit 31~0 - vh_offset_hbm3[31:0] (Read/Write)
// 0x4b8 : Data signal of vh_offset_hbm3
//         bit 31~0 - vh_offset_hbm3[63:32] (Read/Write)
// 0x4bc : reserved
// 0x4c0 : Data signal of vh_offset_hbm4
//         bit 31~0 - vh_offset_hbm4[31:0] (Read/Write)
// 0x4c4 : Data signal of vh_offset_hbm4
//         bit 31~0 - vh_offset_hbm4[63:32] (Read/Write)
// 0x4c8 : reserved
// 0x4cc : Data signal of vh_offset_hbm5
//         bit 31~0 - vh_offset_hbm5[31:0] (Read/Write)
// 0x4d0 : Data signal of vh_offset_hbm5
//         bit 31~0 - vh_offset_hbm5[63:32] (Read/Write)
// 0x4d4 : reserved
// 0x4d8 : Data signal of vh_offset_hbm6
//         bit 31~0 - vh_offset_hbm6[31:0] (Read/Write)
// 0x4dc : Data signal of vh_offset_hbm6
//         bit 31~0 - vh_offset_hbm6[63:32] (Read/Write)
// 0x4e0 : reserved
// 0x4e4 : Data signal of vh_offset_hbm7
//         bit 31~0 - vh_offset_hbm7[31:0] (Read/Write)
// 0x4e8 : Data signal of vh_offset_hbm7
//         bit 31~0 - vh_offset_hbm7[63:32] (Read/Write)
// 0x4ec : reserved
// 0x4f0 : Data signal of vh_offset_hbm8
//         bit 31~0 - vh_offset_hbm8[31:0] (Read/Write)
// 0x4f4 : Data signal of vh_offset_hbm8
//         bit 31~0 - vh_offset_hbm8[63:32] (Read/Write)
// 0x4f8 : reserved
// 0x4fc : Data signal of vh_offset_hbm9
//         bit 31~0 - vh_offset_hbm9[31:0] (Read/Write)
// 0x500 : Data signal of vh_offset_hbm9
//         bit 31~0 - vh_offset_hbm9[63:32] (Read/Write)
// 0x504 : reserved
// 0x508 : Data signal of vh_offset_hbm10
//         bit 31~0 - vh_offset_hbm10[31:0] (Read/Write)
// 0x50c : Data signal of vh_offset_hbm10
//         bit 31~0 - vh_offset_hbm10[63:32] (Read/Write)
// 0x510 : reserved
// 0x514 : Data signal of vh_offset_hbm11
//         bit 31~0 - vh_offset_hbm11[31:0] (Read/Write)
// 0x518 : Data signal of vh_offset_hbm11
//         bit 31~0 - vh_offset_hbm11[63:32] (Read/Write)
// 0x51c : reserved
// 0x520 : Data signal of vh_offset_hbm12
//         bit 31~0 - vh_offset_hbm12[31:0] (Read/Write)
// 0x524 : Data signal of vh_offset_hbm12
//         bit 31~0 - vh_offset_hbm12[63:32] (Read/Write)
// 0x528 : reserved
// 0x52c : Data signal of vh_offset_hbm13
//         bit 31~0 - vh_offset_hbm13[31:0] (Read/Write)
// 0x530 : Data signal of vh_offset_hbm13
//         bit 31~0 - vh_offset_hbm13[63:32] (Read/Write)
// 0x534 : reserved
// 0x538 : Data signal of vh_offset_hbm14
//         bit 31~0 - vh_offset_hbm14[31:0] (Read/Write)
// 0x53c : Data signal of vh_offset_hbm14
//         bit 31~0 - vh_offset_hbm14[63:32] (Read/Write)
// 0x540 : reserved
// 0x544 : Data signal of vh_offset_hbm15
//         bit 31~0 - vh_offset_hbm15[31:0] (Read/Write)
// 0x548 : Data signal of vh_offset_hbm15
//         bit 31~0 - vh_offset_hbm15[63:32] (Read/Write)
// 0x54c : reserved
// 0x550 : Data signal of vh_index_hbm0
//         bit 31~0 - vh_index_hbm0[31:0] (Read/Write)
// 0x554 : Data signal of vh_index_hbm0
//         bit 31~0 - vh_index_hbm0[63:32] (Read/Write)
// 0x558 : reserved
// 0x55c : Data signal of vh_index_hbm1
//         bit 31~0 - vh_index_hbm1[31:0] (Read/Write)
// 0x560 : Data signal of vh_index_hbm1
//         bit 31~0 - vh_index_hbm1[63:32] (Read/Write)
// 0x564 : reserved
// 0x568 : Data signal of vh_index_hbm2
//         bit 31~0 - vh_index_hbm2[31:0] (Read/Write)
// 0x56c : Data signal of vh_index_hbm2
//         bit 31~0 - vh_index_hbm2[63:32] (Read/Write)
// 0x570 : reserved
// 0x574 : Data signal of vh_index_hbm3
//         bit 31~0 - vh_index_hbm3[31:0] (Read/Write)
// 0x578 : Data signal of vh_index_hbm3
//         bit 31~0 - vh_index_hbm3[63:32] (Read/Write)
// 0x57c : reserved
// 0x580 : Data signal of vh_index_hbm4
//         bit 31~0 - vh_index_hbm4[31:0] (Read/Write)
// 0x584 : Data signal of vh_index_hbm4
//         bit 31~0 - vh_index_hbm4[63:32] (Read/Write)
// 0x588 : reserved
// 0x58c : Data signal of vh_index_hbm5
//         bit 31~0 - vh_index_hbm5[31:0] (Read/Write)
// 0x590 : Data signal of vh_index_hbm5
//         bit 31~0 - vh_index_hbm5[63:32] (Read/Write)
// 0x594 : reserved
// 0x598 : Data signal of vh_index_hbm6
//         bit 31~0 - vh_index_hbm6[31:0] (Read/Write)
// 0x59c : Data signal of vh_index_hbm6
//         bit 31~0 - vh_index_hbm6[63:32] (Read/Write)
// 0x5a0 : reserved
// 0x5a4 : Data signal of vh_index_hbm7
//         bit 31~0 - vh_index_hbm7[31:0] (Read/Write)
// 0x5a8 : Data signal of vh_index_hbm7
//         bit 31~0 - vh_index_hbm7[63:32] (Read/Write)
// 0x5ac : reserved
// 0x5b0 : Data signal of vh_index_hbm8
//         bit 31~0 - vh_index_hbm8[31:0] (Read/Write)
// 0x5b4 : Data signal of vh_index_hbm8
//         bit 31~0 - vh_index_hbm8[63:32] (Read/Write)
// 0x5b8 : reserved
// 0x5bc : Data signal of vh_index_hbm9
//         bit 31~0 - vh_index_hbm9[31:0] (Read/Write)
// 0x5c0 : Data signal of vh_index_hbm9
//         bit 31~0 - vh_index_hbm9[63:32] (Read/Write)
// 0x5c4 : reserved
// 0x5c8 : Data signal of vh_index_hbm10
//         bit 31~0 - vh_index_hbm10[31:0] (Read/Write)
// 0x5cc : Data signal of vh_index_hbm10
//         bit 31~0 - vh_index_hbm10[63:32] (Read/Write)
// 0x5d0 : reserved
// 0x5d4 : Data signal of vh_index_hbm11
//         bit 31~0 - vh_index_hbm11[31:0] (Read/Write)
// 0x5d8 : Data signal of vh_index_hbm11
//         bit 31~0 - vh_index_hbm11[63:32] (Read/Write)
// 0x5dc : reserved
// 0x5e0 : Data signal of vh_index_hbm12
//         bit 31~0 - vh_index_hbm12[31:0] (Read/Write)
// 0x5e4 : Data signal of vh_index_hbm12
//         bit 31~0 - vh_index_hbm12[63:32] (Read/Write)
// 0x5e8 : reserved
// 0x5ec : Data signal of vh_index_hbm13
//         bit 31~0 - vh_index_hbm13[31:0] (Read/Write)
// 0x5f0 : Data signal of vh_index_hbm13
//         bit 31~0 - vh_index_hbm13[63:32] (Read/Write)
// 0x5f4 : reserved
// 0x5f8 : Data signal of vh_index_hbm14
//         bit 31~0 - vh_index_hbm14[31:0] (Read/Write)
// 0x5fc : Data signal of vh_index_hbm14
//         bit 31~0 - vh_index_hbm14[63:32] (Read/Write)
// 0x600 : reserved
// 0x604 : Data signal of vh_index_hbm15
//         bit 31~0 - vh_index_hbm15[31:0] (Read/Write)
// 0x608 : Data signal of vh_index_hbm15
//         bit 31~0 - vh_index_hbm15[63:32] (Read/Write)
// 0x60c : reserved
// 0x610 : Data signal of hv_offset_hbm0
//         bit 31~0 - hv_offset_hbm0[31:0] (Read/Write)
// 0x614 : Data signal of hv_offset_hbm0
//         bit 31~0 - hv_offset_hbm0[63:32] (Read/Write)
// 0x618 : reserved
// 0x61c : Data signal of hv_offset_hbm1
//         bit 31~0 - hv_offset_hbm1[31:0] (Read/Write)
// 0x620 : Data signal of hv_offset_hbm1
//         bit 31~0 - hv_offset_hbm1[63:32] (Read/Write)
// 0x624 : reserved
// 0x628 : Data signal of hv_offset_hbm2
//         bit 31~0 - hv_offset_hbm2[31:0] (Read/Write)
// 0x62c : Data signal of hv_offset_hbm2
//         bit 31~0 - hv_offset_hbm2[63:32] (Read/Write)
// 0x630 : reserved
// 0x634 : Data signal of hv_offset_hbm3
//         bit 31~0 - hv_offset_hbm3[31:0] (Read/Write)
// 0x638 : Data signal of hv_offset_hbm3
//         bit 31~0 - hv_offset_hbm3[63:32] (Read/Write)
// 0x63c : reserved
// 0x640 : Data signal of hv_offset_hbm4
//         bit 31~0 - hv_offset_hbm4[31:0] (Read/Write)
// 0x644 : Data signal of hv_offset_hbm4
//         bit 31~0 - hv_offset_hbm4[63:32] (Read/Write)
// 0x648 : reserved
// 0x64c : Data signal of hv_offset_hbm5
//         bit 31~0 - hv_offset_hbm5[31:0] (Read/Write)
// 0x650 : Data signal of hv_offset_hbm5
//         bit 31~0 - hv_offset_hbm5[63:32] (Read/Write)
// 0x654 : reserved
// 0x658 : Data signal of hv_offset_hbm6
//         bit 31~0 - hv_offset_hbm6[31:0] (Read/Write)
// 0x65c : Data signal of hv_offset_hbm6
//         bit 31~0 - hv_offset_hbm6[63:32] (Read/Write)
// 0x660 : reserved
// 0x664 : Data signal of hv_offset_hbm7
//         bit 31~0 - hv_offset_hbm7[31:0] (Read/Write)
// 0x668 : Data signal of hv_offset_hbm7
//         bit 31~0 - hv_offset_hbm7[63:32] (Read/Write)
// 0x66c : reserved
// 0x670 : Data signal of hv_offset_hbm8
//         bit 31~0 - hv_offset_hbm8[31:0] (Read/Write)
// 0x674 : Data signal of hv_offset_hbm8
//         bit 31~0 - hv_offset_hbm8[63:32] (Read/Write)
// 0x678 : reserved
// 0x67c : Data signal of hv_offset_hbm9
//         bit 31~0 - hv_offset_hbm9[31:0] (Read/Write)
// 0x680 : Data signal of hv_offset_hbm9
//         bit 31~0 - hv_offset_hbm9[63:32] (Read/Write)
// 0x684 : reserved
// 0x688 : Data signal of hv_offset_hbm10
//         bit 31~0 - hv_offset_hbm10[31:0] (Read/Write)
// 0x68c : Data signal of hv_offset_hbm10
//         bit 31~0 - hv_offset_hbm10[63:32] (Read/Write)
// 0x690 : reserved
// 0x694 : Data signal of hv_offset_hbm11
//         bit 31~0 - hv_offset_hbm11[31:0] (Read/Write)
// 0x698 : Data signal of hv_offset_hbm11
//         bit 31~0 - hv_offset_hbm11[63:32] (Read/Write)
// 0x69c : reserved
// 0x6a0 : Data signal of hv_offset_hbm12
//         bit 31~0 - hv_offset_hbm12[31:0] (Read/Write)
// 0x6a4 : Data signal of hv_offset_hbm12
//         bit 31~0 - hv_offset_hbm12[63:32] (Read/Write)
// 0x6a8 : reserved
// 0x6ac : Data signal of hv_offset_hbm13
//         bit 31~0 - hv_offset_hbm13[31:0] (Read/Write)
// 0x6b0 : Data signal of hv_offset_hbm13
//         bit 31~0 - hv_offset_hbm13[63:32] (Read/Write)
// 0x6b4 : reserved
// 0x6b8 : Data signal of hv_offset_hbm14
//         bit 31~0 - hv_offset_hbm14[31:0] (Read/Write)
// 0x6bc : Data signal of hv_offset_hbm14
//         bit 31~0 - hv_offset_hbm14[63:32] (Read/Write)
// 0x6c0 : reserved
// 0x6c4 : Data signal of hv_offset_hbm15
//         bit 31~0 - hv_offset_hbm15[31:0] (Read/Write)
// 0x6c8 : Data signal of hv_offset_hbm15
//         bit 31~0 - hv_offset_hbm15[63:32] (Read/Write)
// 0x6cc : reserved
// 0x6d0 : Data signal of hv_index_hbm0
//         bit 31~0 - hv_index_hbm0[31:0] (Read/Write)
// 0x6d4 : Data signal of hv_index_hbm0
//         bit 31~0 - hv_index_hbm0[63:32] (Read/Write)
// 0x6d8 : reserved
// 0x6dc : Data signal of hv_index_hbm1
//         bit 31~0 - hv_index_hbm1[31:0] (Read/Write)
// 0x6e0 : Data signal of hv_index_hbm1
//         bit 31~0 - hv_index_hbm1[63:32] (Read/Write)
// 0x6e4 : reserved
// 0x6e8 : Data signal of hv_index_hbm2
//         bit 31~0 - hv_index_hbm2[31:0] (Read/Write)
// 0x6ec : Data signal of hv_index_hbm2
//         bit 31~0 - hv_index_hbm2[63:32] (Read/Write)
// 0x6f0 : reserved
// 0x6f4 : Data signal of hv_index_hbm3
//         bit 31~0 - hv_index_hbm3[31:0] (Read/Write)
// 0x6f8 : Data signal of hv_index_hbm3
//         bit 31~0 - hv_index_hbm3[63:32] (Read/Write)
// 0x6fc : reserved
// 0x700 : Data signal of hv_index_hbm4
//         bit 31~0 - hv_index_hbm4[31:0] (Read/Write)
// 0x704 : Data signal of hv_index_hbm4
//         bit 31~0 - hv_index_hbm4[63:32] (Read/Write)
// 0x708 : reserved
// 0x70c : Data signal of hv_index_hbm5
//         bit 31~0 - hv_index_hbm5[31:0] (Read/Write)
// 0x710 : Data signal of hv_index_hbm5
//         bit 31~0 - hv_index_hbm5[63:32] (Read/Write)
// 0x714 : reserved
// 0x718 : Data signal of hv_index_hbm6
//         bit 31~0 - hv_index_hbm6[31:0] (Read/Write)
// 0x71c : Data signal of hv_index_hbm6
//         bit 31~0 - hv_index_hbm6[63:32] (Read/Write)
// 0x720 : reserved
// 0x724 : Data signal of hv_index_hbm7
//         bit 31~0 - hv_index_hbm7[31:0] (Read/Write)
// 0x728 : Data signal of hv_index_hbm7
//         bit 31~0 - hv_index_hbm7[63:32] (Read/Write)
// 0x72c : reserved
// 0x730 : Data signal of hv_index_hbm8
//         bit 31~0 - hv_index_hbm8[31:0] (Read/Write)
// 0x734 : Data signal of hv_index_hbm8
//         bit 31~0 - hv_index_hbm8[63:32] (Read/Write)
// 0x738 : reserved
// 0x73c : Data signal of hv_index_hbm9
//         bit 31~0 - hv_index_hbm9[31:0] (Read/Write)
// 0x740 : Data signal of hv_index_hbm9
//         bit 31~0 - hv_index_hbm9[63:32] (Read/Write)
// 0x744 : reserved
// 0x748 : Data signal of hv_index_hbm10
//         bit 31~0 - hv_index_hbm10[31:0] (Read/Write)
// 0x74c : Data signal of hv_index_hbm10
//         bit 31~0 - hv_index_hbm10[63:32] (Read/Write)
// 0x750 : reserved
// 0x754 : Data signal of hv_index_hbm11
//         bit 31~0 - hv_index_hbm11[31:0] (Read/Write)
// 0x758 : Data signal of hv_index_hbm11
//         bit 31~0 - hv_index_hbm11[63:32] (Read/Write)
// 0x75c : reserved
// 0x760 : Data signal of hv_index_hbm12
//         bit 31~0 - hv_index_hbm12[31:0] (Read/Write)
// 0x764 : Data signal of hv_index_hbm12
//         bit 31~0 - hv_index_hbm12[63:32] (Read/Write)
// 0x768 : reserved
// 0x76c : Data signal of hv_index_hbm13
//         bit 31~0 - hv_index_hbm13[31:0] (Read/Write)
// 0x770 : Data signal of hv_index_hbm13
//         bit 31~0 - hv_index_hbm13[63:32] (Read/Write)
// 0x774 : reserved
// 0x778 : Data signal of hv_index_hbm14
//         bit 31~0 - hv_index_hbm14[31:0] (Read/Write)
// 0x77c : Data signal of hv_index_hbm14
//         bit 31~0 - hv_index_hbm14[63:32] (Read/Write)
// 0x780 : reserved
// 0x784 : Data signal of hv_index_hbm15
//         bit 31~0 - hv_index_hbm15[31:0] (Read/Write)
// 0x788 : Data signal of hv_index_hbm15
//         bit 31~0 - hv_index_hbm15[63:32] (Read/Write)
// 0x78c : reserved
// 0x790 : Data signal of to_process_list_hbm0
//         bit 31~0 - to_process_list_hbm0[31:0] (Read/Write)
// 0x794 : Data signal of to_process_list_hbm0
//         bit 31~0 - to_process_list_hbm0[63:32] (Read/Write)
// 0x798 : reserved
// 0x79c : Data signal of to_process_list_hbm1
//         bit 31~0 - to_process_list_hbm1[31:0] (Read/Write)
// 0x7a0 : Data signal of to_process_list_hbm1
//         bit 31~0 - to_process_list_hbm1[63:32] (Read/Write)
// 0x7a4 : reserved
// 0x7a8 : Data signal of to_process_list_hbm2
//         bit 31~0 - to_process_list_hbm2[31:0] (Read/Write)
// 0x7ac : Data signal of to_process_list_hbm2
//         bit 31~0 - to_process_list_hbm2[63:32] (Read/Write)
// 0x7b0 : reserved
// 0x7b4 : Data signal of to_process_list_hbm3
//         bit 31~0 - to_process_list_hbm3[31:0] (Read/Write)
// 0x7b8 : Data signal of to_process_list_hbm3
//         bit 31~0 - to_process_list_hbm3[63:32] (Read/Write)
// 0x7bc : reserved
// 0x7c0 : Data signal of to_process_list_hbm4
//         bit 31~0 - to_process_list_hbm4[31:0] (Read/Write)
// 0x7c4 : Data signal of to_process_list_hbm4
//         bit 31~0 - to_process_list_hbm4[63:32] (Read/Write)
// 0x7c8 : reserved
// 0x7cc : Data signal of to_process_list_hbm5
//         bit 31~0 - to_process_list_hbm5[31:0] (Read/Write)
// 0x7d0 : Data signal of to_process_list_hbm5
//         bit 31~0 - to_process_list_hbm5[63:32] (Read/Write)
// 0x7d4 : reserved
// 0x7d8 : Data signal of to_process_list_hbm6
//         bit 31~0 - to_process_list_hbm6[31:0] (Read/Write)
// 0x7dc : Data signal of to_process_list_hbm6
//         bit 31~0 - to_process_list_hbm6[63:32] (Read/Write)
// 0x7e0 : reserved
// 0x7e4 : Data signal of to_process_list_hbm7
//         bit 31~0 - to_process_list_hbm7[31:0] (Read/Write)
// 0x7e8 : Data signal of to_process_list_hbm7
//         bit 31~0 - to_process_list_hbm7[63:32] (Read/Write)
// 0x7ec : reserved
// 0x7f0 : Data signal of to_process_list_hbm8
//         bit 31~0 - to_process_list_hbm8[31:0] (Read/Write)
// 0x7f4 : Data signal of to_process_list_hbm8
//         bit 31~0 - to_process_list_hbm8[63:32] (Read/Write)
// 0x7f8 : reserved
// 0x7fc : Data signal of to_process_list_hbm9
//         bit 31~0 - to_process_list_hbm9[31:0] (Read/Write)
// 0x800 : Data signal of to_process_list_hbm9
//         bit 31~0 - to_process_list_hbm9[63:32] (Read/Write)
// 0x804 : reserved
// 0x808 : Data signal of to_process_list_hbm10
//         bit 31~0 - to_process_list_hbm10[31:0] (Read/Write)
// 0x80c : Data signal of to_process_list_hbm10
//         bit 31~0 - to_process_list_hbm10[63:32] (Read/Write)
// 0x810 : reserved
// 0x814 : Data signal of to_process_list_hbm11
//         bit 31~0 - to_process_list_hbm11[31:0] (Read/Write)
// 0x818 : Data signal of to_process_list_hbm11
//         bit 31~0 - to_process_list_hbm11[63:32] (Read/Write)
// 0x81c : reserved
// 0x820 : Data signal of to_process_list_hbm12
//         bit 31~0 - to_process_list_hbm12[31:0] (Read/Write)
// 0x824 : Data signal of to_process_list_hbm12
//         bit 31~0 - to_process_list_hbm12[63:32] (Read/Write)
// 0x828 : reserved
// 0x82c : Data signal of to_process_list_hbm13
//         bit 31~0 - to_process_list_hbm13[31:0] (Read/Write)
// 0x830 : Data signal of to_process_list_hbm13
//         bit 31~0 - to_process_list_hbm13[63:32] (Read/Write)
// 0x834 : reserved
// 0x838 : Data signal of to_process_list_hbm14
//         bit 31~0 - to_process_list_hbm14[31:0] (Read/Write)
// 0x83c : Data signal of to_process_list_hbm14
//         bit 31~0 - to_process_list_hbm14[63:32] (Read/Write)
// 0x840 : reserved
// 0x844 : Data signal of to_process_list_hbm15
//         bit 31~0 - to_process_list_hbm15[31:0] (Read/Write)
// 0x848 : Data signal of to_process_list_hbm15
//         bit 31~0 - to_process_list_hbm15[63:32] (Read/Write)
// 0x84c : reserved
// 0x850 : Data signal of to_process_count_hbm0
//         bit 31~0 - to_process_count_hbm0[31:0] (Read/Write)
// 0x854 : reserved
// 0x858 : Data signal of to_process_count_hbm1
//         bit 31~0 - to_process_count_hbm1[31:0] (Read/Write)
// 0x85c : reserved
// 0x860 : Data signal of to_process_count_hbm2
//         bit 31~0 - to_process_count_hbm2[31:0] (Read/Write)
// 0x864 : reserved
// 0x868 : Data signal of to_process_count_hbm3
//         bit 31~0 - to_process_count_hbm3[31:0] (Read/Write)
// 0x86c : reserved
// 0x870 : Data signal of to_process_count_hbm4
//         bit 31~0 - to_process_count_hbm4[31:0] (Read/Write)
// 0x874 : reserved
// 0x878 : Data signal of to_process_count_hbm5
//         bit 31~0 - to_process_count_hbm5[31:0] (Read/Write)
// 0x87c : reserved
// 0x880 : Data signal of to_process_count_hbm6
//         bit 31~0 - to_process_count_hbm6[31:0] (Read/Write)
// 0x884 : reserved
// 0x888 : Data signal of to_process_count_hbm7
//         bit 31~0 - to_process_count_hbm7[31:0] (Read/Write)
// 0x88c : reserved
// 0x890 : Data signal of to_process_count_hbm8
//         bit 31~0 - to_process_count_hbm8[31:0] (Read/Write)
// 0x894 : reserved
// 0x898 : Data signal of to_process_count_hbm9
//         bit 31~0 - to_process_count_hbm9[31:0] (Read/Write)
// 0x89c : reserved
// 0x8a0 : Data signal of to_process_count_hbm10
//         bit 31~0 - to_process_count_hbm10[31:0] (Read/Write)
// 0x8a4 : reserved
// 0x8a8 : Data signal of to_process_count_hbm11
//         bit 31~0 - to_process_count_hbm11[31:0] (Read/Write)
// 0x8ac : reserved
// 0x8b0 : Data signal of to_process_count_hbm12
//         bit 31~0 - to_process_count_hbm12[31:0] (Read/Write)
// 0x8b4 : reserved
// 0x8b8 : Data signal of to_process_count_hbm13
//         bit 31~0 - to_process_count_hbm13[31:0] (Read/Write)
// 0x8bc : reserved
// 0x8c0 : Data signal of to_process_count_hbm14
//         bit 31~0 - to_process_count_hbm14[31:0] (Read/Write)
// 0x8c4 : reserved
// 0x8c8 : Data signal of to_process_count_hbm15
//         bit 31~0 - to_process_count_hbm15[31:0] (Read/Write)
// 0x8cc : reserved
// 0x8d0 : Data signal of stage
//         bit 31~0 - stage[31:0] (Read/Write)
// 0x8d4 : reserved
// 0x8d8 : Data signal of r
//         bit 31~0 - r[31:0] (Read/Write)
// 0x8dc : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                       = 12'h000,
    ADDR_GIE                           = 12'h004,
    ADDR_IER                           = 12'h008,
    ADDR_ISR                           = 12'h00c,
    ADDR_V_VALUE_HBM0_DATA_0           = 12'h010,
    ADDR_V_VALUE_HBM0_DATA_1           = 12'h014,
    ADDR_V_VALUE_HBM0_CTRL             = 12'h018,
    ADDR_V_VALUE_HBM1_DATA_0           = 12'h01c,
    ADDR_V_VALUE_HBM1_DATA_1           = 12'h020,
    ADDR_V_VALUE_HBM1_CTRL             = 12'h024,
    ADDR_V_VALUE_HBM2_DATA_0           = 12'h028,
    ADDR_V_VALUE_HBM2_DATA_1           = 12'h02c,
    ADDR_V_VALUE_HBM2_CTRL             = 12'h030,
    ADDR_V_VALUE_HBM3_DATA_0           = 12'h034,
    ADDR_V_VALUE_HBM3_DATA_1           = 12'h038,
    ADDR_V_VALUE_HBM3_CTRL             = 12'h03c,
    ADDR_V_VALUE_HBM4_DATA_0           = 12'h040,
    ADDR_V_VALUE_HBM4_DATA_1           = 12'h044,
    ADDR_V_VALUE_HBM4_CTRL             = 12'h048,
    ADDR_V_VALUE_HBM5_DATA_0           = 12'h04c,
    ADDR_V_VALUE_HBM5_DATA_1           = 12'h050,
    ADDR_V_VALUE_HBM5_CTRL             = 12'h054,
    ADDR_V_VALUE_HBM6_DATA_0           = 12'h058,
    ADDR_V_VALUE_HBM6_DATA_1           = 12'h05c,
    ADDR_V_VALUE_HBM6_CTRL             = 12'h060,
    ADDR_V_VALUE_HBM7_DATA_0           = 12'h064,
    ADDR_V_VALUE_HBM7_DATA_1           = 12'h068,
    ADDR_V_VALUE_HBM7_CTRL             = 12'h06c,
    ADDR_V_VALUE_HBM8_DATA_0           = 12'h070,
    ADDR_V_VALUE_HBM8_DATA_1           = 12'h074,
    ADDR_V_VALUE_HBM8_CTRL             = 12'h078,
    ADDR_V_VALUE_HBM9_DATA_0           = 12'h07c,
    ADDR_V_VALUE_HBM9_DATA_1           = 12'h080,
    ADDR_V_VALUE_HBM9_CTRL             = 12'h084,
    ADDR_V_VALUE_HBM10_DATA_0          = 12'h088,
    ADDR_V_VALUE_HBM10_DATA_1          = 12'h08c,
    ADDR_V_VALUE_HBM10_CTRL            = 12'h090,
    ADDR_V_VALUE_HBM11_DATA_0          = 12'h094,
    ADDR_V_VALUE_HBM11_DATA_1          = 12'h098,
    ADDR_V_VALUE_HBM11_CTRL            = 12'h09c,
    ADDR_V_VALUE_HBM12_DATA_0          = 12'h0a0,
    ADDR_V_VALUE_HBM12_DATA_1          = 12'h0a4,
    ADDR_V_VALUE_HBM12_CTRL            = 12'h0a8,
    ADDR_V_VALUE_HBM13_DATA_0          = 12'h0ac,
    ADDR_V_VALUE_HBM13_DATA_1          = 12'h0b0,
    ADDR_V_VALUE_HBM13_CTRL            = 12'h0b4,
    ADDR_V_VALUE_HBM14_DATA_0          = 12'h0b8,
    ADDR_V_VALUE_HBM14_DATA_1          = 12'h0bc,
    ADDR_V_VALUE_HBM14_CTRL            = 12'h0c0,
    ADDR_V_VALUE_HBM15_DATA_0          = 12'h0c4,
    ADDR_V_VALUE_HBM15_DATA_1          = 12'h0c8,
    ADDR_V_VALUE_HBM15_CTRL            = 12'h0cc,
    ADDR_H_VALUE_HBM0_DATA_0           = 12'h0d0,
    ADDR_H_VALUE_HBM0_DATA_1           = 12'h0d4,
    ADDR_H_VALUE_HBM0_CTRL             = 12'h0d8,
    ADDR_H_VALUE_HBM1_DATA_0           = 12'h0dc,
    ADDR_H_VALUE_HBM1_DATA_1           = 12'h0e0,
    ADDR_H_VALUE_HBM1_CTRL             = 12'h0e4,
    ADDR_H_VALUE_HBM2_DATA_0           = 12'h0e8,
    ADDR_H_VALUE_HBM2_DATA_1           = 12'h0ec,
    ADDR_H_VALUE_HBM2_CTRL             = 12'h0f0,
    ADDR_H_VALUE_HBM3_DATA_0           = 12'h0f4,
    ADDR_H_VALUE_HBM3_DATA_1           = 12'h0f8,
    ADDR_H_VALUE_HBM3_CTRL             = 12'h0fc,
    ADDR_H_VALUE_HBM4_DATA_0           = 12'h100,
    ADDR_H_VALUE_HBM4_DATA_1           = 12'h104,
    ADDR_H_VALUE_HBM4_CTRL             = 12'h108,
    ADDR_H_VALUE_HBM5_DATA_0           = 12'h10c,
    ADDR_H_VALUE_HBM5_DATA_1           = 12'h110,
    ADDR_H_VALUE_HBM5_CTRL             = 12'h114,
    ADDR_H_VALUE_HBM6_DATA_0           = 12'h118,
    ADDR_H_VALUE_HBM6_DATA_1           = 12'h11c,
    ADDR_H_VALUE_HBM6_CTRL             = 12'h120,
    ADDR_H_VALUE_HBM7_DATA_0           = 12'h124,
    ADDR_H_VALUE_HBM7_DATA_1           = 12'h128,
    ADDR_H_VALUE_HBM7_CTRL             = 12'h12c,
    ADDR_H_VALUE_HBM8_DATA_0           = 12'h130,
    ADDR_H_VALUE_HBM8_DATA_1           = 12'h134,
    ADDR_H_VALUE_HBM8_CTRL             = 12'h138,
    ADDR_H_VALUE_HBM9_DATA_0           = 12'h13c,
    ADDR_H_VALUE_HBM9_DATA_1           = 12'h140,
    ADDR_H_VALUE_HBM9_CTRL             = 12'h144,
    ADDR_H_VALUE_HBM10_DATA_0          = 12'h148,
    ADDR_H_VALUE_HBM10_DATA_1          = 12'h14c,
    ADDR_H_VALUE_HBM10_CTRL            = 12'h150,
    ADDR_H_VALUE_HBM11_DATA_0          = 12'h154,
    ADDR_H_VALUE_HBM11_DATA_1          = 12'h158,
    ADDR_H_VALUE_HBM11_CTRL            = 12'h15c,
    ADDR_H_VALUE_HBM12_DATA_0          = 12'h160,
    ADDR_H_VALUE_HBM12_DATA_1          = 12'h164,
    ADDR_H_VALUE_HBM12_CTRL            = 12'h168,
    ADDR_H_VALUE_HBM13_DATA_0          = 12'h16c,
    ADDR_H_VALUE_HBM13_DATA_1          = 12'h170,
    ADDR_H_VALUE_HBM13_CTRL            = 12'h174,
    ADDR_H_VALUE_HBM14_DATA_0          = 12'h178,
    ADDR_H_VALUE_HBM14_DATA_1          = 12'h17c,
    ADDR_H_VALUE_HBM14_CTRL            = 12'h180,
    ADDR_H_VALUE_HBM15_DATA_0          = 12'h184,
    ADDR_H_VALUE_HBM15_DATA_1          = 12'h188,
    ADDR_H_VALUE_HBM15_CTRL            = 12'h18c,
    ADDR_V_NUMPATHS_HBM0_DATA_0        = 12'h190,
    ADDR_V_NUMPATHS_HBM0_DATA_1        = 12'h194,
    ADDR_V_NUMPATHS_HBM0_CTRL          = 12'h198,
    ADDR_V_NUMPATHS_HBM1_DATA_0        = 12'h19c,
    ADDR_V_NUMPATHS_HBM1_DATA_1        = 12'h1a0,
    ADDR_V_NUMPATHS_HBM1_CTRL          = 12'h1a4,
    ADDR_V_NUMPATHS_HBM2_DATA_0        = 12'h1a8,
    ADDR_V_NUMPATHS_HBM2_DATA_1        = 12'h1ac,
    ADDR_V_NUMPATHS_HBM2_CTRL          = 12'h1b0,
    ADDR_V_NUMPATHS_HBM3_DATA_0        = 12'h1b4,
    ADDR_V_NUMPATHS_HBM3_DATA_1        = 12'h1b8,
    ADDR_V_NUMPATHS_HBM3_CTRL          = 12'h1bc,
    ADDR_V_NUMPATHS_HBM4_DATA_0        = 12'h1c0,
    ADDR_V_NUMPATHS_HBM4_DATA_1        = 12'h1c4,
    ADDR_V_NUMPATHS_HBM4_CTRL          = 12'h1c8,
    ADDR_V_NUMPATHS_HBM5_DATA_0        = 12'h1cc,
    ADDR_V_NUMPATHS_HBM5_DATA_1        = 12'h1d0,
    ADDR_V_NUMPATHS_HBM5_CTRL          = 12'h1d4,
    ADDR_V_NUMPATHS_HBM6_DATA_0        = 12'h1d8,
    ADDR_V_NUMPATHS_HBM6_DATA_1        = 12'h1dc,
    ADDR_V_NUMPATHS_HBM6_CTRL          = 12'h1e0,
    ADDR_V_NUMPATHS_HBM7_DATA_0        = 12'h1e4,
    ADDR_V_NUMPATHS_HBM7_DATA_1        = 12'h1e8,
    ADDR_V_NUMPATHS_HBM7_CTRL          = 12'h1ec,
    ADDR_V_NUMPATHS_HBM8_DATA_0        = 12'h1f0,
    ADDR_V_NUMPATHS_HBM8_DATA_1        = 12'h1f4,
    ADDR_V_NUMPATHS_HBM8_CTRL          = 12'h1f8,
    ADDR_V_NUMPATHS_HBM9_DATA_0        = 12'h1fc,
    ADDR_V_NUMPATHS_HBM9_DATA_1        = 12'h200,
    ADDR_V_NUMPATHS_HBM9_CTRL          = 12'h204,
    ADDR_V_NUMPATHS_HBM10_DATA_0       = 12'h208,
    ADDR_V_NUMPATHS_HBM10_DATA_1       = 12'h20c,
    ADDR_V_NUMPATHS_HBM10_CTRL         = 12'h210,
    ADDR_V_NUMPATHS_HBM11_DATA_0       = 12'h214,
    ADDR_V_NUMPATHS_HBM11_DATA_1       = 12'h218,
    ADDR_V_NUMPATHS_HBM11_CTRL         = 12'h21c,
    ADDR_V_NUMPATHS_HBM12_DATA_0       = 12'h220,
    ADDR_V_NUMPATHS_HBM12_DATA_1       = 12'h224,
    ADDR_V_NUMPATHS_HBM12_CTRL         = 12'h228,
    ADDR_V_NUMPATHS_HBM13_DATA_0       = 12'h22c,
    ADDR_V_NUMPATHS_HBM13_DATA_1       = 12'h230,
    ADDR_V_NUMPATHS_HBM13_CTRL         = 12'h234,
    ADDR_V_NUMPATHS_HBM14_DATA_0       = 12'h238,
    ADDR_V_NUMPATHS_HBM14_DATA_1       = 12'h23c,
    ADDR_V_NUMPATHS_HBM14_CTRL         = 12'h240,
    ADDR_V_NUMPATHS_HBM15_DATA_0       = 12'h244,
    ADDR_V_NUMPATHS_HBM15_DATA_1       = 12'h248,
    ADDR_V_NUMPATHS_HBM15_CTRL         = 12'h24c,
    ADDR_H_NUMPATHS_HBM0_DATA_0        = 12'h250,
    ADDR_H_NUMPATHS_HBM0_DATA_1        = 12'h254,
    ADDR_H_NUMPATHS_HBM0_CTRL          = 12'h258,
    ADDR_H_NUMPATHS_HBM1_DATA_0        = 12'h25c,
    ADDR_H_NUMPATHS_HBM1_DATA_1        = 12'h260,
    ADDR_H_NUMPATHS_HBM1_CTRL          = 12'h264,
    ADDR_H_NUMPATHS_HBM2_DATA_0        = 12'h268,
    ADDR_H_NUMPATHS_HBM2_DATA_1        = 12'h26c,
    ADDR_H_NUMPATHS_HBM2_CTRL          = 12'h270,
    ADDR_H_NUMPATHS_HBM3_DATA_0        = 12'h274,
    ADDR_H_NUMPATHS_HBM3_DATA_1        = 12'h278,
    ADDR_H_NUMPATHS_HBM3_CTRL          = 12'h27c,
    ADDR_H_NUMPATHS_HBM4_DATA_0        = 12'h280,
    ADDR_H_NUMPATHS_HBM4_DATA_1        = 12'h284,
    ADDR_H_NUMPATHS_HBM4_CTRL          = 12'h288,
    ADDR_H_NUMPATHS_HBM5_DATA_0        = 12'h28c,
    ADDR_H_NUMPATHS_HBM5_DATA_1        = 12'h290,
    ADDR_H_NUMPATHS_HBM5_CTRL          = 12'h294,
    ADDR_H_NUMPATHS_HBM6_DATA_0        = 12'h298,
    ADDR_H_NUMPATHS_HBM6_DATA_1        = 12'h29c,
    ADDR_H_NUMPATHS_HBM6_CTRL          = 12'h2a0,
    ADDR_H_NUMPATHS_HBM7_DATA_0        = 12'h2a4,
    ADDR_H_NUMPATHS_HBM7_DATA_1        = 12'h2a8,
    ADDR_H_NUMPATHS_HBM7_CTRL          = 12'h2ac,
    ADDR_H_NUMPATHS_HBM8_DATA_0        = 12'h2b0,
    ADDR_H_NUMPATHS_HBM8_DATA_1        = 12'h2b4,
    ADDR_H_NUMPATHS_HBM8_CTRL          = 12'h2b8,
    ADDR_H_NUMPATHS_HBM9_DATA_0        = 12'h2bc,
    ADDR_H_NUMPATHS_HBM9_DATA_1        = 12'h2c0,
    ADDR_H_NUMPATHS_HBM9_CTRL          = 12'h2c4,
    ADDR_H_NUMPATHS_HBM10_DATA_0       = 12'h2c8,
    ADDR_H_NUMPATHS_HBM10_DATA_1       = 12'h2cc,
    ADDR_H_NUMPATHS_HBM10_CTRL         = 12'h2d0,
    ADDR_H_NUMPATHS_HBM11_DATA_0       = 12'h2d4,
    ADDR_H_NUMPATHS_HBM11_DATA_1       = 12'h2d8,
    ADDR_H_NUMPATHS_HBM11_CTRL         = 12'h2dc,
    ADDR_H_NUMPATHS_HBM12_DATA_0       = 12'h2e0,
    ADDR_H_NUMPATHS_HBM12_DATA_1       = 12'h2e4,
    ADDR_H_NUMPATHS_HBM12_CTRL         = 12'h2e8,
    ADDR_H_NUMPATHS_HBM13_DATA_0       = 12'h2ec,
    ADDR_H_NUMPATHS_HBM13_DATA_1       = 12'h2f0,
    ADDR_H_NUMPATHS_HBM13_CTRL         = 12'h2f4,
    ADDR_H_NUMPATHS_HBM14_DATA_0       = 12'h2f8,
    ADDR_H_NUMPATHS_HBM14_DATA_1       = 12'h2fc,
    ADDR_H_NUMPATHS_HBM14_CTRL         = 12'h300,
    ADDR_H_NUMPATHS_HBM15_DATA_0       = 12'h304,
    ADDR_H_NUMPATHS_HBM15_DATA_1       = 12'h308,
    ADDR_H_NUMPATHS_HBM15_CTRL         = 12'h30c,
    ADDR_V_DEPENDENCIES_HBM0_DATA_0    = 12'h310,
    ADDR_V_DEPENDENCIES_HBM0_DATA_1    = 12'h314,
    ADDR_V_DEPENDENCIES_HBM0_CTRL      = 12'h318,
    ADDR_V_DEPENDENCIES_HBM1_DATA_0    = 12'h31c,
    ADDR_V_DEPENDENCIES_HBM1_DATA_1    = 12'h320,
    ADDR_V_DEPENDENCIES_HBM1_CTRL      = 12'h324,
    ADDR_V_DEPENDENCIES_HBM2_DATA_0    = 12'h328,
    ADDR_V_DEPENDENCIES_HBM2_DATA_1    = 12'h32c,
    ADDR_V_DEPENDENCIES_HBM2_CTRL      = 12'h330,
    ADDR_V_DEPENDENCIES_HBM3_DATA_0    = 12'h334,
    ADDR_V_DEPENDENCIES_HBM3_DATA_1    = 12'h338,
    ADDR_V_DEPENDENCIES_HBM3_CTRL      = 12'h33c,
    ADDR_V_DEPENDENCIES_HBM4_DATA_0    = 12'h340,
    ADDR_V_DEPENDENCIES_HBM4_DATA_1    = 12'h344,
    ADDR_V_DEPENDENCIES_HBM4_CTRL      = 12'h348,
    ADDR_V_DEPENDENCIES_HBM5_DATA_0    = 12'h34c,
    ADDR_V_DEPENDENCIES_HBM5_DATA_1    = 12'h350,
    ADDR_V_DEPENDENCIES_HBM5_CTRL      = 12'h354,
    ADDR_V_DEPENDENCIES_HBM6_DATA_0    = 12'h358,
    ADDR_V_DEPENDENCIES_HBM6_DATA_1    = 12'h35c,
    ADDR_V_DEPENDENCIES_HBM6_CTRL      = 12'h360,
    ADDR_V_DEPENDENCIES_HBM7_DATA_0    = 12'h364,
    ADDR_V_DEPENDENCIES_HBM7_DATA_1    = 12'h368,
    ADDR_V_DEPENDENCIES_HBM7_CTRL      = 12'h36c,
    ADDR_V_DEPENDENCIES_HBM8_DATA_0    = 12'h370,
    ADDR_V_DEPENDENCIES_HBM8_DATA_1    = 12'h374,
    ADDR_V_DEPENDENCIES_HBM8_CTRL      = 12'h378,
    ADDR_V_DEPENDENCIES_HBM9_DATA_0    = 12'h37c,
    ADDR_V_DEPENDENCIES_HBM9_DATA_1    = 12'h380,
    ADDR_V_DEPENDENCIES_HBM9_CTRL      = 12'h384,
    ADDR_V_DEPENDENCIES_HBM10_DATA_0   = 12'h388,
    ADDR_V_DEPENDENCIES_HBM10_DATA_1   = 12'h38c,
    ADDR_V_DEPENDENCIES_HBM10_CTRL     = 12'h390,
    ADDR_V_DEPENDENCIES_HBM11_DATA_0   = 12'h394,
    ADDR_V_DEPENDENCIES_HBM11_DATA_1   = 12'h398,
    ADDR_V_DEPENDENCIES_HBM11_CTRL     = 12'h39c,
    ADDR_V_DEPENDENCIES_HBM12_DATA_0   = 12'h3a0,
    ADDR_V_DEPENDENCIES_HBM12_DATA_1   = 12'h3a4,
    ADDR_V_DEPENDENCIES_HBM12_CTRL     = 12'h3a8,
    ADDR_V_DEPENDENCIES_HBM13_DATA_0   = 12'h3ac,
    ADDR_V_DEPENDENCIES_HBM13_DATA_1   = 12'h3b0,
    ADDR_V_DEPENDENCIES_HBM13_CTRL     = 12'h3b4,
    ADDR_V_DEPENDENCIES_HBM14_DATA_0   = 12'h3b8,
    ADDR_V_DEPENDENCIES_HBM14_DATA_1   = 12'h3bc,
    ADDR_V_DEPENDENCIES_HBM14_CTRL     = 12'h3c0,
    ADDR_V_DEPENDENCIES_HBM15_DATA_0   = 12'h3c4,
    ADDR_V_DEPENDENCIES_HBM15_DATA_1   = 12'h3c8,
    ADDR_V_DEPENDENCIES_HBM15_CTRL     = 12'h3cc,
    ADDR_H_DEPENDENCIES_HBM0_DATA_0    = 12'h3d0,
    ADDR_H_DEPENDENCIES_HBM0_DATA_1    = 12'h3d4,
    ADDR_H_DEPENDENCIES_HBM0_CTRL      = 12'h3d8,
    ADDR_H_DEPENDENCIES_HBM1_DATA_0    = 12'h3dc,
    ADDR_H_DEPENDENCIES_HBM1_DATA_1    = 12'h3e0,
    ADDR_H_DEPENDENCIES_HBM1_CTRL      = 12'h3e4,
    ADDR_H_DEPENDENCIES_HBM2_DATA_0    = 12'h3e8,
    ADDR_H_DEPENDENCIES_HBM2_DATA_1    = 12'h3ec,
    ADDR_H_DEPENDENCIES_HBM2_CTRL      = 12'h3f0,
    ADDR_H_DEPENDENCIES_HBM3_DATA_0    = 12'h3f4,
    ADDR_H_DEPENDENCIES_HBM3_DATA_1    = 12'h3f8,
    ADDR_H_DEPENDENCIES_HBM3_CTRL      = 12'h3fc,
    ADDR_H_DEPENDENCIES_HBM4_DATA_0    = 12'h400,
    ADDR_H_DEPENDENCIES_HBM4_DATA_1    = 12'h404,
    ADDR_H_DEPENDENCIES_HBM4_CTRL      = 12'h408,
    ADDR_H_DEPENDENCIES_HBM5_DATA_0    = 12'h40c,
    ADDR_H_DEPENDENCIES_HBM5_DATA_1    = 12'h410,
    ADDR_H_DEPENDENCIES_HBM5_CTRL      = 12'h414,
    ADDR_H_DEPENDENCIES_HBM6_DATA_0    = 12'h418,
    ADDR_H_DEPENDENCIES_HBM6_DATA_1    = 12'h41c,
    ADDR_H_DEPENDENCIES_HBM6_CTRL      = 12'h420,
    ADDR_H_DEPENDENCIES_HBM7_DATA_0    = 12'h424,
    ADDR_H_DEPENDENCIES_HBM7_DATA_1    = 12'h428,
    ADDR_H_DEPENDENCIES_HBM7_CTRL      = 12'h42c,
    ADDR_H_DEPENDENCIES_HBM8_DATA_0    = 12'h430,
    ADDR_H_DEPENDENCIES_HBM8_DATA_1    = 12'h434,
    ADDR_H_DEPENDENCIES_HBM8_CTRL      = 12'h438,
    ADDR_H_DEPENDENCIES_HBM9_DATA_0    = 12'h43c,
    ADDR_H_DEPENDENCIES_HBM9_DATA_1    = 12'h440,
    ADDR_H_DEPENDENCIES_HBM9_CTRL      = 12'h444,
    ADDR_H_DEPENDENCIES_HBM10_DATA_0   = 12'h448,
    ADDR_H_DEPENDENCIES_HBM10_DATA_1   = 12'h44c,
    ADDR_H_DEPENDENCIES_HBM10_CTRL     = 12'h450,
    ADDR_H_DEPENDENCIES_HBM11_DATA_0   = 12'h454,
    ADDR_H_DEPENDENCIES_HBM11_DATA_1   = 12'h458,
    ADDR_H_DEPENDENCIES_HBM11_CTRL     = 12'h45c,
    ADDR_H_DEPENDENCIES_HBM12_DATA_0   = 12'h460,
    ADDR_H_DEPENDENCIES_HBM12_DATA_1   = 12'h464,
    ADDR_H_DEPENDENCIES_HBM12_CTRL     = 12'h468,
    ADDR_H_DEPENDENCIES_HBM13_DATA_0   = 12'h46c,
    ADDR_H_DEPENDENCIES_HBM13_DATA_1   = 12'h470,
    ADDR_H_DEPENDENCIES_HBM13_CTRL     = 12'h474,
    ADDR_H_DEPENDENCIES_HBM14_DATA_0   = 12'h478,
    ADDR_H_DEPENDENCIES_HBM14_DATA_1   = 12'h47c,
    ADDR_H_DEPENDENCIES_HBM14_CTRL     = 12'h480,
    ADDR_H_DEPENDENCIES_HBM15_DATA_0   = 12'h484,
    ADDR_H_DEPENDENCIES_HBM15_DATA_1   = 12'h488,
    ADDR_H_DEPENDENCIES_HBM15_CTRL     = 12'h48c,
    ADDR_VH_OFFSET_HBM0_DATA_0         = 12'h490,
    ADDR_VH_OFFSET_HBM0_DATA_1         = 12'h494,
    ADDR_VH_OFFSET_HBM0_CTRL           = 12'h498,
    ADDR_VH_OFFSET_HBM1_DATA_0         = 12'h49c,
    ADDR_VH_OFFSET_HBM1_DATA_1         = 12'h4a0,
    ADDR_VH_OFFSET_HBM1_CTRL           = 12'h4a4,
    ADDR_VH_OFFSET_HBM2_DATA_0         = 12'h4a8,
    ADDR_VH_OFFSET_HBM2_DATA_1         = 12'h4ac,
    ADDR_VH_OFFSET_HBM2_CTRL           = 12'h4b0,
    ADDR_VH_OFFSET_HBM3_DATA_0         = 12'h4b4,
    ADDR_VH_OFFSET_HBM3_DATA_1         = 12'h4b8,
    ADDR_VH_OFFSET_HBM3_CTRL           = 12'h4bc,
    ADDR_VH_OFFSET_HBM4_DATA_0         = 12'h4c0,
    ADDR_VH_OFFSET_HBM4_DATA_1         = 12'h4c4,
    ADDR_VH_OFFSET_HBM4_CTRL           = 12'h4c8,
    ADDR_VH_OFFSET_HBM5_DATA_0         = 12'h4cc,
    ADDR_VH_OFFSET_HBM5_DATA_1         = 12'h4d0,
    ADDR_VH_OFFSET_HBM5_CTRL           = 12'h4d4,
    ADDR_VH_OFFSET_HBM6_DATA_0         = 12'h4d8,
    ADDR_VH_OFFSET_HBM6_DATA_1         = 12'h4dc,
    ADDR_VH_OFFSET_HBM6_CTRL           = 12'h4e0,
    ADDR_VH_OFFSET_HBM7_DATA_0         = 12'h4e4,
    ADDR_VH_OFFSET_HBM7_DATA_1         = 12'h4e8,
    ADDR_VH_OFFSET_HBM7_CTRL           = 12'h4ec,
    ADDR_VH_OFFSET_HBM8_DATA_0         = 12'h4f0,
    ADDR_VH_OFFSET_HBM8_DATA_1         = 12'h4f4,
    ADDR_VH_OFFSET_HBM8_CTRL           = 12'h4f8,
    ADDR_VH_OFFSET_HBM9_DATA_0         = 12'h4fc,
    ADDR_VH_OFFSET_HBM9_DATA_1         = 12'h500,
    ADDR_VH_OFFSET_HBM9_CTRL           = 12'h504,
    ADDR_VH_OFFSET_HBM10_DATA_0        = 12'h508,
    ADDR_VH_OFFSET_HBM10_DATA_1        = 12'h50c,
    ADDR_VH_OFFSET_HBM10_CTRL          = 12'h510,
    ADDR_VH_OFFSET_HBM11_DATA_0        = 12'h514,
    ADDR_VH_OFFSET_HBM11_DATA_1        = 12'h518,
    ADDR_VH_OFFSET_HBM11_CTRL          = 12'h51c,
    ADDR_VH_OFFSET_HBM12_DATA_0        = 12'h520,
    ADDR_VH_OFFSET_HBM12_DATA_1        = 12'h524,
    ADDR_VH_OFFSET_HBM12_CTRL          = 12'h528,
    ADDR_VH_OFFSET_HBM13_DATA_0        = 12'h52c,
    ADDR_VH_OFFSET_HBM13_DATA_1        = 12'h530,
    ADDR_VH_OFFSET_HBM13_CTRL          = 12'h534,
    ADDR_VH_OFFSET_HBM14_DATA_0        = 12'h538,
    ADDR_VH_OFFSET_HBM14_DATA_1        = 12'h53c,
    ADDR_VH_OFFSET_HBM14_CTRL          = 12'h540,
    ADDR_VH_OFFSET_HBM15_DATA_0        = 12'h544,
    ADDR_VH_OFFSET_HBM15_DATA_1        = 12'h548,
    ADDR_VH_OFFSET_HBM15_CTRL          = 12'h54c,
    ADDR_VH_INDEX_HBM0_DATA_0          = 12'h550,
    ADDR_VH_INDEX_HBM0_DATA_1          = 12'h554,
    ADDR_VH_INDEX_HBM0_CTRL            = 12'h558,
    ADDR_VH_INDEX_HBM1_DATA_0          = 12'h55c,
    ADDR_VH_INDEX_HBM1_DATA_1          = 12'h560,
    ADDR_VH_INDEX_HBM1_CTRL            = 12'h564,
    ADDR_VH_INDEX_HBM2_DATA_0          = 12'h568,
    ADDR_VH_INDEX_HBM2_DATA_1          = 12'h56c,
    ADDR_VH_INDEX_HBM2_CTRL            = 12'h570,
    ADDR_VH_INDEX_HBM3_DATA_0          = 12'h574,
    ADDR_VH_INDEX_HBM3_DATA_1          = 12'h578,
    ADDR_VH_INDEX_HBM3_CTRL            = 12'h57c,
    ADDR_VH_INDEX_HBM4_DATA_0          = 12'h580,
    ADDR_VH_INDEX_HBM4_DATA_1          = 12'h584,
    ADDR_VH_INDEX_HBM4_CTRL            = 12'h588,
    ADDR_VH_INDEX_HBM5_DATA_0          = 12'h58c,
    ADDR_VH_INDEX_HBM5_DATA_1          = 12'h590,
    ADDR_VH_INDEX_HBM5_CTRL            = 12'h594,
    ADDR_VH_INDEX_HBM6_DATA_0          = 12'h598,
    ADDR_VH_INDEX_HBM6_DATA_1          = 12'h59c,
    ADDR_VH_INDEX_HBM6_CTRL            = 12'h5a0,
    ADDR_VH_INDEX_HBM7_DATA_0          = 12'h5a4,
    ADDR_VH_INDEX_HBM7_DATA_1          = 12'h5a8,
    ADDR_VH_INDEX_HBM7_CTRL            = 12'h5ac,
    ADDR_VH_INDEX_HBM8_DATA_0          = 12'h5b0,
    ADDR_VH_INDEX_HBM8_DATA_1          = 12'h5b4,
    ADDR_VH_INDEX_HBM8_CTRL            = 12'h5b8,
    ADDR_VH_INDEX_HBM9_DATA_0          = 12'h5bc,
    ADDR_VH_INDEX_HBM9_DATA_1          = 12'h5c0,
    ADDR_VH_INDEX_HBM9_CTRL            = 12'h5c4,
    ADDR_VH_INDEX_HBM10_DATA_0         = 12'h5c8,
    ADDR_VH_INDEX_HBM10_DATA_1         = 12'h5cc,
    ADDR_VH_INDEX_HBM10_CTRL           = 12'h5d0,
    ADDR_VH_INDEX_HBM11_DATA_0         = 12'h5d4,
    ADDR_VH_INDEX_HBM11_DATA_1         = 12'h5d8,
    ADDR_VH_INDEX_HBM11_CTRL           = 12'h5dc,
    ADDR_VH_INDEX_HBM12_DATA_0         = 12'h5e0,
    ADDR_VH_INDEX_HBM12_DATA_1         = 12'h5e4,
    ADDR_VH_INDEX_HBM12_CTRL           = 12'h5e8,
    ADDR_VH_INDEX_HBM13_DATA_0         = 12'h5ec,
    ADDR_VH_INDEX_HBM13_DATA_1         = 12'h5f0,
    ADDR_VH_INDEX_HBM13_CTRL           = 12'h5f4,
    ADDR_VH_INDEX_HBM14_DATA_0         = 12'h5f8,
    ADDR_VH_INDEX_HBM14_DATA_1         = 12'h5fc,
    ADDR_VH_INDEX_HBM14_CTRL           = 12'h600,
    ADDR_VH_INDEX_HBM15_DATA_0         = 12'h604,
    ADDR_VH_INDEX_HBM15_DATA_1         = 12'h608,
    ADDR_VH_INDEX_HBM15_CTRL           = 12'h60c,
    ADDR_HV_OFFSET_HBM0_DATA_0         = 12'h610,
    ADDR_HV_OFFSET_HBM0_DATA_1         = 12'h614,
    ADDR_HV_OFFSET_HBM0_CTRL           = 12'h618,
    ADDR_HV_OFFSET_HBM1_DATA_0         = 12'h61c,
    ADDR_HV_OFFSET_HBM1_DATA_1         = 12'h620,
    ADDR_HV_OFFSET_HBM1_CTRL           = 12'h624,
    ADDR_HV_OFFSET_HBM2_DATA_0         = 12'h628,
    ADDR_HV_OFFSET_HBM2_DATA_1         = 12'h62c,
    ADDR_HV_OFFSET_HBM2_CTRL           = 12'h630,
    ADDR_HV_OFFSET_HBM3_DATA_0         = 12'h634,
    ADDR_HV_OFFSET_HBM3_DATA_1         = 12'h638,
    ADDR_HV_OFFSET_HBM3_CTRL           = 12'h63c,
    ADDR_HV_OFFSET_HBM4_DATA_0         = 12'h640,
    ADDR_HV_OFFSET_HBM4_DATA_1         = 12'h644,
    ADDR_HV_OFFSET_HBM4_CTRL           = 12'h648,
    ADDR_HV_OFFSET_HBM5_DATA_0         = 12'h64c,
    ADDR_HV_OFFSET_HBM5_DATA_1         = 12'h650,
    ADDR_HV_OFFSET_HBM5_CTRL           = 12'h654,
    ADDR_HV_OFFSET_HBM6_DATA_0         = 12'h658,
    ADDR_HV_OFFSET_HBM6_DATA_1         = 12'h65c,
    ADDR_HV_OFFSET_HBM6_CTRL           = 12'h660,
    ADDR_HV_OFFSET_HBM7_DATA_0         = 12'h664,
    ADDR_HV_OFFSET_HBM7_DATA_1         = 12'h668,
    ADDR_HV_OFFSET_HBM7_CTRL           = 12'h66c,
    ADDR_HV_OFFSET_HBM8_DATA_0         = 12'h670,
    ADDR_HV_OFFSET_HBM8_DATA_1         = 12'h674,
    ADDR_HV_OFFSET_HBM8_CTRL           = 12'h678,
    ADDR_HV_OFFSET_HBM9_DATA_0         = 12'h67c,
    ADDR_HV_OFFSET_HBM9_DATA_1         = 12'h680,
    ADDR_HV_OFFSET_HBM9_CTRL           = 12'h684,
    ADDR_HV_OFFSET_HBM10_DATA_0        = 12'h688,
    ADDR_HV_OFFSET_HBM10_DATA_1        = 12'h68c,
    ADDR_HV_OFFSET_HBM10_CTRL          = 12'h690,
    ADDR_HV_OFFSET_HBM11_DATA_0        = 12'h694,
    ADDR_HV_OFFSET_HBM11_DATA_1        = 12'h698,
    ADDR_HV_OFFSET_HBM11_CTRL          = 12'h69c,
    ADDR_HV_OFFSET_HBM12_DATA_0        = 12'h6a0,
    ADDR_HV_OFFSET_HBM12_DATA_1        = 12'h6a4,
    ADDR_HV_OFFSET_HBM12_CTRL          = 12'h6a8,
    ADDR_HV_OFFSET_HBM13_DATA_0        = 12'h6ac,
    ADDR_HV_OFFSET_HBM13_DATA_1        = 12'h6b0,
    ADDR_HV_OFFSET_HBM13_CTRL          = 12'h6b4,
    ADDR_HV_OFFSET_HBM14_DATA_0        = 12'h6b8,
    ADDR_HV_OFFSET_HBM14_DATA_1        = 12'h6bc,
    ADDR_HV_OFFSET_HBM14_CTRL          = 12'h6c0,
    ADDR_HV_OFFSET_HBM15_DATA_0        = 12'h6c4,
    ADDR_HV_OFFSET_HBM15_DATA_1        = 12'h6c8,
    ADDR_HV_OFFSET_HBM15_CTRL          = 12'h6cc,
    ADDR_HV_INDEX_HBM0_DATA_0          = 12'h6d0,
    ADDR_HV_INDEX_HBM0_DATA_1          = 12'h6d4,
    ADDR_HV_INDEX_HBM0_CTRL            = 12'h6d8,
    ADDR_HV_INDEX_HBM1_DATA_0          = 12'h6dc,
    ADDR_HV_INDEX_HBM1_DATA_1          = 12'h6e0,
    ADDR_HV_INDEX_HBM1_CTRL            = 12'h6e4,
    ADDR_HV_INDEX_HBM2_DATA_0          = 12'h6e8,
    ADDR_HV_INDEX_HBM2_DATA_1          = 12'h6ec,
    ADDR_HV_INDEX_HBM2_CTRL            = 12'h6f0,
    ADDR_HV_INDEX_HBM3_DATA_0          = 12'h6f4,
    ADDR_HV_INDEX_HBM3_DATA_1          = 12'h6f8,
    ADDR_HV_INDEX_HBM3_CTRL            = 12'h6fc,
    ADDR_HV_INDEX_HBM4_DATA_0          = 12'h700,
    ADDR_HV_INDEX_HBM4_DATA_1          = 12'h704,
    ADDR_HV_INDEX_HBM4_CTRL            = 12'h708,
    ADDR_HV_INDEX_HBM5_DATA_0          = 12'h70c,
    ADDR_HV_INDEX_HBM5_DATA_1          = 12'h710,
    ADDR_HV_INDEX_HBM5_CTRL            = 12'h714,
    ADDR_HV_INDEX_HBM6_DATA_0          = 12'h718,
    ADDR_HV_INDEX_HBM6_DATA_1          = 12'h71c,
    ADDR_HV_INDEX_HBM6_CTRL            = 12'h720,
    ADDR_HV_INDEX_HBM7_DATA_0          = 12'h724,
    ADDR_HV_INDEX_HBM7_DATA_1          = 12'h728,
    ADDR_HV_INDEX_HBM7_CTRL            = 12'h72c,
    ADDR_HV_INDEX_HBM8_DATA_0          = 12'h730,
    ADDR_HV_INDEX_HBM8_DATA_1          = 12'h734,
    ADDR_HV_INDEX_HBM8_CTRL            = 12'h738,
    ADDR_HV_INDEX_HBM9_DATA_0          = 12'h73c,
    ADDR_HV_INDEX_HBM9_DATA_1          = 12'h740,
    ADDR_HV_INDEX_HBM9_CTRL            = 12'h744,
    ADDR_HV_INDEX_HBM10_DATA_0         = 12'h748,
    ADDR_HV_INDEX_HBM10_DATA_1         = 12'h74c,
    ADDR_HV_INDEX_HBM10_CTRL           = 12'h750,
    ADDR_HV_INDEX_HBM11_DATA_0         = 12'h754,
    ADDR_HV_INDEX_HBM11_DATA_1         = 12'h758,
    ADDR_HV_INDEX_HBM11_CTRL           = 12'h75c,
    ADDR_HV_INDEX_HBM12_DATA_0         = 12'h760,
    ADDR_HV_INDEX_HBM12_DATA_1         = 12'h764,
    ADDR_HV_INDEX_HBM12_CTRL           = 12'h768,
    ADDR_HV_INDEX_HBM13_DATA_0         = 12'h76c,
    ADDR_HV_INDEX_HBM13_DATA_1         = 12'h770,
    ADDR_HV_INDEX_HBM13_CTRL           = 12'h774,
    ADDR_HV_INDEX_HBM14_DATA_0         = 12'h778,
    ADDR_HV_INDEX_HBM14_DATA_1         = 12'h77c,
    ADDR_HV_INDEX_HBM14_CTRL           = 12'h780,
    ADDR_HV_INDEX_HBM15_DATA_0         = 12'h784,
    ADDR_HV_INDEX_HBM15_DATA_1         = 12'h788,
    ADDR_HV_INDEX_HBM15_CTRL           = 12'h78c,
    ADDR_TO_PROCESS_LIST_HBM0_DATA_0   = 12'h790,
    ADDR_TO_PROCESS_LIST_HBM0_DATA_1   = 12'h794,
    ADDR_TO_PROCESS_LIST_HBM0_CTRL     = 12'h798,
    ADDR_TO_PROCESS_LIST_HBM1_DATA_0   = 12'h79c,
    ADDR_TO_PROCESS_LIST_HBM1_DATA_1   = 12'h7a0,
    ADDR_TO_PROCESS_LIST_HBM1_CTRL     = 12'h7a4,
    ADDR_TO_PROCESS_LIST_HBM2_DATA_0   = 12'h7a8,
    ADDR_TO_PROCESS_LIST_HBM2_DATA_1   = 12'h7ac,
    ADDR_TO_PROCESS_LIST_HBM2_CTRL     = 12'h7b0,
    ADDR_TO_PROCESS_LIST_HBM3_DATA_0   = 12'h7b4,
    ADDR_TO_PROCESS_LIST_HBM3_DATA_1   = 12'h7b8,
    ADDR_TO_PROCESS_LIST_HBM3_CTRL     = 12'h7bc,
    ADDR_TO_PROCESS_LIST_HBM4_DATA_0   = 12'h7c0,
    ADDR_TO_PROCESS_LIST_HBM4_DATA_1   = 12'h7c4,
    ADDR_TO_PROCESS_LIST_HBM4_CTRL     = 12'h7c8,
    ADDR_TO_PROCESS_LIST_HBM5_DATA_0   = 12'h7cc,
    ADDR_TO_PROCESS_LIST_HBM5_DATA_1   = 12'h7d0,
    ADDR_TO_PROCESS_LIST_HBM5_CTRL     = 12'h7d4,
    ADDR_TO_PROCESS_LIST_HBM6_DATA_0   = 12'h7d8,
    ADDR_TO_PROCESS_LIST_HBM6_DATA_1   = 12'h7dc,
    ADDR_TO_PROCESS_LIST_HBM6_CTRL     = 12'h7e0,
    ADDR_TO_PROCESS_LIST_HBM7_DATA_0   = 12'h7e4,
    ADDR_TO_PROCESS_LIST_HBM7_DATA_1   = 12'h7e8,
    ADDR_TO_PROCESS_LIST_HBM7_CTRL     = 12'h7ec,
    ADDR_TO_PROCESS_LIST_HBM8_DATA_0   = 12'h7f0,
    ADDR_TO_PROCESS_LIST_HBM8_DATA_1   = 12'h7f4,
    ADDR_TO_PROCESS_LIST_HBM8_CTRL     = 12'h7f8,
    ADDR_TO_PROCESS_LIST_HBM9_DATA_0   = 12'h7fc,
    ADDR_TO_PROCESS_LIST_HBM9_DATA_1   = 12'h800,
    ADDR_TO_PROCESS_LIST_HBM9_CTRL     = 12'h804,
    ADDR_TO_PROCESS_LIST_HBM10_DATA_0  = 12'h808,
    ADDR_TO_PROCESS_LIST_HBM10_DATA_1  = 12'h80c,
    ADDR_TO_PROCESS_LIST_HBM10_CTRL    = 12'h810,
    ADDR_TO_PROCESS_LIST_HBM11_DATA_0  = 12'h814,
    ADDR_TO_PROCESS_LIST_HBM11_DATA_1  = 12'h818,
    ADDR_TO_PROCESS_LIST_HBM11_CTRL    = 12'h81c,
    ADDR_TO_PROCESS_LIST_HBM12_DATA_0  = 12'h820,
    ADDR_TO_PROCESS_LIST_HBM12_DATA_1  = 12'h824,
    ADDR_TO_PROCESS_LIST_HBM12_CTRL    = 12'h828,
    ADDR_TO_PROCESS_LIST_HBM13_DATA_0  = 12'h82c,
    ADDR_TO_PROCESS_LIST_HBM13_DATA_1  = 12'h830,
    ADDR_TO_PROCESS_LIST_HBM13_CTRL    = 12'h834,
    ADDR_TO_PROCESS_LIST_HBM14_DATA_0  = 12'h838,
    ADDR_TO_PROCESS_LIST_HBM14_DATA_1  = 12'h83c,
    ADDR_TO_PROCESS_LIST_HBM14_CTRL    = 12'h840,
    ADDR_TO_PROCESS_LIST_HBM15_DATA_0  = 12'h844,
    ADDR_TO_PROCESS_LIST_HBM15_DATA_1  = 12'h848,
    ADDR_TO_PROCESS_LIST_HBM15_CTRL    = 12'h84c,
    ADDR_TO_PROCESS_COUNT_HBM0_DATA_0  = 12'h850,
    ADDR_TO_PROCESS_COUNT_HBM0_CTRL    = 12'h854,
    ADDR_TO_PROCESS_COUNT_HBM1_DATA_0  = 12'h858,
    ADDR_TO_PROCESS_COUNT_HBM1_CTRL    = 12'h85c,
    ADDR_TO_PROCESS_COUNT_HBM2_DATA_0  = 12'h860,
    ADDR_TO_PROCESS_COUNT_HBM2_CTRL    = 12'h864,
    ADDR_TO_PROCESS_COUNT_HBM3_DATA_0  = 12'h868,
    ADDR_TO_PROCESS_COUNT_HBM3_CTRL    = 12'h86c,
    ADDR_TO_PROCESS_COUNT_HBM4_DATA_0  = 12'h870,
    ADDR_TO_PROCESS_COUNT_HBM4_CTRL    = 12'h874,
    ADDR_TO_PROCESS_COUNT_HBM5_DATA_0  = 12'h878,
    ADDR_TO_PROCESS_COUNT_HBM5_CTRL    = 12'h87c,
    ADDR_TO_PROCESS_COUNT_HBM6_DATA_0  = 12'h880,
    ADDR_TO_PROCESS_COUNT_HBM6_CTRL    = 12'h884,
    ADDR_TO_PROCESS_COUNT_HBM7_DATA_0  = 12'h888,
    ADDR_TO_PROCESS_COUNT_HBM7_CTRL    = 12'h88c,
    ADDR_TO_PROCESS_COUNT_HBM8_DATA_0  = 12'h890,
    ADDR_TO_PROCESS_COUNT_HBM8_CTRL    = 12'h894,
    ADDR_TO_PROCESS_COUNT_HBM9_DATA_0  = 12'h898,
    ADDR_TO_PROCESS_COUNT_HBM9_CTRL    = 12'h89c,
    ADDR_TO_PROCESS_COUNT_HBM10_DATA_0 = 12'h8a0,
    ADDR_TO_PROCESS_COUNT_HBM10_CTRL   = 12'h8a4,
    ADDR_TO_PROCESS_COUNT_HBM11_DATA_0 = 12'h8a8,
    ADDR_TO_PROCESS_COUNT_HBM11_CTRL   = 12'h8ac,
    ADDR_TO_PROCESS_COUNT_HBM12_DATA_0 = 12'h8b0,
    ADDR_TO_PROCESS_COUNT_HBM12_CTRL   = 12'h8b4,
    ADDR_TO_PROCESS_COUNT_HBM13_DATA_0 = 12'h8b8,
    ADDR_TO_PROCESS_COUNT_HBM13_CTRL   = 12'h8bc,
    ADDR_TO_PROCESS_COUNT_HBM14_DATA_0 = 12'h8c0,
    ADDR_TO_PROCESS_COUNT_HBM14_CTRL   = 12'h8c4,
    ADDR_TO_PROCESS_COUNT_HBM15_DATA_0 = 12'h8c8,
    ADDR_TO_PROCESS_COUNT_HBM15_CTRL   = 12'h8cc,
    ADDR_STAGE_DATA_0                  = 12'h8d0,
    ADDR_STAGE_CTRL                    = 12'h8d4,
    ADDR_R_DATA_0                      = 12'h8d8,
    ADDR_R_CTRL                        = 12'h8dc,
    WRIDLE                             = 2'd0,
    WRDATA                             = 2'd1,
    WRRESP                             = 2'd2,
    WRRESET                            = 2'd3,
    RDIDLE                             = 2'd0,
    RDDATA                             = 2'd1,
    RDRESET                            = 2'd2,
    ADDR_BITS                = 12;

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
    reg  [63:0]                   int_V_NumPaths_hbm0 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm1 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm2 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm3 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm4 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm5 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm6 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm7 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm8 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm9 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm10 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm11 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm12 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm13 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm14 = 'b0;
    reg  [63:0]                   int_V_NumPaths_hbm15 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm0 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm1 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm2 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm3 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm4 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm5 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm6 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm7 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm8 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm9 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm10 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm11 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm12 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm13 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm14 = 'b0;
    reg  [63:0]                   int_H_NumPaths_hbm15 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm0 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm1 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm2 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm3 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm4 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm5 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm6 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm7 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm8 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm9 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm10 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm11 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm12 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm13 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm14 = 'b0;
    reg  [63:0]                   int_V_Dependencies_hbm15 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm0 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm1 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm2 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm3 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm4 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm5 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm6 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm7 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm8 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm9 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm10 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm11 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm12 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm13 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm14 = 'b0;
    reg  [63:0]                   int_H_Dependencies_hbm15 = 'b0;
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
    reg  [63:0]                   int_hv_offset_hbm0 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm1 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm2 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm3 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm4 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm5 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm6 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm7 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm8 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm9 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm10 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm11 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm12 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm13 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm14 = 'b0;
    reg  [63:0]                   int_hv_offset_hbm15 = 'b0;
    reg  [63:0]                   int_hv_index_hbm0 = 'b0;
    reg  [63:0]                   int_hv_index_hbm1 = 'b0;
    reg  [63:0]                   int_hv_index_hbm2 = 'b0;
    reg  [63:0]                   int_hv_index_hbm3 = 'b0;
    reg  [63:0]                   int_hv_index_hbm4 = 'b0;
    reg  [63:0]                   int_hv_index_hbm5 = 'b0;
    reg  [63:0]                   int_hv_index_hbm6 = 'b0;
    reg  [63:0]                   int_hv_index_hbm7 = 'b0;
    reg  [63:0]                   int_hv_index_hbm8 = 'b0;
    reg  [63:0]                   int_hv_index_hbm9 = 'b0;
    reg  [63:0]                   int_hv_index_hbm10 = 'b0;
    reg  [63:0]                   int_hv_index_hbm11 = 'b0;
    reg  [63:0]                   int_hv_index_hbm12 = 'b0;
    reg  [63:0]                   int_hv_index_hbm13 = 'b0;
    reg  [63:0]                   int_hv_index_hbm14 = 'b0;
    reg  [63:0]                   int_hv_index_hbm15 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm0 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm1 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm2 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm3 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm4 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm5 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm6 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm7 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm8 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm9 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm10 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm11 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm12 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm13 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm14 = 'b0;
    reg  [63:0]                   int_to_process_list_hbm15 = 'b0;
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
    reg  [31:0]                   int_stage = 'b0;
    reg  [31:0]                   int_r = 'b0;

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
                ADDR_V_NUMPATHS_HBM0_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm0[31:0];
                end
                ADDR_V_NUMPATHS_HBM0_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm0[63:32];
                end
                ADDR_V_NUMPATHS_HBM1_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm1[31:0];
                end
                ADDR_V_NUMPATHS_HBM1_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm1[63:32];
                end
                ADDR_V_NUMPATHS_HBM2_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm2[31:0];
                end
                ADDR_V_NUMPATHS_HBM2_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm2[63:32];
                end
                ADDR_V_NUMPATHS_HBM3_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm3[31:0];
                end
                ADDR_V_NUMPATHS_HBM3_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm3[63:32];
                end
                ADDR_V_NUMPATHS_HBM4_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm4[31:0];
                end
                ADDR_V_NUMPATHS_HBM4_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm4[63:32];
                end
                ADDR_V_NUMPATHS_HBM5_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm5[31:0];
                end
                ADDR_V_NUMPATHS_HBM5_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm5[63:32];
                end
                ADDR_V_NUMPATHS_HBM6_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm6[31:0];
                end
                ADDR_V_NUMPATHS_HBM6_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm6[63:32];
                end
                ADDR_V_NUMPATHS_HBM7_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm7[31:0];
                end
                ADDR_V_NUMPATHS_HBM7_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm7[63:32];
                end
                ADDR_V_NUMPATHS_HBM8_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm8[31:0];
                end
                ADDR_V_NUMPATHS_HBM8_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm8[63:32];
                end
                ADDR_V_NUMPATHS_HBM9_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm9[31:0];
                end
                ADDR_V_NUMPATHS_HBM9_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm9[63:32];
                end
                ADDR_V_NUMPATHS_HBM10_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm10[31:0];
                end
                ADDR_V_NUMPATHS_HBM10_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm10[63:32];
                end
                ADDR_V_NUMPATHS_HBM11_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm11[31:0];
                end
                ADDR_V_NUMPATHS_HBM11_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm11[63:32];
                end
                ADDR_V_NUMPATHS_HBM12_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm12[31:0];
                end
                ADDR_V_NUMPATHS_HBM12_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm12[63:32];
                end
                ADDR_V_NUMPATHS_HBM13_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm13[31:0];
                end
                ADDR_V_NUMPATHS_HBM13_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm13[63:32];
                end
                ADDR_V_NUMPATHS_HBM14_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm14[31:0];
                end
                ADDR_V_NUMPATHS_HBM14_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm14[63:32];
                end
                ADDR_V_NUMPATHS_HBM15_DATA_0: begin
                    rdata <= int_V_NumPaths_hbm15[31:0];
                end
                ADDR_V_NUMPATHS_HBM15_DATA_1: begin
                    rdata <= int_V_NumPaths_hbm15[63:32];
                end
                ADDR_H_NUMPATHS_HBM0_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm0[31:0];
                end
                ADDR_H_NUMPATHS_HBM0_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm0[63:32];
                end
                ADDR_H_NUMPATHS_HBM1_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm1[31:0];
                end
                ADDR_H_NUMPATHS_HBM1_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm1[63:32];
                end
                ADDR_H_NUMPATHS_HBM2_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm2[31:0];
                end
                ADDR_H_NUMPATHS_HBM2_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm2[63:32];
                end
                ADDR_H_NUMPATHS_HBM3_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm3[31:0];
                end
                ADDR_H_NUMPATHS_HBM3_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm3[63:32];
                end
                ADDR_H_NUMPATHS_HBM4_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm4[31:0];
                end
                ADDR_H_NUMPATHS_HBM4_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm4[63:32];
                end
                ADDR_H_NUMPATHS_HBM5_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm5[31:0];
                end
                ADDR_H_NUMPATHS_HBM5_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm5[63:32];
                end
                ADDR_H_NUMPATHS_HBM6_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm6[31:0];
                end
                ADDR_H_NUMPATHS_HBM6_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm6[63:32];
                end
                ADDR_H_NUMPATHS_HBM7_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm7[31:0];
                end
                ADDR_H_NUMPATHS_HBM7_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm7[63:32];
                end
                ADDR_H_NUMPATHS_HBM8_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm8[31:0];
                end
                ADDR_H_NUMPATHS_HBM8_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm8[63:32];
                end
                ADDR_H_NUMPATHS_HBM9_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm9[31:0];
                end
                ADDR_H_NUMPATHS_HBM9_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm9[63:32];
                end
                ADDR_H_NUMPATHS_HBM10_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm10[31:0];
                end
                ADDR_H_NUMPATHS_HBM10_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm10[63:32];
                end
                ADDR_H_NUMPATHS_HBM11_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm11[31:0];
                end
                ADDR_H_NUMPATHS_HBM11_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm11[63:32];
                end
                ADDR_H_NUMPATHS_HBM12_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm12[31:0];
                end
                ADDR_H_NUMPATHS_HBM12_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm12[63:32];
                end
                ADDR_H_NUMPATHS_HBM13_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm13[31:0];
                end
                ADDR_H_NUMPATHS_HBM13_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm13[63:32];
                end
                ADDR_H_NUMPATHS_HBM14_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm14[31:0];
                end
                ADDR_H_NUMPATHS_HBM14_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm14[63:32];
                end
                ADDR_H_NUMPATHS_HBM15_DATA_0: begin
                    rdata <= int_H_NumPaths_hbm15[31:0];
                end
                ADDR_H_NUMPATHS_HBM15_DATA_1: begin
                    rdata <= int_H_NumPaths_hbm15[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM0_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm0[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM0_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm0[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM1_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm1[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM1_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm1[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM2_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm2[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM2_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm2[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM3_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm3[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM3_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm3[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM4_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm4[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM4_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm4[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM5_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm5[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM5_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm5[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM6_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm6[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM6_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm6[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM7_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm7[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM7_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm7[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM8_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm8[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM8_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm8[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM9_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm9[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM9_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm9[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM10_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm10[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM10_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm10[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM11_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm11[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM11_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm11[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM12_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm12[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM12_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm12[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM13_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm13[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM13_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm13[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM14_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm14[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM14_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm14[63:32];
                end
                ADDR_V_DEPENDENCIES_HBM15_DATA_0: begin
                    rdata <= int_V_Dependencies_hbm15[31:0];
                end
                ADDR_V_DEPENDENCIES_HBM15_DATA_1: begin
                    rdata <= int_V_Dependencies_hbm15[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM0_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm0[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM0_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm0[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM1_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm1[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM1_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm1[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM2_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm2[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM2_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm2[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM3_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm3[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM3_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm3[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM4_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm4[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM4_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm4[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM5_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm5[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM5_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm5[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM6_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm6[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM6_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm6[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM7_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm7[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM7_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm7[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM8_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm8[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM8_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm8[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM9_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm9[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM9_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm9[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM10_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm10[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM10_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm10[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM11_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm11[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM11_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm11[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM12_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm12[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM12_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm12[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM13_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm13[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM13_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm13[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM14_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm14[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM14_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm14[63:32];
                end
                ADDR_H_DEPENDENCIES_HBM15_DATA_0: begin
                    rdata <= int_H_Dependencies_hbm15[31:0];
                end
                ADDR_H_DEPENDENCIES_HBM15_DATA_1: begin
                    rdata <= int_H_Dependencies_hbm15[63:32];
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
                ADDR_HV_OFFSET_HBM0_DATA_0: begin
                    rdata <= int_hv_offset_hbm0[31:0];
                end
                ADDR_HV_OFFSET_HBM0_DATA_1: begin
                    rdata <= int_hv_offset_hbm0[63:32];
                end
                ADDR_HV_OFFSET_HBM1_DATA_0: begin
                    rdata <= int_hv_offset_hbm1[31:0];
                end
                ADDR_HV_OFFSET_HBM1_DATA_1: begin
                    rdata <= int_hv_offset_hbm1[63:32];
                end
                ADDR_HV_OFFSET_HBM2_DATA_0: begin
                    rdata <= int_hv_offset_hbm2[31:0];
                end
                ADDR_HV_OFFSET_HBM2_DATA_1: begin
                    rdata <= int_hv_offset_hbm2[63:32];
                end
                ADDR_HV_OFFSET_HBM3_DATA_0: begin
                    rdata <= int_hv_offset_hbm3[31:0];
                end
                ADDR_HV_OFFSET_HBM3_DATA_1: begin
                    rdata <= int_hv_offset_hbm3[63:32];
                end
                ADDR_HV_OFFSET_HBM4_DATA_0: begin
                    rdata <= int_hv_offset_hbm4[31:0];
                end
                ADDR_HV_OFFSET_HBM4_DATA_1: begin
                    rdata <= int_hv_offset_hbm4[63:32];
                end
                ADDR_HV_OFFSET_HBM5_DATA_0: begin
                    rdata <= int_hv_offset_hbm5[31:0];
                end
                ADDR_HV_OFFSET_HBM5_DATA_1: begin
                    rdata <= int_hv_offset_hbm5[63:32];
                end
                ADDR_HV_OFFSET_HBM6_DATA_0: begin
                    rdata <= int_hv_offset_hbm6[31:0];
                end
                ADDR_HV_OFFSET_HBM6_DATA_1: begin
                    rdata <= int_hv_offset_hbm6[63:32];
                end
                ADDR_HV_OFFSET_HBM7_DATA_0: begin
                    rdata <= int_hv_offset_hbm7[31:0];
                end
                ADDR_HV_OFFSET_HBM7_DATA_1: begin
                    rdata <= int_hv_offset_hbm7[63:32];
                end
                ADDR_HV_OFFSET_HBM8_DATA_0: begin
                    rdata <= int_hv_offset_hbm8[31:0];
                end
                ADDR_HV_OFFSET_HBM8_DATA_1: begin
                    rdata <= int_hv_offset_hbm8[63:32];
                end
                ADDR_HV_OFFSET_HBM9_DATA_0: begin
                    rdata <= int_hv_offset_hbm9[31:0];
                end
                ADDR_HV_OFFSET_HBM9_DATA_1: begin
                    rdata <= int_hv_offset_hbm9[63:32];
                end
                ADDR_HV_OFFSET_HBM10_DATA_0: begin
                    rdata <= int_hv_offset_hbm10[31:0];
                end
                ADDR_HV_OFFSET_HBM10_DATA_1: begin
                    rdata <= int_hv_offset_hbm10[63:32];
                end
                ADDR_HV_OFFSET_HBM11_DATA_0: begin
                    rdata <= int_hv_offset_hbm11[31:0];
                end
                ADDR_HV_OFFSET_HBM11_DATA_1: begin
                    rdata <= int_hv_offset_hbm11[63:32];
                end
                ADDR_HV_OFFSET_HBM12_DATA_0: begin
                    rdata <= int_hv_offset_hbm12[31:0];
                end
                ADDR_HV_OFFSET_HBM12_DATA_1: begin
                    rdata <= int_hv_offset_hbm12[63:32];
                end
                ADDR_HV_OFFSET_HBM13_DATA_0: begin
                    rdata <= int_hv_offset_hbm13[31:0];
                end
                ADDR_HV_OFFSET_HBM13_DATA_1: begin
                    rdata <= int_hv_offset_hbm13[63:32];
                end
                ADDR_HV_OFFSET_HBM14_DATA_0: begin
                    rdata <= int_hv_offset_hbm14[31:0];
                end
                ADDR_HV_OFFSET_HBM14_DATA_1: begin
                    rdata <= int_hv_offset_hbm14[63:32];
                end
                ADDR_HV_OFFSET_HBM15_DATA_0: begin
                    rdata <= int_hv_offset_hbm15[31:0];
                end
                ADDR_HV_OFFSET_HBM15_DATA_1: begin
                    rdata <= int_hv_offset_hbm15[63:32];
                end
                ADDR_HV_INDEX_HBM0_DATA_0: begin
                    rdata <= int_hv_index_hbm0[31:0];
                end
                ADDR_HV_INDEX_HBM0_DATA_1: begin
                    rdata <= int_hv_index_hbm0[63:32];
                end
                ADDR_HV_INDEX_HBM1_DATA_0: begin
                    rdata <= int_hv_index_hbm1[31:0];
                end
                ADDR_HV_INDEX_HBM1_DATA_1: begin
                    rdata <= int_hv_index_hbm1[63:32];
                end
                ADDR_HV_INDEX_HBM2_DATA_0: begin
                    rdata <= int_hv_index_hbm2[31:0];
                end
                ADDR_HV_INDEX_HBM2_DATA_1: begin
                    rdata <= int_hv_index_hbm2[63:32];
                end
                ADDR_HV_INDEX_HBM3_DATA_0: begin
                    rdata <= int_hv_index_hbm3[31:0];
                end
                ADDR_HV_INDEX_HBM3_DATA_1: begin
                    rdata <= int_hv_index_hbm3[63:32];
                end
                ADDR_HV_INDEX_HBM4_DATA_0: begin
                    rdata <= int_hv_index_hbm4[31:0];
                end
                ADDR_HV_INDEX_HBM4_DATA_1: begin
                    rdata <= int_hv_index_hbm4[63:32];
                end
                ADDR_HV_INDEX_HBM5_DATA_0: begin
                    rdata <= int_hv_index_hbm5[31:0];
                end
                ADDR_HV_INDEX_HBM5_DATA_1: begin
                    rdata <= int_hv_index_hbm5[63:32];
                end
                ADDR_HV_INDEX_HBM6_DATA_0: begin
                    rdata <= int_hv_index_hbm6[31:0];
                end
                ADDR_HV_INDEX_HBM6_DATA_1: begin
                    rdata <= int_hv_index_hbm6[63:32];
                end
                ADDR_HV_INDEX_HBM7_DATA_0: begin
                    rdata <= int_hv_index_hbm7[31:0];
                end
                ADDR_HV_INDEX_HBM7_DATA_1: begin
                    rdata <= int_hv_index_hbm7[63:32];
                end
                ADDR_HV_INDEX_HBM8_DATA_0: begin
                    rdata <= int_hv_index_hbm8[31:0];
                end
                ADDR_HV_INDEX_HBM8_DATA_1: begin
                    rdata <= int_hv_index_hbm8[63:32];
                end
                ADDR_HV_INDEX_HBM9_DATA_0: begin
                    rdata <= int_hv_index_hbm9[31:0];
                end
                ADDR_HV_INDEX_HBM9_DATA_1: begin
                    rdata <= int_hv_index_hbm9[63:32];
                end
                ADDR_HV_INDEX_HBM10_DATA_0: begin
                    rdata <= int_hv_index_hbm10[31:0];
                end
                ADDR_HV_INDEX_HBM10_DATA_1: begin
                    rdata <= int_hv_index_hbm10[63:32];
                end
                ADDR_HV_INDEX_HBM11_DATA_0: begin
                    rdata <= int_hv_index_hbm11[31:0];
                end
                ADDR_HV_INDEX_HBM11_DATA_1: begin
                    rdata <= int_hv_index_hbm11[63:32];
                end
                ADDR_HV_INDEX_HBM12_DATA_0: begin
                    rdata <= int_hv_index_hbm12[31:0];
                end
                ADDR_HV_INDEX_HBM12_DATA_1: begin
                    rdata <= int_hv_index_hbm12[63:32];
                end
                ADDR_HV_INDEX_HBM13_DATA_0: begin
                    rdata <= int_hv_index_hbm13[31:0];
                end
                ADDR_HV_INDEX_HBM13_DATA_1: begin
                    rdata <= int_hv_index_hbm13[63:32];
                end
                ADDR_HV_INDEX_HBM14_DATA_0: begin
                    rdata <= int_hv_index_hbm14[31:0];
                end
                ADDR_HV_INDEX_HBM14_DATA_1: begin
                    rdata <= int_hv_index_hbm14[63:32];
                end
                ADDR_HV_INDEX_HBM15_DATA_0: begin
                    rdata <= int_hv_index_hbm15[31:0];
                end
                ADDR_HV_INDEX_HBM15_DATA_1: begin
                    rdata <= int_hv_index_hbm15[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM0_DATA_0: begin
                    rdata <= int_to_process_list_hbm0[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM0_DATA_1: begin
                    rdata <= int_to_process_list_hbm0[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM1_DATA_0: begin
                    rdata <= int_to_process_list_hbm1[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM1_DATA_1: begin
                    rdata <= int_to_process_list_hbm1[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM2_DATA_0: begin
                    rdata <= int_to_process_list_hbm2[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM2_DATA_1: begin
                    rdata <= int_to_process_list_hbm2[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM3_DATA_0: begin
                    rdata <= int_to_process_list_hbm3[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM3_DATA_1: begin
                    rdata <= int_to_process_list_hbm3[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM4_DATA_0: begin
                    rdata <= int_to_process_list_hbm4[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM4_DATA_1: begin
                    rdata <= int_to_process_list_hbm4[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM5_DATA_0: begin
                    rdata <= int_to_process_list_hbm5[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM5_DATA_1: begin
                    rdata <= int_to_process_list_hbm5[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM6_DATA_0: begin
                    rdata <= int_to_process_list_hbm6[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM6_DATA_1: begin
                    rdata <= int_to_process_list_hbm6[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM7_DATA_0: begin
                    rdata <= int_to_process_list_hbm7[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM7_DATA_1: begin
                    rdata <= int_to_process_list_hbm7[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM8_DATA_0: begin
                    rdata <= int_to_process_list_hbm8[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM8_DATA_1: begin
                    rdata <= int_to_process_list_hbm8[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM9_DATA_0: begin
                    rdata <= int_to_process_list_hbm9[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM9_DATA_1: begin
                    rdata <= int_to_process_list_hbm9[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM10_DATA_0: begin
                    rdata <= int_to_process_list_hbm10[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM10_DATA_1: begin
                    rdata <= int_to_process_list_hbm10[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM11_DATA_0: begin
                    rdata <= int_to_process_list_hbm11[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM11_DATA_1: begin
                    rdata <= int_to_process_list_hbm11[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM12_DATA_0: begin
                    rdata <= int_to_process_list_hbm12[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM12_DATA_1: begin
                    rdata <= int_to_process_list_hbm12[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM13_DATA_0: begin
                    rdata <= int_to_process_list_hbm13[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM13_DATA_1: begin
                    rdata <= int_to_process_list_hbm13[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM14_DATA_0: begin
                    rdata <= int_to_process_list_hbm14[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM14_DATA_1: begin
                    rdata <= int_to_process_list_hbm14[63:32];
                end
                ADDR_TO_PROCESS_LIST_HBM15_DATA_0: begin
                    rdata <= int_to_process_list_hbm15[31:0];
                end
                ADDR_TO_PROCESS_LIST_HBM15_DATA_1: begin
                    rdata <= int_to_process_list_hbm15[63:32];
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
                ADDR_STAGE_DATA_0: begin
                    rdata <= int_stage[31:0];
                end
                ADDR_R_DATA_0: begin
                    rdata <= int_r[31:0];
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
assign V_NumPaths_hbm0        = int_V_NumPaths_hbm0;
assign V_NumPaths_hbm1        = int_V_NumPaths_hbm1;
assign V_NumPaths_hbm2        = int_V_NumPaths_hbm2;
assign V_NumPaths_hbm3        = int_V_NumPaths_hbm3;
assign V_NumPaths_hbm4        = int_V_NumPaths_hbm4;
assign V_NumPaths_hbm5        = int_V_NumPaths_hbm5;
assign V_NumPaths_hbm6        = int_V_NumPaths_hbm6;
assign V_NumPaths_hbm7        = int_V_NumPaths_hbm7;
assign V_NumPaths_hbm8        = int_V_NumPaths_hbm8;
assign V_NumPaths_hbm9        = int_V_NumPaths_hbm9;
assign V_NumPaths_hbm10       = int_V_NumPaths_hbm10;
assign V_NumPaths_hbm11       = int_V_NumPaths_hbm11;
assign V_NumPaths_hbm12       = int_V_NumPaths_hbm12;
assign V_NumPaths_hbm13       = int_V_NumPaths_hbm13;
assign V_NumPaths_hbm14       = int_V_NumPaths_hbm14;
assign V_NumPaths_hbm15       = int_V_NumPaths_hbm15;
assign H_NumPaths_hbm0        = int_H_NumPaths_hbm0;
assign H_NumPaths_hbm1        = int_H_NumPaths_hbm1;
assign H_NumPaths_hbm2        = int_H_NumPaths_hbm2;
assign H_NumPaths_hbm3        = int_H_NumPaths_hbm3;
assign H_NumPaths_hbm4        = int_H_NumPaths_hbm4;
assign H_NumPaths_hbm5        = int_H_NumPaths_hbm5;
assign H_NumPaths_hbm6        = int_H_NumPaths_hbm6;
assign H_NumPaths_hbm7        = int_H_NumPaths_hbm7;
assign H_NumPaths_hbm8        = int_H_NumPaths_hbm8;
assign H_NumPaths_hbm9        = int_H_NumPaths_hbm9;
assign H_NumPaths_hbm10       = int_H_NumPaths_hbm10;
assign H_NumPaths_hbm11       = int_H_NumPaths_hbm11;
assign H_NumPaths_hbm12       = int_H_NumPaths_hbm12;
assign H_NumPaths_hbm13       = int_H_NumPaths_hbm13;
assign H_NumPaths_hbm14       = int_H_NumPaths_hbm14;
assign H_NumPaths_hbm15       = int_H_NumPaths_hbm15;
assign V_Dependencies_hbm0    = int_V_Dependencies_hbm0;
assign V_Dependencies_hbm1    = int_V_Dependencies_hbm1;
assign V_Dependencies_hbm2    = int_V_Dependencies_hbm2;
assign V_Dependencies_hbm3    = int_V_Dependencies_hbm3;
assign V_Dependencies_hbm4    = int_V_Dependencies_hbm4;
assign V_Dependencies_hbm5    = int_V_Dependencies_hbm5;
assign V_Dependencies_hbm6    = int_V_Dependencies_hbm6;
assign V_Dependencies_hbm7    = int_V_Dependencies_hbm7;
assign V_Dependencies_hbm8    = int_V_Dependencies_hbm8;
assign V_Dependencies_hbm9    = int_V_Dependencies_hbm9;
assign V_Dependencies_hbm10   = int_V_Dependencies_hbm10;
assign V_Dependencies_hbm11   = int_V_Dependencies_hbm11;
assign V_Dependencies_hbm12   = int_V_Dependencies_hbm12;
assign V_Dependencies_hbm13   = int_V_Dependencies_hbm13;
assign V_Dependencies_hbm14   = int_V_Dependencies_hbm14;
assign V_Dependencies_hbm15   = int_V_Dependencies_hbm15;
assign H_Dependencies_hbm0    = int_H_Dependencies_hbm0;
assign H_Dependencies_hbm1    = int_H_Dependencies_hbm1;
assign H_Dependencies_hbm2    = int_H_Dependencies_hbm2;
assign H_Dependencies_hbm3    = int_H_Dependencies_hbm3;
assign H_Dependencies_hbm4    = int_H_Dependencies_hbm4;
assign H_Dependencies_hbm5    = int_H_Dependencies_hbm5;
assign H_Dependencies_hbm6    = int_H_Dependencies_hbm6;
assign H_Dependencies_hbm7    = int_H_Dependencies_hbm7;
assign H_Dependencies_hbm8    = int_H_Dependencies_hbm8;
assign H_Dependencies_hbm9    = int_H_Dependencies_hbm9;
assign H_Dependencies_hbm10   = int_H_Dependencies_hbm10;
assign H_Dependencies_hbm11   = int_H_Dependencies_hbm11;
assign H_Dependencies_hbm12   = int_H_Dependencies_hbm12;
assign H_Dependencies_hbm13   = int_H_Dependencies_hbm13;
assign H_Dependencies_hbm14   = int_H_Dependencies_hbm14;
assign H_Dependencies_hbm15   = int_H_Dependencies_hbm15;
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
assign hv_offset_hbm0         = int_hv_offset_hbm0;
assign hv_offset_hbm1         = int_hv_offset_hbm1;
assign hv_offset_hbm2         = int_hv_offset_hbm2;
assign hv_offset_hbm3         = int_hv_offset_hbm3;
assign hv_offset_hbm4         = int_hv_offset_hbm4;
assign hv_offset_hbm5         = int_hv_offset_hbm5;
assign hv_offset_hbm6         = int_hv_offset_hbm6;
assign hv_offset_hbm7         = int_hv_offset_hbm7;
assign hv_offset_hbm8         = int_hv_offset_hbm8;
assign hv_offset_hbm9         = int_hv_offset_hbm9;
assign hv_offset_hbm10        = int_hv_offset_hbm10;
assign hv_offset_hbm11        = int_hv_offset_hbm11;
assign hv_offset_hbm12        = int_hv_offset_hbm12;
assign hv_offset_hbm13        = int_hv_offset_hbm13;
assign hv_offset_hbm14        = int_hv_offset_hbm14;
assign hv_offset_hbm15        = int_hv_offset_hbm15;
assign hv_index_hbm0          = int_hv_index_hbm0;
assign hv_index_hbm1          = int_hv_index_hbm1;
assign hv_index_hbm2          = int_hv_index_hbm2;
assign hv_index_hbm3          = int_hv_index_hbm3;
assign hv_index_hbm4          = int_hv_index_hbm4;
assign hv_index_hbm5          = int_hv_index_hbm5;
assign hv_index_hbm6          = int_hv_index_hbm6;
assign hv_index_hbm7          = int_hv_index_hbm7;
assign hv_index_hbm8          = int_hv_index_hbm8;
assign hv_index_hbm9          = int_hv_index_hbm9;
assign hv_index_hbm10         = int_hv_index_hbm10;
assign hv_index_hbm11         = int_hv_index_hbm11;
assign hv_index_hbm12         = int_hv_index_hbm12;
assign hv_index_hbm13         = int_hv_index_hbm13;
assign hv_index_hbm14         = int_hv_index_hbm14;
assign hv_index_hbm15         = int_hv_index_hbm15;
assign to_process_list_hbm0   = int_to_process_list_hbm0;
assign to_process_list_hbm1   = int_to_process_list_hbm1;
assign to_process_list_hbm2   = int_to_process_list_hbm2;
assign to_process_list_hbm3   = int_to_process_list_hbm3;
assign to_process_list_hbm4   = int_to_process_list_hbm4;
assign to_process_list_hbm5   = int_to_process_list_hbm5;
assign to_process_list_hbm6   = int_to_process_list_hbm6;
assign to_process_list_hbm7   = int_to_process_list_hbm7;
assign to_process_list_hbm8   = int_to_process_list_hbm8;
assign to_process_list_hbm9   = int_to_process_list_hbm9;
assign to_process_list_hbm10  = int_to_process_list_hbm10;
assign to_process_list_hbm11  = int_to_process_list_hbm11;
assign to_process_list_hbm12  = int_to_process_list_hbm12;
assign to_process_list_hbm13  = int_to_process_list_hbm13;
assign to_process_list_hbm14  = int_to_process_list_hbm14;
assign to_process_list_hbm15  = int_to_process_list_hbm15;
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
assign stage                  = int_stage;
assign r                      = int_r;
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

// int_V_NumPaths_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM0_DATA_0)
            int_V_NumPaths_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm0[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM0_DATA_1)
            int_V_NumPaths_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm0[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM1_DATA_0)
            int_V_NumPaths_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm1[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM1_DATA_1)
            int_V_NumPaths_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm1[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM2_DATA_0)
            int_V_NumPaths_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm2[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM2_DATA_1)
            int_V_NumPaths_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm2[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM3_DATA_0)
            int_V_NumPaths_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm3[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM3_DATA_1)
            int_V_NumPaths_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm3[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM4_DATA_0)
            int_V_NumPaths_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm4[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM4_DATA_1)
            int_V_NumPaths_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm4[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM5_DATA_0)
            int_V_NumPaths_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm5[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM5_DATA_1)
            int_V_NumPaths_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm5[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM6_DATA_0)
            int_V_NumPaths_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm6[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM6_DATA_1)
            int_V_NumPaths_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm6[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM7_DATA_0)
            int_V_NumPaths_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm7[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM7_DATA_1)
            int_V_NumPaths_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm7[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM8_DATA_0)
            int_V_NumPaths_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm8[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM8_DATA_1)
            int_V_NumPaths_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm8[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM9_DATA_0)
            int_V_NumPaths_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm9[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM9_DATA_1)
            int_V_NumPaths_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm9[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM10_DATA_0)
            int_V_NumPaths_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm10[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM10_DATA_1)
            int_V_NumPaths_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm10[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM11_DATA_0)
            int_V_NumPaths_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm11[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM11_DATA_1)
            int_V_NumPaths_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm11[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM12_DATA_0)
            int_V_NumPaths_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm12[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM12_DATA_1)
            int_V_NumPaths_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm12[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM13_DATA_0)
            int_V_NumPaths_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm13[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM13_DATA_1)
            int_V_NumPaths_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm13[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM14_DATA_0)
            int_V_NumPaths_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm14[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM14_DATA_1)
            int_V_NumPaths_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm14[63:32] & ~wmask);
    end
end

// int_V_NumPaths_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM15_DATA_0)
            int_V_NumPaths_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm15[31:0] & ~wmask);
    end
end

// int_V_NumPaths_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_NumPaths_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_NUMPATHS_HBM15_DATA_1)
            int_V_NumPaths_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_V_NumPaths_hbm15[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM0_DATA_0)
            int_H_NumPaths_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm0[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM0_DATA_1)
            int_H_NumPaths_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm0[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM1_DATA_0)
            int_H_NumPaths_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm1[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM1_DATA_1)
            int_H_NumPaths_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm1[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM2_DATA_0)
            int_H_NumPaths_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm2[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM2_DATA_1)
            int_H_NumPaths_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm2[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM3_DATA_0)
            int_H_NumPaths_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm3[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM3_DATA_1)
            int_H_NumPaths_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm3[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM4_DATA_0)
            int_H_NumPaths_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm4[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM4_DATA_1)
            int_H_NumPaths_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm4[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM5_DATA_0)
            int_H_NumPaths_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm5[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM5_DATA_1)
            int_H_NumPaths_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm5[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM6_DATA_0)
            int_H_NumPaths_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm6[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM6_DATA_1)
            int_H_NumPaths_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm6[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM7_DATA_0)
            int_H_NumPaths_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm7[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM7_DATA_1)
            int_H_NumPaths_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm7[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM8_DATA_0)
            int_H_NumPaths_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm8[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM8_DATA_1)
            int_H_NumPaths_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm8[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM9_DATA_0)
            int_H_NumPaths_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm9[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM9_DATA_1)
            int_H_NumPaths_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm9[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM10_DATA_0)
            int_H_NumPaths_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm10[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM10_DATA_1)
            int_H_NumPaths_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm10[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM11_DATA_0)
            int_H_NumPaths_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm11[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM11_DATA_1)
            int_H_NumPaths_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm11[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM12_DATA_0)
            int_H_NumPaths_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm12[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM12_DATA_1)
            int_H_NumPaths_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm12[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM13_DATA_0)
            int_H_NumPaths_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm13[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM13_DATA_1)
            int_H_NumPaths_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm13[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM14_DATA_0)
            int_H_NumPaths_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm14[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM14_DATA_1)
            int_H_NumPaths_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm14[63:32] & ~wmask);
    end
end

// int_H_NumPaths_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM15_DATA_0)
            int_H_NumPaths_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm15[31:0] & ~wmask);
    end
end

// int_H_NumPaths_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_NumPaths_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_NUMPATHS_HBM15_DATA_1)
            int_H_NumPaths_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_H_NumPaths_hbm15[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM0_DATA_0)
            int_V_Dependencies_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm0[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM0_DATA_1)
            int_V_Dependencies_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm0[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM1_DATA_0)
            int_V_Dependencies_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm1[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM1_DATA_1)
            int_V_Dependencies_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm1[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM2_DATA_0)
            int_V_Dependencies_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm2[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM2_DATA_1)
            int_V_Dependencies_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm2[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM3_DATA_0)
            int_V_Dependencies_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm3[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM3_DATA_1)
            int_V_Dependencies_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm3[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM4_DATA_0)
            int_V_Dependencies_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm4[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM4_DATA_1)
            int_V_Dependencies_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm4[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM5_DATA_0)
            int_V_Dependencies_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm5[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM5_DATA_1)
            int_V_Dependencies_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm5[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM6_DATA_0)
            int_V_Dependencies_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm6[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM6_DATA_1)
            int_V_Dependencies_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm6[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM7_DATA_0)
            int_V_Dependencies_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm7[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM7_DATA_1)
            int_V_Dependencies_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm7[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM8_DATA_0)
            int_V_Dependencies_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm8[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM8_DATA_1)
            int_V_Dependencies_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm8[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM9_DATA_0)
            int_V_Dependencies_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm9[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM9_DATA_1)
            int_V_Dependencies_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm9[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM10_DATA_0)
            int_V_Dependencies_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm10[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM10_DATA_1)
            int_V_Dependencies_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm10[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM11_DATA_0)
            int_V_Dependencies_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm11[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM11_DATA_1)
            int_V_Dependencies_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm11[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM12_DATA_0)
            int_V_Dependencies_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm12[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM12_DATA_1)
            int_V_Dependencies_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm12[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM13_DATA_0)
            int_V_Dependencies_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm13[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM13_DATA_1)
            int_V_Dependencies_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm13[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM14_DATA_0)
            int_V_Dependencies_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm14[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM14_DATA_1)
            int_V_Dependencies_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm14[63:32] & ~wmask);
    end
end

// int_V_Dependencies_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM15_DATA_0)
            int_V_Dependencies_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm15[31:0] & ~wmask);
    end
end

// int_V_Dependencies_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_V_Dependencies_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_DEPENDENCIES_HBM15_DATA_1)
            int_V_Dependencies_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_V_Dependencies_hbm15[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM0_DATA_0)
            int_H_Dependencies_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm0[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM0_DATA_1)
            int_H_Dependencies_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm0[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM1_DATA_0)
            int_H_Dependencies_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm1[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM1_DATA_1)
            int_H_Dependencies_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm1[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM2_DATA_0)
            int_H_Dependencies_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm2[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM2_DATA_1)
            int_H_Dependencies_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm2[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM3_DATA_0)
            int_H_Dependencies_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm3[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM3_DATA_1)
            int_H_Dependencies_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm3[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM4_DATA_0)
            int_H_Dependencies_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm4[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM4_DATA_1)
            int_H_Dependencies_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm4[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM5_DATA_0)
            int_H_Dependencies_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm5[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM5_DATA_1)
            int_H_Dependencies_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm5[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM6_DATA_0)
            int_H_Dependencies_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm6[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM6_DATA_1)
            int_H_Dependencies_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm6[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM7_DATA_0)
            int_H_Dependencies_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm7[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM7_DATA_1)
            int_H_Dependencies_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm7[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM8_DATA_0)
            int_H_Dependencies_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm8[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM8_DATA_1)
            int_H_Dependencies_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm8[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM9_DATA_0)
            int_H_Dependencies_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm9[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM9_DATA_1)
            int_H_Dependencies_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm9[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM10_DATA_0)
            int_H_Dependencies_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm10[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM10_DATA_1)
            int_H_Dependencies_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm10[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM11_DATA_0)
            int_H_Dependencies_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm11[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM11_DATA_1)
            int_H_Dependencies_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm11[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM12_DATA_0)
            int_H_Dependencies_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm12[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM12_DATA_1)
            int_H_Dependencies_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm12[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM13_DATA_0)
            int_H_Dependencies_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm13[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM13_DATA_1)
            int_H_Dependencies_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm13[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM14_DATA_0)
            int_H_Dependencies_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm14[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM14_DATA_1)
            int_H_Dependencies_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm14[63:32] & ~wmask);
    end
end

// int_H_Dependencies_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM15_DATA_0)
            int_H_Dependencies_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm15[31:0] & ~wmask);
    end
end

// int_H_Dependencies_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_H_Dependencies_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DEPENDENCIES_HBM15_DATA_1)
            int_H_Dependencies_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_H_Dependencies_hbm15[63:32] & ~wmask);
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

// int_hv_offset_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM0_DATA_0)
            int_hv_offset_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm0[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM0_DATA_1)
            int_hv_offset_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm0[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM1_DATA_0)
            int_hv_offset_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm1[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM1_DATA_1)
            int_hv_offset_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm1[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM2_DATA_0)
            int_hv_offset_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm2[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM2_DATA_1)
            int_hv_offset_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm2[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM3_DATA_0)
            int_hv_offset_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm3[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM3_DATA_1)
            int_hv_offset_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm3[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM4_DATA_0)
            int_hv_offset_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm4[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM4_DATA_1)
            int_hv_offset_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm4[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM5_DATA_0)
            int_hv_offset_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm5[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM5_DATA_1)
            int_hv_offset_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm5[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM6_DATA_0)
            int_hv_offset_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm6[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM6_DATA_1)
            int_hv_offset_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm6[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM7_DATA_0)
            int_hv_offset_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm7[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM7_DATA_1)
            int_hv_offset_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm7[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM8_DATA_0)
            int_hv_offset_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm8[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM8_DATA_1)
            int_hv_offset_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm8[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM9_DATA_0)
            int_hv_offset_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm9[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM9_DATA_1)
            int_hv_offset_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm9[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM10_DATA_0)
            int_hv_offset_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm10[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM10_DATA_1)
            int_hv_offset_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm10[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM11_DATA_0)
            int_hv_offset_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm11[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM11_DATA_1)
            int_hv_offset_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm11[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM12_DATA_0)
            int_hv_offset_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm12[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM12_DATA_1)
            int_hv_offset_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm12[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM13_DATA_0)
            int_hv_offset_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm13[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM13_DATA_1)
            int_hv_offset_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm13[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM14_DATA_0)
            int_hv_offset_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm14[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM14_DATA_1)
            int_hv_offset_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm14[63:32] & ~wmask);
    end
end

// int_hv_offset_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM15_DATA_0)
            int_hv_offset_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm15[31:0] & ~wmask);
    end
end

// int_hv_offset_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_offset_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_OFFSET_HBM15_DATA_1)
            int_hv_offset_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_hv_offset_hbm15[63:32] & ~wmask);
    end
end

// int_hv_index_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM0_DATA_0)
            int_hv_index_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm0[31:0] & ~wmask);
    end
end

// int_hv_index_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM0_DATA_1)
            int_hv_index_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm0[63:32] & ~wmask);
    end
end

// int_hv_index_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM1_DATA_0)
            int_hv_index_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm1[31:0] & ~wmask);
    end
end

// int_hv_index_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM1_DATA_1)
            int_hv_index_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm1[63:32] & ~wmask);
    end
end

// int_hv_index_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM2_DATA_0)
            int_hv_index_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm2[31:0] & ~wmask);
    end
end

// int_hv_index_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM2_DATA_1)
            int_hv_index_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm2[63:32] & ~wmask);
    end
end

// int_hv_index_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM3_DATA_0)
            int_hv_index_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm3[31:0] & ~wmask);
    end
end

// int_hv_index_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM3_DATA_1)
            int_hv_index_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm3[63:32] & ~wmask);
    end
end

// int_hv_index_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM4_DATA_0)
            int_hv_index_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm4[31:0] & ~wmask);
    end
end

// int_hv_index_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM4_DATA_1)
            int_hv_index_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm4[63:32] & ~wmask);
    end
end

// int_hv_index_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM5_DATA_0)
            int_hv_index_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm5[31:0] & ~wmask);
    end
end

// int_hv_index_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM5_DATA_1)
            int_hv_index_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm5[63:32] & ~wmask);
    end
end

// int_hv_index_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM6_DATA_0)
            int_hv_index_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm6[31:0] & ~wmask);
    end
end

// int_hv_index_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM6_DATA_1)
            int_hv_index_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm6[63:32] & ~wmask);
    end
end

// int_hv_index_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM7_DATA_0)
            int_hv_index_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm7[31:0] & ~wmask);
    end
end

// int_hv_index_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM7_DATA_1)
            int_hv_index_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm7[63:32] & ~wmask);
    end
end

// int_hv_index_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM8_DATA_0)
            int_hv_index_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm8[31:0] & ~wmask);
    end
end

// int_hv_index_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM8_DATA_1)
            int_hv_index_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm8[63:32] & ~wmask);
    end
end

// int_hv_index_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM9_DATA_0)
            int_hv_index_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm9[31:0] & ~wmask);
    end
end

// int_hv_index_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM9_DATA_1)
            int_hv_index_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm9[63:32] & ~wmask);
    end
end

// int_hv_index_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM10_DATA_0)
            int_hv_index_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm10[31:0] & ~wmask);
    end
end

// int_hv_index_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM10_DATA_1)
            int_hv_index_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm10[63:32] & ~wmask);
    end
end

// int_hv_index_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM11_DATA_0)
            int_hv_index_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm11[31:0] & ~wmask);
    end
end

// int_hv_index_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM11_DATA_1)
            int_hv_index_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm11[63:32] & ~wmask);
    end
end

// int_hv_index_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM12_DATA_0)
            int_hv_index_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm12[31:0] & ~wmask);
    end
end

// int_hv_index_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM12_DATA_1)
            int_hv_index_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm12[63:32] & ~wmask);
    end
end

// int_hv_index_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM13_DATA_0)
            int_hv_index_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm13[31:0] & ~wmask);
    end
end

// int_hv_index_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM13_DATA_1)
            int_hv_index_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm13[63:32] & ~wmask);
    end
end

// int_hv_index_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM14_DATA_0)
            int_hv_index_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm14[31:0] & ~wmask);
    end
end

// int_hv_index_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM14_DATA_1)
            int_hv_index_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm14[63:32] & ~wmask);
    end
end

// int_hv_index_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM15_DATA_0)
            int_hv_index_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm15[31:0] & ~wmask);
    end
end

// int_hv_index_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_hv_index_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HV_INDEX_HBM15_DATA_1)
            int_hv_index_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_hv_index_hbm15[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM0_DATA_0)
            int_to_process_list_hbm0[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm0[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM0_DATA_1)
            int_to_process_list_hbm0[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm0[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM1_DATA_0)
            int_to_process_list_hbm1[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm1[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM1_DATA_1)
            int_to_process_list_hbm1[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm1[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM2_DATA_0)
            int_to_process_list_hbm2[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm2[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM2_DATA_1)
            int_to_process_list_hbm2[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm2[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM3_DATA_0)
            int_to_process_list_hbm3[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm3[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM3_DATA_1)
            int_to_process_list_hbm3[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm3[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM4_DATA_0)
            int_to_process_list_hbm4[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm4[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM4_DATA_1)
            int_to_process_list_hbm4[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm4[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM5_DATA_0)
            int_to_process_list_hbm5[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm5[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM5_DATA_1)
            int_to_process_list_hbm5[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm5[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM6_DATA_0)
            int_to_process_list_hbm6[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm6[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM6_DATA_1)
            int_to_process_list_hbm6[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm6[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM7_DATA_0)
            int_to_process_list_hbm7[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm7[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM7_DATA_1)
            int_to_process_list_hbm7[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm7[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM8_DATA_0)
            int_to_process_list_hbm8[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm8[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM8_DATA_1)
            int_to_process_list_hbm8[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm8[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM9_DATA_0)
            int_to_process_list_hbm9[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm9[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM9_DATA_1)
            int_to_process_list_hbm9[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm9[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM10_DATA_0)
            int_to_process_list_hbm10[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm10[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM10_DATA_1)
            int_to_process_list_hbm10[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm10[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM11_DATA_0)
            int_to_process_list_hbm11[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm11[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM11_DATA_1)
            int_to_process_list_hbm11[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm11[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM12_DATA_0)
            int_to_process_list_hbm12[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm12[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM12_DATA_1)
            int_to_process_list_hbm12[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm12[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM13_DATA_0)
            int_to_process_list_hbm13[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm13[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM13_DATA_1)
            int_to_process_list_hbm13[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm13[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM14_DATA_0)
            int_to_process_list_hbm14[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm14[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM14_DATA_1)
            int_to_process_list_hbm14[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm14[63:32] & ~wmask);
    end
end

// int_to_process_list_hbm15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM15_DATA_0)
            int_to_process_list_hbm15[31:0] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm15[31:0] & ~wmask);
    end
end

// int_to_process_list_hbm15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_to_process_list_hbm15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TO_PROCESS_LIST_HBM15_DATA_1)
            int_to_process_list_hbm15[63:32] <= (WDATA[31:0] & wmask) | (int_to_process_list_hbm15[63:32] & ~wmask);
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

// int_stage[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_stage[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STAGE_DATA_0)
            int_stage[31:0] <= (WDATA[31:0] & wmask) | (int_stage[31:0] & ~wmask);
    end
end

// int_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_DATA_0)
            int_r[31:0] <= (WDATA[31:0] & wmask) | (int_r[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
