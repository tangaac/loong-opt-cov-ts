; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/parset.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/parset.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], ptr, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, i32 }
%struct.timeb = type { i64, i16, i16, i16 }

@PicParSet = common dso_local global [256 x ptr] zeroinitializer, align 8
@input = external global ptr, align 8
@active_sps = common dso_local global ptr null, align 8
@active_pps = common dso_local global ptr null, align 8
@__const.GenerateSequenceParameterSet.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 4
@__const.GenerateSequenceParameterSet.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 4
@img = external global ptr, align 8
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
@Co_located = external global ptr, align 8
@.str = private unnamed_addr constant [46 x i8] c"automatic frame cropping (width) not possible\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"automatic frame cropping (height) not possible\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"GeneratePictureParameterSet: slice_group_id\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Parset.c: slice_group_map_type invalid, default\0A\00", align 1
@ZZ_SCAN = internal constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 1
@ZZ_SCAN8 = internal constant [64 x i8] c"\00\01\08\10\09\02\03\0A\11\18 \19\12\0B\04\05\0C\13\1A!(0)\22\1B\14\0D\06\07\0E\15\1C#*1892+$\1D\16\0F\17\1E%,3:;4-&\1F'.5<=6/7>?", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"   : delta_sl   \00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"SeqParameterSet:bitstream\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SPS: profile_idc\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set0_flag\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set1_flag\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set2_flag\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"SPS: constrained_set3_flag\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"SPS: reserved_zero_4bits\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"SPS: level_idc\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"SPS: seq_parameter_set_id\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"SPS: chroma_format_idc\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"SPS: residue_transform_flag\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"SPS: bit_depth_luma_minus8\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"SPS: bit_depth_chroma_minus8\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"SPS: lossless_qpprime_y_zero_flag\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"SPS: seq_scaling_matrix_present_flag\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"SPS: seq_scaling_list_present_flag\00", align 1
@ScalingList4x4input = external global [6 x [16 x i16]], align 2
@ScalingList4x4 = external global [6 x [16 x i16]], align 2
@UseDefaultScalingMatrix4x4Flag = external global [6 x i16], align 2
@ScalingList8x8input = external global [2 x [64 x i16]], align 2
@ScalingList8x8 = external global [2 x [64 x i16]], align 2
@UseDefaultScalingMatrix8x8Flag = external global [2 x i16], align 2
@.str.21 = private unnamed_addr constant [31 x i8] c"SPS: log2_max_frame_num_minus4\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SPS: pic_order_cnt_type\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"SPS: log2_max_pic_order_cnt_lsb_minus4\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"SPS: delta_pic_order_always_zero_flag\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"SPS: offset_for_non_ref_pic\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"SPS: offset_for_top_to_bottom_field\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"SPS: num_ref_frames_in_pic_order_cnt_cycle\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"SPS: offset_for_ref_frame\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"SPS: num_ref_frames\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"SPS: gaps_in_frame_num_value_allowed_flag\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"SPS: pic_width_in_mbs_minus1\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"SPS: pic_height_in_map_units_minus1\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"SPS: frame_mbs_only_flag\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"SPS: mb_adaptive_frame_field_flag\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"SPS: direct_8x8_inference_flag\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"SPS: frame_cropping_flag\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c"SPS: frame_cropping_rect_left_offset\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"SPS: frame_cropping_rect_right_offset\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"SPS: frame_cropping_rect_top_offset\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"SPS: frame_cropping_rect_bottom_offset\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"SPS: vui_parameters_present_flag\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"PicParameterSet:bitstream\00", align 1
@.str.43 = private unnamed_addr constant [26 x i8] c"PPS: pic_parameter_set_id\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"PPS: seq_parameter_set_id\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"PPS: entropy_coding_mode_flag\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"PPS: pic_order_present_flag\00", align 1
@.str.47 = private unnamed_addr constant [29 x i8] c"PPS: num_slice_groups_minus1\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"PPS: slice_group_map_type\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"PPS: run_length_minus1[i]\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"PPS: top_left[i]\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"PPS: bottom_right[i]\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"PPS: slice_group_change_direction_flag\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"PPS: slice_group_change_rate_minus1\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"PPS: pic_size_in_map_units_minus1\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"PPS: >slice_group_id[i]\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l0_active_minus1\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"PPS: num_ref_idx_l1_active_minus1\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"PPS: weighted_pred_flag\00", align 1
@.str.59 = private unnamed_addr constant [25 x i8] c"PPS: weighted_bipred_idc\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qp_minus26\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"PPS: pic_init_qs_minus26\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"PPS: chroma_qp_index_offset\00", align 1
@.str.63 = private unnamed_addr constant [44 x i8] c"PPS: deblocking_filter_control_present_flag\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"PPS: constrained_intra_pred_flag\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"PPS: redundant_pic_cnt_present_flag\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"PPS: transform_8x8_mode_flag\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"PPS: pic_scaling_matrix_present_flag\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"PPS: pic_scaling_list_present_flag\00", align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"PPS: second_chroma_qp_index_offset\00", align 1
@__const.GenerateSEImessage_rbsp.uuid_message = private unnamed_addr constant [9 x i8] c"RandomMSG", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"Empty Message\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"SEI: last_payload_type_byte\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"SEI: ff_byte\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"SEI: last_payload_size_byte\00", align 1
@.str.74 = private unnamed_addr constant [24 x i8] c"SEI: uuid_iso_iec_11578\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"SEI: user_data_payload_byte\00", align 1
@color_formats = common dso_local global i32 0, align 4
@top_pic = common dso_local global ptr null, align 8
@bottom_pic = common dso_local global ptr null, align 8
@frame_pic = common dso_local global ptr null, align 8
@frame_pic_1 = common dso_local global ptr null, align 8
@frame_pic_2 = common dso_local global ptr null, align 8
@frame_pic_3 = common dso_local global ptr null, align 8
@frame_pic_si = common dso_local global ptr null, align 8
@Bit_Buffer = common dso_local global ptr null, align 8
@imgY_org = common dso_local global ptr null, align 8
@imgUV_org = common dso_local global ptr null, align 8
@imgY_sub_tmp = common dso_local global ptr null, align 8
@PicPos = common dso_local global ptr null, align 8
@me_tot_time = common dso_local global i64 0, align 8
@me_time = common dso_local global i64 0, align 8
@dsr_new_search_range = common dso_local global i32 0, align 4
@mb_adaptive = common dso_local global i32 0, align 4
@MBPairIsField = common dso_local global i32 0, align 4
@wp_weight = common dso_local global ptr null, align 8
@wp_offset = common dso_local global ptr null, align 8
@wbp_weight = common dso_local global ptr null, align 8
@luma_log_weight_denom = common dso_local global i32 0, align 4
@chroma_log_weight_denom = common dso_local global i32 0, align 4
@wp_luma_round = common dso_local global i32 0, align 4
@wp_chroma_round = common dso_local global i32 0, align 4
@imgY_org_top = common dso_local global ptr null, align 8
@imgY_org_bot = common dso_local global ptr null, align 8
@imgUV_org_top = common dso_local global ptr null, align 8
@imgUV_org_bot = common dso_local global ptr null, align 8
@imgY_org_frm = common dso_local global ptr null, align 8
@imgUV_org_frm = common dso_local global ptr null, align 8
@imgY_com = common dso_local global ptr null, align 8
@imgUV_com = common dso_local global ptr null, align 8
@direct_ref_idx = common dso_local global ptr null, align 8
@direct_pdir = common dso_local global ptr null, align 8
@pixel_map = common dso_local global ptr null, align 8
@refresh_map = common dso_local global ptr null, align 8
@intras = common dso_local global i32 0, align 4
@frame_ctr = common dso_local global [5 x i32] zeroinitializer, align 4
@frame_no = common dso_local global i32 0, align 4
@nextP_tr_fld = common dso_local global i32 0, align 4
@nextP_tr_frm = common dso_local global i32 0, align 4
@tot_time = common dso_local global i64 0, align 8
@errortext = common dso_local global [300 x i8] zeroinitializer, align 1
@b8_ipredmode8x8 = common dso_local global [4 x [4 x i8]] zeroinitializer, align 1
@b8_intra_pred_modes8x8 = common dso_local global [16 x i8] zeroinitializer, align 1
@gop_structure = common dso_local global ptr null, align 8
@rdopt = common dso_local global ptr null, align 8
@rddata_top_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_top_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@p_stat = common dso_local global ptr null, align 8
@p_log = common dso_local global ptr null, align 8
@p_trace = common dso_local global ptr null, align 8
@p_in = common dso_local global i32 0, align 4
@p_dec = common dso_local global i32 0, align 4
@mb16x16_cost_frame = common dso_local global ptr null, align 8
@Bytes_After_Header = common dso_local global i32 0, align 4
@encode_one_macroblock = common dso_local global ptr null, align 8
@lrec = common dso_local global ptr null, align 8
@lrec_uv = common dso_local global ptr null, align 8
@si_frame_indicator = common dso_local global i32 0, align 4
@sp2_frame_indicator = common dso_local global i32 0, align 4
@number_sp2_frames = common dso_local global i32 0, align 4
@giRDOpt_B8OnlyFlag = common dso_local global i32 0, align 4
@imgY_tmp = common dso_local global ptr null, align 8
@imgUV_tmp = common dso_local global [2 x ptr] zeroinitializer, align 8
@frameNuminGOP = common dso_local global i32 0, align 4
@redundant_coding = common dso_local global i32 0, align 4
@key_frame = common dso_local global i32 0, align 4
@redundant_ref_idx = common dso_local global i32 0, align 4
@img_pad_size_uv_x = common dso_local global i32 0, align 4
@img_pad_size_uv_y = common dso_local global i32 0, align 4
@chroma_mask_mv_y = common dso_local global i8 0, align 1
@chroma_mask_mv_x = common dso_local global i8 0, align 1
@chroma_shift_y = common dso_local global i32 0, align 4
@chroma_shift_x = common dso_local global i32 0, align 4
@shift_cr_x = common dso_local global i32 0, align 4
@shift_cr_y = common dso_local global i32 0, align 4
@img_padded_size_x = common dso_local global i32 0, align 4
@img_cr_padded_size_x = common dso_local global i32 0, align 4
@start_me_refinement_hp = common dso_local global i32 0, align 4
@start_me_refinement_qp = common dso_local global i32 0, align 4
@WriteNALU = common dso_local global ptr null, align 8
@seiHasBufferingPeriod_info = common dso_local global i32 0, align 4
@seiBufferingPeriod = common dso_local global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common dso_local global i32 0, align 4
@seiPicTiming = common dso_local global %struct.pictiming_information_struct zeroinitializer, align 8
@.str.76 = private unnamed_addr constant [58 x i8] c"VUI: writing Sequence Parameter VUI to signal RGB format\0A\00", align 1
@.str.77 = private unnamed_addr constant [36 x i8] c"VUI: aspect_ratio_info_present_flag\00", align 1
@.str.78 = private unnamed_addr constant [32 x i8] c"VUI: overscan_info_present_flag\00", align 1
@.str.79 = private unnamed_addr constant [36 x i8] c"VUI: video_signal_type_present_flag\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"VUI: video format\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"VUI: video_full_range_flag\00", align 1
@.str.82 = private unnamed_addr constant [36 x i8] c"VUI: color_description_present_flag\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"VUI: colour primaries\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"VUI: transfer characteristics\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"VUI: matrix coefficients\00", align 1
@.str.86 = private unnamed_addr constant [34 x i8] c"VUI: chroma_loc_info_present_flag\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"VUI: timing_info_present_flag\00", align 1
@.str.88 = private unnamed_addr constant [37 x i8] c"VUI: nal_hrd_parameters_present_flag\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"VUI: vcl_hrd_parameters_present_flag\00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"VUI: pic_struc_present_flag\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"VUI: bitstream_restriction_flag\00", align 1
@.str.92 = private unnamed_addr constant [22 x i8] c"VUI: aspect_ratio_idc\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"VUI: num_units_in_tick\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"VUI: time_scale\00", align 1
@.str.95 = private unnamed_addr constant [27 x i8] c"VUI: fixed_frame_rate_flag\00", align 1
@.str.96 = private unnamed_addr constant [45 x i8] c"VUI: motion_vectors_over_pic_boundaries_flag\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"VUI: max_bytes_per_pic_denom\00", align 1
@.str.98 = private unnamed_addr constant [27 x i8] c"VUI: max_bits_per_mb_denom\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"VUI: log2_max_mv_length_horizontal\00", align 1
@.str.100 = private unnamed_addr constant [33 x i8] c"VUI: log2_max_mv_length_vertical\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"VUI: num_reorder_frames\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"VUI: max_dec_frame_buffering\00", align 1
@.str.103 = private unnamed_addr constant [76 x i8] c"Sequence Parameter VUI not yet implemented, this should never happen, exit\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @GenerateParameterSets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #7
  store ptr null, ptr %2, align 8, !tbaa !3
  %3 = call ptr @AllocSPS()
  store ptr %3, ptr %2, align 8, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, ptr %1, align 4, !tbaa !7
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 4, !tbaa !7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %9
  store ptr null, ptr %10, align 8, !tbaa !3
  br label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %1, align 4, !tbaa !7
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %1, align 4, !tbaa !7
  br label %4, !llvm.loop !9

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  call void @GenerateSequenceParameterSet(ptr noundef %15, i32 noundef signext 0)
  %16 = load ptr, ptr @input, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.InputParameters, ptr %16, i32 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !11
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %14
  %21 = call ptr @AllocPPS()
  store ptr %21, ptr @PicParSet, align 8, !tbaa !3
  %22 = call ptr @AllocPPS()
  store ptr %22, ptr getelementptr inbounds ([256 x ptr], ptr @PicParSet, i64 0, i64 1), align 8, !tbaa !3
  %23 = call ptr @AllocPPS()
  store ptr %23, ptr getelementptr inbounds ([256 x ptr], ptr @PicParSet, i64 0, i64 2), align 8, !tbaa !3
  %24 = load ptr, ptr %2, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !16
  %27 = icmp uge i32 %26, 100
  br i1 %27, label %28, label %53

28:                                               ; preds = %20
  %29 = load ptr, ptr @PicParSet, align 8, !tbaa !3
  %30 = load ptr, ptr %2, align 8, !tbaa !3
  %31 = load ptr, ptr @input, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct.InputParameters, ptr %31, i32 0, i32 177
  %33 = load i32, ptr %32, align 4, !tbaa !20
  %34 = load ptr, ptr @input, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.InputParameters, ptr %34, i32 0, i32 178
  %36 = load i32, ptr %35, align 8, !tbaa !21
  call void @GeneratePictureParameterSet(ptr noundef %29, ptr noundef %30, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %33, i32 noundef signext %36)
  %37 = load ptr, ptr getelementptr inbounds ([256 x ptr], ptr @PicParSet, i64 0, i64 1), align 8, !tbaa !3
  %38 = load ptr, ptr %2, align 8, !tbaa !3
  %39 = load ptr, ptr @input, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.InputParameters, ptr %39, i32 0, i32 177
  %41 = load i32, ptr %40, align 4, !tbaa !20
  %42 = load ptr, ptr @input, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.InputParameters, ptr %42, i32 0, i32 178
  %44 = load i32, ptr %43, align 8, !tbaa !21
  call void @GeneratePictureParameterSet(ptr noundef %37, ptr noundef %38, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %41, i32 noundef signext %44)
  %45 = load ptr, ptr getelementptr inbounds ([256 x ptr], ptr @PicParSet, i64 0, i64 2), align 8, !tbaa !3
  %46 = load ptr, ptr %2, align 8, !tbaa !3
  %47 = load ptr, ptr @input, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.InputParameters, ptr %47, i32 0, i32 177
  %49 = load i32, ptr %48, align 4, !tbaa !20
  %50 = load ptr, ptr @input, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.InputParameters, ptr %50, i32 0, i32 178
  %52 = load i32, ptr %51, align 8, !tbaa !21
  call void @GeneratePictureParameterSet(ptr noundef %45, ptr noundef %46, i32 noundef signext 2, i32 noundef signext 1, i32 noundef signext 2, i32 noundef signext %49, i32 noundef signext %52)
  br label %69

53:                                               ; preds = %20
  %54 = load ptr, ptr @PicParSet, align 8, !tbaa !3
  %55 = load ptr, ptr %2, align 8, !tbaa !3
  %56 = load ptr, ptr @input, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.InputParameters, ptr %56, i32 0, i32 105
  %58 = load i32, ptr %57, align 8, !tbaa !22
  call void @GeneratePictureParameterSet(ptr noundef %54, ptr noundef %55, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext %58, i32 noundef signext 0)
  %59 = load ptr, ptr getelementptr inbounds ([256 x ptr], ptr @PicParSet, i64 0, i64 1), align 8, !tbaa !3
  %60 = load ptr, ptr %2, align 8, !tbaa !3
  %61 = load ptr, ptr @input, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.InputParameters, ptr %61, i32 0, i32 105
  %63 = load i32, ptr %62, align 8, !tbaa !22
  call void @GeneratePictureParameterSet(ptr noundef %59, ptr noundef %60, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext 1, i32 noundef signext %63, i32 noundef signext 0)
  %64 = load ptr, ptr getelementptr inbounds ([256 x ptr], ptr @PicParSet, i64 0, i64 2), align 8, !tbaa !3
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  %66 = load ptr, ptr @input, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.InputParameters, ptr %66, i32 0, i32 105
  %68 = load i32, ptr %67, align 8, !tbaa !22
  call void @GeneratePictureParameterSet(ptr noundef %64, ptr noundef %65, i32 noundef signext 2, i32 noundef signext 1, i32 noundef signext 2, i32 noundef signext %68, i32 noundef signext 0)
  br label %69

69:                                               ; preds = %53, %28
  br label %104

70:                                               ; preds = %14
  %71 = call ptr @AllocPPS()
  store ptr %71, ptr @PicParSet, align 8, !tbaa !3
  %72 = load ptr, ptr %2, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !16
  %75 = icmp uge i32 %74, 100
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load ptr, ptr @PicParSet, align 8, !tbaa !3
  %78 = load ptr, ptr %2, align 8, !tbaa !3
  %79 = load ptr, ptr @input, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.InputParameters, ptr %79, i32 0, i32 59
  %81 = load i32, ptr %80, align 8, !tbaa !23
  %82 = load ptr, ptr @input, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.InputParameters, ptr %82, i32 0, i32 60
  %84 = load i32, ptr %83, align 4, !tbaa !24
  %85 = load ptr, ptr @input, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.InputParameters, ptr %85, i32 0, i32 177
  %87 = load i32, ptr %86, align 4, !tbaa !20
  %88 = load ptr, ptr @input, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.InputParameters, ptr %88, i32 0, i32 178
  %90 = load i32, ptr %89, align 8, !tbaa !21
  call void @GeneratePictureParameterSet(ptr noundef %77, ptr noundef %78, i32 noundef signext 0, i32 noundef signext %81, i32 noundef signext %84, i32 noundef signext %87, i32 noundef signext %90)
  br label %103

91:                                               ; preds = %70
  %92 = load ptr, ptr @PicParSet, align 8, !tbaa !3
  %93 = load ptr, ptr %2, align 8, !tbaa !3
  %94 = load ptr, ptr @input, align 8, !tbaa !3
  %95 = getelementptr inbounds nuw %struct.InputParameters, ptr %94, i32 0, i32 59
  %96 = load i32, ptr %95, align 8, !tbaa !23
  %97 = load ptr, ptr @input, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.InputParameters, ptr %97, i32 0, i32 60
  %99 = load i32, ptr %98, align 4, !tbaa !24
  %100 = load ptr, ptr @input, align 8, !tbaa !3
  %101 = getelementptr inbounds nuw %struct.InputParameters, ptr %100, i32 0, i32 105
  %102 = load i32, ptr %101, align 8, !tbaa !22
  call void @GeneratePictureParameterSet(ptr noundef %92, ptr noundef %93, i32 noundef signext 0, i32 noundef signext %96, i32 noundef signext %99, i32 noundef signext %102, i32 noundef signext 0)
  br label %103

103:                                              ; preds = %91, %76
  br label %104

104:                                              ; preds = %103, %69
  %105 = load ptr, ptr %2, align 8, !tbaa !3
  store ptr %105, ptr @active_sps, align 8, !tbaa !3
  %106 = load ptr, ptr @PicParSet, align 8, !tbaa !3
  store ptr %106, ptr @active_pps, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare ptr @AllocSPS() #2

; Function Attrs: nounwind
define dso_local void @GenerateSequenceParameterSet(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 4
  %7 = alloca [4 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr %6) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 @__const.GenerateSequenceParameterSet.SubWidthC, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %7) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %7, ptr align 4 @__const.GenerateSequenceParameterSet.SubHeightC, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  %14 = call signext i32 @IdentifyProfile()
  %15 = icmp eq i32 %14, 100
  br i1 %15, label %25, label %16

16:                                               ; preds = %2
  %17 = call signext i32 @IdentifyProfile()
  %18 = icmp eq i32 %17, 110
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = call signext i32 @IdentifyProfile()
  %21 = icmp eq i32 %20, 122
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call signext i32 @IdentifyProfile()
  %24 = icmp eq i32 %23, 144
  br label %25

25:                                               ; preds = %22, %19, %16, %2
  %26 = phi i1 [ true, %19 ], [ true, %16 ], [ true, %2 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  store i32 %27, ptr %8, align 4, !tbaa !7
  %28 = call signext i32 @IdentifyProfile()
  %29 = load ptr, ptr %3, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %29, i32 0, i32 1
  store i32 %28, ptr %30, align 4, !tbaa !16
  %31 = call signext i32 @IdentifyLevel()
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %32, i32 0, i32 6
  store i32 %31, ptr %33, align 4, !tbaa !25
  %34 = load ptr, ptr %3, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %34, i32 0, i32 2
  store i32 0, ptr %35, align 4, !tbaa !26
  %36 = load ptr, ptr %3, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %36, i32 0, i32 3
  store i32 0, ptr %37, align 4, !tbaa !27
  %38 = load ptr, ptr %3, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %38, i32 0, i32 4
  store i32 0, ptr %39, align 4, !tbaa !28
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %40, i32 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !25
  %43 = icmp eq i32 %42, 9
  br i1 %43, label %44, label %54

44:                                               ; preds = %25
  %45 = load ptr, ptr %3, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !16
  %48 = icmp ult i32 %47, 100
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load ptr, ptr %3, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %50, i32 0, i32 5
  store i32 1, ptr %51, align 4, !tbaa !29
  %52 = load ptr, ptr %3, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %52, i32 0, i32 6
  store i32 11, ptr %53, align 4, !tbaa !25
  br label %57

54:                                               ; preds = %44, %25
  %55 = load ptr, ptr %3, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %55, i32 0, i32 5
  store i32 0, ptr %56, align 4, !tbaa !29
  br label %57

57:                                               ; preds = %54, %49
  %58 = load ptr, ptr %3, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %58, i32 0, i32 7
  store i32 0, ptr %59, align 4, !tbaa !30
  %60 = load ptr, ptr @input, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.InputParameters, ptr %60, i32 0, i32 172
  %62 = load i32, ptr %61, align 8, !tbaa !31
  %63 = sub nsw i32 %62, 8
  %64 = load ptr, ptr %3, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %64, i32 0, i32 11
  store i32 %63, ptr %65, align 4, !tbaa !32
  %66 = load ptr, ptr @input, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.InputParameters, ptr %66, i32 0, i32 173
  %68 = load i32, ptr %67, align 4, !tbaa !33
  %69 = sub nsw i32 %68, 8
  %70 = load ptr, ptr %3, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %70, i32 0, i32 12
  store i32 %69, ptr %71, align 4, !tbaa !34
  %72 = load ptr, ptr @input, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.InputParameters, ptr %72, i32 0, i32 179
  %74 = load i32, ptr %73, align 4, !tbaa !35
  %75 = load ptr, ptr %3, align 8, !tbaa !3
  %76 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !16
  %78 = icmp eq i32 %77, 144
  %79 = zext i1 %78 to i32
  %80 = and i32 %74, %79
  %81 = load ptr, ptr @img, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.ImageParameters, ptr %81, i32 0, i32 161
  store i32 %80, ptr %82, align 4, !tbaa !36
  %83 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !7
  %84 = load ptr, ptr %3, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %84, i32 0, i32 13
  store i32 %83, ptr %85, align 4, !tbaa !53
  %86 = load i32, ptr @log2_max_pic_order_cnt_lsb_minus4, align 4, !tbaa !7
  %87 = load ptr, ptr %3, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %87, i32 0, i32 15
  store i32 %86, ptr %88, align 4, !tbaa !54
  %89 = load ptr, ptr @input, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.InputParameters, ptr %89, i32 0, i32 150
  %91 = load i32, ptr %90, align 8, !tbaa !55
  %92 = load ptr, ptr %3, align 8, !tbaa !3
  %93 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %92, i32 0, i32 14
  store i32 %91, ptr %93, align 4, !tbaa !56
  %94 = load ptr, ptr @img, align 8, !tbaa !3
  %95 = getelementptr inbounds nuw %struct.ImageParameters, ptr %94, i32 0, i32 105
  %96 = load i32, ptr %95, align 8, !tbaa !57
  %97 = load ptr, ptr %3, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %97, i32 0, i32 19
  store i32 %96, ptr %98, align 4, !tbaa !58
  %99 = load ptr, ptr @img, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.ImageParameters, ptr %99, i32 0, i32 102
  %101 = load i32, ptr %100, align 4, !tbaa !59
  %102 = load ptr, ptr %3, align 8, !tbaa !3
  %103 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %102, i32 0, i32 16
  store i32 %101, ptr %103, align 4, !tbaa !60
  %104 = load ptr, ptr @img, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.ImageParameters, ptr %104, i32 0, i32 103
  %106 = load i32, ptr %105, align 8, !tbaa !61
  %107 = load ptr, ptr %3, align 8, !tbaa !3
  %108 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %107, i32 0, i32 17
  store i32 %106, ptr %108, align 4, !tbaa !62
  %109 = load ptr, ptr @img, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct.ImageParameters, ptr %109, i32 0, i32 104
  %111 = load i32, ptr %110, align 4, !tbaa !63
  %112 = load ptr, ptr %3, align 8, !tbaa !3
  %113 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %112, i32 0, i32 18
  store i32 %111, ptr %113, align 4, !tbaa !64
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %114

114:                                              ; preds = %132, %57
  %115 = load i32, ptr %5, align 4, !tbaa !7
  %116 = load ptr, ptr @img, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %116, i32 0, i32 105
  %118 = load i32, ptr %117, align 8, !tbaa !57
  %119 = icmp ult i32 %115, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load ptr, ptr @img, align 8, !tbaa !3
  %122 = getelementptr inbounds nuw %struct.ImageParameters, ptr %121, i32 0, i32 106
  %123 = load i32, ptr %5, align 4, !tbaa !7
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw [1 x i32], ptr %122, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !7
  %127 = load ptr, ptr %3, align 8, !tbaa !3
  %128 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %127, i32 0, i32 20
  %129 = load i32, ptr %5, align 4, !tbaa !7
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds nuw [256 x i32], ptr %128, i64 0, i64 %130
  store i32 %126, ptr %131, align 4, !tbaa !7
  br label %132

132:                                              ; preds = %120
  %133 = load i32, ptr %5, align 4, !tbaa !7
  %134 = add i32 %133, 1
  store i32 %134, ptr %5, align 4, !tbaa !7
  br label %114, !llvm.loop !65

135:                                              ; preds = %114
  %136 = load ptr, ptr @input, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.InputParameters, ptr %136, i32 0, i32 8
  %138 = load i32, ptr %137, align 8, !tbaa !66
  %139 = load ptr, ptr %3, align 8, !tbaa !3
  %140 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %139, i32 0, i32 21
  store i32 %138, ptr %140, align 4, !tbaa !67
  %141 = load ptr, ptr %3, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %141, i32 0, i32 22
  store i32 0, ptr %142, align 4, !tbaa !68
  %143 = load ptr, ptr @input, align 8, !tbaa !3
  %144 = getelementptr inbounds nuw %struct.InputParameters, ptr %143, i32 0, i32 121
  %145 = load i32, ptr %144, align 8, !tbaa !69
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %135
  %148 = load ptr, ptr @input, align 8, !tbaa !3
  %149 = getelementptr inbounds nuw %struct.InputParameters, ptr %148, i32 0, i32 122
  %150 = load i32, ptr %149, align 4, !tbaa !70
  %151 = icmp ne i32 %150, 0
  br label %152

152:                                              ; preds = %147, %135
  %153 = phi i1 [ true, %135 ], [ %151, %147 ]
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = load ptr, ptr %3, align 8, !tbaa !3
  %157 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %156, i32 0, i32 25
  store i32 %155, ptr %157, align 4, !tbaa !71
  %158 = load ptr, ptr @input, align 8, !tbaa !3
  %159 = getelementptr inbounds nuw %struct.InputParameters, ptr %158, i32 0, i32 14
  %160 = load i32, ptr %159, align 8, !tbaa !72
  %161 = load ptr, ptr @img, align 8, !tbaa !3
  %162 = getelementptr inbounds nuw %struct.ImageParameters, ptr %161, i32 0, i32 166
  %163 = load i32, ptr %162, align 8, !tbaa !73
  %164 = add nsw i32 %160, %163
  %165 = sdiv i32 %164, 16
  %166 = sub nsw i32 %165, 1
  %167 = load ptr, ptr %3, align 8, !tbaa !3
  %168 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %167, i32 0, i32 23
  store i32 %166, ptr %168, align 4, !tbaa !74
  %169 = load ptr, ptr @input, align 8, !tbaa !3
  %170 = getelementptr inbounds nuw %struct.InputParameters, ptr %169, i32 0, i32 15
  %171 = load i32, ptr %170, align 4, !tbaa !75
  %172 = load ptr, ptr @img, align 8, !tbaa !3
  %173 = getelementptr inbounds nuw %struct.ImageParameters, ptr %172, i32 0, i32 167
  %174 = load i32, ptr %173, align 4, !tbaa !76
  %175 = add nsw i32 %171, %174
  %176 = sdiv i32 %175, 16
  %177 = load ptr, ptr %3, align 8, !tbaa !3
  %178 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %177, i32 0, i32 25
  %179 = load i32, ptr %178, align 4, !tbaa !71
  %180 = sub i32 2, %179
  %181 = udiv i32 %176, %180
  %182 = sub i32 %181, 1
  %183 = load ptr, ptr %3, align 8, !tbaa !3
  %184 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %183, i32 0, i32 24
  store i32 %182, ptr %184, align 4, !tbaa !77
  %185 = load ptr, ptr @input, align 8, !tbaa !3
  %186 = getelementptr inbounds nuw %struct.InputParameters, ptr %185, i32 0, i32 122
  %187 = load i32, ptr %186, align 4, !tbaa !70
  %188 = icmp ne i32 0, %187
  %189 = zext i1 %188 to i32
  %190 = load ptr, ptr %3, align 8, !tbaa !3
  %191 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %190, i32 0, i32 26
  store i32 %189, ptr %191, align 4, !tbaa !78
  %192 = load ptr, ptr @input, align 8, !tbaa !3
  %193 = getelementptr inbounds nuw %struct.InputParameters, ptr %192, i32 0, i32 45
  %194 = load i32, ptr %193, align 4, !tbaa !79
  %195 = load ptr, ptr %3, align 8, !tbaa !3
  %196 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %195, i32 0, i32 27
  store i32 %194, ptr %196, align 4, !tbaa !80
  %197 = load ptr, ptr @input, align 8, !tbaa !3
  %198 = getelementptr inbounds nuw %struct.InputParameters, ptr %197, i32 0, i32 176
  %199 = load i32, ptr %198, align 8, !tbaa !81
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %152
  %202 = load ptr, ptr @input, align 8, !tbaa !3
  %203 = getelementptr inbounds nuw %struct.InputParameters, ptr %202, i32 0, i32 16
  %204 = load i32, ptr %203, align 8, !tbaa !82
  %205 = icmp eq i32 %204, 3
  br i1 %205, label %211, label %206

206:                                              ; preds = %201, %152
  %207 = load ptr, ptr @input, align 8, !tbaa !3
  %208 = getelementptr inbounds nuw %struct.InputParameters, ptr %207, i32 0, i32 35
  %209 = load i32, ptr %208, align 4, !tbaa !83
  %210 = icmp ne i32 %209, 0
  br label %211

211:                                              ; preds = %206, %201
  %212 = phi i1 [ true, %201 ], [ %210, %206 ]
  %213 = zext i1 %212 to i32
  %214 = load ptr, ptr %3, align 8, !tbaa !3
  %215 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %214, i32 0, i32 33
  store i32 %213, ptr %215, align 4, !tbaa !84
  %216 = load ptr, ptr @input, align 8, !tbaa !3
  %217 = getelementptr inbounds nuw %struct.InputParameters, ptr %216, i32 0, i32 16
  %218 = load i32, ptr %217, align 8, !tbaa !82
  %219 = load ptr, ptr %3, align 8, !tbaa !3
  %220 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %219, i32 0, i32 8
  store i32 %218, ptr %220, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  %221 = load ptr, ptr %3, align 8, !tbaa !3
  %222 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %221, i32 0, i32 23
  %223 = load i32, ptr %222, align 4, !tbaa !74
  %224 = add i32 %223, 1
  store i32 %224, ptr %9, align 4, !tbaa !7
  %225 = load ptr, ptr %3, align 8, !tbaa !3
  %226 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %225, i32 0, i32 24
  %227 = load i32, ptr %226, align 4, !tbaa !77
  %228 = add i32 %227, 1
  store i32 %228, ptr %10, align 4, !tbaa !7
  %229 = load ptr, ptr %3, align 8, !tbaa !3
  %230 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %229, i32 0, i32 25
  %231 = load i32, ptr %230, align 4, !tbaa !71
  %232 = sub i32 2, %231
  %233 = load i32, ptr %10, align 4, !tbaa !7
  %234 = mul i32 %232, %233
  store i32 %234, ptr %11, align 4, !tbaa !7
  %235 = load i32, ptr %9, align 4, !tbaa !7
  %236 = mul nsw i32 %235, 16
  store i32 %236, ptr %12, align 4, !tbaa !7
  %237 = load i32, ptr %11, align 4, !tbaa !7
  %238 = mul nsw i32 %237, 16
  store i32 %238, ptr %13, align 4, !tbaa !7
  %239 = load i32, ptr %12, align 4, !tbaa !7
  %240 = load i32, ptr %13, align 4, !tbaa !7
  %241 = load ptr, ptr %3, align 8, !tbaa !3
  %242 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %241, i32 0, i32 26
  %243 = load i32, ptr %242, align 4, !tbaa !78
  %244 = call ptr @alloc_colocated(i32 noundef signext %239, i32 noundef signext %240, i32 noundef signext %243)
  store ptr %244, ptr @Co_located, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  %245 = load i32, ptr %8, align 4, !tbaa !7
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %303

247:                                              ; preds = %211
  %248 = load ptr, ptr @input, align 8, !tbaa !3
  %249 = getelementptr inbounds nuw %struct.InputParameters, ptr %248, i32 0, i32 167
  %250 = load i32, ptr %249, align 8, !tbaa !88
  %251 = and i32 %250, 1
  %252 = load ptr, ptr %3, align 8, !tbaa !3
  %253 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %252, i32 0, i32 9
  store i32 %251, ptr %253, align 4, !tbaa !89
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %254

254:                                              ; preds = %299, %247
  %255 = load i32, ptr %5, align 4, !tbaa !7
  %256 = icmp ult i32 %255, 8
  br i1 %256, label %257, label %302

257:                                              ; preds = %254
  %258 = load i32, ptr %5, align 4, !tbaa !7
  %259 = icmp ult i32 %258, 6
  br i1 %259, label %260, label %273

260:                                              ; preds = %257
  %261 = load ptr, ptr @input, align 8, !tbaa !3
  %262 = getelementptr inbounds nuw %struct.InputParameters, ptr %261, i32 0, i32 168
  %263 = load i32, ptr %5, align 4, !tbaa !7
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds nuw [8 x i32], ptr %262, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !7
  %267 = and i32 %266, 1
  %268 = load ptr, ptr %3, align 8, !tbaa !3
  %269 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %268, i32 0, i32 10
  %270 = load i32, ptr %5, align 4, !tbaa !7
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds nuw [8 x i32], ptr %269, i64 0, i64 %271
  store i32 %267, ptr %272, align 4, !tbaa !7
  br label %298

273:                                              ; preds = %257
  %274 = load ptr, ptr @input, align 8, !tbaa !3
  %275 = getelementptr inbounds nuw %struct.InputParameters, ptr %274, i32 0, i32 153
  %276 = load i32, ptr %275, align 4, !tbaa !90
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %291

278:                                              ; preds = %273
  %279 = load ptr, ptr @input, align 8, !tbaa !3
  %280 = getelementptr inbounds nuw %struct.InputParameters, ptr %279, i32 0, i32 168
  %281 = load i32, ptr %5, align 4, !tbaa !7
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds nuw [8 x i32], ptr %280, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !7
  %285 = and i32 %284, 1
  %286 = load ptr, ptr %3, align 8, !tbaa !3
  %287 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %286, i32 0, i32 10
  %288 = load i32, ptr %5, align 4, !tbaa !7
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds nuw [8 x i32], ptr %287, i64 0, i64 %289
  store i32 %285, ptr %290, align 4, !tbaa !7
  br label %297

291:                                              ; preds = %273
  %292 = load ptr, ptr %3, align 8, !tbaa !3
  %293 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %292, i32 0, i32 10
  %294 = load i32, ptr %5, align 4, !tbaa !7
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds nuw [8 x i32], ptr %293, i64 0, i64 %295
  store i32 0, ptr %296, align 4, !tbaa !7
  br label %297

297:                                              ; preds = %291, %278
  br label %298

298:                                              ; preds = %297, %260
  br label %299

299:                                              ; preds = %298
  %300 = load i32, ptr %5, align 4, !tbaa !7
  %301 = add i32 %300, 1
  store i32 %301, ptr %5, align 4, !tbaa !7
  br label %254, !llvm.loop !91

302:                                              ; preds = %254
  br label %319

303:                                              ; preds = %211
  %304 = load ptr, ptr %3, align 8, !tbaa !3
  %305 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %304, i32 0, i32 9
  store i32 0, ptr %305, align 4, !tbaa !89
  store i32 0, ptr %5, align 4, !tbaa !7
  br label %306

306:                                              ; preds = %315, %303
  %307 = load i32, ptr %5, align 4, !tbaa !7
  %308 = icmp ult i32 %307, 8
  br i1 %308, label %309, label %318

309:                                              ; preds = %306
  %310 = load ptr, ptr %3, align 8, !tbaa !3
  %311 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %310, i32 0, i32 10
  %312 = load i32, ptr %5, align 4, !tbaa !7
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds nuw [8 x i32], ptr %311, i64 0, i64 %313
  store i32 0, ptr %314, align 4, !tbaa !7
  br label %315

315:                                              ; preds = %309
  %316 = load i32, ptr %5, align 4, !tbaa !7
  %317 = add i32 %316, 1
  store i32 %317, ptr %5, align 4, !tbaa !7
  br label %306, !llvm.loop !92

318:                                              ; preds = %306
  br label %319

319:                                              ; preds = %318, %302
  %320 = load ptr, ptr @img, align 8, !tbaa !3
  %321 = getelementptr inbounds nuw %struct.ImageParameters, ptr %320, i32 0, i32 166
  %322 = load i32, ptr %321, align 8, !tbaa !73
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %319
  %325 = load ptr, ptr @img, align 8, !tbaa !3
  %326 = getelementptr inbounds nuw %struct.ImageParameters, ptr %325, i32 0, i32 167
  %327 = load i32, ptr %326, align 4, !tbaa !76
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %396

329:                                              ; preds = %324, %319
  %330 = load ptr, ptr %3, align 8, !tbaa !3
  %331 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %330, i32 0, i32 28
  store i32 1, ptr %331, align 4, !tbaa !93
  %332 = load ptr, ptr %3, align 8, !tbaa !3
  %333 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %332, i32 0, i32 29
  store i32 0, ptr %333, align 4, !tbaa !94
  %334 = load ptr, ptr %3, align 8, !tbaa !3
  %335 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %334, i32 0, i32 31
  store i32 0, ptr %335, align 4, !tbaa !95
  %336 = load ptr, ptr @img, align 8, !tbaa !3
  %337 = getelementptr inbounds nuw %struct.ImageParameters, ptr %336, i32 0, i32 166
  %338 = load i32, ptr %337, align 8, !tbaa !73
  %339 = load ptr, ptr %3, align 8, !tbaa !3
  %340 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %339, i32 0, i32 8
  %341 = load i32, ptr %340, align 4, !tbaa !85
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds nuw [4 x i32], ptr %6, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !7
  %345 = sdiv i32 %338, %344
  %346 = load ptr, ptr %3, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %346, i32 0, i32 30
  store i32 %345, ptr %347, align 4, !tbaa !96
  %348 = load ptr, ptr @img, align 8, !tbaa !3
  %349 = getelementptr inbounds nuw %struct.ImageParameters, ptr %348, i32 0, i32 167
  %350 = load i32, ptr %349, align 4, !tbaa !76
  %351 = load ptr, ptr %3, align 8, !tbaa !3
  %352 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %351, i32 0, i32 8
  %353 = load i32, ptr %352, align 4, !tbaa !85
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds nuw [4 x i32], ptr %7, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !7
  %357 = load ptr, ptr %3, align 8, !tbaa !3
  %358 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %357, i32 0, i32 25
  %359 = load i32, ptr %358, align 4, !tbaa !71
  %360 = sub i32 2, %359
  %361 = mul i32 %356, %360
  %362 = udiv i32 %350, %361
  %363 = load ptr, ptr %3, align 8, !tbaa !3
  %364 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %363, i32 0, i32 32
  store i32 %362, ptr %364, align 4, !tbaa !97
  %365 = load ptr, ptr @img, align 8, !tbaa !3
  %366 = getelementptr inbounds nuw %struct.ImageParameters, ptr %365, i32 0, i32 166
  %367 = load i32, ptr %366, align 8, !tbaa !73
  %368 = load ptr, ptr %3, align 8, !tbaa !3
  %369 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %368, i32 0, i32 8
  %370 = load i32, ptr %369, align 4, !tbaa !85
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds nuw [4 x i32], ptr %6, i64 0, i64 %371
  %373 = load i32, ptr %372, align 4, !tbaa !7
  %374 = srem i32 %367, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %329
  call void @error(ptr noundef @.str, i32 noundef signext 500)
  br label %377

377:                                              ; preds = %376, %329
  %378 = load ptr, ptr @img, align 8, !tbaa !3
  %379 = getelementptr inbounds nuw %struct.ImageParameters, ptr %378, i32 0, i32 167
  %380 = load i32, ptr %379, align 4, !tbaa !76
  %381 = load ptr, ptr %3, align 8, !tbaa !3
  %382 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %381, i32 0, i32 8
  %383 = load i32, ptr %382, align 4, !tbaa !85
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds nuw [4 x i32], ptr %7, i64 0, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !7
  %387 = load ptr, ptr %3, align 8, !tbaa !3
  %388 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %387, i32 0, i32 25
  %389 = load i32, ptr %388, align 4, !tbaa !71
  %390 = sub i32 2, %389
  %391 = mul i32 %386, %390
  %392 = urem i32 %380, %391
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %395

394:                                              ; preds = %377
  call void @error(ptr noundef @.str.1, i32 noundef signext 500)
  br label %395

395:                                              ; preds = %394, %377
  br label %399

396:                                              ; preds = %324
  %397 = load ptr, ptr %3, align 8, !tbaa !3
  %398 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %397, i32 0, i32 28
  store i32 0, ptr %398, align 4, !tbaa !93
  br label %399

399:                                              ; preds = %396, %395
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret void
}

declare ptr @AllocPPS() #2

; Function Attrs: nounwind
define dso_local void @GeneratePictureParameterSet(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %8, align 8, !tbaa !3
  store ptr %1, ptr %9, align 8, !tbaa !3
  store i32 %2, ptr %10, align 4, !tbaa !7
  store i32 %3, ptr %11, align 4, !tbaa !7
  store i32 %4, ptr %12, align 4, !tbaa !7
  store i32 %5, ptr %13, align 4, !tbaa !7
  store i32 %6, ptr %14, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  %17 = call signext i32 @IdentifyProfile()
  %18 = icmp eq i32 %17, 100
  br i1 %18, label %28, label %19

19:                                               ; preds = %7
  %20 = call signext i32 @IdentifyProfile()
  %21 = icmp eq i32 %20, 110
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = call signext i32 @IdentifyProfile()
  %24 = icmp eq i32 %23, 122
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call signext i32 @IdentifyProfile()
  %27 = icmp eq i32 %26, 144
  br label %28

28:                                               ; preds = %25, %22, %19, %7
  %29 = phi i1 [ true, %22 ], [ true, %19 ], [ true, %7 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, ptr %16, align 4, !tbaa !7
  %31 = load ptr, ptr %9, align 8, !tbaa !3
  %32 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %31, i32 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !30
  %34 = load ptr, ptr %8, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %34, i32 0, i32 2
  store i32 %33, ptr %35, align 8, !tbaa !98
  %36 = load i32, ptr %10, align 4, !tbaa !7
  %37 = load ptr, ptr %8, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %37, i32 0, i32 1
  store i32 %36, ptr %38, align 4, !tbaa !100
  %39 = load ptr, ptr @input, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.InputParameters, ptr %39, i32 0, i32 74
  %41 = load i32, ptr %40, align 8, !tbaa !101
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  %45 = load ptr, ptr %8, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %45, i32 0, i32 3
  store i32 %44, ptr %46, align 4, !tbaa !102
  %47 = load i32, ptr %16, align 4, !tbaa !7
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %116

49:                                               ; preds = %28
  %50 = load ptr, ptr @input, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.InputParameters, ptr %50, i32 0, i32 153
  %52 = load i32, ptr %51, align 4, !tbaa !90
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load ptr, ptr %8, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %56, i32 0, i32 4
  store i32 %55, ptr %57, align 8, !tbaa !103
  %58 = load ptr, ptr @input, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.InputParameters, ptr %58, i32 0, i32 167
  %60 = load i32, ptr %59, align 8, !tbaa !88
  %61 = and i32 %60, 2
  %62 = ashr i32 %61, 1
  %63 = load ptr, ptr %8, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %63, i32 0, i32 5
  store i32 %62, ptr %64, align 4, !tbaa !104
  store i32 0, ptr %15, align 4, !tbaa !7
  br label %65

65:                                               ; preds = %112, %49
  %66 = load i32, ptr %15, align 4, !tbaa !7
  %67 = icmp ult i32 %66, 8
  br i1 %67, label %68, label %115

68:                                               ; preds = %65
  %69 = load i32, ptr %15, align 4, !tbaa !7
  %70 = icmp ult i32 %69, 6
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load ptr, ptr @input, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.InputParameters, ptr %72, i32 0, i32 168
  %74 = load i32, ptr %15, align 4, !tbaa !7
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds nuw [8 x i32], ptr %73, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !7
  %78 = and i32 %77, 2
  %79 = ashr i32 %78, 1
  %80 = load ptr, ptr %8, align 8, !tbaa !3
  %81 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %80, i32 0, i32 6
  %82 = load i32, ptr %15, align 4, !tbaa !7
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds nuw [8 x i32], ptr %81, i64 0, i64 %83
  store i32 %79, ptr %84, align 4, !tbaa !7
  br label %111

85:                                               ; preds = %68
  %86 = load ptr, ptr %8, align 8, !tbaa !3
  %87 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %86, i32 0, i32 4
  %88 = load i32, ptr %87, align 8, !tbaa !103
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load ptr, ptr @input, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.InputParameters, ptr %91, i32 0, i32 168
  %93 = load i32, ptr %15, align 4, !tbaa !7
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds nuw [8 x i32], ptr %92, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !7
  %97 = and i32 %96, 2
  %98 = ashr i32 %97, 1
  %99 = load ptr, ptr %8, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %99, i32 0, i32 6
  %101 = load i32, ptr %15, align 4, !tbaa !7
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds nuw [8 x i32], ptr %100, i64 0, i64 %102
  store i32 %98, ptr %103, align 4, !tbaa !7
  br label %110

104:                                              ; preds = %85
  %105 = load ptr, ptr %8, align 8, !tbaa !3
  %106 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %105, i32 0, i32 6
  %107 = load i32, ptr %15, align 4, !tbaa !7
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds nuw [8 x i32], ptr %106, i64 0, i64 %108
  store i32 0, ptr %109, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %104, %90
  br label %111

111:                                              ; preds = %110, %71
  br label %112

112:                                              ; preds = %111
  %113 = load i32, ptr %15, align 4, !tbaa !7
  %114 = add i32 %113, 1
  store i32 %114, ptr %15, align 4, !tbaa !7
  br label %65, !llvm.loop !105

115:                                              ; preds = %65
  br label %136

116:                                              ; preds = %28
  %117 = load ptr, ptr %8, align 8, !tbaa !3
  %118 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %117, i32 0, i32 5
  store i32 0, ptr %118, align 4, !tbaa !104
  store i32 0, ptr %15, align 4, !tbaa !7
  br label %119

119:                                              ; preds = %128, %116
  %120 = load i32, ptr %15, align 4, !tbaa !7
  %121 = icmp ult i32 %120, 8
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load ptr, ptr %8, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %123, i32 0, i32 6
  %125 = load i32, ptr %15, align 4, !tbaa !7
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds nuw [8 x i32], ptr %124, i64 0, i64 %126
  store i32 0, ptr %127, align 4, !tbaa !7
  br label %128

128:                                              ; preds = %122
  %129 = load i32, ptr %15, align 4, !tbaa !7
  %130 = add i32 %129, 1
  store i32 %130, ptr %15, align 4, !tbaa !7
  br label %119, !llvm.loop !106

131:                                              ; preds = %119
  %132 = load ptr, ptr %8, align 8, !tbaa !3
  %133 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %132, i32 0, i32 4
  store i32 0, ptr %133, align 8, !tbaa !103
  %134 = load ptr, ptr @input, align 8, !tbaa !3
  %135 = getelementptr inbounds nuw %struct.InputParameters, ptr %134, i32 0, i32 153
  store i32 0, ptr %135, align 4, !tbaa !90
  br label %136

136:                                              ; preds = %131, %115
  %137 = load ptr, ptr @img, align 8, !tbaa !3
  %138 = getelementptr inbounds nuw %struct.ImageParameters, ptr %137, i32 0, i32 121
  %139 = load i32, ptr %138, align 4, !tbaa !107
  %140 = load ptr, ptr %8, align 8, !tbaa !3
  %141 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %140, i32 0, i32 7
  store i32 %139, ptr %141, align 8, !tbaa !108
  %142 = load ptr, ptr @input, align 8, !tbaa !3
  %143 = getelementptr inbounds nuw %struct.InputParameters, ptr %142, i32 0, i32 140
  %144 = load i32, ptr %143, align 8, !tbaa !109
  %145 = load ptr, ptr %8, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %145, i32 0, i32 8
  store i32 %144, ptr %146, align 4, !tbaa !110
  %147 = load ptr, ptr %8, align 8, !tbaa !3
  %148 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %147, i32 0, i32 8
  %149 = load i32, ptr %148, align 4, !tbaa !110
  %150 = icmp ugt i32 %149, 0
  br i1 %150, label %151, label %309

151:                                              ; preds = %136
  %152 = load ptr, ptr %9, align 8, !tbaa !3
  %153 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %152, i32 0, i32 24
  %154 = load i32, ptr %153, align 4, !tbaa !77
  %155 = add i32 %154, 1
  %156 = load ptr, ptr %9, align 8, !tbaa !3
  %157 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %156, i32 0, i32 23
  %158 = load i32, ptr %157, align 4, !tbaa !74
  %159 = add i32 %158, 1
  %160 = mul i32 %155, %159
  %161 = zext i32 %160 to i64
  %162 = call noalias ptr @calloc(i64 noundef %161, i64 noundef 1) #8
  %163 = load ptr, ptr %8, align 8, !tbaa !3
  %164 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %163, i32 0, i32 16
  store ptr %162, ptr %164, align 8, !tbaa !111
  %165 = icmp eq ptr %162, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  call void @no_mem_exit(ptr noundef @.str.2)
  br label %167

167:                                              ; preds = %166, %151
  %168 = load ptr, ptr @input, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.InputParameters, ptr %168, i32 0, i32 141
  %170 = load i32, ptr %169, align 4, !tbaa !112
  switch i32 %170, label %306 [
    i32 0, label %171
    i32 1, label %197
    i32 2, label %200
    i32 3, label %238
    i32 4, label %238
    i32 5, label %238
    i32 6, label %254
  ]

171:                                              ; preds = %167
  %172 = load ptr, ptr %8, align 8, !tbaa !3
  %173 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %172, i32 0, i32 9
  store i32 0, ptr %173, align 8, !tbaa !113
  store i32 0, ptr %15, align 4, !tbaa !7
  br label %174

174:                                              ; preds = %193, %171
  %175 = load i32, ptr %15, align 4, !tbaa !7
  %176 = load ptr, ptr %8, align 8, !tbaa !3
  %177 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %176, i32 0, i32 8
  %178 = load i32, ptr %177, align 4, !tbaa !110
  %179 = icmp ule i32 %175, %178
  br i1 %179, label %180, label %196

180:                                              ; preds = %174
  %181 = load ptr, ptr @input, align 8, !tbaa !3
  %182 = getelementptr inbounds nuw %struct.InputParameters, ptr %181, i32 0, i32 145
  %183 = load ptr, ptr %182, align 8, !tbaa !114
  %184 = load i32, ptr %15, align 4, !tbaa !7
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds nuw i32, ptr %183, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !7
  %188 = load ptr, ptr %8, align 8, !tbaa !3
  %189 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %188, i32 0, i32 10
  %190 = load i32, ptr %15, align 4, !tbaa !7
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds nuw [8 x i32], ptr %189, i64 0, i64 %191
  store i32 %187, ptr %192, align 4, !tbaa !7
  br label %193

193:                                              ; preds = %180
  %194 = load i32, ptr %15, align 4, !tbaa !7
  %195 = add i32 %194, 1
  store i32 %195, ptr %15, align 4, !tbaa !7
  br label %174, !llvm.loop !115

196:                                              ; preds = %174
  br label %308

197:                                              ; preds = %167
  %198 = load ptr, ptr %8, align 8, !tbaa !3
  %199 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %198, i32 0, i32 9
  store i32 1, ptr %199, align 8, !tbaa !113
  br label %308

200:                                              ; preds = %167
  %201 = load ptr, ptr %8, align 8, !tbaa !3
  %202 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %201, i32 0, i32 9
  store i32 2, ptr %202, align 8, !tbaa !113
  store i32 0, ptr %15, align 4, !tbaa !7
  br label %203

203:                                              ; preds = %234, %200
  %204 = load i32, ptr %15, align 4, !tbaa !7
  %205 = load ptr, ptr %8, align 8, !tbaa !3
  %206 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %205, i32 0, i32 8
  %207 = load i32, ptr %206, align 4, !tbaa !110
  %208 = icmp ult i32 %204, %207
  br i1 %208, label %209, label %237

209:                                              ; preds = %203
  %210 = load ptr, ptr @input, align 8, !tbaa !3
  %211 = getelementptr inbounds nuw %struct.InputParameters, ptr %210, i32 0, i32 142
  %212 = load ptr, ptr %211, align 8, !tbaa !116
  %213 = load i32, ptr %15, align 4, !tbaa !7
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds nuw i32, ptr %212, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !7
  %217 = load ptr, ptr %8, align 8, !tbaa !3
  %218 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %217, i32 0, i32 11
  %219 = load i32, ptr %15, align 4, !tbaa !7
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds nuw [8 x i32], ptr %218, i64 0, i64 %220
  store i32 %216, ptr %221, align 4, !tbaa !7
  %222 = load ptr, ptr @input, align 8, !tbaa !3
  %223 = getelementptr inbounds nuw %struct.InputParameters, ptr %222, i32 0, i32 143
  %224 = load ptr, ptr %223, align 8, !tbaa !117
  %225 = load i32, ptr %15, align 4, !tbaa !7
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds nuw i32, ptr %224, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !7
  %229 = load ptr, ptr %8, align 8, !tbaa !3
  %230 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %229, i32 0, i32 12
  %231 = load i32, ptr %15, align 4, !tbaa !7
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds nuw [8 x i32], ptr %230, i64 0, i64 %232
  store i32 %228, ptr %233, align 4, !tbaa !7
  br label %234

234:                                              ; preds = %209
  %235 = load i32, ptr %15, align 4, !tbaa !7
  %236 = add i32 %235, 1
  store i32 %236, ptr %15, align 4, !tbaa !7
  br label %203, !llvm.loop !118

237:                                              ; preds = %203
  br label %308

238:                                              ; preds = %167, %167, %167
  %239 = load ptr, ptr @input, align 8, !tbaa !3
  %240 = getelementptr inbounds nuw %struct.InputParameters, ptr %239, i32 0, i32 141
  %241 = load i32, ptr %240, align 4, !tbaa !112
  %242 = load ptr, ptr %8, align 8, !tbaa !3
  %243 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %242, i32 0, i32 9
  store i32 %241, ptr %243, align 8, !tbaa !113
  %244 = load ptr, ptr @input, align 8, !tbaa !3
  %245 = getelementptr inbounds nuw %struct.InputParameters, ptr %244, i32 0, i32 146
  %246 = load i32, ptr %245, align 8, !tbaa !119
  %247 = load ptr, ptr %8, align 8, !tbaa !3
  %248 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %247, i32 0, i32 13
  store i32 %246, ptr %248, align 4, !tbaa !120
  %249 = load ptr, ptr @input, align 8, !tbaa !3
  %250 = getelementptr inbounds nuw %struct.InputParameters, ptr %249, i32 0, i32 147
  %251 = load i32, ptr %250, align 4, !tbaa !121
  %252 = load ptr, ptr %8, align 8, !tbaa !3
  %253 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %252, i32 0, i32 14
  store i32 %251, ptr %253, align 8, !tbaa !122
  br label %308

254:                                              ; preds = %167
  %255 = load ptr, ptr %8, align 8, !tbaa !3
  %256 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %255, i32 0, i32 9
  store i32 6, ptr %256, align 8, !tbaa !113
  %257 = load ptr, ptr @input, align 8, !tbaa !3
  %258 = getelementptr inbounds nuw %struct.InputParameters, ptr %257, i32 0, i32 15
  %259 = load i32, ptr %258, align 4, !tbaa !75
  %260 = load ptr, ptr @img, align 8, !tbaa !3
  %261 = getelementptr inbounds nuw %struct.ImageParameters, ptr %260, i32 0, i32 167
  %262 = load i32, ptr %261, align 4, !tbaa !76
  %263 = add nsw i32 %259, %262
  %264 = sdiv i32 %263, 16
  %265 = load ptr, ptr %9, align 8, !tbaa !3
  %266 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %265, i32 0, i32 25
  %267 = load i32, ptr %266, align 4, !tbaa !71
  %268 = sub i32 2, %267
  %269 = udiv i32 %264, %268
  %270 = load ptr, ptr @input, align 8, !tbaa !3
  %271 = getelementptr inbounds nuw %struct.InputParameters, ptr %270, i32 0, i32 14
  %272 = load i32, ptr %271, align 8, !tbaa !72
  %273 = load ptr, ptr @img, align 8, !tbaa !3
  %274 = getelementptr inbounds nuw %struct.ImageParameters, ptr %273, i32 0, i32 166
  %275 = load i32, ptr %274, align 8, !tbaa !73
  %276 = add nsw i32 %272, %275
  %277 = sdiv i32 %276, 16
  %278 = mul i32 %269, %277
  %279 = sub i32 %278, 1
  %280 = load ptr, ptr %8, align 8, !tbaa !3
  %281 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %280, i32 0, i32 15
  store i32 %279, ptr %281, align 4, !tbaa !123
  store i32 0, ptr %15, align 4, !tbaa !7
  br label %282

282:                                              ; preds = %302, %254
  %283 = load i32, ptr %15, align 4, !tbaa !7
  %284 = load ptr, ptr %8, align 8, !tbaa !3
  %285 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %284, i32 0, i32 15
  %286 = load i32, ptr %285, align 4, !tbaa !123
  %287 = icmp ule i32 %283, %286
  br i1 %287, label %288, label %305

288:                                              ; preds = %282
  %289 = load ptr, ptr @input, align 8, !tbaa !3
  %290 = getelementptr inbounds nuw %struct.InputParameters, ptr %289, i32 0, i32 144
  %291 = load ptr, ptr %290, align 8, !tbaa !124
  %292 = load i32, ptr %15, align 4, !tbaa !7
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds nuw i8, ptr %291, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !125
  %296 = load ptr, ptr %8, align 8, !tbaa !3
  %297 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %296, i32 0, i32 16
  %298 = load ptr, ptr %297, align 8, !tbaa !111
  %299 = load i32, ptr %15, align 4, !tbaa !7
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds nuw i8, ptr %298, i64 %300
  store i8 %295, ptr %301, align 1, !tbaa !125
  br label %302

302:                                              ; preds = %288
  %303 = load i32, ptr %15, align 4, !tbaa !7
  %304 = add i32 %303, 1
  store i32 %304, ptr %15, align 4, !tbaa !7
  br label %282, !llvm.loop !126

305:                                              ; preds = %282
  br label %308

306:                                              ; preds = %167
  %307 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %308

308:                                              ; preds = %306, %305, %238, %237, %197, %196
  br label %309

309:                                              ; preds = %308, %136
  %310 = load ptr, ptr %9, align 8, !tbaa !3
  %311 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %310, i32 0, i32 25
  %312 = load i32, ptr %311, align 4, !tbaa !71
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %309
  %315 = load ptr, ptr %9, align 8, !tbaa !3
  %316 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %315, i32 0, i32 21
  %317 = load i32, ptr %316, align 4, !tbaa !67
  %318 = sub i32 %317, 1
  br label %325

319:                                              ; preds = %309
  %320 = load ptr, ptr %9, align 8, !tbaa !3
  %321 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %320, i32 0, i32 21
  %322 = load i32, ptr %321, align 4, !tbaa !67
  %323 = mul i32 2, %322
  %324 = sub i32 %323, 1
  br label %325

325:                                              ; preds = %319, %314
  %326 = phi i32 [ %318, %314 ], [ %324, %319 ]
  %327 = load ptr, ptr %8, align 8, !tbaa !3
  %328 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %327, i32 0, i32 17
  store i32 %326, ptr %328, align 8, !tbaa !127
  %329 = load ptr, ptr %9, align 8, !tbaa !3
  %330 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %329, i32 0, i32 25
  %331 = load i32, ptr %330, align 4, !tbaa !71
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %325
  %334 = load ptr, ptr %9, align 8, !tbaa !3
  %335 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %334, i32 0, i32 21
  %336 = load i32, ptr %335, align 4, !tbaa !67
  %337 = sub i32 %336, 1
  br label %344

338:                                              ; preds = %325
  %339 = load ptr, ptr %9, align 8, !tbaa !3
  %340 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %339, i32 0, i32 21
  %341 = load i32, ptr %340, align 4, !tbaa !67
  %342 = mul i32 2, %341
  %343 = sub i32 %342, 1
  br label %344

344:                                              ; preds = %338, %333
  %345 = phi i32 [ %337, %333 ], [ %343, %338 ]
  %346 = load ptr, ptr %8, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %346, i32 0, i32 18
  store i32 %345, ptr %347, align 4, !tbaa !128
  %348 = load i32, ptr %11, align 4, !tbaa !7
  %349 = load ptr, ptr %8, align 8, !tbaa !3
  %350 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %349, i32 0, i32 19
  store i32 %348, ptr %350, align 8, !tbaa !129
  %351 = load i32, ptr %12, align 4, !tbaa !7
  %352 = load ptr, ptr %8, align 8, !tbaa !3
  %353 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %352, i32 0, i32 20
  store i32 %351, ptr %353, align 4, !tbaa !130
  %354 = load ptr, ptr %8, align 8, !tbaa !3
  %355 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %354, i32 0, i32 21
  store i32 0, ptr %355, align 8, !tbaa !131
  %356 = load ptr, ptr %8, align 8, !tbaa !3
  %357 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %356, i32 0, i32 22
  store i32 0, ptr %357, align 4, !tbaa !132
  %358 = load i32, ptr %13, align 4, !tbaa !7
  %359 = load ptr, ptr %8, align 8, !tbaa !3
  %360 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %359, i32 0, i32 23
  store i32 %358, ptr %360, align 8, !tbaa !133
  %361 = load i32, ptr %16, align 4, !tbaa !7
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %370

363:                                              ; preds = %344
  %364 = load i32, ptr %13, align 4, !tbaa !7
  %365 = load ptr, ptr %8, align 8, !tbaa !3
  %366 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %365, i32 0, i32 24
  store i32 %364, ptr %366, align 4, !tbaa !134
  %367 = load i32, ptr %14, align 4, !tbaa !7
  %368 = load ptr, ptr %8, align 8, !tbaa !3
  %369 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %368, i32 0, i32 25
  store i32 %367, ptr %369, align 8, !tbaa !135
  br label %378

370:                                              ; preds = %344
  %371 = load ptr, ptr %8, align 8, !tbaa !3
  %372 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %371, i32 0, i32 23
  %373 = load i32, ptr %372, align 8, !tbaa !133
  %374 = load ptr, ptr %8, align 8, !tbaa !3
  %375 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %374, i32 0, i32 25
  store i32 %373, ptr %375, align 8, !tbaa !135
  %376 = load ptr, ptr %8, align 8, !tbaa !3
  %377 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %376, i32 0, i32 24
  store i32 %373, ptr %377, align 4, !tbaa !134
  br label %378

378:                                              ; preds = %370, %363
  %379 = load ptr, ptr @input, align 8, !tbaa !3
  %380 = getelementptr inbounds nuw %struct.InputParameters, ptr %379, i32 0, i32 132
  %381 = load i32, ptr %380, align 4, !tbaa !136
  %382 = load ptr, ptr %8, align 8, !tbaa !3
  %383 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %382, i32 0, i32 26
  store i32 %381, ptr %383, align 4, !tbaa !137
  %384 = load ptr, ptr @input, align 8, !tbaa !3
  %385 = getelementptr inbounds nuw %struct.InputParameters, ptr %384, i32 0, i32 23
  %386 = load i32, ptr %385, align 8, !tbaa !138
  %387 = load ptr, ptr %8, align 8, !tbaa !3
  %388 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %387, i32 0, i32 27
  store i32 %386, ptr %388, align 8, !tbaa !139
  %389 = load ptr, ptr @input, align 8, !tbaa !3
  %390 = getelementptr inbounds nuw %struct.InputParameters, ptr %389, i32 0, i32 149
  %391 = load i32, ptr %390, align 4, !tbaa !140
  %392 = load ptr, ptr %8, align 8, !tbaa !3
  %393 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %392, i32 0, i32 28
  store i32 %391, ptr %393, align 4, !tbaa !141
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @FreeParameterSets() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  store i32 0, ptr %1, align 4, !tbaa !7
  br label %2

2:                                                ; preds = %20, %0
  %3 = load i32, ptr %1, align 4, !tbaa !7
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %23

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !3
  %10 = icmp ne ptr null, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = load i32, ptr %1, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !3
  call void @FreePPS(ptr noundef %15)
  %16 = load i32, ptr %1, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %17
  store ptr null, ptr %18, align 8, !tbaa !3
  br label %19

19:                                               ; preds = %11, %5
  br label %20

20:                                               ; preds = %19
  %21 = load i32, ptr %1, align 4, !tbaa !7
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %1, align 4, !tbaa !7
  br label %2, !llvm.loop !142

23:                                               ; preds = %2
  %24 = load ptr, ptr @active_sps, align 8, !tbaa !3
  call void @FreeSPS(ptr noundef %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

declare void @FreePPS(ptr noundef) #2

declare void @FreeSPS(ptr noundef) #2

; Function Attrs: nounwind
define dso_local ptr @GenerateSeq_parameter_set_NALU() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64000 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %5 = call ptr @AllocNALU(i32 noundef signext 64000)
  store ptr %5, ptr %1, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  store i32 0, ptr %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 64000, ptr %4) #7
  %6 = load ptr, ptr @active_sps, align 8, !tbaa !3
  %7 = getelementptr inbounds [64000 x i8], ptr %4, i64 0, i64 0
  %8 = call signext i32 @GenerateSeq_parameter_set_rbsp(ptr noundef %6, ptr noundef %7)
  store i32 %8, ptr %2, align 4, !tbaa !7
  %9 = getelementptr inbounds [64000 x i8], ptr %4, i64 0, i64 0
  %10 = load ptr, ptr %1, align 8, !tbaa !3
  %11 = load i32, ptr %2, align 4, !tbaa !7
  %12 = call signext i32 @RBSPtoNALU(ptr noundef %9, ptr noundef %10, i32 noundef signext %11, i32 noundef signext 7, i32 noundef signext 3, i32 noundef signext 0, i32 noundef signext 1)
  store i32 %12, ptr %3, align 4, !tbaa !7
  %13 = load ptr, ptr %1, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.NALU_t, ptr %13, i32 0, i32 0
  store i32 4, ptr %14, align 8, !tbaa !143
  %15 = load ptr, ptr %1, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 64000, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %15
}

declare ptr @AllocNALU(i32 noundef signext) #2

; Function Attrs: nounwind
define dso_local signext i32 @GenerateSeq_parameter_set_rbsp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  %9 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #8
  store ptr %9, ptr %5, align 8, !tbaa !3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @no_mem_exit(ptr noundef @.str.5)
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr %4, align 8, !tbaa !145
  %14 = load ptr, ptr %5, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.Bitstream, ptr %14, i32 0, i32 9
  store ptr %13, ptr %15, align 8, !tbaa !146
  %16 = load ptr, ptr %5, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Bitstream, ptr %16, i32 0, i32 1
  store i32 8, ptr %17, align 4, !tbaa !148
  %18 = load ptr, ptr %3, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !16
  %21 = load ptr, ptr %5, align 8, !tbaa !3
  %22 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.6, i32 noundef signext %20, ptr noundef %21)
  %23 = load i32, ptr %6, align 4, !tbaa !7
  %24 = add nsw i32 %23, %22
  store i32 %24, ptr %6, align 4, !tbaa !7
  %25 = load ptr, ptr %3, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %25, i32 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = load ptr, ptr %5, align 8, !tbaa !3
  %29 = call signext i32 @u_1(ptr noundef @.str.7, i32 noundef signext %27, ptr noundef %28)
  %30 = load i32, ptr %6, align 4, !tbaa !7
  %31 = add i32 %30, %29
  store i32 %31, ptr %6, align 4, !tbaa !7
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !27
  %35 = load ptr, ptr %5, align 8, !tbaa !3
  %36 = call signext i32 @u_1(ptr noundef @.str.8, i32 noundef signext %34, ptr noundef %35)
  %37 = load i32, ptr %6, align 4, !tbaa !7
  %38 = add i32 %37, %36
  store i32 %38, ptr %6, align 4, !tbaa !7
  %39 = load ptr, ptr %3, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %39, i32 0, i32 4
  %41 = load i32, ptr %40, align 4, !tbaa !28
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  %43 = call signext i32 @u_1(ptr noundef @.str.9, i32 noundef signext %41, ptr noundef %42)
  %44 = load i32, ptr %6, align 4, !tbaa !7
  %45 = add i32 %44, %43
  store i32 %45, ptr %6, align 4, !tbaa !7
  %46 = load ptr, ptr %3, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !29
  %49 = load ptr, ptr %5, align 8, !tbaa !3
  %50 = call signext i32 @u_1(ptr noundef @.str.10, i32 noundef signext %48, ptr noundef %49)
  %51 = load i32, ptr %6, align 4, !tbaa !7
  %52 = add i32 %51, %50
  store i32 %52, ptr %6, align 4, !tbaa !7
  %53 = load ptr, ptr %5, align 8, !tbaa !3
  %54 = call signext i32 @u_v(i32 noundef signext 4, ptr noundef @.str.11, i32 noundef signext 0, ptr noundef %53)
  %55 = load i32, ptr %6, align 4, !tbaa !7
  %56 = add nsw i32 %55, %54
  store i32 %56, ptr %6, align 4, !tbaa !7
  %57 = load ptr, ptr %3, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %58, align 4, !tbaa !25
  %60 = load ptr, ptr %5, align 8, !tbaa !3
  %61 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.12, i32 noundef signext %59, ptr noundef %60)
  %62 = load i32, ptr %6, align 4, !tbaa !7
  %63 = add nsw i32 %62, %61
  store i32 %63, ptr %6, align 4, !tbaa !7
  %64 = load ptr, ptr %3, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %64, i32 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !30
  %67 = load ptr, ptr %5, align 8, !tbaa !3
  %68 = call signext i32 @ue_v(ptr noundef @.str.13, i32 noundef signext %66, ptr noundef %67)
  %69 = load i32, ptr %6, align 4, !tbaa !7
  %70 = add nsw i32 %69, %68
  store i32 %70, ptr %6, align 4, !tbaa !7
  %71 = load ptr, ptr %3, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !16
  %74 = icmp eq i32 %73, 100
  br i1 %74, label %90, label %75

75:                                               ; preds = %12
  %76 = load ptr, ptr %3, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !16
  %79 = icmp eq i32 %78, 110
  br i1 %79, label %90, label %80

80:                                               ; preds = %75
  %81 = load ptr, ptr %3, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %81, i32 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !16
  %84 = icmp eq i32 %83, 122
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %3, align 8, !tbaa !3
  %87 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %86, i32 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !16
  %89 = icmp eq i32 %88, 144
  br i1 %89, label %90, label %207

90:                                               ; preds = %85, %80, %75, %12
  %91 = load ptr, ptr %3, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %91, i32 0, i32 8
  %93 = load i32, ptr %92, align 4, !tbaa !85
  %94 = load ptr, ptr %5, align 8, !tbaa !3
  %95 = call signext i32 @ue_v(ptr noundef @.str.14, i32 noundef signext %93, ptr noundef %94)
  %96 = load i32, ptr %6, align 4, !tbaa !7
  %97 = add nsw i32 %96, %95
  store i32 %97, ptr %6, align 4, !tbaa !7
  %98 = load ptr, ptr @img, align 8, !tbaa !3
  %99 = getelementptr inbounds nuw %struct.ImageParameters, ptr %98, i32 0, i32 160
  %100 = load i32, ptr %99, align 8, !tbaa !149
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %107

102:                                              ; preds = %90
  %103 = load ptr, ptr %5, align 8, !tbaa !3
  %104 = call signext i32 @u_1(ptr noundef @.str.15, i32 noundef signext 0, ptr noundef %103)
  %105 = load i32, ptr %6, align 4, !tbaa !7
  %106 = add i32 %105, %104
  store i32 %106, ptr %6, align 4, !tbaa !7
  br label %107

107:                                              ; preds = %102, %90
  %108 = load ptr, ptr %3, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %108, i32 0, i32 11
  %110 = load i32, ptr %109, align 4, !tbaa !32
  %111 = load ptr, ptr %5, align 8, !tbaa !3
  %112 = call signext i32 @ue_v(ptr noundef @.str.16, i32 noundef signext %110, ptr noundef %111)
  %113 = load i32, ptr %6, align 4, !tbaa !7
  %114 = add nsw i32 %113, %112
  store i32 %114, ptr %6, align 4, !tbaa !7
  %115 = load ptr, ptr %3, align 8, !tbaa !3
  %116 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %115, i32 0, i32 12
  %117 = load i32, ptr %116, align 4, !tbaa !34
  %118 = load ptr, ptr %5, align 8, !tbaa !3
  %119 = call signext i32 @ue_v(ptr noundef @.str.17, i32 noundef signext %117, ptr noundef %118)
  %120 = load i32, ptr %6, align 4, !tbaa !7
  %121 = add nsw i32 %120, %119
  store i32 %121, ptr %6, align 4, !tbaa !7
  %122 = load ptr, ptr @img, align 8, !tbaa !3
  %123 = getelementptr inbounds nuw %struct.ImageParameters, ptr %122, i32 0, i32 161
  %124 = load i32, ptr %123, align 4, !tbaa !36
  %125 = load ptr, ptr %5, align 8, !tbaa !3
  %126 = call signext i32 @u_1(ptr noundef @.str.18, i32 noundef signext %124, ptr noundef %125)
  %127 = load i32, ptr %6, align 4, !tbaa !7
  %128 = add i32 %127, %126
  store i32 %128, ptr %6, align 4, !tbaa !7
  %129 = load ptr, ptr %3, align 8, !tbaa !3
  %130 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %129, i32 0, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !89
  %132 = load ptr, ptr %5, align 8, !tbaa !3
  %133 = call signext i32 @u_1(ptr noundef @.str.19, i32 noundef signext %131, ptr noundef %132)
  %134 = load i32, ptr %6, align 4, !tbaa !7
  %135 = add i32 %134, %133
  store i32 %135, ptr %6, align 4, !tbaa !7
  %136 = load ptr, ptr %3, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %136, i32 0, i32 9
  %138 = load i32, ptr %137, align 4, !tbaa !89
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %206

140:                                              ; preds = %107
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %141

141:                                              ; preds = %202, %140
  %142 = load i32, ptr %8, align 4, !tbaa !7
  %143 = icmp ult i32 %142, 8
  br i1 %143, label %144, label %205

144:                                              ; preds = %141
  %145 = load ptr, ptr %3, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %145, i32 0, i32 10
  %147 = load i32, ptr %8, align 4, !tbaa !7
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds nuw [8 x i32], ptr %146, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !7
  %151 = load ptr, ptr %5, align 8, !tbaa !3
  %152 = call signext i32 @u_1(ptr noundef @.str.20, i32 noundef signext %150, ptr noundef %151)
  %153 = load i32, ptr %6, align 4, !tbaa !7
  %154 = add i32 %153, %152
  store i32 %154, ptr %6, align 4, !tbaa !7
  %155 = load ptr, ptr %3, align 8, !tbaa !3
  %156 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %155, i32 0, i32 10
  %157 = load i32, ptr %8, align 4, !tbaa !7
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds nuw [8 x i32], ptr %156, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !7
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %201

162:                                              ; preds = %144
  %163 = load i32, ptr %8, align 4, !tbaa !7
  %164 = icmp ult i32 %163, 6
  br i1 %164, label %165, label %181

165:                                              ; preds = %162
  %166 = load i32, ptr %8, align 4, !tbaa !7
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds nuw [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %167
  %169 = getelementptr inbounds [16 x i16], ptr %168, i64 0, i64 0
  %170 = load i32, ptr %8, align 4, !tbaa !7
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds nuw [6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 %171
  %173 = getelementptr inbounds [16 x i16], ptr %172, i64 0, i64 0
  %174 = load i32, ptr %8, align 4, !tbaa !7
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds nuw [6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %175
  %177 = load ptr, ptr %5, align 8, !tbaa !3
  %178 = call signext i32 @Scaling_List(ptr noundef %169, ptr noundef %173, i32 noundef signext 16, ptr noundef %176, ptr noundef %177)
  %179 = load i32, ptr %6, align 4, !tbaa !7
  %180 = add nsw i32 %179, %178
  store i32 %180, ptr %6, align 4, !tbaa !7
  br label %200

181:                                              ; preds = %162
  %182 = load i32, ptr %8, align 4, !tbaa !7
  %183 = sub i32 %182, 6
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds nuw [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %184
  %186 = getelementptr inbounds [64 x i16], ptr %185, i64 0, i64 0
  %187 = load i32, ptr %8, align 4, !tbaa !7
  %188 = sub i32 %187, 6
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds nuw [2 x [64 x i16]], ptr @ScalingList8x8, i64 0, i64 %189
  %191 = getelementptr inbounds [64 x i16], ptr %190, i64 0, i64 0
  %192 = load i32, ptr %8, align 4, !tbaa !7
  %193 = sub i32 %192, 6
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds nuw [2 x i16], ptr @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %194
  %196 = load ptr, ptr %5, align 8, !tbaa !3
  %197 = call signext i32 @Scaling_List(ptr noundef %186, ptr noundef %191, i32 noundef signext 64, ptr noundef %195, ptr noundef %196)
  %198 = load i32, ptr %6, align 4, !tbaa !7
  %199 = add nsw i32 %198, %197
  store i32 %199, ptr %6, align 4, !tbaa !7
  br label %200

200:                                              ; preds = %181, %165
  br label %201

201:                                              ; preds = %200, %144
  br label %202

202:                                              ; preds = %201
  %203 = load i32, ptr %8, align 4, !tbaa !7
  %204 = add i32 %203, 1
  store i32 %204, ptr %8, align 4, !tbaa !7
  br label %141, !llvm.loop !150

205:                                              ; preds = %141
  br label %206

206:                                              ; preds = %205, %107
  br label %207

207:                                              ; preds = %206, %85
  %208 = load ptr, ptr %3, align 8, !tbaa !3
  %209 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %208, i32 0, i32 13
  %210 = load i32, ptr %209, align 4, !tbaa !53
  %211 = load ptr, ptr %5, align 8, !tbaa !3
  %212 = call signext i32 @ue_v(ptr noundef @.str.21, i32 noundef signext %210, ptr noundef %211)
  %213 = load i32, ptr %6, align 4, !tbaa !7
  %214 = add nsw i32 %213, %212
  store i32 %214, ptr %6, align 4, !tbaa !7
  %215 = load ptr, ptr %3, align 8, !tbaa !3
  %216 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %215, i32 0, i32 14
  %217 = load i32, ptr %216, align 4, !tbaa !56
  %218 = load ptr, ptr %5, align 8, !tbaa !3
  %219 = call signext i32 @ue_v(ptr noundef @.str.22, i32 noundef signext %217, ptr noundef %218)
  %220 = load i32, ptr %6, align 4, !tbaa !7
  %221 = add nsw i32 %220, %219
  store i32 %221, ptr %6, align 4, !tbaa !7
  %222 = load ptr, ptr %3, align 8, !tbaa !3
  %223 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %222, i32 0, i32 14
  %224 = load i32, ptr %223, align 4, !tbaa !56
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %207
  %227 = load ptr, ptr %3, align 8, !tbaa !3
  %228 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %227, i32 0, i32 15
  %229 = load i32, ptr %228, align 4, !tbaa !54
  %230 = load ptr, ptr %5, align 8, !tbaa !3
  %231 = call signext i32 @ue_v(ptr noundef @.str.23, i32 noundef signext %229, ptr noundef %230)
  %232 = load i32, ptr %6, align 4, !tbaa !7
  %233 = add nsw i32 %232, %231
  store i32 %233, ptr %6, align 4, !tbaa !7
  br label %290

234:                                              ; preds = %207
  %235 = load ptr, ptr %3, align 8, !tbaa !3
  %236 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %235, i32 0, i32 14
  %237 = load i32, ptr %236, align 4, !tbaa !56
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %289

239:                                              ; preds = %234
  %240 = load ptr, ptr %3, align 8, !tbaa !3
  %241 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %240, i32 0, i32 16
  %242 = load i32, ptr %241, align 4, !tbaa !60
  %243 = load ptr, ptr %5, align 8, !tbaa !3
  %244 = call signext i32 @u_1(ptr noundef @.str.24, i32 noundef signext %242, ptr noundef %243)
  %245 = load i32, ptr %6, align 4, !tbaa !7
  %246 = add i32 %245, %244
  store i32 %246, ptr %6, align 4, !tbaa !7
  %247 = load ptr, ptr %3, align 8, !tbaa !3
  %248 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %247, i32 0, i32 17
  %249 = load i32, ptr %248, align 4, !tbaa !62
  %250 = load ptr, ptr %5, align 8, !tbaa !3
  %251 = call signext i32 @se_v(ptr noundef @.str.25, i32 noundef signext %249, ptr noundef %250)
  %252 = load i32, ptr %6, align 4, !tbaa !7
  %253 = add nsw i32 %252, %251
  store i32 %253, ptr %6, align 4, !tbaa !7
  %254 = load ptr, ptr %3, align 8, !tbaa !3
  %255 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %254, i32 0, i32 18
  %256 = load i32, ptr %255, align 4, !tbaa !64
  %257 = load ptr, ptr %5, align 8, !tbaa !3
  %258 = call signext i32 @se_v(ptr noundef @.str.26, i32 noundef signext %256, ptr noundef %257)
  %259 = load i32, ptr %6, align 4, !tbaa !7
  %260 = add nsw i32 %259, %258
  store i32 %260, ptr %6, align 4, !tbaa !7
  %261 = load ptr, ptr %3, align 8, !tbaa !3
  %262 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %261, i32 0, i32 19
  %263 = load i32, ptr %262, align 4, !tbaa !58
  %264 = load ptr, ptr %5, align 8, !tbaa !3
  %265 = call signext i32 @ue_v(ptr noundef @.str.27, i32 noundef signext %263, ptr noundef %264)
  %266 = load i32, ptr %6, align 4, !tbaa !7
  %267 = add nsw i32 %266, %265
  store i32 %267, ptr %6, align 4, !tbaa !7
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %268

268:                                              ; preds = %285, %239
  %269 = load i32, ptr %8, align 4, !tbaa !7
  %270 = load ptr, ptr %3, align 8, !tbaa !3
  %271 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %270, i32 0, i32 19
  %272 = load i32, ptr %271, align 4, !tbaa !58
  %273 = icmp ult i32 %269, %272
  br i1 %273, label %274, label %288

274:                                              ; preds = %268
  %275 = load ptr, ptr %3, align 8, !tbaa !3
  %276 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %275, i32 0, i32 20
  %277 = load i32, ptr %8, align 4, !tbaa !7
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds nuw [256 x i32], ptr %276, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !7
  %281 = load ptr, ptr %5, align 8, !tbaa !3
  %282 = call signext i32 @se_v(ptr noundef @.str.28, i32 noundef signext %280, ptr noundef %281)
  %283 = load i32, ptr %6, align 4, !tbaa !7
  %284 = add nsw i32 %283, %282
  store i32 %284, ptr %6, align 4, !tbaa !7
  br label %285

285:                                              ; preds = %274
  %286 = load i32, ptr %8, align 4, !tbaa !7
  %287 = add i32 %286, 1
  store i32 %287, ptr %8, align 4, !tbaa !7
  br label %268, !llvm.loop !151

288:                                              ; preds = %268
  br label %289

289:                                              ; preds = %288, %234
  br label %290

290:                                              ; preds = %289, %226
  %291 = load ptr, ptr %3, align 8, !tbaa !3
  %292 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %291, i32 0, i32 21
  %293 = load i32, ptr %292, align 4, !tbaa !67
  %294 = load ptr, ptr %5, align 8, !tbaa !3
  %295 = call signext i32 @ue_v(ptr noundef @.str.29, i32 noundef signext %293, ptr noundef %294)
  %296 = load i32, ptr %6, align 4, !tbaa !7
  %297 = add nsw i32 %296, %295
  store i32 %297, ptr %6, align 4, !tbaa !7
  %298 = load ptr, ptr %3, align 8, !tbaa !3
  %299 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %298, i32 0, i32 22
  %300 = load i32, ptr %299, align 4, !tbaa !68
  %301 = load ptr, ptr %5, align 8, !tbaa !3
  %302 = call signext i32 @u_1(ptr noundef @.str.30, i32 noundef signext %300, ptr noundef %301)
  %303 = load i32, ptr %6, align 4, !tbaa !7
  %304 = add i32 %303, %302
  store i32 %304, ptr %6, align 4, !tbaa !7
  %305 = load ptr, ptr %3, align 8, !tbaa !3
  %306 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %305, i32 0, i32 23
  %307 = load i32, ptr %306, align 4, !tbaa !74
  %308 = load ptr, ptr %5, align 8, !tbaa !3
  %309 = call signext i32 @ue_v(ptr noundef @.str.31, i32 noundef signext %307, ptr noundef %308)
  %310 = load i32, ptr %6, align 4, !tbaa !7
  %311 = add nsw i32 %310, %309
  store i32 %311, ptr %6, align 4, !tbaa !7
  %312 = load ptr, ptr %3, align 8, !tbaa !3
  %313 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %312, i32 0, i32 24
  %314 = load i32, ptr %313, align 4, !tbaa !77
  %315 = load ptr, ptr %5, align 8, !tbaa !3
  %316 = call signext i32 @ue_v(ptr noundef @.str.32, i32 noundef signext %314, ptr noundef %315)
  %317 = load i32, ptr %6, align 4, !tbaa !7
  %318 = add nsw i32 %317, %316
  store i32 %318, ptr %6, align 4, !tbaa !7
  %319 = load ptr, ptr %3, align 8, !tbaa !3
  %320 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %319, i32 0, i32 25
  %321 = load i32, ptr %320, align 4, !tbaa !71
  %322 = load ptr, ptr %5, align 8, !tbaa !3
  %323 = call signext i32 @u_1(ptr noundef @.str.33, i32 noundef signext %321, ptr noundef %322)
  %324 = load i32, ptr %6, align 4, !tbaa !7
  %325 = add i32 %324, %323
  store i32 %325, ptr %6, align 4, !tbaa !7
  %326 = load ptr, ptr %3, align 8, !tbaa !3
  %327 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %326, i32 0, i32 25
  %328 = load i32, ptr %327, align 4, !tbaa !71
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %338, label %330

330:                                              ; preds = %290
  %331 = load ptr, ptr %3, align 8, !tbaa !3
  %332 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %331, i32 0, i32 26
  %333 = load i32, ptr %332, align 4, !tbaa !78
  %334 = load ptr, ptr %5, align 8, !tbaa !3
  %335 = call signext i32 @u_1(ptr noundef @.str.34, i32 noundef signext %333, ptr noundef %334)
  %336 = load i32, ptr %6, align 4, !tbaa !7
  %337 = add i32 %336, %335
  store i32 %337, ptr %6, align 4, !tbaa !7
  br label %338

338:                                              ; preds = %330, %290
  %339 = load ptr, ptr %3, align 8, !tbaa !3
  %340 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %339, i32 0, i32 27
  %341 = load i32, ptr %340, align 4, !tbaa !80
  %342 = load ptr, ptr %5, align 8, !tbaa !3
  %343 = call signext i32 @u_1(ptr noundef @.str.35, i32 noundef signext %341, ptr noundef %342)
  %344 = load i32, ptr %6, align 4, !tbaa !7
  %345 = add i32 %344, %343
  store i32 %345, ptr %6, align 4, !tbaa !7
  %346 = load ptr, ptr %3, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %346, i32 0, i32 28
  %348 = load i32, ptr %347, align 4, !tbaa !93
  %349 = load ptr, ptr %5, align 8, !tbaa !3
  %350 = call signext i32 @u_1(ptr noundef @.str.36, i32 noundef signext %348, ptr noundef %349)
  %351 = load i32, ptr %6, align 4, !tbaa !7
  %352 = add i32 %351, %350
  store i32 %352, ptr %6, align 4, !tbaa !7
  %353 = load ptr, ptr %3, align 8, !tbaa !3
  %354 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %353, i32 0, i32 28
  %355 = load i32, ptr %354, align 4, !tbaa !93
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %386

357:                                              ; preds = %338
  %358 = load ptr, ptr %3, align 8, !tbaa !3
  %359 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %358, i32 0, i32 29
  %360 = load i32, ptr %359, align 4, !tbaa !94
  %361 = load ptr, ptr %5, align 8, !tbaa !3
  %362 = call signext i32 @ue_v(ptr noundef @.str.37, i32 noundef signext %360, ptr noundef %361)
  %363 = load i32, ptr %6, align 4, !tbaa !7
  %364 = add nsw i32 %363, %362
  store i32 %364, ptr %6, align 4, !tbaa !7
  %365 = load ptr, ptr %3, align 8, !tbaa !3
  %366 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %365, i32 0, i32 30
  %367 = load i32, ptr %366, align 4, !tbaa !96
  %368 = load ptr, ptr %5, align 8, !tbaa !3
  %369 = call signext i32 @ue_v(ptr noundef @.str.38, i32 noundef signext %367, ptr noundef %368)
  %370 = load i32, ptr %6, align 4, !tbaa !7
  %371 = add nsw i32 %370, %369
  store i32 %371, ptr %6, align 4, !tbaa !7
  %372 = load ptr, ptr %3, align 8, !tbaa !3
  %373 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %372, i32 0, i32 31
  %374 = load i32, ptr %373, align 4, !tbaa !95
  %375 = load ptr, ptr %5, align 8, !tbaa !3
  %376 = call signext i32 @ue_v(ptr noundef @.str.39, i32 noundef signext %374, ptr noundef %375)
  %377 = load i32, ptr %6, align 4, !tbaa !7
  %378 = add nsw i32 %377, %376
  store i32 %378, ptr %6, align 4, !tbaa !7
  %379 = load ptr, ptr %3, align 8, !tbaa !3
  %380 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %379, i32 0, i32 32
  %381 = load i32, ptr %380, align 4, !tbaa !97
  %382 = load ptr, ptr %5, align 8, !tbaa !3
  %383 = call signext i32 @ue_v(ptr noundef @.str.40, i32 noundef signext %381, ptr noundef %382)
  %384 = load i32, ptr %6, align 4, !tbaa !7
  %385 = add nsw i32 %384, %383
  store i32 %385, ptr %6, align 4, !tbaa !7
  br label %386

386:                                              ; preds = %357, %338
  %387 = load ptr, ptr %3, align 8, !tbaa !3
  %388 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %387, i32 0, i32 33
  %389 = load i32, ptr %388, align 4, !tbaa !84
  %390 = load ptr, ptr %5, align 8, !tbaa !3
  %391 = call signext i32 @u_1(ptr noundef @.str.41, i32 noundef signext %389, ptr noundef %390)
  %392 = load i32, ptr %6, align 4, !tbaa !7
  %393 = add i32 %392, %391
  store i32 %393, ptr %6, align 4, !tbaa !7
  %394 = load ptr, ptr %3, align 8, !tbaa !3
  %395 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %394, i32 0, i32 33
  %396 = load i32, ptr %395, align 4, !tbaa !84
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %386
  %399 = load ptr, ptr %5, align 8, !tbaa !3
  %400 = call signext i32 @GenerateVUISequenceParameters(ptr noundef %399)
  %401 = load i32, ptr %6, align 4, !tbaa !7
  %402 = add nsw i32 %401, %400
  store i32 %402, ptr %6, align 4, !tbaa !7
  br label %403

403:                                              ; preds = %398, %386
  %404 = load ptr, ptr %5, align 8, !tbaa !3
  call void @SODBtoRBSP(ptr noundef %404)
  %405 = load ptr, ptr %5, align 8, !tbaa !3
  %406 = getelementptr inbounds nuw %struct.Bitstream, ptr %405, i32 0, i32 0
  %407 = load i32, ptr %406, align 8, !tbaa !152
  store i32 %407, ptr %7, align 4, !tbaa !7
  %408 = load ptr, ptr %5, align 8, !tbaa !3
  call void @free(ptr noundef %408) #7
  %409 = load i32, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i32 %409
}

declare signext i32 @RBSPtoNALU(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #2

; Function Attrs: nounwind
define dso_local ptr @GeneratePic_parameter_set_NALU(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64000 x i8], align 1
  store i32 %0, ptr %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %7 = call ptr @AllocNALU(i32 noundef signext 64000)
  store ptr %7, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  store i32 0, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 64000, ptr %6) #7
  %8 = load i32, ptr %2, align 4, !tbaa !7
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x ptr], ptr @PicParSet, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !3
  %12 = getelementptr inbounds [64000 x i8], ptr %6, i64 0, i64 0
  %13 = call signext i32 @GeneratePic_parameter_set_rbsp(ptr noundef %11, ptr noundef %12)
  store i32 %13, ptr %4, align 4, !tbaa !7
  %14 = getelementptr inbounds [64000 x i8], ptr %6, i64 0, i64 0
  %15 = load ptr, ptr %3, align 8, !tbaa !3
  %16 = load i32, ptr %4, align 4, !tbaa !7
  %17 = call signext i32 @RBSPtoNALU(ptr noundef %14, ptr noundef %15, i32 noundef signext %16, i32 noundef signext 8, i32 noundef signext 3, i32 noundef signext 0, i32 noundef signext 1)
  store i32 %17, ptr %5, align 4, !tbaa !7
  %18 = load ptr, ptr %3, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.NALU_t, ptr %18, i32 0, i32 0
  store i32 4, ptr %19, align 8, !tbaa !143
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 64000, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret ptr %20
}

; Function Attrs: nounwind
define dso_local signext i32 @GeneratePic_parameter_set_rbsp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  %11 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #8
  store ptr %11, ptr %5, align 8, !tbaa !3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void @no_mem_exit(ptr noundef @.str.42)
  br label %14

14:                                               ; preds = %13, %2
  %15 = load ptr, ptr %4, align 8, !tbaa !145
  %16 = load ptr, ptr %5, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Bitstream, ptr %16, i32 0, i32 9
  store ptr %15, ptr %17, align 8, !tbaa !146
  %18 = load ptr, ptr %5, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Bitstream, ptr %18, i32 0, i32 1
  store i32 8, ptr %19, align 4, !tbaa !148
  %20 = load ptr, ptr @img, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.ImageParameters, ptr %20, i32 0, i32 121
  %22 = load i32, ptr %21, align 4, !tbaa !107
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %23, i32 0, i32 7
  store i32 %22, ptr %24, align 8, !tbaa !108
  %25 = load ptr, ptr %3, align 8, !tbaa !3
  %26 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !100
  %28 = load ptr, ptr %5, align 8, !tbaa !3
  %29 = call signext i32 @ue_v(ptr noundef @.str.43, i32 noundef signext %27, ptr noundef %28)
  %30 = load i32, ptr %6, align 4, !tbaa !7
  %31 = add nsw i32 %30, %29
  store i32 %31, ptr %6, align 4, !tbaa !7
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %32, i32 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !98
  %35 = load ptr, ptr %5, align 8, !tbaa !3
  %36 = call signext i32 @ue_v(ptr noundef @.str.44, i32 noundef signext %34, ptr noundef %35)
  %37 = load i32, ptr %6, align 4, !tbaa !7
  %38 = add nsw i32 %37, %36
  store i32 %38, ptr %6, align 4, !tbaa !7
  %39 = load ptr, ptr %3, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !102
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  %43 = call signext i32 @u_1(ptr noundef @.str.45, i32 noundef signext %41, ptr noundef %42)
  %44 = load i32, ptr %6, align 4, !tbaa !7
  %45 = add i32 %44, %43
  store i32 %45, ptr %6, align 4, !tbaa !7
  %46 = load ptr, ptr %3, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %46, i32 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !108
  %49 = load ptr, ptr %5, align 8, !tbaa !3
  %50 = call signext i32 @u_1(ptr noundef @.str.46, i32 noundef signext %48, ptr noundef %49)
  %51 = load i32, ptr %6, align 4, !tbaa !7
  %52 = add i32 %51, %50
  store i32 %52, ptr %6, align 4, !tbaa !7
  %53 = load ptr, ptr %3, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %53, i32 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !110
  %56 = load ptr, ptr %5, align 8, !tbaa !3
  %57 = call signext i32 @ue_v(ptr noundef @.str.47, i32 noundef signext %55, ptr noundef %56)
  %58 = load i32, ptr %6, align 4, !tbaa !7
  %59 = add nsw i32 %58, %57
  store i32 %59, ptr %6, align 4, !tbaa !7
  %60 = load ptr, ptr %3, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %60, i32 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !110
  %63 = icmp ugt i32 %62, 0
  br i1 %63, label %64, label %227

64:                                               ; preds = %14
  %65 = load ptr, ptr %3, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %65, i32 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !113
  %68 = load ptr, ptr %5, align 8, !tbaa !3
  %69 = call signext i32 @ue_v(ptr noundef @.str.48, i32 noundef signext %67, ptr noundef %68)
  %70 = load i32, ptr %6, align 4, !tbaa !7
  %71 = add nsw i32 %70, %69
  store i32 %71, ptr %6, align 4, !tbaa !7
  %72 = load ptr, ptr %3, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %72, i32 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !113
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %64
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, ptr %8, align 4, !tbaa !7
  %79 = load ptr, ptr %3, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %79, i32 0, i32 8
  %81 = load i32, ptr %80, align 4, !tbaa !110
  %82 = icmp ule i32 %78, %81
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  %84 = load ptr, ptr %3, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %84, i32 0, i32 10
  %86 = load i32, ptr %8, align 4, !tbaa !7
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds nuw [8 x i32], ptr %85, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !7
  %90 = load ptr, ptr %5, align 8, !tbaa !3
  %91 = call signext i32 @ue_v(ptr noundef @.str.49, i32 noundef signext %89, ptr noundef %90)
  %92 = load i32, ptr %6, align 4, !tbaa !7
  %93 = add nsw i32 %92, %91
  store i32 %93, ptr %6, align 4, !tbaa !7
  br label %94

94:                                               ; preds = %83
  %95 = load i32, ptr %8, align 4, !tbaa !7
  %96 = add i32 %95, 1
  store i32 %96, ptr %8, align 4, !tbaa !7
  br label %77, !llvm.loop !153

97:                                               ; preds = %77
  br label %226

98:                                               ; preds = %64
  %99 = load ptr, ptr %3, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %99, i32 0, i32 9
  %101 = load i32, ptr %100, align 8, !tbaa !113
  %102 = icmp eq i32 %101, 2
  br i1 %102, label %103, label %135

103:                                              ; preds = %98
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %104

104:                                              ; preds = %131, %103
  %105 = load i32, ptr %8, align 4, !tbaa !7
  %106 = load ptr, ptr %3, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %106, i32 0, i32 8
  %108 = load i32, ptr %107, align 4, !tbaa !110
  %109 = icmp ult i32 %105, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %104
  %111 = load ptr, ptr %3, align 8, !tbaa !3
  %112 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %111, i32 0, i32 11
  %113 = load i32, ptr %8, align 4, !tbaa !7
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds nuw [8 x i32], ptr %112, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !7
  %117 = load ptr, ptr %5, align 8, !tbaa !3
  %118 = call signext i32 @ue_v(ptr noundef @.str.50, i32 noundef signext %116, ptr noundef %117)
  %119 = load i32, ptr %6, align 4, !tbaa !7
  %120 = add nsw i32 %119, %118
  store i32 %120, ptr %6, align 4, !tbaa !7
  %121 = load ptr, ptr %3, align 8, !tbaa !3
  %122 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %121, i32 0, i32 12
  %123 = load i32, ptr %8, align 4, !tbaa !7
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds nuw [8 x i32], ptr %122, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !7
  %127 = load ptr, ptr %5, align 8, !tbaa !3
  %128 = call signext i32 @ue_v(ptr noundef @.str.51, i32 noundef signext %126, ptr noundef %127)
  %129 = load i32, ptr %6, align 4, !tbaa !7
  %130 = add nsw i32 %129, %128
  store i32 %130, ptr %6, align 4, !tbaa !7
  br label %131

131:                                              ; preds = %110
  %132 = load i32, ptr %8, align 4, !tbaa !7
  %133 = add i32 %132, 1
  store i32 %133, ptr %8, align 4, !tbaa !7
  br label %104, !llvm.loop !154

134:                                              ; preds = %104
  br label %225

135:                                              ; preds = %98
  %136 = load ptr, ptr %3, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %136, i32 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !113
  %139 = icmp eq i32 %138, 3
  br i1 %139, label %150, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %3, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %141, i32 0, i32 9
  %143 = load i32, ptr %142, align 8, !tbaa !113
  %144 = icmp eq i32 %143, 4
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr %3, align 8, !tbaa !3
  %147 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %146, i32 0, i32 9
  %148 = load i32, ptr %147, align 8, !tbaa !113
  %149 = icmp eq i32 %148, 5
  br i1 %149, label %150, label %165

150:                                              ; preds = %145, %140, %135
  %151 = load ptr, ptr %3, align 8, !tbaa !3
  %152 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %151, i32 0, i32 13
  %153 = load i32, ptr %152, align 4, !tbaa !120
  %154 = load ptr, ptr %5, align 8, !tbaa !3
  %155 = call signext i32 @u_1(ptr noundef @.str.52, i32 noundef signext %153, ptr noundef %154)
  %156 = load i32, ptr %6, align 4, !tbaa !7
  %157 = add i32 %156, %155
  store i32 %157, ptr %6, align 4, !tbaa !7
  %158 = load ptr, ptr %3, align 8, !tbaa !3
  %159 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %158, i32 0, i32 14
  %160 = load i32, ptr %159, align 8, !tbaa !122
  %161 = load ptr, ptr %5, align 8, !tbaa !3
  %162 = call signext i32 @ue_v(ptr noundef @.str.53, i32 noundef signext %160, ptr noundef %161)
  %163 = load i32, ptr %6, align 4, !tbaa !7
  %164 = add nsw i32 %163, %162
  store i32 %164, ptr %6, align 4, !tbaa !7
  br label %224

165:                                              ; preds = %145
  %166 = load ptr, ptr %3, align 8, !tbaa !3
  %167 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %166, i32 0, i32 9
  %168 = load i32, ptr %167, align 8, !tbaa !113
  %169 = icmp eq i32 %168, 6
  br i1 %169, label %170, label %223

170:                                              ; preds = %165
  %171 = load ptr, ptr %3, align 8, !tbaa !3
  %172 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %171, i32 0, i32 8
  %173 = load i32, ptr %172, align 4, !tbaa !110
  %174 = icmp uge i32 %173, 4
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 3, ptr %9, align 4, !tbaa !7
  br label %191

176:                                              ; preds = %170
  %177 = load ptr, ptr %3, align 8, !tbaa !3
  %178 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %177, i32 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !110
  %180 = icmp uge i32 %179, 2
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  store i32 2, ptr %9, align 4, !tbaa !7
  br label %190

182:                                              ; preds = %176
  %183 = load ptr, ptr %3, align 8, !tbaa !3
  %184 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %183, i32 0, i32 8
  %185 = load i32, ptr %184, align 4, !tbaa !110
  %186 = icmp uge i32 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 1, ptr %9, align 4, !tbaa !7
  br label %189

188:                                              ; preds = %182
  store i32 0, ptr %9, align 4, !tbaa !7
  br label %189

189:                                              ; preds = %188, %187
  br label %190

190:                                              ; preds = %189, %181
  br label %191

191:                                              ; preds = %190, %175
  %192 = load ptr, ptr %3, align 8, !tbaa !3
  %193 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %192, i32 0, i32 15
  %194 = load i32, ptr %193, align 4, !tbaa !123
  %195 = load ptr, ptr %5, align 8, !tbaa !3
  %196 = call signext i32 @ue_v(ptr noundef @.str.54, i32 noundef signext %194, ptr noundef %195)
  %197 = load i32, ptr %6, align 4, !tbaa !7
  %198 = add nsw i32 %197, %196
  store i32 %198, ptr %6, align 4, !tbaa !7
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %199

199:                                              ; preds = %219, %191
  %200 = load i32, ptr %8, align 4, !tbaa !7
  %201 = load ptr, ptr %3, align 8, !tbaa !3
  %202 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %201, i32 0, i32 15
  %203 = load i32, ptr %202, align 4, !tbaa !123
  %204 = icmp ule i32 %200, %203
  br i1 %204, label %205, label %222

205:                                              ; preds = %199
  %206 = load i32, ptr %9, align 4, !tbaa !7
  %207 = load ptr, ptr %3, align 8, !tbaa !3
  %208 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %207, i32 0, i32 16
  %209 = load ptr, ptr %208, align 8, !tbaa !111
  %210 = load i32, ptr %8, align 4, !tbaa !7
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds nuw i8, ptr %209, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !125
  %214 = zext i8 %213 to i32
  %215 = load ptr, ptr %5, align 8, !tbaa !3
  %216 = call signext i32 @u_v(i32 noundef signext %206, ptr noundef @.str.55, i32 noundef signext %214, ptr noundef %215)
  %217 = load i32, ptr %6, align 4, !tbaa !7
  %218 = add nsw i32 %217, %216
  store i32 %218, ptr %6, align 4, !tbaa !7
  br label %219

219:                                              ; preds = %205
  %220 = load i32, ptr %8, align 4, !tbaa !7
  %221 = add i32 %220, 1
  store i32 %221, ptr %8, align 4, !tbaa !7
  br label %199, !llvm.loop !155

222:                                              ; preds = %199
  br label %223

223:                                              ; preds = %222, %165
  br label %224

224:                                              ; preds = %223, %150
  br label %225

225:                                              ; preds = %224, %134
  br label %226

226:                                              ; preds = %225, %97
  br label %227

227:                                              ; preds = %226, %14
  %228 = load ptr, ptr %3, align 8, !tbaa !3
  %229 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %228, i32 0, i32 17
  %230 = load i32, ptr %229, align 8, !tbaa !127
  %231 = load ptr, ptr %5, align 8, !tbaa !3
  %232 = call signext i32 @ue_v(ptr noundef @.str.56, i32 noundef signext %230, ptr noundef %231)
  %233 = load i32, ptr %6, align 4, !tbaa !7
  %234 = add nsw i32 %233, %232
  store i32 %234, ptr %6, align 4, !tbaa !7
  %235 = load ptr, ptr %3, align 8, !tbaa !3
  %236 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %235, i32 0, i32 18
  %237 = load i32, ptr %236, align 4, !tbaa !128
  %238 = load ptr, ptr %5, align 8, !tbaa !3
  %239 = call signext i32 @ue_v(ptr noundef @.str.57, i32 noundef signext %237, ptr noundef %238)
  %240 = load i32, ptr %6, align 4, !tbaa !7
  %241 = add nsw i32 %240, %239
  store i32 %241, ptr %6, align 4, !tbaa !7
  %242 = load ptr, ptr %3, align 8, !tbaa !3
  %243 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %242, i32 0, i32 19
  %244 = load i32, ptr %243, align 8, !tbaa !129
  %245 = load ptr, ptr %5, align 8, !tbaa !3
  %246 = call signext i32 @u_1(ptr noundef @.str.58, i32 noundef signext %244, ptr noundef %245)
  %247 = load i32, ptr %6, align 4, !tbaa !7
  %248 = add i32 %247, %246
  store i32 %248, ptr %6, align 4, !tbaa !7
  %249 = load ptr, ptr %3, align 8, !tbaa !3
  %250 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %249, i32 0, i32 20
  %251 = load i32, ptr %250, align 4, !tbaa !130
  %252 = load ptr, ptr %5, align 8, !tbaa !3
  %253 = call signext i32 @u_v(i32 noundef signext 2, ptr noundef @.str.59, i32 noundef signext %251, ptr noundef %252)
  %254 = load i32, ptr %6, align 4, !tbaa !7
  %255 = add nsw i32 %254, %253
  store i32 %255, ptr %6, align 4, !tbaa !7
  %256 = load ptr, ptr %3, align 8, !tbaa !3
  %257 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %256, i32 0, i32 21
  %258 = load i32, ptr %257, align 8, !tbaa !131
  %259 = load ptr, ptr %5, align 8, !tbaa !3
  %260 = call signext i32 @se_v(ptr noundef @.str.60, i32 noundef signext %258, ptr noundef %259)
  %261 = load i32, ptr %6, align 4, !tbaa !7
  %262 = add nsw i32 %261, %260
  store i32 %262, ptr %6, align 4, !tbaa !7
  %263 = load ptr, ptr %3, align 8, !tbaa !3
  %264 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %263, i32 0, i32 22
  %265 = load i32, ptr %264, align 4, !tbaa !132
  %266 = load ptr, ptr %5, align 8, !tbaa !3
  %267 = call signext i32 @se_v(ptr noundef @.str.61, i32 noundef signext %265, ptr noundef %266)
  %268 = load i32, ptr %6, align 4, !tbaa !7
  %269 = add nsw i32 %268, %267
  store i32 %269, ptr %6, align 4, !tbaa !7
  %270 = call signext i32 @IdentifyProfile()
  store i32 %270, ptr %10, align 4, !tbaa !7
  %271 = load i32, ptr %10, align 4, !tbaa !7
  %272 = icmp eq i32 %271, 100
  br i1 %272, label %282, label %273

273:                                              ; preds = %227
  %274 = load i32, ptr %10, align 4, !tbaa !7
  %275 = icmp eq i32 %274, 110
  br i1 %275, label %282, label %276

276:                                              ; preds = %273
  %277 = load i32, ptr %10, align 4, !tbaa !7
  %278 = icmp eq i32 %277, 122
  br i1 %278, label %282, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %10, align 4, !tbaa !7
  %281 = icmp eq i32 %280, 144
  br i1 %281, label %282, label %290

282:                                              ; preds = %279, %276, %273, %227
  %283 = load ptr, ptr %3, align 8, !tbaa !3
  %284 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %283, i32 0, i32 24
  %285 = load i32, ptr %284, align 4, !tbaa !134
  %286 = load ptr, ptr %5, align 8, !tbaa !3
  %287 = call signext i32 @se_v(ptr noundef @.str.62, i32 noundef signext %285, ptr noundef %286)
  %288 = load i32, ptr %6, align 4, !tbaa !7
  %289 = add nsw i32 %288, %287
  store i32 %289, ptr %6, align 4, !tbaa !7
  br label %298

290:                                              ; preds = %279
  %291 = load ptr, ptr %3, align 8, !tbaa !3
  %292 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %291, i32 0, i32 23
  %293 = load i32, ptr %292, align 8, !tbaa !133
  %294 = load ptr, ptr %5, align 8, !tbaa !3
  %295 = call signext i32 @se_v(ptr noundef @.str.62, i32 noundef signext %293, ptr noundef %294)
  %296 = load i32, ptr %6, align 4, !tbaa !7
  %297 = add nsw i32 %296, %295
  store i32 %297, ptr %6, align 4, !tbaa !7
  br label %298

298:                                              ; preds = %290, %282
  %299 = load ptr, ptr %3, align 8, !tbaa !3
  %300 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %299, i32 0, i32 26
  %301 = load i32, ptr %300, align 4, !tbaa !137
  %302 = load ptr, ptr %5, align 8, !tbaa !3
  %303 = call signext i32 @u_1(ptr noundef @.str.63, i32 noundef signext %301, ptr noundef %302)
  %304 = load i32, ptr %6, align 4, !tbaa !7
  %305 = add i32 %304, %303
  store i32 %305, ptr %6, align 4, !tbaa !7
  %306 = load ptr, ptr %3, align 8, !tbaa !3
  %307 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %306, i32 0, i32 27
  %308 = load i32, ptr %307, align 8, !tbaa !139
  %309 = load ptr, ptr %5, align 8, !tbaa !3
  %310 = call signext i32 @u_1(ptr noundef @.str.64, i32 noundef signext %308, ptr noundef %309)
  %311 = load i32, ptr %6, align 4, !tbaa !7
  %312 = add i32 %311, %310
  store i32 %312, ptr %6, align 4, !tbaa !7
  %313 = load ptr, ptr %3, align 8, !tbaa !3
  %314 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %313, i32 0, i32 28
  %315 = load i32, ptr %314, align 4, !tbaa !141
  %316 = load ptr, ptr %5, align 8, !tbaa !3
  %317 = call signext i32 @u_1(ptr noundef @.str.65, i32 noundef signext %315, ptr noundef %316)
  %318 = load i32, ptr %6, align 4, !tbaa !7
  %319 = add i32 %318, %317
  store i32 %319, ptr %6, align 4, !tbaa !7
  %320 = load i32, ptr %10, align 4, !tbaa !7
  %321 = icmp eq i32 %320, 100
  br i1 %321, label %331, label %322

322:                                              ; preds = %298
  %323 = load i32, ptr %10, align 4, !tbaa !7
  %324 = icmp eq i32 %323, 110
  br i1 %324, label %331, label %325

325:                                              ; preds = %322
  %326 = load i32, ptr %10, align 4, !tbaa !7
  %327 = icmp eq i32 %326, 122
  br i1 %327, label %331, label %328

328:                                              ; preds = %325
  %329 = load i32, ptr %10, align 4, !tbaa !7
  %330 = icmp eq i32 %329, 144
  br i1 %330, label %331, label %429

331:                                              ; preds = %328, %325, %322, %298
  %332 = load ptr, ptr %3, align 8, !tbaa !3
  %333 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %332, i32 0, i32 4
  %334 = load i32, ptr %333, align 8, !tbaa !103
  %335 = load ptr, ptr %5, align 8, !tbaa !3
  %336 = call signext i32 @u_1(ptr noundef @.str.66, i32 noundef signext %334, ptr noundef %335)
  %337 = load i32, ptr %6, align 4, !tbaa !7
  %338 = add i32 %337, %336
  store i32 %338, ptr %6, align 4, !tbaa !7
  %339 = load ptr, ptr %3, align 8, !tbaa !3
  %340 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %339, i32 0, i32 5
  %341 = load i32, ptr %340, align 4, !tbaa !104
  %342 = load ptr, ptr %5, align 8, !tbaa !3
  %343 = call signext i32 @u_1(ptr noundef @.str.67, i32 noundef signext %341, ptr noundef %342)
  %344 = load i32, ptr %6, align 4, !tbaa !7
  %345 = add i32 %344, %343
  store i32 %345, ptr %6, align 4, !tbaa !7
  %346 = load ptr, ptr %3, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %346, i32 0, i32 5
  %348 = load i32, ptr %347, align 4, !tbaa !104
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %421

350:                                              ; preds = %331
  store i32 0, ptr %8, align 4, !tbaa !7
  br label %351

351:                                              ; preds = %417, %350
  %352 = load i32, ptr %8, align 4, !tbaa !7
  %353 = load ptr, ptr %3, align 8, !tbaa !3
  %354 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %353, i32 0, i32 4
  %355 = load i32, ptr %354, align 8, !tbaa !103
  %356 = shl i32 %355, 1
  %357 = add i32 6, %356
  %358 = icmp ult i32 %352, %357
  br i1 %358, label %359, label %420

359:                                              ; preds = %351
  %360 = load ptr, ptr %3, align 8, !tbaa !3
  %361 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %360, i32 0, i32 6
  %362 = load i32, ptr %8, align 4, !tbaa !7
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds nuw [8 x i32], ptr %361, i64 0, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !7
  %366 = load ptr, ptr %5, align 8, !tbaa !3
  %367 = call signext i32 @u_1(ptr noundef @.str.68, i32 noundef signext %365, ptr noundef %366)
  %368 = load i32, ptr %6, align 4, !tbaa !7
  %369 = add i32 %368, %367
  store i32 %369, ptr %6, align 4, !tbaa !7
  %370 = load ptr, ptr %3, align 8, !tbaa !3
  %371 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %370, i32 0, i32 6
  %372 = load i32, ptr %8, align 4, !tbaa !7
  %373 = zext i32 %372 to i64
  %374 = getelementptr inbounds nuw [8 x i32], ptr %371, i64 0, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !7
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %416

377:                                              ; preds = %359
  %378 = load i32, ptr %8, align 4, !tbaa !7
  %379 = icmp ult i32 %378, 6
  br i1 %379, label %380, label %396

380:                                              ; preds = %377
  %381 = load i32, ptr %8, align 4, !tbaa !7
  %382 = zext i32 %381 to i64
  %383 = getelementptr inbounds nuw [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %382
  %384 = getelementptr inbounds [16 x i16], ptr %383, i64 0, i64 0
  %385 = load i32, ptr %8, align 4, !tbaa !7
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds nuw [6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 %386
  %388 = getelementptr inbounds [16 x i16], ptr %387, i64 0, i64 0
  %389 = load i32, ptr %8, align 4, !tbaa !7
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds nuw [6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 %390
  %392 = load ptr, ptr %5, align 8, !tbaa !3
  %393 = call signext i32 @Scaling_List(ptr noundef %384, ptr noundef %388, i32 noundef signext 16, ptr noundef %391, ptr noundef %392)
  %394 = load i32, ptr %6, align 4, !tbaa !7
  %395 = add nsw i32 %394, %393
  store i32 %395, ptr %6, align 4, !tbaa !7
  br label %415

396:                                              ; preds = %377
  %397 = load i32, ptr %8, align 4, !tbaa !7
  %398 = sub i32 %397, 6
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds nuw [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %399
  %401 = getelementptr inbounds [64 x i16], ptr %400, i64 0, i64 0
  %402 = load i32, ptr %8, align 4, !tbaa !7
  %403 = sub i32 %402, 6
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds nuw [2 x [64 x i16]], ptr @ScalingList8x8, i64 0, i64 %404
  %406 = getelementptr inbounds [64 x i16], ptr %405, i64 0, i64 0
  %407 = load i32, ptr %8, align 4, !tbaa !7
  %408 = sub i32 %407, 6
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds nuw [2 x i16], ptr @UseDefaultScalingMatrix8x8Flag, i64 0, i64 %409
  %411 = load ptr, ptr %5, align 8, !tbaa !3
  %412 = call signext i32 @Scaling_List(ptr noundef %401, ptr noundef %406, i32 noundef signext 64, ptr noundef %410, ptr noundef %411)
  %413 = load i32, ptr %6, align 4, !tbaa !7
  %414 = add nsw i32 %413, %412
  store i32 %414, ptr %6, align 4, !tbaa !7
  br label %415

415:                                              ; preds = %396, %380
  br label %416

416:                                              ; preds = %415, %359
  br label %417

417:                                              ; preds = %416
  %418 = load i32, ptr %8, align 4, !tbaa !7
  %419 = add i32 %418, 1
  store i32 %419, ptr %8, align 4, !tbaa !7
  br label %351, !llvm.loop !156

420:                                              ; preds = %351
  br label %421

421:                                              ; preds = %420, %331
  %422 = load ptr, ptr %3, align 8, !tbaa !3
  %423 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %422, i32 0, i32 25
  %424 = load i32, ptr %423, align 8, !tbaa !135
  %425 = load ptr, ptr %5, align 8, !tbaa !3
  %426 = call signext i32 @se_v(ptr noundef @.str.69, i32 noundef signext %424, ptr noundef %425)
  %427 = load i32, ptr %6, align 4, !tbaa !7
  %428 = add nsw i32 %427, %426
  store i32 %428, ptr %6, align 4, !tbaa !7
  br label %429

429:                                              ; preds = %421, %328
  %430 = load ptr, ptr %5, align 8, !tbaa !3
  call void @SODBtoRBSP(ptr noundef %430)
  %431 = load ptr, ptr %5, align 8, !tbaa !3
  %432 = getelementptr inbounds nuw %struct.Bitstream, ptr %431, i32 0, i32 0
  %433 = load i32, ptr %432, align 8, !tbaa !152
  store i32 %433, ptr %7, align 4, !tbaa !7
  %434 = load ptr, ptr %5, align 8, !tbaa !3
  call void @free(ptr noundef %434) #7
  %435 = load i32, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i32 %435
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind
define internal signext i32 @IdentifyProfile() #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !3
  %2 = getelementptr inbounds nuw %struct.InputParameters, ptr %1, i32 0, i32 0
  %3 = load i32, ptr %2, align 8, !tbaa !157
  ret i32 %3
}

; Function Attrs: nounwind
define internal signext i32 @IdentifyLevel() #0 {
  %1 = load ptr, ptr @input, align 8, !tbaa !3
  %2 = getelementptr inbounds nuw %struct.InputParameters, ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !158
  ret i32 %3
}

declare ptr @alloc_colocated(i32 noundef signext, i32 noundef signext, i32 noundef signext) #2

declare void @error(ptr noundef, i32 noundef signext) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

declare void @no_mem_exit(ptr noundef) #2

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
define dso_local signext i32 @Scaling_List(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !159
  store ptr %1, ptr %7, align 8, !tbaa !159
  store i32 %2, ptr %8, align 4, !tbaa !7
  store ptr %3, ptr %9, align 8, !tbaa !159
  store ptr %4, ptr %10, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  store i32 0, ptr %13, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  store i32 8, ptr %15, align 4, !tbaa !7
  store i32 8, ptr %16, align 4, !tbaa !7
  store i32 0, ptr %11, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %106, %5
  %18 = load i32, ptr %11, align 4, !tbaa !7
  %19 = load i32, ptr %8, align 4, !tbaa !7
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %109

21:                                               ; preds = %17
  %22 = load i32, ptr %8, align 4, !tbaa !7
  %23 = icmp eq i32 %22, 16
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, ptr %11, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8], ptr @ZZ_SCAN, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !125
  %29 = zext i8 %28 to i32
  br label %36

30:                                               ; preds = %21
  %31 = load i32, ptr %11, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [64 x i8], ptr @ZZ_SCAN8, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !125
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i32 [ %29, %24 ], [ %35, %30 ]
  store i32 %37, ptr %12, align 4, !tbaa !7
  %38 = load i32, ptr %16, align 4, !tbaa !7
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %36
  %41 = load ptr, ptr %6, align 8, !tbaa !159
  %42 = load i32, ptr %12, align 4, !tbaa !7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %41, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !161
  %46 = sext i16 %45 to i32
  %47 = load i32, ptr %15, align 4, !tbaa !7
  %48 = sub nsw i32 %46, %47
  store i32 %48, ptr %14, align 4, !tbaa !7
  %49 = load i32, ptr %14, align 4, !tbaa !7
  %50 = icmp sgt i32 %49, 127
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i32, ptr %14, align 4, !tbaa !7
  %53 = sub nsw i32 %52, 256
  store i32 %53, ptr %14, align 4, !tbaa !7
  br label %61

54:                                               ; preds = %40
  %55 = load i32, ptr %14, align 4, !tbaa !7
  %56 = icmp slt i32 %55, -128
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, ptr %14, align 4, !tbaa !7
  %59 = add nsw i32 %58, 256
  store i32 %59, ptr %14, align 4, !tbaa !7
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i32, ptr %14, align 4, !tbaa !7
  %63 = load ptr, ptr %10, align 8, !tbaa !3
  %64 = call signext i32 @se_v(ptr noundef @.str.4, i32 noundef signext %62, ptr noundef %63)
  %65 = load i32, ptr %13, align 4, !tbaa !7
  %66 = add nsw i32 %65, %64
  store i32 %66, ptr %13, align 4, !tbaa !7
  %67 = load ptr, ptr %6, align 8, !tbaa !159
  %68 = load i32, ptr %12, align 4, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, ptr %67, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !161
  %72 = sext i16 %71 to i32
  store i32 %72, ptr %16, align 4, !tbaa !7
  %73 = load i32, ptr %12, align 4, !tbaa !7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = load i32, ptr %16, align 4, !tbaa !7
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %75, %61
  %79 = phi i1 [ false, %61 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  %81 = load ptr, ptr %9, align 8, !tbaa !159
  %82 = load i16, ptr %81, align 2, !tbaa !161
  %83 = sext i16 %82 to i32
  %84 = or i32 %83, %80
  %85 = trunc i32 %84 to i16
  store i16 %85, ptr %81, align 2, !tbaa !161
  br label %86

86:                                               ; preds = %78, %36
  %87 = load i32, ptr %16, align 4, !tbaa !7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, ptr %15, align 4, !tbaa !7
  br label %93

91:                                               ; preds = %86
  %92 = load i32, ptr %16, align 4, !tbaa !7
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = trunc i32 %94 to i16
  %96 = load ptr, ptr %7, align 8, !tbaa !159
  %97 = load i32, ptr %12, align 4, !tbaa !7
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, ptr %96, i64 %98
  store i16 %95, ptr %99, align 2, !tbaa !161
  %100 = load ptr, ptr %7, align 8, !tbaa !159
  %101 = load i32, ptr %12, align 4, !tbaa !7
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, ptr %100, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !161
  %105 = sext i16 %104 to i32
  store i32 %105, ptr %15, align 4, !tbaa !7
  br label %106

106:                                              ; preds = %93
  %107 = load i32, ptr %11, align 4, !tbaa !7
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %11, align 4, !tbaa !7
  br label %17, !llvm.loop !162

109:                                              ; preds = %17
  %110 = load i32, ptr %13, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  ret i32 %110
}

declare signext i32 @se_v(ptr noundef, i32 noundef signext, ptr noundef) #2

declare signext i32 @u_v(i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) #2

declare signext i32 @u_1(ptr noundef, i32 noundef signext, ptr noundef) #2

declare signext i32 @ue_v(ptr noundef, i32 noundef signext, ptr noundef) #2

; Function Attrs: nounwind
define internal signext i32 @GenerateVUISequenceParameters(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  store i32 0, ptr %4, align 4, !tbaa !7
  %9 = load ptr, ptr @input, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.InputParameters, ptr %9, i32 0, i32 176
  %11 = load i32, ptr %10, align 8, !tbaa !81
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %81

13:                                               ; preds = %1
  %14 = load ptr, ptr @input, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.InputParameters, ptr %14, i32 0, i32 16
  %16 = load i32, ptr %15, align 8, !tbaa !82
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %81

18:                                               ; preds = %13
  %19 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.76)
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = call signext i32 @u_1(ptr noundef @.str.77, i32 noundef signext 0, ptr noundef %20)
  %22 = load i32, ptr %4, align 4, !tbaa !7
  %23 = add i32 %22, %21
  store i32 %23, ptr %4, align 4, !tbaa !7
  %24 = load ptr, ptr %3, align 8, !tbaa !3
  %25 = call signext i32 @u_1(ptr noundef @.str.78, i32 noundef signext 0, ptr noundef %24)
  %26 = load i32, ptr %4, align 4, !tbaa !7
  %27 = add i32 %26, %25
  store i32 %27, ptr %4, align 4, !tbaa !7
  %28 = load ptr, ptr %3, align 8, !tbaa !3
  %29 = call signext i32 @u_1(ptr noundef @.str.79, i32 noundef signext 1, ptr noundef %28)
  %30 = load i32, ptr %4, align 4, !tbaa !7
  %31 = add i32 %30, %29
  store i32 %31, ptr %4, align 4, !tbaa !7
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = call signext i32 @u_v(i32 noundef signext 3, ptr noundef @.str.80, i32 noundef signext 2, ptr noundef %32)
  %34 = load i32, ptr %4, align 4, !tbaa !7
  %35 = add nsw i32 %34, %33
  store i32 %35, ptr %4, align 4, !tbaa !7
  %36 = load ptr, ptr %3, align 8, !tbaa !3
  %37 = call signext i32 @u_1(ptr noundef @.str.81, i32 noundef signext 1, ptr noundef %36)
  %38 = load i32, ptr %4, align 4, !tbaa !7
  %39 = add i32 %38, %37
  store i32 %39, ptr %4, align 4, !tbaa !7
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = call signext i32 @u_1(ptr noundef @.str.82, i32 noundef signext 1, ptr noundef %40)
  %42 = load i32, ptr %4, align 4, !tbaa !7
  %43 = add i32 %42, %41
  store i32 %43, ptr %4, align 4, !tbaa !7
  %44 = load ptr, ptr %3, align 8, !tbaa !3
  %45 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.83, i32 noundef signext 2, ptr noundef %44)
  %46 = load i32, ptr %4, align 4, !tbaa !7
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr %4, align 4, !tbaa !7
  %48 = load ptr, ptr %3, align 8, !tbaa !3
  %49 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.84, i32 noundef signext 2, ptr noundef %48)
  %50 = load i32, ptr %4, align 4, !tbaa !7
  %51 = add nsw i32 %50, %49
  store i32 %51, ptr %4, align 4, !tbaa !7
  %52 = load ptr, ptr %3, align 8, !tbaa !3
  %53 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.85, i32 noundef signext 0, ptr noundef %52)
  %54 = load i32, ptr %4, align 4, !tbaa !7
  %55 = add nsw i32 %54, %53
  store i32 %55, ptr %4, align 4, !tbaa !7
  %56 = load ptr, ptr %3, align 8, !tbaa !3
  %57 = call signext i32 @u_1(ptr noundef @.str.86, i32 noundef signext 0, ptr noundef %56)
  %58 = load i32, ptr %4, align 4, !tbaa !7
  %59 = add i32 %58, %57
  store i32 %59, ptr %4, align 4, !tbaa !7
  %60 = load ptr, ptr %3, align 8, !tbaa !3
  %61 = call signext i32 @u_1(ptr noundef @.str.87, i32 noundef signext 0, ptr noundef %60)
  %62 = load i32, ptr %4, align 4, !tbaa !7
  %63 = add i32 %62, %61
  store i32 %63, ptr %4, align 4, !tbaa !7
  %64 = load ptr, ptr %3, align 8, !tbaa !3
  %65 = call signext i32 @u_1(ptr noundef @.str.88, i32 noundef signext 0, ptr noundef %64)
  %66 = load i32, ptr %4, align 4, !tbaa !7
  %67 = add i32 %66, %65
  store i32 %67, ptr %4, align 4, !tbaa !7
  %68 = load ptr, ptr %3, align 8, !tbaa !3
  %69 = call signext i32 @u_1(ptr noundef @.str.89, i32 noundef signext 0, ptr noundef %68)
  %70 = load i32, ptr %4, align 4, !tbaa !7
  %71 = add i32 %70, %69
  store i32 %71, ptr %4, align 4, !tbaa !7
  %72 = load ptr, ptr %3, align 8, !tbaa !3
  %73 = call signext i32 @u_1(ptr noundef @.str.90, i32 noundef signext 0, ptr noundef %72)
  %74 = load i32, ptr %4, align 4, !tbaa !7
  %75 = add i32 %74, %73
  store i32 %75, ptr %4, align 4, !tbaa !7
  %76 = load ptr, ptr %3, align 8, !tbaa !3
  %77 = call signext i32 @u_1(ptr noundef @.str.91, i32 noundef signext 0, ptr noundef %76)
  %78 = load i32, ptr %4, align 4, !tbaa !7
  %79 = add i32 %78, %77
  store i32 %79, ptr %4, align 4, !tbaa !7
  %80 = load i32, ptr %4, align 4, !tbaa !7
  store i32 %80, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %185

81:                                               ; preds = %13, %1
  %82 = load ptr, ptr @input, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.InputParameters, ptr %82, i32 0, i32 35
  %84 = load i32, ptr %83, align 4, !tbaa !83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %181

86:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  store i32 0, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  store i32 0, ptr %8, align 4, !tbaa !7
  %87 = load ptr, ptr %3, align 8, !tbaa !3
  %88 = call signext i32 @u_1(ptr noundef @.str.77, i32 noundef signext 0, ptr noundef %87)
  %89 = load i32, ptr %4, align 4, !tbaa !7
  %90 = add i32 %89, %88
  store i32 %90, ptr %4, align 4, !tbaa !7
  %91 = load i32, ptr %8, align 4, !tbaa !7
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load ptr, ptr %3, align 8, !tbaa !3
  %95 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.92, i32 noundef signext 1, ptr noundef %94)
  %96 = load i32, ptr %4, align 4, !tbaa !7
  %97 = add nsw i32 %96, %95
  store i32 %97, ptr %4, align 4, !tbaa !7
  br label %98

98:                                               ; preds = %93, %86
  %99 = load ptr, ptr %3, align 8, !tbaa !3
  %100 = call signext i32 @u_1(ptr noundef @.str.78, i32 noundef signext 0, ptr noundef %99)
  %101 = load i32, ptr %4, align 4, !tbaa !7
  %102 = add i32 %101, %100
  store i32 %102, ptr %4, align 4, !tbaa !7
  %103 = load ptr, ptr %3, align 8, !tbaa !3
  %104 = call signext i32 @u_1(ptr noundef @.str.79, i32 noundef signext 0, ptr noundef %103)
  %105 = load i32, ptr %4, align 4, !tbaa !7
  %106 = add i32 %105, %104
  store i32 %106, ptr %4, align 4, !tbaa !7
  %107 = load ptr, ptr %3, align 8, !tbaa !3
  %108 = call signext i32 @u_1(ptr noundef @.str.86, i32 noundef signext 0, ptr noundef %107)
  %109 = load i32, ptr %4, align 4, !tbaa !7
  %110 = add i32 %109, %108
  store i32 %110, ptr %4, align 4, !tbaa !7
  %111 = load i32, ptr %7, align 4, !tbaa !7
  %112 = load ptr, ptr %3, align 8, !tbaa !3
  %113 = call signext i32 @u_1(ptr noundef @.str.87, i32 noundef signext %111, ptr noundef %112)
  %114 = load i32, ptr %4, align 4, !tbaa !7
  %115 = add i32 %114, %113
  store i32 %115, ptr %4, align 4, !tbaa !7
  %116 = load i32, ptr %7, align 4, !tbaa !7
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %98
  %119 = load ptr, ptr %3, align 8, !tbaa !3
  %120 = call signext i32 @u_v(i32 noundef signext 32, ptr noundef @.str.93, i32 noundef signext 416667, ptr noundef %119)
  %121 = load i32, ptr %4, align 4, !tbaa !7
  %122 = add nsw i32 %121, %120
  store i32 %122, ptr %4, align 4, !tbaa !7
  %123 = load ptr, ptr %3, align 8, !tbaa !3
  %124 = call signext i32 @u_v(i32 noundef signext 32, ptr noundef @.str.94, i32 noundef signext 20000000, ptr noundef %123)
  %125 = load i32, ptr %4, align 4, !tbaa !7
  %126 = add nsw i32 %125, %124
  store i32 %126, ptr %4, align 4, !tbaa !7
  %127 = load ptr, ptr %3, align 8, !tbaa !3
  %128 = call signext i32 @u_1(ptr noundef @.str.95, i32 noundef signext 1, ptr noundef %127)
  %129 = load i32, ptr %4, align 4, !tbaa !7
  %130 = add i32 %129, %128
  store i32 %130, ptr %4, align 4, !tbaa !7
  br label %131

131:                                              ; preds = %118, %98
  %132 = load ptr, ptr %3, align 8, !tbaa !3
  %133 = call signext i32 @u_1(ptr noundef @.str.88, i32 noundef signext 0, ptr noundef %132)
  %134 = load i32, ptr %4, align 4, !tbaa !7
  %135 = add i32 %134, %133
  store i32 %135, ptr %4, align 4, !tbaa !7
  %136 = load ptr, ptr %3, align 8, !tbaa !3
  %137 = call signext i32 @u_1(ptr noundef @.str.89, i32 noundef signext 0, ptr noundef %136)
  %138 = load i32, ptr %4, align 4, !tbaa !7
  %139 = add i32 %138, %137
  store i32 %139, ptr %4, align 4, !tbaa !7
  %140 = load ptr, ptr %3, align 8, !tbaa !3
  %141 = call signext i32 @u_1(ptr noundef @.str.90, i32 noundef signext 0, ptr noundef %140)
  %142 = load i32, ptr %4, align 4, !tbaa !7
  %143 = add i32 %142, %141
  store i32 %143, ptr %4, align 4, !tbaa !7
  %144 = load i32, ptr %6, align 4, !tbaa !7
  %145 = load ptr, ptr %3, align 8, !tbaa !3
  %146 = call signext i32 @u_1(ptr noundef @.str.91, i32 noundef signext %144, ptr noundef %145)
  %147 = load i32, ptr %4, align 4, !tbaa !7
  %148 = add i32 %147, %146
  store i32 %148, ptr %4, align 4, !tbaa !7
  %149 = load i32, ptr %6, align 4, !tbaa !7
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %131
  %152 = load ptr, ptr %3, align 8, !tbaa !3
  %153 = call signext i32 @u_1(ptr noundef @.str.96, i32 noundef signext 1, ptr noundef %152)
  %154 = load i32, ptr %4, align 4, !tbaa !7
  %155 = add i32 %154, %153
  store i32 %155, ptr %4, align 4, !tbaa !7
  %156 = load ptr, ptr %3, align 8, !tbaa !3
  %157 = call signext i32 @ue_v(ptr noundef @.str.97, i32 noundef signext 0, ptr noundef %156)
  %158 = load i32, ptr %4, align 4, !tbaa !7
  %159 = add nsw i32 %158, %157
  store i32 %159, ptr %4, align 4, !tbaa !7
  %160 = load ptr, ptr %3, align 8, !tbaa !3
  %161 = call signext i32 @ue_v(ptr noundef @.str.98, i32 noundef signext 0, ptr noundef %160)
  %162 = load i32, ptr %4, align 4, !tbaa !7
  %163 = add nsw i32 %162, %161
  store i32 %163, ptr %4, align 4, !tbaa !7
  %164 = load ptr, ptr %3, align 8, !tbaa !3
  %165 = call signext i32 @ue_v(ptr noundef @.str.99, i32 noundef signext 11, ptr noundef %164)
  %166 = load i32, ptr %4, align 4, !tbaa !7
  %167 = add nsw i32 %166, %165
  store i32 %167, ptr %4, align 4, !tbaa !7
  %168 = load ptr, ptr %3, align 8, !tbaa !3
  %169 = call signext i32 @ue_v(ptr noundef @.str.100, i32 noundef signext 11, ptr noundef %168)
  %170 = load i32, ptr %4, align 4, !tbaa !7
  %171 = add nsw i32 %170, %169
  store i32 %171, ptr %4, align 4, !tbaa !7
  %172 = load ptr, ptr %3, align 8, !tbaa !3
  %173 = call signext i32 @ue_v(ptr noundef @.str.101, i32 noundef signext 3, ptr noundef %172)
  %174 = load i32, ptr %4, align 4, !tbaa !7
  %175 = add nsw i32 %174, %173
  store i32 %175, ptr %4, align 4, !tbaa !7
  %176 = load ptr, ptr %3, align 8, !tbaa !3
  %177 = call signext i32 @ue_v(ptr noundef @.str.102, i32 noundef signext 4, ptr noundef %176)
  %178 = load i32, ptr %4, align 4, !tbaa !7
  %179 = add nsw i32 %178, %177
  store i32 %179, ptr %4, align 4, !tbaa !7
  br label %180

180:                                              ; preds = %151, %131
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  br label %183

181:                                              ; preds = %81
  %182 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.103)
  call void @exit(i32 noundef signext -1) #9
  unreachable

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %183
  store i32 1, ptr %2, align 4
  store i32 1, ptr %5, align 4
  br label %185

185:                                              ; preds = %184, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  %186 = load i32, ptr %2, align 4
  ret i32 %186
}

declare void @SODBtoRBSP(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local ptr @GenerateSEImessage_NALU() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64000 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %5 = call ptr @AllocNALU(i32 noundef signext 64000)
  store ptr %5, ptr %1, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  store i32 0, ptr %2, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 64000, ptr %4) #7
  %6 = getelementptr inbounds [64000 x i8], ptr %4, i64 0, i64 0
  %7 = call signext i32 @GenerateSEImessage_rbsp(i32 noundef signext 0, ptr noundef %6)
  store i32 %7, ptr %2, align 4, !tbaa !7
  %8 = getelementptr inbounds [64000 x i8], ptr %4, i64 0, i64 0
  %9 = load ptr, ptr %1, align 8, !tbaa !3
  %10 = load i32, ptr %2, align 4, !tbaa !7
  %11 = call signext i32 @RBSPtoNALU(ptr noundef %8, ptr noundef %9, i32 noundef signext %10, i32 noundef signext 6, i32 noundef signext 0, i32 noundef signext 0, i32 noundef signext 1)
  store i32 %11, ptr %3, align 4, !tbaa !7
  %12 = load ptr, ptr %1, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.NALU_t, ptr %12, i32 0, i32 0
  store i32 4, ptr %13, align 8, !tbaa !143
  %14 = load ptr, ptr %1, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 64000, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %14
}

; Function Attrs: nounwind
define dso_local signext i32 @GenerateSEImessage_rbsp(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [500 x i8], align 1
  %9 = alloca [9 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeb, align 8
  store i32 %0, ptr %3, align 4, !tbaa !7
  store ptr %1, ptr %4, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  %13 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #8
  store ptr %13, ptr %5, align 8, !tbaa !3
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  call void @no_mem_exit(ptr noundef @.str.5)
  br label %16

16:                                               ; preds = %15, %2
  %17 = load ptr, ptr %4, align 8, !tbaa !145
  %18 = load ptr, ptr %5, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.Bitstream, ptr %18, i32 0, i32 9
  store ptr %17, ptr %19, align 8, !tbaa !146
  %20 = load ptr, ptr %5, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.Bitstream, ptr %20, i32 0, i32 1
  store i32 8, ptr %21, align 4, !tbaa !148
  call void @llvm.lifetime.start.p0(i64 500, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 9, ptr %9) #7
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 @__const.GenerateSEImessage_rbsp.uuid_message, i64 9, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  %22 = load ptr, ptr @input, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.InputParameters, ptr %22, i32 0, i32 36
  %24 = getelementptr inbounds [500 x i8], ptr %23, i64 0, i64 0
  %25 = call i64 @strlen(ptr noundef %24) #10
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %11, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr %12) #7
  %27 = call signext i32 @ftime(ptr noundef %12)
  %28 = load i32, ptr %11, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  store i32 13, ptr %11, align 4, !tbaa !7
  %31 = getelementptr inbounds [500 x i8], ptr %8, i64 0, i64 0
  %32 = load i32, ptr %11, align 4, !tbaa !7
  %33 = zext i32 %32 to i64
  %34 = call ptr @strncpy(ptr noundef %31, ptr noundef @.str.70, i64 noundef %33) #7
  br label %43

35:                                               ; preds = %16
  %36 = getelementptr inbounds [500 x i8], ptr %8, i64 0, i64 0
  %37 = load ptr, ptr @input, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.InputParameters, ptr %37, i32 0, i32 36
  %39 = getelementptr inbounds [500 x i8], ptr %38, i64 0, i64 0
  %40 = load i32, ptr %11, align 4, !tbaa !7
  %41 = zext i32 %40 to i64
  %42 = call ptr @strncpy(ptr noundef %36, ptr noundef %39, i64 noundef %41) #7
  br label %43

43:                                               ; preds = %35, %30
  %44 = load ptr, ptr %5, align 8, !tbaa !3
  %45 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.71, i32 noundef signext 5, ptr noundef %44)
  %46 = load i32, ptr %6, align 4, !tbaa !7
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr %6, align 4, !tbaa !7
  %48 = load i32, ptr %11, align 4, !tbaa !7
  %49 = add i32 %48, 17
  store i32 %49, ptr %11, align 4, !tbaa !7
  br label %50

50:                                               ; preds = %53, %43
  %51 = load i32, ptr %11, align 4, !tbaa !7
  %52 = icmp ugt i32 %51, 254
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 8, !tbaa !3
  %55 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.72, i32 noundef signext 255, ptr noundef %54)
  %56 = load i32, ptr %6, align 4, !tbaa !7
  %57 = add nsw i32 %56, %55
  store i32 %57, ptr %6, align 4, !tbaa !7
  %58 = load i32, ptr %11, align 4, !tbaa !7
  %59 = sub i32 %58, 255
  store i32 %59, ptr %11, align 4, !tbaa !7
  br label %50, !llvm.loop !163

60:                                               ; preds = %50
  %61 = load i32, ptr %11, align 4, !tbaa !7
  %62 = load ptr, ptr %5, align 8, !tbaa !3
  %63 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.73, i32 noundef signext %61, ptr noundef %62)
  %64 = load i32, ptr %6, align 4, !tbaa !7
  %65 = add nsw i32 %64, %63
  store i32 %65, ptr %6, align 4, !tbaa !7
  %66 = getelementptr inbounds nuw %struct.timeb, ptr %12, i32 0, i32 2
  %67 = load i16, ptr %66, align 2, !tbaa !164
  %68 = sext i16 %67 to i32
  %69 = load ptr, ptr %5, align 8, !tbaa !3
  %70 = call signext i32 @u_v(i32 noundef signext 32, ptr noundef @.str.74, i32 noundef signext %68, ptr noundef %69)
  %71 = load i32, ptr %6, align 4, !tbaa !7
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr %6, align 4, !tbaa !7
  %73 = getelementptr inbounds nuw %struct.timeb, ptr %12, i32 0, i32 0
  %74 = load i64, ptr %73, align 8, !tbaa !167
  %75 = trunc i64 %74 to i32
  %76 = mul nsw i32 %75, 1000
  %77 = getelementptr inbounds nuw %struct.timeb, ptr %12, i32 0, i32 1
  %78 = load i16, ptr %77, align 8, !tbaa !168
  %79 = zext i16 %78 to i32
  %80 = add nsw i32 %76, %79
  %81 = load ptr, ptr %5, align 8, !tbaa !3
  %82 = call signext i32 @u_v(i32 noundef signext 32, ptr noundef @.str.74, i32 noundef signext %80, ptr noundef %81)
  %83 = load i32, ptr %6, align 4, !tbaa !7
  %84 = add nsw i32 %83, %82
  store i32 %84, ptr %6, align 4, !tbaa !7
  %85 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 0
  %86 = load i8, ptr %85, align 1, !tbaa !125
  %87 = sext i8 %86 to i32
  %88 = shl i32 %87, 24
  %89 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 1
  %90 = load i8, ptr %89, align 1, !tbaa !125
  %91 = sext i8 %90 to i32
  %92 = shl i32 %91, 16
  %93 = add nsw i32 %88, %92
  %94 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 2
  %95 = load i8, ptr %94, align 1, !tbaa !125
  %96 = sext i8 %95 to i32
  %97 = shl i32 %96, 8
  %98 = add nsw i32 %93, %97
  %99 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 3
  %100 = load i8, ptr %99, align 1, !tbaa !125
  %101 = sext i8 %100 to i32
  %102 = shl i32 %101, 0
  %103 = add nsw i32 %98, %102
  %104 = load ptr, ptr %5, align 8, !tbaa !3
  %105 = call signext i32 @u_v(i32 noundef signext 32, ptr noundef @.str.74, i32 noundef signext %103, ptr noundef %104)
  %106 = load i32, ptr %6, align 4, !tbaa !7
  %107 = add nsw i32 %106, %105
  store i32 %107, ptr %6, align 4, !tbaa !7
  %108 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 4
  %109 = load i8, ptr %108, align 1, !tbaa !125
  %110 = sext i8 %109 to i32
  %111 = shl i32 %110, 24
  %112 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 5
  %113 = load i8, ptr %112, align 1, !tbaa !125
  %114 = sext i8 %113 to i32
  %115 = shl i32 %114, 16
  %116 = add nsw i32 %111, %115
  %117 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 6
  %118 = load i8, ptr %117, align 1, !tbaa !125
  %119 = sext i8 %118 to i32
  %120 = shl i32 %119, 8
  %121 = add nsw i32 %116, %120
  %122 = getelementptr inbounds [9 x i8], ptr %9, i64 0, i64 7
  %123 = load i8, ptr %122, align 1, !tbaa !125
  %124 = sext i8 %123 to i32
  %125 = shl i32 %124, 0
  %126 = add nsw i32 %121, %125
  %127 = load ptr, ptr %5, align 8, !tbaa !3
  %128 = call signext i32 @u_v(i32 noundef signext 32, ptr noundef @.str.74, i32 noundef signext %126, ptr noundef %127)
  %129 = load i32, ptr %6, align 4, !tbaa !7
  %130 = add nsw i32 %129, %128
  store i32 %130, ptr %6, align 4, !tbaa !7
  store i32 0, ptr %10, align 4, !tbaa !7
  br label %131

131:                                              ; preds = %147, %60
  %132 = load i32, ptr %10, align 4, !tbaa !7
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [500 x i8], ptr %8, i64 0, i64 0
  %135 = call i64 @strlen(ptr noundef %134) #10
  %136 = icmp ult i64 %133, %135
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = load i32, ptr %10, align 4, !tbaa !7
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds nuw [500 x i8], ptr %8, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !125
  %142 = sext i8 %141 to i32
  %143 = load ptr, ptr %5, align 8, !tbaa !3
  %144 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.75, i32 noundef signext %142, ptr noundef %143)
  %145 = load i32, ptr %6, align 4, !tbaa !7
  %146 = add nsw i32 %145, %144
  store i32 %146, ptr %6, align 4, !tbaa !7
  br label %147

147:                                              ; preds = %137
  %148 = load i32, ptr %10, align 4, !tbaa !7
  %149 = add i32 %148, 1
  store i32 %149, ptr %10, align 4, !tbaa !7
  br label %131, !llvm.loop !169

150:                                              ; preds = %131
  %151 = load ptr, ptr %5, align 8, !tbaa !3
  %152 = call signext i32 @u_v(i32 noundef signext 8, ptr noundef @.str.75, i32 noundef signext 0, ptr noundef %151)
  %153 = load i32, ptr %6, align 4, !tbaa !7
  %154 = add nsw i32 %153, %152
  store i32 %154, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 500, ptr %8) #7
  %155 = load ptr, ptr %5, align 8, !tbaa !3
  call void @SODBtoRBSP(ptr noundef %155)
  %156 = load ptr, ptr %5, align 8, !tbaa !3
  %157 = getelementptr inbounds nuw %struct.Bitstream, ptr %156, i32 0, i32 0
  %158 = load i32, ptr %157, align 8, !tbaa !152
  store i32 %158, ptr %7, align 4, !tbaa !7
  %159 = load ptr, ptr %5, align 8, !tbaa !3
  call void @free(ptr noundef %159) #7
  %160 = load i32, ptr %7, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret i32 %160
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare signext i32 @ftime(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #6

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !8, i64 1576}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !8, i64 1560, !8, i64 1564, !8, i64 1568, !8, i64 1572, !8, i64 1576, !8, i64 1580, !5, i64 1584, !8, i64 2084, !8, i64 2088, !8, i64 2092, !8, i64 2096, !8, i64 2100, !8, i64 2104, !8, i64 2108, !8, i64 2112, !8, i64 2116, !8, i64 2120, !8, i64 2124, !8, i64 2128, !8, i64 2132, !8, i64 2136, !8, i64 2140, !8, i64 2144, !8, i64 2148, !8, i64 2152, !8, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !8, i64 2928, !8, i64 2932, !8, i64 2936, !8, i64 2940, !8, i64 2944, !8, i64 2948, !8, i64 2952, !8, i64 2956, !8, i64 2960, !8, i64 2964, !8, i64 2968, !8, i64 2972, !5, i64 2976, !8, i64 4000, !8, i64 4004, !8, i64 4008, !8, i64 4012, !8, i64 4016, !8, i64 4020, !8, i64 4024, !8, i64 4028, !8, i64 4032, !8, i64 4036, !8, i64 4040, !8, i64 4044, !8, i64 4048, !8, i64 4052, !8, i64 4056, !8, i64 4060, !8, i64 4064, !8, i64 4068, !8, i64 4072, !8, i64 4076, !13, i64 4080, !8, i64 4088, !8, i64 4092, !8, i64 4096, !8, i64 4100, !8, i64 4104, !8, i64 4108, !8, i64 4112, !8, i64 4116, !8, i64 4120, !8, i64 4124, !8, i64 4128, !8, i64 4132, !8, i64 4136, !8, i64 4140, !8, i64 4144, !8, i64 4148, !8, i64 4152, !8, i64 4156, !8, i64 4160, !8, i64 4164, !8, i64 4168, !8, i64 4172, !8, i64 4176, !8, i64 4180, !8, i64 4184, !8, i64 4188, !5, i64 4192, !5, i64 4448, !8, i64 4704, !8, i64 4708, !8, i64 4712, !8, i64 4716, !8, i64 4720, !8, i64 4724, !8, i64 4728, !8, i64 4732, !8, i64 4736, !8, i64 4740, !8, i64 4744, !8, i64 4748, !8, i64 4752, !8, i64 4756, !8, i64 4760, !8, i64 4764, !8, i64 4768, !8, i64 4772, !5, i64 4776, !8, i64 5032, !8, i64 5036, !14, i64 5040, !14, i64 5048, !15, i64 5056, !14, i64 5064, !8, i64 5072, !8, i64 5076, !8, i64 5080, !8, i64 5084, !8, i64 5088, !8, i64 5092, !8, i64 5096, !8, i64 5100, !8, i64 5104, !8, i64 5108, !8, i64 5112, !8, i64 5116, !8, i64 5120, !8, i64 5124, !8, i64 5128, !8, i64 5132, !8, i64 5136, !13, i64 5144, !13, i64 5152, !13, i64 5160, !5, i64 5168, !8, i64 5208, !5, i64 5212, !8, i64 5244, !8, i64 5248, !8, i64 5252, !8, i64 5256, !8, i64 5260, !8, i64 5264, !8, i64 5268, !8, i64 5272, !8, i64 5276, !8, i64 5280, !8, i64 5284, !8, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !8, i64 5648, !8, i64 5652, !8, i64 5656, !8, i64 5660, !5, i64 5664, !5, i64 5704, !8, i64 5744, !8, i64 5748, !8, i64 5752, !8, i64 5756, !8, i64 5760, !8, i64 5764, !8, i64 5768, !8, i64 5772, !8, i64 5776, !5, i64 5780, !8, i64 5792}
!13 = !{!"double", !5, i64 0}
!14 = !{!"p1 int", !4, i64 0}
!15 = !{!"p1 omnipotent char", !4, i64 0}
!16 = !{!17, !8, i64 4}
!17 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !5, i64 40, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !5, i64 108, !8, i64 1132, !8, i64 1136, !8, i64 1140, !8, i64 1144, !8, i64 1148, !8, i64 1152, !8, i64 1156, !8, i64 1160, !8, i64 1164, !8, i64 1168, !8, i64 1172, !8, i64 1176, !8, i64 1180, !18, i64 1184}
!18 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !19, i64 84, !8, i64 496, !19, i64 500, !8, i64 912, !8, i64 916, !8, i64 920, !8, i64 924, !8, i64 928, !8, i64 932, !8, i64 936, !8, i64 940, !8, i64 944}
!19 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !5, i64 12, !5, i64 140, !5, i64 268, !8, i64 396, !8, i64 400, !8, i64 404, !8, i64 408}
!20 = !{!12, !8, i64 5276}
!21 = !{!12, !8, i64 5280}
!22 = !{!12, !8, i64 4136}
!23 = !{!12, !8, i64 2928}
!24 = !{!12, !8, i64 2932}
!25 = !{!17, !8, i64 24}
!26 = !{!17, !8, i64 8}
!27 = !{!17, !8, i64 12}
!28 = !{!17, !8, i64 16}
!29 = !{!17, !8, i64 20}
!30 = !{!17, !8, i64 28}
!31 = !{!12, !8, i64 5256}
!32 = !{!17, !8, i64 72}
!33 = !{!12, !8, i64 5260}
!34 = !{!17, !8, i64 76}
!35 = !{!12, !8, i64 5284}
!36 = !{!37, !8, i64 15540}
!37 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !38, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !39, i64 128, !39, i64 136, !8, i64 144, !41, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !43, i64 14160, !41, i64 14168, !41, i64 14176, !41, i64 14184, !43, i64 14192, !43, i64 14200, !4, i64 14208, !4, i64 14216, !45, i64 14224, !14, i64 14232, !14, i64 14240, !8, i64 14248, !8, i64 14252, !8, i64 14256, !8, i64 14260, !5, i64 14264, !8, i64 14328, !8, i64 14332, !8, i64 14336, !8, i64 14340, !8, i64 14344, !13, i64 14352, !8, i64 14360, !8, i64 14364, !8, i64 14368, !8, i64 14372, !46, i64 14376, !46, i64 14384, !46, i64 14392, !46, i64 14400, !5, i64 14408, !8, i64 14440, !8, i64 14444, !8, i64 14448, !8, i64 14452, !8, i64 14456, !8, i64 14460, !8, i64 14464, !8, i64 14468, !5, i64 14472, !8, i64 15240, !8, i64 15244, !8, i64 15248, !8, i64 15252, !8, i64 15256, !8, i64 15260, !8, i64 15264, !8, i64 15268, !8, i64 15272, !8, i64 15276, !8, i64 15280, !8, i64 15284, !8, i64 15288, !5, i64 15292, !8, i64 15296, !8, i64 15300, !5, i64 15304, !8, i64 15312, !8, i64 15316, !8, i64 15320, !8, i64 15324, !8, i64 15328, !8, i64 15332, !8, i64 15336, !8, i64 15340, !8, i64 15344, !8, i64 15348, !8, i64 15352, !8, i64 15356, !8, i64 15360, !8, i64 15364, !8, i64 15368, !8, i64 15372, !49, i64 15376, !8, i64 15384, !8, i64 15388, !8, i64 15392, !8, i64 15396, !8, i64 15400, !8, i64 15404, !8, i64 15408, !8, i64 15412, !8, i64 15416, !8, i64 15420, !8, i64 15424, !8, i64 15428, !8, i64 15432, !8, i64 15436, !8, i64 15440, !8, i64 15444, !8, i64 15448, !8, i64 15452, !8, i64 15456, !8, i64 15460, !8, i64 15464, !8, i64 15468, !8, i64 15472, !50, i64 15480, !51, i64 15488, !41, i64 15496, !50, i64 15504, !8, i64 15512, !8, i64 15516, !8, i64 15520, !8, i64 15524, !8, i64 15528, !8, i64 15532, !8, i64 15536, !8, i64 15540, !8, i64 15544, !8, i64 15548, !5, i64 15552, !5, i64 15576, !8, i64 15584, !8, i64 15588, !52, i64 15592, !8, i64 15596, !8, i64 15600, !8, i64 15604, !8, i64 15608, !8, i64 15612}
!38 = !{!"float", !5, i64 0}
!39 = !{!"p2 omnipotent char", !40, i64 0}
!40 = !{!"any p2 pointer", !4, i64 0}
!41 = !{!"p3 int", !42, i64 0}
!42 = !{!"any p3 pointer", !40, i64 0}
!43 = !{!"p4 int", !44, i64 0}
!44 = !{!"any p4 pointer", !42, i64 0}
!45 = !{!"p1 _ZTS10macroblock", !4, i64 0}
!46 = !{!"p6 short", !47, i64 0}
!47 = !{!"any p6 pointer", !48, i64 0}
!48 = !{!"any p5 pointer", !44, i64 0}
!49 = !{!"p1 _ZTS18DecRefPicMarking_s", !4, i64 0}
!50 = !{!"p2 double", !40, i64 0}
!51 = !{!"p3 double", !42, i64 0}
!52 = !{!"short", !5, i64 0}
!53 = !{!17, !8, i64 80}
!54 = !{!17, !8, i64 88}
!55 = !{!12, !8, i64 5088}
!56 = !{!17, !8, i64 84}
!57 = !{!37, !8, i64 15288}
!58 = !{!17, !8, i64 104}
!59 = !{!37, !8, i64 15276}
!60 = !{!17, !8, i64 92}
!61 = !{!37, !8, i64 15280}
!62 = !{!17, !8, i64 96}
!63 = !{!37, !8, i64 15284}
!64 = !{!17, !8, i64 100}
!65 = distinct !{!65, !10}
!66 = !{!12, !8, i64 32}
!67 = !{!17, !8, i64 1132}
!68 = !{!17, !8, i64 1136}
!69 = !{!12, !8, i64 4704}
!70 = !{!12, !8, i64 4708}
!71 = !{!17, !8, i64 1148}
!72 = !{!12, !8, i64 56}
!73 = !{!37, !8, i64 15584}
!74 = !{!17, !8, i64 1140}
!75 = !{!12, !8, i64 60}
!76 = !{!37, !8, i64 15588}
!77 = !{!17, !8, i64 1144}
!78 = !{!17, !8, i64 1152}
!79 = !{!12, !8, i64 2116}
!80 = !{!17, !8, i64 1156}
!81 = !{!12, !8, i64 5272}
!82 = !{!12, !8, i64 64}
!83 = !{!12, !8, i64 1580}
!84 = !{!17, !8, i64 1180}
!85 = !{!17, !8, i64 32}
!86 = !{!87, !87, i64 0}
!87 = !{!"p1 _ZTS16colocated_params", !4, i64 0}
!88 = !{!12, !8, i64 5208}
!89 = !{!17, !8, i64 36}
!90 = !{!12, !8, i64 5100}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{!17, !8, i64 1160}
!94 = !{!17, !8, i64 1164}
!95 = !{!17, !8, i64 1172}
!96 = !{!17, !8, i64 1168}
!97 = !{!17, !8, i64 1176}
!98 = !{!99, !8, i64 8}
!99 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !5, i64 24, !8, i64 56, !8, i64 60, !8, i64 64, !5, i64 68, !5, i64 100, !5, i64 132, !8, i64 164, !8, i64 168, !8, i64 172, !15, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232}
!100 = !{!99, !8, i64 4}
!101 = !{!12, !8, i64 4008}
!102 = !{!99, !8, i64 12}
!103 = !{!99, !8, i64 16}
!104 = !{!99, !8, i64 20}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = !{!37, !8, i64 15356}
!108 = !{!99, !8, i64 56}
!109 = !{!12, !8, i64 5032}
!110 = !{!99, !8, i64 60}
!111 = !{!99, !15, i64 176}
!112 = !{!12, !8, i64 5036}
!113 = !{!99, !8, i64 64}
!114 = !{!12, !14, i64 5064}
!115 = distinct !{!115, !10}
!116 = !{!12, !14, i64 5040}
!117 = !{!12, !14, i64 5048}
!118 = distinct !{!118, !10}
!119 = !{!12, !8, i64 5072}
!120 = !{!99, !8, i64 164}
!121 = !{!12, !8, i64 5076}
!122 = !{!99, !8, i64 168}
!123 = !{!99, !8, i64 172}
!124 = !{!12, !15, i64 5056}
!125 = !{!5, !5, i64 0}
!126 = distinct !{!126, !10}
!127 = !{!99, !8, i64 184}
!128 = !{!99, !8, i64 188}
!129 = !{!99, !8, i64 192}
!130 = !{!99, !8, i64 196}
!131 = !{!99, !8, i64 200}
!132 = !{!99, !8, i64 204}
!133 = !{!99, !8, i64 208}
!134 = !{!99, !8, i64 212}
!135 = !{!99, !8, i64 216}
!136 = !{!12, !8, i64 4748}
!137 = !{!99, !8, i64 220}
!138 = !{!12, !8, i64 272}
!139 = !{!99, !8, i64 224}
!140 = !{!12, !8, i64 5084}
!141 = !{!99, !8, i64 228}
!142 = distinct !{!142, !10}
!143 = !{!144, !8, i64 0}
!144 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !15, i64 24}
!145 = !{!15, !15, i64 0}
!146 = !{!147, !15, i64 32}
!147 = !{!"", !8, i64 0, !8, i64 4, !5, i64 8, !8, i64 12, !8, i64 16, !5, i64 20, !5, i64 21, !8, i64 24, !8, i64 28, !15, i64 32, !8, i64 40}
!148 = !{!147, !8, i64 4}
!149 = !{!37, !8, i64 15536}
!150 = distinct !{!150, !10}
!151 = distinct !{!151, !10}
!152 = !{!147, !8, i64 0}
!153 = distinct !{!153, !10}
!154 = distinct !{!154, !10}
!155 = distinct !{!155, !10}
!156 = distinct !{!156, !10}
!157 = !{!12, !8, i64 0}
!158 = !{!12, !8, i64 4}
!159 = !{!160, !160, i64 0}
!160 = !{!"p1 short", !4, i64 0}
!161 = !{!52, !52, i64 0}
!162 = distinct !{!162, !10}
!163 = distinct !{!163, !10}
!164 = !{!165, !52, i64 10}
!165 = !{!"timeb", !166, i64 0, !52, i64 8, !52, i64 10, !52, i64 12}
!166 = !{!"long", !5, i64 0}
!167 = !{!165, !166, i64 0}
!168 = !{!165, !52, i64 8}
!169 = distinct !{!169, !10}
