
    wire dl_reset;
    wire dl_clock;
    assign dl_reset = ap_rst_n;
    assign dl_clock = ap_clk;
    wire [14:0] proc_0_data_FIFO_blk;
    wire [14:0] proc_0_data_PIPO_blk;
    wire [14:0] proc_0_start_FIFO_blk;
    wire [14:0] proc_0_TLF_FIFO_blk;
    wire [14:0] proc_0_input_sync_blk;
    wire [14:0] proc_0_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_0;
    reg [14:0] proc_dep_vld_vec_0_reg;
    wire [14:0] in_chan_dep_vld_vec_0;
    wire [239:0] in_chan_dep_data_vec_0;
    wire [14:0] token_in_vec_0;
    wire [14:0] out_chan_dep_vld_vec_0;
    wire [15:0] out_chan_dep_data_0;
    wire [14:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [15:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [15:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [15:0] dep_chan_data_3_0;
    wire token_3_0;
    wire dep_chan_vld_4_0;
    wire [15:0] dep_chan_data_4_0;
    wire token_4_0;
    wire dep_chan_vld_5_0;
    wire [15:0] dep_chan_data_5_0;
    wire token_5_0;
    wire dep_chan_vld_6_0;
    wire [15:0] dep_chan_data_6_0;
    wire token_6_0;
    wire dep_chan_vld_7_0;
    wire [15:0] dep_chan_data_7_0;
    wire token_7_0;
    wire dep_chan_vld_8_0;
    wire [15:0] dep_chan_data_8_0;
    wire token_8_0;
    wire dep_chan_vld_9_0;
    wire [15:0] dep_chan_data_9_0;
    wire token_9_0;
    wire dep_chan_vld_10_0;
    wire [15:0] dep_chan_data_10_0;
    wire token_10_0;
    wire dep_chan_vld_11_0;
    wire [15:0] dep_chan_data_11_0;
    wire token_11_0;
    wire dep_chan_vld_12_0;
    wire [15:0] dep_chan_data_12_0;
    wire token_12_0;
    wire dep_chan_vld_13_0;
    wire [15:0] dep_chan_data_13_0;
    wire token_13_0;
    wire dep_chan_vld_14_0;
    wire [15:0] dep_chan_data_14_0;
    wire token_14_0;
    wire dep_chan_vld_15_0;
    wire [15:0] dep_chan_data_15_0;
    wire token_15_0;
    wire [14:0] proc_1_data_FIFO_blk;
    wire [14:0] proc_1_data_PIPO_blk;
    wire [14:0] proc_1_start_FIFO_blk;
    wire [14:0] proc_1_TLF_FIFO_blk;
    wire [14:0] proc_1_input_sync_blk;
    wire [14:0] proc_1_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_1;
    reg [14:0] proc_dep_vld_vec_1_reg;
    wire [14:0] in_chan_dep_vld_vec_1;
    wire [239:0] in_chan_dep_data_vec_1;
    wire [14:0] token_in_vec_1;
    wire [14:0] out_chan_dep_vld_vec_1;
    wire [15:0] out_chan_dep_data_1;
    wire [14:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [15:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [15:0] dep_chan_data_2_1;
    wire token_2_1;
    wire dep_chan_vld_3_1;
    wire [15:0] dep_chan_data_3_1;
    wire token_3_1;
    wire dep_chan_vld_4_1;
    wire [15:0] dep_chan_data_4_1;
    wire token_4_1;
    wire dep_chan_vld_5_1;
    wire [15:0] dep_chan_data_5_1;
    wire token_5_1;
    wire dep_chan_vld_6_1;
    wire [15:0] dep_chan_data_6_1;
    wire token_6_1;
    wire dep_chan_vld_7_1;
    wire [15:0] dep_chan_data_7_1;
    wire token_7_1;
    wire dep_chan_vld_8_1;
    wire [15:0] dep_chan_data_8_1;
    wire token_8_1;
    wire dep_chan_vld_9_1;
    wire [15:0] dep_chan_data_9_1;
    wire token_9_1;
    wire dep_chan_vld_10_1;
    wire [15:0] dep_chan_data_10_1;
    wire token_10_1;
    wire dep_chan_vld_11_1;
    wire [15:0] dep_chan_data_11_1;
    wire token_11_1;
    wire dep_chan_vld_12_1;
    wire [15:0] dep_chan_data_12_1;
    wire token_12_1;
    wire dep_chan_vld_13_1;
    wire [15:0] dep_chan_data_13_1;
    wire token_13_1;
    wire dep_chan_vld_14_1;
    wire [15:0] dep_chan_data_14_1;
    wire token_14_1;
    wire dep_chan_vld_15_1;
    wire [15:0] dep_chan_data_15_1;
    wire token_15_1;
    wire [14:0] proc_2_data_FIFO_blk;
    wire [14:0] proc_2_data_PIPO_blk;
    wire [14:0] proc_2_start_FIFO_blk;
    wire [14:0] proc_2_TLF_FIFO_blk;
    wire [14:0] proc_2_input_sync_blk;
    wire [14:0] proc_2_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_2;
    reg [14:0] proc_dep_vld_vec_2_reg;
    wire [14:0] in_chan_dep_vld_vec_2;
    wire [239:0] in_chan_dep_data_vec_2;
    wire [14:0] token_in_vec_2;
    wire [14:0] out_chan_dep_vld_vec_2;
    wire [15:0] out_chan_dep_data_2;
    wire [14:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [15:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [15:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [15:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_4_2;
    wire [15:0] dep_chan_data_4_2;
    wire token_4_2;
    wire dep_chan_vld_5_2;
    wire [15:0] dep_chan_data_5_2;
    wire token_5_2;
    wire dep_chan_vld_6_2;
    wire [15:0] dep_chan_data_6_2;
    wire token_6_2;
    wire dep_chan_vld_7_2;
    wire [15:0] dep_chan_data_7_2;
    wire token_7_2;
    wire dep_chan_vld_8_2;
    wire [15:0] dep_chan_data_8_2;
    wire token_8_2;
    wire dep_chan_vld_9_2;
    wire [15:0] dep_chan_data_9_2;
    wire token_9_2;
    wire dep_chan_vld_10_2;
    wire [15:0] dep_chan_data_10_2;
    wire token_10_2;
    wire dep_chan_vld_11_2;
    wire [15:0] dep_chan_data_11_2;
    wire token_11_2;
    wire dep_chan_vld_12_2;
    wire [15:0] dep_chan_data_12_2;
    wire token_12_2;
    wire dep_chan_vld_13_2;
    wire [15:0] dep_chan_data_13_2;
    wire token_13_2;
    wire dep_chan_vld_14_2;
    wire [15:0] dep_chan_data_14_2;
    wire token_14_2;
    wire dep_chan_vld_15_2;
    wire [15:0] dep_chan_data_15_2;
    wire token_15_2;
    wire [14:0] proc_3_data_FIFO_blk;
    wire [14:0] proc_3_data_PIPO_blk;
    wire [14:0] proc_3_start_FIFO_blk;
    wire [14:0] proc_3_TLF_FIFO_blk;
    wire [14:0] proc_3_input_sync_blk;
    wire [14:0] proc_3_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_3;
    reg [14:0] proc_dep_vld_vec_3_reg;
    wire [14:0] in_chan_dep_vld_vec_3;
    wire [239:0] in_chan_dep_data_vec_3;
    wire [14:0] token_in_vec_3;
    wire [14:0] out_chan_dep_vld_vec_3;
    wire [15:0] out_chan_dep_data_3;
    wire [14:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [15:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_1_3;
    wire [15:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_2_3;
    wire [15:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [15:0] dep_chan_data_4_3;
    wire token_4_3;
    wire dep_chan_vld_5_3;
    wire [15:0] dep_chan_data_5_3;
    wire token_5_3;
    wire dep_chan_vld_6_3;
    wire [15:0] dep_chan_data_6_3;
    wire token_6_3;
    wire dep_chan_vld_7_3;
    wire [15:0] dep_chan_data_7_3;
    wire token_7_3;
    wire dep_chan_vld_8_3;
    wire [15:0] dep_chan_data_8_3;
    wire token_8_3;
    wire dep_chan_vld_9_3;
    wire [15:0] dep_chan_data_9_3;
    wire token_9_3;
    wire dep_chan_vld_10_3;
    wire [15:0] dep_chan_data_10_3;
    wire token_10_3;
    wire dep_chan_vld_11_3;
    wire [15:0] dep_chan_data_11_3;
    wire token_11_3;
    wire dep_chan_vld_12_3;
    wire [15:0] dep_chan_data_12_3;
    wire token_12_3;
    wire dep_chan_vld_13_3;
    wire [15:0] dep_chan_data_13_3;
    wire token_13_3;
    wire dep_chan_vld_14_3;
    wire [15:0] dep_chan_data_14_3;
    wire token_14_3;
    wire dep_chan_vld_15_3;
    wire [15:0] dep_chan_data_15_3;
    wire token_15_3;
    wire [14:0] proc_4_data_FIFO_blk;
    wire [14:0] proc_4_data_PIPO_blk;
    wire [14:0] proc_4_start_FIFO_blk;
    wire [14:0] proc_4_TLF_FIFO_blk;
    wire [14:0] proc_4_input_sync_blk;
    wire [14:0] proc_4_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_4;
    reg [14:0] proc_dep_vld_vec_4_reg;
    wire [14:0] in_chan_dep_vld_vec_4;
    wire [239:0] in_chan_dep_data_vec_4;
    wire [14:0] token_in_vec_4;
    wire [14:0] out_chan_dep_vld_vec_4;
    wire [15:0] out_chan_dep_data_4;
    wire [14:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_0_4;
    wire [15:0] dep_chan_data_0_4;
    wire token_0_4;
    wire dep_chan_vld_1_4;
    wire [15:0] dep_chan_data_1_4;
    wire token_1_4;
    wire dep_chan_vld_2_4;
    wire [15:0] dep_chan_data_2_4;
    wire token_2_4;
    wire dep_chan_vld_3_4;
    wire [15:0] dep_chan_data_3_4;
    wire token_3_4;
    wire dep_chan_vld_5_4;
    wire [15:0] dep_chan_data_5_4;
    wire token_5_4;
    wire dep_chan_vld_6_4;
    wire [15:0] dep_chan_data_6_4;
    wire token_6_4;
    wire dep_chan_vld_7_4;
    wire [15:0] dep_chan_data_7_4;
    wire token_7_4;
    wire dep_chan_vld_8_4;
    wire [15:0] dep_chan_data_8_4;
    wire token_8_4;
    wire dep_chan_vld_9_4;
    wire [15:0] dep_chan_data_9_4;
    wire token_9_4;
    wire dep_chan_vld_10_4;
    wire [15:0] dep_chan_data_10_4;
    wire token_10_4;
    wire dep_chan_vld_11_4;
    wire [15:0] dep_chan_data_11_4;
    wire token_11_4;
    wire dep_chan_vld_12_4;
    wire [15:0] dep_chan_data_12_4;
    wire token_12_4;
    wire dep_chan_vld_13_4;
    wire [15:0] dep_chan_data_13_4;
    wire token_13_4;
    wire dep_chan_vld_14_4;
    wire [15:0] dep_chan_data_14_4;
    wire token_14_4;
    wire dep_chan_vld_15_4;
    wire [15:0] dep_chan_data_15_4;
    wire token_15_4;
    wire [14:0] proc_5_data_FIFO_blk;
    wire [14:0] proc_5_data_PIPO_blk;
    wire [14:0] proc_5_start_FIFO_blk;
    wire [14:0] proc_5_TLF_FIFO_blk;
    wire [14:0] proc_5_input_sync_blk;
    wire [14:0] proc_5_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_5;
    reg [14:0] proc_dep_vld_vec_5_reg;
    wire [14:0] in_chan_dep_vld_vec_5;
    wire [239:0] in_chan_dep_data_vec_5;
    wire [14:0] token_in_vec_5;
    wire [14:0] out_chan_dep_vld_vec_5;
    wire [15:0] out_chan_dep_data_5;
    wire [14:0] token_out_vec_5;
    wire dl_detect_out_5;
    wire dep_chan_vld_0_5;
    wire [15:0] dep_chan_data_0_5;
    wire token_0_5;
    wire dep_chan_vld_1_5;
    wire [15:0] dep_chan_data_1_5;
    wire token_1_5;
    wire dep_chan_vld_2_5;
    wire [15:0] dep_chan_data_2_5;
    wire token_2_5;
    wire dep_chan_vld_3_5;
    wire [15:0] dep_chan_data_3_5;
    wire token_3_5;
    wire dep_chan_vld_4_5;
    wire [15:0] dep_chan_data_4_5;
    wire token_4_5;
    wire dep_chan_vld_6_5;
    wire [15:0] dep_chan_data_6_5;
    wire token_6_5;
    wire dep_chan_vld_7_5;
    wire [15:0] dep_chan_data_7_5;
    wire token_7_5;
    wire dep_chan_vld_8_5;
    wire [15:0] dep_chan_data_8_5;
    wire token_8_5;
    wire dep_chan_vld_9_5;
    wire [15:0] dep_chan_data_9_5;
    wire token_9_5;
    wire dep_chan_vld_10_5;
    wire [15:0] dep_chan_data_10_5;
    wire token_10_5;
    wire dep_chan_vld_11_5;
    wire [15:0] dep_chan_data_11_5;
    wire token_11_5;
    wire dep_chan_vld_12_5;
    wire [15:0] dep_chan_data_12_5;
    wire token_12_5;
    wire dep_chan_vld_13_5;
    wire [15:0] dep_chan_data_13_5;
    wire token_13_5;
    wire dep_chan_vld_14_5;
    wire [15:0] dep_chan_data_14_5;
    wire token_14_5;
    wire dep_chan_vld_15_5;
    wire [15:0] dep_chan_data_15_5;
    wire token_15_5;
    wire [14:0] proc_6_data_FIFO_blk;
    wire [14:0] proc_6_data_PIPO_blk;
    wire [14:0] proc_6_start_FIFO_blk;
    wire [14:0] proc_6_TLF_FIFO_blk;
    wire [14:0] proc_6_input_sync_blk;
    wire [14:0] proc_6_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_6;
    reg [14:0] proc_dep_vld_vec_6_reg;
    wire [14:0] in_chan_dep_vld_vec_6;
    wire [239:0] in_chan_dep_data_vec_6;
    wire [14:0] token_in_vec_6;
    wire [14:0] out_chan_dep_vld_vec_6;
    wire [15:0] out_chan_dep_data_6;
    wire [14:0] token_out_vec_6;
    wire dl_detect_out_6;
    wire dep_chan_vld_0_6;
    wire [15:0] dep_chan_data_0_6;
    wire token_0_6;
    wire dep_chan_vld_1_6;
    wire [15:0] dep_chan_data_1_6;
    wire token_1_6;
    wire dep_chan_vld_2_6;
    wire [15:0] dep_chan_data_2_6;
    wire token_2_6;
    wire dep_chan_vld_3_6;
    wire [15:0] dep_chan_data_3_6;
    wire token_3_6;
    wire dep_chan_vld_4_6;
    wire [15:0] dep_chan_data_4_6;
    wire token_4_6;
    wire dep_chan_vld_5_6;
    wire [15:0] dep_chan_data_5_6;
    wire token_5_6;
    wire dep_chan_vld_7_6;
    wire [15:0] dep_chan_data_7_6;
    wire token_7_6;
    wire dep_chan_vld_8_6;
    wire [15:0] dep_chan_data_8_6;
    wire token_8_6;
    wire dep_chan_vld_9_6;
    wire [15:0] dep_chan_data_9_6;
    wire token_9_6;
    wire dep_chan_vld_10_6;
    wire [15:0] dep_chan_data_10_6;
    wire token_10_6;
    wire dep_chan_vld_11_6;
    wire [15:0] dep_chan_data_11_6;
    wire token_11_6;
    wire dep_chan_vld_12_6;
    wire [15:0] dep_chan_data_12_6;
    wire token_12_6;
    wire dep_chan_vld_13_6;
    wire [15:0] dep_chan_data_13_6;
    wire token_13_6;
    wire dep_chan_vld_14_6;
    wire [15:0] dep_chan_data_14_6;
    wire token_14_6;
    wire dep_chan_vld_15_6;
    wire [15:0] dep_chan_data_15_6;
    wire token_15_6;
    wire [14:0] proc_7_data_FIFO_blk;
    wire [14:0] proc_7_data_PIPO_blk;
    wire [14:0] proc_7_start_FIFO_blk;
    wire [14:0] proc_7_TLF_FIFO_blk;
    wire [14:0] proc_7_input_sync_blk;
    wire [14:0] proc_7_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_7;
    reg [14:0] proc_dep_vld_vec_7_reg;
    wire [14:0] in_chan_dep_vld_vec_7;
    wire [239:0] in_chan_dep_data_vec_7;
    wire [14:0] token_in_vec_7;
    wire [14:0] out_chan_dep_vld_vec_7;
    wire [15:0] out_chan_dep_data_7;
    wire [14:0] token_out_vec_7;
    wire dl_detect_out_7;
    wire dep_chan_vld_0_7;
    wire [15:0] dep_chan_data_0_7;
    wire token_0_7;
    wire dep_chan_vld_1_7;
    wire [15:0] dep_chan_data_1_7;
    wire token_1_7;
    wire dep_chan_vld_2_7;
    wire [15:0] dep_chan_data_2_7;
    wire token_2_7;
    wire dep_chan_vld_3_7;
    wire [15:0] dep_chan_data_3_7;
    wire token_3_7;
    wire dep_chan_vld_4_7;
    wire [15:0] dep_chan_data_4_7;
    wire token_4_7;
    wire dep_chan_vld_5_7;
    wire [15:0] dep_chan_data_5_7;
    wire token_5_7;
    wire dep_chan_vld_6_7;
    wire [15:0] dep_chan_data_6_7;
    wire token_6_7;
    wire dep_chan_vld_8_7;
    wire [15:0] dep_chan_data_8_7;
    wire token_8_7;
    wire dep_chan_vld_9_7;
    wire [15:0] dep_chan_data_9_7;
    wire token_9_7;
    wire dep_chan_vld_10_7;
    wire [15:0] dep_chan_data_10_7;
    wire token_10_7;
    wire dep_chan_vld_11_7;
    wire [15:0] dep_chan_data_11_7;
    wire token_11_7;
    wire dep_chan_vld_12_7;
    wire [15:0] dep_chan_data_12_7;
    wire token_12_7;
    wire dep_chan_vld_13_7;
    wire [15:0] dep_chan_data_13_7;
    wire token_13_7;
    wire dep_chan_vld_14_7;
    wire [15:0] dep_chan_data_14_7;
    wire token_14_7;
    wire dep_chan_vld_15_7;
    wire [15:0] dep_chan_data_15_7;
    wire token_15_7;
    wire [14:0] proc_8_data_FIFO_blk;
    wire [14:0] proc_8_data_PIPO_blk;
    wire [14:0] proc_8_start_FIFO_blk;
    wire [14:0] proc_8_TLF_FIFO_blk;
    wire [14:0] proc_8_input_sync_blk;
    wire [14:0] proc_8_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_8;
    reg [14:0] proc_dep_vld_vec_8_reg;
    wire [14:0] in_chan_dep_vld_vec_8;
    wire [239:0] in_chan_dep_data_vec_8;
    wire [14:0] token_in_vec_8;
    wire [14:0] out_chan_dep_vld_vec_8;
    wire [15:0] out_chan_dep_data_8;
    wire [14:0] token_out_vec_8;
    wire dl_detect_out_8;
    wire dep_chan_vld_0_8;
    wire [15:0] dep_chan_data_0_8;
    wire token_0_8;
    wire dep_chan_vld_1_8;
    wire [15:0] dep_chan_data_1_8;
    wire token_1_8;
    wire dep_chan_vld_2_8;
    wire [15:0] dep_chan_data_2_8;
    wire token_2_8;
    wire dep_chan_vld_3_8;
    wire [15:0] dep_chan_data_3_8;
    wire token_3_8;
    wire dep_chan_vld_4_8;
    wire [15:0] dep_chan_data_4_8;
    wire token_4_8;
    wire dep_chan_vld_5_8;
    wire [15:0] dep_chan_data_5_8;
    wire token_5_8;
    wire dep_chan_vld_6_8;
    wire [15:0] dep_chan_data_6_8;
    wire token_6_8;
    wire dep_chan_vld_7_8;
    wire [15:0] dep_chan_data_7_8;
    wire token_7_8;
    wire dep_chan_vld_9_8;
    wire [15:0] dep_chan_data_9_8;
    wire token_9_8;
    wire dep_chan_vld_10_8;
    wire [15:0] dep_chan_data_10_8;
    wire token_10_8;
    wire dep_chan_vld_11_8;
    wire [15:0] dep_chan_data_11_8;
    wire token_11_8;
    wire dep_chan_vld_12_8;
    wire [15:0] dep_chan_data_12_8;
    wire token_12_8;
    wire dep_chan_vld_13_8;
    wire [15:0] dep_chan_data_13_8;
    wire token_13_8;
    wire dep_chan_vld_14_8;
    wire [15:0] dep_chan_data_14_8;
    wire token_14_8;
    wire dep_chan_vld_15_8;
    wire [15:0] dep_chan_data_15_8;
    wire token_15_8;
    wire [14:0] proc_9_data_FIFO_blk;
    wire [14:0] proc_9_data_PIPO_blk;
    wire [14:0] proc_9_start_FIFO_blk;
    wire [14:0] proc_9_TLF_FIFO_blk;
    wire [14:0] proc_9_input_sync_blk;
    wire [14:0] proc_9_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_9;
    reg [14:0] proc_dep_vld_vec_9_reg;
    wire [14:0] in_chan_dep_vld_vec_9;
    wire [239:0] in_chan_dep_data_vec_9;
    wire [14:0] token_in_vec_9;
    wire [14:0] out_chan_dep_vld_vec_9;
    wire [15:0] out_chan_dep_data_9;
    wire [14:0] token_out_vec_9;
    wire dl_detect_out_9;
    wire dep_chan_vld_0_9;
    wire [15:0] dep_chan_data_0_9;
    wire token_0_9;
    wire dep_chan_vld_1_9;
    wire [15:0] dep_chan_data_1_9;
    wire token_1_9;
    wire dep_chan_vld_2_9;
    wire [15:0] dep_chan_data_2_9;
    wire token_2_9;
    wire dep_chan_vld_3_9;
    wire [15:0] dep_chan_data_3_9;
    wire token_3_9;
    wire dep_chan_vld_4_9;
    wire [15:0] dep_chan_data_4_9;
    wire token_4_9;
    wire dep_chan_vld_5_9;
    wire [15:0] dep_chan_data_5_9;
    wire token_5_9;
    wire dep_chan_vld_6_9;
    wire [15:0] dep_chan_data_6_9;
    wire token_6_9;
    wire dep_chan_vld_7_9;
    wire [15:0] dep_chan_data_7_9;
    wire token_7_9;
    wire dep_chan_vld_8_9;
    wire [15:0] dep_chan_data_8_9;
    wire token_8_9;
    wire dep_chan_vld_10_9;
    wire [15:0] dep_chan_data_10_9;
    wire token_10_9;
    wire dep_chan_vld_11_9;
    wire [15:0] dep_chan_data_11_9;
    wire token_11_9;
    wire dep_chan_vld_12_9;
    wire [15:0] dep_chan_data_12_9;
    wire token_12_9;
    wire dep_chan_vld_13_9;
    wire [15:0] dep_chan_data_13_9;
    wire token_13_9;
    wire dep_chan_vld_14_9;
    wire [15:0] dep_chan_data_14_9;
    wire token_14_9;
    wire dep_chan_vld_15_9;
    wire [15:0] dep_chan_data_15_9;
    wire token_15_9;
    wire [14:0] proc_10_data_FIFO_blk;
    wire [14:0] proc_10_data_PIPO_blk;
    wire [14:0] proc_10_start_FIFO_blk;
    wire [14:0] proc_10_TLF_FIFO_blk;
    wire [14:0] proc_10_input_sync_blk;
    wire [14:0] proc_10_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_10;
    reg [14:0] proc_dep_vld_vec_10_reg;
    wire [14:0] in_chan_dep_vld_vec_10;
    wire [239:0] in_chan_dep_data_vec_10;
    wire [14:0] token_in_vec_10;
    wire [14:0] out_chan_dep_vld_vec_10;
    wire [15:0] out_chan_dep_data_10;
    wire [14:0] token_out_vec_10;
    wire dl_detect_out_10;
    wire dep_chan_vld_0_10;
    wire [15:0] dep_chan_data_0_10;
    wire token_0_10;
    wire dep_chan_vld_1_10;
    wire [15:0] dep_chan_data_1_10;
    wire token_1_10;
    wire dep_chan_vld_2_10;
    wire [15:0] dep_chan_data_2_10;
    wire token_2_10;
    wire dep_chan_vld_3_10;
    wire [15:0] dep_chan_data_3_10;
    wire token_3_10;
    wire dep_chan_vld_4_10;
    wire [15:0] dep_chan_data_4_10;
    wire token_4_10;
    wire dep_chan_vld_5_10;
    wire [15:0] dep_chan_data_5_10;
    wire token_5_10;
    wire dep_chan_vld_6_10;
    wire [15:0] dep_chan_data_6_10;
    wire token_6_10;
    wire dep_chan_vld_7_10;
    wire [15:0] dep_chan_data_7_10;
    wire token_7_10;
    wire dep_chan_vld_8_10;
    wire [15:0] dep_chan_data_8_10;
    wire token_8_10;
    wire dep_chan_vld_9_10;
    wire [15:0] dep_chan_data_9_10;
    wire token_9_10;
    wire dep_chan_vld_11_10;
    wire [15:0] dep_chan_data_11_10;
    wire token_11_10;
    wire dep_chan_vld_12_10;
    wire [15:0] dep_chan_data_12_10;
    wire token_12_10;
    wire dep_chan_vld_13_10;
    wire [15:0] dep_chan_data_13_10;
    wire token_13_10;
    wire dep_chan_vld_14_10;
    wire [15:0] dep_chan_data_14_10;
    wire token_14_10;
    wire dep_chan_vld_15_10;
    wire [15:0] dep_chan_data_15_10;
    wire token_15_10;
    wire [14:0] proc_11_data_FIFO_blk;
    wire [14:0] proc_11_data_PIPO_blk;
    wire [14:0] proc_11_start_FIFO_blk;
    wire [14:0] proc_11_TLF_FIFO_blk;
    wire [14:0] proc_11_input_sync_blk;
    wire [14:0] proc_11_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_11;
    reg [14:0] proc_dep_vld_vec_11_reg;
    wire [14:0] in_chan_dep_vld_vec_11;
    wire [239:0] in_chan_dep_data_vec_11;
    wire [14:0] token_in_vec_11;
    wire [14:0] out_chan_dep_vld_vec_11;
    wire [15:0] out_chan_dep_data_11;
    wire [14:0] token_out_vec_11;
    wire dl_detect_out_11;
    wire dep_chan_vld_0_11;
    wire [15:0] dep_chan_data_0_11;
    wire token_0_11;
    wire dep_chan_vld_1_11;
    wire [15:0] dep_chan_data_1_11;
    wire token_1_11;
    wire dep_chan_vld_2_11;
    wire [15:0] dep_chan_data_2_11;
    wire token_2_11;
    wire dep_chan_vld_3_11;
    wire [15:0] dep_chan_data_3_11;
    wire token_3_11;
    wire dep_chan_vld_4_11;
    wire [15:0] dep_chan_data_4_11;
    wire token_4_11;
    wire dep_chan_vld_5_11;
    wire [15:0] dep_chan_data_5_11;
    wire token_5_11;
    wire dep_chan_vld_6_11;
    wire [15:0] dep_chan_data_6_11;
    wire token_6_11;
    wire dep_chan_vld_7_11;
    wire [15:0] dep_chan_data_7_11;
    wire token_7_11;
    wire dep_chan_vld_8_11;
    wire [15:0] dep_chan_data_8_11;
    wire token_8_11;
    wire dep_chan_vld_9_11;
    wire [15:0] dep_chan_data_9_11;
    wire token_9_11;
    wire dep_chan_vld_10_11;
    wire [15:0] dep_chan_data_10_11;
    wire token_10_11;
    wire dep_chan_vld_12_11;
    wire [15:0] dep_chan_data_12_11;
    wire token_12_11;
    wire dep_chan_vld_13_11;
    wire [15:0] dep_chan_data_13_11;
    wire token_13_11;
    wire dep_chan_vld_14_11;
    wire [15:0] dep_chan_data_14_11;
    wire token_14_11;
    wire dep_chan_vld_15_11;
    wire [15:0] dep_chan_data_15_11;
    wire token_15_11;
    wire [14:0] proc_12_data_FIFO_blk;
    wire [14:0] proc_12_data_PIPO_blk;
    wire [14:0] proc_12_start_FIFO_blk;
    wire [14:0] proc_12_TLF_FIFO_blk;
    wire [14:0] proc_12_input_sync_blk;
    wire [14:0] proc_12_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_12;
    reg [14:0] proc_dep_vld_vec_12_reg;
    wire [14:0] in_chan_dep_vld_vec_12;
    wire [239:0] in_chan_dep_data_vec_12;
    wire [14:0] token_in_vec_12;
    wire [14:0] out_chan_dep_vld_vec_12;
    wire [15:0] out_chan_dep_data_12;
    wire [14:0] token_out_vec_12;
    wire dl_detect_out_12;
    wire dep_chan_vld_0_12;
    wire [15:0] dep_chan_data_0_12;
    wire token_0_12;
    wire dep_chan_vld_1_12;
    wire [15:0] dep_chan_data_1_12;
    wire token_1_12;
    wire dep_chan_vld_2_12;
    wire [15:0] dep_chan_data_2_12;
    wire token_2_12;
    wire dep_chan_vld_3_12;
    wire [15:0] dep_chan_data_3_12;
    wire token_3_12;
    wire dep_chan_vld_4_12;
    wire [15:0] dep_chan_data_4_12;
    wire token_4_12;
    wire dep_chan_vld_5_12;
    wire [15:0] dep_chan_data_5_12;
    wire token_5_12;
    wire dep_chan_vld_6_12;
    wire [15:0] dep_chan_data_6_12;
    wire token_6_12;
    wire dep_chan_vld_7_12;
    wire [15:0] dep_chan_data_7_12;
    wire token_7_12;
    wire dep_chan_vld_8_12;
    wire [15:0] dep_chan_data_8_12;
    wire token_8_12;
    wire dep_chan_vld_9_12;
    wire [15:0] dep_chan_data_9_12;
    wire token_9_12;
    wire dep_chan_vld_10_12;
    wire [15:0] dep_chan_data_10_12;
    wire token_10_12;
    wire dep_chan_vld_11_12;
    wire [15:0] dep_chan_data_11_12;
    wire token_11_12;
    wire dep_chan_vld_13_12;
    wire [15:0] dep_chan_data_13_12;
    wire token_13_12;
    wire dep_chan_vld_14_12;
    wire [15:0] dep_chan_data_14_12;
    wire token_14_12;
    wire dep_chan_vld_15_12;
    wire [15:0] dep_chan_data_15_12;
    wire token_15_12;
    wire [14:0] proc_13_data_FIFO_blk;
    wire [14:0] proc_13_data_PIPO_blk;
    wire [14:0] proc_13_start_FIFO_blk;
    wire [14:0] proc_13_TLF_FIFO_blk;
    wire [14:0] proc_13_input_sync_blk;
    wire [14:0] proc_13_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_13;
    reg [14:0] proc_dep_vld_vec_13_reg;
    wire [14:0] in_chan_dep_vld_vec_13;
    wire [239:0] in_chan_dep_data_vec_13;
    wire [14:0] token_in_vec_13;
    wire [14:0] out_chan_dep_vld_vec_13;
    wire [15:0] out_chan_dep_data_13;
    wire [14:0] token_out_vec_13;
    wire dl_detect_out_13;
    wire dep_chan_vld_0_13;
    wire [15:0] dep_chan_data_0_13;
    wire token_0_13;
    wire dep_chan_vld_1_13;
    wire [15:0] dep_chan_data_1_13;
    wire token_1_13;
    wire dep_chan_vld_2_13;
    wire [15:0] dep_chan_data_2_13;
    wire token_2_13;
    wire dep_chan_vld_3_13;
    wire [15:0] dep_chan_data_3_13;
    wire token_3_13;
    wire dep_chan_vld_4_13;
    wire [15:0] dep_chan_data_4_13;
    wire token_4_13;
    wire dep_chan_vld_5_13;
    wire [15:0] dep_chan_data_5_13;
    wire token_5_13;
    wire dep_chan_vld_6_13;
    wire [15:0] dep_chan_data_6_13;
    wire token_6_13;
    wire dep_chan_vld_7_13;
    wire [15:0] dep_chan_data_7_13;
    wire token_7_13;
    wire dep_chan_vld_8_13;
    wire [15:0] dep_chan_data_8_13;
    wire token_8_13;
    wire dep_chan_vld_9_13;
    wire [15:0] dep_chan_data_9_13;
    wire token_9_13;
    wire dep_chan_vld_10_13;
    wire [15:0] dep_chan_data_10_13;
    wire token_10_13;
    wire dep_chan_vld_11_13;
    wire [15:0] dep_chan_data_11_13;
    wire token_11_13;
    wire dep_chan_vld_12_13;
    wire [15:0] dep_chan_data_12_13;
    wire token_12_13;
    wire dep_chan_vld_14_13;
    wire [15:0] dep_chan_data_14_13;
    wire token_14_13;
    wire dep_chan_vld_15_13;
    wire [15:0] dep_chan_data_15_13;
    wire token_15_13;
    wire [14:0] proc_14_data_FIFO_blk;
    wire [14:0] proc_14_data_PIPO_blk;
    wire [14:0] proc_14_start_FIFO_blk;
    wire [14:0] proc_14_TLF_FIFO_blk;
    wire [14:0] proc_14_input_sync_blk;
    wire [14:0] proc_14_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_14;
    reg [14:0] proc_dep_vld_vec_14_reg;
    wire [14:0] in_chan_dep_vld_vec_14;
    wire [239:0] in_chan_dep_data_vec_14;
    wire [14:0] token_in_vec_14;
    wire [14:0] out_chan_dep_vld_vec_14;
    wire [15:0] out_chan_dep_data_14;
    wire [14:0] token_out_vec_14;
    wire dl_detect_out_14;
    wire dep_chan_vld_0_14;
    wire [15:0] dep_chan_data_0_14;
    wire token_0_14;
    wire dep_chan_vld_1_14;
    wire [15:0] dep_chan_data_1_14;
    wire token_1_14;
    wire dep_chan_vld_2_14;
    wire [15:0] dep_chan_data_2_14;
    wire token_2_14;
    wire dep_chan_vld_3_14;
    wire [15:0] dep_chan_data_3_14;
    wire token_3_14;
    wire dep_chan_vld_4_14;
    wire [15:0] dep_chan_data_4_14;
    wire token_4_14;
    wire dep_chan_vld_5_14;
    wire [15:0] dep_chan_data_5_14;
    wire token_5_14;
    wire dep_chan_vld_6_14;
    wire [15:0] dep_chan_data_6_14;
    wire token_6_14;
    wire dep_chan_vld_7_14;
    wire [15:0] dep_chan_data_7_14;
    wire token_7_14;
    wire dep_chan_vld_8_14;
    wire [15:0] dep_chan_data_8_14;
    wire token_8_14;
    wire dep_chan_vld_9_14;
    wire [15:0] dep_chan_data_9_14;
    wire token_9_14;
    wire dep_chan_vld_10_14;
    wire [15:0] dep_chan_data_10_14;
    wire token_10_14;
    wire dep_chan_vld_11_14;
    wire [15:0] dep_chan_data_11_14;
    wire token_11_14;
    wire dep_chan_vld_12_14;
    wire [15:0] dep_chan_data_12_14;
    wire token_12_14;
    wire dep_chan_vld_13_14;
    wire [15:0] dep_chan_data_13_14;
    wire token_13_14;
    wire dep_chan_vld_15_14;
    wire [15:0] dep_chan_data_15_14;
    wire token_15_14;
    wire [14:0] proc_15_data_FIFO_blk;
    wire [14:0] proc_15_data_PIPO_blk;
    wire [14:0] proc_15_start_FIFO_blk;
    wire [14:0] proc_15_TLF_FIFO_blk;
    wire [14:0] proc_15_input_sync_blk;
    wire [14:0] proc_15_output_sync_blk;
    wire [14:0] proc_dep_vld_vec_15;
    reg [14:0] proc_dep_vld_vec_15_reg;
    wire [14:0] in_chan_dep_vld_vec_15;
    wire [239:0] in_chan_dep_data_vec_15;
    wire [14:0] token_in_vec_15;
    wire [14:0] out_chan_dep_vld_vec_15;
    wire [15:0] out_chan_dep_data_15;
    wire [14:0] token_out_vec_15;
    wire dl_detect_out_15;
    wire dep_chan_vld_0_15;
    wire [15:0] dep_chan_data_0_15;
    wire token_0_15;
    wire dep_chan_vld_1_15;
    wire [15:0] dep_chan_data_1_15;
    wire token_1_15;
    wire dep_chan_vld_2_15;
    wire [15:0] dep_chan_data_2_15;
    wire token_2_15;
    wire dep_chan_vld_3_15;
    wire [15:0] dep_chan_data_3_15;
    wire token_3_15;
    wire dep_chan_vld_4_15;
    wire [15:0] dep_chan_data_4_15;
    wire token_4_15;
    wire dep_chan_vld_5_15;
    wire [15:0] dep_chan_data_5_15;
    wire token_5_15;
    wire dep_chan_vld_6_15;
    wire [15:0] dep_chan_data_6_15;
    wire token_6_15;
    wire dep_chan_vld_7_15;
    wire [15:0] dep_chan_data_7_15;
    wire token_7_15;
    wire dep_chan_vld_8_15;
    wire [15:0] dep_chan_data_8_15;
    wire token_8_15;
    wire dep_chan_vld_9_15;
    wire [15:0] dep_chan_data_9_15;
    wire token_9_15;
    wire dep_chan_vld_10_15;
    wire [15:0] dep_chan_data_10_15;
    wire token_10_15;
    wire dep_chan_vld_11_15;
    wire [15:0] dep_chan_data_11_15;
    wire token_11_15;
    wire dep_chan_vld_12_15;
    wire [15:0] dep_chan_data_12_15;
    wire token_12_15;
    wire dep_chan_vld_13_15;
    wire [15:0] dep_chan_data_13_15;
    wire token_13_15;
    wire dep_chan_vld_14_15;
    wire [15:0] dep_chan_data_14_15;
    wire token_14_15;
    wire [15:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    reg [15:0] origin;

    reg ap_done_reg_0;// for module kernel_kcore_v2h_pe_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module kernel_kcore_v2h_pe_1_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module kernel_kcore_v2h_pe_2_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module kernel_kcore_v2h_pe_3_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_continue;
        end
    end

    reg ap_done_reg_4;// for module kernel_kcore_v2h_pe_4_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_4 <= 'b0;
        end
        else begin
            ap_done_reg_4 <= kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_continue;
        end
    end

    reg ap_done_reg_5;// for module kernel_kcore_v2h_pe_5_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_5 <= 'b0;
        end
        else begin
            ap_done_reg_5 <= kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_continue;
        end
    end

    reg ap_done_reg_6;// for module kernel_kcore_v2h_pe_6_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_6 <= 'b0;
        end
        else begin
            ap_done_reg_6 <= kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_continue;
        end
    end

    reg ap_done_reg_7;// for module kernel_kcore_v2h_pe_7_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_7 <= 'b0;
        end
        else begin
            ap_done_reg_7 <= kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_continue;
        end
    end

    reg ap_done_reg_8;// for module kernel_kcore_v2h_pe_8_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_8 <= 'b0;
        end
        else begin
            ap_done_reg_8 <= kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_continue;
        end
    end

    reg ap_done_reg_9;// for module kernel_kcore_v2h_pe_9_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_9 <= 'b0;
        end
        else begin
            ap_done_reg_9 <= kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_continue;
        end
    end

    reg ap_done_reg_10;// for module kernel_kcore_v2h_pe_10_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_10 <= 'b0;
        end
        else begin
            ap_done_reg_10 <= kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_continue;
        end
    end

    reg ap_done_reg_11;// for module kernel_kcore_v2h_pe_11_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_11 <= 'b0;
        end
        else begin
            ap_done_reg_11 <= kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_continue;
        end
    end

    reg ap_done_reg_12;// for module kernel_kcore_v2h_pe_12_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_12 <= 'b0;
        end
        else begin
            ap_done_reg_12 <= kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_continue;
        end
    end

    reg ap_done_reg_13;// for module kernel_kcore_v2h_pe_13_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_13 <= 'b0;
        end
        else begin
            ap_done_reg_13 <= kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_continue;
        end
    end

    reg ap_done_reg_14;// for module kernel_kcore_v2h_pe_14_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_14 <= 'b0;
        end
        else begin
            ap_done_reg_14 <= kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_continue;
        end
    end

    reg ap_done_reg_15;// for module kernel_kcore_v2h_pe_15_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_15 <= 'b0;
        end
        else begin
            ap_done_reg_15 <= kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_continue;
        end
    end

    // Process: kernel_kcore_v2h_pe_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 0, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0;
    assign proc_0_data_PIPO_blk[0] = 1'b0;
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_0_output_sync_blk[0] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    assign proc_0_data_FIFO_blk[2] = 1'b0;
    assign proc_0_data_PIPO_blk[2] = 1'b0;
    assign proc_0_start_FIFO_blk[2] = 1'b0;
    assign proc_0_TLF_FIFO_blk[2] = 1'b0;
    assign proc_0_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_0_output_sync_blk[2] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (proc_0_data_FIFO_blk[2] | proc_0_data_PIPO_blk[2] | proc_0_start_FIFO_blk[2] | proc_0_TLF_FIFO_blk[2] | proc_0_input_sync_blk[2] | proc_0_output_sync_blk[2]);
    assign proc_0_data_FIFO_blk[3] = 1'b0;
    assign proc_0_data_PIPO_blk[3] = 1'b0;
    assign proc_0_start_FIFO_blk[3] = 1'b0;
    assign proc_0_TLF_FIFO_blk[3] = 1'b0;
    assign proc_0_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_0_output_sync_blk[3] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_0[3] = dl_detect_out ? proc_dep_vld_vec_0_reg[3] : (proc_0_data_FIFO_blk[3] | proc_0_data_PIPO_blk[3] | proc_0_start_FIFO_blk[3] | proc_0_TLF_FIFO_blk[3] | proc_0_input_sync_blk[3] | proc_0_output_sync_blk[3]);
    assign proc_0_data_FIFO_blk[4] = 1'b0;
    assign proc_0_data_PIPO_blk[4] = 1'b0;
    assign proc_0_start_FIFO_blk[4] = 1'b0;
    assign proc_0_TLF_FIFO_blk[4] = 1'b0;
    assign proc_0_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_0_output_sync_blk[4] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_0[4] = dl_detect_out ? proc_dep_vld_vec_0_reg[4] : (proc_0_data_FIFO_blk[4] | proc_0_data_PIPO_blk[4] | proc_0_start_FIFO_blk[4] | proc_0_TLF_FIFO_blk[4] | proc_0_input_sync_blk[4] | proc_0_output_sync_blk[4]);
    assign proc_0_data_FIFO_blk[5] = 1'b0;
    assign proc_0_data_PIPO_blk[5] = 1'b0;
    assign proc_0_start_FIFO_blk[5] = 1'b0;
    assign proc_0_TLF_FIFO_blk[5] = 1'b0;
    assign proc_0_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_0_output_sync_blk[5] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_0[5] = dl_detect_out ? proc_dep_vld_vec_0_reg[5] : (proc_0_data_FIFO_blk[5] | proc_0_data_PIPO_blk[5] | proc_0_start_FIFO_blk[5] | proc_0_TLF_FIFO_blk[5] | proc_0_input_sync_blk[5] | proc_0_output_sync_blk[5]);
    assign proc_0_data_FIFO_blk[6] = 1'b0;
    assign proc_0_data_PIPO_blk[6] = 1'b0;
    assign proc_0_start_FIFO_blk[6] = 1'b0;
    assign proc_0_TLF_FIFO_blk[6] = 1'b0;
    assign proc_0_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_0_output_sync_blk[6] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_0[6] = dl_detect_out ? proc_dep_vld_vec_0_reg[6] : (proc_0_data_FIFO_blk[6] | proc_0_data_PIPO_blk[6] | proc_0_start_FIFO_blk[6] | proc_0_TLF_FIFO_blk[6] | proc_0_input_sync_blk[6] | proc_0_output_sync_blk[6]);
    assign proc_0_data_FIFO_blk[7] = 1'b0;
    assign proc_0_data_PIPO_blk[7] = 1'b0;
    assign proc_0_start_FIFO_blk[7] = 1'b0;
    assign proc_0_TLF_FIFO_blk[7] = 1'b0;
    assign proc_0_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_0_output_sync_blk[7] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_0[7] = dl_detect_out ? proc_dep_vld_vec_0_reg[7] : (proc_0_data_FIFO_blk[7] | proc_0_data_PIPO_blk[7] | proc_0_start_FIFO_blk[7] | proc_0_TLF_FIFO_blk[7] | proc_0_input_sync_blk[7] | proc_0_output_sync_blk[7]);
    assign proc_0_data_FIFO_blk[8] = 1'b0;
    assign proc_0_data_PIPO_blk[8] = 1'b0;
    assign proc_0_start_FIFO_blk[8] = 1'b0;
    assign proc_0_TLF_FIFO_blk[8] = 1'b0;
    assign proc_0_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_0_output_sync_blk[8] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_0[8] = dl_detect_out ? proc_dep_vld_vec_0_reg[8] : (proc_0_data_FIFO_blk[8] | proc_0_data_PIPO_blk[8] | proc_0_start_FIFO_blk[8] | proc_0_TLF_FIFO_blk[8] | proc_0_input_sync_blk[8] | proc_0_output_sync_blk[8]);
    assign proc_0_data_FIFO_blk[9] = 1'b0;
    assign proc_0_data_PIPO_blk[9] = 1'b0;
    assign proc_0_start_FIFO_blk[9] = 1'b0;
    assign proc_0_TLF_FIFO_blk[9] = 1'b0;
    assign proc_0_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_0_output_sync_blk[9] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_0[9] = dl_detect_out ? proc_dep_vld_vec_0_reg[9] : (proc_0_data_FIFO_blk[9] | proc_0_data_PIPO_blk[9] | proc_0_start_FIFO_blk[9] | proc_0_TLF_FIFO_blk[9] | proc_0_input_sync_blk[9] | proc_0_output_sync_blk[9]);
    assign proc_0_data_FIFO_blk[10] = 1'b0;
    assign proc_0_data_PIPO_blk[10] = 1'b0;
    assign proc_0_start_FIFO_blk[10] = 1'b0;
    assign proc_0_TLF_FIFO_blk[10] = 1'b0;
    assign proc_0_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_0_output_sync_blk[10] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_0[10] = dl_detect_out ? proc_dep_vld_vec_0_reg[10] : (proc_0_data_FIFO_blk[10] | proc_0_data_PIPO_blk[10] | proc_0_start_FIFO_blk[10] | proc_0_TLF_FIFO_blk[10] | proc_0_input_sync_blk[10] | proc_0_output_sync_blk[10]);
    assign proc_0_data_FIFO_blk[11] = 1'b0;
    assign proc_0_data_PIPO_blk[11] = 1'b0;
    assign proc_0_start_FIFO_blk[11] = 1'b0;
    assign proc_0_TLF_FIFO_blk[11] = 1'b0;
    assign proc_0_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_0_output_sync_blk[11] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_0[11] = dl_detect_out ? proc_dep_vld_vec_0_reg[11] : (proc_0_data_FIFO_blk[11] | proc_0_data_PIPO_blk[11] | proc_0_start_FIFO_blk[11] | proc_0_TLF_FIFO_blk[11] | proc_0_input_sync_blk[11] | proc_0_output_sync_blk[11]);
    assign proc_0_data_FIFO_blk[12] = 1'b0;
    assign proc_0_data_PIPO_blk[12] = 1'b0;
    assign proc_0_start_FIFO_blk[12] = 1'b0;
    assign proc_0_TLF_FIFO_blk[12] = 1'b0;
    assign proc_0_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_0_output_sync_blk[12] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_0[12] = dl_detect_out ? proc_dep_vld_vec_0_reg[12] : (proc_0_data_FIFO_blk[12] | proc_0_data_PIPO_blk[12] | proc_0_start_FIFO_blk[12] | proc_0_TLF_FIFO_blk[12] | proc_0_input_sync_blk[12] | proc_0_output_sync_blk[12]);
    assign proc_0_data_FIFO_blk[13] = 1'b0;
    assign proc_0_data_PIPO_blk[13] = 1'b0;
    assign proc_0_start_FIFO_blk[13] = 1'b0;
    assign proc_0_TLF_FIFO_blk[13] = 1'b0;
    assign proc_0_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_0_output_sync_blk[13] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_0[13] = dl_detect_out ? proc_dep_vld_vec_0_reg[13] : (proc_0_data_FIFO_blk[13] | proc_0_data_PIPO_blk[13] | proc_0_start_FIFO_blk[13] | proc_0_TLF_FIFO_blk[13] | proc_0_input_sync_blk[13] | proc_0_output_sync_blk[13]);
    assign proc_0_data_FIFO_blk[14] = 1'b0;
    assign proc_0_data_PIPO_blk[14] = 1'b0;
    assign proc_0_start_FIFO_blk[14] = 1'b0;
    assign proc_0_TLF_FIFO_blk[14] = 1'b0;
    assign proc_0_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_U0_ap_ready & kernel_kcore_v2h_pe_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_0_output_sync_blk[14] = 1'b0 | (ap_done_reg_0 & kernel_kcore_v2h_pe_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_0[14] = dl_detect_out ? proc_dep_vld_vec_0_reg[14] : (proc_0_data_FIFO_blk[14] | proc_0_data_PIPO_blk[14] | proc_0_start_FIFO_blk[14] | proc_0_TLF_FIFO_blk[14] | proc_0_input_sync_blk[14] | proc_0_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[15 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[31 : 16] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[47 : 32] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_4_0;
    assign in_chan_dep_data_vec_0[63 : 48] = dep_chan_data_4_0;
    assign token_in_vec_0[3] = token_4_0;
    assign in_chan_dep_vld_vec_0[4] = dep_chan_vld_5_0;
    assign in_chan_dep_data_vec_0[79 : 64] = dep_chan_data_5_0;
    assign token_in_vec_0[4] = token_5_0;
    assign in_chan_dep_vld_vec_0[5] = dep_chan_vld_6_0;
    assign in_chan_dep_data_vec_0[95 : 80] = dep_chan_data_6_0;
    assign token_in_vec_0[5] = token_6_0;
    assign in_chan_dep_vld_vec_0[6] = dep_chan_vld_7_0;
    assign in_chan_dep_data_vec_0[111 : 96] = dep_chan_data_7_0;
    assign token_in_vec_0[6] = token_7_0;
    assign in_chan_dep_vld_vec_0[7] = dep_chan_vld_8_0;
    assign in_chan_dep_data_vec_0[127 : 112] = dep_chan_data_8_0;
    assign token_in_vec_0[7] = token_8_0;
    assign in_chan_dep_vld_vec_0[8] = dep_chan_vld_9_0;
    assign in_chan_dep_data_vec_0[143 : 128] = dep_chan_data_9_0;
    assign token_in_vec_0[8] = token_9_0;
    assign in_chan_dep_vld_vec_0[9] = dep_chan_vld_10_0;
    assign in_chan_dep_data_vec_0[159 : 144] = dep_chan_data_10_0;
    assign token_in_vec_0[9] = token_10_0;
    assign in_chan_dep_vld_vec_0[10] = dep_chan_vld_11_0;
    assign in_chan_dep_data_vec_0[175 : 160] = dep_chan_data_11_0;
    assign token_in_vec_0[10] = token_11_0;
    assign in_chan_dep_vld_vec_0[11] = dep_chan_vld_12_0;
    assign in_chan_dep_data_vec_0[191 : 176] = dep_chan_data_12_0;
    assign token_in_vec_0[11] = token_12_0;
    assign in_chan_dep_vld_vec_0[12] = dep_chan_vld_13_0;
    assign in_chan_dep_data_vec_0[207 : 192] = dep_chan_data_13_0;
    assign token_in_vec_0[12] = token_13_0;
    assign in_chan_dep_vld_vec_0[13] = dep_chan_vld_14_0;
    assign in_chan_dep_data_vec_0[223 : 208] = dep_chan_data_14_0;
    assign token_in_vec_0[13] = token_14_0;
    assign in_chan_dep_vld_vec_0[14] = dep_chan_vld_15_0;
    assign in_chan_dep_data_vec_0[239 : 224] = dep_chan_data_15_0;
    assign token_in_vec_0[14] = token_15_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[1];
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[2];
    assign dep_chan_vld_0_4 = out_chan_dep_vld_vec_0[3];
    assign dep_chan_data_0_4 = out_chan_dep_data_0;
    assign token_0_4 = token_out_vec_0[3];
    assign dep_chan_vld_0_5 = out_chan_dep_vld_vec_0[4];
    assign dep_chan_data_0_5 = out_chan_dep_data_0;
    assign token_0_5 = token_out_vec_0[4];
    assign dep_chan_vld_0_6 = out_chan_dep_vld_vec_0[5];
    assign dep_chan_data_0_6 = out_chan_dep_data_0;
    assign token_0_6 = token_out_vec_0[5];
    assign dep_chan_vld_0_7 = out_chan_dep_vld_vec_0[6];
    assign dep_chan_data_0_7 = out_chan_dep_data_0;
    assign token_0_7 = token_out_vec_0[6];
    assign dep_chan_vld_0_8 = out_chan_dep_vld_vec_0[7];
    assign dep_chan_data_0_8 = out_chan_dep_data_0;
    assign token_0_8 = token_out_vec_0[7];
    assign dep_chan_vld_0_9 = out_chan_dep_vld_vec_0[8];
    assign dep_chan_data_0_9 = out_chan_dep_data_0;
    assign token_0_9 = token_out_vec_0[8];
    assign dep_chan_vld_0_10 = out_chan_dep_vld_vec_0[9];
    assign dep_chan_data_0_10 = out_chan_dep_data_0;
    assign token_0_10 = token_out_vec_0[9];
    assign dep_chan_vld_0_11 = out_chan_dep_vld_vec_0[10];
    assign dep_chan_data_0_11 = out_chan_dep_data_0;
    assign token_0_11 = token_out_vec_0[10];
    assign dep_chan_vld_0_12 = out_chan_dep_vld_vec_0[11];
    assign dep_chan_data_0_12 = out_chan_dep_data_0;
    assign token_0_12 = token_out_vec_0[11];
    assign dep_chan_vld_0_13 = out_chan_dep_vld_vec_0[12];
    assign dep_chan_data_0_13 = out_chan_dep_data_0;
    assign token_0_13 = token_out_vec_0[12];
    assign dep_chan_vld_0_14 = out_chan_dep_vld_vec_0[13];
    assign dep_chan_data_0_14 = out_chan_dep_data_0;
    assign token_0_14 = token_out_vec_0[13];
    assign dep_chan_vld_0_15 = out_chan_dep_vld_vec_0[14];
    assign dep_chan_data_0_15 = out_chan_dep_data_0;
    assign token_0_15 = token_out_vec_0[14];

    // Process: kernel_kcore_v2h_pe_1_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 1, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0;
    assign proc_1_data_PIPO_blk[0] = 1'b0;
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_1_output_sync_blk[0] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    assign proc_1_data_FIFO_blk[2] = 1'b0;
    assign proc_1_data_PIPO_blk[2] = 1'b0;
    assign proc_1_start_FIFO_blk[2] = 1'b0;
    assign proc_1_TLF_FIFO_blk[2] = 1'b0;
    assign proc_1_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_1_output_sync_blk[2] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (proc_1_data_FIFO_blk[2] | proc_1_data_PIPO_blk[2] | proc_1_start_FIFO_blk[2] | proc_1_TLF_FIFO_blk[2] | proc_1_input_sync_blk[2] | proc_1_output_sync_blk[2]);
    assign proc_1_data_FIFO_blk[3] = 1'b0;
    assign proc_1_data_PIPO_blk[3] = 1'b0;
    assign proc_1_start_FIFO_blk[3] = 1'b0;
    assign proc_1_TLF_FIFO_blk[3] = 1'b0;
    assign proc_1_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_1_output_sync_blk[3] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_1[3] = dl_detect_out ? proc_dep_vld_vec_1_reg[3] : (proc_1_data_FIFO_blk[3] | proc_1_data_PIPO_blk[3] | proc_1_start_FIFO_blk[3] | proc_1_TLF_FIFO_blk[3] | proc_1_input_sync_blk[3] | proc_1_output_sync_blk[3]);
    assign proc_1_data_FIFO_blk[4] = 1'b0;
    assign proc_1_data_PIPO_blk[4] = 1'b0;
    assign proc_1_start_FIFO_blk[4] = 1'b0;
    assign proc_1_TLF_FIFO_blk[4] = 1'b0;
    assign proc_1_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_1_output_sync_blk[4] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_1[4] = dl_detect_out ? proc_dep_vld_vec_1_reg[4] : (proc_1_data_FIFO_blk[4] | proc_1_data_PIPO_blk[4] | proc_1_start_FIFO_blk[4] | proc_1_TLF_FIFO_blk[4] | proc_1_input_sync_blk[4] | proc_1_output_sync_blk[4]);
    assign proc_1_data_FIFO_blk[5] = 1'b0;
    assign proc_1_data_PIPO_blk[5] = 1'b0;
    assign proc_1_start_FIFO_blk[5] = 1'b0;
    assign proc_1_TLF_FIFO_blk[5] = 1'b0;
    assign proc_1_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_1_output_sync_blk[5] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_1[5] = dl_detect_out ? proc_dep_vld_vec_1_reg[5] : (proc_1_data_FIFO_blk[5] | proc_1_data_PIPO_blk[5] | proc_1_start_FIFO_blk[5] | proc_1_TLF_FIFO_blk[5] | proc_1_input_sync_blk[5] | proc_1_output_sync_blk[5]);
    assign proc_1_data_FIFO_blk[6] = 1'b0;
    assign proc_1_data_PIPO_blk[6] = 1'b0;
    assign proc_1_start_FIFO_blk[6] = 1'b0;
    assign proc_1_TLF_FIFO_blk[6] = 1'b0;
    assign proc_1_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_1_output_sync_blk[6] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_1[6] = dl_detect_out ? proc_dep_vld_vec_1_reg[6] : (proc_1_data_FIFO_blk[6] | proc_1_data_PIPO_blk[6] | proc_1_start_FIFO_blk[6] | proc_1_TLF_FIFO_blk[6] | proc_1_input_sync_blk[6] | proc_1_output_sync_blk[6]);
    assign proc_1_data_FIFO_blk[7] = 1'b0;
    assign proc_1_data_PIPO_blk[7] = 1'b0;
    assign proc_1_start_FIFO_blk[7] = 1'b0;
    assign proc_1_TLF_FIFO_blk[7] = 1'b0;
    assign proc_1_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_1_output_sync_blk[7] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_1[7] = dl_detect_out ? proc_dep_vld_vec_1_reg[7] : (proc_1_data_FIFO_blk[7] | proc_1_data_PIPO_blk[7] | proc_1_start_FIFO_blk[7] | proc_1_TLF_FIFO_blk[7] | proc_1_input_sync_blk[7] | proc_1_output_sync_blk[7]);
    assign proc_1_data_FIFO_blk[8] = 1'b0;
    assign proc_1_data_PIPO_blk[8] = 1'b0;
    assign proc_1_start_FIFO_blk[8] = 1'b0;
    assign proc_1_TLF_FIFO_blk[8] = 1'b0;
    assign proc_1_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_1_output_sync_blk[8] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_1[8] = dl_detect_out ? proc_dep_vld_vec_1_reg[8] : (proc_1_data_FIFO_blk[8] | proc_1_data_PIPO_blk[8] | proc_1_start_FIFO_blk[8] | proc_1_TLF_FIFO_blk[8] | proc_1_input_sync_blk[8] | proc_1_output_sync_blk[8]);
    assign proc_1_data_FIFO_blk[9] = 1'b0;
    assign proc_1_data_PIPO_blk[9] = 1'b0;
    assign proc_1_start_FIFO_blk[9] = 1'b0;
    assign proc_1_TLF_FIFO_blk[9] = 1'b0;
    assign proc_1_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_1_output_sync_blk[9] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_1[9] = dl_detect_out ? proc_dep_vld_vec_1_reg[9] : (proc_1_data_FIFO_blk[9] | proc_1_data_PIPO_blk[9] | proc_1_start_FIFO_blk[9] | proc_1_TLF_FIFO_blk[9] | proc_1_input_sync_blk[9] | proc_1_output_sync_blk[9]);
    assign proc_1_data_FIFO_blk[10] = 1'b0;
    assign proc_1_data_PIPO_blk[10] = 1'b0;
    assign proc_1_start_FIFO_blk[10] = 1'b0;
    assign proc_1_TLF_FIFO_blk[10] = 1'b0;
    assign proc_1_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_1_output_sync_blk[10] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_1[10] = dl_detect_out ? proc_dep_vld_vec_1_reg[10] : (proc_1_data_FIFO_blk[10] | proc_1_data_PIPO_blk[10] | proc_1_start_FIFO_blk[10] | proc_1_TLF_FIFO_blk[10] | proc_1_input_sync_blk[10] | proc_1_output_sync_blk[10]);
    assign proc_1_data_FIFO_blk[11] = 1'b0;
    assign proc_1_data_PIPO_blk[11] = 1'b0;
    assign proc_1_start_FIFO_blk[11] = 1'b0;
    assign proc_1_TLF_FIFO_blk[11] = 1'b0;
    assign proc_1_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_1_output_sync_blk[11] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_1[11] = dl_detect_out ? proc_dep_vld_vec_1_reg[11] : (proc_1_data_FIFO_blk[11] | proc_1_data_PIPO_blk[11] | proc_1_start_FIFO_blk[11] | proc_1_TLF_FIFO_blk[11] | proc_1_input_sync_blk[11] | proc_1_output_sync_blk[11]);
    assign proc_1_data_FIFO_blk[12] = 1'b0;
    assign proc_1_data_PIPO_blk[12] = 1'b0;
    assign proc_1_start_FIFO_blk[12] = 1'b0;
    assign proc_1_TLF_FIFO_blk[12] = 1'b0;
    assign proc_1_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_1_output_sync_blk[12] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_1[12] = dl_detect_out ? proc_dep_vld_vec_1_reg[12] : (proc_1_data_FIFO_blk[12] | proc_1_data_PIPO_blk[12] | proc_1_start_FIFO_blk[12] | proc_1_TLF_FIFO_blk[12] | proc_1_input_sync_blk[12] | proc_1_output_sync_blk[12]);
    assign proc_1_data_FIFO_blk[13] = 1'b0;
    assign proc_1_data_PIPO_blk[13] = 1'b0;
    assign proc_1_start_FIFO_blk[13] = 1'b0;
    assign proc_1_TLF_FIFO_blk[13] = 1'b0;
    assign proc_1_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_1_output_sync_blk[13] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_1[13] = dl_detect_out ? proc_dep_vld_vec_1_reg[13] : (proc_1_data_FIFO_blk[13] | proc_1_data_PIPO_blk[13] | proc_1_start_FIFO_blk[13] | proc_1_TLF_FIFO_blk[13] | proc_1_input_sync_blk[13] | proc_1_output_sync_blk[13]);
    assign proc_1_data_FIFO_blk[14] = 1'b0;
    assign proc_1_data_PIPO_blk[14] = 1'b0;
    assign proc_1_start_FIFO_blk[14] = 1'b0;
    assign proc_1_TLF_FIFO_blk[14] = 1'b0;
    assign proc_1_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready & kernel_kcore_v2h_pe_1_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_1_output_sync_blk[14] = 1'b0 | (ap_done_reg_1 & kernel_kcore_v2h_pe_1_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_1[14] = dl_detect_out ? proc_dep_vld_vec_1_reg[14] : (proc_1_data_FIFO_blk[14] | proc_1_data_PIPO_blk[14] | proc_1_start_FIFO_blk[14] | proc_1_TLF_FIFO_blk[14] | proc_1_input_sync_blk[14] | proc_1_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[15 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[31 : 16] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[47 : 32] = dep_chan_data_3_1;
    assign token_in_vec_1[2] = token_3_1;
    assign in_chan_dep_vld_vec_1[3] = dep_chan_vld_4_1;
    assign in_chan_dep_data_vec_1[63 : 48] = dep_chan_data_4_1;
    assign token_in_vec_1[3] = token_4_1;
    assign in_chan_dep_vld_vec_1[4] = dep_chan_vld_5_1;
    assign in_chan_dep_data_vec_1[79 : 64] = dep_chan_data_5_1;
    assign token_in_vec_1[4] = token_5_1;
    assign in_chan_dep_vld_vec_1[5] = dep_chan_vld_6_1;
    assign in_chan_dep_data_vec_1[95 : 80] = dep_chan_data_6_1;
    assign token_in_vec_1[5] = token_6_1;
    assign in_chan_dep_vld_vec_1[6] = dep_chan_vld_7_1;
    assign in_chan_dep_data_vec_1[111 : 96] = dep_chan_data_7_1;
    assign token_in_vec_1[6] = token_7_1;
    assign in_chan_dep_vld_vec_1[7] = dep_chan_vld_8_1;
    assign in_chan_dep_data_vec_1[127 : 112] = dep_chan_data_8_1;
    assign token_in_vec_1[7] = token_8_1;
    assign in_chan_dep_vld_vec_1[8] = dep_chan_vld_9_1;
    assign in_chan_dep_data_vec_1[143 : 128] = dep_chan_data_9_1;
    assign token_in_vec_1[8] = token_9_1;
    assign in_chan_dep_vld_vec_1[9] = dep_chan_vld_10_1;
    assign in_chan_dep_data_vec_1[159 : 144] = dep_chan_data_10_1;
    assign token_in_vec_1[9] = token_10_1;
    assign in_chan_dep_vld_vec_1[10] = dep_chan_vld_11_1;
    assign in_chan_dep_data_vec_1[175 : 160] = dep_chan_data_11_1;
    assign token_in_vec_1[10] = token_11_1;
    assign in_chan_dep_vld_vec_1[11] = dep_chan_vld_12_1;
    assign in_chan_dep_data_vec_1[191 : 176] = dep_chan_data_12_1;
    assign token_in_vec_1[11] = token_12_1;
    assign in_chan_dep_vld_vec_1[12] = dep_chan_vld_13_1;
    assign in_chan_dep_data_vec_1[207 : 192] = dep_chan_data_13_1;
    assign token_in_vec_1[12] = token_13_1;
    assign in_chan_dep_vld_vec_1[13] = dep_chan_vld_14_1;
    assign in_chan_dep_data_vec_1[223 : 208] = dep_chan_data_14_1;
    assign token_in_vec_1[13] = token_14_1;
    assign in_chan_dep_vld_vec_1[14] = dep_chan_vld_15_1;
    assign in_chan_dep_data_vec_1[239 : 224] = dep_chan_data_15_1;
    assign token_in_vec_1[14] = token_15_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[1];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[2];
    assign dep_chan_vld_1_4 = out_chan_dep_vld_vec_1[3];
    assign dep_chan_data_1_4 = out_chan_dep_data_1;
    assign token_1_4 = token_out_vec_1[3];
    assign dep_chan_vld_1_5 = out_chan_dep_vld_vec_1[4];
    assign dep_chan_data_1_5 = out_chan_dep_data_1;
    assign token_1_5 = token_out_vec_1[4];
    assign dep_chan_vld_1_6 = out_chan_dep_vld_vec_1[5];
    assign dep_chan_data_1_6 = out_chan_dep_data_1;
    assign token_1_6 = token_out_vec_1[5];
    assign dep_chan_vld_1_7 = out_chan_dep_vld_vec_1[6];
    assign dep_chan_data_1_7 = out_chan_dep_data_1;
    assign token_1_7 = token_out_vec_1[6];
    assign dep_chan_vld_1_8 = out_chan_dep_vld_vec_1[7];
    assign dep_chan_data_1_8 = out_chan_dep_data_1;
    assign token_1_8 = token_out_vec_1[7];
    assign dep_chan_vld_1_9 = out_chan_dep_vld_vec_1[8];
    assign dep_chan_data_1_9 = out_chan_dep_data_1;
    assign token_1_9 = token_out_vec_1[8];
    assign dep_chan_vld_1_10 = out_chan_dep_vld_vec_1[9];
    assign dep_chan_data_1_10 = out_chan_dep_data_1;
    assign token_1_10 = token_out_vec_1[9];
    assign dep_chan_vld_1_11 = out_chan_dep_vld_vec_1[10];
    assign dep_chan_data_1_11 = out_chan_dep_data_1;
    assign token_1_11 = token_out_vec_1[10];
    assign dep_chan_vld_1_12 = out_chan_dep_vld_vec_1[11];
    assign dep_chan_data_1_12 = out_chan_dep_data_1;
    assign token_1_12 = token_out_vec_1[11];
    assign dep_chan_vld_1_13 = out_chan_dep_vld_vec_1[12];
    assign dep_chan_data_1_13 = out_chan_dep_data_1;
    assign token_1_13 = token_out_vec_1[12];
    assign dep_chan_vld_1_14 = out_chan_dep_vld_vec_1[13];
    assign dep_chan_data_1_14 = out_chan_dep_data_1;
    assign token_1_14 = token_out_vec_1[13];
    assign dep_chan_vld_1_15 = out_chan_dep_vld_vec_1[14];
    assign dep_chan_data_1_15 = out_chan_dep_data_1;
    assign token_1_15 = token_out_vec_1[14];

    // Process: kernel_kcore_v2h_pe_2_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 2, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0;
    assign proc_2_data_PIPO_blk[0] = 1'b0;
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_2_output_sync_blk[0] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0;
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0;
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_2_output_sync_blk[1] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0;
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_2_output_sync_blk[2] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    assign proc_2_data_FIFO_blk[3] = 1'b0;
    assign proc_2_data_PIPO_blk[3] = 1'b0;
    assign proc_2_start_FIFO_blk[3] = 1'b0;
    assign proc_2_TLF_FIFO_blk[3] = 1'b0;
    assign proc_2_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_2_output_sync_blk[3] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_2[3] = dl_detect_out ? proc_dep_vld_vec_2_reg[3] : (proc_2_data_FIFO_blk[3] | proc_2_data_PIPO_blk[3] | proc_2_start_FIFO_blk[3] | proc_2_TLF_FIFO_blk[3] | proc_2_input_sync_blk[3] | proc_2_output_sync_blk[3]);
    assign proc_2_data_FIFO_blk[4] = 1'b0;
    assign proc_2_data_PIPO_blk[4] = 1'b0;
    assign proc_2_start_FIFO_blk[4] = 1'b0;
    assign proc_2_TLF_FIFO_blk[4] = 1'b0;
    assign proc_2_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_2_output_sync_blk[4] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_2[4] = dl_detect_out ? proc_dep_vld_vec_2_reg[4] : (proc_2_data_FIFO_blk[4] | proc_2_data_PIPO_blk[4] | proc_2_start_FIFO_blk[4] | proc_2_TLF_FIFO_blk[4] | proc_2_input_sync_blk[4] | proc_2_output_sync_blk[4]);
    assign proc_2_data_FIFO_blk[5] = 1'b0;
    assign proc_2_data_PIPO_blk[5] = 1'b0;
    assign proc_2_start_FIFO_blk[5] = 1'b0;
    assign proc_2_TLF_FIFO_blk[5] = 1'b0;
    assign proc_2_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_2_output_sync_blk[5] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_2[5] = dl_detect_out ? proc_dep_vld_vec_2_reg[5] : (proc_2_data_FIFO_blk[5] | proc_2_data_PIPO_blk[5] | proc_2_start_FIFO_blk[5] | proc_2_TLF_FIFO_blk[5] | proc_2_input_sync_blk[5] | proc_2_output_sync_blk[5]);
    assign proc_2_data_FIFO_blk[6] = 1'b0;
    assign proc_2_data_PIPO_blk[6] = 1'b0;
    assign proc_2_start_FIFO_blk[6] = 1'b0;
    assign proc_2_TLF_FIFO_blk[6] = 1'b0;
    assign proc_2_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_2_output_sync_blk[6] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_2[6] = dl_detect_out ? proc_dep_vld_vec_2_reg[6] : (proc_2_data_FIFO_blk[6] | proc_2_data_PIPO_blk[6] | proc_2_start_FIFO_blk[6] | proc_2_TLF_FIFO_blk[6] | proc_2_input_sync_blk[6] | proc_2_output_sync_blk[6]);
    assign proc_2_data_FIFO_blk[7] = 1'b0;
    assign proc_2_data_PIPO_blk[7] = 1'b0;
    assign proc_2_start_FIFO_blk[7] = 1'b0;
    assign proc_2_TLF_FIFO_blk[7] = 1'b0;
    assign proc_2_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_2_output_sync_blk[7] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_2[7] = dl_detect_out ? proc_dep_vld_vec_2_reg[7] : (proc_2_data_FIFO_blk[7] | proc_2_data_PIPO_blk[7] | proc_2_start_FIFO_blk[7] | proc_2_TLF_FIFO_blk[7] | proc_2_input_sync_blk[7] | proc_2_output_sync_blk[7]);
    assign proc_2_data_FIFO_blk[8] = 1'b0;
    assign proc_2_data_PIPO_blk[8] = 1'b0;
    assign proc_2_start_FIFO_blk[8] = 1'b0;
    assign proc_2_TLF_FIFO_blk[8] = 1'b0;
    assign proc_2_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_2_output_sync_blk[8] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_2[8] = dl_detect_out ? proc_dep_vld_vec_2_reg[8] : (proc_2_data_FIFO_blk[8] | proc_2_data_PIPO_blk[8] | proc_2_start_FIFO_blk[8] | proc_2_TLF_FIFO_blk[8] | proc_2_input_sync_blk[8] | proc_2_output_sync_blk[8]);
    assign proc_2_data_FIFO_blk[9] = 1'b0;
    assign proc_2_data_PIPO_blk[9] = 1'b0;
    assign proc_2_start_FIFO_blk[9] = 1'b0;
    assign proc_2_TLF_FIFO_blk[9] = 1'b0;
    assign proc_2_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_2_output_sync_blk[9] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_2[9] = dl_detect_out ? proc_dep_vld_vec_2_reg[9] : (proc_2_data_FIFO_blk[9] | proc_2_data_PIPO_blk[9] | proc_2_start_FIFO_blk[9] | proc_2_TLF_FIFO_blk[9] | proc_2_input_sync_blk[9] | proc_2_output_sync_blk[9]);
    assign proc_2_data_FIFO_blk[10] = 1'b0;
    assign proc_2_data_PIPO_blk[10] = 1'b0;
    assign proc_2_start_FIFO_blk[10] = 1'b0;
    assign proc_2_TLF_FIFO_blk[10] = 1'b0;
    assign proc_2_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_2_output_sync_blk[10] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_2[10] = dl_detect_out ? proc_dep_vld_vec_2_reg[10] : (proc_2_data_FIFO_blk[10] | proc_2_data_PIPO_blk[10] | proc_2_start_FIFO_blk[10] | proc_2_TLF_FIFO_blk[10] | proc_2_input_sync_blk[10] | proc_2_output_sync_blk[10]);
    assign proc_2_data_FIFO_blk[11] = 1'b0;
    assign proc_2_data_PIPO_blk[11] = 1'b0;
    assign proc_2_start_FIFO_blk[11] = 1'b0;
    assign proc_2_TLF_FIFO_blk[11] = 1'b0;
    assign proc_2_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_2_output_sync_blk[11] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_2[11] = dl_detect_out ? proc_dep_vld_vec_2_reg[11] : (proc_2_data_FIFO_blk[11] | proc_2_data_PIPO_blk[11] | proc_2_start_FIFO_blk[11] | proc_2_TLF_FIFO_blk[11] | proc_2_input_sync_blk[11] | proc_2_output_sync_blk[11]);
    assign proc_2_data_FIFO_blk[12] = 1'b0;
    assign proc_2_data_PIPO_blk[12] = 1'b0;
    assign proc_2_start_FIFO_blk[12] = 1'b0;
    assign proc_2_TLF_FIFO_blk[12] = 1'b0;
    assign proc_2_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_2_output_sync_blk[12] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_2[12] = dl_detect_out ? proc_dep_vld_vec_2_reg[12] : (proc_2_data_FIFO_blk[12] | proc_2_data_PIPO_blk[12] | proc_2_start_FIFO_blk[12] | proc_2_TLF_FIFO_blk[12] | proc_2_input_sync_blk[12] | proc_2_output_sync_blk[12]);
    assign proc_2_data_FIFO_blk[13] = 1'b0;
    assign proc_2_data_PIPO_blk[13] = 1'b0;
    assign proc_2_start_FIFO_blk[13] = 1'b0;
    assign proc_2_TLF_FIFO_blk[13] = 1'b0;
    assign proc_2_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_2_output_sync_blk[13] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_2[13] = dl_detect_out ? proc_dep_vld_vec_2_reg[13] : (proc_2_data_FIFO_blk[13] | proc_2_data_PIPO_blk[13] | proc_2_start_FIFO_blk[13] | proc_2_TLF_FIFO_blk[13] | proc_2_input_sync_blk[13] | proc_2_output_sync_blk[13]);
    assign proc_2_data_FIFO_blk[14] = 1'b0;
    assign proc_2_data_PIPO_blk[14] = 1'b0;
    assign proc_2_start_FIFO_blk[14] = 1'b0;
    assign proc_2_TLF_FIFO_blk[14] = 1'b0;
    assign proc_2_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready & kernel_kcore_v2h_pe_2_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_2_output_sync_blk[14] = 1'b0 | (ap_done_reg_2 & kernel_kcore_v2h_pe_2_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_2[14] = dl_detect_out ? proc_dep_vld_vec_2_reg[14] : (proc_2_data_FIFO_blk[14] | proc_2_data_PIPO_blk[14] | proc_2_start_FIFO_blk[14] | proc_2_TLF_FIFO_blk[14] | proc_2_input_sync_blk[14] | proc_2_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[15 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[31 : 16] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[47 : 32] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign in_chan_dep_vld_vec_2[3] = dep_chan_vld_4_2;
    assign in_chan_dep_data_vec_2[63 : 48] = dep_chan_data_4_2;
    assign token_in_vec_2[3] = token_4_2;
    assign in_chan_dep_vld_vec_2[4] = dep_chan_vld_5_2;
    assign in_chan_dep_data_vec_2[79 : 64] = dep_chan_data_5_2;
    assign token_in_vec_2[4] = token_5_2;
    assign in_chan_dep_vld_vec_2[5] = dep_chan_vld_6_2;
    assign in_chan_dep_data_vec_2[95 : 80] = dep_chan_data_6_2;
    assign token_in_vec_2[5] = token_6_2;
    assign in_chan_dep_vld_vec_2[6] = dep_chan_vld_7_2;
    assign in_chan_dep_data_vec_2[111 : 96] = dep_chan_data_7_2;
    assign token_in_vec_2[6] = token_7_2;
    assign in_chan_dep_vld_vec_2[7] = dep_chan_vld_8_2;
    assign in_chan_dep_data_vec_2[127 : 112] = dep_chan_data_8_2;
    assign token_in_vec_2[7] = token_8_2;
    assign in_chan_dep_vld_vec_2[8] = dep_chan_vld_9_2;
    assign in_chan_dep_data_vec_2[143 : 128] = dep_chan_data_9_2;
    assign token_in_vec_2[8] = token_9_2;
    assign in_chan_dep_vld_vec_2[9] = dep_chan_vld_10_2;
    assign in_chan_dep_data_vec_2[159 : 144] = dep_chan_data_10_2;
    assign token_in_vec_2[9] = token_10_2;
    assign in_chan_dep_vld_vec_2[10] = dep_chan_vld_11_2;
    assign in_chan_dep_data_vec_2[175 : 160] = dep_chan_data_11_2;
    assign token_in_vec_2[10] = token_11_2;
    assign in_chan_dep_vld_vec_2[11] = dep_chan_vld_12_2;
    assign in_chan_dep_data_vec_2[191 : 176] = dep_chan_data_12_2;
    assign token_in_vec_2[11] = token_12_2;
    assign in_chan_dep_vld_vec_2[12] = dep_chan_vld_13_2;
    assign in_chan_dep_data_vec_2[207 : 192] = dep_chan_data_13_2;
    assign token_in_vec_2[12] = token_13_2;
    assign in_chan_dep_vld_vec_2[13] = dep_chan_vld_14_2;
    assign in_chan_dep_data_vec_2[223 : 208] = dep_chan_data_14_2;
    assign token_in_vec_2[13] = token_14_2;
    assign in_chan_dep_vld_vec_2[14] = dep_chan_vld_15_2;
    assign in_chan_dep_data_vec_2[239 : 224] = dep_chan_data_15_2;
    assign token_in_vec_2[14] = token_15_2;
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[0];
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[1];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[2];
    assign dep_chan_vld_2_4 = out_chan_dep_vld_vec_2[3];
    assign dep_chan_data_2_4 = out_chan_dep_data_2;
    assign token_2_4 = token_out_vec_2[3];
    assign dep_chan_vld_2_5 = out_chan_dep_vld_vec_2[4];
    assign dep_chan_data_2_5 = out_chan_dep_data_2;
    assign token_2_5 = token_out_vec_2[4];
    assign dep_chan_vld_2_6 = out_chan_dep_vld_vec_2[5];
    assign dep_chan_data_2_6 = out_chan_dep_data_2;
    assign token_2_6 = token_out_vec_2[5];
    assign dep_chan_vld_2_7 = out_chan_dep_vld_vec_2[6];
    assign dep_chan_data_2_7 = out_chan_dep_data_2;
    assign token_2_7 = token_out_vec_2[6];
    assign dep_chan_vld_2_8 = out_chan_dep_vld_vec_2[7];
    assign dep_chan_data_2_8 = out_chan_dep_data_2;
    assign token_2_8 = token_out_vec_2[7];
    assign dep_chan_vld_2_9 = out_chan_dep_vld_vec_2[8];
    assign dep_chan_data_2_9 = out_chan_dep_data_2;
    assign token_2_9 = token_out_vec_2[8];
    assign dep_chan_vld_2_10 = out_chan_dep_vld_vec_2[9];
    assign dep_chan_data_2_10 = out_chan_dep_data_2;
    assign token_2_10 = token_out_vec_2[9];
    assign dep_chan_vld_2_11 = out_chan_dep_vld_vec_2[10];
    assign dep_chan_data_2_11 = out_chan_dep_data_2;
    assign token_2_11 = token_out_vec_2[10];
    assign dep_chan_vld_2_12 = out_chan_dep_vld_vec_2[11];
    assign dep_chan_data_2_12 = out_chan_dep_data_2;
    assign token_2_12 = token_out_vec_2[11];
    assign dep_chan_vld_2_13 = out_chan_dep_vld_vec_2[12];
    assign dep_chan_data_2_13 = out_chan_dep_data_2;
    assign token_2_13 = token_out_vec_2[12];
    assign dep_chan_vld_2_14 = out_chan_dep_vld_vec_2[13];
    assign dep_chan_data_2_14 = out_chan_dep_data_2;
    assign token_2_14 = token_out_vec_2[13];
    assign dep_chan_vld_2_15 = out_chan_dep_vld_vec_2[14];
    assign dep_chan_data_2_15 = out_chan_dep_data_2;
    assign token_2_15 = token_out_vec_2[14];

    // Process: kernel_kcore_v2h_pe_3_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 3, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0;
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_3_output_sync_blk[0] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0;
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_3_output_sync_blk[1] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    assign proc_3_data_FIFO_blk[2] = 1'b0;
    assign proc_3_data_PIPO_blk[2] = 1'b0;
    assign proc_3_start_FIFO_blk[2] = 1'b0;
    assign proc_3_TLF_FIFO_blk[2] = 1'b0;
    assign proc_3_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_3_output_sync_blk[2] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (proc_3_data_FIFO_blk[2] | proc_3_data_PIPO_blk[2] | proc_3_start_FIFO_blk[2] | proc_3_TLF_FIFO_blk[2] | proc_3_input_sync_blk[2] | proc_3_output_sync_blk[2]);
    assign proc_3_data_FIFO_blk[3] = 1'b0;
    assign proc_3_data_PIPO_blk[3] = 1'b0;
    assign proc_3_start_FIFO_blk[3] = 1'b0;
    assign proc_3_TLF_FIFO_blk[3] = 1'b0;
    assign proc_3_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_3_output_sync_blk[3] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_3[3] = dl_detect_out ? proc_dep_vld_vec_3_reg[3] : (proc_3_data_FIFO_blk[3] | proc_3_data_PIPO_blk[3] | proc_3_start_FIFO_blk[3] | proc_3_TLF_FIFO_blk[3] | proc_3_input_sync_blk[3] | proc_3_output_sync_blk[3]);
    assign proc_3_data_FIFO_blk[4] = 1'b0;
    assign proc_3_data_PIPO_blk[4] = 1'b0;
    assign proc_3_start_FIFO_blk[4] = 1'b0;
    assign proc_3_TLF_FIFO_blk[4] = 1'b0;
    assign proc_3_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_3_output_sync_blk[4] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_3[4] = dl_detect_out ? proc_dep_vld_vec_3_reg[4] : (proc_3_data_FIFO_blk[4] | proc_3_data_PIPO_blk[4] | proc_3_start_FIFO_blk[4] | proc_3_TLF_FIFO_blk[4] | proc_3_input_sync_blk[4] | proc_3_output_sync_blk[4]);
    assign proc_3_data_FIFO_blk[5] = 1'b0;
    assign proc_3_data_PIPO_blk[5] = 1'b0;
    assign proc_3_start_FIFO_blk[5] = 1'b0;
    assign proc_3_TLF_FIFO_blk[5] = 1'b0;
    assign proc_3_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_3_output_sync_blk[5] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_3[5] = dl_detect_out ? proc_dep_vld_vec_3_reg[5] : (proc_3_data_FIFO_blk[5] | proc_3_data_PIPO_blk[5] | proc_3_start_FIFO_blk[5] | proc_3_TLF_FIFO_blk[5] | proc_3_input_sync_blk[5] | proc_3_output_sync_blk[5]);
    assign proc_3_data_FIFO_blk[6] = 1'b0;
    assign proc_3_data_PIPO_blk[6] = 1'b0;
    assign proc_3_start_FIFO_blk[6] = 1'b0;
    assign proc_3_TLF_FIFO_blk[6] = 1'b0;
    assign proc_3_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_3_output_sync_blk[6] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_3[6] = dl_detect_out ? proc_dep_vld_vec_3_reg[6] : (proc_3_data_FIFO_blk[6] | proc_3_data_PIPO_blk[6] | proc_3_start_FIFO_blk[6] | proc_3_TLF_FIFO_blk[6] | proc_3_input_sync_blk[6] | proc_3_output_sync_blk[6]);
    assign proc_3_data_FIFO_blk[7] = 1'b0;
    assign proc_3_data_PIPO_blk[7] = 1'b0;
    assign proc_3_start_FIFO_blk[7] = 1'b0;
    assign proc_3_TLF_FIFO_blk[7] = 1'b0;
    assign proc_3_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_3_output_sync_blk[7] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_3[7] = dl_detect_out ? proc_dep_vld_vec_3_reg[7] : (proc_3_data_FIFO_blk[7] | proc_3_data_PIPO_blk[7] | proc_3_start_FIFO_blk[7] | proc_3_TLF_FIFO_blk[7] | proc_3_input_sync_blk[7] | proc_3_output_sync_blk[7]);
    assign proc_3_data_FIFO_blk[8] = 1'b0;
    assign proc_3_data_PIPO_blk[8] = 1'b0;
    assign proc_3_start_FIFO_blk[8] = 1'b0;
    assign proc_3_TLF_FIFO_blk[8] = 1'b0;
    assign proc_3_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_3_output_sync_blk[8] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_3[8] = dl_detect_out ? proc_dep_vld_vec_3_reg[8] : (proc_3_data_FIFO_blk[8] | proc_3_data_PIPO_blk[8] | proc_3_start_FIFO_blk[8] | proc_3_TLF_FIFO_blk[8] | proc_3_input_sync_blk[8] | proc_3_output_sync_blk[8]);
    assign proc_3_data_FIFO_blk[9] = 1'b0;
    assign proc_3_data_PIPO_blk[9] = 1'b0;
    assign proc_3_start_FIFO_blk[9] = 1'b0;
    assign proc_3_TLF_FIFO_blk[9] = 1'b0;
    assign proc_3_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_3_output_sync_blk[9] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_3[9] = dl_detect_out ? proc_dep_vld_vec_3_reg[9] : (proc_3_data_FIFO_blk[9] | proc_3_data_PIPO_blk[9] | proc_3_start_FIFO_blk[9] | proc_3_TLF_FIFO_blk[9] | proc_3_input_sync_blk[9] | proc_3_output_sync_blk[9]);
    assign proc_3_data_FIFO_blk[10] = 1'b0;
    assign proc_3_data_PIPO_blk[10] = 1'b0;
    assign proc_3_start_FIFO_blk[10] = 1'b0;
    assign proc_3_TLF_FIFO_blk[10] = 1'b0;
    assign proc_3_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_3_output_sync_blk[10] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_3[10] = dl_detect_out ? proc_dep_vld_vec_3_reg[10] : (proc_3_data_FIFO_blk[10] | proc_3_data_PIPO_blk[10] | proc_3_start_FIFO_blk[10] | proc_3_TLF_FIFO_blk[10] | proc_3_input_sync_blk[10] | proc_3_output_sync_blk[10]);
    assign proc_3_data_FIFO_blk[11] = 1'b0;
    assign proc_3_data_PIPO_blk[11] = 1'b0;
    assign proc_3_start_FIFO_blk[11] = 1'b0;
    assign proc_3_TLF_FIFO_blk[11] = 1'b0;
    assign proc_3_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_3_output_sync_blk[11] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_3[11] = dl_detect_out ? proc_dep_vld_vec_3_reg[11] : (proc_3_data_FIFO_blk[11] | proc_3_data_PIPO_blk[11] | proc_3_start_FIFO_blk[11] | proc_3_TLF_FIFO_blk[11] | proc_3_input_sync_blk[11] | proc_3_output_sync_blk[11]);
    assign proc_3_data_FIFO_blk[12] = 1'b0;
    assign proc_3_data_PIPO_blk[12] = 1'b0;
    assign proc_3_start_FIFO_blk[12] = 1'b0;
    assign proc_3_TLF_FIFO_blk[12] = 1'b0;
    assign proc_3_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_3_output_sync_blk[12] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_3[12] = dl_detect_out ? proc_dep_vld_vec_3_reg[12] : (proc_3_data_FIFO_blk[12] | proc_3_data_PIPO_blk[12] | proc_3_start_FIFO_blk[12] | proc_3_TLF_FIFO_blk[12] | proc_3_input_sync_blk[12] | proc_3_output_sync_blk[12]);
    assign proc_3_data_FIFO_blk[13] = 1'b0;
    assign proc_3_data_PIPO_blk[13] = 1'b0;
    assign proc_3_start_FIFO_blk[13] = 1'b0;
    assign proc_3_TLF_FIFO_blk[13] = 1'b0;
    assign proc_3_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_3_output_sync_blk[13] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_3[13] = dl_detect_out ? proc_dep_vld_vec_3_reg[13] : (proc_3_data_FIFO_blk[13] | proc_3_data_PIPO_blk[13] | proc_3_start_FIFO_blk[13] | proc_3_TLF_FIFO_blk[13] | proc_3_input_sync_blk[13] | proc_3_output_sync_blk[13]);
    assign proc_3_data_FIFO_blk[14] = 1'b0;
    assign proc_3_data_PIPO_blk[14] = 1'b0;
    assign proc_3_start_FIFO_blk[14] = 1'b0;
    assign proc_3_TLF_FIFO_blk[14] = 1'b0;
    assign proc_3_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready & kernel_kcore_v2h_pe_3_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_3_output_sync_blk[14] = 1'b0 | (ap_done_reg_3 & kernel_kcore_v2h_pe_3_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_3[14] = dl_detect_out ? proc_dep_vld_vec_3_reg[14] : (proc_3_data_FIFO_blk[14] | proc_3_data_PIPO_blk[14] | proc_3_start_FIFO_blk[14] | proc_3_TLF_FIFO_blk[14] | proc_3_input_sync_blk[14] | proc_3_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[15 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[31 : 16] = dep_chan_data_1_3;
    assign token_in_vec_3[1] = token_1_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[47 : 32] = dep_chan_data_2_3;
    assign token_in_vec_3[2] = token_2_3;
    assign in_chan_dep_vld_vec_3[3] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[63 : 48] = dep_chan_data_4_3;
    assign token_in_vec_3[3] = token_4_3;
    assign in_chan_dep_vld_vec_3[4] = dep_chan_vld_5_3;
    assign in_chan_dep_data_vec_3[79 : 64] = dep_chan_data_5_3;
    assign token_in_vec_3[4] = token_5_3;
    assign in_chan_dep_vld_vec_3[5] = dep_chan_vld_6_3;
    assign in_chan_dep_data_vec_3[95 : 80] = dep_chan_data_6_3;
    assign token_in_vec_3[5] = token_6_3;
    assign in_chan_dep_vld_vec_3[6] = dep_chan_vld_7_3;
    assign in_chan_dep_data_vec_3[111 : 96] = dep_chan_data_7_3;
    assign token_in_vec_3[6] = token_7_3;
    assign in_chan_dep_vld_vec_3[7] = dep_chan_vld_8_3;
    assign in_chan_dep_data_vec_3[127 : 112] = dep_chan_data_8_3;
    assign token_in_vec_3[7] = token_8_3;
    assign in_chan_dep_vld_vec_3[8] = dep_chan_vld_9_3;
    assign in_chan_dep_data_vec_3[143 : 128] = dep_chan_data_9_3;
    assign token_in_vec_3[8] = token_9_3;
    assign in_chan_dep_vld_vec_3[9] = dep_chan_vld_10_3;
    assign in_chan_dep_data_vec_3[159 : 144] = dep_chan_data_10_3;
    assign token_in_vec_3[9] = token_10_3;
    assign in_chan_dep_vld_vec_3[10] = dep_chan_vld_11_3;
    assign in_chan_dep_data_vec_3[175 : 160] = dep_chan_data_11_3;
    assign token_in_vec_3[10] = token_11_3;
    assign in_chan_dep_vld_vec_3[11] = dep_chan_vld_12_3;
    assign in_chan_dep_data_vec_3[191 : 176] = dep_chan_data_12_3;
    assign token_in_vec_3[11] = token_12_3;
    assign in_chan_dep_vld_vec_3[12] = dep_chan_vld_13_3;
    assign in_chan_dep_data_vec_3[207 : 192] = dep_chan_data_13_3;
    assign token_in_vec_3[12] = token_13_3;
    assign in_chan_dep_vld_vec_3[13] = dep_chan_vld_14_3;
    assign in_chan_dep_data_vec_3[223 : 208] = dep_chan_data_14_3;
    assign token_in_vec_3[13] = token_14_3;
    assign in_chan_dep_vld_vec_3[14] = dep_chan_vld_15_3;
    assign in_chan_dep_data_vec_3[239 : 224] = dep_chan_data_15_3;
    assign token_in_vec_3[14] = token_15_3;
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[0];
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[1];
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[2];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[3];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[3];
    assign dep_chan_vld_3_5 = out_chan_dep_vld_vec_3[4];
    assign dep_chan_data_3_5 = out_chan_dep_data_3;
    assign token_3_5 = token_out_vec_3[4];
    assign dep_chan_vld_3_6 = out_chan_dep_vld_vec_3[5];
    assign dep_chan_data_3_6 = out_chan_dep_data_3;
    assign token_3_6 = token_out_vec_3[5];
    assign dep_chan_vld_3_7 = out_chan_dep_vld_vec_3[6];
    assign dep_chan_data_3_7 = out_chan_dep_data_3;
    assign token_3_7 = token_out_vec_3[6];
    assign dep_chan_vld_3_8 = out_chan_dep_vld_vec_3[7];
    assign dep_chan_data_3_8 = out_chan_dep_data_3;
    assign token_3_8 = token_out_vec_3[7];
    assign dep_chan_vld_3_9 = out_chan_dep_vld_vec_3[8];
    assign dep_chan_data_3_9 = out_chan_dep_data_3;
    assign token_3_9 = token_out_vec_3[8];
    assign dep_chan_vld_3_10 = out_chan_dep_vld_vec_3[9];
    assign dep_chan_data_3_10 = out_chan_dep_data_3;
    assign token_3_10 = token_out_vec_3[9];
    assign dep_chan_vld_3_11 = out_chan_dep_vld_vec_3[10];
    assign dep_chan_data_3_11 = out_chan_dep_data_3;
    assign token_3_11 = token_out_vec_3[10];
    assign dep_chan_vld_3_12 = out_chan_dep_vld_vec_3[11];
    assign dep_chan_data_3_12 = out_chan_dep_data_3;
    assign token_3_12 = token_out_vec_3[11];
    assign dep_chan_vld_3_13 = out_chan_dep_vld_vec_3[12];
    assign dep_chan_data_3_13 = out_chan_dep_data_3;
    assign token_3_13 = token_out_vec_3[12];
    assign dep_chan_vld_3_14 = out_chan_dep_vld_vec_3[13];
    assign dep_chan_data_3_14 = out_chan_dep_data_3;
    assign token_3_14 = token_out_vec_3[13];
    assign dep_chan_vld_3_15 = out_chan_dep_vld_vec_3[14];
    assign dep_chan_data_3_15 = out_chan_dep_data_3;
    assign token_3_15 = token_out_vec_3[14];

    // Process: kernel_kcore_v2h_pe_4_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 4, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0;
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0;
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_4_output_sync_blk[0] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0;
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_4_output_sync_blk[1] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    assign proc_4_data_FIFO_blk[2] = 1'b0;
    assign proc_4_data_PIPO_blk[2] = 1'b0;
    assign proc_4_start_FIFO_blk[2] = 1'b0;
    assign proc_4_TLF_FIFO_blk[2] = 1'b0;
    assign proc_4_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_4_output_sync_blk[2] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (proc_4_data_FIFO_blk[2] | proc_4_data_PIPO_blk[2] | proc_4_start_FIFO_blk[2] | proc_4_TLF_FIFO_blk[2] | proc_4_input_sync_blk[2] | proc_4_output_sync_blk[2]);
    assign proc_4_data_FIFO_blk[3] = 1'b0;
    assign proc_4_data_PIPO_blk[3] = 1'b0;
    assign proc_4_start_FIFO_blk[3] = 1'b0;
    assign proc_4_TLF_FIFO_blk[3] = 1'b0;
    assign proc_4_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_4_output_sync_blk[3] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_4[3] = dl_detect_out ? proc_dep_vld_vec_4_reg[3] : (proc_4_data_FIFO_blk[3] | proc_4_data_PIPO_blk[3] | proc_4_start_FIFO_blk[3] | proc_4_TLF_FIFO_blk[3] | proc_4_input_sync_blk[3] | proc_4_output_sync_blk[3]);
    assign proc_4_data_FIFO_blk[4] = 1'b0;
    assign proc_4_data_PIPO_blk[4] = 1'b0;
    assign proc_4_start_FIFO_blk[4] = 1'b0;
    assign proc_4_TLF_FIFO_blk[4] = 1'b0;
    assign proc_4_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_4_output_sync_blk[4] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_4[4] = dl_detect_out ? proc_dep_vld_vec_4_reg[4] : (proc_4_data_FIFO_blk[4] | proc_4_data_PIPO_blk[4] | proc_4_start_FIFO_blk[4] | proc_4_TLF_FIFO_blk[4] | proc_4_input_sync_blk[4] | proc_4_output_sync_blk[4]);
    assign proc_4_data_FIFO_blk[5] = 1'b0;
    assign proc_4_data_PIPO_blk[5] = 1'b0;
    assign proc_4_start_FIFO_blk[5] = 1'b0;
    assign proc_4_TLF_FIFO_blk[5] = 1'b0;
    assign proc_4_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_4_output_sync_blk[5] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_4[5] = dl_detect_out ? proc_dep_vld_vec_4_reg[5] : (proc_4_data_FIFO_blk[5] | proc_4_data_PIPO_blk[5] | proc_4_start_FIFO_blk[5] | proc_4_TLF_FIFO_blk[5] | proc_4_input_sync_blk[5] | proc_4_output_sync_blk[5]);
    assign proc_4_data_FIFO_blk[6] = 1'b0;
    assign proc_4_data_PIPO_blk[6] = 1'b0;
    assign proc_4_start_FIFO_blk[6] = 1'b0;
    assign proc_4_TLF_FIFO_blk[6] = 1'b0;
    assign proc_4_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_4_output_sync_blk[6] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_4[6] = dl_detect_out ? proc_dep_vld_vec_4_reg[6] : (proc_4_data_FIFO_blk[6] | proc_4_data_PIPO_blk[6] | proc_4_start_FIFO_blk[6] | proc_4_TLF_FIFO_blk[6] | proc_4_input_sync_blk[6] | proc_4_output_sync_blk[6]);
    assign proc_4_data_FIFO_blk[7] = 1'b0;
    assign proc_4_data_PIPO_blk[7] = 1'b0;
    assign proc_4_start_FIFO_blk[7] = 1'b0;
    assign proc_4_TLF_FIFO_blk[7] = 1'b0;
    assign proc_4_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_4_output_sync_blk[7] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_4[7] = dl_detect_out ? proc_dep_vld_vec_4_reg[7] : (proc_4_data_FIFO_blk[7] | proc_4_data_PIPO_blk[7] | proc_4_start_FIFO_blk[7] | proc_4_TLF_FIFO_blk[7] | proc_4_input_sync_blk[7] | proc_4_output_sync_blk[7]);
    assign proc_4_data_FIFO_blk[8] = 1'b0;
    assign proc_4_data_PIPO_blk[8] = 1'b0;
    assign proc_4_start_FIFO_blk[8] = 1'b0;
    assign proc_4_TLF_FIFO_blk[8] = 1'b0;
    assign proc_4_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_4_output_sync_blk[8] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_4[8] = dl_detect_out ? proc_dep_vld_vec_4_reg[8] : (proc_4_data_FIFO_blk[8] | proc_4_data_PIPO_blk[8] | proc_4_start_FIFO_blk[8] | proc_4_TLF_FIFO_blk[8] | proc_4_input_sync_blk[8] | proc_4_output_sync_blk[8]);
    assign proc_4_data_FIFO_blk[9] = 1'b0;
    assign proc_4_data_PIPO_blk[9] = 1'b0;
    assign proc_4_start_FIFO_blk[9] = 1'b0;
    assign proc_4_TLF_FIFO_blk[9] = 1'b0;
    assign proc_4_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_4_output_sync_blk[9] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_4[9] = dl_detect_out ? proc_dep_vld_vec_4_reg[9] : (proc_4_data_FIFO_blk[9] | proc_4_data_PIPO_blk[9] | proc_4_start_FIFO_blk[9] | proc_4_TLF_FIFO_blk[9] | proc_4_input_sync_blk[9] | proc_4_output_sync_blk[9]);
    assign proc_4_data_FIFO_blk[10] = 1'b0;
    assign proc_4_data_PIPO_blk[10] = 1'b0;
    assign proc_4_start_FIFO_blk[10] = 1'b0;
    assign proc_4_TLF_FIFO_blk[10] = 1'b0;
    assign proc_4_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_4_output_sync_blk[10] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_4[10] = dl_detect_out ? proc_dep_vld_vec_4_reg[10] : (proc_4_data_FIFO_blk[10] | proc_4_data_PIPO_blk[10] | proc_4_start_FIFO_blk[10] | proc_4_TLF_FIFO_blk[10] | proc_4_input_sync_blk[10] | proc_4_output_sync_blk[10]);
    assign proc_4_data_FIFO_blk[11] = 1'b0;
    assign proc_4_data_PIPO_blk[11] = 1'b0;
    assign proc_4_start_FIFO_blk[11] = 1'b0;
    assign proc_4_TLF_FIFO_blk[11] = 1'b0;
    assign proc_4_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_4_output_sync_blk[11] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_4[11] = dl_detect_out ? proc_dep_vld_vec_4_reg[11] : (proc_4_data_FIFO_blk[11] | proc_4_data_PIPO_blk[11] | proc_4_start_FIFO_blk[11] | proc_4_TLF_FIFO_blk[11] | proc_4_input_sync_blk[11] | proc_4_output_sync_blk[11]);
    assign proc_4_data_FIFO_blk[12] = 1'b0;
    assign proc_4_data_PIPO_blk[12] = 1'b0;
    assign proc_4_start_FIFO_blk[12] = 1'b0;
    assign proc_4_TLF_FIFO_blk[12] = 1'b0;
    assign proc_4_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_4_output_sync_blk[12] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_4[12] = dl_detect_out ? proc_dep_vld_vec_4_reg[12] : (proc_4_data_FIFO_blk[12] | proc_4_data_PIPO_blk[12] | proc_4_start_FIFO_blk[12] | proc_4_TLF_FIFO_blk[12] | proc_4_input_sync_blk[12] | proc_4_output_sync_blk[12]);
    assign proc_4_data_FIFO_blk[13] = 1'b0;
    assign proc_4_data_PIPO_blk[13] = 1'b0;
    assign proc_4_start_FIFO_blk[13] = 1'b0;
    assign proc_4_TLF_FIFO_blk[13] = 1'b0;
    assign proc_4_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_4_output_sync_blk[13] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_4[13] = dl_detect_out ? proc_dep_vld_vec_4_reg[13] : (proc_4_data_FIFO_blk[13] | proc_4_data_PIPO_blk[13] | proc_4_start_FIFO_blk[13] | proc_4_TLF_FIFO_blk[13] | proc_4_input_sync_blk[13] | proc_4_output_sync_blk[13]);
    assign proc_4_data_FIFO_blk[14] = 1'b0;
    assign proc_4_data_PIPO_blk[14] = 1'b0;
    assign proc_4_start_FIFO_blk[14] = 1'b0;
    assign proc_4_TLF_FIFO_blk[14] = 1'b0;
    assign proc_4_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready & kernel_kcore_v2h_pe_4_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_4_output_sync_blk[14] = 1'b0 | (ap_done_reg_4 & kernel_kcore_v2h_pe_4_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_4[14] = dl_detect_out ? proc_dep_vld_vec_4_reg[14] : (proc_4_data_FIFO_blk[14] | proc_4_data_PIPO_blk[14] | proc_4_start_FIFO_blk[14] | proc_4_TLF_FIFO_blk[14] | proc_4_input_sync_blk[14] | proc_4_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_0_4;
    assign in_chan_dep_data_vec_4[15 : 0] = dep_chan_data_0_4;
    assign token_in_vec_4[0] = token_0_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_1_4;
    assign in_chan_dep_data_vec_4[31 : 16] = dep_chan_data_1_4;
    assign token_in_vec_4[1] = token_1_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_2_4;
    assign in_chan_dep_data_vec_4[47 : 32] = dep_chan_data_2_4;
    assign token_in_vec_4[2] = token_2_4;
    assign in_chan_dep_vld_vec_4[3] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[63 : 48] = dep_chan_data_3_4;
    assign token_in_vec_4[3] = token_3_4;
    assign in_chan_dep_vld_vec_4[4] = dep_chan_vld_5_4;
    assign in_chan_dep_data_vec_4[79 : 64] = dep_chan_data_5_4;
    assign token_in_vec_4[4] = token_5_4;
    assign in_chan_dep_vld_vec_4[5] = dep_chan_vld_6_4;
    assign in_chan_dep_data_vec_4[95 : 80] = dep_chan_data_6_4;
    assign token_in_vec_4[5] = token_6_4;
    assign in_chan_dep_vld_vec_4[6] = dep_chan_vld_7_4;
    assign in_chan_dep_data_vec_4[111 : 96] = dep_chan_data_7_4;
    assign token_in_vec_4[6] = token_7_4;
    assign in_chan_dep_vld_vec_4[7] = dep_chan_vld_8_4;
    assign in_chan_dep_data_vec_4[127 : 112] = dep_chan_data_8_4;
    assign token_in_vec_4[7] = token_8_4;
    assign in_chan_dep_vld_vec_4[8] = dep_chan_vld_9_4;
    assign in_chan_dep_data_vec_4[143 : 128] = dep_chan_data_9_4;
    assign token_in_vec_4[8] = token_9_4;
    assign in_chan_dep_vld_vec_4[9] = dep_chan_vld_10_4;
    assign in_chan_dep_data_vec_4[159 : 144] = dep_chan_data_10_4;
    assign token_in_vec_4[9] = token_10_4;
    assign in_chan_dep_vld_vec_4[10] = dep_chan_vld_11_4;
    assign in_chan_dep_data_vec_4[175 : 160] = dep_chan_data_11_4;
    assign token_in_vec_4[10] = token_11_4;
    assign in_chan_dep_vld_vec_4[11] = dep_chan_vld_12_4;
    assign in_chan_dep_data_vec_4[191 : 176] = dep_chan_data_12_4;
    assign token_in_vec_4[11] = token_12_4;
    assign in_chan_dep_vld_vec_4[12] = dep_chan_vld_13_4;
    assign in_chan_dep_data_vec_4[207 : 192] = dep_chan_data_13_4;
    assign token_in_vec_4[12] = token_13_4;
    assign in_chan_dep_vld_vec_4[13] = dep_chan_vld_14_4;
    assign in_chan_dep_data_vec_4[223 : 208] = dep_chan_data_14_4;
    assign token_in_vec_4[13] = token_14_4;
    assign in_chan_dep_vld_vec_4[14] = dep_chan_vld_15_4;
    assign in_chan_dep_data_vec_4[239 : 224] = dep_chan_data_15_4;
    assign token_in_vec_4[14] = token_15_4;
    assign dep_chan_vld_4_0 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_0 = out_chan_dep_data_4;
    assign token_4_0 = token_out_vec_4[0];
    assign dep_chan_vld_4_1 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_1 = out_chan_dep_data_4;
    assign token_4_1 = token_out_vec_4[1];
    assign dep_chan_vld_4_2 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_2 = out_chan_dep_data_4;
    assign token_4_2 = token_out_vec_4[2];
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[3];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[3];
    assign dep_chan_vld_4_5 = out_chan_dep_vld_vec_4[4];
    assign dep_chan_data_4_5 = out_chan_dep_data_4;
    assign token_4_5 = token_out_vec_4[4];
    assign dep_chan_vld_4_6 = out_chan_dep_vld_vec_4[5];
    assign dep_chan_data_4_6 = out_chan_dep_data_4;
    assign token_4_6 = token_out_vec_4[5];
    assign dep_chan_vld_4_7 = out_chan_dep_vld_vec_4[6];
    assign dep_chan_data_4_7 = out_chan_dep_data_4;
    assign token_4_7 = token_out_vec_4[6];
    assign dep_chan_vld_4_8 = out_chan_dep_vld_vec_4[7];
    assign dep_chan_data_4_8 = out_chan_dep_data_4;
    assign token_4_8 = token_out_vec_4[7];
    assign dep_chan_vld_4_9 = out_chan_dep_vld_vec_4[8];
    assign dep_chan_data_4_9 = out_chan_dep_data_4;
    assign token_4_9 = token_out_vec_4[8];
    assign dep_chan_vld_4_10 = out_chan_dep_vld_vec_4[9];
    assign dep_chan_data_4_10 = out_chan_dep_data_4;
    assign token_4_10 = token_out_vec_4[9];
    assign dep_chan_vld_4_11 = out_chan_dep_vld_vec_4[10];
    assign dep_chan_data_4_11 = out_chan_dep_data_4;
    assign token_4_11 = token_out_vec_4[10];
    assign dep_chan_vld_4_12 = out_chan_dep_vld_vec_4[11];
    assign dep_chan_data_4_12 = out_chan_dep_data_4;
    assign token_4_12 = token_out_vec_4[11];
    assign dep_chan_vld_4_13 = out_chan_dep_vld_vec_4[12];
    assign dep_chan_data_4_13 = out_chan_dep_data_4;
    assign token_4_13 = token_out_vec_4[12];
    assign dep_chan_vld_4_14 = out_chan_dep_vld_vec_4[13];
    assign dep_chan_data_4_14 = out_chan_dep_data_4;
    assign token_4_14 = token_out_vec_4[13];
    assign dep_chan_vld_4_15 = out_chan_dep_vld_vec_4[14];
    assign dep_chan_data_4_15 = out_chan_dep_data_4;
    assign token_4_15 = token_out_vec_4[14];

    // Process: kernel_kcore_v2h_pe_5_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 5, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_5 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_5),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_5),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_5),
        .token_in_vec(token_in_vec_5),
        .dl_detect_in(dl_detect_out),
        .origin(origin[5]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_5),
        .out_chan_dep_data(out_chan_dep_data_5),
        .token_out_vec(token_out_vec_5),
        .dl_detect_out(dl_in_vec[5]));

    assign proc_5_data_FIFO_blk[0] = 1'b0;
    assign proc_5_data_PIPO_blk[0] = 1'b0;
    assign proc_5_start_FIFO_blk[0] = 1'b0;
    assign proc_5_TLF_FIFO_blk[0] = 1'b0;
    assign proc_5_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_5_output_sync_blk[0] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_5[0] = dl_detect_out ? proc_dep_vld_vec_5_reg[0] : (proc_5_data_FIFO_blk[0] | proc_5_data_PIPO_blk[0] | proc_5_start_FIFO_blk[0] | proc_5_TLF_FIFO_blk[0] | proc_5_input_sync_blk[0] | proc_5_output_sync_blk[0]);
    assign proc_5_data_FIFO_blk[1] = 1'b0;
    assign proc_5_data_PIPO_blk[1] = 1'b0;
    assign proc_5_start_FIFO_blk[1] = 1'b0;
    assign proc_5_TLF_FIFO_blk[1] = 1'b0;
    assign proc_5_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_5_output_sync_blk[1] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_5[1] = dl_detect_out ? proc_dep_vld_vec_5_reg[1] : (proc_5_data_FIFO_blk[1] | proc_5_data_PIPO_blk[1] | proc_5_start_FIFO_blk[1] | proc_5_TLF_FIFO_blk[1] | proc_5_input_sync_blk[1] | proc_5_output_sync_blk[1]);
    assign proc_5_data_FIFO_blk[2] = 1'b0;
    assign proc_5_data_PIPO_blk[2] = 1'b0;
    assign proc_5_start_FIFO_blk[2] = 1'b0;
    assign proc_5_TLF_FIFO_blk[2] = 1'b0;
    assign proc_5_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_5_output_sync_blk[2] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_5[2] = dl_detect_out ? proc_dep_vld_vec_5_reg[2] : (proc_5_data_FIFO_blk[2] | proc_5_data_PIPO_blk[2] | proc_5_start_FIFO_blk[2] | proc_5_TLF_FIFO_blk[2] | proc_5_input_sync_blk[2] | proc_5_output_sync_blk[2]);
    assign proc_5_data_FIFO_blk[3] = 1'b0;
    assign proc_5_data_PIPO_blk[3] = 1'b0;
    assign proc_5_start_FIFO_blk[3] = 1'b0;
    assign proc_5_TLF_FIFO_blk[3] = 1'b0;
    assign proc_5_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_5_output_sync_blk[3] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_5[3] = dl_detect_out ? proc_dep_vld_vec_5_reg[3] : (proc_5_data_FIFO_blk[3] | proc_5_data_PIPO_blk[3] | proc_5_start_FIFO_blk[3] | proc_5_TLF_FIFO_blk[3] | proc_5_input_sync_blk[3] | proc_5_output_sync_blk[3]);
    assign proc_5_data_FIFO_blk[4] = 1'b0;
    assign proc_5_data_PIPO_blk[4] = 1'b0;
    assign proc_5_start_FIFO_blk[4] = 1'b0;
    assign proc_5_TLF_FIFO_blk[4] = 1'b0;
    assign proc_5_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_5_output_sync_blk[4] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_5[4] = dl_detect_out ? proc_dep_vld_vec_5_reg[4] : (proc_5_data_FIFO_blk[4] | proc_5_data_PIPO_blk[4] | proc_5_start_FIFO_blk[4] | proc_5_TLF_FIFO_blk[4] | proc_5_input_sync_blk[4] | proc_5_output_sync_blk[4]);
    assign proc_5_data_FIFO_blk[5] = 1'b0;
    assign proc_5_data_PIPO_blk[5] = 1'b0;
    assign proc_5_start_FIFO_blk[5] = 1'b0;
    assign proc_5_TLF_FIFO_blk[5] = 1'b0;
    assign proc_5_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_5_output_sync_blk[5] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_5[5] = dl_detect_out ? proc_dep_vld_vec_5_reg[5] : (proc_5_data_FIFO_blk[5] | proc_5_data_PIPO_blk[5] | proc_5_start_FIFO_blk[5] | proc_5_TLF_FIFO_blk[5] | proc_5_input_sync_blk[5] | proc_5_output_sync_blk[5]);
    assign proc_5_data_FIFO_blk[6] = 1'b0;
    assign proc_5_data_PIPO_blk[6] = 1'b0;
    assign proc_5_start_FIFO_blk[6] = 1'b0;
    assign proc_5_TLF_FIFO_blk[6] = 1'b0;
    assign proc_5_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_5_output_sync_blk[6] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_5[6] = dl_detect_out ? proc_dep_vld_vec_5_reg[6] : (proc_5_data_FIFO_blk[6] | proc_5_data_PIPO_blk[6] | proc_5_start_FIFO_blk[6] | proc_5_TLF_FIFO_blk[6] | proc_5_input_sync_blk[6] | proc_5_output_sync_blk[6]);
    assign proc_5_data_FIFO_blk[7] = 1'b0;
    assign proc_5_data_PIPO_blk[7] = 1'b0;
    assign proc_5_start_FIFO_blk[7] = 1'b0;
    assign proc_5_TLF_FIFO_blk[7] = 1'b0;
    assign proc_5_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_5_output_sync_blk[7] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_5[7] = dl_detect_out ? proc_dep_vld_vec_5_reg[7] : (proc_5_data_FIFO_blk[7] | proc_5_data_PIPO_blk[7] | proc_5_start_FIFO_blk[7] | proc_5_TLF_FIFO_blk[7] | proc_5_input_sync_blk[7] | proc_5_output_sync_blk[7]);
    assign proc_5_data_FIFO_blk[8] = 1'b0;
    assign proc_5_data_PIPO_blk[8] = 1'b0;
    assign proc_5_start_FIFO_blk[8] = 1'b0;
    assign proc_5_TLF_FIFO_blk[8] = 1'b0;
    assign proc_5_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_5_output_sync_blk[8] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_5[8] = dl_detect_out ? proc_dep_vld_vec_5_reg[8] : (proc_5_data_FIFO_blk[8] | proc_5_data_PIPO_blk[8] | proc_5_start_FIFO_blk[8] | proc_5_TLF_FIFO_blk[8] | proc_5_input_sync_blk[8] | proc_5_output_sync_blk[8]);
    assign proc_5_data_FIFO_blk[9] = 1'b0;
    assign proc_5_data_PIPO_blk[9] = 1'b0;
    assign proc_5_start_FIFO_blk[9] = 1'b0;
    assign proc_5_TLF_FIFO_blk[9] = 1'b0;
    assign proc_5_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_5_output_sync_blk[9] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_5[9] = dl_detect_out ? proc_dep_vld_vec_5_reg[9] : (proc_5_data_FIFO_blk[9] | proc_5_data_PIPO_blk[9] | proc_5_start_FIFO_blk[9] | proc_5_TLF_FIFO_blk[9] | proc_5_input_sync_blk[9] | proc_5_output_sync_blk[9]);
    assign proc_5_data_FIFO_blk[10] = 1'b0;
    assign proc_5_data_PIPO_blk[10] = 1'b0;
    assign proc_5_start_FIFO_blk[10] = 1'b0;
    assign proc_5_TLF_FIFO_blk[10] = 1'b0;
    assign proc_5_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_5_output_sync_blk[10] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_5[10] = dl_detect_out ? proc_dep_vld_vec_5_reg[10] : (proc_5_data_FIFO_blk[10] | proc_5_data_PIPO_blk[10] | proc_5_start_FIFO_blk[10] | proc_5_TLF_FIFO_blk[10] | proc_5_input_sync_blk[10] | proc_5_output_sync_blk[10]);
    assign proc_5_data_FIFO_blk[11] = 1'b0;
    assign proc_5_data_PIPO_blk[11] = 1'b0;
    assign proc_5_start_FIFO_blk[11] = 1'b0;
    assign proc_5_TLF_FIFO_blk[11] = 1'b0;
    assign proc_5_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_5_output_sync_blk[11] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_5[11] = dl_detect_out ? proc_dep_vld_vec_5_reg[11] : (proc_5_data_FIFO_blk[11] | proc_5_data_PIPO_blk[11] | proc_5_start_FIFO_blk[11] | proc_5_TLF_FIFO_blk[11] | proc_5_input_sync_blk[11] | proc_5_output_sync_blk[11]);
    assign proc_5_data_FIFO_blk[12] = 1'b0;
    assign proc_5_data_PIPO_blk[12] = 1'b0;
    assign proc_5_start_FIFO_blk[12] = 1'b0;
    assign proc_5_TLF_FIFO_blk[12] = 1'b0;
    assign proc_5_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_5_output_sync_blk[12] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_5[12] = dl_detect_out ? proc_dep_vld_vec_5_reg[12] : (proc_5_data_FIFO_blk[12] | proc_5_data_PIPO_blk[12] | proc_5_start_FIFO_blk[12] | proc_5_TLF_FIFO_blk[12] | proc_5_input_sync_blk[12] | proc_5_output_sync_blk[12]);
    assign proc_5_data_FIFO_blk[13] = 1'b0;
    assign proc_5_data_PIPO_blk[13] = 1'b0;
    assign proc_5_start_FIFO_blk[13] = 1'b0;
    assign proc_5_TLF_FIFO_blk[13] = 1'b0;
    assign proc_5_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_5_output_sync_blk[13] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_5[13] = dl_detect_out ? proc_dep_vld_vec_5_reg[13] : (proc_5_data_FIFO_blk[13] | proc_5_data_PIPO_blk[13] | proc_5_start_FIFO_blk[13] | proc_5_TLF_FIFO_blk[13] | proc_5_input_sync_blk[13] | proc_5_output_sync_blk[13]);
    assign proc_5_data_FIFO_blk[14] = 1'b0;
    assign proc_5_data_PIPO_blk[14] = 1'b0;
    assign proc_5_start_FIFO_blk[14] = 1'b0;
    assign proc_5_TLF_FIFO_blk[14] = 1'b0;
    assign proc_5_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready & kernel_kcore_v2h_pe_5_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_5_output_sync_blk[14] = 1'b0 | (ap_done_reg_5 & kernel_kcore_v2h_pe_5_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_5[14] = dl_detect_out ? proc_dep_vld_vec_5_reg[14] : (proc_5_data_FIFO_blk[14] | proc_5_data_PIPO_blk[14] | proc_5_start_FIFO_blk[14] | proc_5_TLF_FIFO_blk[14] | proc_5_input_sync_blk[14] | proc_5_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_5_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_5_reg <= proc_dep_vld_vec_5;
        end
    end
    assign in_chan_dep_vld_vec_5[0] = dep_chan_vld_0_5;
    assign in_chan_dep_data_vec_5[15 : 0] = dep_chan_data_0_5;
    assign token_in_vec_5[0] = token_0_5;
    assign in_chan_dep_vld_vec_5[1] = dep_chan_vld_1_5;
    assign in_chan_dep_data_vec_5[31 : 16] = dep_chan_data_1_5;
    assign token_in_vec_5[1] = token_1_5;
    assign in_chan_dep_vld_vec_5[2] = dep_chan_vld_2_5;
    assign in_chan_dep_data_vec_5[47 : 32] = dep_chan_data_2_5;
    assign token_in_vec_5[2] = token_2_5;
    assign in_chan_dep_vld_vec_5[3] = dep_chan_vld_3_5;
    assign in_chan_dep_data_vec_5[63 : 48] = dep_chan_data_3_5;
    assign token_in_vec_5[3] = token_3_5;
    assign in_chan_dep_vld_vec_5[4] = dep_chan_vld_4_5;
    assign in_chan_dep_data_vec_5[79 : 64] = dep_chan_data_4_5;
    assign token_in_vec_5[4] = token_4_5;
    assign in_chan_dep_vld_vec_5[5] = dep_chan_vld_6_5;
    assign in_chan_dep_data_vec_5[95 : 80] = dep_chan_data_6_5;
    assign token_in_vec_5[5] = token_6_5;
    assign in_chan_dep_vld_vec_5[6] = dep_chan_vld_7_5;
    assign in_chan_dep_data_vec_5[111 : 96] = dep_chan_data_7_5;
    assign token_in_vec_5[6] = token_7_5;
    assign in_chan_dep_vld_vec_5[7] = dep_chan_vld_8_5;
    assign in_chan_dep_data_vec_5[127 : 112] = dep_chan_data_8_5;
    assign token_in_vec_5[7] = token_8_5;
    assign in_chan_dep_vld_vec_5[8] = dep_chan_vld_9_5;
    assign in_chan_dep_data_vec_5[143 : 128] = dep_chan_data_9_5;
    assign token_in_vec_5[8] = token_9_5;
    assign in_chan_dep_vld_vec_5[9] = dep_chan_vld_10_5;
    assign in_chan_dep_data_vec_5[159 : 144] = dep_chan_data_10_5;
    assign token_in_vec_5[9] = token_10_5;
    assign in_chan_dep_vld_vec_5[10] = dep_chan_vld_11_5;
    assign in_chan_dep_data_vec_5[175 : 160] = dep_chan_data_11_5;
    assign token_in_vec_5[10] = token_11_5;
    assign in_chan_dep_vld_vec_5[11] = dep_chan_vld_12_5;
    assign in_chan_dep_data_vec_5[191 : 176] = dep_chan_data_12_5;
    assign token_in_vec_5[11] = token_12_5;
    assign in_chan_dep_vld_vec_5[12] = dep_chan_vld_13_5;
    assign in_chan_dep_data_vec_5[207 : 192] = dep_chan_data_13_5;
    assign token_in_vec_5[12] = token_13_5;
    assign in_chan_dep_vld_vec_5[13] = dep_chan_vld_14_5;
    assign in_chan_dep_data_vec_5[223 : 208] = dep_chan_data_14_5;
    assign token_in_vec_5[13] = token_14_5;
    assign in_chan_dep_vld_vec_5[14] = dep_chan_vld_15_5;
    assign in_chan_dep_data_vec_5[239 : 224] = dep_chan_data_15_5;
    assign token_in_vec_5[14] = token_15_5;
    assign dep_chan_vld_5_0 = out_chan_dep_vld_vec_5[0];
    assign dep_chan_data_5_0 = out_chan_dep_data_5;
    assign token_5_0 = token_out_vec_5[0];
    assign dep_chan_vld_5_1 = out_chan_dep_vld_vec_5[1];
    assign dep_chan_data_5_1 = out_chan_dep_data_5;
    assign token_5_1 = token_out_vec_5[1];
    assign dep_chan_vld_5_2 = out_chan_dep_vld_vec_5[2];
    assign dep_chan_data_5_2 = out_chan_dep_data_5;
    assign token_5_2 = token_out_vec_5[2];
    assign dep_chan_vld_5_3 = out_chan_dep_vld_vec_5[3];
    assign dep_chan_data_5_3 = out_chan_dep_data_5;
    assign token_5_3 = token_out_vec_5[3];
    assign dep_chan_vld_5_4 = out_chan_dep_vld_vec_5[4];
    assign dep_chan_data_5_4 = out_chan_dep_data_5;
    assign token_5_4 = token_out_vec_5[4];
    assign dep_chan_vld_5_6 = out_chan_dep_vld_vec_5[5];
    assign dep_chan_data_5_6 = out_chan_dep_data_5;
    assign token_5_6 = token_out_vec_5[5];
    assign dep_chan_vld_5_7 = out_chan_dep_vld_vec_5[6];
    assign dep_chan_data_5_7 = out_chan_dep_data_5;
    assign token_5_7 = token_out_vec_5[6];
    assign dep_chan_vld_5_8 = out_chan_dep_vld_vec_5[7];
    assign dep_chan_data_5_8 = out_chan_dep_data_5;
    assign token_5_8 = token_out_vec_5[7];
    assign dep_chan_vld_5_9 = out_chan_dep_vld_vec_5[8];
    assign dep_chan_data_5_9 = out_chan_dep_data_5;
    assign token_5_9 = token_out_vec_5[8];
    assign dep_chan_vld_5_10 = out_chan_dep_vld_vec_5[9];
    assign dep_chan_data_5_10 = out_chan_dep_data_5;
    assign token_5_10 = token_out_vec_5[9];
    assign dep_chan_vld_5_11 = out_chan_dep_vld_vec_5[10];
    assign dep_chan_data_5_11 = out_chan_dep_data_5;
    assign token_5_11 = token_out_vec_5[10];
    assign dep_chan_vld_5_12 = out_chan_dep_vld_vec_5[11];
    assign dep_chan_data_5_12 = out_chan_dep_data_5;
    assign token_5_12 = token_out_vec_5[11];
    assign dep_chan_vld_5_13 = out_chan_dep_vld_vec_5[12];
    assign dep_chan_data_5_13 = out_chan_dep_data_5;
    assign token_5_13 = token_out_vec_5[12];
    assign dep_chan_vld_5_14 = out_chan_dep_vld_vec_5[13];
    assign dep_chan_data_5_14 = out_chan_dep_data_5;
    assign token_5_14 = token_out_vec_5[13];
    assign dep_chan_vld_5_15 = out_chan_dep_vld_vec_5[14];
    assign dep_chan_data_5_15 = out_chan_dep_data_5;
    assign token_5_15 = token_out_vec_5[14];

    // Process: kernel_kcore_v2h_pe_6_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 6, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_6 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_6),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_6),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_6),
        .token_in_vec(token_in_vec_6),
        .dl_detect_in(dl_detect_out),
        .origin(origin[6]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_6),
        .out_chan_dep_data(out_chan_dep_data_6),
        .token_out_vec(token_out_vec_6),
        .dl_detect_out(dl_in_vec[6]));

    assign proc_6_data_FIFO_blk[0] = 1'b0;
    assign proc_6_data_PIPO_blk[0] = 1'b0;
    assign proc_6_start_FIFO_blk[0] = 1'b0;
    assign proc_6_TLF_FIFO_blk[0] = 1'b0;
    assign proc_6_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_6_output_sync_blk[0] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_6[0] = dl_detect_out ? proc_dep_vld_vec_6_reg[0] : (proc_6_data_FIFO_blk[0] | proc_6_data_PIPO_blk[0] | proc_6_start_FIFO_blk[0] | proc_6_TLF_FIFO_blk[0] | proc_6_input_sync_blk[0] | proc_6_output_sync_blk[0]);
    assign proc_6_data_FIFO_blk[1] = 1'b0;
    assign proc_6_data_PIPO_blk[1] = 1'b0;
    assign proc_6_start_FIFO_blk[1] = 1'b0;
    assign proc_6_TLF_FIFO_blk[1] = 1'b0;
    assign proc_6_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_6_output_sync_blk[1] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_6[1] = dl_detect_out ? proc_dep_vld_vec_6_reg[1] : (proc_6_data_FIFO_blk[1] | proc_6_data_PIPO_blk[1] | proc_6_start_FIFO_blk[1] | proc_6_TLF_FIFO_blk[1] | proc_6_input_sync_blk[1] | proc_6_output_sync_blk[1]);
    assign proc_6_data_FIFO_blk[2] = 1'b0;
    assign proc_6_data_PIPO_blk[2] = 1'b0;
    assign proc_6_start_FIFO_blk[2] = 1'b0;
    assign proc_6_TLF_FIFO_blk[2] = 1'b0;
    assign proc_6_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_6_output_sync_blk[2] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_6[2] = dl_detect_out ? proc_dep_vld_vec_6_reg[2] : (proc_6_data_FIFO_blk[2] | proc_6_data_PIPO_blk[2] | proc_6_start_FIFO_blk[2] | proc_6_TLF_FIFO_blk[2] | proc_6_input_sync_blk[2] | proc_6_output_sync_blk[2]);
    assign proc_6_data_FIFO_blk[3] = 1'b0;
    assign proc_6_data_PIPO_blk[3] = 1'b0;
    assign proc_6_start_FIFO_blk[3] = 1'b0;
    assign proc_6_TLF_FIFO_blk[3] = 1'b0;
    assign proc_6_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_6_output_sync_blk[3] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_6[3] = dl_detect_out ? proc_dep_vld_vec_6_reg[3] : (proc_6_data_FIFO_blk[3] | proc_6_data_PIPO_blk[3] | proc_6_start_FIFO_blk[3] | proc_6_TLF_FIFO_blk[3] | proc_6_input_sync_blk[3] | proc_6_output_sync_blk[3]);
    assign proc_6_data_FIFO_blk[4] = 1'b0;
    assign proc_6_data_PIPO_blk[4] = 1'b0;
    assign proc_6_start_FIFO_blk[4] = 1'b0;
    assign proc_6_TLF_FIFO_blk[4] = 1'b0;
    assign proc_6_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_6_output_sync_blk[4] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_6[4] = dl_detect_out ? proc_dep_vld_vec_6_reg[4] : (proc_6_data_FIFO_blk[4] | proc_6_data_PIPO_blk[4] | proc_6_start_FIFO_blk[4] | proc_6_TLF_FIFO_blk[4] | proc_6_input_sync_blk[4] | proc_6_output_sync_blk[4]);
    assign proc_6_data_FIFO_blk[5] = 1'b0;
    assign proc_6_data_PIPO_blk[5] = 1'b0;
    assign proc_6_start_FIFO_blk[5] = 1'b0;
    assign proc_6_TLF_FIFO_blk[5] = 1'b0;
    assign proc_6_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_6_output_sync_blk[5] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_6[5] = dl_detect_out ? proc_dep_vld_vec_6_reg[5] : (proc_6_data_FIFO_blk[5] | proc_6_data_PIPO_blk[5] | proc_6_start_FIFO_blk[5] | proc_6_TLF_FIFO_blk[5] | proc_6_input_sync_blk[5] | proc_6_output_sync_blk[5]);
    assign proc_6_data_FIFO_blk[6] = 1'b0;
    assign proc_6_data_PIPO_blk[6] = 1'b0;
    assign proc_6_start_FIFO_blk[6] = 1'b0;
    assign proc_6_TLF_FIFO_blk[6] = 1'b0;
    assign proc_6_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_6_output_sync_blk[6] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_6[6] = dl_detect_out ? proc_dep_vld_vec_6_reg[6] : (proc_6_data_FIFO_blk[6] | proc_6_data_PIPO_blk[6] | proc_6_start_FIFO_blk[6] | proc_6_TLF_FIFO_blk[6] | proc_6_input_sync_blk[6] | proc_6_output_sync_blk[6]);
    assign proc_6_data_FIFO_blk[7] = 1'b0;
    assign proc_6_data_PIPO_blk[7] = 1'b0;
    assign proc_6_start_FIFO_blk[7] = 1'b0;
    assign proc_6_TLF_FIFO_blk[7] = 1'b0;
    assign proc_6_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_6_output_sync_blk[7] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_6[7] = dl_detect_out ? proc_dep_vld_vec_6_reg[7] : (proc_6_data_FIFO_blk[7] | proc_6_data_PIPO_blk[7] | proc_6_start_FIFO_blk[7] | proc_6_TLF_FIFO_blk[7] | proc_6_input_sync_blk[7] | proc_6_output_sync_blk[7]);
    assign proc_6_data_FIFO_blk[8] = 1'b0;
    assign proc_6_data_PIPO_blk[8] = 1'b0;
    assign proc_6_start_FIFO_blk[8] = 1'b0;
    assign proc_6_TLF_FIFO_blk[8] = 1'b0;
    assign proc_6_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_6_output_sync_blk[8] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_6[8] = dl_detect_out ? proc_dep_vld_vec_6_reg[8] : (proc_6_data_FIFO_blk[8] | proc_6_data_PIPO_blk[8] | proc_6_start_FIFO_blk[8] | proc_6_TLF_FIFO_blk[8] | proc_6_input_sync_blk[8] | proc_6_output_sync_blk[8]);
    assign proc_6_data_FIFO_blk[9] = 1'b0;
    assign proc_6_data_PIPO_blk[9] = 1'b0;
    assign proc_6_start_FIFO_blk[9] = 1'b0;
    assign proc_6_TLF_FIFO_blk[9] = 1'b0;
    assign proc_6_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_6_output_sync_blk[9] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_6[9] = dl_detect_out ? proc_dep_vld_vec_6_reg[9] : (proc_6_data_FIFO_blk[9] | proc_6_data_PIPO_blk[9] | proc_6_start_FIFO_blk[9] | proc_6_TLF_FIFO_blk[9] | proc_6_input_sync_blk[9] | proc_6_output_sync_blk[9]);
    assign proc_6_data_FIFO_blk[10] = 1'b0;
    assign proc_6_data_PIPO_blk[10] = 1'b0;
    assign proc_6_start_FIFO_blk[10] = 1'b0;
    assign proc_6_TLF_FIFO_blk[10] = 1'b0;
    assign proc_6_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_6_output_sync_blk[10] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_6[10] = dl_detect_out ? proc_dep_vld_vec_6_reg[10] : (proc_6_data_FIFO_blk[10] | proc_6_data_PIPO_blk[10] | proc_6_start_FIFO_blk[10] | proc_6_TLF_FIFO_blk[10] | proc_6_input_sync_blk[10] | proc_6_output_sync_blk[10]);
    assign proc_6_data_FIFO_blk[11] = 1'b0;
    assign proc_6_data_PIPO_blk[11] = 1'b0;
    assign proc_6_start_FIFO_blk[11] = 1'b0;
    assign proc_6_TLF_FIFO_blk[11] = 1'b0;
    assign proc_6_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_6_output_sync_blk[11] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_6[11] = dl_detect_out ? proc_dep_vld_vec_6_reg[11] : (proc_6_data_FIFO_blk[11] | proc_6_data_PIPO_blk[11] | proc_6_start_FIFO_blk[11] | proc_6_TLF_FIFO_blk[11] | proc_6_input_sync_blk[11] | proc_6_output_sync_blk[11]);
    assign proc_6_data_FIFO_blk[12] = 1'b0;
    assign proc_6_data_PIPO_blk[12] = 1'b0;
    assign proc_6_start_FIFO_blk[12] = 1'b0;
    assign proc_6_TLF_FIFO_blk[12] = 1'b0;
    assign proc_6_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_6_output_sync_blk[12] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_6[12] = dl_detect_out ? proc_dep_vld_vec_6_reg[12] : (proc_6_data_FIFO_blk[12] | proc_6_data_PIPO_blk[12] | proc_6_start_FIFO_blk[12] | proc_6_TLF_FIFO_blk[12] | proc_6_input_sync_blk[12] | proc_6_output_sync_blk[12]);
    assign proc_6_data_FIFO_blk[13] = 1'b0;
    assign proc_6_data_PIPO_blk[13] = 1'b0;
    assign proc_6_start_FIFO_blk[13] = 1'b0;
    assign proc_6_TLF_FIFO_blk[13] = 1'b0;
    assign proc_6_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_6_output_sync_blk[13] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_6[13] = dl_detect_out ? proc_dep_vld_vec_6_reg[13] : (proc_6_data_FIFO_blk[13] | proc_6_data_PIPO_blk[13] | proc_6_start_FIFO_blk[13] | proc_6_TLF_FIFO_blk[13] | proc_6_input_sync_blk[13] | proc_6_output_sync_blk[13]);
    assign proc_6_data_FIFO_blk[14] = 1'b0;
    assign proc_6_data_PIPO_blk[14] = 1'b0;
    assign proc_6_start_FIFO_blk[14] = 1'b0;
    assign proc_6_TLF_FIFO_blk[14] = 1'b0;
    assign proc_6_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready & kernel_kcore_v2h_pe_6_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_6_output_sync_blk[14] = 1'b0 | (ap_done_reg_6 & kernel_kcore_v2h_pe_6_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_6[14] = dl_detect_out ? proc_dep_vld_vec_6_reg[14] : (proc_6_data_FIFO_blk[14] | proc_6_data_PIPO_blk[14] | proc_6_start_FIFO_blk[14] | proc_6_TLF_FIFO_blk[14] | proc_6_input_sync_blk[14] | proc_6_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_6_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_6_reg <= proc_dep_vld_vec_6;
        end
    end
    assign in_chan_dep_vld_vec_6[0] = dep_chan_vld_0_6;
    assign in_chan_dep_data_vec_6[15 : 0] = dep_chan_data_0_6;
    assign token_in_vec_6[0] = token_0_6;
    assign in_chan_dep_vld_vec_6[1] = dep_chan_vld_1_6;
    assign in_chan_dep_data_vec_6[31 : 16] = dep_chan_data_1_6;
    assign token_in_vec_6[1] = token_1_6;
    assign in_chan_dep_vld_vec_6[2] = dep_chan_vld_2_6;
    assign in_chan_dep_data_vec_6[47 : 32] = dep_chan_data_2_6;
    assign token_in_vec_6[2] = token_2_6;
    assign in_chan_dep_vld_vec_6[3] = dep_chan_vld_3_6;
    assign in_chan_dep_data_vec_6[63 : 48] = dep_chan_data_3_6;
    assign token_in_vec_6[3] = token_3_6;
    assign in_chan_dep_vld_vec_6[4] = dep_chan_vld_4_6;
    assign in_chan_dep_data_vec_6[79 : 64] = dep_chan_data_4_6;
    assign token_in_vec_6[4] = token_4_6;
    assign in_chan_dep_vld_vec_6[5] = dep_chan_vld_5_6;
    assign in_chan_dep_data_vec_6[95 : 80] = dep_chan_data_5_6;
    assign token_in_vec_6[5] = token_5_6;
    assign in_chan_dep_vld_vec_6[6] = dep_chan_vld_7_6;
    assign in_chan_dep_data_vec_6[111 : 96] = dep_chan_data_7_6;
    assign token_in_vec_6[6] = token_7_6;
    assign in_chan_dep_vld_vec_6[7] = dep_chan_vld_8_6;
    assign in_chan_dep_data_vec_6[127 : 112] = dep_chan_data_8_6;
    assign token_in_vec_6[7] = token_8_6;
    assign in_chan_dep_vld_vec_6[8] = dep_chan_vld_9_6;
    assign in_chan_dep_data_vec_6[143 : 128] = dep_chan_data_9_6;
    assign token_in_vec_6[8] = token_9_6;
    assign in_chan_dep_vld_vec_6[9] = dep_chan_vld_10_6;
    assign in_chan_dep_data_vec_6[159 : 144] = dep_chan_data_10_6;
    assign token_in_vec_6[9] = token_10_6;
    assign in_chan_dep_vld_vec_6[10] = dep_chan_vld_11_6;
    assign in_chan_dep_data_vec_6[175 : 160] = dep_chan_data_11_6;
    assign token_in_vec_6[10] = token_11_6;
    assign in_chan_dep_vld_vec_6[11] = dep_chan_vld_12_6;
    assign in_chan_dep_data_vec_6[191 : 176] = dep_chan_data_12_6;
    assign token_in_vec_6[11] = token_12_6;
    assign in_chan_dep_vld_vec_6[12] = dep_chan_vld_13_6;
    assign in_chan_dep_data_vec_6[207 : 192] = dep_chan_data_13_6;
    assign token_in_vec_6[12] = token_13_6;
    assign in_chan_dep_vld_vec_6[13] = dep_chan_vld_14_6;
    assign in_chan_dep_data_vec_6[223 : 208] = dep_chan_data_14_6;
    assign token_in_vec_6[13] = token_14_6;
    assign in_chan_dep_vld_vec_6[14] = dep_chan_vld_15_6;
    assign in_chan_dep_data_vec_6[239 : 224] = dep_chan_data_15_6;
    assign token_in_vec_6[14] = token_15_6;
    assign dep_chan_vld_6_0 = out_chan_dep_vld_vec_6[0];
    assign dep_chan_data_6_0 = out_chan_dep_data_6;
    assign token_6_0 = token_out_vec_6[0];
    assign dep_chan_vld_6_1 = out_chan_dep_vld_vec_6[1];
    assign dep_chan_data_6_1 = out_chan_dep_data_6;
    assign token_6_1 = token_out_vec_6[1];
    assign dep_chan_vld_6_2 = out_chan_dep_vld_vec_6[2];
    assign dep_chan_data_6_2 = out_chan_dep_data_6;
    assign token_6_2 = token_out_vec_6[2];
    assign dep_chan_vld_6_3 = out_chan_dep_vld_vec_6[3];
    assign dep_chan_data_6_3 = out_chan_dep_data_6;
    assign token_6_3 = token_out_vec_6[3];
    assign dep_chan_vld_6_4 = out_chan_dep_vld_vec_6[4];
    assign dep_chan_data_6_4 = out_chan_dep_data_6;
    assign token_6_4 = token_out_vec_6[4];
    assign dep_chan_vld_6_5 = out_chan_dep_vld_vec_6[5];
    assign dep_chan_data_6_5 = out_chan_dep_data_6;
    assign token_6_5 = token_out_vec_6[5];
    assign dep_chan_vld_6_7 = out_chan_dep_vld_vec_6[6];
    assign dep_chan_data_6_7 = out_chan_dep_data_6;
    assign token_6_7 = token_out_vec_6[6];
    assign dep_chan_vld_6_8 = out_chan_dep_vld_vec_6[7];
    assign dep_chan_data_6_8 = out_chan_dep_data_6;
    assign token_6_8 = token_out_vec_6[7];
    assign dep_chan_vld_6_9 = out_chan_dep_vld_vec_6[8];
    assign dep_chan_data_6_9 = out_chan_dep_data_6;
    assign token_6_9 = token_out_vec_6[8];
    assign dep_chan_vld_6_10 = out_chan_dep_vld_vec_6[9];
    assign dep_chan_data_6_10 = out_chan_dep_data_6;
    assign token_6_10 = token_out_vec_6[9];
    assign dep_chan_vld_6_11 = out_chan_dep_vld_vec_6[10];
    assign dep_chan_data_6_11 = out_chan_dep_data_6;
    assign token_6_11 = token_out_vec_6[10];
    assign dep_chan_vld_6_12 = out_chan_dep_vld_vec_6[11];
    assign dep_chan_data_6_12 = out_chan_dep_data_6;
    assign token_6_12 = token_out_vec_6[11];
    assign dep_chan_vld_6_13 = out_chan_dep_vld_vec_6[12];
    assign dep_chan_data_6_13 = out_chan_dep_data_6;
    assign token_6_13 = token_out_vec_6[12];
    assign dep_chan_vld_6_14 = out_chan_dep_vld_vec_6[13];
    assign dep_chan_data_6_14 = out_chan_dep_data_6;
    assign token_6_14 = token_out_vec_6[13];
    assign dep_chan_vld_6_15 = out_chan_dep_vld_vec_6[14];
    assign dep_chan_data_6_15 = out_chan_dep_data_6;
    assign token_6_15 = token_out_vec_6[14];

    // Process: kernel_kcore_v2h_pe_7_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 7, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_7 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_7),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_7),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_7),
        .token_in_vec(token_in_vec_7),
        .dl_detect_in(dl_detect_out),
        .origin(origin[7]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_7),
        .out_chan_dep_data(out_chan_dep_data_7),
        .token_out_vec(token_out_vec_7),
        .dl_detect_out(dl_in_vec[7]));

    assign proc_7_data_FIFO_blk[0] = 1'b0;
    assign proc_7_data_PIPO_blk[0] = 1'b0;
    assign proc_7_start_FIFO_blk[0] = 1'b0;
    assign proc_7_TLF_FIFO_blk[0] = 1'b0;
    assign proc_7_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_7_output_sync_blk[0] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_7[0] = dl_detect_out ? proc_dep_vld_vec_7_reg[0] : (proc_7_data_FIFO_blk[0] | proc_7_data_PIPO_blk[0] | proc_7_start_FIFO_blk[0] | proc_7_TLF_FIFO_blk[0] | proc_7_input_sync_blk[0] | proc_7_output_sync_blk[0]);
    assign proc_7_data_FIFO_blk[1] = 1'b0;
    assign proc_7_data_PIPO_blk[1] = 1'b0;
    assign proc_7_start_FIFO_blk[1] = 1'b0;
    assign proc_7_TLF_FIFO_blk[1] = 1'b0;
    assign proc_7_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_7_output_sync_blk[1] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_7[1] = dl_detect_out ? proc_dep_vld_vec_7_reg[1] : (proc_7_data_FIFO_blk[1] | proc_7_data_PIPO_blk[1] | proc_7_start_FIFO_blk[1] | proc_7_TLF_FIFO_blk[1] | proc_7_input_sync_blk[1] | proc_7_output_sync_blk[1]);
    assign proc_7_data_FIFO_blk[2] = 1'b0;
    assign proc_7_data_PIPO_blk[2] = 1'b0;
    assign proc_7_start_FIFO_blk[2] = 1'b0;
    assign proc_7_TLF_FIFO_blk[2] = 1'b0;
    assign proc_7_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_7_output_sync_blk[2] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_7[2] = dl_detect_out ? proc_dep_vld_vec_7_reg[2] : (proc_7_data_FIFO_blk[2] | proc_7_data_PIPO_blk[2] | proc_7_start_FIFO_blk[2] | proc_7_TLF_FIFO_blk[2] | proc_7_input_sync_blk[2] | proc_7_output_sync_blk[2]);
    assign proc_7_data_FIFO_blk[3] = 1'b0;
    assign proc_7_data_PIPO_blk[3] = 1'b0;
    assign proc_7_start_FIFO_blk[3] = 1'b0;
    assign proc_7_TLF_FIFO_blk[3] = 1'b0;
    assign proc_7_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_7_output_sync_blk[3] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_7[3] = dl_detect_out ? proc_dep_vld_vec_7_reg[3] : (proc_7_data_FIFO_blk[3] | proc_7_data_PIPO_blk[3] | proc_7_start_FIFO_blk[3] | proc_7_TLF_FIFO_blk[3] | proc_7_input_sync_blk[3] | proc_7_output_sync_blk[3]);
    assign proc_7_data_FIFO_blk[4] = 1'b0;
    assign proc_7_data_PIPO_blk[4] = 1'b0;
    assign proc_7_start_FIFO_blk[4] = 1'b0;
    assign proc_7_TLF_FIFO_blk[4] = 1'b0;
    assign proc_7_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_7_output_sync_blk[4] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_7[4] = dl_detect_out ? proc_dep_vld_vec_7_reg[4] : (proc_7_data_FIFO_blk[4] | proc_7_data_PIPO_blk[4] | proc_7_start_FIFO_blk[4] | proc_7_TLF_FIFO_blk[4] | proc_7_input_sync_blk[4] | proc_7_output_sync_blk[4]);
    assign proc_7_data_FIFO_blk[5] = 1'b0;
    assign proc_7_data_PIPO_blk[5] = 1'b0;
    assign proc_7_start_FIFO_blk[5] = 1'b0;
    assign proc_7_TLF_FIFO_blk[5] = 1'b0;
    assign proc_7_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_7_output_sync_blk[5] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_7[5] = dl_detect_out ? proc_dep_vld_vec_7_reg[5] : (proc_7_data_FIFO_blk[5] | proc_7_data_PIPO_blk[5] | proc_7_start_FIFO_blk[5] | proc_7_TLF_FIFO_blk[5] | proc_7_input_sync_blk[5] | proc_7_output_sync_blk[5]);
    assign proc_7_data_FIFO_blk[6] = 1'b0;
    assign proc_7_data_PIPO_blk[6] = 1'b0;
    assign proc_7_start_FIFO_blk[6] = 1'b0;
    assign proc_7_TLF_FIFO_blk[6] = 1'b0;
    assign proc_7_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_7_output_sync_blk[6] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_7[6] = dl_detect_out ? proc_dep_vld_vec_7_reg[6] : (proc_7_data_FIFO_blk[6] | proc_7_data_PIPO_blk[6] | proc_7_start_FIFO_blk[6] | proc_7_TLF_FIFO_blk[6] | proc_7_input_sync_blk[6] | proc_7_output_sync_blk[6]);
    assign proc_7_data_FIFO_blk[7] = 1'b0;
    assign proc_7_data_PIPO_blk[7] = 1'b0;
    assign proc_7_start_FIFO_blk[7] = 1'b0;
    assign proc_7_TLF_FIFO_blk[7] = 1'b0;
    assign proc_7_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_7_output_sync_blk[7] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_7[7] = dl_detect_out ? proc_dep_vld_vec_7_reg[7] : (proc_7_data_FIFO_blk[7] | proc_7_data_PIPO_blk[7] | proc_7_start_FIFO_blk[7] | proc_7_TLF_FIFO_blk[7] | proc_7_input_sync_blk[7] | proc_7_output_sync_blk[7]);
    assign proc_7_data_FIFO_blk[8] = 1'b0;
    assign proc_7_data_PIPO_blk[8] = 1'b0;
    assign proc_7_start_FIFO_blk[8] = 1'b0;
    assign proc_7_TLF_FIFO_blk[8] = 1'b0;
    assign proc_7_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_7_output_sync_blk[8] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_7[8] = dl_detect_out ? proc_dep_vld_vec_7_reg[8] : (proc_7_data_FIFO_blk[8] | proc_7_data_PIPO_blk[8] | proc_7_start_FIFO_blk[8] | proc_7_TLF_FIFO_blk[8] | proc_7_input_sync_blk[8] | proc_7_output_sync_blk[8]);
    assign proc_7_data_FIFO_blk[9] = 1'b0;
    assign proc_7_data_PIPO_blk[9] = 1'b0;
    assign proc_7_start_FIFO_blk[9] = 1'b0;
    assign proc_7_TLF_FIFO_blk[9] = 1'b0;
    assign proc_7_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_7_output_sync_blk[9] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_7[9] = dl_detect_out ? proc_dep_vld_vec_7_reg[9] : (proc_7_data_FIFO_blk[9] | proc_7_data_PIPO_blk[9] | proc_7_start_FIFO_blk[9] | proc_7_TLF_FIFO_blk[9] | proc_7_input_sync_blk[9] | proc_7_output_sync_blk[9]);
    assign proc_7_data_FIFO_blk[10] = 1'b0;
    assign proc_7_data_PIPO_blk[10] = 1'b0;
    assign proc_7_start_FIFO_blk[10] = 1'b0;
    assign proc_7_TLF_FIFO_blk[10] = 1'b0;
    assign proc_7_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_7_output_sync_blk[10] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_7[10] = dl_detect_out ? proc_dep_vld_vec_7_reg[10] : (proc_7_data_FIFO_blk[10] | proc_7_data_PIPO_blk[10] | proc_7_start_FIFO_blk[10] | proc_7_TLF_FIFO_blk[10] | proc_7_input_sync_blk[10] | proc_7_output_sync_blk[10]);
    assign proc_7_data_FIFO_blk[11] = 1'b0;
    assign proc_7_data_PIPO_blk[11] = 1'b0;
    assign proc_7_start_FIFO_blk[11] = 1'b0;
    assign proc_7_TLF_FIFO_blk[11] = 1'b0;
    assign proc_7_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_7_output_sync_blk[11] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_7[11] = dl_detect_out ? proc_dep_vld_vec_7_reg[11] : (proc_7_data_FIFO_blk[11] | proc_7_data_PIPO_blk[11] | proc_7_start_FIFO_blk[11] | proc_7_TLF_FIFO_blk[11] | proc_7_input_sync_blk[11] | proc_7_output_sync_blk[11]);
    assign proc_7_data_FIFO_blk[12] = 1'b0;
    assign proc_7_data_PIPO_blk[12] = 1'b0;
    assign proc_7_start_FIFO_blk[12] = 1'b0;
    assign proc_7_TLF_FIFO_blk[12] = 1'b0;
    assign proc_7_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_7_output_sync_blk[12] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_7[12] = dl_detect_out ? proc_dep_vld_vec_7_reg[12] : (proc_7_data_FIFO_blk[12] | proc_7_data_PIPO_blk[12] | proc_7_start_FIFO_blk[12] | proc_7_TLF_FIFO_blk[12] | proc_7_input_sync_blk[12] | proc_7_output_sync_blk[12]);
    assign proc_7_data_FIFO_blk[13] = 1'b0;
    assign proc_7_data_PIPO_blk[13] = 1'b0;
    assign proc_7_start_FIFO_blk[13] = 1'b0;
    assign proc_7_TLF_FIFO_blk[13] = 1'b0;
    assign proc_7_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_7_output_sync_blk[13] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_7[13] = dl_detect_out ? proc_dep_vld_vec_7_reg[13] : (proc_7_data_FIFO_blk[13] | proc_7_data_PIPO_blk[13] | proc_7_start_FIFO_blk[13] | proc_7_TLF_FIFO_blk[13] | proc_7_input_sync_blk[13] | proc_7_output_sync_blk[13]);
    assign proc_7_data_FIFO_blk[14] = 1'b0;
    assign proc_7_data_PIPO_blk[14] = 1'b0;
    assign proc_7_start_FIFO_blk[14] = 1'b0;
    assign proc_7_TLF_FIFO_blk[14] = 1'b0;
    assign proc_7_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready & kernel_kcore_v2h_pe_7_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_7_output_sync_blk[14] = 1'b0 | (ap_done_reg_7 & kernel_kcore_v2h_pe_7_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_7[14] = dl_detect_out ? proc_dep_vld_vec_7_reg[14] : (proc_7_data_FIFO_blk[14] | proc_7_data_PIPO_blk[14] | proc_7_start_FIFO_blk[14] | proc_7_TLF_FIFO_blk[14] | proc_7_input_sync_blk[14] | proc_7_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_7_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_7_reg <= proc_dep_vld_vec_7;
        end
    end
    assign in_chan_dep_vld_vec_7[0] = dep_chan_vld_0_7;
    assign in_chan_dep_data_vec_7[15 : 0] = dep_chan_data_0_7;
    assign token_in_vec_7[0] = token_0_7;
    assign in_chan_dep_vld_vec_7[1] = dep_chan_vld_1_7;
    assign in_chan_dep_data_vec_7[31 : 16] = dep_chan_data_1_7;
    assign token_in_vec_7[1] = token_1_7;
    assign in_chan_dep_vld_vec_7[2] = dep_chan_vld_2_7;
    assign in_chan_dep_data_vec_7[47 : 32] = dep_chan_data_2_7;
    assign token_in_vec_7[2] = token_2_7;
    assign in_chan_dep_vld_vec_7[3] = dep_chan_vld_3_7;
    assign in_chan_dep_data_vec_7[63 : 48] = dep_chan_data_3_7;
    assign token_in_vec_7[3] = token_3_7;
    assign in_chan_dep_vld_vec_7[4] = dep_chan_vld_4_7;
    assign in_chan_dep_data_vec_7[79 : 64] = dep_chan_data_4_7;
    assign token_in_vec_7[4] = token_4_7;
    assign in_chan_dep_vld_vec_7[5] = dep_chan_vld_5_7;
    assign in_chan_dep_data_vec_7[95 : 80] = dep_chan_data_5_7;
    assign token_in_vec_7[5] = token_5_7;
    assign in_chan_dep_vld_vec_7[6] = dep_chan_vld_6_7;
    assign in_chan_dep_data_vec_7[111 : 96] = dep_chan_data_6_7;
    assign token_in_vec_7[6] = token_6_7;
    assign in_chan_dep_vld_vec_7[7] = dep_chan_vld_8_7;
    assign in_chan_dep_data_vec_7[127 : 112] = dep_chan_data_8_7;
    assign token_in_vec_7[7] = token_8_7;
    assign in_chan_dep_vld_vec_7[8] = dep_chan_vld_9_7;
    assign in_chan_dep_data_vec_7[143 : 128] = dep_chan_data_9_7;
    assign token_in_vec_7[8] = token_9_7;
    assign in_chan_dep_vld_vec_7[9] = dep_chan_vld_10_7;
    assign in_chan_dep_data_vec_7[159 : 144] = dep_chan_data_10_7;
    assign token_in_vec_7[9] = token_10_7;
    assign in_chan_dep_vld_vec_7[10] = dep_chan_vld_11_7;
    assign in_chan_dep_data_vec_7[175 : 160] = dep_chan_data_11_7;
    assign token_in_vec_7[10] = token_11_7;
    assign in_chan_dep_vld_vec_7[11] = dep_chan_vld_12_7;
    assign in_chan_dep_data_vec_7[191 : 176] = dep_chan_data_12_7;
    assign token_in_vec_7[11] = token_12_7;
    assign in_chan_dep_vld_vec_7[12] = dep_chan_vld_13_7;
    assign in_chan_dep_data_vec_7[207 : 192] = dep_chan_data_13_7;
    assign token_in_vec_7[12] = token_13_7;
    assign in_chan_dep_vld_vec_7[13] = dep_chan_vld_14_7;
    assign in_chan_dep_data_vec_7[223 : 208] = dep_chan_data_14_7;
    assign token_in_vec_7[13] = token_14_7;
    assign in_chan_dep_vld_vec_7[14] = dep_chan_vld_15_7;
    assign in_chan_dep_data_vec_7[239 : 224] = dep_chan_data_15_7;
    assign token_in_vec_7[14] = token_15_7;
    assign dep_chan_vld_7_0 = out_chan_dep_vld_vec_7[0];
    assign dep_chan_data_7_0 = out_chan_dep_data_7;
    assign token_7_0 = token_out_vec_7[0];
    assign dep_chan_vld_7_1 = out_chan_dep_vld_vec_7[1];
    assign dep_chan_data_7_1 = out_chan_dep_data_7;
    assign token_7_1 = token_out_vec_7[1];
    assign dep_chan_vld_7_2 = out_chan_dep_vld_vec_7[2];
    assign dep_chan_data_7_2 = out_chan_dep_data_7;
    assign token_7_2 = token_out_vec_7[2];
    assign dep_chan_vld_7_3 = out_chan_dep_vld_vec_7[3];
    assign dep_chan_data_7_3 = out_chan_dep_data_7;
    assign token_7_3 = token_out_vec_7[3];
    assign dep_chan_vld_7_4 = out_chan_dep_vld_vec_7[4];
    assign dep_chan_data_7_4 = out_chan_dep_data_7;
    assign token_7_4 = token_out_vec_7[4];
    assign dep_chan_vld_7_5 = out_chan_dep_vld_vec_7[5];
    assign dep_chan_data_7_5 = out_chan_dep_data_7;
    assign token_7_5 = token_out_vec_7[5];
    assign dep_chan_vld_7_6 = out_chan_dep_vld_vec_7[6];
    assign dep_chan_data_7_6 = out_chan_dep_data_7;
    assign token_7_6 = token_out_vec_7[6];
    assign dep_chan_vld_7_8 = out_chan_dep_vld_vec_7[7];
    assign dep_chan_data_7_8 = out_chan_dep_data_7;
    assign token_7_8 = token_out_vec_7[7];
    assign dep_chan_vld_7_9 = out_chan_dep_vld_vec_7[8];
    assign dep_chan_data_7_9 = out_chan_dep_data_7;
    assign token_7_9 = token_out_vec_7[8];
    assign dep_chan_vld_7_10 = out_chan_dep_vld_vec_7[9];
    assign dep_chan_data_7_10 = out_chan_dep_data_7;
    assign token_7_10 = token_out_vec_7[9];
    assign dep_chan_vld_7_11 = out_chan_dep_vld_vec_7[10];
    assign dep_chan_data_7_11 = out_chan_dep_data_7;
    assign token_7_11 = token_out_vec_7[10];
    assign dep_chan_vld_7_12 = out_chan_dep_vld_vec_7[11];
    assign dep_chan_data_7_12 = out_chan_dep_data_7;
    assign token_7_12 = token_out_vec_7[11];
    assign dep_chan_vld_7_13 = out_chan_dep_vld_vec_7[12];
    assign dep_chan_data_7_13 = out_chan_dep_data_7;
    assign token_7_13 = token_out_vec_7[12];
    assign dep_chan_vld_7_14 = out_chan_dep_vld_vec_7[13];
    assign dep_chan_data_7_14 = out_chan_dep_data_7;
    assign token_7_14 = token_out_vec_7[13];
    assign dep_chan_vld_7_15 = out_chan_dep_vld_vec_7[14];
    assign dep_chan_data_7_15 = out_chan_dep_data_7;
    assign token_7_15 = token_out_vec_7[14];

    // Process: kernel_kcore_v2h_pe_8_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 8, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_8 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_8),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_8),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_8),
        .token_in_vec(token_in_vec_8),
        .dl_detect_in(dl_detect_out),
        .origin(origin[8]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_8),
        .out_chan_dep_data(out_chan_dep_data_8),
        .token_out_vec(token_out_vec_8),
        .dl_detect_out(dl_in_vec[8]));

    assign proc_8_data_FIFO_blk[0] = 1'b0;
    assign proc_8_data_PIPO_blk[0] = 1'b0;
    assign proc_8_start_FIFO_blk[0] = 1'b0;
    assign proc_8_TLF_FIFO_blk[0] = 1'b0;
    assign proc_8_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_8_output_sync_blk[0] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_8[0] = dl_detect_out ? proc_dep_vld_vec_8_reg[0] : (proc_8_data_FIFO_blk[0] | proc_8_data_PIPO_blk[0] | proc_8_start_FIFO_blk[0] | proc_8_TLF_FIFO_blk[0] | proc_8_input_sync_blk[0] | proc_8_output_sync_blk[0]);
    assign proc_8_data_FIFO_blk[1] = 1'b0;
    assign proc_8_data_PIPO_blk[1] = 1'b0;
    assign proc_8_start_FIFO_blk[1] = 1'b0;
    assign proc_8_TLF_FIFO_blk[1] = 1'b0;
    assign proc_8_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_8_output_sync_blk[1] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_8[1] = dl_detect_out ? proc_dep_vld_vec_8_reg[1] : (proc_8_data_FIFO_blk[1] | proc_8_data_PIPO_blk[1] | proc_8_start_FIFO_blk[1] | proc_8_TLF_FIFO_blk[1] | proc_8_input_sync_blk[1] | proc_8_output_sync_blk[1]);
    assign proc_8_data_FIFO_blk[2] = 1'b0;
    assign proc_8_data_PIPO_blk[2] = 1'b0;
    assign proc_8_start_FIFO_blk[2] = 1'b0;
    assign proc_8_TLF_FIFO_blk[2] = 1'b0;
    assign proc_8_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_8_output_sync_blk[2] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_8[2] = dl_detect_out ? proc_dep_vld_vec_8_reg[2] : (proc_8_data_FIFO_blk[2] | proc_8_data_PIPO_blk[2] | proc_8_start_FIFO_blk[2] | proc_8_TLF_FIFO_blk[2] | proc_8_input_sync_blk[2] | proc_8_output_sync_blk[2]);
    assign proc_8_data_FIFO_blk[3] = 1'b0;
    assign proc_8_data_PIPO_blk[3] = 1'b0;
    assign proc_8_start_FIFO_blk[3] = 1'b0;
    assign proc_8_TLF_FIFO_blk[3] = 1'b0;
    assign proc_8_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_8_output_sync_blk[3] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_8[3] = dl_detect_out ? proc_dep_vld_vec_8_reg[3] : (proc_8_data_FIFO_blk[3] | proc_8_data_PIPO_blk[3] | proc_8_start_FIFO_blk[3] | proc_8_TLF_FIFO_blk[3] | proc_8_input_sync_blk[3] | proc_8_output_sync_blk[3]);
    assign proc_8_data_FIFO_blk[4] = 1'b0;
    assign proc_8_data_PIPO_blk[4] = 1'b0;
    assign proc_8_start_FIFO_blk[4] = 1'b0;
    assign proc_8_TLF_FIFO_blk[4] = 1'b0;
    assign proc_8_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_8_output_sync_blk[4] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_8[4] = dl_detect_out ? proc_dep_vld_vec_8_reg[4] : (proc_8_data_FIFO_blk[4] | proc_8_data_PIPO_blk[4] | proc_8_start_FIFO_blk[4] | proc_8_TLF_FIFO_blk[4] | proc_8_input_sync_blk[4] | proc_8_output_sync_blk[4]);
    assign proc_8_data_FIFO_blk[5] = 1'b0;
    assign proc_8_data_PIPO_blk[5] = 1'b0;
    assign proc_8_start_FIFO_blk[5] = 1'b0;
    assign proc_8_TLF_FIFO_blk[5] = 1'b0;
    assign proc_8_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_8_output_sync_blk[5] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_8[5] = dl_detect_out ? proc_dep_vld_vec_8_reg[5] : (proc_8_data_FIFO_blk[5] | proc_8_data_PIPO_blk[5] | proc_8_start_FIFO_blk[5] | proc_8_TLF_FIFO_blk[5] | proc_8_input_sync_blk[5] | proc_8_output_sync_blk[5]);
    assign proc_8_data_FIFO_blk[6] = 1'b0;
    assign proc_8_data_PIPO_blk[6] = 1'b0;
    assign proc_8_start_FIFO_blk[6] = 1'b0;
    assign proc_8_TLF_FIFO_blk[6] = 1'b0;
    assign proc_8_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_8_output_sync_blk[6] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_8[6] = dl_detect_out ? proc_dep_vld_vec_8_reg[6] : (proc_8_data_FIFO_blk[6] | proc_8_data_PIPO_blk[6] | proc_8_start_FIFO_blk[6] | proc_8_TLF_FIFO_blk[6] | proc_8_input_sync_blk[6] | proc_8_output_sync_blk[6]);
    assign proc_8_data_FIFO_blk[7] = 1'b0;
    assign proc_8_data_PIPO_blk[7] = 1'b0;
    assign proc_8_start_FIFO_blk[7] = 1'b0;
    assign proc_8_TLF_FIFO_blk[7] = 1'b0;
    assign proc_8_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_8_output_sync_blk[7] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_8[7] = dl_detect_out ? proc_dep_vld_vec_8_reg[7] : (proc_8_data_FIFO_blk[7] | proc_8_data_PIPO_blk[7] | proc_8_start_FIFO_blk[7] | proc_8_TLF_FIFO_blk[7] | proc_8_input_sync_blk[7] | proc_8_output_sync_blk[7]);
    assign proc_8_data_FIFO_blk[8] = 1'b0;
    assign proc_8_data_PIPO_blk[8] = 1'b0;
    assign proc_8_start_FIFO_blk[8] = 1'b0;
    assign proc_8_TLF_FIFO_blk[8] = 1'b0;
    assign proc_8_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_8_output_sync_blk[8] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_8[8] = dl_detect_out ? proc_dep_vld_vec_8_reg[8] : (proc_8_data_FIFO_blk[8] | proc_8_data_PIPO_blk[8] | proc_8_start_FIFO_blk[8] | proc_8_TLF_FIFO_blk[8] | proc_8_input_sync_blk[8] | proc_8_output_sync_blk[8]);
    assign proc_8_data_FIFO_blk[9] = 1'b0;
    assign proc_8_data_PIPO_blk[9] = 1'b0;
    assign proc_8_start_FIFO_blk[9] = 1'b0;
    assign proc_8_TLF_FIFO_blk[9] = 1'b0;
    assign proc_8_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_8_output_sync_blk[9] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_8[9] = dl_detect_out ? proc_dep_vld_vec_8_reg[9] : (proc_8_data_FIFO_blk[9] | proc_8_data_PIPO_blk[9] | proc_8_start_FIFO_blk[9] | proc_8_TLF_FIFO_blk[9] | proc_8_input_sync_blk[9] | proc_8_output_sync_blk[9]);
    assign proc_8_data_FIFO_blk[10] = 1'b0;
    assign proc_8_data_PIPO_blk[10] = 1'b0;
    assign proc_8_start_FIFO_blk[10] = 1'b0;
    assign proc_8_TLF_FIFO_blk[10] = 1'b0;
    assign proc_8_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_8_output_sync_blk[10] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_8[10] = dl_detect_out ? proc_dep_vld_vec_8_reg[10] : (proc_8_data_FIFO_blk[10] | proc_8_data_PIPO_blk[10] | proc_8_start_FIFO_blk[10] | proc_8_TLF_FIFO_blk[10] | proc_8_input_sync_blk[10] | proc_8_output_sync_blk[10]);
    assign proc_8_data_FIFO_blk[11] = 1'b0;
    assign proc_8_data_PIPO_blk[11] = 1'b0;
    assign proc_8_start_FIFO_blk[11] = 1'b0;
    assign proc_8_TLF_FIFO_blk[11] = 1'b0;
    assign proc_8_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_8_output_sync_blk[11] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_8[11] = dl_detect_out ? proc_dep_vld_vec_8_reg[11] : (proc_8_data_FIFO_blk[11] | proc_8_data_PIPO_blk[11] | proc_8_start_FIFO_blk[11] | proc_8_TLF_FIFO_blk[11] | proc_8_input_sync_blk[11] | proc_8_output_sync_blk[11]);
    assign proc_8_data_FIFO_blk[12] = 1'b0;
    assign proc_8_data_PIPO_blk[12] = 1'b0;
    assign proc_8_start_FIFO_blk[12] = 1'b0;
    assign proc_8_TLF_FIFO_blk[12] = 1'b0;
    assign proc_8_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_8_output_sync_blk[12] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_8[12] = dl_detect_out ? proc_dep_vld_vec_8_reg[12] : (proc_8_data_FIFO_blk[12] | proc_8_data_PIPO_blk[12] | proc_8_start_FIFO_blk[12] | proc_8_TLF_FIFO_blk[12] | proc_8_input_sync_blk[12] | proc_8_output_sync_blk[12]);
    assign proc_8_data_FIFO_blk[13] = 1'b0;
    assign proc_8_data_PIPO_blk[13] = 1'b0;
    assign proc_8_start_FIFO_blk[13] = 1'b0;
    assign proc_8_TLF_FIFO_blk[13] = 1'b0;
    assign proc_8_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_8_output_sync_blk[13] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_8[13] = dl_detect_out ? proc_dep_vld_vec_8_reg[13] : (proc_8_data_FIFO_blk[13] | proc_8_data_PIPO_blk[13] | proc_8_start_FIFO_blk[13] | proc_8_TLF_FIFO_blk[13] | proc_8_input_sync_blk[13] | proc_8_output_sync_blk[13]);
    assign proc_8_data_FIFO_blk[14] = 1'b0;
    assign proc_8_data_PIPO_blk[14] = 1'b0;
    assign proc_8_start_FIFO_blk[14] = 1'b0;
    assign proc_8_TLF_FIFO_blk[14] = 1'b0;
    assign proc_8_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready & kernel_kcore_v2h_pe_8_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_8_output_sync_blk[14] = 1'b0 | (ap_done_reg_8 & kernel_kcore_v2h_pe_8_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_8[14] = dl_detect_out ? proc_dep_vld_vec_8_reg[14] : (proc_8_data_FIFO_blk[14] | proc_8_data_PIPO_blk[14] | proc_8_start_FIFO_blk[14] | proc_8_TLF_FIFO_blk[14] | proc_8_input_sync_blk[14] | proc_8_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_8_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_8_reg <= proc_dep_vld_vec_8;
        end
    end
    assign in_chan_dep_vld_vec_8[0] = dep_chan_vld_0_8;
    assign in_chan_dep_data_vec_8[15 : 0] = dep_chan_data_0_8;
    assign token_in_vec_8[0] = token_0_8;
    assign in_chan_dep_vld_vec_8[1] = dep_chan_vld_1_8;
    assign in_chan_dep_data_vec_8[31 : 16] = dep_chan_data_1_8;
    assign token_in_vec_8[1] = token_1_8;
    assign in_chan_dep_vld_vec_8[2] = dep_chan_vld_2_8;
    assign in_chan_dep_data_vec_8[47 : 32] = dep_chan_data_2_8;
    assign token_in_vec_8[2] = token_2_8;
    assign in_chan_dep_vld_vec_8[3] = dep_chan_vld_3_8;
    assign in_chan_dep_data_vec_8[63 : 48] = dep_chan_data_3_8;
    assign token_in_vec_8[3] = token_3_8;
    assign in_chan_dep_vld_vec_8[4] = dep_chan_vld_4_8;
    assign in_chan_dep_data_vec_8[79 : 64] = dep_chan_data_4_8;
    assign token_in_vec_8[4] = token_4_8;
    assign in_chan_dep_vld_vec_8[5] = dep_chan_vld_5_8;
    assign in_chan_dep_data_vec_8[95 : 80] = dep_chan_data_5_8;
    assign token_in_vec_8[5] = token_5_8;
    assign in_chan_dep_vld_vec_8[6] = dep_chan_vld_6_8;
    assign in_chan_dep_data_vec_8[111 : 96] = dep_chan_data_6_8;
    assign token_in_vec_8[6] = token_6_8;
    assign in_chan_dep_vld_vec_8[7] = dep_chan_vld_7_8;
    assign in_chan_dep_data_vec_8[127 : 112] = dep_chan_data_7_8;
    assign token_in_vec_8[7] = token_7_8;
    assign in_chan_dep_vld_vec_8[8] = dep_chan_vld_9_8;
    assign in_chan_dep_data_vec_8[143 : 128] = dep_chan_data_9_8;
    assign token_in_vec_8[8] = token_9_8;
    assign in_chan_dep_vld_vec_8[9] = dep_chan_vld_10_8;
    assign in_chan_dep_data_vec_8[159 : 144] = dep_chan_data_10_8;
    assign token_in_vec_8[9] = token_10_8;
    assign in_chan_dep_vld_vec_8[10] = dep_chan_vld_11_8;
    assign in_chan_dep_data_vec_8[175 : 160] = dep_chan_data_11_8;
    assign token_in_vec_8[10] = token_11_8;
    assign in_chan_dep_vld_vec_8[11] = dep_chan_vld_12_8;
    assign in_chan_dep_data_vec_8[191 : 176] = dep_chan_data_12_8;
    assign token_in_vec_8[11] = token_12_8;
    assign in_chan_dep_vld_vec_8[12] = dep_chan_vld_13_8;
    assign in_chan_dep_data_vec_8[207 : 192] = dep_chan_data_13_8;
    assign token_in_vec_8[12] = token_13_8;
    assign in_chan_dep_vld_vec_8[13] = dep_chan_vld_14_8;
    assign in_chan_dep_data_vec_8[223 : 208] = dep_chan_data_14_8;
    assign token_in_vec_8[13] = token_14_8;
    assign in_chan_dep_vld_vec_8[14] = dep_chan_vld_15_8;
    assign in_chan_dep_data_vec_8[239 : 224] = dep_chan_data_15_8;
    assign token_in_vec_8[14] = token_15_8;
    assign dep_chan_vld_8_0 = out_chan_dep_vld_vec_8[0];
    assign dep_chan_data_8_0 = out_chan_dep_data_8;
    assign token_8_0 = token_out_vec_8[0];
    assign dep_chan_vld_8_1 = out_chan_dep_vld_vec_8[1];
    assign dep_chan_data_8_1 = out_chan_dep_data_8;
    assign token_8_1 = token_out_vec_8[1];
    assign dep_chan_vld_8_2 = out_chan_dep_vld_vec_8[2];
    assign dep_chan_data_8_2 = out_chan_dep_data_8;
    assign token_8_2 = token_out_vec_8[2];
    assign dep_chan_vld_8_3 = out_chan_dep_vld_vec_8[3];
    assign dep_chan_data_8_3 = out_chan_dep_data_8;
    assign token_8_3 = token_out_vec_8[3];
    assign dep_chan_vld_8_4 = out_chan_dep_vld_vec_8[4];
    assign dep_chan_data_8_4 = out_chan_dep_data_8;
    assign token_8_4 = token_out_vec_8[4];
    assign dep_chan_vld_8_5 = out_chan_dep_vld_vec_8[5];
    assign dep_chan_data_8_5 = out_chan_dep_data_8;
    assign token_8_5 = token_out_vec_8[5];
    assign dep_chan_vld_8_6 = out_chan_dep_vld_vec_8[6];
    assign dep_chan_data_8_6 = out_chan_dep_data_8;
    assign token_8_6 = token_out_vec_8[6];
    assign dep_chan_vld_8_7 = out_chan_dep_vld_vec_8[7];
    assign dep_chan_data_8_7 = out_chan_dep_data_8;
    assign token_8_7 = token_out_vec_8[7];
    assign dep_chan_vld_8_9 = out_chan_dep_vld_vec_8[8];
    assign dep_chan_data_8_9 = out_chan_dep_data_8;
    assign token_8_9 = token_out_vec_8[8];
    assign dep_chan_vld_8_10 = out_chan_dep_vld_vec_8[9];
    assign dep_chan_data_8_10 = out_chan_dep_data_8;
    assign token_8_10 = token_out_vec_8[9];
    assign dep_chan_vld_8_11 = out_chan_dep_vld_vec_8[10];
    assign dep_chan_data_8_11 = out_chan_dep_data_8;
    assign token_8_11 = token_out_vec_8[10];
    assign dep_chan_vld_8_12 = out_chan_dep_vld_vec_8[11];
    assign dep_chan_data_8_12 = out_chan_dep_data_8;
    assign token_8_12 = token_out_vec_8[11];
    assign dep_chan_vld_8_13 = out_chan_dep_vld_vec_8[12];
    assign dep_chan_data_8_13 = out_chan_dep_data_8;
    assign token_8_13 = token_out_vec_8[12];
    assign dep_chan_vld_8_14 = out_chan_dep_vld_vec_8[13];
    assign dep_chan_data_8_14 = out_chan_dep_data_8;
    assign token_8_14 = token_out_vec_8[13];
    assign dep_chan_vld_8_15 = out_chan_dep_vld_vec_8[14];
    assign dep_chan_data_8_15 = out_chan_dep_data_8;
    assign token_8_15 = token_out_vec_8[14];

    // Process: kernel_kcore_v2h_pe_9_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 9, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_9 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_9),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_9),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_9),
        .token_in_vec(token_in_vec_9),
        .dl_detect_in(dl_detect_out),
        .origin(origin[9]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_9),
        .out_chan_dep_data(out_chan_dep_data_9),
        .token_out_vec(token_out_vec_9),
        .dl_detect_out(dl_in_vec[9]));

    assign proc_9_data_FIFO_blk[0] = 1'b0;
    assign proc_9_data_PIPO_blk[0] = 1'b0;
    assign proc_9_start_FIFO_blk[0] = 1'b0;
    assign proc_9_TLF_FIFO_blk[0] = 1'b0;
    assign proc_9_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_9_output_sync_blk[0] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_9[0] = dl_detect_out ? proc_dep_vld_vec_9_reg[0] : (proc_9_data_FIFO_blk[0] | proc_9_data_PIPO_blk[0] | proc_9_start_FIFO_blk[0] | proc_9_TLF_FIFO_blk[0] | proc_9_input_sync_blk[0] | proc_9_output_sync_blk[0]);
    assign proc_9_data_FIFO_blk[1] = 1'b0;
    assign proc_9_data_PIPO_blk[1] = 1'b0;
    assign proc_9_start_FIFO_blk[1] = 1'b0;
    assign proc_9_TLF_FIFO_blk[1] = 1'b0;
    assign proc_9_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_9_output_sync_blk[1] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_9[1] = dl_detect_out ? proc_dep_vld_vec_9_reg[1] : (proc_9_data_FIFO_blk[1] | proc_9_data_PIPO_blk[1] | proc_9_start_FIFO_blk[1] | proc_9_TLF_FIFO_blk[1] | proc_9_input_sync_blk[1] | proc_9_output_sync_blk[1]);
    assign proc_9_data_FIFO_blk[2] = 1'b0;
    assign proc_9_data_PIPO_blk[2] = 1'b0;
    assign proc_9_start_FIFO_blk[2] = 1'b0;
    assign proc_9_TLF_FIFO_blk[2] = 1'b0;
    assign proc_9_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_9_output_sync_blk[2] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_9[2] = dl_detect_out ? proc_dep_vld_vec_9_reg[2] : (proc_9_data_FIFO_blk[2] | proc_9_data_PIPO_blk[2] | proc_9_start_FIFO_blk[2] | proc_9_TLF_FIFO_blk[2] | proc_9_input_sync_blk[2] | proc_9_output_sync_blk[2]);
    assign proc_9_data_FIFO_blk[3] = 1'b0;
    assign proc_9_data_PIPO_blk[3] = 1'b0;
    assign proc_9_start_FIFO_blk[3] = 1'b0;
    assign proc_9_TLF_FIFO_blk[3] = 1'b0;
    assign proc_9_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_9_output_sync_blk[3] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_9[3] = dl_detect_out ? proc_dep_vld_vec_9_reg[3] : (proc_9_data_FIFO_blk[3] | proc_9_data_PIPO_blk[3] | proc_9_start_FIFO_blk[3] | proc_9_TLF_FIFO_blk[3] | proc_9_input_sync_blk[3] | proc_9_output_sync_blk[3]);
    assign proc_9_data_FIFO_blk[4] = 1'b0;
    assign proc_9_data_PIPO_blk[4] = 1'b0;
    assign proc_9_start_FIFO_blk[4] = 1'b0;
    assign proc_9_TLF_FIFO_blk[4] = 1'b0;
    assign proc_9_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_9_output_sync_blk[4] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_9[4] = dl_detect_out ? proc_dep_vld_vec_9_reg[4] : (proc_9_data_FIFO_blk[4] | proc_9_data_PIPO_blk[4] | proc_9_start_FIFO_blk[4] | proc_9_TLF_FIFO_blk[4] | proc_9_input_sync_blk[4] | proc_9_output_sync_blk[4]);
    assign proc_9_data_FIFO_blk[5] = 1'b0;
    assign proc_9_data_PIPO_blk[5] = 1'b0;
    assign proc_9_start_FIFO_blk[5] = 1'b0;
    assign proc_9_TLF_FIFO_blk[5] = 1'b0;
    assign proc_9_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_9_output_sync_blk[5] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_9[5] = dl_detect_out ? proc_dep_vld_vec_9_reg[5] : (proc_9_data_FIFO_blk[5] | proc_9_data_PIPO_blk[5] | proc_9_start_FIFO_blk[5] | proc_9_TLF_FIFO_blk[5] | proc_9_input_sync_blk[5] | proc_9_output_sync_blk[5]);
    assign proc_9_data_FIFO_blk[6] = 1'b0;
    assign proc_9_data_PIPO_blk[6] = 1'b0;
    assign proc_9_start_FIFO_blk[6] = 1'b0;
    assign proc_9_TLF_FIFO_blk[6] = 1'b0;
    assign proc_9_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_9_output_sync_blk[6] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_9[6] = dl_detect_out ? proc_dep_vld_vec_9_reg[6] : (proc_9_data_FIFO_blk[6] | proc_9_data_PIPO_blk[6] | proc_9_start_FIFO_blk[6] | proc_9_TLF_FIFO_blk[6] | proc_9_input_sync_blk[6] | proc_9_output_sync_blk[6]);
    assign proc_9_data_FIFO_blk[7] = 1'b0;
    assign proc_9_data_PIPO_blk[7] = 1'b0;
    assign proc_9_start_FIFO_blk[7] = 1'b0;
    assign proc_9_TLF_FIFO_blk[7] = 1'b0;
    assign proc_9_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_9_output_sync_blk[7] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_9[7] = dl_detect_out ? proc_dep_vld_vec_9_reg[7] : (proc_9_data_FIFO_blk[7] | proc_9_data_PIPO_blk[7] | proc_9_start_FIFO_blk[7] | proc_9_TLF_FIFO_blk[7] | proc_9_input_sync_blk[7] | proc_9_output_sync_blk[7]);
    assign proc_9_data_FIFO_blk[8] = 1'b0;
    assign proc_9_data_PIPO_blk[8] = 1'b0;
    assign proc_9_start_FIFO_blk[8] = 1'b0;
    assign proc_9_TLF_FIFO_blk[8] = 1'b0;
    assign proc_9_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_9_output_sync_blk[8] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_9[8] = dl_detect_out ? proc_dep_vld_vec_9_reg[8] : (proc_9_data_FIFO_blk[8] | proc_9_data_PIPO_blk[8] | proc_9_start_FIFO_blk[8] | proc_9_TLF_FIFO_blk[8] | proc_9_input_sync_blk[8] | proc_9_output_sync_blk[8]);
    assign proc_9_data_FIFO_blk[9] = 1'b0;
    assign proc_9_data_PIPO_blk[9] = 1'b0;
    assign proc_9_start_FIFO_blk[9] = 1'b0;
    assign proc_9_TLF_FIFO_blk[9] = 1'b0;
    assign proc_9_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_9_output_sync_blk[9] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_9[9] = dl_detect_out ? proc_dep_vld_vec_9_reg[9] : (proc_9_data_FIFO_blk[9] | proc_9_data_PIPO_blk[9] | proc_9_start_FIFO_blk[9] | proc_9_TLF_FIFO_blk[9] | proc_9_input_sync_blk[9] | proc_9_output_sync_blk[9]);
    assign proc_9_data_FIFO_blk[10] = 1'b0;
    assign proc_9_data_PIPO_blk[10] = 1'b0;
    assign proc_9_start_FIFO_blk[10] = 1'b0;
    assign proc_9_TLF_FIFO_blk[10] = 1'b0;
    assign proc_9_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_9_output_sync_blk[10] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_9[10] = dl_detect_out ? proc_dep_vld_vec_9_reg[10] : (proc_9_data_FIFO_blk[10] | proc_9_data_PIPO_blk[10] | proc_9_start_FIFO_blk[10] | proc_9_TLF_FIFO_blk[10] | proc_9_input_sync_blk[10] | proc_9_output_sync_blk[10]);
    assign proc_9_data_FIFO_blk[11] = 1'b0;
    assign proc_9_data_PIPO_blk[11] = 1'b0;
    assign proc_9_start_FIFO_blk[11] = 1'b0;
    assign proc_9_TLF_FIFO_blk[11] = 1'b0;
    assign proc_9_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_9_output_sync_blk[11] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_9[11] = dl_detect_out ? proc_dep_vld_vec_9_reg[11] : (proc_9_data_FIFO_blk[11] | proc_9_data_PIPO_blk[11] | proc_9_start_FIFO_blk[11] | proc_9_TLF_FIFO_blk[11] | proc_9_input_sync_blk[11] | proc_9_output_sync_blk[11]);
    assign proc_9_data_FIFO_blk[12] = 1'b0;
    assign proc_9_data_PIPO_blk[12] = 1'b0;
    assign proc_9_start_FIFO_blk[12] = 1'b0;
    assign proc_9_TLF_FIFO_blk[12] = 1'b0;
    assign proc_9_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_9_output_sync_blk[12] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_9[12] = dl_detect_out ? proc_dep_vld_vec_9_reg[12] : (proc_9_data_FIFO_blk[12] | proc_9_data_PIPO_blk[12] | proc_9_start_FIFO_blk[12] | proc_9_TLF_FIFO_blk[12] | proc_9_input_sync_blk[12] | proc_9_output_sync_blk[12]);
    assign proc_9_data_FIFO_blk[13] = 1'b0;
    assign proc_9_data_PIPO_blk[13] = 1'b0;
    assign proc_9_start_FIFO_blk[13] = 1'b0;
    assign proc_9_TLF_FIFO_blk[13] = 1'b0;
    assign proc_9_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_9_output_sync_blk[13] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_9[13] = dl_detect_out ? proc_dep_vld_vec_9_reg[13] : (proc_9_data_FIFO_blk[13] | proc_9_data_PIPO_blk[13] | proc_9_start_FIFO_blk[13] | proc_9_TLF_FIFO_blk[13] | proc_9_input_sync_blk[13] | proc_9_output_sync_blk[13]);
    assign proc_9_data_FIFO_blk[14] = 1'b0;
    assign proc_9_data_PIPO_blk[14] = 1'b0;
    assign proc_9_start_FIFO_blk[14] = 1'b0;
    assign proc_9_TLF_FIFO_blk[14] = 1'b0;
    assign proc_9_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready & kernel_kcore_v2h_pe_9_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_9_output_sync_blk[14] = 1'b0 | (ap_done_reg_9 & kernel_kcore_v2h_pe_9_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_9[14] = dl_detect_out ? proc_dep_vld_vec_9_reg[14] : (proc_9_data_FIFO_blk[14] | proc_9_data_PIPO_blk[14] | proc_9_start_FIFO_blk[14] | proc_9_TLF_FIFO_blk[14] | proc_9_input_sync_blk[14] | proc_9_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_9_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_9_reg <= proc_dep_vld_vec_9;
        end
    end
    assign in_chan_dep_vld_vec_9[0] = dep_chan_vld_0_9;
    assign in_chan_dep_data_vec_9[15 : 0] = dep_chan_data_0_9;
    assign token_in_vec_9[0] = token_0_9;
    assign in_chan_dep_vld_vec_9[1] = dep_chan_vld_1_9;
    assign in_chan_dep_data_vec_9[31 : 16] = dep_chan_data_1_9;
    assign token_in_vec_9[1] = token_1_9;
    assign in_chan_dep_vld_vec_9[2] = dep_chan_vld_2_9;
    assign in_chan_dep_data_vec_9[47 : 32] = dep_chan_data_2_9;
    assign token_in_vec_9[2] = token_2_9;
    assign in_chan_dep_vld_vec_9[3] = dep_chan_vld_3_9;
    assign in_chan_dep_data_vec_9[63 : 48] = dep_chan_data_3_9;
    assign token_in_vec_9[3] = token_3_9;
    assign in_chan_dep_vld_vec_9[4] = dep_chan_vld_4_9;
    assign in_chan_dep_data_vec_9[79 : 64] = dep_chan_data_4_9;
    assign token_in_vec_9[4] = token_4_9;
    assign in_chan_dep_vld_vec_9[5] = dep_chan_vld_5_9;
    assign in_chan_dep_data_vec_9[95 : 80] = dep_chan_data_5_9;
    assign token_in_vec_9[5] = token_5_9;
    assign in_chan_dep_vld_vec_9[6] = dep_chan_vld_6_9;
    assign in_chan_dep_data_vec_9[111 : 96] = dep_chan_data_6_9;
    assign token_in_vec_9[6] = token_6_9;
    assign in_chan_dep_vld_vec_9[7] = dep_chan_vld_7_9;
    assign in_chan_dep_data_vec_9[127 : 112] = dep_chan_data_7_9;
    assign token_in_vec_9[7] = token_7_9;
    assign in_chan_dep_vld_vec_9[8] = dep_chan_vld_8_9;
    assign in_chan_dep_data_vec_9[143 : 128] = dep_chan_data_8_9;
    assign token_in_vec_9[8] = token_8_9;
    assign in_chan_dep_vld_vec_9[9] = dep_chan_vld_10_9;
    assign in_chan_dep_data_vec_9[159 : 144] = dep_chan_data_10_9;
    assign token_in_vec_9[9] = token_10_9;
    assign in_chan_dep_vld_vec_9[10] = dep_chan_vld_11_9;
    assign in_chan_dep_data_vec_9[175 : 160] = dep_chan_data_11_9;
    assign token_in_vec_9[10] = token_11_9;
    assign in_chan_dep_vld_vec_9[11] = dep_chan_vld_12_9;
    assign in_chan_dep_data_vec_9[191 : 176] = dep_chan_data_12_9;
    assign token_in_vec_9[11] = token_12_9;
    assign in_chan_dep_vld_vec_9[12] = dep_chan_vld_13_9;
    assign in_chan_dep_data_vec_9[207 : 192] = dep_chan_data_13_9;
    assign token_in_vec_9[12] = token_13_9;
    assign in_chan_dep_vld_vec_9[13] = dep_chan_vld_14_9;
    assign in_chan_dep_data_vec_9[223 : 208] = dep_chan_data_14_9;
    assign token_in_vec_9[13] = token_14_9;
    assign in_chan_dep_vld_vec_9[14] = dep_chan_vld_15_9;
    assign in_chan_dep_data_vec_9[239 : 224] = dep_chan_data_15_9;
    assign token_in_vec_9[14] = token_15_9;
    assign dep_chan_vld_9_0 = out_chan_dep_vld_vec_9[0];
    assign dep_chan_data_9_0 = out_chan_dep_data_9;
    assign token_9_0 = token_out_vec_9[0];
    assign dep_chan_vld_9_1 = out_chan_dep_vld_vec_9[1];
    assign dep_chan_data_9_1 = out_chan_dep_data_9;
    assign token_9_1 = token_out_vec_9[1];
    assign dep_chan_vld_9_2 = out_chan_dep_vld_vec_9[2];
    assign dep_chan_data_9_2 = out_chan_dep_data_9;
    assign token_9_2 = token_out_vec_9[2];
    assign dep_chan_vld_9_3 = out_chan_dep_vld_vec_9[3];
    assign dep_chan_data_9_3 = out_chan_dep_data_9;
    assign token_9_3 = token_out_vec_9[3];
    assign dep_chan_vld_9_4 = out_chan_dep_vld_vec_9[4];
    assign dep_chan_data_9_4 = out_chan_dep_data_9;
    assign token_9_4 = token_out_vec_9[4];
    assign dep_chan_vld_9_5 = out_chan_dep_vld_vec_9[5];
    assign dep_chan_data_9_5 = out_chan_dep_data_9;
    assign token_9_5 = token_out_vec_9[5];
    assign dep_chan_vld_9_6 = out_chan_dep_vld_vec_9[6];
    assign dep_chan_data_9_6 = out_chan_dep_data_9;
    assign token_9_6 = token_out_vec_9[6];
    assign dep_chan_vld_9_7 = out_chan_dep_vld_vec_9[7];
    assign dep_chan_data_9_7 = out_chan_dep_data_9;
    assign token_9_7 = token_out_vec_9[7];
    assign dep_chan_vld_9_8 = out_chan_dep_vld_vec_9[8];
    assign dep_chan_data_9_8 = out_chan_dep_data_9;
    assign token_9_8 = token_out_vec_9[8];
    assign dep_chan_vld_9_10 = out_chan_dep_vld_vec_9[9];
    assign dep_chan_data_9_10 = out_chan_dep_data_9;
    assign token_9_10 = token_out_vec_9[9];
    assign dep_chan_vld_9_11 = out_chan_dep_vld_vec_9[10];
    assign dep_chan_data_9_11 = out_chan_dep_data_9;
    assign token_9_11 = token_out_vec_9[10];
    assign dep_chan_vld_9_12 = out_chan_dep_vld_vec_9[11];
    assign dep_chan_data_9_12 = out_chan_dep_data_9;
    assign token_9_12 = token_out_vec_9[11];
    assign dep_chan_vld_9_13 = out_chan_dep_vld_vec_9[12];
    assign dep_chan_data_9_13 = out_chan_dep_data_9;
    assign token_9_13 = token_out_vec_9[12];
    assign dep_chan_vld_9_14 = out_chan_dep_vld_vec_9[13];
    assign dep_chan_data_9_14 = out_chan_dep_data_9;
    assign token_9_14 = token_out_vec_9[13];
    assign dep_chan_vld_9_15 = out_chan_dep_vld_vec_9[14];
    assign dep_chan_data_9_15 = out_chan_dep_data_9;
    assign token_9_15 = token_out_vec_9[14];

    // Process: kernel_kcore_v2h_pe_10_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 10, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_10 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_10),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_10),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_10),
        .token_in_vec(token_in_vec_10),
        .dl_detect_in(dl_detect_out),
        .origin(origin[10]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_10),
        .out_chan_dep_data(out_chan_dep_data_10),
        .token_out_vec(token_out_vec_10),
        .dl_detect_out(dl_in_vec[10]));

    assign proc_10_data_FIFO_blk[0] = 1'b0;
    assign proc_10_data_PIPO_blk[0] = 1'b0;
    assign proc_10_start_FIFO_blk[0] = 1'b0;
    assign proc_10_TLF_FIFO_blk[0] = 1'b0;
    assign proc_10_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_10_output_sync_blk[0] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_10[0] = dl_detect_out ? proc_dep_vld_vec_10_reg[0] : (proc_10_data_FIFO_blk[0] | proc_10_data_PIPO_blk[0] | proc_10_start_FIFO_blk[0] | proc_10_TLF_FIFO_blk[0] | proc_10_input_sync_blk[0] | proc_10_output_sync_blk[0]);
    assign proc_10_data_FIFO_blk[1] = 1'b0;
    assign proc_10_data_PIPO_blk[1] = 1'b0;
    assign proc_10_start_FIFO_blk[1] = 1'b0;
    assign proc_10_TLF_FIFO_blk[1] = 1'b0;
    assign proc_10_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_10_output_sync_blk[1] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_10[1] = dl_detect_out ? proc_dep_vld_vec_10_reg[1] : (proc_10_data_FIFO_blk[1] | proc_10_data_PIPO_blk[1] | proc_10_start_FIFO_blk[1] | proc_10_TLF_FIFO_blk[1] | proc_10_input_sync_blk[1] | proc_10_output_sync_blk[1]);
    assign proc_10_data_FIFO_blk[2] = 1'b0;
    assign proc_10_data_PIPO_blk[2] = 1'b0;
    assign proc_10_start_FIFO_blk[2] = 1'b0;
    assign proc_10_TLF_FIFO_blk[2] = 1'b0;
    assign proc_10_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_10_output_sync_blk[2] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_10[2] = dl_detect_out ? proc_dep_vld_vec_10_reg[2] : (proc_10_data_FIFO_blk[2] | proc_10_data_PIPO_blk[2] | proc_10_start_FIFO_blk[2] | proc_10_TLF_FIFO_blk[2] | proc_10_input_sync_blk[2] | proc_10_output_sync_blk[2]);
    assign proc_10_data_FIFO_blk[3] = 1'b0;
    assign proc_10_data_PIPO_blk[3] = 1'b0;
    assign proc_10_start_FIFO_blk[3] = 1'b0;
    assign proc_10_TLF_FIFO_blk[3] = 1'b0;
    assign proc_10_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_10_output_sync_blk[3] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_10[3] = dl_detect_out ? proc_dep_vld_vec_10_reg[3] : (proc_10_data_FIFO_blk[3] | proc_10_data_PIPO_blk[3] | proc_10_start_FIFO_blk[3] | proc_10_TLF_FIFO_blk[3] | proc_10_input_sync_blk[3] | proc_10_output_sync_blk[3]);
    assign proc_10_data_FIFO_blk[4] = 1'b0;
    assign proc_10_data_PIPO_blk[4] = 1'b0;
    assign proc_10_start_FIFO_blk[4] = 1'b0;
    assign proc_10_TLF_FIFO_blk[4] = 1'b0;
    assign proc_10_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_10_output_sync_blk[4] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_10[4] = dl_detect_out ? proc_dep_vld_vec_10_reg[4] : (proc_10_data_FIFO_blk[4] | proc_10_data_PIPO_blk[4] | proc_10_start_FIFO_blk[4] | proc_10_TLF_FIFO_blk[4] | proc_10_input_sync_blk[4] | proc_10_output_sync_blk[4]);
    assign proc_10_data_FIFO_blk[5] = 1'b0;
    assign proc_10_data_PIPO_blk[5] = 1'b0;
    assign proc_10_start_FIFO_blk[5] = 1'b0;
    assign proc_10_TLF_FIFO_blk[5] = 1'b0;
    assign proc_10_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_10_output_sync_blk[5] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_10[5] = dl_detect_out ? proc_dep_vld_vec_10_reg[5] : (proc_10_data_FIFO_blk[5] | proc_10_data_PIPO_blk[5] | proc_10_start_FIFO_blk[5] | proc_10_TLF_FIFO_blk[5] | proc_10_input_sync_blk[5] | proc_10_output_sync_blk[5]);
    assign proc_10_data_FIFO_blk[6] = 1'b0;
    assign proc_10_data_PIPO_blk[6] = 1'b0;
    assign proc_10_start_FIFO_blk[6] = 1'b0;
    assign proc_10_TLF_FIFO_blk[6] = 1'b0;
    assign proc_10_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_10_output_sync_blk[6] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_10[6] = dl_detect_out ? proc_dep_vld_vec_10_reg[6] : (proc_10_data_FIFO_blk[6] | proc_10_data_PIPO_blk[6] | proc_10_start_FIFO_blk[6] | proc_10_TLF_FIFO_blk[6] | proc_10_input_sync_blk[6] | proc_10_output_sync_blk[6]);
    assign proc_10_data_FIFO_blk[7] = 1'b0;
    assign proc_10_data_PIPO_blk[7] = 1'b0;
    assign proc_10_start_FIFO_blk[7] = 1'b0;
    assign proc_10_TLF_FIFO_blk[7] = 1'b0;
    assign proc_10_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_10_output_sync_blk[7] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_10[7] = dl_detect_out ? proc_dep_vld_vec_10_reg[7] : (proc_10_data_FIFO_blk[7] | proc_10_data_PIPO_blk[7] | proc_10_start_FIFO_blk[7] | proc_10_TLF_FIFO_blk[7] | proc_10_input_sync_blk[7] | proc_10_output_sync_blk[7]);
    assign proc_10_data_FIFO_blk[8] = 1'b0;
    assign proc_10_data_PIPO_blk[8] = 1'b0;
    assign proc_10_start_FIFO_blk[8] = 1'b0;
    assign proc_10_TLF_FIFO_blk[8] = 1'b0;
    assign proc_10_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_10_output_sync_blk[8] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_10[8] = dl_detect_out ? proc_dep_vld_vec_10_reg[8] : (proc_10_data_FIFO_blk[8] | proc_10_data_PIPO_blk[8] | proc_10_start_FIFO_blk[8] | proc_10_TLF_FIFO_blk[8] | proc_10_input_sync_blk[8] | proc_10_output_sync_blk[8]);
    assign proc_10_data_FIFO_blk[9] = 1'b0;
    assign proc_10_data_PIPO_blk[9] = 1'b0;
    assign proc_10_start_FIFO_blk[9] = 1'b0;
    assign proc_10_TLF_FIFO_blk[9] = 1'b0;
    assign proc_10_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_10_output_sync_blk[9] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_10[9] = dl_detect_out ? proc_dep_vld_vec_10_reg[9] : (proc_10_data_FIFO_blk[9] | proc_10_data_PIPO_blk[9] | proc_10_start_FIFO_blk[9] | proc_10_TLF_FIFO_blk[9] | proc_10_input_sync_blk[9] | proc_10_output_sync_blk[9]);
    assign proc_10_data_FIFO_blk[10] = 1'b0;
    assign proc_10_data_PIPO_blk[10] = 1'b0;
    assign proc_10_start_FIFO_blk[10] = 1'b0;
    assign proc_10_TLF_FIFO_blk[10] = 1'b0;
    assign proc_10_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_10_output_sync_blk[10] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_10[10] = dl_detect_out ? proc_dep_vld_vec_10_reg[10] : (proc_10_data_FIFO_blk[10] | proc_10_data_PIPO_blk[10] | proc_10_start_FIFO_blk[10] | proc_10_TLF_FIFO_blk[10] | proc_10_input_sync_blk[10] | proc_10_output_sync_blk[10]);
    assign proc_10_data_FIFO_blk[11] = 1'b0;
    assign proc_10_data_PIPO_blk[11] = 1'b0;
    assign proc_10_start_FIFO_blk[11] = 1'b0;
    assign proc_10_TLF_FIFO_blk[11] = 1'b0;
    assign proc_10_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_10_output_sync_blk[11] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_10[11] = dl_detect_out ? proc_dep_vld_vec_10_reg[11] : (proc_10_data_FIFO_blk[11] | proc_10_data_PIPO_blk[11] | proc_10_start_FIFO_blk[11] | proc_10_TLF_FIFO_blk[11] | proc_10_input_sync_blk[11] | proc_10_output_sync_blk[11]);
    assign proc_10_data_FIFO_blk[12] = 1'b0;
    assign proc_10_data_PIPO_blk[12] = 1'b0;
    assign proc_10_start_FIFO_blk[12] = 1'b0;
    assign proc_10_TLF_FIFO_blk[12] = 1'b0;
    assign proc_10_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_10_output_sync_blk[12] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_10[12] = dl_detect_out ? proc_dep_vld_vec_10_reg[12] : (proc_10_data_FIFO_blk[12] | proc_10_data_PIPO_blk[12] | proc_10_start_FIFO_blk[12] | proc_10_TLF_FIFO_blk[12] | proc_10_input_sync_blk[12] | proc_10_output_sync_blk[12]);
    assign proc_10_data_FIFO_blk[13] = 1'b0;
    assign proc_10_data_PIPO_blk[13] = 1'b0;
    assign proc_10_start_FIFO_blk[13] = 1'b0;
    assign proc_10_TLF_FIFO_blk[13] = 1'b0;
    assign proc_10_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_10_output_sync_blk[13] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_10[13] = dl_detect_out ? proc_dep_vld_vec_10_reg[13] : (proc_10_data_FIFO_blk[13] | proc_10_data_PIPO_blk[13] | proc_10_start_FIFO_blk[13] | proc_10_TLF_FIFO_blk[13] | proc_10_input_sync_blk[13] | proc_10_output_sync_blk[13]);
    assign proc_10_data_FIFO_blk[14] = 1'b0;
    assign proc_10_data_PIPO_blk[14] = 1'b0;
    assign proc_10_start_FIFO_blk[14] = 1'b0;
    assign proc_10_TLF_FIFO_blk[14] = 1'b0;
    assign proc_10_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready & kernel_kcore_v2h_pe_10_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_10_output_sync_blk[14] = 1'b0 | (ap_done_reg_10 & kernel_kcore_v2h_pe_10_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_10[14] = dl_detect_out ? proc_dep_vld_vec_10_reg[14] : (proc_10_data_FIFO_blk[14] | proc_10_data_PIPO_blk[14] | proc_10_start_FIFO_blk[14] | proc_10_TLF_FIFO_blk[14] | proc_10_input_sync_blk[14] | proc_10_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_10_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_10_reg <= proc_dep_vld_vec_10;
        end
    end
    assign in_chan_dep_vld_vec_10[0] = dep_chan_vld_0_10;
    assign in_chan_dep_data_vec_10[15 : 0] = dep_chan_data_0_10;
    assign token_in_vec_10[0] = token_0_10;
    assign in_chan_dep_vld_vec_10[1] = dep_chan_vld_1_10;
    assign in_chan_dep_data_vec_10[31 : 16] = dep_chan_data_1_10;
    assign token_in_vec_10[1] = token_1_10;
    assign in_chan_dep_vld_vec_10[2] = dep_chan_vld_2_10;
    assign in_chan_dep_data_vec_10[47 : 32] = dep_chan_data_2_10;
    assign token_in_vec_10[2] = token_2_10;
    assign in_chan_dep_vld_vec_10[3] = dep_chan_vld_3_10;
    assign in_chan_dep_data_vec_10[63 : 48] = dep_chan_data_3_10;
    assign token_in_vec_10[3] = token_3_10;
    assign in_chan_dep_vld_vec_10[4] = dep_chan_vld_4_10;
    assign in_chan_dep_data_vec_10[79 : 64] = dep_chan_data_4_10;
    assign token_in_vec_10[4] = token_4_10;
    assign in_chan_dep_vld_vec_10[5] = dep_chan_vld_5_10;
    assign in_chan_dep_data_vec_10[95 : 80] = dep_chan_data_5_10;
    assign token_in_vec_10[5] = token_5_10;
    assign in_chan_dep_vld_vec_10[6] = dep_chan_vld_6_10;
    assign in_chan_dep_data_vec_10[111 : 96] = dep_chan_data_6_10;
    assign token_in_vec_10[6] = token_6_10;
    assign in_chan_dep_vld_vec_10[7] = dep_chan_vld_7_10;
    assign in_chan_dep_data_vec_10[127 : 112] = dep_chan_data_7_10;
    assign token_in_vec_10[7] = token_7_10;
    assign in_chan_dep_vld_vec_10[8] = dep_chan_vld_8_10;
    assign in_chan_dep_data_vec_10[143 : 128] = dep_chan_data_8_10;
    assign token_in_vec_10[8] = token_8_10;
    assign in_chan_dep_vld_vec_10[9] = dep_chan_vld_9_10;
    assign in_chan_dep_data_vec_10[159 : 144] = dep_chan_data_9_10;
    assign token_in_vec_10[9] = token_9_10;
    assign in_chan_dep_vld_vec_10[10] = dep_chan_vld_11_10;
    assign in_chan_dep_data_vec_10[175 : 160] = dep_chan_data_11_10;
    assign token_in_vec_10[10] = token_11_10;
    assign in_chan_dep_vld_vec_10[11] = dep_chan_vld_12_10;
    assign in_chan_dep_data_vec_10[191 : 176] = dep_chan_data_12_10;
    assign token_in_vec_10[11] = token_12_10;
    assign in_chan_dep_vld_vec_10[12] = dep_chan_vld_13_10;
    assign in_chan_dep_data_vec_10[207 : 192] = dep_chan_data_13_10;
    assign token_in_vec_10[12] = token_13_10;
    assign in_chan_dep_vld_vec_10[13] = dep_chan_vld_14_10;
    assign in_chan_dep_data_vec_10[223 : 208] = dep_chan_data_14_10;
    assign token_in_vec_10[13] = token_14_10;
    assign in_chan_dep_vld_vec_10[14] = dep_chan_vld_15_10;
    assign in_chan_dep_data_vec_10[239 : 224] = dep_chan_data_15_10;
    assign token_in_vec_10[14] = token_15_10;
    assign dep_chan_vld_10_0 = out_chan_dep_vld_vec_10[0];
    assign dep_chan_data_10_0 = out_chan_dep_data_10;
    assign token_10_0 = token_out_vec_10[0];
    assign dep_chan_vld_10_1 = out_chan_dep_vld_vec_10[1];
    assign dep_chan_data_10_1 = out_chan_dep_data_10;
    assign token_10_1 = token_out_vec_10[1];
    assign dep_chan_vld_10_2 = out_chan_dep_vld_vec_10[2];
    assign dep_chan_data_10_2 = out_chan_dep_data_10;
    assign token_10_2 = token_out_vec_10[2];
    assign dep_chan_vld_10_3 = out_chan_dep_vld_vec_10[3];
    assign dep_chan_data_10_3 = out_chan_dep_data_10;
    assign token_10_3 = token_out_vec_10[3];
    assign dep_chan_vld_10_4 = out_chan_dep_vld_vec_10[4];
    assign dep_chan_data_10_4 = out_chan_dep_data_10;
    assign token_10_4 = token_out_vec_10[4];
    assign dep_chan_vld_10_5 = out_chan_dep_vld_vec_10[5];
    assign dep_chan_data_10_5 = out_chan_dep_data_10;
    assign token_10_5 = token_out_vec_10[5];
    assign dep_chan_vld_10_6 = out_chan_dep_vld_vec_10[6];
    assign dep_chan_data_10_6 = out_chan_dep_data_10;
    assign token_10_6 = token_out_vec_10[6];
    assign dep_chan_vld_10_7 = out_chan_dep_vld_vec_10[7];
    assign dep_chan_data_10_7 = out_chan_dep_data_10;
    assign token_10_7 = token_out_vec_10[7];
    assign dep_chan_vld_10_8 = out_chan_dep_vld_vec_10[8];
    assign dep_chan_data_10_8 = out_chan_dep_data_10;
    assign token_10_8 = token_out_vec_10[8];
    assign dep_chan_vld_10_9 = out_chan_dep_vld_vec_10[9];
    assign dep_chan_data_10_9 = out_chan_dep_data_10;
    assign token_10_9 = token_out_vec_10[9];
    assign dep_chan_vld_10_11 = out_chan_dep_vld_vec_10[10];
    assign dep_chan_data_10_11 = out_chan_dep_data_10;
    assign token_10_11 = token_out_vec_10[10];
    assign dep_chan_vld_10_12 = out_chan_dep_vld_vec_10[11];
    assign dep_chan_data_10_12 = out_chan_dep_data_10;
    assign token_10_12 = token_out_vec_10[11];
    assign dep_chan_vld_10_13 = out_chan_dep_vld_vec_10[12];
    assign dep_chan_data_10_13 = out_chan_dep_data_10;
    assign token_10_13 = token_out_vec_10[12];
    assign dep_chan_vld_10_14 = out_chan_dep_vld_vec_10[13];
    assign dep_chan_data_10_14 = out_chan_dep_data_10;
    assign token_10_14 = token_out_vec_10[13];
    assign dep_chan_vld_10_15 = out_chan_dep_vld_vec_10[14];
    assign dep_chan_data_10_15 = out_chan_dep_data_10;
    assign token_10_15 = token_out_vec_10[14];

    // Process: kernel_kcore_v2h_pe_11_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 11, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_11 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_11),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_11),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_11),
        .token_in_vec(token_in_vec_11),
        .dl_detect_in(dl_detect_out),
        .origin(origin[11]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_11),
        .out_chan_dep_data(out_chan_dep_data_11),
        .token_out_vec(token_out_vec_11),
        .dl_detect_out(dl_in_vec[11]));

    assign proc_11_data_FIFO_blk[0] = 1'b0;
    assign proc_11_data_PIPO_blk[0] = 1'b0;
    assign proc_11_start_FIFO_blk[0] = 1'b0;
    assign proc_11_TLF_FIFO_blk[0] = 1'b0;
    assign proc_11_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_11_output_sync_blk[0] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_11[0] = dl_detect_out ? proc_dep_vld_vec_11_reg[0] : (proc_11_data_FIFO_blk[0] | proc_11_data_PIPO_blk[0] | proc_11_start_FIFO_blk[0] | proc_11_TLF_FIFO_blk[0] | proc_11_input_sync_blk[0] | proc_11_output_sync_blk[0]);
    assign proc_11_data_FIFO_blk[1] = 1'b0;
    assign proc_11_data_PIPO_blk[1] = 1'b0;
    assign proc_11_start_FIFO_blk[1] = 1'b0;
    assign proc_11_TLF_FIFO_blk[1] = 1'b0;
    assign proc_11_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_11_output_sync_blk[1] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_11[1] = dl_detect_out ? proc_dep_vld_vec_11_reg[1] : (proc_11_data_FIFO_blk[1] | proc_11_data_PIPO_blk[1] | proc_11_start_FIFO_blk[1] | proc_11_TLF_FIFO_blk[1] | proc_11_input_sync_blk[1] | proc_11_output_sync_blk[1]);
    assign proc_11_data_FIFO_blk[2] = 1'b0;
    assign proc_11_data_PIPO_blk[2] = 1'b0;
    assign proc_11_start_FIFO_blk[2] = 1'b0;
    assign proc_11_TLF_FIFO_blk[2] = 1'b0;
    assign proc_11_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_11_output_sync_blk[2] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_11[2] = dl_detect_out ? proc_dep_vld_vec_11_reg[2] : (proc_11_data_FIFO_blk[2] | proc_11_data_PIPO_blk[2] | proc_11_start_FIFO_blk[2] | proc_11_TLF_FIFO_blk[2] | proc_11_input_sync_blk[2] | proc_11_output_sync_blk[2]);
    assign proc_11_data_FIFO_blk[3] = 1'b0;
    assign proc_11_data_PIPO_blk[3] = 1'b0;
    assign proc_11_start_FIFO_blk[3] = 1'b0;
    assign proc_11_TLF_FIFO_blk[3] = 1'b0;
    assign proc_11_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_11_output_sync_blk[3] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_11[3] = dl_detect_out ? proc_dep_vld_vec_11_reg[3] : (proc_11_data_FIFO_blk[3] | proc_11_data_PIPO_blk[3] | proc_11_start_FIFO_blk[3] | proc_11_TLF_FIFO_blk[3] | proc_11_input_sync_blk[3] | proc_11_output_sync_blk[3]);
    assign proc_11_data_FIFO_blk[4] = 1'b0;
    assign proc_11_data_PIPO_blk[4] = 1'b0;
    assign proc_11_start_FIFO_blk[4] = 1'b0;
    assign proc_11_TLF_FIFO_blk[4] = 1'b0;
    assign proc_11_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_11_output_sync_blk[4] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_11[4] = dl_detect_out ? proc_dep_vld_vec_11_reg[4] : (proc_11_data_FIFO_blk[4] | proc_11_data_PIPO_blk[4] | proc_11_start_FIFO_blk[4] | proc_11_TLF_FIFO_blk[4] | proc_11_input_sync_blk[4] | proc_11_output_sync_blk[4]);
    assign proc_11_data_FIFO_blk[5] = 1'b0;
    assign proc_11_data_PIPO_blk[5] = 1'b0;
    assign proc_11_start_FIFO_blk[5] = 1'b0;
    assign proc_11_TLF_FIFO_blk[5] = 1'b0;
    assign proc_11_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_11_output_sync_blk[5] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_11[5] = dl_detect_out ? proc_dep_vld_vec_11_reg[5] : (proc_11_data_FIFO_blk[5] | proc_11_data_PIPO_blk[5] | proc_11_start_FIFO_blk[5] | proc_11_TLF_FIFO_blk[5] | proc_11_input_sync_blk[5] | proc_11_output_sync_blk[5]);
    assign proc_11_data_FIFO_blk[6] = 1'b0;
    assign proc_11_data_PIPO_blk[6] = 1'b0;
    assign proc_11_start_FIFO_blk[6] = 1'b0;
    assign proc_11_TLF_FIFO_blk[6] = 1'b0;
    assign proc_11_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_11_output_sync_blk[6] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_11[6] = dl_detect_out ? proc_dep_vld_vec_11_reg[6] : (proc_11_data_FIFO_blk[6] | proc_11_data_PIPO_blk[6] | proc_11_start_FIFO_blk[6] | proc_11_TLF_FIFO_blk[6] | proc_11_input_sync_blk[6] | proc_11_output_sync_blk[6]);
    assign proc_11_data_FIFO_blk[7] = 1'b0;
    assign proc_11_data_PIPO_blk[7] = 1'b0;
    assign proc_11_start_FIFO_blk[7] = 1'b0;
    assign proc_11_TLF_FIFO_blk[7] = 1'b0;
    assign proc_11_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_11_output_sync_blk[7] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_11[7] = dl_detect_out ? proc_dep_vld_vec_11_reg[7] : (proc_11_data_FIFO_blk[7] | proc_11_data_PIPO_blk[7] | proc_11_start_FIFO_blk[7] | proc_11_TLF_FIFO_blk[7] | proc_11_input_sync_blk[7] | proc_11_output_sync_blk[7]);
    assign proc_11_data_FIFO_blk[8] = 1'b0;
    assign proc_11_data_PIPO_blk[8] = 1'b0;
    assign proc_11_start_FIFO_blk[8] = 1'b0;
    assign proc_11_TLF_FIFO_blk[8] = 1'b0;
    assign proc_11_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_11_output_sync_blk[8] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_11[8] = dl_detect_out ? proc_dep_vld_vec_11_reg[8] : (proc_11_data_FIFO_blk[8] | proc_11_data_PIPO_blk[8] | proc_11_start_FIFO_blk[8] | proc_11_TLF_FIFO_blk[8] | proc_11_input_sync_blk[8] | proc_11_output_sync_blk[8]);
    assign proc_11_data_FIFO_blk[9] = 1'b0;
    assign proc_11_data_PIPO_blk[9] = 1'b0;
    assign proc_11_start_FIFO_blk[9] = 1'b0;
    assign proc_11_TLF_FIFO_blk[9] = 1'b0;
    assign proc_11_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_11_output_sync_blk[9] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_11[9] = dl_detect_out ? proc_dep_vld_vec_11_reg[9] : (proc_11_data_FIFO_blk[9] | proc_11_data_PIPO_blk[9] | proc_11_start_FIFO_blk[9] | proc_11_TLF_FIFO_blk[9] | proc_11_input_sync_blk[9] | proc_11_output_sync_blk[9]);
    assign proc_11_data_FIFO_blk[10] = 1'b0;
    assign proc_11_data_PIPO_blk[10] = 1'b0;
    assign proc_11_start_FIFO_blk[10] = 1'b0;
    assign proc_11_TLF_FIFO_blk[10] = 1'b0;
    assign proc_11_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_11_output_sync_blk[10] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_11[10] = dl_detect_out ? proc_dep_vld_vec_11_reg[10] : (proc_11_data_FIFO_blk[10] | proc_11_data_PIPO_blk[10] | proc_11_start_FIFO_blk[10] | proc_11_TLF_FIFO_blk[10] | proc_11_input_sync_blk[10] | proc_11_output_sync_blk[10]);
    assign proc_11_data_FIFO_blk[11] = 1'b0;
    assign proc_11_data_PIPO_blk[11] = 1'b0;
    assign proc_11_start_FIFO_blk[11] = 1'b0;
    assign proc_11_TLF_FIFO_blk[11] = 1'b0;
    assign proc_11_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_11_output_sync_blk[11] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_11[11] = dl_detect_out ? proc_dep_vld_vec_11_reg[11] : (proc_11_data_FIFO_blk[11] | proc_11_data_PIPO_blk[11] | proc_11_start_FIFO_blk[11] | proc_11_TLF_FIFO_blk[11] | proc_11_input_sync_blk[11] | proc_11_output_sync_blk[11]);
    assign proc_11_data_FIFO_blk[12] = 1'b0;
    assign proc_11_data_PIPO_blk[12] = 1'b0;
    assign proc_11_start_FIFO_blk[12] = 1'b0;
    assign proc_11_TLF_FIFO_blk[12] = 1'b0;
    assign proc_11_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_11_output_sync_blk[12] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_11[12] = dl_detect_out ? proc_dep_vld_vec_11_reg[12] : (proc_11_data_FIFO_blk[12] | proc_11_data_PIPO_blk[12] | proc_11_start_FIFO_blk[12] | proc_11_TLF_FIFO_blk[12] | proc_11_input_sync_blk[12] | proc_11_output_sync_blk[12]);
    assign proc_11_data_FIFO_blk[13] = 1'b0;
    assign proc_11_data_PIPO_blk[13] = 1'b0;
    assign proc_11_start_FIFO_blk[13] = 1'b0;
    assign proc_11_TLF_FIFO_blk[13] = 1'b0;
    assign proc_11_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_11_output_sync_blk[13] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_11[13] = dl_detect_out ? proc_dep_vld_vec_11_reg[13] : (proc_11_data_FIFO_blk[13] | proc_11_data_PIPO_blk[13] | proc_11_start_FIFO_blk[13] | proc_11_TLF_FIFO_blk[13] | proc_11_input_sync_blk[13] | proc_11_output_sync_blk[13]);
    assign proc_11_data_FIFO_blk[14] = 1'b0;
    assign proc_11_data_PIPO_blk[14] = 1'b0;
    assign proc_11_start_FIFO_blk[14] = 1'b0;
    assign proc_11_TLF_FIFO_blk[14] = 1'b0;
    assign proc_11_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready & kernel_kcore_v2h_pe_11_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_11_output_sync_blk[14] = 1'b0 | (ap_done_reg_11 & kernel_kcore_v2h_pe_11_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_11[14] = dl_detect_out ? proc_dep_vld_vec_11_reg[14] : (proc_11_data_FIFO_blk[14] | proc_11_data_PIPO_blk[14] | proc_11_start_FIFO_blk[14] | proc_11_TLF_FIFO_blk[14] | proc_11_input_sync_blk[14] | proc_11_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_11_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_11_reg <= proc_dep_vld_vec_11;
        end
    end
    assign in_chan_dep_vld_vec_11[0] = dep_chan_vld_0_11;
    assign in_chan_dep_data_vec_11[15 : 0] = dep_chan_data_0_11;
    assign token_in_vec_11[0] = token_0_11;
    assign in_chan_dep_vld_vec_11[1] = dep_chan_vld_1_11;
    assign in_chan_dep_data_vec_11[31 : 16] = dep_chan_data_1_11;
    assign token_in_vec_11[1] = token_1_11;
    assign in_chan_dep_vld_vec_11[2] = dep_chan_vld_2_11;
    assign in_chan_dep_data_vec_11[47 : 32] = dep_chan_data_2_11;
    assign token_in_vec_11[2] = token_2_11;
    assign in_chan_dep_vld_vec_11[3] = dep_chan_vld_3_11;
    assign in_chan_dep_data_vec_11[63 : 48] = dep_chan_data_3_11;
    assign token_in_vec_11[3] = token_3_11;
    assign in_chan_dep_vld_vec_11[4] = dep_chan_vld_4_11;
    assign in_chan_dep_data_vec_11[79 : 64] = dep_chan_data_4_11;
    assign token_in_vec_11[4] = token_4_11;
    assign in_chan_dep_vld_vec_11[5] = dep_chan_vld_5_11;
    assign in_chan_dep_data_vec_11[95 : 80] = dep_chan_data_5_11;
    assign token_in_vec_11[5] = token_5_11;
    assign in_chan_dep_vld_vec_11[6] = dep_chan_vld_6_11;
    assign in_chan_dep_data_vec_11[111 : 96] = dep_chan_data_6_11;
    assign token_in_vec_11[6] = token_6_11;
    assign in_chan_dep_vld_vec_11[7] = dep_chan_vld_7_11;
    assign in_chan_dep_data_vec_11[127 : 112] = dep_chan_data_7_11;
    assign token_in_vec_11[7] = token_7_11;
    assign in_chan_dep_vld_vec_11[8] = dep_chan_vld_8_11;
    assign in_chan_dep_data_vec_11[143 : 128] = dep_chan_data_8_11;
    assign token_in_vec_11[8] = token_8_11;
    assign in_chan_dep_vld_vec_11[9] = dep_chan_vld_9_11;
    assign in_chan_dep_data_vec_11[159 : 144] = dep_chan_data_9_11;
    assign token_in_vec_11[9] = token_9_11;
    assign in_chan_dep_vld_vec_11[10] = dep_chan_vld_10_11;
    assign in_chan_dep_data_vec_11[175 : 160] = dep_chan_data_10_11;
    assign token_in_vec_11[10] = token_10_11;
    assign in_chan_dep_vld_vec_11[11] = dep_chan_vld_12_11;
    assign in_chan_dep_data_vec_11[191 : 176] = dep_chan_data_12_11;
    assign token_in_vec_11[11] = token_12_11;
    assign in_chan_dep_vld_vec_11[12] = dep_chan_vld_13_11;
    assign in_chan_dep_data_vec_11[207 : 192] = dep_chan_data_13_11;
    assign token_in_vec_11[12] = token_13_11;
    assign in_chan_dep_vld_vec_11[13] = dep_chan_vld_14_11;
    assign in_chan_dep_data_vec_11[223 : 208] = dep_chan_data_14_11;
    assign token_in_vec_11[13] = token_14_11;
    assign in_chan_dep_vld_vec_11[14] = dep_chan_vld_15_11;
    assign in_chan_dep_data_vec_11[239 : 224] = dep_chan_data_15_11;
    assign token_in_vec_11[14] = token_15_11;
    assign dep_chan_vld_11_0 = out_chan_dep_vld_vec_11[0];
    assign dep_chan_data_11_0 = out_chan_dep_data_11;
    assign token_11_0 = token_out_vec_11[0];
    assign dep_chan_vld_11_1 = out_chan_dep_vld_vec_11[1];
    assign dep_chan_data_11_1 = out_chan_dep_data_11;
    assign token_11_1 = token_out_vec_11[1];
    assign dep_chan_vld_11_2 = out_chan_dep_vld_vec_11[2];
    assign dep_chan_data_11_2 = out_chan_dep_data_11;
    assign token_11_2 = token_out_vec_11[2];
    assign dep_chan_vld_11_3 = out_chan_dep_vld_vec_11[3];
    assign dep_chan_data_11_3 = out_chan_dep_data_11;
    assign token_11_3 = token_out_vec_11[3];
    assign dep_chan_vld_11_4 = out_chan_dep_vld_vec_11[4];
    assign dep_chan_data_11_4 = out_chan_dep_data_11;
    assign token_11_4 = token_out_vec_11[4];
    assign dep_chan_vld_11_5 = out_chan_dep_vld_vec_11[5];
    assign dep_chan_data_11_5 = out_chan_dep_data_11;
    assign token_11_5 = token_out_vec_11[5];
    assign dep_chan_vld_11_6 = out_chan_dep_vld_vec_11[6];
    assign dep_chan_data_11_6 = out_chan_dep_data_11;
    assign token_11_6 = token_out_vec_11[6];
    assign dep_chan_vld_11_7 = out_chan_dep_vld_vec_11[7];
    assign dep_chan_data_11_7 = out_chan_dep_data_11;
    assign token_11_7 = token_out_vec_11[7];
    assign dep_chan_vld_11_8 = out_chan_dep_vld_vec_11[8];
    assign dep_chan_data_11_8 = out_chan_dep_data_11;
    assign token_11_8 = token_out_vec_11[8];
    assign dep_chan_vld_11_9 = out_chan_dep_vld_vec_11[9];
    assign dep_chan_data_11_9 = out_chan_dep_data_11;
    assign token_11_9 = token_out_vec_11[9];
    assign dep_chan_vld_11_10 = out_chan_dep_vld_vec_11[10];
    assign dep_chan_data_11_10 = out_chan_dep_data_11;
    assign token_11_10 = token_out_vec_11[10];
    assign dep_chan_vld_11_12 = out_chan_dep_vld_vec_11[11];
    assign dep_chan_data_11_12 = out_chan_dep_data_11;
    assign token_11_12 = token_out_vec_11[11];
    assign dep_chan_vld_11_13 = out_chan_dep_vld_vec_11[12];
    assign dep_chan_data_11_13 = out_chan_dep_data_11;
    assign token_11_13 = token_out_vec_11[12];
    assign dep_chan_vld_11_14 = out_chan_dep_vld_vec_11[13];
    assign dep_chan_data_11_14 = out_chan_dep_data_11;
    assign token_11_14 = token_out_vec_11[13];
    assign dep_chan_vld_11_15 = out_chan_dep_vld_vec_11[14];
    assign dep_chan_data_11_15 = out_chan_dep_data_11;
    assign token_11_15 = token_out_vec_11[14];

    // Process: kernel_kcore_v2h_pe_12_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 12, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_12 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_12),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_12),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_12),
        .token_in_vec(token_in_vec_12),
        .dl_detect_in(dl_detect_out),
        .origin(origin[12]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_12),
        .out_chan_dep_data(out_chan_dep_data_12),
        .token_out_vec(token_out_vec_12),
        .dl_detect_out(dl_in_vec[12]));

    assign proc_12_data_FIFO_blk[0] = 1'b0;
    assign proc_12_data_PIPO_blk[0] = 1'b0;
    assign proc_12_start_FIFO_blk[0] = 1'b0;
    assign proc_12_TLF_FIFO_blk[0] = 1'b0;
    assign proc_12_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_12_output_sync_blk[0] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_12[0] = dl_detect_out ? proc_dep_vld_vec_12_reg[0] : (proc_12_data_FIFO_blk[0] | proc_12_data_PIPO_blk[0] | proc_12_start_FIFO_blk[0] | proc_12_TLF_FIFO_blk[0] | proc_12_input_sync_blk[0] | proc_12_output_sync_blk[0]);
    assign proc_12_data_FIFO_blk[1] = 1'b0;
    assign proc_12_data_PIPO_blk[1] = 1'b0;
    assign proc_12_start_FIFO_blk[1] = 1'b0;
    assign proc_12_TLF_FIFO_blk[1] = 1'b0;
    assign proc_12_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_12_output_sync_blk[1] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_12[1] = dl_detect_out ? proc_dep_vld_vec_12_reg[1] : (proc_12_data_FIFO_blk[1] | proc_12_data_PIPO_blk[1] | proc_12_start_FIFO_blk[1] | proc_12_TLF_FIFO_blk[1] | proc_12_input_sync_blk[1] | proc_12_output_sync_blk[1]);
    assign proc_12_data_FIFO_blk[2] = 1'b0;
    assign proc_12_data_PIPO_blk[2] = 1'b0;
    assign proc_12_start_FIFO_blk[2] = 1'b0;
    assign proc_12_TLF_FIFO_blk[2] = 1'b0;
    assign proc_12_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_12_output_sync_blk[2] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_12[2] = dl_detect_out ? proc_dep_vld_vec_12_reg[2] : (proc_12_data_FIFO_blk[2] | proc_12_data_PIPO_blk[2] | proc_12_start_FIFO_blk[2] | proc_12_TLF_FIFO_blk[2] | proc_12_input_sync_blk[2] | proc_12_output_sync_blk[2]);
    assign proc_12_data_FIFO_blk[3] = 1'b0;
    assign proc_12_data_PIPO_blk[3] = 1'b0;
    assign proc_12_start_FIFO_blk[3] = 1'b0;
    assign proc_12_TLF_FIFO_blk[3] = 1'b0;
    assign proc_12_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_12_output_sync_blk[3] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_12[3] = dl_detect_out ? proc_dep_vld_vec_12_reg[3] : (proc_12_data_FIFO_blk[3] | proc_12_data_PIPO_blk[3] | proc_12_start_FIFO_blk[3] | proc_12_TLF_FIFO_blk[3] | proc_12_input_sync_blk[3] | proc_12_output_sync_blk[3]);
    assign proc_12_data_FIFO_blk[4] = 1'b0;
    assign proc_12_data_PIPO_blk[4] = 1'b0;
    assign proc_12_start_FIFO_blk[4] = 1'b0;
    assign proc_12_TLF_FIFO_blk[4] = 1'b0;
    assign proc_12_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_12_output_sync_blk[4] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_12[4] = dl_detect_out ? proc_dep_vld_vec_12_reg[4] : (proc_12_data_FIFO_blk[4] | proc_12_data_PIPO_blk[4] | proc_12_start_FIFO_blk[4] | proc_12_TLF_FIFO_blk[4] | proc_12_input_sync_blk[4] | proc_12_output_sync_blk[4]);
    assign proc_12_data_FIFO_blk[5] = 1'b0;
    assign proc_12_data_PIPO_blk[5] = 1'b0;
    assign proc_12_start_FIFO_blk[5] = 1'b0;
    assign proc_12_TLF_FIFO_blk[5] = 1'b0;
    assign proc_12_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_12_output_sync_blk[5] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_12[5] = dl_detect_out ? proc_dep_vld_vec_12_reg[5] : (proc_12_data_FIFO_blk[5] | proc_12_data_PIPO_blk[5] | proc_12_start_FIFO_blk[5] | proc_12_TLF_FIFO_blk[5] | proc_12_input_sync_blk[5] | proc_12_output_sync_blk[5]);
    assign proc_12_data_FIFO_blk[6] = 1'b0;
    assign proc_12_data_PIPO_blk[6] = 1'b0;
    assign proc_12_start_FIFO_blk[6] = 1'b0;
    assign proc_12_TLF_FIFO_blk[6] = 1'b0;
    assign proc_12_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_12_output_sync_blk[6] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_12[6] = dl_detect_out ? proc_dep_vld_vec_12_reg[6] : (proc_12_data_FIFO_blk[6] | proc_12_data_PIPO_blk[6] | proc_12_start_FIFO_blk[6] | proc_12_TLF_FIFO_blk[6] | proc_12_input_sync_blk[6] | proc_12_output_sync_blk[6]);
    assign proc_12_data_FIFO_blk[7] = 1'b0;
    assign proc_12_data_PIPO_blk[7] = 1'b0;
    assign proc_12_start_FIFO_blk[7] = 1'b0;
    assign proc_12_TLF_FIFO_blk[7] = 1'b0;
    assign proc_12_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_12_output_sync_blk[7] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_12[7] = dl_detect_out ? proc_dep_vld_vec_12_reg[7] : (proc_12_data_FIFO_blk[7] | proc_12_data_PIPO_blk[7] | proc_12_start_FIFO_blk[7] | proc_12_TLF_FIFO_blk[7] | proc_12_input_sync_blk[7] | proc_12_output_sync_blk[7]);
    assign proc_12_data_FIFO_blk[8] = 1'b0;
    assign proc_12_data_PIPO_blk[8] = 1'b0;
    assign proc_12_start_FIFO_blk[8] = 1'b0;
    assign proc_12_TLF_FIFO_blk[8] = 1'b0;
    assign proc_12_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_12_output_sync_blk[8] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_12[8] = dl_detect_out ? proc_dep_vld_vec_12_reg[8] : (proc_12_data_FIFO_blk[8] | proc_12_data_PIPO_blk[8] | proc_12_start_FIFO_blk[8] | proc_12_TLF_FIFO_blk[8] | proc_12_input_sync_blk[8] | proc_12_output_sync_blk[8]);
    assign proc_12_data_FIFO_blk[9] = 1'b0;
    assign proc_12_data_PIPO_blk[9] = 1'b0;
    assign proc_12_start_FIFO_blk[9] = 1'b0;
    assign proc_12_TLF_FIFO_blk[9] = 1'b0;
    assign proc_12_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_12_output_sync_blk[9] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_12[9] = dl_detect_out ? proc_dep_vld_vec_12_reg[9] : (proc_12_data_FIFO_blk[9] | proc_12_data_PIPO_blk[9] | proc_12_start_FIFO_blk[9] | proc_12_TLF_FIFO_blk[9] | proc_12_input_sync_blk[9] | proc_12_output_sync_blk[9]);
    assign proc_12_data_FIFO_blk[10] = 1'b0;
    assign proc_12_data_PIPO_blk[10] = 1'b0;
    assign proc_12_start_FIFO_blk[10] = 1'b0;
    assign proc_12_TLF_FIFO_blk[10] = 1'b0;
    assign proc_12_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_12_output_sync_blk[10] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_12[10] = dl_detect_out ? proc_dep_vld_vec_12_reg[10] : (proc_12_data_FIFO_blk[10] | proc_12_data_PIPO_blk[10] | proc_12_start_FIFO_blk[10] | proc_12_TLF_FIFO_blk[10] | proc_12_input_sync_blk[10] | proc_12_output_sync_blk[10]);
    assign proc_12_data_FIFO_blk[11] = 1'b0;
    assign proc_12_data_PIPO_blk[11] = 1'b0;
    assign proc_12_start_FIFO_blk[11] = 1'b0;
    assign proc_12_TLF_FIFO_blk[11] = 1'b0;
    assign proc_12_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_12_output_sync_blk[11] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_12[11] = dl_detect_out ? proc_dep_vld_vec_12_reg[11] : (proc_12_data_FIFO_blk[11] | proc_12_data_PIPO_blk[11] | proc_12_start_FIFO_blk[11] | proc_12_TLF_FIFO_blk[11] | proc_12_input_sync_blk[11] | proc_12_output_sync_blk[11]);
    assign proc_12_data_FIFO_blk[12] = 1'b0;
    assign proc_12_data_PIPO_blk[12] = 1'b0;
    assign proc_12_start_FIFO_blk[12] = 1'b0;
    assign proc_12_TLF_FIFO_blk[12] = 1'b0;
    assign proc_12_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_12_output_sync_blk[12] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_12[12] = dl_detect_out ? proc_dep_vld_vec_12_reg[12] : (proc_12_data_FIFO_blk[12] | proc_12_data_PIPO_blk[12] | proc_12_start_FIFO_blk[12] | proc_12_TLF_FIFO_blk[12] | proc_12_input_sync_blk[12] | proc_12_output_sync_blk[12]);
    assign proc_12_data_FIFO_blk[13] = 1'b0;
    assign proc_12_data_PIPO_blk[13] = 1'b0;
    assign proc_12_start_FIFO_blk[13] = 1'b0;
    assign proc_12_TLF_FIFO_blk[13] = 1'b0;
    assign proc_12_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_12_output_sync_blk[13] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_12[13] = dl_detect_out ? proc_dep_vld_vec_12_reg[13] : (proc_12_data_FIFO_blk[13] | proc_12_data_PIPO_blk[13] | proc_12_start_FIFO_blk[13] | proc_12_TLF_FIFO_blk[13] | proc_12_input_sync_blk[13] | proc_12_output_sync_blk[13]);
    assign proc_12_data_FIFO_blk[14] = 1'b0;
    assign proc_12_data_PIPO_blk[14] = 1'b0;
    assign proc_12_start_FIFO_blk[14] = 1'b0;
    assign proc_12_TLF_FIFO_blk[14] = 1'b0;
    assign proc_12_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready & kernel_kcore_v2h_pe_12_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_12_output_sync_blk[14] = 1'b0 | (ap_done_reg_12 & kernel_kcore_v2h_pe_12_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_12[14] = dl_detect_out ? proc_dep_vld_vec_12_reg[14] : (proc_12_data_FIFO_blk[14] | proc_12_data_PIPO_blk[14] | proc_12_start_FIFO_blk[14] | proc_12_TLF_FIFO_blk[14] | proc_12_input_sync_blk[14] | proc_12_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_12_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_12_reg <= proc_dep_vld_vec_12;
        end
    end
    assign in_chan_dep_vld_vec_12[0] = dep_chan_vld_0_12;
    assign in_chan_dep_data_vec_12[15 : 0] = dep_chan_data_0_12;
    assign token_in_vec_12[0] = token_0_12;
    assign in_chan_dep_vld_vec_12[1] = dep_chan_vld_1_12;
    assign in_chan_dep_data_vec_12[31 : 16] = dep_chan_data_1_12;
    assign token_in_vec_12[1] = token_1_12;
    assign in_chan_dep_vld_vec_12[2] = dep_chan_vld_2_12;
    assign in_chan_dep_data_vec_12[47 : 32] = dep_chan_data_2_12;
    assign token_in_vec_12[2] = token_2_12;
    assign in_chan_dep_vld_vec_12[3] = dep_chan_vld_3_12;
    assign in_chan_dep_data_vec_12[63 : 48] = dep_chan_data_3_12;
    assign token_in_vec_12[3] = token_3_12;
    assign in_chan_dep_vld_vec_12[4] = dep_chan_vld_4_12;
    assign in_chan_dep_data_vec_12[79 : 64] = dep_chan_data_4_12;
    assign token_in_vec_12[4] = token_4_12;
    assign in_chan_dep_vld_vec_12[5] = dep_chan_vld_5_12;
    assign in_chan_dep_data_vec_12[95 : 80] = dep_chan_data_5_12;
    assign token_in_vec_12[5] = token_5_12;
    assign in_chan_dep_vld_vec_12[6] = dep_chan_vld_6_12;
    assign in_chan_dep_data_vec_12[111 : 96] = dep_chan_data_6_12;
    assign token_in_vec_12[6] = token_6_12;
    assign in_chan_dep_vld_vec_12[7] = dep_chan_vld_7_12;
    assign in_chan_dep_data_vec_12[127 : 112] = dep_chan_data_7_12;
    assign token_in_vec_12[7] = token_7_12;
    assign in_chan_dep_vld_vec_12[8] = dep_chan_vld_8_12;
    assign in_chan_dep_data_vec_12[143 : 128] = dep_chan_data_8_12;
    assign token_in_vec_12[8] = token_8_12;
    assign in_chan_dep_vld_vec_12[9] = dep_chan_vld_9_12;
    assign in_chan_dep_data_vec_12[159 : 144] = dep_chan_data_9_12;
    assign token_in_vec_12[9] = token_9_12;
    assign in_chan_dep_vld_vec_12[10] = dep_chan_vld_10_12;
    assign in_chan_dep_data_vec_12[175 : 160] = dep_chan_data_10_12;
    assign token_in_vec_12[10] = token_10_12;
    assign in_chan_dep_vld_vec_12[11] = dep_chan_vld_11_12;
    assign in_chan_dep_data_vec_12[191 : 176] = dep_chan_data_11_12;
    assign token_in_vec_12[11] = token_11_12;
    assign in_chan_dep_vld_vec_12[12] = dep_chan_vld_13_12;
    assign in_chan_dep_data_vec_12[207 : 192] = dep_chan_data_13_12;
    assign token_in_vec_12[12] = token_13_12;
    assign in_chan_dep_vld_vec_12[13] = dep_chan_vld_14_12;
    assign in_chan_dep_data_vec_12[223 : 208] = dep_chan_data_14_12;
    assign token_in_vec_12[13] = token_14_12;
    assign in_chan_dep_vld_vec_12[14] = dep_chan_vld_15_12;
    assign in_chan_dep_data_vec_12[239 : 224] = dep_chan_data_15_12;
    assign token_in_vec_12[14] = token_15_12;
    assign dep_chan_vld_12_0 = out_chan_dep_vld_vec_12[0];
    assign dep_chan_data_12_0 = out_chan_dep_data_12;
    assign token_12_0 = token_out_vec_12[0];
    assign dep_chan_vld_12_1 = out_chan_dep_vld_vec_12[1];
    assign dep_chan_data_12_1 = out_chan_dep_data_12;
    assign token_12_1 = token_out_vec_12[1];
    assign dep_chan_vld_12_2 = out_chan_dep_vld_vec_12[2];
    assign dep_chan_data_12_2 = out_chan_dep_data_12;
    assign token_12_2 = token_out_vec_12[2];
    assign dep_chan_vld_12_3 = out_chan_dep_vld_vec_12[3];
    assign dep_chan_data_12_3 = out_chan_dep_data_12;
    assign token_12_3 = token_out_vec_12[3];
    assign dep_chan_vld_12_4 = out_chan_dep_vld_vec_12[4];
    assign dep_chan_data_12_4 = out_chan_dep_data_12;
    assign token_12_4 = token_out_vec_12[4];
    assign dep_chan_vld_12_5 = out_chan_dep_vld_vec_12[5];
    assign dep_chan_data_12_5 = out_chan_dep_data_12;
    assign token_12_5 = token_out_vec_12[5];
    assign dep_chan_vld_12_6 = out_chan_dep_vld_vec_12[6];
    assign dep_chan_data_12_6 = out_chan_dep_data_12;
    assign token_12_6 = token_out_vec_12[6];
    assign dep_chan_vld_12_7 = out_chan_dep_vld_vec_12[7];
    assign dep_chan_data_12_7 = out_chan_dep_data_12;
    assign token_12_7 = token_out_vec_12[7];
    assign dep_chan_vld_12_8 = out_chan_dep_vld_vec_12[8];
    assign dep_chan_data_12_8 = out_chan_dep_data_12;
    assign token_12_8 = token_out_vec_12[8];
    assign dep_chan_vld_12_9 = out_chan_dep_vld_vec_12[9];
    assign dep_chan_data_12_9 = out_chan_dep_data_12;
    assign token_12_9 = token_out_vec_12[9];
    assign dep_chan_vld_12_10 = out_chan_dep_vld_vec_12[10];
    assign dep_chan_data_12_10 = out_chan_dep_data_12;
    assign token_12_10 = token_out_vec_12[10];
    assign dep_chan_vld_12_11 = out_chan_dep_vld_vec_12[11];
    assign dep_chan_data_12_11 = out_chan_dep_data_12;
    assign token_12_11 = token_out_vec_12[11];
    assign dep_chan_vld_12_13 = out_chan_dep_vld_vec_12[12];
    assign dep_chan_data_12_13 = out_chan_dep_data_12;
    assign token_12_13 = token_out_vec_12[12];
    assign dep_chan_vld_12_14 = out_chan_dep_vld_vec_12[13];
    assign dep_chan_data_12_14 = out_chan_dep_data_12;
    assign token_12_14 = token_out_vec_12[13];
    assign dep_chan_vld_12_15 = out_chan_dep_vld_vec_12[14];
    assign dep_chan_data_12_15 = out_chan_dep_data_12;
    assign token_12_15 = token_out_vec_12[14];

    // Process: kernel_kcore_v2h_pe_13_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 13, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_13 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_13),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_13),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_13),
        .token_in_vec(token_in_vec_13),
        .dl_detect_in(dl_detect_out),
        .origin(origin[13]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_13),
        .out_chan_dep_data(out_chan_dep_data_13),
        .token_out_vec(token_out_vec_13),
        .dl_detect_out(dl_in_vec[13]));

    assign proc_13_data_FIFO_blk[0] = 1'b0;
    assign proc_13_data_PIPO_blk[0] = 1'b0;
    assign proc_13_start_FIFO_blk[0] = 1'b0;
    assign proc_13_TLF_FIFO_blk[0] = 1'b0;
    assign proc_13_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_13_output_sync_blk[0] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_13[0] = dl_detect_out ? proc_dep_vld_vec_13_reg[0] : (proc_13_data_FIFO_blk[0] | proc_13_data_PIPO_blk[0] | proc_13_start_FIFO_blk[0] | proc_13_TLF_FIFO_blk[0] | proc_13_input_sync_blk[0] | proc_13_output_sync_blk[0]);
    assign proc_13_data_FIFO_blk[1] = 1'b0;
    assign proc_13_data_PIPO_blk[1] = 1'b0;
    assign proc_13_start_FIFO_blk[1] = 1'b0;
    assign proc_13_TLF_FIFO_blk[1] = 1'b0;
    assign proc_13_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_13_output_sync_blk[1] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_13[1] = dl_detect_out ? proc_dep_vld_vec_13_reg[1] : (proc_13_data_FIFO_blk[1] | proc_13_data_PIPO_blk[1] | proc_13_start_FIFO_blk[1] | proc_13_TLF_FIFO_blk[1] | proc_13_input_sync_blk[1] | proc_13_output_sync_blk[1]);
    assign proc_13_data_FIFO_blk[2] = 1'b0;
    assign proc_13_data_PIPO_blk[2] = 1'b0;
    assign proc_13_start_FIFO_blk[2] = 1'b0;
    assign proc_13_TLF_FIFO_blk[2] = 1'b0;
    assign proc_13_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_13_output_sync_blk[2] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_13[2] = dl_detect_out ? proc_dep_vld_vec_13_reg[2] : (proc_13_data_FIFO_blk[2] | proc_13_data_PIPO_blk[2] | proc_13_start_FIFO_blk[2] | proc_13_TLF_FIFO_blk[2] | proc_13_input_sync_blk[2] | proc_13_output_sync_blk[2]);
    assign proc_13_data_FIFO_blk[3] = 1'b0;
    assign proc_13_data_PIPO_blk[3] = 1'b0;
    assign proc_13_start_FIFO_blk[3] = 1'b0;
    assign proc_13_TLF_FIFO_blk[3] = 1'b0;
    assign proc_13_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_13_output_sync_blk[3] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_13[3] = dl_detect_out ? proc_dep_vld_vec_13_reg[3] : (proc_13_data_FIFO_blk[3] | proc_13_data_PIPO_blk[3] | proc_13_start_FIFO_blk[3] | proc_13_TLF_FIFO_blk[3] | proc_13_input_sync_blk[3] | proc_13_output_sync_blk[3]);
    assign proc_13_data_FIFO_blk[4] = 1'b0;
    assign proc_13_data_PIPO_blk[4] = 1'b0;
    assign proc_13_start_FIFO_blk[4] = 1'b0;
    assign proc_13_TLF_FIFO_blk[4] = 1'b0;
    assign proc_13_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_13_output_sync_blk[4] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_13[4] = dl_detect_out ? proc_dep_vld_vec_13_reg[4] : (proc_13_data_FIFO_blk[4] | proc_13_data_PIPO_blk[4] | proc_13_start_FIFO_blk[4] | proc_13_TLF_FIFO_blk[4] | proc_13_input_sync_blk[4] | proc_13_output_sync_blk[4]);
    assign proc_13_data_FIFO_blk[5] = 1'b0;
    assign proc_13_data_PIPO_blk[5] = 1'b0;
    assign proc_13_start_FIFO_blk[5] = 1'b0;
    assign proc_13_TLF_FIFO_blk[5] = 1'b0;
    assign proc_13_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_13_output_sync_blk[5] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_13[5] = dl_detect_out ? proc_dep_vld_vec_13_reg[5] : (proc_13_data_FIFO_blk[5] | proc_13_data_PIPO_blk[5] | proc_13_start_FIFO_blk[5] | proc_13_TLF_FIFO_blk[5] | proc_13_input_sync_blk[5] | proc_13_output_sync_blk[5]);
    assign proc_13_data_FIFO_blk[6] = 1'b0;
    assign proc_13_data_PIPO_blk[6] = 1'b0;
    assign proc_13_start_FIFO_blk[6] = 1'b0;
    assign proc_13_TLF_FIFO_blk[6] = 1'b0;
    assign proc_13_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_13_output_sync_blk[6] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_13[6] = dl_detect_out ? proc_dep_vld_vec_13_reg[6] : (proc_13_data_FIFO_blk[6] | proc_13_data_PIPO_blk[6] | proc_13_start_FIFO_blk[6] | proc_13_TLF_FIFO_blk[6] | proc_13_input_sync_blk[6] | proc_13_output_sync_blk[6]);
    assign proc_13_data_FIFO_blk[7] = 1'b0;
    assign proc_13_data_PIPO_blk[7] = 1'b0;
    assign proc_13_start_FIFO_blk[7] = 1'b0;
    assign proc_13_TLF_FIFO_blk[7] = 1'b0;
    assign proc_13_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_13_output_sync_blk[7] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_13[7] = dl_detect_out ? proc_dep_vld_vec_13_reg[7] : (proc_13_data_FIFO_blk[7] | proc_13_data_PIPO_blk[7] | proc_13_start_FIFO_blk[7] | proc_13_TLF_FIFO_blk[7] | proc_13_input_sync_blk[7] | proc_13_output_sync_blk[7]);
    assign proc_13_data_FIFO_blk[8] = 1'b0;
    assign proc_13_data_PIPO_blk[8] = 1'b0;
    assign proc_13_start_FIFO_blk[8] = 1'b0;
    assign proc_13_TLF_FIFO_blk[8] = 1'b0;
    assign proc_13_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_13_output_sync_blk[8] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_13[8] = dl_detect_out ? proc_dep_vld_vec_13_reg[8] : (proc_13_data_FIFO_blk[8] | proc_13_data_PIPO_blk[8] | proc_13_start_FIFO_blk[8] | proc_13_TLF_FIFO_blk[8] | proc_13_input_sync_blk[8] | proc_13_output_sync_blk[8]);
    assign proc_13_data_FIFO_blk[9] = 1'b0;
    assign proc_13_data_PIPO_blk[9] = 1'b0;
    assign proc_13_start_FIFO_blk[9] = 1'b0;
    assign proc_13_TLF_FIFO_blk[9] = 1'b0;
    assign proc_13_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_13_output_sync_blk[9] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_13[9] = dl_detect_out ? proc_dep_vld_vec_13_reg[9] : (proc_13_data_FIFO_blk[9] | proc_13_data_PIPO_blk[9] | proc_13_start_FIFO_blk[9] | proc_13_TLF_FIFO_blk[9] | proc_13_input_sync_blk[9] | proc_13_output_sync_blk[9]);
    assign proc_13_data_FIFO_blk[10] = 1'b0;
    assign proc_13_data_PIPO_blk[10] = 1'b0;
    assign proc_13_start_FIFO_blk[10] = 1'b0;
    assign proc_13_TLF_FIFO_blk[10] = 1'b0;
    assign proc_13_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_13_output_sync_blk[10] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_13[10] = dl_detect_out ? proc_dep_vld_vec_13_reg[10] : (proc_13_data_FIFO_blk[10] | proc_13_data_PIPO_blk[10] | proc_13_start_FIFO_blk[10] | proc_13_TLF_FIFO_blk[10] | proc_13_input_sync_blk[10] | proc_13_output_sync_blk[10]);
    assign proc_13_data_FIFO_blk[11] = 1'b0;
    assign proc_13_data_PIPO_blk[11] = 1'b0;
    assign proc_13_start_FIFO_blk[11] = 1'b0;
    assign proc_13_TLF_FIFO_blk[11] = 1'b0;
    assign proc_13_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_13_output_sync_blk[11] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_13[11] = dl_detect_out ? proc_dep_vld_vec_13_reg[11] : (proc_13_data_FIFO_blk[11] | proc_13_data_PIPO_blk[11] | proc_13_start_FIFO_blk[11] | proc_13_TLF_FIFO_blk[11] | proc_13_input_sync_blk[11] | proc_13_output_sync_blk[11]);
    assign proc_13_data_FIFO_blk[12] = 1'b0;
    assign proc_13_data_PIPO_blk[12] = 1'b0;
    assign proc_13_start_FIFO_blk[12] = 1'b0;
    assign proc_13_TLF_FIFO_blk[12] = 1'b0;
    assign proc_13_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_13_output_sync_blk[12] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_13[12] = dl_detect_out ? proc_dep_vld_vec_13_reg[12] : (proc_13_data_FIFO_blk[12] | proc_13_data_PIPO_blk[12] | proc_13_start_FIFO_blk[12] | proc_13_TLF_FIFO_blk[12] | proc_13_input_sync_blk[12] | proc_13_output_sync_blk[12]);
    assign proc_13_data_FIFO_blk[13] = 1'b0;
    assign proc_13_data_PIPO_blk[13] = 1'b0;
    assign proc_13_start_FIFO_blk[13] = 1'b0;
    assign proc_13_TLF_FIFO_blk[13] = 1'b0;
    assign proc_13_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_13_output_sync_blk[13] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_13[13] = dl_detect_out ? proc_dep_vld_vec_13_reg[13] : (proc_13_data_FIFO_blk[13] | proc_13_data_PIPO_blk[13] | proc_13_start_FIFO_blk[13] | proc_13_TLF_FIFO_blk[13] | proc_13_input_sync_blk[13] | proc_13_output_sync_blk[13]);
    assign proc_13_data_FIFO_blk[14] = 1'b0;
    assign proc_13_data_PIPO_blk[14] = 1'b0;
    assign proc_13_start_FIFO_blk[14] = 1'b0;
    assign proc_13_TLF_FIFO_blk[14] = 1'b0;
    assign proc_13_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready & kernel_kcore_v2h_pe_13_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_13_output_sync_blk[14] = 1'b0 | (ap_done_reg_13 & kernel_kcore_v2h_pe_13_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_13[14] = dl_detect_out ? proc_dep_vld_vec_13_reg[14] : (proc_13_data_FIFO_blk[14] | proc_13_data_PIPO_blk[14] | proc_13_start_FIFO_blk[14] | proc_13_TLF_FIFO_blk[14] | proc_13_input_sync_blk[14] | proc_13_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_13_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_13_reg <= proc_dep_vld_vec_13;
        end
    end
    assign in_chan_dep_vld_vec_13[0] = dep_chan_vld_0_13;
    assign in_chan_dep_data_vec_13[15 : 0] = dep_chan_data_0_13;
    assign token_in_vec_13[0] = token_0_13;
    assign in_chan_dep_vld_vec_13[1] = dep_chan_vld_1_13;
    assign in_chan_dep_data_vec_13[31 : 16] = dep_chan_data_1_13;
    assign token_in_vec_13[1] = token_1_13;
    assign in_chan_dep_vld_vec_13[2] = dep_chan_vld_2_13;
    assign in_chan_dep_data_vec_13[47 : 32] = dep_chan_data_2_13;
    assign token_in_vec_13[2] = token_2_13;
    assign in_chan_dep_vld_vec_13[3] = dep_chan_vld_3_13;
    assign in_chan_dep_data_vec_13[63 : 48] = dep_chan_data_3_13;
    assign token_in_vec_13[3] = token_3_13;
    assign in_chan_dep_vld_vec_13[4] = dep_chan_vld_4_13;
    assign in_chan_dep_data_vec_13[79 : 64] = dep_chan_data_4_13;
    assign token_in_vec_13[4] = token_4_13;
    assign in_chan_dep_vld_vec_13[5] = dep_chan_vld_5_13;
    assign in_chan_dep_data_vec_13[95 : 80] = dep_chan_data_5_13;
    assign token_in_vec_13[5] = token_5_13;
    assign in_chan_dep_vld_vec_13[6] = dep_chan_vld_6_13;
    assign in_chan_dep_data_vec_13[111 : 96] = dep_chan_data_6_13;
    assign token_in_vec_13[6] = token_6_13;
    assign in_chan_dep_vld_vec_13[7] = dep_chan_vld_7_13;
    assign in_chan_dep_data_vec_13[127 : 112] = dep_chan_data_7_13;
    assign token_in_vec_13[7] = token_7_13;
    assign in_chan_dep_vld_vec_13[8] = dep_chan_vld_8_13;
    assign in_chan_dep_data_vec_13[143 : 128] = dep_chan_data_8_13;
    assign token_in_vec_13[8] = token_8_13;
    assign in_chan_dep_vld_vec_13[9] = dep_chan_vld_9_13;
    assign in_chan_dep_data_vec_13[159 : 144] = dep_chan_data_9_13;
    assign token_in_vec_13[9] = token_9_13;
    assign in_chan_dep_vld_vec_13[10] = dep_chan_vld_10_13;
    assign in_chan_dep_data_vec_13[175 : 160] = dep_chan_data_10_13;
    assign token_in_vec_13[10] = token_10_13;
    assign in_chan_dep_vld_vec_13[11] = dep_chan_vld_11_13;
    assign in_chan_dep_data_vec_13[191 : 176] = dep_chan_data_11_13;
    assign token_in_vec_13[11] = token_11_13;
    assign in_chan_dep_vld_vec_13[12] = dep_chan_vld_12_13;
    assign in_chan_dep_data_vec_13[207 : 192] = dep_chan_data_12_13;
    assign token_in_vec_13[12] = token_12_13;
    assign in_chan_dep_vld_vec_13[13] = dep_chan_vld_14_13;
    assign in_chan_dep_data_vec_13[223 : 208] = dep_chan_data_14_13;
    assign token_in_vec_13[13] = token_14_13;
    assign in_chan_dep_vld_vec_13[14] = dep_chan_vld_15_13;
    assign in_chan_dep_data_vec_13[239 : 224] = dep_chan_data_15_13;
    assign token_in_vec_13[14] = token_15_13;
    assign dep_chan_vld_13_0 = out_chan_dep_vld_vec_13[0];
    assign dep_chan_data_13_0 = out_chan_dep_data_13;
    assign token_13_0 = token_out_vec_13[0];
    assign dep_chan_vld_13_1 = out_chan_dep_vld_vec_13[1];
    assign dep_chan_data_13_1 = out_chan_dep_data_13;
    assign token_13_1 = token_out_vec_13[1];
    assign dep_chan_vld_13_2 = out_chan_dep_vld_vec_13[2];
    assign dep_chan_data_13_2 = out_chan_dep_data_13;
    assign token_13_2 = token_out_vec_13[2];
    assign dep_chan_vld_13_3 = out_chan_dep_vld_vec_13[3];
    assign dep_chan_data_13_3 = out_chan_dep_data_13;
    assign token_13_3 = token_out_vec_13[3];
    assign dep_chan_vld_13_4 = out_chan_dep_vld_vec_13[4];
    assign dep_chan_data_13_4 = out_chan_dep_data_13;
    assign token_13_4 = token_out_vec_13[4];
    assign dep_chan_vld_13_5 = out_chan_dep_vld_vec_13[5];
    assign dep_chan_data_13_5 = out_chan_dep_data_13;
    assign token_13_5 = token_out_vec_13[5];
    assign dep_chan_vld_13_6 = out_chan_dep_vld_vec_13[6];
    assign dep_chan_data_13_6 = out_chan_dep_data_13;
    assign token_13_6 = token_out_vec_13[6];
    assign dep_chan_vld_13_7 = out_chan_dep_vld_vec_13[7];
    assign dep_chan_data_13_7 = out_chan_dep_data_13;
    assign token_13_7 = token_out_vec_13[7];
    assign dep_chan_vld_13_8 = out_chan_dep_vld_vec_13[8];
    assign dep_chan_data_13_8 = out_chan_dep_data_13;
    assign token_13_8 = token_out_vec_13[8];
    assign dep_chan_vld_13_9 = out_chan_dep_vld_vec_13[9];
    assign dep_chan_data_13_9 = out_chan_dep_data_13;
    assign token_13_9 = token_out_vec_13[9];
    assign dep_chan_vld_13_10 = out_chan_dep_vld_vec_13[10];
    assign dep_chan_data_13_10 = out_chan_dep_data_13;
    assign token_13_10 = token_out_vec_13[10];
    assign dep_chan_vld_13_11 = out_chan_dep_vld_vec_13[11];
    assign dep_chan_data_13_11 = out_chan_dep_data_13;
    assign token_13_11 = token_out_vec_13[11];
    assign dep_chan_vld_13_12 = out_chan_dep_vld_vec_13[12];
    assign dep_chan_data_13_12 = out_chan_dep_data_13;
    assign token_13_12 = token_out_vec_13[12];
    assign dep_chan_vld_13_14 = out_chan_dep_vld_vec_13[13];
    assign dep_chan_data_13_14 = out_chan_dep_data_13;
    assign token_13_14 = token_out_vec_13[13];
    assign dep_chan_vld_13_15 = out_chan_dep_vld_vec_13[14];
    assign dep_chan_data_13_15 = out_chan_dep_data_13;
    assign token_13_15 = token_out_vec_13[14];

    // Process: kernel_kcore_v2h_pe_14_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 14, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_14 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_14),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_14),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_14),
        .token_in_vec(token_in_vec_14),
        .dl_detect_in(dl_detect_out),
        .origin(origin[14]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_14),
        .out_chan_dep_data(out_chan_dep_data_14),
        .token_out_vec(token_out_vec_14),
        .dl_detect_out(dl_in_vec[14]));

    assign proc_14_data_FIFO_blk[0] = 1'b0;
    assign proc_14_data_PIPO_blk[0] = 1'b0;
    assign proc_14_start_FIFO_blk[0] = 1'b0;
    assign proc_14_TLF_FIFO_blk[0] = 1'b0;
    assign proc_14_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_14_output_sync_blk[0] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_14[0] = dl_detect_out ? proc_dep_vld_vec_14_reg[0] : (proc_14_data_FIFO_blk[0] | proc_14_data_PIPO_blk[0] | proc_14_start_FIFO_blk[0] | proc_14_TLF_FIFO_blk[0] | proc_14_input_sync_blk[0] | proc_14_output_sync_blk[0]);
    assign proc_14_data_FIFO_blk[1] = 1'b0;
    assign proc_14_data_PIPO_blk[1] = 1'b0;
    assign proc_14_start_FIFO_blk[1] = 1'b0;
    assign proc_14_TLF_FIFO_blk[1] = 1'b0;
    assign proc_14_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_14_output_sync_blk[1] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_14[1] = dl_detect_out ? proc_dep_vld_vec_14_reg[1] : (proc_14_data_FIFO_blk[1] | proc_14_data_PIPO_blk[1] | proc_14_start_FIFO_blk[1] | proc_14_TLF_FIFO_blk[1] | proc_14_input_sync_blk[1] | proc_14_output_sync_blk[1]);
    assign proc_14_data_FIFO_blk[2] = 1'b0;
    assign proc_14_data_PIPO_blk[2] = 1'b0;
    assign proc_14_start_FIFO_blk[2] = 1'b0;
    assign proc_14_TLF_FIFO_blk[2] = 1'b0;
    assign proc_14_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_14_output_sync_blk[2] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_14[2] = dl_detect_out ? proc_dep_vld_vec_14_reg[2] : (proc_14_data_FIFO_blk[2] | proc_14_data_PIPO_blk[2] | proc_14_start_FIFO_blk[2] | proc_14_TLF_FIFO_blk[2] | proc_14_input_sync_blk[2] | proc_14_output_sync_blk[2]);
    assign proc_14_data_FIFO_blk[3] = 1'b0;
    assign proc_14_data_PIPO_blk[3] = 1'b0;
    assign proc_14_start_FIFO_blk[3] = 1'b0;
    assign proc_14_TLF_FIFO_blk[3] = 1'b0;
    assign proc_14_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_14_output_sync_blk[3] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_14[3] = dl_detect_out ? proc_dep_vld_vec_14_reg[3] : (proc_14_data_FIFO_blk[3] | proc_14_data_PIPO_blk[3] | proc_14_start_FIFO_blk[3] | proc_14_TLF_FIFO_blk[3] | proc_14_input_sync_blk[3] | proc_14_output_sync_blk[3]);
    assign proc_14_data_FIFO_blk[4] = 1'b0;
    assign proc_14_data_PIPO_blk[4] = 1'b0;
    assign proc_14_start_FIFO_blk[4] = 1'b0;
    assign proc_14_TLF_FIFO_blk[4] = 1'b0;
    assign proc_14_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_14_output_sync_blk[4] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_14[4] = dl_detect_out ? proc_dep_vld_vec_14_reg[4] : (proc_14_data_FIFO_blk[4] | proc_14_data_PIPO_blk[4] | proc_14_start_FIFO_blk[4] | proc_14_TLF_FIFO_blk[4] | proc_14_input_sync_blk[4] | proc_14_output_sync_blk[4]);
    assign proc_14_data_FIFO_blk[5] = 1'b0;
    assign proc_14_data_PIPO_blk[5] = 1'b0;
    assign proc_14_start_FIFO_blk[5] = 1'b0;
    assign proc_14_TLF_FIFO_blk[5] = 1'b0;
    assign proc_14_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_14_output_sync_blk[5] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_14[5] = dl_detect_out ? proc_dep_vld_vec_14_reg[5] : (proc_14_data_FIFO_blk[5] | proc_14_data_PIPO_blk[5] | proc_14_start_FIFO_blk[5] | proc_14_TLF_FIFO_blk[5] | proc_14_input_sync_blk[5] | proc_14_output_sync_blk[5]);
    assign proc_14_data_FIFO_blk[6] = 1'b0;
    assign proc_14_data_PIPO_blk[6] = 1'b0;
    assign proc_14_start_FIFO_blk[6] = 1'b0;
    assign proc_14_TLF_FIFO_blk[6] = 1'b0;
    assign proc_14_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_14_output_sync_blk[6] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_14[6] = dl_detect_out ? proc_dep_vld_vec_14_reg[6] : (proc_14_data_FIFO_blk[6] | proc_14_data_PIPO_blk[6] | proc_14_start_FIFO_blk[6] | proc_14_TLF_FIFO_blk[6] | proc_14_input_sync_blk[6] | proc_14_output_sync_blk[6]);
    assign proc_14_data_FIFO_blk[7] = 1'b0;
    assign proc_14_data_PIPO_blk[7] = 1'b0;
    assign proc_14_start_FIFO_blk[7] = 1'b0;
    assign proc_14_TLF_FIFO_blk[7] = 1'b0;
    assign proc_14_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_14_output_sync_blk[7] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_14[7] = dl_detect_out ? proc_dep_vld_vec_14_reg[7] : (proc_14_data_FIFO_blk[7] | proc_14_data_PIPO_blk[7] | proc_14_start_FIFO_blk[7] | proc_14_TLF_FIFO_blk[7] | proc_14_input_sync_blk[7] | proc_14_output_sync_blk[7]);
    assign proc_14_data_FIFO_blk[8] = 1'b0;
    assign proc_14_data_PIPO_blk[8] = 1'b0;
    assign proc_14_start_FIFO_blk[8] = 1'b0;
    assign proc_14_TLF_FIFO_blk[8] = 1'b0;
    assign proc_14_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_14_output_sync_blk[8] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_14[8] = dl_detect_out ? proc_dep_vld_vec_14_reg[8] : (proc_14_data_FIFO_blk[8] | proc_14_data_PIPO_blk[8] | proc_14_start_FIFO_blk[8] | proc_14_TLF_FIFO_blk[8] | proc_14_input_sync_blk[8] | proc_14_output_sync_blk[8]);
    assign proc_14_data_FIFO_blk[9] = 1'b0;
    assign proc_14_data_PIPO_blk[9] = 1'b0;
    assign proc_14_start_FIFO_blk[9] = 1'b0;
    assign proc_14_TLF_FIFO_blk[9] = 1'b0;
    assign proc_14_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_14_output_sync_blk[9] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_14[9] = dl_detect_out ? proc_dep_vld_vec_14_reg[9] : (proc_14_data_FIFO_blk[9] | proc_14_data_PIPO_blk[9] | proc_14_start_FIFO_blk[9] | proc_14_TLF_FIFO_blk[9] | proc_14_input_sync_blk[9] | proc_14_output_sync_blk[9]);
    assign proc_14_data_FIFO_blk[10] = 1'b0;
    assign proc_14_data_PIPO_blk[10] = 1'b0;
    assign proc_14_start_FIFO_blk[10] = 1'b0;
    assign proc_14_TLF_FIFO_blk[10] = 1'b0;
    assign proc_14_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_14_output_sync_blk[10] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_14[10] = dl_detect_out ? proc_dep_vld_vec_14_reg[10] : (proc_14_data_FIFO_blk[10] | proc_14_data_PIPO_blk[10] | proc_14_start_FIFO_blk[10] | proc_14_TLF_FIFO_blk[10] | proc_14_input_sync_blk[10] | proc_14_output_sync_blk[10]);
    assign proc_14_data_FIFO_blk[11] = 1'b0;
    assign proc_14_data_PIPO_blk[11] = 1'b0;
    assign proc_14_start_FIFO_blk[11] = 1'b0;
    assign proc_14_TLF_FIFO_blk[11] = 1'b0;
    assign proc_14_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_14_output_sync_blk[11] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_14[11] = dl_detect_out ? proc_dep_vld_vec_14_reg[11] : (proc_14_data_FIFO_blk[11] | proc_14_data_PIPO_blk[11] | proc_14_start_FIFO_blk[11] | proc_14_TLF_FIFO_blk[11] | proc_14_input_sync_blk[11] | proc_14_output_sync_blk[11]);
    assign proc_14_data_FIFO_blk[12] = 1'b0;
    assign proc_14_data_PIPO_blk[12] = 1'b0;
    assign proc_14_start_FIFO_blk[12] = 1'b0;
    assign proc_14_TLF_FIFO_blk[12] = 1'b0;
    assign proc_14_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_14_output_sync_blk[12] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_14[12] = dl_detect_out ? proc_dep_vld_vec_14_reg[12] : (proc_14_data_FIFO_blk[12] | proc_14_data_PIPO_blk[12] | proc_14_start_FIFO_blk[12] | proc_14_TLF_FIFO_blk[12] | proc_14_input_sync_blk[12] | proc_14_output_sync_blk[12]);
    assign proc_14_data_FIFO_blk[13] = 1'b0;
    assign proc_14_data_PIPO_blk[13] = 1'b0;
    assign proc_14_start_FIFO_blk[13] = 1'b0;
    assign proc_14_TLF_FIFO_blk[13] = 1'b0;
    assign proc_14_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_14_output_sync_blk[13] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_14[13] = dl_detect_out ? proc_dep_vld_vec_14_reg[13] : (proc_14_data_FIFO_blk[13] | proc_14_data_PIPO_blk[13] | proc_14_start_FIFO_blk[13] | proc_14_TLF_FIFO_blk[13] | proc_14_input_sync_blk[13] | proc_14_output_sync_blk[13]);
    assign proc_14_data_FIFO_blk[14] = 1'b0;
    assign proc_14_data_PIPO_blk[14] = 1'b0;
    assign proc_14_start_FIFO_blk[14] = 1'b0;
    assign proc_14_TLF_FIFO_blk[14] = 1'b0;
    assign proc_14_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready & kernel_kcore_v2h_pe_14_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready);
    assign proc_14_output_sync_blk[14] = 1'b0 | (ap_done_reg_14 & kernel_kcore_v2h_pe_14_U0.ap_done & ~kernel_kcore_v2h_pe_15_U0.ap_done);
    assign proc_dep_vld_vec_14[14] = dl_detect_out ? proc_dep_vld_vec_14_reg[14] : (proc_14_data_FIFO_blk[14] | proc_14_data_PIPO_blk[14] | proc_14_start_FIFO_blk[14] | proc_14_TLF_FIFO_blk[14] | proc_14_input_sync_blk[14] | proc_14_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_14_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_14_reg <= proc_dep_vld_vec_14;
        end
    end
    assign in_chan_dep_vld_vec_14[0] = dep_chan_vld_0_14;
    assign in_chan_dep_data_vec_14[15 : 0] = dep_chan_data_0_14;
    assign token_in_vec_14[0] = token_0_14;
    assign in_chan_dep_vld_vec_14[1] = dep_chan_vld_1_14;
    assign in_chan_dep_data_vec_14[31 : 16] = dep_chan_data_1_14;
    assign token_in_vec_14[1] = token_1_14;
    assign in_chan_dep_vld_vec_14[2] = dep_chan_vld_2_14;
    assign in_chan_dep_data_vec_14[47 : 32] = dep_chan_data_2_14;
    assign token_in_vec_14[2] = token_2_14;
    assign in_chan_dep_vld_vec_14[3] = dep_chan_vld_3_14;
    assign in_chan_dep_data_vec_14[63 : 48] = dep_chan_data_3_14;
    assign token_in_vec_14[3] = token_3_14;
    assign in_chan_dep_vld_vec_14[4] = dep_chan_vld_4_14;
    assign in_chan_dep_data_vec_14[79 : 64] = dep_chan_data_4_14;
    assign token_in_vec_14[4] = token_4_14;
    assign in_chan_dep_vld_vec_14[5] = dep_chan_vld_5_14;
    assign in_chan_dep_data_vec_14[95 : 80] = dep_chan_data_5_14;
    assign token_in_vec_14[5] = token_5_14;
    assign in_chan_dep_vld_vec_14[6] = dep_chan_vld_6_14;
    assign in_chan_dep_data_vec_14[111 : 96] = dep_chan_data_6_14;
    assign token_in_vec_14[6] = token_6_14;
    assign in_chan_dep_vld_vec_14[7] = dep_chan_vld_7_14;
    assign in_chan_dep_data_vec_14[127 : 112] = dep_chan_data_7_14;
    assign token_in_vec_14[7] = token_7_14;
    assign in_chan_dep_vld_vec_14[8] = dep_chan_vld_8_14;
    assign in_chan_dep_data_vec_14[143 : 128] = dep_chan_data_8_14;
    assign token_in_vec_14[8] = token_8_14;
    assign in_chan_dep_vld_vec_14[9] = dep_chan_vld_9_14;
    assign in_chan_dep_data_vec_14[159 : 144] = dep_chan_data_9_14;
    assign token_in_vec_14[9] = token_9_14;
    assign in_chan_dep_vld_vec_14[10] = dep_chan_vld_10_14;
    assign in_chan_dep_data_vec_14[175 : 160] = dep_chan_data_10_14;
    assign token_in_vec_14[10] = token_10_14;
    assign in_chan_dep_vld_vec_14[11] = dep_chan_vld_11_14;
    assign in_chan_dep_data_vec_14[191 : 176] = dep_chan_data_11_14;
    assign token_in_vec_14[11] = token_11_14;
    assign in_chan_dep_vld_vec_14[12] = dep_chan_vld_12_14;
    assign in_chan_dep_data_vec_14[207 : 192] = dep_chan_data_12_14;
    assign token_in_vec_14[12] = token_12_14;
    assign in_chan_dep_vld_vec_14[13] = dep_chan_vld_13_14;
    assign in_chan_dep_data_vec_14[223 : 208] = dep_chan_data_13_14;
    assign token_in_vec_14[13] = token_13_14;
    assign in_chan_dep_vld_vec_14[14] = dep_chan_vld_15_14;
    assign in_chan_dep_data_vec_14[239 : 224] = dep_chan_data_15_14;
    assign token_in_vec_14[14] = token_15_14;
    assign dep_chan_vld_14_0 = out_chan_dep_vld_vec_14[0];
    assign dep_chan_data_14_0 = out_chan_dep_data_14;
    assign token_14_0 = token_out_vec_14[0];
    assign dep_chan_vld_14_1 = out_chan_dep_vld_vec_14[1];
    assign dep_chan_data_14_1 = out_chan_dep_data_14;
    assign token_14_1 = token_out_vec_14[1];
    assign dep_chan_vld_14_2 = out_chan_dep_vld_vec_14[2];
    assign dep_chan_data_14_2 = out_chan_dep_data_14;
    assign token_14_2 = token_out_vec_14[2];
    assign dep_chan_vld_14_3 = out_chan_dep_vld_vec_14[3];
    assign dep_chan_data_14_3 = out_chan_dep_data_14;
    assign token_14_3 = token_out_vec_14[3];
    assign dep_chan_vld_14_4 = out_chan_dep_vld_vec_14[4];
    assign dep_chan_data_14_4 = out_chan_dep_data_14;
    assign token_14_4 = token_out_vec_14[4];
    assign dep_chan_vld_14_5 = out_chan_dep_vld_vec_14[5];
    assign dep_chan_data_14_5 = out_chan_dep_data_14;
    assign token_14_5 = token_out_vec_14[5];
    assign dep_chan_vld_14_6 = out_chan_dep_vld_vec_14[6];
    assign dep_chan_data_14_6 = out_chan_dep_data_14;
    assign token_14_6 = token_out_vec_14[6];
    assign dep_chan_vld_14_7 = out_chan_dep_vld_vec_14[7];
    assign dep_chan_data_14_7 = out_chan_dep_data_14;
    assign token_14_7 = token_out_vec_14[7];
    assign dep_chan_vld_14_8 = out_chan_dep_vld_vec_14[8];
    assign dep_chan_data_14_8 = out_chan_dep_data_14;
    assign token_14_8 = token_out_vec_14[8];
    assign dep_chan_vld_14_9 = out_chan_dep_vld_vec_14[9];
    assign dep_chan_data_14_9 = out_chan_dep_data_14;
    assign token_14_9 = token_out_vec_14[9];
    assign dep_chan_vld_14_10 = out_chan_dep_vld_vec_14[10];
    assign dep_chan_data_14_10 = out_chan_dep_data_14;
    assign token_14_10 = token_out_vec_14[10];
    assign dep_chan_vld_14_11 = out_chan_dep_vld_vec_14[11];
    assign dep_chan_data_14_11 = out_chan_dep_data_14;
    assign token_14_11 = token_out_vec_14[11];
    assign dep_chan_vld_14_12 = out_chan_dep_vld_vec_14[12];
    assign dep_chan_data_14_12 = out_chan_dep_data_14;
    assign token_14_12 = token_out_vec_14[12];
    assign dep_chan_vld_14_13 = out_chan_dep_vld_vec_14[13];
    assign dep_chan_data_14_13 = out_chan_dep_data_14;
    assign token_14_13 = token_out_vec_14[13];
    assign dep_chan_vld_14_15 = out_chan_dep_vld_vec_14[14];
    assign dep_chan_data_14_15 = out_chan_dep_data_14;
    assign token_14_15 = token_out_vec_14[14];

    // Process: kernel_kcore_v2h_pe_15_U0
    kernel_kcore_v2h_hls_deadlock_detect_unit #(16, 15, 15, 15) kernel_kcore_v2h_hls_deadlock_detect_unit_15 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_15),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_15),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_15),
        .token_in_vec(token_in_vec_15),
        .dl_detect_in(dl_detect_out),
        .origin(origin[15]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_15),
        .out_chan_dep_data(out_chan_dep_data_15),
        .token_out_vec(token_out_vec_15),
        .dl_detect_out(dl_in_vec[15]));

    assign proc_15_data_FIFO_blk[0] = 1'b0;
    assign proc_15_data_PIPO_blk[0] = 1'b0;
    assign proc_15_start_FIFO_blk[0] = 1'b0;
    assign proc_15_TLF_FIFO_blk[0] = 1'b0;
    assign proc_15_input_sync_blk[0] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_U0_ap_ready);
    assign proc_15_output_sync_blk[0] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_U0.ap_done);
    assign proc_dep_vld_vec_15[0] = dl_detect_out ? proc_dep_vld_vec_15_reg[0] : (proc_15_data_FIFO_blk[0] | proc_15_data_PIPO_blk[0] | proc_15_start_FIFO_blk[0] | proc_15_TLF_FIFO_blk[0] | proc_15_input_sync_blk[0] | proc_15_output_sync_blk[0]);
    assign proc_15_data_FIFO_blk[1] = 1'b0;
    assign proc_15_data_PIPO_blk[1] = 1'b0;
    assign proc_15_start_FIFO_blk[1] = 1'b0;
    assign proc_15_TLF_FIFO_blk[1] = 1'b0;
    assign proc_15_input_sync_blk[1] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_1_U0_ap_ready);
    assign proc_15_output_sync_blk[1] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_1_U0.ap_done);
    assign proc_dep_vld_vec_15[1] = dl_detect_out ? proc_dep_vld_vec_15_reg[1] : (proc_15_data_FIFO_blk[1] | proc_15_data_PIPO_blk[1] | proc_15_start_FIFO_blk[1] | proc_15_TLF_FIFO_blk[1] | proc_15_input_sync_blk[1] | proc_15_output_sync_blk[1]);
    assign proc_15_data_FIFO_blk[2] = 1'b0;
    assign proc_15_data_PIPO_blk[2] = 1'b0;
    assign proc_15_start_FIFO_blk[2] = 1'b0;
    assign proc_15_TLF_FIFO_blk[2] = 1'b0;
    assign proc_15_input_sync_blk[2] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_2_U0_ap_ready);
    assign proc_15_output_sync_blk[2] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_2_U0.ap_done);
    assign proc_dep_vld_vec_15[2] = dl_detect_out ? proc_dep_vld_vec_15_reg[2] : (proc_15_data_FIFO_blk[2] | proc_15_data_PIPO_blk[2] | proc_15_start_FIFO_blk[2] | proc_15_TLF_FIFO_blk[2] | proc_15_input_sync_blk[2] | proc_15_output_sync_blk[2]);
    assign proc_15_data_FIFO_blk[3] = 1'b0;
    assign proc_15_data_PIPO_blk[3] = 1'b0;
    assign proc_15_start_FIFO_blk[3] = 1'b0;
    assign proc_15_TLF_FIFO_blk[3] = 1'b0;
    assign proc_15_input_sync_blk[3] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_3_U0_ap_ready);
    assign proc_15_output_sync_blk[3] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_3_U0.ap_done);
    assign proc_dep_vld_vec_15[3] = dl_detect_out ? proc_dep_vld_vec_15_reg[3] : (proc_15_data_FIFO_blk[3] | proc_15_data_PIPO_blk[3] | proc_15_start_FIFO_blk[3] | proc_15_TLF_FIFO_blk[3] | proc_15_input_sync_blk[3] | proc_15_output_sync_blk[3]);
    assign proc_15_data_FIFO_blk[4] = 1'b0;
    assign proc_15_data_PIPO_blk[4] = 1'b0;
    assign proc_15_start_FIFO_blk[4] = 1'b0;
    assign proc_15_TLF_FIFO_blk[4] = 1'b0;
    assign proc_15_input_sync_blk[4] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_4_U0_ap_ready);
    assign proc_15_output_sync_blk[4] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_4_U0.ap_done);
    assign proc_dep_vld_vec_15[4] = dl_detect_out ? proc_dep_vld_vec_15_reg[4] : (proc_15_data_FIFO_blk[4] | proc_15_data_PIPO_blk[4] | proc_15_start_FIFO_blk[4] | proc_15_TLF_FIFO_blk[4] | proc_15_input_sync_blk[4] | proc_15_output_sync_blk[4]);
    assign proc_15_data_FIFO_blk[5] = 1'b0;
    assign proc_15_data_PIPO_blk[5] = 1'b0;
    assign proc_15_start_FIFO_blk[5] = 1'b0;
    assign proc_15_TLF_FIFO_blk[5] = 1'b0;
    assign proc_15_input_sync_blk[5] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_5_U0_ap_ready);
    assign proc_15_output_sync_blk[5] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_5_U0.ap_done);
    assign proc_dep_vld_vec_15[5] = dl_detect_out ? proc_dep_vld_vec_15_reg[5] : (proc_15_data_FIFO_blk[5] | proc_15_data_PIPO_blk[5] | proc_15_start_FIFO_blk[5] | proc_15_TLF_FIFO_blk[5] | proc_15_input_sync_blk[5] | proc_15_output_sync_blk[5]);
    assign proc_15_data_FIFO_blk[6] = 1'b0;
    assign proc_15_data_PIPO_blk[6] = 1'b0;
    assign proc_15_start_FIFO_blk[6] = 1'b0;
    assign proc_15_TLF_FIFO_blk[6] = 1'b0;
    assign proc_15_input_sync_blk[6] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_6_U0_ap_ready);
    assign proc_15_output_sync_blk[6] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_6_U0.ap_done);
    assign proc_dep_vld_vec_15[6] = dl_detect_out ? proc_dep_vld_vec_15_reg[6] : (proc_15_data_FIFO_blk[6] | proc_15_data_PIPO_blk[6] | proc_15_start_FIFO_blk[6] | proc_15_TLF_FIFO_blk[6] | proc_15_input_sync_blk[6] | proc_15_output_sync_blk[6]);
    assign proc_15_data_FIFO_blk[7] = 1'b0;
    assign proc_15_data_PIPO_blk[7] = 1'b0;
    assign proc_15_start_FIFO_blk[7] = 1'b0;
    assign proc_15_TLF_FIFO_blk[7] = 1'b0;
    assign proc_15_input_sync_blk[7] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_7_U0_ap_ready);
    assign proc_15_output_sync_blk[7] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_7_U0.ap_done);
    assign proc_dep_vld_vec_15[7] = dl_detect_out ? proc_dep_vld_vec_15_reg[7] : (proc_15_data_FIFO_blk[7] | proc_15_data_PIPO_blk[7] | proc_15_start_FIFO_blk[7] | proc_15_TLF_FIFO_blk[7] | proc_15_input_sync_blk[7] | proc_15_output_sync_blk[7]);
    assign proc_15_data_FIFO_blk[8] = 1'b0;
    assign proc_15_data_PIPO_blk[8] = 1'b0;
    assign proc_15_start_FIFO_blk[8] = 1'b0;
    assign proc_15_TLF_FIFO_blk[8] = 1'b0;
    assign proc_15_input_sync_blk[8] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_8_U0_ap_ready);
    assign proc_15_output_sync_blk[8] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_8_U0.ap_done);
    assign proc_dep_vld_vec_15[8] = dl_detect_out ? proc_dep_vld_vec_15_reg[8] : (proc_15_data_FIFO_blk[8] | proc_15_data_PIPO_blk[8] | proc_15_start_FIFO_blk[8] | proc_15_TLF_FIFO_blk[8] | proc_15_input_sync_blk[8] | proc_15_output_sync_blk[8]);
    assign proc_15_data_FIFO_blk[9] = 1'b0;
    assign proc_15_data_PIPO_blk[9] = 1'b0;
    assign proc_15_start_FIFO_blk[9] = 1'b0;
    assign proc_15_TLF_FIFO_blk[9] = 1'b0;
    assign proc_15_input_sync_blk[9] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_9_U0_ap_ready);
    assign proc_15_output_sync_blk[9] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_9_U0.ap_done);
    assign proc_dep_vld_vec_15[9] = dl_detect_out ? proc_dep_vld_vec_15_reg[9] : (proc_15_data_FIFO_blk[9] | proc_15_data_PIPO_blk[9] | proc_15_start_FIFO_blk[9] | proc_15_TLF_FIFO_blk[9] | proc_15_input_sync_blk[9] | proc_15_output_sync_blk[9]);
    assign proc_15_data_FIFO_blk[10] = 1'b0;
    assign proc_15_data_PIPO_blk[10] = 1'b0;
    assign proc_15_start_FIFO_blk[10] = 1'b0;
    assign proc_15_TLF_FIFO_blk[10] = 1'b0;
    assign proc_15_input_sync_blk[10] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_10_U0_ap_ready);
    assign proc_15_output_sync_blk[10] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_10_U0.ap_done);
    assign proc_dep_vld_vec_15[10] = dl_detect_out ? proc_dep_vld_vec_15_reg[10] : (proc_15_data_FIFO_blk[10] | proc_15_data_PIPO_blk[10] | proc_15_start_FIFO_blk[10] | proc_15_TLF_FIFO_blk[10] | proc_15_input_sync_blk[10] | proc_15_output_sync_blk[10]);
    assign proc_15_data_FIFO_blk[11] = 1'b0;
    assign proc_15_data_PIPO_blk[11] = 1'b0;
    assign proc_15_start_FIFO_blk[11] = 1'b0;
    assign proc_15_TLF_FIFO_blk[11] = 1'b0;
    assign proc_15_input_sync_blk[11] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_11_U0_ap_ready);
    assign proc_15_output_sync_blk[11] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_11_U0.ap_done);
    assign proc_dep_vld_vec_15[11] = dl_detect_out ? proc_dep_vld_vec_15_reg[11] : (proc_15_data_FIFO_blk[11] | proc_15_data_PIPO_blk[11] | proc_15_start_FIFO_blk[11] | proc_15_TLF_FIFO_blk[11] | proc_15_input_sync_blk[11] | proc_15_output_sync_blk[11]);
    assign proc_15_data_FIFO_blk[12] = 1'b0;
    assign proc_15_data_PIPO_blk[12] = 1'b0;
    assign proc_15_start_FIFO_blk[12] = 1'b0;
    assign proc_15_TLF_FIFO_blk[12] = 1'b0;
    assign proc_15_input_sync_blk[12] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_12_U0_ap_ready);
    assign proc_15_output_sync_blk[12] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_12_U0.ap_done);
    assign proc_dep_vld_vec_15[12] = dl_detect_out ? proc_dep_vld_vec_15_reg[12] : (proc_15_data_FIFO_blk[12] | proc_15_data_PIPO_blk[12] | proc_15_start_FIFO_blk[12] | proc_15_TLF_FIFO_blk[12] | proc_15_input_sync_blk[12] | proc_15_output_sync_blk[12]);
    assign proc_15_data_FIFO_blk[13] = 1'b0;
    assign proc_15_data_PIPO_blk[13] = 1'b0;
    assign proc_15_start_FIFO_blk[13] = 1'b0;
    assign proc_15_TLF_FIFO_blk[13] = 1'b0;
    assign proc_15_input_sync_blk[13] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_13_U0_ap_ready);
    assign proc_15_output_sync_blk[13] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_13_U0.ap_done);
    assign proc_dep_vld_vec_15[13] = dl_detect_out ? proc_dep_vld_vec_15_reg[13] : (proc_15_data_FIFO_blk[13] | proc_15_data_PIPO_blk[13] | proc_15_start_FIFO_blk[13] | proc_15_TLF_FIFO_blk[13] | proc_15_input_sync_blk[13] | proc_15_output_sync_blk[13]);
    assign proc_15_data_FIFO_blk[14] = 1'b0;
    assign proc_15_data_PIPO_blk[14] = 1'b0;
    assign proc_15_start_FIFO_blk[14] = 1'b0;
    assign proc_15_TLF_FIFO_blk[14] = 1'b0;
    assign proc_15_input_sync_blk[14] = 1'b0 | (ap_sync_kernel_kcore_v2h_pe_15_U0_ap_ready & kernel_kcore_v2h_pe_15_U0.ap_idle & ~ap_sync_kernel_kcore_v2h_pe_14_U0_ap_ready);
    assign proc_15_output_sync_blk[14] = 1'b0 | (ap_done_reg_15 & kernel_kcore_v2h_pe_15_U0.ap_done & ~kernel_kcore_v2h_pe_14_U0.ap_done);
    assign proc_dep_vld_vec_15[14] = dl_detect_out ? proc_dep_vld_vec_15_reg[14] : (proc_15_data_FIFO_blk[14] | proc_15_data_PIPO_blk[14] | proc_15_start_FIFO_blk[14] | proc_15_TLF_FIFO_blk[14] | proc_15_input_sync_blk[14] | proc_15_output_sync_blk[14]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_15_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_15_reg <= proc_dep_vld_vec_15;
        end
    end
    assign in_chan_dep_vld_vec_15[0] = dep_chan_vld_0_15;
    assign in_chan_dep_data_vec_15[15 : 0] = dep_chan_data_0_15;
    assign token_in_vec_15[0] = token_0_15;
    assign in_chan_dep_vld_vec_15[1] = dep_chan_vld_1_15;
    assign in_chan_dep_data_vec_15[31 : 16] = dep_chan_data_1_15;
    assign token_in_vec_15[1] = token_1_15;
    assign in_chan_dep_vld_vec_15[2] = dep_chan_vld_2_15;
    assign in_chan_dep_data_vec_15[47 : 32] = dep_chan_data_2_15;
    assign token_in_vec_15[2] = token_2_15;
    assign in_chan_dep_vld_vec_15[3] = dep_chan_vld_3_15;
    assign in_chan_dep_data_vec_15[63 : 48] = dep_chan_data_3_15;
    assign token_in_vec_15[3] = token_3_15;
    assign in_chan_dep_vld_vec_15[4] = dep_chan_vld_4_15;
    assign in_chan_dep_data_vec_15[79 : 64] = dep_chan_data_4_15;
    assign token_in_vec_15[4] = token_4_15;
    assign in_chan_dep_vld_vec_15[5] = dep_chan_vld_5_15;
    assign in_chan_dep_data_vec_15[95 : 80] = dep_chan_data_5_15;
    assign token_in_vec_15[5] = token_5_15;
    assign in_chan_dep_vld_vec_15[6] = dep_chan_vld_6_15;
    assign in_chan_dep_data_vec_15[111 : 96] = dep_chan_data_6_15;
    assign token_in_vec_15[6] = token_6_15;
    assign in_chan_dep_vld_vec_15[7] = dep_chan_vld_7_15;
    assign in_chan_dep_data_vec_15[127 : 112] = dep_chan_data_7_15;
    assign token_in_vec_15[7] = token_7_15;
    assign in_chan_dep_vld_vec_15[8] = dep_chan_vld_8_15;
    assign in_chan_dep_data_vec_15[143 : 128] = dep_chan_data_8_15;
    assign token_in_vec_15[8] = token_8_15;
    assign in_chan_dep_vld_vec_15[9] = dep_chan_vld_9_15;
    assign in_chan_dep_data_vec_15[159 : 144] = dep_chan_data_9_15;
    assign token_in_vec_15[9] = token_9_15;
    assign in_chan_dep_vld_vec_15[10] = dep_chan_vld_10_15;
    assign in_chan_dep_data_vec_15[175 : 160] = dep_chan_data_10_15;
    assign token_in_vec_15[10] = token_10_15;
    assign in_chan_dep_vld_vec_15[11] = dep_chan_vld_11_15;
    assign in_chan_dep_data_vec_15[191 : 176] = dep_chan_data_11_15;
    assign token_in_vec_15[11] = token_11_15;
    assign in_chan_dep_vld_vec_15[12] = dep_chan_vld_12_15;
    assign in_chan_dep_data_vec_15[207 : 192] = dep_chan_data_12_15;
    assign token_in_vec_15[12] = token_12_15;
    assign in_chan_dep_vld_vec_15[13] = dep_chan_vld_13_15;
    assign in_chan_dep_data_vec_15[223 : 208] = dep_chan_data_13_15;
    assign token_in_vec_15[13] = token_13_15;
    assign in_chan_dep_vld_vec_15[14] = dep_chan_vld_14_15;
    assign in_chan_dep_data_vec_15[239 : 224] = dep_chan_data_14_15;
    assign token_in_vec_15[14] = token_14_15;
    assign dep_chan_vld_15_0 = out_chan_dep_vld_vec_15[0];
    assign dep_chan_data_15_0 = out_chan_dep_data_15;
    assign token_15_0 = token_out_vec_15[0];
    assign dep_chan_vld_15_1 = out_chan_dep_vld_vec_15[1];
    assign dep_chan_data_15_1 = out_chan_dep_data_15;
    assign token_15_1 = token_out_vec_15[1];
    assign dep_chan_vld_15_2 = out_chan_dep_vld_vec_15[2];
    assign dep_chan_data_15_2 = out_chan_dep_data_15;
    assign token_15_2 = token_out_vec_15[2];
    assign dep_chan_vld_15_3 = out_chan_dep_vld_vec_15[3];
    assign dep_chan_data_15_3 = out_chan_dep_data_15;
    assign token_15_3 = token_out_vec_15[3];
    assign dep_chan_vld_15_4 = out_chan_dep_vld_vec_15[4];
    assign dep_chan_data_15_4 = out_chan_dep_data_15;
    assign token_15_4 = token_out_vec_15[4];
    assign dep_chan_vld_15_5 = out_chan_dep_vld_vec_15[5];
    assign dep_chan_data_15_5 = out_chan_dep_data_15;
    assign token_15_5 = token_out_vec_15[5];
    assign dep_chan_vld_15_6 = out_chan_dep_vld_vec_15[6];
    assign dep_chan_data_15_6 = out_chan_dep_data_15;
    assign token_15_6 = token_out_vec_15[6];
    assign dep_chan_vld_15_7 = out_chan_dep_vld_vec_15[7];
    assign dep_chan_data_15_7 = out_chan_dep_data_15;
    assign token_15_7 = token_out_vec_15[7];
    assign dep_chan_vld_15_8 = out_chan_dep_vld_vec_15[8];
    assign dep_chan_data_15_8 = out_chan_dep_data_15;
    assign token_15_8 = token_out_vec_15[8];
    assign dep_chan_vld_15_9 = out_chan_dep_vld_vec_15[9];
    assign dep_chan_data_15_9 = out_chan_dep_data_15;
    assign token_15_9 = token_out_vec_15[9];
    assign dep_chan_vld_15_10 = out_chan_dep_vld_vec_15[10];
    assign dep_chan_data_15_10 = out_chan_dep_data_15;
    assign token_15_10 = token_out_vec_15[10];
    assign dep_chan_vld_15_11 = out_chan_dep_vld_vec_15[11];
    assign dep_chan_data_15_11 = out_chan_dep_data_15;
    assign token_15_11 = token_out_vec_15[11];
    assign dep_chan_vld_15_12 = out_chan_dep_vld_vec_15[12];
    assign dep_chan_data_15_12 = out_chan_dep_data_15;
    assign token_15_12 = token_out_vec_15[12];
    assign dep_chan_vld_15_13 = out_chan_dep_vld_vec_15[13];
    assign dep_chan_data_15_13 = out_chan_dep_data_15;
    assign token_15_13 = token_out_vec_15[13];
    assign dep_chan_vld_15_14 = out_chan_dep_vld_vec_15[14];
    assign dep_chan_data_15_14 = out_chan_dep_data_15;
    assign token_15_14 = token_out_vec_15[14];


`include "kernel_kcore_v2h_hls_deadlock_report_unit.vh"
