; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/rdopt.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/rdopt.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_8x8DATA = type { i32, [16 x [16 x i32]], [16 x [16 x i32]], [16 x [16 x i32]], [3 x [16 x [16 x i32]]], [4 x i16], [4 x i8], [4 x i8], [4 x i8], [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i32]] }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, [3 x [2 x i32]] }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.pix_pos = type { i32, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Decoders = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@AdaptRndCrPos = dso_local constant [2 x [5 x i32]] [[5 x i32] [i32 4, i32 7, i32 1, i32 4, i32 1], [5 x i32] [i32 10, i32 13, i32 10, i32 10, i32 10]], align 4
@AdaptRndPos = dso_local constant [4 x [5 x i32]] [[5 x i32] [i32 3, i32 6, i32 0, i32 3, i32 0], [5 x i32] [i32 1, i32 2, i32 0, i32 1, i32 2], [5 x i32] [i32 9, i32 12, i32 9, i32 9, i32 9], [5 x i32] [i32 3, i32 4, i32 3, i32 3, i32 3]], align 4
@bestInterFAdjust4x4 = dso_local global ptr null, align 8
@bestIntraFAdjust4x4 = dso_local global ptr null, align 8
@bestInterFAdjust8x8 = dso_local global ptr null, align 8
@bestIntraFAdjust8x8 = dso_local global ptr null, align 8
@bestInterFAdjust4x4Cr = dso_local global ptr null, align 8
@bestIntraFAdjust4x4Cr = dso_local global ptr null, align 8
@fadjust8x8 = dso_local global ptr null, align 8
@fadjust4x4 = dso_local global ptr null, align 8
@fadjust4x4Cr = dso_local global ptr null, align 8
@fadjust8x8Cr = dso_local global ptr null, align 8
@cofAC = dso_local global ptr null, align 8
@cofAC8x8 = dso_local global ptr null, align 8
@cofDC = dso_local global ptr null, align 8
@cofAC4x4 = dso_local global ptr null, align 8
@cofAC4x4intern = dso_local global ptr null, align 8
@cs_mb = dso_local global ptr null, align 8
@cs_b8 = dso_local global ptr null, align 8
@cs_cm = dso_local global ptr null, align 8
@cs_imb = dso_local global ptr null, align 8
@cs_ib8 = dso_local global ptr null, align 8
@cs_ib4 = dso_local global ptr null, align 8
@cs_pc = dso_local global ptr null, align 8
@cofAC_8x8ts = dso_local global ptr null, align 8
@input = external global ptr, align 8
@rdopt = common dso_local global ptr null, align 8
@encode_one_macroblock = common dso_local global ptr null, align 8
@img = external global ptr, align 8
@mb16x16_cost = common dso_local global double 0.000000e+00, align 8
@lambda_mf_factor = common dso_local global double 0.000000e+00, align 8
@pixel_map = common dso_local global ptr null, align 8
@refresh_map = common dso_local global ptr null, align 8
@enc_picture = external global ptr, align 8
@assignSE2partition = external global [2 x ptr], align 8
@si_frame_indicator = common dso_local global i32 0, align 4
@sp2_frame_indicator = common dso_local global i32 0, align 4
@imgY_org = common dso_local global ptr null, align 8
@writeIntraPredMode = external global ptr, align 8
@diff = internal global [16 x i32] zeroinitializer, align 4
@lrec = common dso_local global ptr null, align 8
@direct_pdir = common dso_local global ptr null, align 8
@direct_ref_idx = common dso_local global ptr null, align 8
@active_pps = common dso_local global ptr null, align 8
@wbp_weight = common dso_local global ptr null, align 8
@decs = external global ptr, align 8
@writeB8_typeInfo = external global ptr, align 8
@cbp8x8 = common dso_local global i32 0, align 4
@best8x8pdir = common dso_local global [15 x [4 x i8]] zeroinitializer, align 1
@best8x8mode = common dso_local global [4 x i16] zeroinitializer, align 2
@.str = private unnamed_addr constant [51 x i8] c"Unsupported mode in SetModesAndRefframeForBlocks!\0A\00", align 1
@best8x8fwref = common dso_local global [15 x [4 x i8]] zeroinitializer, align 1
@best8x8bwref = common dso_local global [15 x [4 x i8]] zeroinitializer, align 1
@tr8x8 = common dso_local global %struct.RD_8x8DATA zeroinitializer, align 4
@cnt_nonz8_8x8ts = common dso_local global i32 0, align 4
@cbp8_8x8ts = common dso_local global i32 0, align 4
@cbp_blk8_8x8ts = common dso_local global i64 0, align 8
@cnt_nonz_8x8 = common dso_local global i32 0, align 4
@tr4x4 = common dso_local global %struct.RD_8x8DATA zeroinitializer, align 4
@cbp_blk8x8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid direction mode\00", align 1
@LEVELMVLIMIT = external constant [17 x [6 x i32]], align 4
@imgUV_org = common dso_local global ptr null, align 8
@pred = common dso_local global [16 x [16 x i16]] zeroinitializer, align 2
@best_mode = common dso_local global i16 0, align 2
@best_c_imode = common dso_local global i32 0, align 4
@best_i16offset = common dso_local global i32 0, align 4
@bi_pred_me = common dso_local global i16 0, align 2
@b8mode = common dso_local global [4 x i32] zeroinitializer, align 4
@b8pdir = common dso_local global [4 x i32] zeroinitializer, align 4
@b4_intra_pred_modes = common dso_local global [16 x i8] zeroinitializer, align 1
@b8_intra_pred_modes8x8 = common dso_local global [16 x i8] zeroinitializer, align 1
@b4_ipredmode = common dso_local global [16 x i8] zeroinitializer, align 1
@b8_ipredmode8x8 = common dso_local global [4 x [4 x i8]] zeroinitializer, align 1
@rec_mbY = common dso_local global [16 x [16 x i16]] zeroinitializer, align 2
@lrec_rec = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@rec_mbU = common dso_local global [16 x [16 x i16]] zeroinitializer, align 2
@rec_mbV = common dso_local global [16 x [16 x i16]] zeroinitializer, align 2
@lrec_rec_U = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@lrec_uv = common dso_local global ptr null, align 8
@lrec_rec_V = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@cbp = common dso_local global i32 0, align 4
@cbp_blk = common dso_local global i64 0, align 8
@luma_transform_size_8x8_flag = common dso_local global i32 0, align 4
@frefframe = common dso_local global [4 x [4 x i8]] zeroinitializer, align 1
@brefframe = common dso_local global [4 x [4 x i8]] zeroinitializer, align 1
@all_mv8x8 = common dso_local global [2 x [2 x [4 x [4 x [2 x i16]]]]] zeroinitializer, align 2
@pred_mv8x8 = common dso_local global [2 x [2 x [4 x [4 x [2 x i16]]]]] zeroinitializer, align 2
@diff4x4 = internal global [64 x i32] zeroinitializer, align 4
@diff8x8 = internal global [64 x i32] zeroinitializer, align 4
@OffsetBits = external constant i32, align 4
@OffsetList8x8 = external global ptr, align 8
@OffsetList4x4 = external global ptr, align 8
@color_formats = common dso_local global i32 0, align 4
@top_pic = common dso_local global ptr null, align 8
@bottom_pic = common dso_local global ptr null, align 8
@frame_pic = common dso_local global ptr null, align 8
@frame_pic_1 = common dso_local global ptr null, align 8
@frame_pic_2 = common dso_local global ptr null, align 8
@frame_pic_3 = common dso_local global ptr null, align 8
@frame_pic_si = common dso_local global ptr null, align 8
@Bit_Buffer = common dso_local global ptr null, align 8
@imgY_sub_tmp = common dso_local global ptr null, align 8
@PicPos = common dso_local global ptr null, align 8
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
@me_tot_time = common dso_local global i64 0, align 8
@me_time = common dso_local global i64 0, align 8
@active_sps = common dso_local global ptr null, align 8
@dsr_new_search_range = common dso_local global i32 0, align 4
@mb_adaptive = common dso_local global i32 0, align 4
@MBPairIsField = common dso_local global i32 0, align 4
@wp_weight = common dso_local global ptr null, align 8
@wp_offset = common dso_local global ptr null, align 8
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
@intras = common dso_local global i32 0, align 4
@frame_ctr = common dso_local global [5 x i32] zeroinitializer, align 4
@frame_no = common dso_local global i32 0, align 4
@nextP_tr_fld = common dso_local global i32 0, align 4
@nextP_tr_frm = common dso_local global i32 0, align 4
@tot_time = common dso_local global i64 0, align 8
@errortext = common dso_local global [300 x i8] zeroinitializer, align 1
@gop_structure = common dso_local global ptr null, align 8
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
@getNeighbour = common dso_local global ptr null, align 8
@get_mb_block_pos = common dso_local global ptr null, align 8
@McostState = common dso_local global ptr null, align 8
@SearchState = common dso_local global ptr null, align 8
@fastme_ref_cost = common dso_local global ptr null, align 8
@fastme_l0_cost = common dso_local global ptr null, align 8
@fastme_l1_cost = common dso_local global ptr null, align 8
@fastme_l0_cost_bipred = common dso_local global ptr null, align 8
@fastme_l1_cost_bipred = common dso_local global ptr null, align 8
@bipred_flag = common dso_local global i32 0, align 4
@fastme_best_cost = common dso_local global ptr null, align 8
@pred_SAD = common dso_local global i32 0, align 4
@pred_MV_ref = common dso_local global [2 x i32] zeroinitializer, align 4
@pred_MV_uplayer = common dso_local global [2 x i32] zeroinitializer, align 4
@UMHEX_blocktype = common dso_local global i32 0, align 4
@predict_point = common dso_local global [5 x [2 x i32]] zeroinitializer, align 4
@SAD_a = common dso_local global i32 0, align 4
@SAD_b = common dso_local global i32 0, align 4
@SAD_c = common dso_local global i32 0, align 4
@SAD_d = common dso_local global i32 0, align 4
@Threshold_DSR_MB = common dso_local global [8 x i32] zeroinitializer, align 4
@Bsize = common dso_local global [8 x float] zeroinitializer, align 4
@AlphaFourth_1 = common dso_local global [8 x float] zeroinitializer, align 4
@AlphaFourth_2 = common dso_local global [8 x float] zeroinitializer, align 4
@flag_intra = common dso_local global ptr null, align 8
@flag_intra_SAD = common dso_local global i32 0, align 4
@diffy = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@delta_qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@generic_RC = common dso_local global ptr null, align 8
@generic_RC_init = common dso_local global ptr null, align 8
@generic_RC_best = common dso_local global ptr null, align 8
@cost8_8x8ts = common dso_local global i32 0, align 4

; Function Attrs: nounwind
define dso_local void @clear_rdopt() #0 {
  %1 = load ptr, ptr @cofDC, align 8, !tbaa !3
  call void @free_mem_DCcoeff(ptr noundef %1)
  %2 = load ptr, ptr @cofAC, align 8, !tbaa !10
  call void @free_mem_ACcoeff(ptr noundef %2)
  %3 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  call void @free_mem_ACcoeff(ptr noundef %3)
  %4 = load ptr, ptr @cofAC4x4intern, align 8, !tbaa !10
  call void @free_mem_ACcoeff(ptr noundef %4)
  %5 = load ptr, ptr @input, align 8, !tbaa !13
  %6 = getelementptr inbounds nuw %struct.InputParameters, ptr %5, i32 0, i32 153
  %7 = load i32, ptr %6, align 4, !tbaa !14
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !10
  call void @free_mem_ACcoeff(ptr noundef %10)
  br label %11

11:                                               ; preds = %9, %0
  %12 = load ptr, ptr @input, align 8, !tbaa !13
  %13 = getelementptr inbounds nuw %struct.InputParameters, ptr %12, i32 0, i32 185
  %14 = load i32, ptr %13, align 4, !tbaa !20
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load ptr, ptr @bestInterFAdjust4x4, align 8, !tbaa !21
  call void @free_mem2Dint(ptr noundef %17)
  %18 = load ptr, ptr @bestIntraFAdjust4x4, align 8, !tbaa !21
  call void @free_mem2Dint(ptr noundef %18)
  %19 = load ptr, ptr @bestInterFAdjust8x8, align 8, !tbaa !21
  call void @free_mem2Dint(ptr noundef %19)
  %20 = load ptr, ptr @bestIntraFAdjust8x8, align 8, !tbaa !21
  call void @free_mem2Dint(ptr noundef %20)
  %21 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  call void @free_mem3Dint(ptr noundef %21, i32 noundef signext 2)
  %22 = load ptr, ptr @bestIntraFAdjust4x4Cr, align 8, !tbaa !3
  call void @free_mem3Dint(ptr noundef %22, i32 noundef signext 2)
  %23 = load ptr, ptr @fadjust8x8, align 8, !tbaa !21
  call void @free_mem2Dint(ptr noundef %23)
  %24 = load ptr, ptr @fadjust4x4, align 8, !tbaa !21
  call void @free_mem2Dint(ptr noundef %24)
  %25 = load ptr, ptr @fadjust4x4Cr, align 8, !tbaa !3
  call void @free_mem3Dint(ptr noundef %25, i32 noundef signext 2)
  %26 = load ptr, ptr @fadjust8x8Cr, align 8, !tbaa !3
  call void @free_mem3Dint(ptr noundef %26, i32 noundef signext 2)
  br label %27

27:                                               ; preds = %16, %11
  %28 = load ptr, ptr @cs_mb, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %28)
  %29 = load ptr, ptr @cs_b8, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %29)
  %30 = load ptr, ptr @cs_cm, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %30)
  %31 = load ptr, ptr @cs_imb, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %31)
  %32 = load ptr, ptr @cs_ib8, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %32)
  %33 = load ptr, ptr @cs_ib4, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %33)
  %34 = load ptr, ptr @cs_pc, align 8, !tbaa !13
  call void @delete_coding_state(ptr noundef %34)
  ret void
}

declare void @free_mem_DCcoeff(ptr noundef) #1

declare void @free_mem_ACcoeff(ptr noundef) #1

declare void @free_mem2Dint(ptr noundef) #1

declare void @free_mem3Dint(ptr noundef, i32 noundef signext) #1

declare void @delete_coding_state(ptr noundef) #1

; Function Attrs: nounwind
define dso_local void @init_rdopt() #0 {
  store ptr null, ptr @rdopt, align 8, !tbaa !13
  %1 = call signext i32 @get_mem_DCcoeff(ptr noundef @cofDC)
  %2 = call signext i32 @get_mem_ACcoeff(ptr noundef @cofAC)
  %3 = call signext i32 @get_mem_ACcoeff(ptr noundef @cofAC8x8)
  %4 = call signext i32 @get_mem_ACcoeff(ptr noundef @cofAC4x4intern)
  %5 = load ptr, ptr @cofAC4x4intern, align 8, !tbaa !10
  %6 = getelementptr inbounds ptr, ptr %5, i64 0
  %7 = load ptr, ptr %6, align 8, !tbaa !3
  %8 = getelementptr inbounds ptr, ptr %7, i64 0
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  store ptr %9, ptr @cofAC4x4, align 8, !tbaa !21
  %10 = load ptr, ptr @input, align 8, !tbaa !13
  %11 = getelementptr inbounds nuw %struct.InputParameters, ptr %10, i32 0, i32 153
  %12 = load i32, ptr %11, align 4, !tbaa !14
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = call signext i32 @get_mem_ACcoeff(ptr noundef @cofAC_8x8ts)
  br label %16

16:                                               ; preds = %14, %0
  %17 = load ptr, ptr @input, align 8, !tbaa !13
  %18 = getelementptr inbounds nuw %struct.InputParameters, ptr %17, i32 0, i32 113
  %19 = load i32, ptr %18, align 8, !tbaa !23
  switch i32 %19, label %24 [
    i32 0, label %20
    i32 1, label %21
    i32 2, label %22
    i32 3, label %23
  ]

20:                                               ; preds = %16
  store ptr @encode_one_macroblock_low, ptr @encode_one_macroblock, align 8, !tbaa !13
  br label %25

21:                                               ; preds = %16
  store ptr @encode_one_macroblock_high, ptr @encode_one_macroblock, align 8, !tbaa !13
  br label %25

22:                                               ; preds = %16
  store ptr @encode_one_macroblock_highfast, ptr @encode_one_macroblock, align 8, !tbaa !13
  br label %25

23:                                               ; preds = %16
  store ptr @encode_one_macroblock_highloss, ptr @encode_one_macroblock, align 8, !tbaa !13
  br label %25

24:                                               ; preds = %16
  store ptr @encode_one_macroblock_high, ptr @encode_one_macroblock, align 8, !tbaa !13
  br label %25

25:                                               ; preds = %24, %23, %22, %21, %20
  %26 = load ptr, ptr @input, align 8, !tbaa !13
  %27 = getelementptr inbounds nuw %struct.InputParameters, ptr %26, i32 0, i32 185
  %28 = load i32, ptr %27, align 4, !tbaa !20
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %25
  %31 = call signext i32 @get_mem2Dint(ptr noundef @bestInterFAdjust4x4, i32 noundef signext 16, i32 noundef signext 16)
  %32 = call signext i32 @get_mem2Dint(ptr noundef @bestIntraFAdjust4x4, i32 noundef signext 16, i32 noundef signext 16)
  %33 = call signext i32 @get_mem2Dint(ptr noundef @bestInterFAdjust8x8, i32 noundef signext 16, i32 noundef signext 16)
  %34 = call signext i32 @get_mem2Dint(ptr noundef @bestIntraFAdjust8x8, i32 noundef signext 16, i32 noundef signext 16)
  %35 = load ptr, ptr @img, align 8, !tbaa !13
  %36 = getelementptr inbounds nuw %struct.ImageParameters, ptr %35, i32 0, i32 163
  %37 = load i32, ptr %36, align 4, !tbaa !24
  %38 = load ptr, ptr @img, align 8, !tbaa !13
  %39 = getelementptr inbounds nuw %struct.ImageParameters, ptr %38, i32 0, i32 162
  %40 = load i32, ptr %39, align 8, !tbaa !36
  %41 = call signext i32 @get_mem3Dint(ptr noundef @bestInterFAdjust4x4Cr, i32 noundef signext 2, i32 noundef signext %37, i32 noundef signext %40)
  %42 = load ptr, ptr @img, align 8, !tbaa !13
  %43 = getelementptr inbounds nuw %struct.ImageParameters, ptr %42, i32 0, i32 163
  %44 = load i32, ptr %43, align 4, !tbaa !24
  %45 = load ptr, ptr @img, align 8, !tbaa !13
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 162
  %47 = load i32, ptr %46, align 8, !tbaa !36
  %48 = call signext i32 @get_mem3Dint(ptr noundef @bestIntraFAdjust4x4Cr, i32 noundef signext 2, i32 noundef signext %44, i32 noundef signext %47)
  %49 = call signext i32 @get_mem2Dint(ptr noundef @fadjust8x8, i32 noundef signext 16, i32 noundef signext 16)
  %50 = call signext i32 @get_mem2Dint(ptr noundef @fadjust4x4, i32 noundef signext 16, i32 noundef signext 16)
  %51 = load ptr, ptr @img, align 8, !tbaa !13
  %52 = getelementptr inbounds nuw %struct.ImageParameters, ptr %51, i32 0, i32 163
  %53 = load i32, ptr %52, align 4, !tbaa !24
  %54 = load ptr, ptr @img, align 8, !tbaa !13
  %55 = getelementptr inbounds nuw %struct.ImageParameters, ptr %54, i32 0, i32 162
  %56 = load i32, ptr %55, align 8, !tbaa !36
  %57 = call signext i32 @get_mem3Dint(ptr noundef @fadjust4x4Cr, i32 noundef signext 2, i32 noundef signext %53, i32 noundef signext %56)
  %58 = load ptr, ptr @img, align 8, !tbaa !13
  %59 = getelementptr inbounds nuw %struct.ImageParameters, ptr %58, i32 0, i32 163
  %60 = load i32, ptr %59, align 4, !tbaa !24
  %61 = load ptr, ptr @img, align 8, !tbaa !13
  %62 = getelementptr inbounds nuw %struct.ImageParameters, ptr %61, i32 0, i32 162
  %63 = load i32, ptr %62, align 8, !tbaa !36
  %64 = call signext i32 @get_mem3Dint(ptr noundef @fadjust8x8Cr, i32 noundef signext 2, i32 noundef signext %60, i32 noundef signext %63)
  br label %65

65:                                               ; preds = %30, %25
  %66 = call ptr @create_coding_state()
  store ptr %66, ptr @cs_mb, align 8, !tbaa !13
  %67 = call ptr @create_coding_state()
  store ptr %67, ptr @cs_b8, align 8, !tbaa !13
  %68 = call ptr @create_coding_state()
  store ptr %68, ptr @cs_cm, align 8, !tbaa !13
  %69 = call ptr @create_coding_state()
  store ptr %69, ptr @cs_imb, align 8, !tbaa !13
  %70 = call ptr @create_coding_state()
  store ptr %70, ptr @cs_ib8, align 8, !tbaa !13
  %71 = call ptr @create_coding_state()
  store ptr %71, ptr @cs_ib4, align 8, !tbaa !13
  %72 = call ptr @create_coding_state()
  store ptr %72, ptr @cs_pc, align 8, !tbaa !13
  %73 = load ptr, ptr @input, align 8, !tbaa !13
  %74 = getelementptr inbounds nuw %struct.InputParameters, ptr %73, i32 0, i32 114
  %75 = load i32, ptr %74, align 4, !tbaa !37
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %65
  store double 5.120000e+02, ptr @mb16x16_cost, align 8, !tbaa !38
  store double 1.000000e+00, ptr @lambda_mf_factor, align 8, !tbaa !38
  br label %78

78:                                               ; preds = %77, %65
  ret void
}

declare signext i32 @get_mem_DCcoeff(ptr noundef) #1

declare signext i32 @get_mem_ACcoeff(ptr noundef) #1

declare void @encode_one_macroblock_low() #1

declare void @encode_one_macroblock_high() #1

declare void @encode_one_macroblock_highfast() #1

declare void @encode_one_macroblock_highloss() #1

declare signext i32 @get_mem2Dint(ptr noundef, i32 noundef signext, i32 noundef signext) #1

declare signext i32 @get_mem3Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

declare ptr @create_coding_state() #1

; Function Attrs: nounwind
define dso_local void @UpdatePixelMap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  %7 = load ptr, ptr @img, align 8, !tbaa !13
  %8 = getelementptr inbounds nuw %struct.ImageParameters, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %42

11:                                               ; preds = %0
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %12

12:                                               ; preds = %38, %11
  %13 = load i32, ptr %3, align 4, !tbaa !40
  %14 = load ptr, ptr @img, align 8, !tbaa !13
  %15 = getelementptr inbounds nuw %struct.ImageParameters, ptr %14, i32 0, i32 17
  %16 = load i32, ptr %15, align 4, !tbaa !41
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %12
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, ptr %4, align 4, !tbaa !40
  %21 = load ptr, ptr @img, align 8, !tbaa !13
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %27 = load i32, ptr %3, align 4, !tbaa !40
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  %31 = load i32, ptr %4, align 4, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 %32
  store i8 1, ptr %33, align 1, !tbaa !45
  br label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %4, align 4, !tbaa !40
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %4, align 4, !tbaa !40
  br label %19, !llvm.loop !46

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, ptr %3, align 4, !tbaa !40
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %3, align 4, !tbaa !40
  br label %12, !llvm.loop !48

41:                                               ; preds = %12
  br label %163

42:                                               ; preds = %0
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %43

43:                                               ; preds = %159, %42
  %44 = load i32, ptr %2, align 4, !tbaa !40
  %45 = load ptr, ptr @img, align 8, !tbaa !13
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 17
  %47 = load i32, ptr %46, align 4, !tbaa !41
  %48 = ashr i32 %47, 3
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %162

50:                                               ; preds = %43
  store i32 0, ptr %1, align 4, !tbaa !40
  br label %51

51:                                               ; preds = %155, %50
  %52 = load i32, ptr %1, align 4, !tbaa !40
  %53 = load ptr, ptr @img, align 8, !tbaa !13
  %54 = getelementptr inbounds nuw %struct.ImageParameters, ptr %53, i32 0, i32 13
  %55 = load i32, ptr %54, align 4, !tbaa !42
  %56 = ashr i32 %55, 3
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %158

58:                                               ; preds = %51
  %59 = load i32, ptr %2, align 4, !tbaa !40
  %60 = mul nsw i32 %59, 8
  %61 = add nsw i32 %60, 8
  store i32 %61, ptr %6, align 4, !tbaa !40
  %62 = load i32, ptr %1, align 4, !tbaa !40
  %63 = mul nsw i32 %62, 8
  %64 = add nsw i32 %63, 8
  store i32 %64, ptr %5, align 4, !tbaa !40
  %65 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %66 = load i32, ptr %2, align 4, !tbaa !40
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = load i32, ptr %1, align 4, !tbaa !40
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !45
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %58
  %76 = load i32, ptr %2, align 4, !tbaa !40
  %77 = mul nsw i32 %76, 8
  store i32 %77, ptr %3, align 4, !tbaa !40
  br label %78

78:                                               ; preds = %102, %75
  %79 = load i32, ptr %3, align 4, !tbaa !40
  %80 = load i32, ptr %6, align 4, !tbaa !40
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %78
  %83 = load i32, ptr %1, align 4, !tbaa !40
  %84 = mul nsw i32 %83, 8
  store i32 %84, ptr %4, align 4, !tbaa !40
  br label %85

85:                                               ; preds = %98, %82
  %86 = load i32, ptr %4, align 4, !tbaa !40
  %87 = load i32, ptr %5, align 4, !tbaa !40
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %91 = load i32, ptr %3, align 4, !tbaa !40
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !44
  %95 = load i32, ptr %4, align 4, !tbaa !40
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %94, i64 %96
  store i8 1, ptr %97, align 1, !tbaa !45
  br label %98

98:                                               ; preds = %89
  %99 = load i32, ptr %4, align 4, !tbaa !40
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %4, align 4, !tbaa !40
  br label %85, !llvm.loop !49

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101
  %103 = load i32, ptr %3, align 4, !tbaa !40
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %3, align 4, !tbaa !40
  br label %78, !llvm.loop !50

105:                                              ; preds = %78
  br label %154

106:                                              ; preds = %58
  %107 = load i32, ptr %2, align 4, !tbaa !40
  %108 = mul nsw i32 %107, 8
  store i32 %108, ptr %3, align 4, !tbaa !40
  br label %109

109:                                              ; preds = %150, %106
  %110 = load i32, ptr %3, align 4, !tbaa !40
  %111 = load i32, ptr %6, align 4, !tbaa !40
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %153

113:                                              ; preds = %109
  %114 = load i32, ptr %1, align 4, !tbaa !40
  %115 = mul nsw i32 %114, 8
  store i32 %115, ptr %4, align 4, !tbaa !40
  br label %116

116:                                              ; preds = %146, %113
  %117 = load i32, ptr %4, align 4, !tbaa !40
  %118 = load i32, ptr %5, align 4, !tbaa !40
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %116
  %121 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %122 = load i32, ptr %3, align 4, !tbaa !40
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %121, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !44
  %126 = load i32, ptr %4, align 4, !tbaa !40
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, ptr %125, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !45
  %130 = zext i8 %129 to i32
  %131 = add nsw i32 %130, 1
  %132 = load ptr, ptr @input, align 8, !tbaa !13
  %133 = getelementptr inbounds nuw %struct.InputParameters, ptr %132, i32 0, i32 8
  %134 = load i32, ptr %133, align 8, !tbaa !51
  %135 = add nsw i32 %134, 1
  %136 = call signext i32 @imin(i32 noundef signext %131, i32 noundef signext %135)
  %137 = trunc i32 %136 to i8
  %138 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %139 = load i32, ptr %3, align 4, !tbaa !40
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !44
  %143 = load i32, ptr %4, align 4, !tbaa !40
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %142, i64 %144
  store i8 %137, ptr %145, align 1, !tbaa !45
  br label %146

146:                                              ; preds = %120
  %147 = load i32, ptr %4, align 4, !tbaa !40
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %4, align 4, !tbaa !40
  br label %116, !llvm.loop !52

149:                                              ; preds = %116
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %3, align 4, !tbaa !40
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %3, align 4, !tbaa !40
  br label %109, !llvm.loop !53

153:                                              ; preds = %109
  br label %154

154:                                              ; preds = %153, %105
  br label %155

155:                                              ; preds = %154
  %156 = load i32, ptr %1, align 4, !tbaa !40
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %1, align 4, !tbaa !40
  br label %51, !llvm.loop !54

158:                                              ; preds = %51
  br label %159

159:                                              ; preds = %158
  %160 = load i32, ptr %2, align 4, !tbaa !40
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %2, align 4, !tbaa !40
  br label %43, !llvm.loop !55

162:                                              ; preds = %43
  br label %163

163:                                              ; preds = %162, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: inlinehint nounwind
define internal signext i32 @imin(i32 noundef signext %0, i32 noundef signext %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !40
  store i32 %1, ptr %4, align 4, !tbaa !40
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load i32, ptr %4, align 4, !tbaa !40
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !40
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !40
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local signext i32 @CheckReliabilityOfRef(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !40
  store i32 %1, ptr %7, align 4, !tbaa !40
  store i32 %2, ptr %8, align 4, !tbaa !40
  store i32 %3, ptr %9, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  %30 = load ptr, ptr @img, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 13
  %32 = load i32, ptr %31, align 4, !tbaa !42
  %33 = sub nsw i32 %32, 1
  store i32 %33, ptr %22, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  %34 = load ptr, ptr @img, align 8, !tbaa !13
  %35 = getelementptr inbounds nuw %struct.ImageParameters, ptr %34, i32 0, i32 17
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = sub nsw i32 %36, 1
  store i32 %37, ptr %23, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  %38 = load i32, ptr %8, align 4, !tbaa !40
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %24, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  %40 = load i32, ptr %9, align 4, !tbaa !40
  %41 = icmp sge i32 %40, 4
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load i32, ptr %6, align 4, !tbaa !40
  %44 = ashr i32 %43, 1
  %45 = mul nsw i32 2, %44
  br label %55

46:                                               ; preds = %4
  %47 = load i32, ptr %9, align 4, !tbaa !40
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, ptr %6, align 4, !tbaa !40
  %51 = mul nsw i32 2, %50
  br label %53

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 0, %52 ]
  br label %55

55:                                               ; preds = %53, %42
  %56 = phi i32 [ %45, %42 ], [ %54, %53 ]
  store i32 %56, ptr %25, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  %57 = load i32, ptr %25, align 4, !tbaa !40
  %58 = load i32, ptr %9, align 4, !tbaa !40
  %59 = icmp sge i32 %58, 4
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load i32, ptr %9, align 4, !tbaa !40
  %62 = icmp eq i32 %61, 2
  br label %63

63:                                               ; preds = %60, %55
  %64 = phi i1 [ true, %55 ], [ %62, %60 ]
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 2, i32 4
  %67 = add nsw i32 %57, %66
  store i32 %67, ptr %26, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  %68 = load i32, ptr %9, align 4, !tbaa !40
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, ptr %6, align 4, !tbaa !40
  %72 = and i32 %71, 1
  %73 = mul nsw i32 2, %72
  br label %83

74:                                               ; preds = %63
  %75 = load i32, ptr %9, align 4, !tbaa !40
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, ptr %6, align 4, !tbaa !40
  %79 = mul nsw i32 2, %78
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  br label %83

83:                                               ; preds = %81, %70
  %84 = phi i32 [ %73, %70 ], [ %82, %81 ]
  store i32 %84, ptr %27, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  %85 = load i32, ptr %27, align 4, !tbaa !40
  %86 = load i32, ptr %9, align 4, !tbaa !40
  %87 = icmp sge i32 %86, 4
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = load i32, ptr %9, align 4, !tbaa !40
  %90 = icmp eq i32 %89, 3
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi i1 [ true, %83 ], [ %90, %88 ]
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 2, i32 4
  %95 = add nsw i32 %85, %94
  store i32 %95, ptr %28, align 4, !tbaa !40
  %96 = load i32, ptr %25, align 4, !tbaa !40
  store i32 %96, ptr %12, align 4, !tbaa !40
  br label %97

97:                                               ; preds = %590, %91
  %98 = load i32, ptr %12, align 4, !tbaa !40
  %99 = load i32, ptr %26, align 4, !tbaa !40
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %593

101:                                              ; preds = %97
  %102 = load i32, ptr %27, align 4, !tbaa !40
  store i32 %102, ptr %13, align 4, !tbaa !40
  br label %103

103:                                              ; preds = %586, %101
  %104 = load i32, ptr %13, align 4, !tbaa !40
  %105 = load i32, ptr %28, align 4, !tbaa !40
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %589

107:                                              ; preds = %103
  %108 = load ptr, ptr @img, align 8, !tbaa !13
  %109 = getelementptr inbounds nuw %struct.ImageParameters, ptr %108, i32 0, i32 80
  %110 = load ptr, ptr %109, align 8, !tbaa !56
  %111 = load i32, ptr %12, align 4, !tbaa !40
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %110, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  %115 = load i32, ptr %13, align 4, !tbaa !40
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !59
  %119 = load i32, ptr %7, align 4, !tbaa !40
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !61
  %123 = load i32, ptr %8, align 4, !tbaa !40
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !63
  %127 = load i32, ptr %9, align 4, !tbaa !40
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %126, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !65
  %131 = getelementptr inbounds i16, ptr %130, i64 1
  %132 = load i16, ptr %131, align 2, !tbaa !67
  %133 = sext i16 %132 to i32
  store i32 %133, ptr %16, align 4, !tbaa !40
  %134 = load ptr, ptr @img, align 8, !tbaa !13
  %135 = getelementptr inbounds nuw %struct.ImageParameters, ptr %134, i32 0, i32 38
  %136 = load i32, ptr %135, align 4, !tbaa !68
  %137 = load i32, ptr %12, align 4, !tbaa !40
  %138 = add nsw i32 %136, %137
  %139 = mul nsw i32 %138, 4
  %140 = mul nsw i32 %139, 4
  %141 = load i32, ptr %16, align 4, !tbaa !40
  %142 = add nsw i32 %141, %140
  store i32 %142, ptr %16, align 4, !tbaa !40
  %143 = load ptr, ptr @img, align 8, !tbaa !13
  %144 = getelementptr inbounds nuw %struct.ImageParameters, ptr %143, i32 0, i32 80
  %145 = load ptr, ptr %144, align 8, !tbaa !56
  %146 = load i32, ptr %12, align 4, !tbaa !40
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %145, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !57
  %150 = load i32, ptr %13, align 4, !tbaa !40
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !59
  %154 = load i32, ptr %7, align 4, !tbaa !40
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !61
  %158 = load i32, ptr %8, align 4, !tbaa !40
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !63
  %162 = load i32, ptr %9, align 4, !tbaa !40
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !65
  %166 = getelementptr inbounds i16, ptr %165, i64 0
  %167 = load i16, ptr %166, align 2, !tbaa !67
  %168 = sext i16 %167 to i32
  store i32 %168, ptr %17, align 4, !tbaa !40
  %169 = load ptr, ptr @img, align 8, !tbaa !13
  %170 = getelementptr inbounds nuw %struct.ImageParameters, ptr %169, i32 0, i32 37
  %171 = load i32, ptr %170, align 8, !tbaa !69
  %172 = load i32, ptr %13, align 4, !tbaa !40
  %173 = add nsw i32 %171, %172
  %174 = mul nsw i32 %173, 4
  %175 = mul nsw i32 %174, 4
  %176 = load i32, ptr %17, align 4, !tbaa !40
  %177 = add nsw i32 %176, %175
  store i32 %177, ptr %17, align 4, !tbaa !40
  %178 = load i32, ptr %16, align 4, !tbaa !40
  %179 = and i32 %178, 3
  store i32 %179, ptr %14, align 4, !tbaa !40
  %180 = load i32, ptr %17, align 4, !tbaa !40
  %181 = and i32 %180, 3
  store i32 %181, ptr %15, align 4, !tbaa !40
  %182 = load i32, ptr %16, align 4, !tbaa !40
  %183 = load i32, ptr %14, align 4, !tbaa !40
  %184 = sub nsw i32 %182, %183
  %185 = ashr i32 %184, 2
  store i32 %185, ptr %16, align 4, !tbaa !40
  %186 = load i32, ptr %17, align 4, !tbaa !40
  %187 = load i32, ptr %15, align 4, !tbaa !40
  %188 = sub nsw i32 %186, %187
  %189 = ashr i32 %188, 2
  store i32 %189, ptr %17, align 4, !tbaa !40
  %190 = load i32, ptr %14, align 4, !tbaa !40
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %236

192:                                              ; preds = %107
  %193 = load i32, ptr %15, align 4, !tbaa !40
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %236

195:                                              ; preds = %192
  %196 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %196, ptr %10, align 4, !tbaa !40
  br label %197

197:                                              ; preds = %232, %195
  %198 = load i32, ptr %10, align 4, !tbaa !40
  %199 = load i32, ptr %16, align 4, !tbaa !40
  %200 = add nsw i32 %199, 4
  %201 = icmp slt i32 %198, %200
  br i1 %201, label %202, label %235

202:                                              ; preds = %197
  %203 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %203, ptr %11, align 4, !tbaa !40
  br label %204

204:                                              ; preds = %228, %202
  %205 = load i32, ptr %11, align 4, !tbaa !40
  %206 = load i32, ptr %17, align 4, !tbaa !40
  %207 = add nsw i32 %206, 4
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %231

209:                                              ; preds = %204
  %210 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %211 = load i32, ptr %23, align 4, !tbaa !40
  %212 = load i32, ptr %10, align 4, !tbaa !40
  %213 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %211, i32 noundef signext %212)
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds ptr, ptr %210, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !44
  %217 = load i32, ptr %22, align 4, !tbaa !40
  %218 = load i32, ptr %11, align 4, !tbaa !40
  %219 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %217, i32 noundef signext %218)
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %216, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !45
  %223 = zext i8 %222 to i32
  %224 = load i32, ptr %24, align 4, !tbaa !40
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %209
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %227
  %229 = load i32, ptr %11, align 4, !tbaa !40
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %11, align 4, !tbaa !40
  br label %204, !llvm.loop !70

231:                                              ; preds = %204
  br label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %10, align 4, !tbaa !40
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %10, align 4, !tbaa !40
  br label %197, !llvm.loop !71

235:                                              ; preds = %197
  br label %585

236:                                              ; preds = %192, %107
  %237 = load i32, ptr %14, align 4, !tbaa !40
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %292

239:                                              ; preds = %236
  %240 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %240, ptr %10, align 4, !tbaa !40
  br label %241

241:                                              ; preds = %288, %239
  %242 = load i32, ptr %10, align 4, !tbaa !40
  %243 = load i32, ptr %16, align 4, !tbaa !40
  %244 = add nsw i32 %243, 4
  %245 = icmp slt i32 %242, %244
  br i1 %245, label %246, label %291

246:                                              ; preds = %241
  %247 = load i32, ptr %23, align 4, !tbaa !40
  %248 = load i32, ptr %10, align 4, !tbaa !40
  %249 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %247, i32 noundef signext %248)
  store i32 %249, ptr %21, align 4, !tbaa !40
  %250 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %250, ptr %11, align 4, !tbaa !40
  br label %251

251:                                              ; preds = %284, %246
  %252 = load i32, ptr %11, align 4, !tbaa !40
  %253 = load i32, ptr %17, align 4, !tbaa !40
  %254 = add nsw i32 %253, 4
  %255 = icmp slt i32 %252, %254
  br i1 %255, label %256, label %287

256:                                              ; preds = %251
  store i32 -2, ptr %19, align 4, !tbaa !40
  br label %257

257:                                              ; preds = %280, %256
  %258 = load i32, ptr %19, align 4, !tbaa !40
  %259 = icmp slt i32 %258, 4
  br i1 %259, label %260, label %283

260:                                              ; preds = %257
  %261 = load i32, ptr %22, align 4, !tbaa !40
  %262 = load i32, ptr %11, align 4, !tbaa !40
  %263 = load i32, ptr %19, align 4, !tbaa !40
  %264 = add nsw i32 %262, %263
  %265 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %261, i32 noundef signext %264)
  store i32 %265, ptr %20, align 4, !tbaa !40
  %266 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %267 = load i32, ptr %21, align 4, !tbaa !40
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %266, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !44
  %271 = load i32, ptr %20, align 4, !tbaa !40
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %270, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !45
  %275 = zext i8 %274 to i32
  %276 = load i32, ptr %24, align 4, !tbaa !40
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %279

278:                                              ; preds = %260
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

279:                                              ; preds = %260
  br label %280

280:                                              ; preds = %279
  %281 = load i32, ptr %19, align 4, !tbaa !40
  %282 = add nsw i32 %281, 1
  store i32 %282, ptr %19, align 4, !tbaa !40
  br label %257, !llvm.loop !72

283:                                              ; preds = %257
  br label %284

284:                                              ; preds = %283
  %285 = load i32, ptr %11, align 4, !tbaa !40
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %11, align 4, !tbaa !40
  br label %251, !llvm.loop !73

287:                                              ; preds = %251
  br label %288

288:                                              ; preds = %287
  %289 = load i32, ptr %10, align 4, !tbaa !40
  %290 = add nsw i32 %289, 1
  store i32 %290, ptr %10, align 4, !tbaa !40
  br label %241, !llvm.loop !74

291:                                              ; preds = %241
  br label %584

292:                                              ; preds = %236
  %293 = load i32, ptr %15, align 4, !tbaa !40
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %348

295:                                              ; preds = %292
  %296 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %296, ptr %10, align 4, !tbaa !40
  br label %297

297:                                              ; preds = %344, %295
  %298 = load i32, ptr %10, align 4, !tbaa !40
  %299 = load i32, ptr %16, align 4, !tbaa !40
  %300 = add nsw i32 %299, 4
  %301 = icmp slt i32 %298, %300
  br i1 %301, label %302, label %347

302:                                              ; preds = %297
  %303 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %303, ptr %11, align 4, !tbaa !40
  br label %304

304:                                              ; preds = %340, %302
  %305 = load i32, ptr %11, align 4, !tbaa !40
  %306 = load i32, ptr %17, align 4, !tbaa !40
  %307 = add nsw i32 %306, 4
  %308 = icmp slt i32 %305, %307
  br i1 %308, label %309, label %343

309:                                              ; preds = %304
  %310 = load i32, ptr %22, align 4, !tbaa !40
  %311 = load i32, ptr %11, align 4, !tbaa !40
  %312 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %310, i32 noundef signext %311)
  store i32 %312, ptr %20, align 4, !tbaa !40
  store i32 -2, ptr %18, align 4, !tbaa !40
  br label %313

313:                                              ; preds = %336, %309
  %314 = load i32, ptr %18, align 4, !tbaa !40
  %315 = icmp slt i32 %314, 4
  br i1 %315, label %316, label %339

316:                                              ; preds = %313
  %317 = load i32, ptr %23, align 4, !tbaa !40
  %318 = load i32, ptr %18, align 4, !tbaa !40
  %319 = load i32, ptr %10, align 4, !tbaa !40
  %320 = add nsw i32 %318, %319
  %321 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %317, i32 noundef signext %320)
  store i32 %321, ptr %21, align 4, !tbaa !40
  %322 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %323 = load i32, ptr %21, align 4, !tbaa !40
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %322, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !44
  %327 = load i32, ptr %20, align 4, !tbaa !40
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %326, i64 %328
  %330 = load i8, ptr %329, align 1, !tbaa !45
  %331 = zext i8 %330 to i32
  %332 = load i32, ptr %24, align 4, !tbaa !40
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %316
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

335:                                              ; preds = %316
  br label %336

336:                                              ; preds = %335
  %337 = load i32, ptr %18, align 4, !tbaa !40
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr %18, align 4, !tbaa !40
  br label %313, !llvm.loop !75

339:                                              ; preds = %313
  br label %340

340:                                              ; preds = %339
  %341 = load i32, ptr %11, align 4, !tbaa !40
  %342 = add nsw i32 %341, 1
  store i32 %342, ptr %11, align 4, !tbaa !40
  br label %304, !llvm.loop !76

343:                                              ; preds = %304
  br label %344

344:                                              ; preds = %343
  %345 = load i32, ptr %10, align 4, !tbaa !40
  %346 = add nsw i32 %345, 1
  store i32 %346, ptr %10, align 4, !tbaa !40
  br label %297, !llvm.loop !77

347:                                              ; preds = %297
  br label %583

348:                                              ; preds = %292
  %349 = load i32, ptr %15, align 4, !tbaa !40
  %350 = icmp eq i32 %349, 2
  br i1 %350, label %351, label %414

351:                                              ; preds = %348
  %352 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %352, ptr %10, align 4, !tbaa !40
  br label %353

353:                                              ; preds = %410, %351
  %354 = load i32, ptr %10, align 4, !tbaa !40
  %355 = load i32, ptr %16, align 4, !tbaa !40
  %356 = add nsw i32 %355, 4
  %357 = icmp slt i32 %354, %356
  br i1 %357, label %358, label %413

358:                                              ; preds = %353
  %359 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %359, ptr %11, align 4, !tbaa !40
  br label %360

360:                                              ; preds = %406, %358
  %361 = load i32, ptr %11, align 4, !tbaa !40
  %362 = load i32, ptr %17, align 4, !tbaa !40
  %363 = add nsw i32 %362, 4
  %364 = icmp slt i32 %361, %363
  br i1 %364, label %365, label %409

365:                                              ; preds = %360
  store i32 -2, ptr %18, align 4, !tbaa !40
  br label %366

366:                                              ; preds = %402, %365
  %367 = load i32, ptr %18, align 4, !tbaa !40
  %368 = icmp slt i32 %367, 4
  br i1 %368, label %369, label %405

369:                                              ; preds = %366
  %370 = load i32, ptr %23, align 4, !tbaa !40
  %371 = load i32, ptr %18, align 4, !tbaa !40
  %372 = load i32, ptr %10, align 4, !tbaa !40
  %373 = add nsw i32 %371, %372
  %374 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %370, i32 noundef signext %373)
  store i32 %374, ptr %21, align 4, !tbaa !40
  store i32 -2, ptr %19, align 4, !tbaa !40
  br label %375

375:                                              ; preds = %398, %369
  %376 = load i32, ptr %19, align 4, !tbaa !40
  %377 = icmp slt i32 %376, 4
  br i1 %377, label %378, label %401

378:                                              ; preds = %375
  %379 = load i32, ptr %22, align 4, !tbaa !40
  %380 = load i32, ptr %19, align 4, !tbaa !40
  %381 = load i32, ptr %11, align 4, !tbaa !40
  %382 = add nsw i32 %380, %381
  %383 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %379, i32 noundef signext %382)
  store i32 %383, ptr %20, align 4, !tbaa !40
  %384 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %385 = load i32, ptr %21, align 4, !tbaa !40
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds ptr, ptr %384, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !44
  %389 = load i32, ptr %20, align 4, !tbaa !40
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i8, ptr %388, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !45
  %393 = zext i8 %392 to i32
  %394 = load i32, ptr %24, align 4, !tbaa !40
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %378
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

397:                                              ; preds = %378
  br label %398

398:                                              ; preds = %397
  %399 = load i32, ptr %19, align 4, !tbaa !40
  %400 = add nsw i32 %399, 1
  store i32 %400, ptr %19, align 4, !tbaa !40
  br label %375, !llvm.loop !78

401:                                              ; preds = %375
  br label %402

402:                                              ; preds = %401
  %403 = load i32, ptr %18, align 4, !tbaa !40
  %404 = add nsw i32 %403, 1
  store i32 %404, ptr %18, align 4, !tbaa !40
  br label %366, !llvm.loop !79

405:                                              ; preds = %366
  br label %406

406:                                              ; preds = %405
  %407 = load i32, ptr %11, align 4, !tbaa !40
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %11, align 4, !tbaa !40
  br label %360, !llvm.loop !80

409:                                              ; preds = %360
  br label %410

410:                                              ; preds = %409
  %411 = load i32, ptr %10, align 4, !tbaa !40
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %10, align 4, !tbaa !40
  br label %353, !llvm.loop !81

413:                                              ; preds = %353
  br label %582

414:                                              ; preds = %348
  %415 = load i32, ptr %14, align 4, !tbaa !40
  %416 = icmp eq i32 %415, 2
  br i1 %416, label %417, label %480

417:                                              ; preds = %414
  %418 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %418, ptr %10, align 4, !tbaa !40
  br label %419

419:                                              ; preds = %476, %417
  %420 = load i32, ptr %10, align 4, !tbaa !40
  %421 = load i32, ptr %16, align 4, !tbaa !40
  %422 = add nsw i32 %421, 4
  %423 = icmp slt i32 %420, %422
  br i1 %423, label %424, label %479

424:                                              ; preds = %419
  %425 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %425, ptr %11, align 4, !tbaa !40
  br label %426

426:                                              ; preds = %472, %424
  %427 = load i32, ptr %11, align 4, !tbaa !40
  %428 = load i32, ptr %17, align 4, !tbaa !40
  %429 = add nsw i32 %428, 4
  %430 = icmp slt i32 %427, %429
  br i1 %430, label %431, label %475

431:                                              ; preds = %426
  store i32 -2, ptr %19, align 4, !tbaa !40
  br label %432

432:                                              ; preds = %468, %431
  %433 = load i32, ptr %19, align 4, !tbaa !40
  %434 = icmp slt i32 %433, 4
  br i1 %434, label %435, label %471

435:                                              ; preds = %432
  %436 = load i32, ptr %22, align 4, !tbaa !40
  %437 = load i32, ptr %19, align 4, !tbaa !40
  %438 = load i32, ptr %11, align 4, !tbaa !40
  %439 = add nsw i32 %437, %438
  %440 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %436, i32 noundef signext %439)
  store i32 %440, ptr %20, align 4, !tbaa !40
  store i32 -2, ptr %18, align 4, !tbaa !40
  br label %441

441:                                              ; preds = %464, %435
  %442 = load i32, ptr %18, align 4, !tbaa !40
  %443 = icmp slt i32 %442, 4
  br i1 %443, label %444, label %467

444:                                              ; preds = %441
  %445 = load i32, ptr %23, align 4, !tbaa !40
  %446 = load i32, ptr %18, align 4, !tbaa !40
  %447 = load i32, ptr %10, align 4, !tbaa !40
  %448 = add nsw i32 %446, %447
  %449 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %445, i32 noundef signext %448)
  store i32 %449, ptr %21, align 4, !tbaa !40
  %450 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %451 = load i32, ptr %21, align 4, !tbaa !40
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds ptr, ptr %450, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !44
  %455 = load i32, ptr %20, align 4, !tbaa !40
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, ptr %454, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !45
  %459 = zext i8 %458 to i32
  %460 = load i32, ptr %24, align 4, !tbaa !40
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %463

462:                                              ; preds = %444
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

463:                                              ; preds = %444
  br label %464

464:                                              ; preds = %463
  %465 = load i32, ptr %18, align 4, !tbaa !40
  %466 = add nsw i32 %465, 1
  store i32 %466, ptr %18, align 4, !tbaa !40
  br label %441, !llvm.loop !82

467:                                              ; preds = %441
  br label %468

468:                                              ; preds = %467
  %469 = load i32, ptr %19, align 4, !tbaa !40
  %470 = add nsw i32 %469, 1
  store i32 %470, ptr %19, align 4, !tbaa !40
  br label %432, !llvm.loop !83

471:                                              ; preds = %432
  br label %472

472:                                              ; preds = %471
  %473 = load i32, ptr %11, align 4, !tbaa !40
  %474 = add nsw i32 %473, 1
  store i32 %474, ptr %11, align 4, !tbaa !40
  br label %426, !llvm.loop !84

475:                                              ; preds = %426
  br label %476

476:                                              ; preds = %475
  %477 = load i32, ptr %10, align 4, !tbaa !40
  %478 = add nsw i32 %477, 1
  store i32 %478, ptr %10, align 4, !tbaa !40
  br label %419, !llvm.loop !85

479:                                              ; preds = %419
  br label %581

480:                                              ; preds = %414
  %481 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %481, ptr %10, align 4, !tbaa !40
  br label %482

482:                                              ; preds = %577, %480
  %483 = load i32, ptr %10, align 4, !tbaa !40
  %484 = load i32, ptr %16, align 4, !tbaa !40
  %485 = add nsw i32 %484, 4
  %486 = icmp slt i32 %483, %485
  br i1 %486, label %487, label %580

487:                                              ; preds = %482
  %488 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %488, ptr %11, align 4, !tbaa !40
  br label %489

489:                                              ; preds = %573, %487
  %490 = load i32, ptr %11, align 4, !tbaa !40
  %491 = load i32, ptr %17, align 4, !tbaa !40
  %492 = add nsw i32 %491, 4
  %493 = icmp slt i32 %490, %492
  br i1 %493, label %494, label %576

494:                                              ; preds = %489
  %495 = load i32, ptr %14, align 4, !tbaa !40
  %496 = icmp eq i32 %495, 1
  br i1 %496, label %497, label %499

497:                                              ; preds = %494
  %498 = load i32, ptr %10, align 4, !tbaa !40
  br label %502

499:                                              ; preds = %494
  %500 = load i32, ptr %10, align 4, !tbaa !40
  %501 = add nsw i32 %500, 1
  br label %502

502:                                              ; preds = %499, %497
  %503 = phi i32 [ %498, %497 ], [ %501, %499 ]
  store i32 %503, ptr %21, align 4, !tbaa !40
  %504 = load i32, ptr %23, align 4, !tbaa !40
  %505 = load i32, ptr %21, align 4, !tbaa !40
  %506 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %504, i32 noundef signext %505)
  store i32 %506, ptr %21, align 4, !tbaa !40
  store i32 -2, ptr %19, align 4, !tbaa !40
  br label %507

507:                                              ; preds = %530, %502
  %508 = load i32, ptr %19, align 4, !tbaa !40
  %509 = icmp slt i32 %508, 4
  br i1 %509, label %510, label %533

510:                                              ; preds = %507
  %511 = load i32, ptr %22, align 4, !tbaa !40
  %512 = load i32, ptr %19, align 4, !tbaa !40
  %513 = load i32, ptr %11, align 4, !tbaa !40
  %514 = add nsw i32 %512, %513
  %515 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %511, i32 noundef signext %514)
  store i32 %515, ptr %20, align 4, !tbaa !40
  %516 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %517 = load i32, ptr %21, align 4, !tbaa !40
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds ptr, ptr %516, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !44
  %521 = load i32, ptr %20, align 4, !tbaa !40
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, ptr %520, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !45
  %525 = zext i8 %524 to i32
  %526 = load i32, ptr %24, align 4, !tbaa !40
  %527 = icmp slt i32 %525, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %510
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

529:                                              ; preds = %510
  br label %530

530:                                              ; preds = %529
  %531 = load i32, ptr %19, align 4, !tbaa !40
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr %19, align 4, !tbaa !40
  br label %507, !llvm.loop !86

533:                                              ; preds = %507
  %534 = load i32, ptr %15, align 4, !tbaa !40
  %535 = icmp eq i32 %534, 1
  br i1 %535, label %536, label %538

536:                                              ; preds = %533
  %537 = load i32, ptr %11, align 4, !tbaa !40
  br label %541

538:                                              ; preds = %533
  %539 = load i32, ptr %11, align 4, !tbaa !40
  %540 = add nsw i32 %539, 1
  br label %541

541:                                              ; preds = %538, %536
  %542 = phi i32 [ %537, %536 ], [ %540, %538 ]
  store i32 %542, ptr %20, align 4, !tbaa !40
  %543 = load i32, ptr %22, align 4, !tbaa !40
  %544 = load i32, ptr %20, align 4, !tbaa !40
  %545 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %543, i32 noundef signext %544)
  store i32 %545, ptr %20, align 4, !tbaa !40
  store i32 -2, ptr %18, align 4, !tbaa !40
  br label %546

546:                                              ; preds = %569, %541
  %547 = load i32, ptr %18, align 4, !tbaa !40
  %548 = icmp slt i32 %547, 4
  br i1 %548, label %549, label %572

549:                                              ; preds = %546
  %550 = load i32, ptr %23, align 4, !tbaa !40
  %551 = load i32, ptr %18, align 4, !tbaa !40
  %552 = load i32, ptr %10, align 4, !tbaa !40
  %553 = add nsw i32 %551, %552
  %554 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %550, i32 noundef signext %553)
  store i32 %554, ptr %21, align 4, !tbaa !40
  %555 = load ptr, ptr @pixel_map, align 8, !tbaa !43
  %556 = load i32, ptr %21, align 4, !tbaa !40
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds ptr, ptr %555, i64 %557
  %559 = load ptr, ptr %558, align 8, !tbaa !44
  %560 = load i32, ptr %20, align 4, !tbaa !40
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i8, ptr %559, i64 %561
  %563 = load i8, ptr %562, align 1, !tbaa !45
  %564 = zext i8 %563 to i32
  %565 = load i32, ptr %24, align 4, !tbaa !40
  %566 = icmp slt i32 %564, %565
  br i1 %566, label %567, label %568

567:                                              ; preds = %549
  store i32 0, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

568:                                              ; preds = %549
  br label %569

569:                                              ; preds = %568
  %570 = load i32, ptr %18, align 4, !tbaa !40
  %571 = add nsw i32 %570, 1
  store i32 %571, ptr %18, align 4, !tbaa !40
  br label %546, !llvm.loop !87

572:                                              ; preds = %546
  br label %573

573:                                              ; preds = %572
  %574 = load i32, ptr %11, align 4, !tbaa !40
  %575 = add nsw i32 %574, 1
  store i32 %575, ptr %11, align 4, !tbaa !40
  br label %489, !llvm.loop !88

576:                                              ; preds = %489
  br label %577

577:                                              ; preds = %576
  %578 = load i32, ptr %10, align 4, !tbaa !40
  %579 = add nsw i32 %578, 1
  store i32 %579, ptr %10, align 4, !tbaa !40
  br label %482, !llvm.loop !89

580:                                              ; preds = %482
  br label %581

581:                                              ; preds = %580, %479
  br label %582

582:                                              ; preds = %581, %413
  br label %583

583:                                              ; preds = %582, %347
  br label %584

584:                                              ; preds = %583, %291
  br label %585

585:                                              ; preds = %584, %235
  br label %586

586:                                              ; preds = %585
  %587 = load i32, ptr %13, align 4, !tbaa !40
  %588 = add nsw i32 %587, 1
  store i32 %588, ptr %13, align 4, !tbaa !40
  br label %103, !llvm.loop !90

589:                                              ; preds = %103
  br label %590

590:                                              ; preds = %589
  %591 = load i32, ptr %12, align 4, !tbaa !40
  %592 = add nsw i32 %591, 1
  store i32 %592, ptr %12, align 4, !tbaa !40
  br label %97, !llvm.loop !91

593:                                              ; preds = %97
  store i32 1, ptr %5, align 4
  store i32 1, ptr %29, align 4
  br label %594

594:                                              ; preds = %593, %567, %528, %462, %396, %334, %278, %226
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  %595 = load i32, ptr %5, align 4
  ret i32 %595
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iClip3(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #3 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !40
  store i32 %1, ptr %5, align 4, !tbaa !40
  store i32 %2, ptr %6, align 4, !tbaa !40
  %7 = load i32, ptr %6, align 4, !tbaa !40
  %8 = load i32, ptr %4, align 4, !tbaa !40
  %9 = call signext i32 @imax(i32 noundef signext %7, i32 noundef signext %8)
  store i32 %9, ptr %6, align 4, !tbaa !40
  %10 = load i32, ptr %6, align 4, !tbaa !40
  %11 = load i32, ptr %5, align 4, !tbaa !40
  %12 = call signext i32 @imin(i32 noundef signext %10, i32 noundef signext %11)
  store i32 %12, ptr %6, align 4, !tbaa !40
  %13 = load i32, ptr %6, align 4, !tbaa !40
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local double @RDCost_for_4x4IntraBlocks(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, double noundef %4, double noundef %5, i32 noundef signext %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca %struct.syntaxelement, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8, !tbaa !92
  store i32 %1, ptr %9, align 4, !tbaa !40
  store i32 %2, ptr %10, align 4, !tbaa !40
  store i32 %3, ptr %11, align 4, !tbaa !40
  store double %4, ptr %12, align 8, !tbaa !38
  store double %5, ptr %13, align 8, !tbaa !38
  store i32 %6, ptr %14, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #8
  store i64 0, ptr %20, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  %31 = load i32, ptr %9, align 4, !tbaa !40
  %32 = and i32 %31, 1
  %33 = mul nsw i32 8, %32
  %34 = load i32, ptr %10, align 4, !tbaa !40
  %35 = and i32 %34, 1
  %36 = mul nsw i32 4, %35
  %37 = add nsw i32 %33, %36
  store i32 %37, ptr %21, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  %38 = load i32, ptr %9, align 4, !tbaa !40
  %39 = ashr i32 %38, 1
  %40 = mul nsw i32 8, %39
  %41 = load i32, ptr %10, align 4, !tbaa !40
  %42 = ashr i32 %41, 1
  %43 = mul nsw i32 4, %42
  %44 = add nsw i32 %40, %43
  store i32 %44, ptr %22, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  %45 = load ptr, ptr @img, align 8, !tbaa !13
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 39
  %47 = load i32, ptr %46, align 8, !tbaa !95
  %48 = load i32, ptr %21, align 4, !tbaa !40
  %49 = add nsw i32 %47, %48
  store i32 %49, ptr %23, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  %50 = load ptr, ptr @img, align 8, !tbaa !13
  %51 = getelementptr inbounds nuw %struct.ImageParameters, ptr %50, i32 0, i32 40
  %52 = load i32, ptr %51, align 4, !tbaa !96
  %53 = load i32, ptr %22, align 4, !tbaa !40
  %54 = add nsw i32 %52, %53
  store i32 %54, ptr %24, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  %55 = load ptr, ptr @img, align 8, !tbaa !13
  %56 = getelementptr inbounds nuw %struct.ImageParameters, ptr %55, i32 0, i32 44
  %57 = load i32, ptr %56, align 4, !tbaa !97
  %58 = load i32, ptr %22, align 4, !tbaa !40
  %59 = add nsw i32 %57, %58
  store i32 %59, ptr %25, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #8
  %60 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %61 = getelementptr inbounds nuw %struct.storable_picture, ptr %60, i32 0, i32 29
  %62 = load ptr, ptr %61, align 8, !tbaa !100
  store ptr %62, ptr %26, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #8
  %63 = load ptr, ptr @img, align 8, !tbaa !13
  %64 = getelementptr inbounds nuw %struct.ImageParameters, ptr %63, i32 0, i32 60
  %65 = load ptr, ptr %64, align 8, !tbaa !104
  store ptr %65, ptr %27, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 40, ptr %28) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  %66 = load ptr, ptr @input, align 8, !tbaa !13
  %67 = getelementptr inbounds nuw %struct.InputParameters, ptr %66, i32 0, i32 76
  %68 = load i32, ptr %67, align 8, !tbaa !105
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !92
  store ptr %71, ptr %29, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr %30) #8
  store i32 0, ptr %16, align 4, !tbaa !40
  %72 = load ptr, ptr @img, align 8, !tbaa !13
  %73 = getelementptr inbounds nuw %struct.ImageParameters, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !39
  %75 = icmp ne i32 %74, 3
  br i1 %75, label %76, label %81

76:                                               ; preds = %7
  %77 = load i32, ptr %21, align 4, !tbaa !40
  %78 = load i32, ptr %22, align 4, !tbaa !40
  %79 = call signext i32 @dct_luma(i32 noundef signext %77, i32 noundef signext %78, ptr noundef %16, i32 noundef signext 1)
  %80 = load ptr, ptr %8, align 8, !tbaa !92
  store i32 %79, ptr %80, align 4, !tbaa !40
  br label %98

81:                                               ; preds = %7
  %82 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load i32, ptr %21, align 4, !tbaa !40
  %89 = load i32, ptr %22, align 4, !tbaa !40
  %90 = call signext i32 @dct_luma_sp(i32 noundef signext %88, i32 noundef signext %89, ptr noundef %16)
  %91 = load ptr, ptr %8, align 8, !tbaa !92
  store i32 %90, ptr %91, align 4, !tbaa !40
  br label %97

92:                                               ; preds = %84, %81
  %93 = load i32, ptr %21, align 4, !tbaa !40
  %94 = load i32, ptr %22, align 4, !tbaa !40
  %95 = call signext i32 @dct_luma_sp2(i32 noundef signext %93, i32 noundef signext %94, ptr noundef %16)
  %96 = load ptr, ptr %8, align 8, !tbaa !92
  store i32 %95, ptr %96, align 4, !tbaa !40
  br label %97

97:                                               ; preds = %92, %87
  br label %98

98:                                               ; preds = %97, %76
  store i32 0, ptr %18, align 4, !tbaa !40
  br label %99

99:                                               ; preds = %148, %98
  %100 = load i32, ptr %18, align 4, !tbaa !40
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %151

102:                                              ; preds = %99
  %103 = load i32, ptr %23, align 4, !tbaa !40
  store i32 %103, ptr %17, align 4, !tbaa !40
  br label %104

104:                                              ; preds = %144, %102
  %105 = load i32, ptr %17, align 4, !tbaa !40
  %106 = load i32, ptr %23, align 4, !tbaa !40
  %107 = add nsw i32 %106, 4
  %108 = icmp slt i32 %105, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %104
  %110 = load ptr, ptr @img, align 8, !tbaa !13
  %111 = getelementptr inbounds nuw %struct.ImageParameters, ptr %110, i32 0, i32 62
  %112 = load ptr, ptr %111, align 8, !tbaa !106
  %113 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %114 = load i32, ptr %25, align 4, !tbaa !40
  %115 = load i32, ptr %18, align 4, !tbaa !40
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %113, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !65
  %120 = load i32, ptr %17, align 4, !tbaa !40
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i16, ptr %119, i64 %121
  %123 = load i16, ptr %122, align 2, !tbaa !67
  %124 = zext i16 %123 to i32
  %125 = load ptr, ptr %26, align 8, !tbaa !63
  %126 = load i32, ptr %24, align 4, !tbaa !40
  %127 = load i32, ptr %18, align 4, !tbaa !40
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds ptr, ptr %125, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !65
  %132 = load i32, ptr %17, align 4, !tbaa !40
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %131, i64 %133
  %135 = load i16, ptr %134, align 2, !tbaa !67
  %136 = zext i16 %135 to i32
  %137 = sub nsw i32 %124, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, ptr %112, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !40
  %141 = sext i32 %140 to i64
  %142 = load i64, ptr %20, align 8, !tbaa !93
  %143 = add nsw i64 %142, %141
  store i64 %143, ptr %20, align 8, !tbaa !93
  br label %144

144:                                              ; preds = %109
  %145 = load i32, ptr %17, align 4, !tbaa !40
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %17, align 4, !tbaa !40
  br label %104, !llvm.loop !107

147:                                              ; preds = %104
  br label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %18, align 4, !tbaa !40
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %18, align 4, !tbaa !40
  br label %99, !llvm.loop !108

151:                                              ; preds = %99
  %152 = load i32, ptr %14, align 4, !tbaa !40
  %153 = load i32, ptr %11, align 4, !tbaa !40
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %167

156:                                              ; preds = %151
  %157 = load i32, ptr %11, align 4, !tbaa !40
  %158 = load i32, ptr %14, align 4, !tbaa !40
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, ptr %11, align 4, !tbaa !40
  br label %165

162:                                              ; preds = %156
  %163 = load i32, ptr %11, align 4, !tbaa !40
  %164 = sub nsw i32 %163, 1
  br label %165

165:                                              ; preds = %162, %160
  %166 = phi i32 [ %161, %160 ], [ %164, %162 ]
  br label %167

167:                                              ; preds = %165, %155
  %168 = phi i32 [ -1, %155 ], [ %166, %165 ]
  %169 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 1
  store i32 %168, ptr %169, align 4, !tbaa !109
  %170 = load i32, ptr %9, align 4, !tbaa !40
  %171 = mul nsw i32 4, %170
  %172 = load i32, ptr %10, align 4, !tbaa !40
  %173 = add nsw i32 %171, %172
  %174 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 6
  store i32 %173, ptr %174, align 8, !tbaa !111
  %175 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 0
  store i32 4, ptr %175, align 8, !tbaa !112
  %176 = load ptr, ptr %27, align 8, !tbaa !13
  %177 = getelementptr inbounds nuw %struct.Slice, ptr %176, i32 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !113
  %179 = load ptr, ptr %29, align 8, !tbaa !92
  %180 = getelementptr inbounds i32, ptr %179, i64 4
  %181 = load i32, ptr %180, align 4, !tbaa !40
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.datapartition, ptr %178, i64 %182
  store ptr %183, ptr %30, align 8, !tbaa !116
  %184 = load ptr, ptr @writeIntraPredMode, align 8, !tbaa !13
  %185 = load ptr, ptr %30, align 8, !tbaa !116
  call void %184(ptr noundef %28, ptr noundef %185)
  %186 = getelementptr inbounds nuw %struct.syntaxelement, ptr %28, i32 0, i32 3
  %187 = load i32, ptr %186, align 4, !tbaa !117
  store i32 %187, ptr %19, align 4, !tbaa !40
  %188 = load ptr, ptr @input, align 8, !tbaa !13
  %189 = getelementptr inbounds nuw %struct.InputParameters, ptr %188, i32 0, i32 74
  %190 = load i32, ptr %189, align 8, !tbaa !118
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %167
  %193 = load i32, ptr %9, align 4, !tbaa !40
  %194 = load i32, ptr %10, align 4, !tbaa !40
  %195 = call signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext 0, i32 noundef signext %193, i32 noundef signext %194, i32 noundef signext 0)
  %196 = load i32, ptr %19, align 4, !tbaa !40
  %197 = add nsw i32 %196, %195
  store i32 %197, ptr %19, align 4, !tbaa !40
  br label %204

198:                                              ; preds = %167
  %199 = load i32, ptr %9, align 4, !tbaa !40
  %200 = load i32, ptr %10, align 4, !tbaa !40
  %201 = call signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext %199, i32 noundef signext %200, i32 noundef signext 1)
  %202 = load i32, ptr %19, align 4, !tbaa !40
  %203 = add nsw i32 %202, %201
  store i32 %203, ptr %19, align 4, !tbaa !40
  br label %204

204:                                              ; preds = %198, %192
  %205 = load i64, ptr %20, align 8, !tbaa !93
  %206 = sitofp i64 %205 to double
  %207 = load double, ptr %12, align 8, !tbaa !38
  %208 = load i32, ptr %19, align 4, !tbaa !40
  %209 = sitofp i32 %208 to double
  %210 = call double @llvm.fmuladd.f64(double %207, double %209, double %206)
  store double %210, ptr %15, align 8, !tbaa !38
  %211 = load double, ptr %15, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 8, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #8
  ret double %211
}

declare signext i32 @dct_luma(i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) #1

declare signext i32 @dct_luma_sp(i32 noundef signext, i32 noundef signext, ptr noundef) #1

declare signext i32 @dct_luma_sp2(i32 noundef signext, i32 noundef signext, ptr noundef) #1

declare signext i32 @writeCoeff4x4_CAVLC(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

declare signext i32 @writeLumaCoeff4x4_CABAC(i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %0, i32 noundef signext %1, double noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x [4 x i16]], align 2
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i8, align 1
  %34 = alloca i8, align 1
  %35 = alloca i32, align 4
  %36 = alloca %struct.pix_pos, align 4
  %37 = alloca %struct.pix_pos, align 4
  %38 = alloca [4 x [4 x i32]], align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !40
  store i32 %1, ptr %6, align 4, !tbaa !40
  store double %2, ptr %7, align 8, !tbaa !38
  store ptr %3, ptr %8, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  store i32 0, ptr %10, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  store i32 0, ptr %18, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 32, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  %44 = load i32, ptr %5, align 4, !tbaa !40
  %45 = and i32 %44, 1
  %46 = mul nsw i32 8, %45
  %47 = load i32, ptr %6, align 4, !tbaa !40
  %48 = and i32 %47, 1
  %49 = mul nsw i32 4, %48
  %50 = add nsw i32 %46, %49
  store i32 %50, ptr %21, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  %51 = load i32, ptr %5, align 4, !tbaa !40
  %52 = ashr i32 %51, 1
  %53 = mul nsw i32 8, %52
  %54 = load i32, ptr %6, align 4, !tbaa !40
  %55 = ashr i32 %54, 1
  %56 = mul nsw i32 4, %55
  %57 = add nsw i32 %53, %56
  store i32 %57, ptr %22, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  %58 = load ptr, ptr @img, align 8, !tbaa !13
  %59 = getelementptr inbounds nuw %struct.ImageParameters, ptr %58, i32 0, i32 39
  %60 = load i32, ptr %59, align 8, !tbaa !95
  %61 = load i32, ptr %21, align 4, !tbaa !40
  %62 = add nsw i32 %60, %61
  store i32 %62, ptr %23, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  %63 = load ptr, ptr @img, align 8, !tbaa !13
  %64 = getelementptr inbounds nuw %struct.ImageParameters, ptr %63, i32 0, i32 40
  %65 = load i32, ptr %64, align 4, !tbaa !96
  %66 = load i32, ptr %22, align 4, !tbaa !40
  %67 = add nsw i32 %65, %66
  store i32 %67, ptr %24, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  %68 = load ptr, ptr @img, align 8, !tbaa !13
  %69 = getelementptr inbounds nuw %struct.ImageParameters, ptr %68, i32 0, i32 43
  %70 = load i32, ptr %69, align 8, !tbaa !119
  %71 = load i32, ptr %21, align 4, !tbaa !40
  %72 = add nsw i32 %70, %71
  store i32 %72, ptr %25, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  %73 = load ptr, ptr @img, align 8, !tbaa !13
  %74 = getelementptr inbounds nuw %struct.ImageParameters, ptr %73, i32 0, i32 44
  %75 = load i32, ptr %74, align 4, !tbaa !97
  %76 = load i32, ptr %22, align 4, !tbaa !40
  %77 = add nsw i32 %75, %76
  store i32 %77, ptr %26, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  %78 = load i32, ptr %23, align 4, !tbaa !40
  %79 = ashr i32 %78, 2
  store i32 %79, ptr %27, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  %80 = load i32, ptr %24, align 4, !tbaa !40
  %81 = ashr i32 %80, 2
  store i32 %81, ptr %28, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  store double 1.000000e+30, ptr %29, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %33) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr %34) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %36) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr %37) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr %38) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #8
  %82 = load double, ptr %7, align 8, !tbaa !38
  %83 = fmul double 4.000000e+00, %82
  %84 = call double @llvm.floor.f64(double %83)
  %85 = fptosi double %84 to i32
  store i32 %85, ptr %39, align 4, !tbaa !40
  %86 = load ptr, ptr @img, align 8, !tbaa !13
  %87 = getelementptr inbounds nuw %struct.ImageParameters, ptr %86, i32 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !120
  %89 = load i32, ptr %21, align 4, !tbaa !40
  %90 = sub nsw i32 %89, 1
  %91 = load i32, ptr %22, align 4, !tbaa !40
  call void @getLuma4x4Neighbour(i32 noundef signext %88, i32 noundef signext %90, i32 noundef signext %91, ptr noundef %36)
  %92 = load ptr, ptr @img, align 8, !tbaa !13
  %93 = getelementptr inbounds nuw %struct.ImageParameters, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !120
  %95 = load i32, ptr %21, align 4, !tbaa !40
  %96 = load i32, ptr %22, align 4, !tbaa !40
  %97 = sub nsw i32 %96, 1
  call void @getLuma4x4Neighbour(i32 noundef signext %94, i32 noundef signext %95, i32 noundef signext %97, ptr noundef %37)
  %98 = load ptr, ptr @input, align 8, !tbaa !13
  %99 = getelementptr inbounds nuw %struct.InputParameters, ptr %98, i32 0, i32 23
  %100 = load i32, ptr %99, align 8, !tbaa !121
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %4
  %103 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  %104 = load i32, ptr %103, align 4, !tbaa !122
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load ptr, ptr @img, align 8, !tbaa !13
  %108 = getelementptr inbounds nuw %struct.ImageParameters, ptr %107, i32 0, i32 63
  %109 = load ptr, ptr %108, align 8, !tbaa !124
  %110 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !125
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, ptr %109, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !40
  br label %116

115:                                              ; preds = %102
  br label %116

116:                                              ; preds = %115, %106
  %117 = phi i32 [ %114, %106 ], [ 0, %115 ]
  %118 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  store i32 %117, ptr %118, align 4, !tbaa !122
  %119 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  %120 = load i32, ptr %119, align 4, !tbaa !122
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load ptr, ptr @img, align 8, !tbaa !13
  %124 = getelementptr inbounds nuw %struct.ImageParameters, ptr %123, i32 0, i32 63
  %125 = load ptr, ptr %124, align 8, !tbaa !124
  %126 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !125
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, ptr %125, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !40
  br label %132

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %122
  %133 = phi i32 [ %130, %122 ], [ 0, %131 ]
  %134 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  store i32 %133, ptr %134, align 4, !tbaa !122
  br label %135

135:                                              ; preds = %132, %4
  %136 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 0
  %137 = load i32, ptr %136, align 4, !tbaa !122
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load ptr, ptr @img, align 8, !tbaa !13
  %141 = getelementptr inbounds nuw %struct.ImageParameters, ptr %140, i32 0, i32 31
  %142 = load ptr, ptr %141, align 8, !tbaa !126
  %143 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 5
  %144 = load i32, ptr %143, align 4, !tbaa !127
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %142, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !44
  %148 = getelementptr inbounds nuw %struct.pix_pos, ptr %37, i32 0, i32 4
  %149 = load i32, ptr %148, align 4, !tbaa !128
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %147, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !45
  %153 = sext i8 %152 to i32
  br label %155

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %139
  %156 = phi i32 [ %153, %139 ], [ -1, %154 ]
  %157 = trunc i32 %156 to i8
  store i8 %157, ptr %33, align 1, !tbaa !45
  %158 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 0
  %159 = load i32, ptr %158, align 4, !tbaa !122
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %155
  %162 = load ptr, ptr @img, align 8, !tbaa !13
  %163 = getelementptr inbounds nuw %struct.ImageParameters, ptr %162, i32 0, i32 31
  %164 = load ptr, ptr %163, align 8, !tbaa !126
  %165 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 5
  %166 = load i32, ptr %165, align 4, !tbaa !127
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %164, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !44
  %170 = getelementptr inbounds nuw %struct.pix_pos, ptr %36, i32 0, i32 4
  %171 = load i32, ptr %170, align 4, !tbaa !128
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !45
  %175 = sext i8 %174 to i32
  br label %177

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176, %161
  %178 = phi i32 [ %175, %161 ], [ -1, %176 ]
  %179 = trunc i32 %178 to i8
  store i8 %179, ptr %34, align 1, !tbaa !45
  %180 = load i8, ptr %33, align 1, !tbaa !45
  %181 = sext i8 %180 to i32
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %177
  %184 = load i8, ptr %34, align 1, !tbaa !45
  %185 = sext i8 %184 to i32
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183, %177
  br label %202

188:                                              ; preds = %183
  %189 = load i8, ptr %33, align 1, !tbaa !45
  %190 = sext i8 %189 to i32
  %191 = load i8, ptr %34, align 1, !tbaa !45
  %192 = sext i8 %191 to i32
  %193 = icmp slt i32 %190, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i8, ptr %33, align 1, !tbaa !45
  %196 = sext i8 %195 to i32
  br label %200

197:                                              ; preds = %188
  %198 = load i8, ptr %34, align 1, !tbaa !45
  %199 = sext i8 %198 to i32
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi i32 [ %196, %194 ], [ %199, %197 ]
  br label %202

202:                                              ; preds = %200, %187
  %203 = phi i32 [ 2, %187 ], [ %201, %200 ]
  store i32 %203, ptr %35, align 4, !tbaa !40
  %204 = load ptr, ptr %8, align 8, !tbaa !92
  store i32 2147483647, ptr %204, align 4, !tbaa !40
  %205 = load i32, ptr %23, align 4, !tbaa !40
  %206 = load i32, ptr %24, align 4, !tbaa !40
  call void @intrapred_luma(i32 noundef signext %205, i32 noundef signext %206, ptr noundef %30, ptr noundef %31, ptr noundef %32)
  store i32 0, ptr %9, align 4, !tbaa !40
  br label %207

207:                                              ; preds = %574, %202
  %208 = load i32, ptr %9, align 4, !tbaa !40
  %209 = icmp slt i32 %208, 9
  br i1 %209, label %210, label %577

210:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 4, ptr %40) #8
  %211 = load i32, ptr %9, align 4, !tbaa !40
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %237, label %213

213:                                              ; preds = %210
  %214 = load i32, ptr %9, align 4, !tbaa !40
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr %9, align 4, !tbaa !40
  %218 = icmp eq i32 %217, 7
  br i1 %218, label %222, label %219

219:                                              ; preds = %216
  %220 = load i32, ptr %9, align 4, !tbaa !40
  %221 = icmp eq i32 %220, 3
  br i1 %221, label %222, label %225

222:                                              ; preds = %219, %216, %213
  %223 = load i32, ptr %31, align 4, !tbaa !40
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %237, label %225

225:                                              ; preds = %222, %219
  %226 = load i32, ptr %9, align 4, !tbaa !40
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, ptr %9, align 4, !tbaa !40
  %230 = icmp eq i32 %229, 8
  br i1 %230, label %231, label %234

231:                                              ; preds = %228, %225
  %232 = load i32, ptr %30, align 4, !tbaa !40
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %231, %228
  %235 = load i32, ptr %32, align 4, !tbaa !40
  %236 = icmp ne i32 %235, 0
  br label %237

237:                                              ; preds = %234, %231, %222, %210
  %238 = phi i1 [ true, %231 ], [ true, %222 ], [ true, %210 ], [ %236, %234 ]
  %239 = zext i1 %238 to i32
  store i32 %239, ptr %40, align 4, !tbaa !40
  %240 = load ptr, ptr @input, align 8, !tbaa !13
  %241 = getelementptr inbounds nuw %struct.InputParameters, ptr %240, i32 0, i32 84
  %242 = load i32, ptr %241, align 8, !tbaa !129
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %237
  %245 = load ptr, ptr @img, align 8, !tbaa !13
  %246 = getelementptr inbounds nuw %struct.ImageParameters, ptr %245, i32 0, i32 5
  %247 = load i32, ptr %246, align 4, !tbaa !39
  %248 = icmp ne i32 %247, 2
  br i1 %248, label %249, label %283

249:                                              ; preds = %244, %237
  %250 = load ptr, ptr @input, align 8, !tbaa !13
  %251 = getelementptr inbounds nuw %struct.InputParameters, ptr %250, i32 0, i32 85
  %252 = load i32, ptr %251, align 4, !tbaa !130
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load i32, ptr %9, align 4, !tbaa !40
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i32, ptr %9, align 4, !tbaa !40
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %261

260:                                              ; preds = %257, %254
  store i32 4, ptr %41, align 4
  br label %571

261:                                              ; preds = %257, %249
  %262 = load ptr, ptr @input, align 8, !tbaa !13
  %263 = getelementptr inbounds nuw %struct.InputParameters, ptr %262, i32 0, i32 86
  %264 = load i32, ptr %263, align 8, !tbaa !131
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %261
  %267 = load i32, ptr %9, align 4, !tbaa !40
  %268 = icmp eq i32 %267, 3
  br i1 %268, label %272, label %269

269:                                              ; preds = %266
  %270 = load i32, ptr %9, align 4, !tbaa !40
  %271 = icmp eq i32 %270, 4
  br i1 %271, label %272, label %273

272:                                              ; preds = %269, %266
  store i32 4, ptr %41, align 4
  br label %571

273:                                              ; preds = %269, %261
  %274 = load ptr, ptr @input, align 8, !tbaa !13
  %275 = getelementptr inbounds nuw %struct.InputParameters, ptr %274, i32 0, i32 87
  %276 = load i32, ptr %275, align 4, !tbaa !132
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = load i32, ptr %9, align 4, !tbaa !40
  %280 = icmp sge i32 %279, 5
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 4, ptr %41, align 4
  br label %571

282:                                              ; preds = %278, %273
  br label %283

283:                                              ; preds = %282, %244
  %284 = load i32, ptr %40, align 4, !tbaa !40
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %570

286:                                              ; preds = %283
  %287 = load ptr, ptr @input, align 8, !tbaa !13
  %288 = getelementptr inbounds nuw %struct.InputParameters, ptr %287, i32 0, i32 113
  %289 = load i32, ptr %288, align 8, !tbaa !23
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %362, label %291

291:                                              ; preds = %286
  store i32 0, ptr %12, align 4, !tbaa !40
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %292

292:                                              ; preds = %338, %291
  %293 = load i32, ptr %12, align 4, !tbaa !40
  %294 = icmp slt i32 %293, 4
  br i1 %294, label %295, label %341

295:                                              ; preds = %292
  call void @llvm.lifetime.start.p0(i64 4, ptr %42) #8
  %296 = load i32, ptr %26, align 4, !tbaa !40
  %297 = load i32, ptr %12, align 4, !tbaa !40
  %298 = add nsw i32 %296, %297
  store i32 %298, ptr %42, align 4, !tbaa !40
  store i32 0, ptr %11, align 4, !tbaa !40
  br label %299

299:                                              ; preds = %332, %295
  %300 = load i32, ptr %11, align 4, !tbaa !40
  %301 = icmp slt i32 %300, 4
  br i1 %301, label %302, label %337

302:                                              ; preds = %299
  %303 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %304 = load i32, ptr %42, align 4, !tbaa !40
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds ptr, ptr %303, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !65
  %308 = load i32, ptr %25, align 4, !tbaa !40
  %309 = load i32, ptr %11, align 4, !tbaa !40
  %310 = add nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i16, ptr %307, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !67
  %314 = zext i16 %313 to i32
  %315 = load ptr, ptr @img, align 8, !tbaa !13
  %316 = getelementptr inbounds nuw %struct.ImageParameters, ptr %315, i32 0, i32 47
  %317 = load i32, ptr %9, align 4, !tbaa !40
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %316, i64 0, i64 %318
  %320 = load i32, ptr %12, align 4, !tbaa !40
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [16 x [16 x i16]], ptr %319, i64 0, i64 %321
  %323 = load i32, ptr %11, align 4, !tbaa !40
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [16 x i16], ptr %322, i64 0, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !67
  %327 = zext i16 %326 to i32
  %328 = sub nsw i32 %314, %327
  %329 = load i32, ptr %13, align 4, !tbaa !40
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [16 x i32], ptr @diff, i64 0, i64 %330
  store i32 %328, ptr %331, align 4, !tbaa !40
  br label %332

332:                                              ; preds = %302
  %333 = load i32, ptr %11, align 4, !tbaa !40
  %334 = add nsw i32 %333, 1
  store i32 %334, ptr %11, align 4, !tbaa !40
  %335 = load i32, ptr %13, align 4, !tbaa !40
  %336 = add nsw i32 %335, 1
  store i32 %336, ptr %13, align 4, !tbaa !40
  br label %299, !llvm.loop !133

337:                                              ; preds = %299
  call void @llvm.lifetime.end.p0(i64 4, ptr %42) #8
  br label %338

338:                                              ; preds = %337
  %339 = load i32, ptr %12, align 4, !tbaa !40
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr %12, align 4, !tbaa !40
  br label %292, !llvm.loop !134

341:                                              ; preds = %292
  %342 = load i32, ptr %9, align 4, !tbaa !40
  %343 = load i32, ptr %35, align 4, !tbaa !40
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %346

345:                                              ; preds = %341
  br label %348

346:                                              ; preds = %341
  %347 = load i32, ptr %39, align 4, !tbaa !40
  br label %348

348:                                              ; preds = %346, %345
  %349 = phi i32 [ 0, %345 ], [ %347, %346 ]
  store i32 %349, ptr %15, align 4, !tbaa !40
  %350 = call signext i32 @distortion4x4(ptr noundef @diff)
  %351 = load i32, ptr %15, align 4, !tbaa !40
  %352 = add nsw i32 %351, %350
  store i32 %352, ptr %15, align 4, !tbaa !40
  %353 = load i32, ptr %15, align 4, !tbaa !40
  %354 = load ptr, ptr %8, align 8, !tbaa !92
  %355 = load i32, ptr %354, align 4, !tbaa !40
  %356 = icmp slt i32 %353, %355
  br i1 %356, label %357, label %361

357:                                              ; preds = %348
  %358 = load i32, ptr %9, align 4, !tbaa !40
  store i32 %358, ptr %10, align 4, !tbaa !40
  %359 = load i32, ptr %15, align 4, !tbaa !40
  %360 = load ptr, ptr %8, align 8, !tbaa !92
  store i32 %359, ptr %360, align 4, !tbaa !40
  br label %361

361:                                              ; preds = %357, %348
  br label %569

362:                                              ; preds = %286
  store i32 0, ptr %12, align 4, !tbaa !40
  br label %363

363:                                              ; preds = %430, %362
  %364 = load i32, ptr %12, align 4, !tbaa !40
  %365 = icmp slt i32 %364, 4
  br i1 %365, label %366, label %433

366:                                              ; preds = %363
  %367 = load ptr, ptr @img, align 8, !tbaa !13
  %368 = getelementptr inbounds nuw %struct.ImageParameters, ptr %367, i32 0, i32 51
  %369 = load i32, ptr %22, align 4, !tbaa !40
  %370 = load i32, ptr %12, align 4, !tbaa !40
  %371 = add nsw i32 %369, %370
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [16 x [16 x i16]], ptr %368, i64 0, i64 %372
  %374 = load i32, ptr %21, align 4, !tbaa !40
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [16 x i16], ptr %373, i64 0, i64 %375
  %377 = load ptr, ptr @img, align 8, !tbaa !13
  %378 = getelementptr inbounds nuw %struct.ImageParameters, ptr %377, i32 0, i32 47
  %379 = load i32, ptr %9, align 4, !tbaa !40
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %378, i64 0, i64 %380
  %382 = load i32, ptr %12, align 4, !tbaa !40
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [16 x [16 x i16]], ptr %381, i64 0, i64 %383
  %385 = getelementptr inbounds [16 x i16], ptr %384, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %376, ptr align 8 %385, i64 8, i1 false)
  store i32 0, ptr %11, align 4, !tbaa !40
  br label %386

386:                                              ; preds = %426, %366
  %387 = load i32, ptr %11, align 4, !tbaa !40
  %388 = icmp slt i32 %387, 4
  br i1 %388, label %389, label %429

389:                                              ; preds = %386
  %390 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %391 = load i32, ptr %26, align 4, !tbaa !40
  %392 = load i32, ptr %12, align 4, !tbaa !40
  %393 = add nsw i32 %391, %392
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds ptr, ptr %390, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !65
  %397 = load i32, ptr %25, align 4, !tbaa !40
  %398 = load i32, ptr %11, align 4, !tbaa !40
  %399 = add nsw i32 %397, %398
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i16, ptr %396, i64 %400
  %402 = load i16, ptr %401, align 2, !tbaa !67
  %403 = zext i16 %402 to i32
  %404 = load ptr, ptr @img, align 8, !tbaa !13
  %405 = getelementptr inbounds nuw %struct.ImageParameters, ptr %404, i32 0, i32 47
  %406 = load i32, ptr %9, align 4, !tbaa !40
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %405, i64 0, i64 %407
  %409 = load i32, ptr %12, align 4, !tbaa !40
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [16 x [16 x i16]], ptr %408, i64 0, i64 %410
  %412 = load i32, ptr %11, align 4, !tbaa !40
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [16 x i16], ptr %411, i64 0, i64 %413
  %415 = load i16, ptr %414, align 2, !tbaa !67
  %416 = zext i16 %415 to i32
  %417 = sub nsw i32 %403, %416
  %418 = load ptr, ptr @img, align 8, !tbaa !13
  %419 = getelementptr inbounds nuw %struct.ImageParameters, ptr %418, i32 0, i32 52
  %420 = load i32, ptr %12, align 4, !tbaa !40
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [16 x [16 x i32]], ptr %419, i64 0, i64 %421
  %423 = load i32, ptr %11, align 4, !tbaa !40
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [16 x i32], ptr %422, i64 0, i64 %424
  store i32 %417, ptr %425, align 4, !tbaa !40
  br label %426

426:                                              ; preds = %389
  %427 = load i32, ptr %11, align 4, !tbaa !40
  %428 = add nsw i32 %427, 1
  store i32 %428, ptr %11, align 4, !tbaa !40
  br label %386, !llvm.loop !135

429:                                              ; preds = %386
  br label %430

430:                                              ; preds = %429
  %431 = load i32, ptr %12, align 4, !tbaa !40
  %432 = add nsw i32 %431, 1
  store i32 %432, ptr %12, align 4, !tbaa !40
  br label %363, !llvm.loop !136

433:                                              ; preds = %363
  %434 = load i32, ptr %5, align 4, !tbaa !40
  %435 = load i32, ptr %6, align 4, !tbaa !40
  %436 = load i32, ptr %9, align 4, !tbaa !40
  %437 = load double, ptr %7, align 8, !tbaa !38
  %438 = load double, ptr %29, align 8, !tbaa !38
  %439 = load i32, ptr %35, align 4, !tbaa !40
  %440 = call double @RDCost_for_4x4IntraBlocks(ptr noundef %17, i32 noundef signext %434, i32 noundef signext %435, i32 noundef signext %436, double noundef %437, double noundef %438, i32 noundef signext %439)
  store double %440, ptr %20, align 8, !tbaa !38
  %441 = load double, ptr %29, align 8, !tbaa !38
  %442 = fcmp olt double %440, %441
  br i1 %442, label %443, label %567

443:                                              ; preds = %433
  %444 = load ptr, ptr @cofAC4x4, align 8, !tbaa !21
  %445 = getelementptr inbounds ptr, ptr %444, i64 0
  %446 = load ptr, ptr %445, align 8, !tbaa !92
  %447 = load ptr, ptr @img, align 8, !tbaa !13
  %448 = getelementptr inbounds nuw %struct.ImageParameters, ptr %447, i32 0, i32 53
  %449 = load ptr, ptr %448, align 8, !tbaa !137
  %450 = load i32, ptr %5, align 4, !tbaa !40
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %449, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !3
  %454 = load i32, ptr %6, align 4, !tbaa !40
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds ptr, ptr %453, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !21
  %458 = getelementptr inbounds ptr, ptr %457, i64 0
  %459 = load ptr, ptr %458, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %446, ptr align 4 %459, i64 72, i1 false)
  %460 = load ptr, ptr @cofAC4x4, align 8, !tbaa !21
  %461 = getelementptr inbounds ptr, ptr %460, i64 1
  %462 = load ptr, ptr %461, align 8, !tbaa !92
  %463 = load ptr, ptr @img, align 8, !tbaa !13
  %464 = getelementptr inbounds nuw %struct.ImageParameters, ptr %463, i32 0, i32 53
  %465 = load ptr, ptr %464, align 8, !tbaa !137
  %466 = load i32, ptr %5, align 4, !tbaa !40
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds ptr, ptr %465, i64 %467
  %469 = load ptr, ptr %468, align 8, !tbaa !3
  %470 = load i32, ptr %6, align 4, !tbaa !40
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds ptr, ptr %469, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !21
  %474 = getelementptr inbounds ptr, ptr %473, i64 1
  %475 = load ptr, ptr %474, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %462, ptr align 4 %475, i64 72, i1 false)
  store i32 0, ptr %14, align 4, !tbaa !40
  br label %476

476:                                              ; preds = %522, %443
  %477 = load i32, ptr %14, align 4, !tbaa !40
  %478 = icmp slt i32 %477, 4
  br i1 %478, label %479, label %525

479:                                              ; preds = %476
  %480 = load i32, ptr %14, align 4, !tbaa !40
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [4 x [4 x i16]], ptr %19, i64 0, i64 %481
  %483 = getelementptr inbounds [4 x i16], ptr %482, i64 0, i64 0
  %484 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %485 = getelementptr inbounds nuw %struct.storable_picture, ptr %484, i32 0, i32 29
  %486 = load ptr, ptr %485, align 8, !tbaa !100
  %487 = load i32, ptr %24, align 4, !tbaa !40
  %488 = load i32, ptr %14, align 4, !tbaa !40
  %489 = add nsw i32 %487, %488
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %486, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !65
  %493 = load i32, ptr %23, align 4, !tbaa !40
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i16, ptr %492, i64 %494
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %483, ptr align 2 %495, i64 8, i1 false)
  %496 = load ptr, ptr @img, align 8, !tbaa !13
  %497 = getelementptr inbounds nuw %struct.ImageParameters, ptr %496, i32 0, i32 5
  %498 = load i32, ptr %497, align 4, !tbaa !39
  %499 = icmp eq i32 %498, 3
  br i1 %499, label %500, label %521

500:                                              ; preds = %479
  %501 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %521, label %503

503:                                              ; preds = %500
  %504 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %521, label %506

506:                                              ; preds = %503
  %507 = load i32, ptr %14, align 4, !tbaa !40
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [4 x [4 x i32]], ptr %38, i64 0, i64 %508
  %510 = getelementptr inbounds [4 x i32], ptr %509, i64 0, i64 0
  %511 = load ptr, ptr @lrec, align 8, !tbaa !21
  %512 = load i32, ptr %24, align 4, !tbaa !40
  %513 = load i32, ptr %14, align 4, !tbaa !40
  %514 = add nsw i32 %512, %513
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds ptr, ptr %511, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !92
  %518 = load i32, ptr %23, align 4, !tbaa !40
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, ptr %517, i64 %519
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %510, ptr align 4 %520, i64 16, i1 false)
  br label %521

521:                                              ; preds = %506, %503, %500, %479
  br label %522

522:                                              ; preds = %521
  %523 = load i32, ptr %14, align 4, !tbaa !40
  %524 = add nsw i32 %523, 1
  store i32 %524, ptr %14, align 4, !tbaa !40
  br label %476, !llvm.loop !138

525:                                              ; preds = %476
  %526 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %526, ptr %18, align 4, !tbaa !40
  %527 = load double, ptr %20, align 8, !tbaa !38
  store double %527, ptr %29, align 8, !tbaa !38
  %528 = load i32, ptr %9, align 4, !tbaa !40
  store i32 %528, ptr %10, align 4, !tbaa !40
  %529 = load ptr, ptr @img, align 8, !tbaa !13
  %530 = getelementptr inbounds nuw %struct.ImageParameters, ptr %529, i32 0, i32 98
  %531 = load i32, ptr %530, align 4, !tbaa !139
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %566

533:                                              ; preds = %525
  store i32 0, ptr %12, align 4, !tbaa !40
  br label %534

534:                                              ; preds = %562, %533
  %535 = load i32, ptr %12, align 4, !tbaa !40
  %536 = icmp slt i32 %535, 4
  br i1 %536, label %537, label %565

537:                                              ; preds = %534
  %538 = load ptr, ptr @fadjust4x4, align 8, !tbaa !21
  %539 = load i32, ptr %22, align 4, !tbaa !40
  %540 = load i32, ptr %12, align 4, !tbaa !40
  %541 = add nsw i32 %539, %540
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds ptr, ptr %538, i64 %542
  %544 = load ptr, ptr %543, align 8, !tbaa !92
  %545 = load i32, ptr %21, align 4, !tbaa !40
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, ptr %544, i64 %546
  %548 = load ptr, ptr @img, align 8, !tbaa !13
  %549 = getelementptr inbounds nuw %struct.ImageParameters, ptr %548, i32 0, i32 55
  %550 = load ptr, ptr %549, align 8, !tbaa !140
  %551 = getelementptr inbounds ptr, ptr %550, i64 1
  %552 = load ptr, ptr %551, align 8, !tbaa !21
  %553 = load i32, ptr %22, align 4, !tbaa !40
  %554 = load i32, ptr %12, align 4, !tbaa !40
  %555 = add nsw i32 %553, %554
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %552, i64 %556
  %558 = load ptr, ptr %557, align 8, !tbaa !92
  %559 = load i32, ptr %21, align 4, !tbaa !40
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, ptr %558, i64 %560
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %547, ptr align 4 %561, i64 16, i1 false)
  br label %562

562:                                              ; preds = %537
  %563 = load i32, ptr %12, align 4, !tbaa !40
  %564 = add nsw i32 %563, 1
  store i32 %564, ptr %12, align 4, !tbaa !40
  br label %534, !llvm.loop !141

565:                                              ; preds = %534
  br label %566

566:                                              ; preds = %565, %525
  br label %567

567:                                              ; preds = %566, %433
  %568 = load ptr, ptr @cs_cm, align 8, !tbaa !13
  call void @reset_coding_state(ptr noundef %568)
  br label %569

569:                                              ; preds = %567, %361
  br label %570

570:                                              ; preds = %569, %283
  store i32 0, ptr %41, align 4
  br label %571

571:                                              ; preds = %570, %281, %272, %260
  call void @llvm.lifetime.end.p0(i64 4, ptr %40) #8
  %572 = load i32, ptr %41, align 4
  switch i32 %572, label %846 [
    i32 0, label %573
    i32 4, label %574
  ]

573:                                              ; preds = %571
  br label %574

574:                                              ; preds = %573, %571
  %575 = load i32, ptr %9, align 4, !tbaa !40
  %576 = add nsw i32 %575, 1
  store i32 %576, ptr %9, align 4, !tbaa !40
  br label %207, !llvm.loop !142

577:                                              ; preds = %207
  %578 = load i32, ptr %10, align 4, !tbaa !40
  %579 = trunc i32 %578 to i8
  %580 = load ptr, ptr @img, align 8, !tbaa !13
  %581 = getelementptr inbounds nuw %struct.ImageParameters, ptr %580, i32 0, i32 31
  %582 = load ptr, ptr %581, align 8, !tbaa !126
  %583 = load i32, ptr %28, align 4, !tbaa !40
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds ptr, ptr %582, i64 %584
  %586 = load ptr, ptr %585, align 8, !tbaa !44
  %587 = load i32, ptr %27, align 4, !tbaa !40
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds i8, ptr %586, i64 %588
  store i8 %579, ptr %589, align 1, !tbaa !45
  %590 = load i32, ptr %35, align 4, !tbaa !40
  %591 = load i32, ptr %10, align 4, !tbaa !40
  %592 = icmp eq i32 %590, %591
  br i1 %592, label %593, label %594

593:                                              ; preds = %577
  br label %605

594:                                              ; preds = %577
  %595 = load i32, ptr %10, align 4, !tbaa !40
  %596 = load i32, ptr %35, align 4, !tbaa !40
  %597 = icmp slt i32 %595, %596
  br i1 %597, label %598, label %600

598:                                              ; preds = %594
  %599 = load i32, ptr %10, align 4, !tbaa !40
  br label %603

600:                                              ; preds = %594
  %601 = load i32, ptr %10, align 4, !tbaa !40
  %602 = sub nsw i32 %601, 1
  br label %603

603:                                              ; preds = %600, %598
  %604 = phi i32 [ %599, %598 ], [ %602, %600 ]
  br label %605

605:                                              ; preds = %603, %593
  %606 = phi i32 [ -1, %593 ], [ %604, %603 ]
  %607 = trunc i32 %606 to i8
  %608 = load ptr, ptr @img, align 8, !tbaa !13
  %609 = getelementptr inbounds nuw %struct.ImageParameters, ptr %608, i32 0, i32 61
  %610 = load ptr, ptr %609, align 8, !tbaa !143
  %611 = load ptr, ptr @img, align 8, !tbaa !13
  %612 = getelementptr inbounds nuw %struct.ImageParameters, ptr %611, i32 0, i32 3
  %613 = load i32, ptr %612, align 4, !tbaa !120
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds %struct.macroblock, ptr %610, i64 %614
  %616 = getelementptr inbounds nuw %struct.macroblock, ptr %615, i32 0, i32 10
  %617 = load i32, ptr %5, align 4, !tbaa !40
  %618 = mul nsw i32 4, %617
  %619 = load i32, ptr %6, align 4, !tbaa !40
  %620 = add nsw i32 %618, %619
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [16 x i8], ptr %616, i64 0, i64 %621
  store i8 %607, ptr %622, align 1, !tbaa !45
  %623 = load ptr, ptr @input, align 8, !tbaa !13
  %624 = getelementptr inbounds nuw %struct.InputParameters, ptr %623, i32 0, i32 113
  %625 = load i32, ptr %624, align 8, !tbaa !23
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %708, label %627

627:                                              ; preds = %605
  store i32 0, ptr %12, align 4, !tbaa !40
  br label %628

628:                                              ; preds = %701, %627
  %629 = load i32, ptr %12, align 4, !tbaa !40
  %630 = icmp slt i32 %629, 4
  br i1 %630, label %631, label %704

631:                                              ; preds = %628
  call void @llvm.lifetime.start.p0(i64 4, ptr %43) #8
  %632 = load i32, ptr %26, align 4, !tbaa !40
  %633 = load i32, ptr %12, align 4, !tbaa !40
  %634 = add nsw i32 %632, %633
  store i32 %634, ptr %43, align 4, !tbaa !40
  store i32 0, ptr %11, align 4, !tbaa !40
  br label %635

635:                                              ; preds = %697, %631
  %636 = load i32, ptr %11, align 4, !tbaa !40
  %637 = icmp slt i32 %636, 4
  br i1 %637, label %638, label %700

638:                                              ; preds = %635
  %639 = load ptr, ptr @img, align 8, !tbaa !13
  %640 = getelementptr inbounds nuw %struct.ImageParameters, ptr %639, i32 0, i32 47
  %641 = load i32, ptr %10, align 4, !tbaa !40
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %640, i64 0, i64 %642
  %644 = load i32, ptr %12, align 4, !tbaa !40
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [16 x [16 x i16]], ptr %643, i64 0, i64 %645
  %647 = load i32, ptr %11, align 4, !tbaa !40
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [16 x i16], ptr %646, i64 0, i64 %648
  %650 = load i16, ptr %649, align 2, !tbaa !67
  %651 = load ptr, ptr @img, align 8, !tbaa !13
  %652 = getelementptr inbounds nuw %struct.ImageParameters, ptr %651, i32 0, i32 51
  %653 = load i32, ptr %22, align 4, !tbaa !40
  %654 = load i32, ptr %12, align 4, !tbaa !40
  %655 = add nsw i32 %653, %654
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [16 x [16 x i16]], ptr %652, i64 0, i64 %656
  %658 = load i32, ptr %21, align 4, !tbaa !40
  %659 = load i32, ptr %11, align 4, !tbaa !40
  %660 = add nsw i32 %658, %659
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [16 x i16], ptr %657, i64 0, i64 %661
  store i16 %650, ptr %662, align 2, !tbaa !67
  %663 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %664 = load i32, ptr %43, align 4, !tbaa !40
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds ptr, ptr %663, i64 %665
  %667 = load ptr, ptr %666, align 8, !tbaa !65
  %668 = load i32, ptr %25, align 4, !tbaa !40
  %669 = load i32, ptr %11, align 4, !tbaa !40
  %670 = add nsw i32 %668, %669
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i16, ptr %667, i64 %671
  %673 = load i16, ptr %672, align 2, !tbaa !67
  %674 = zext i16 %673 to i32
  %675 = load ptr, ptr @img, align 8, !tbaa !13
  %676 = getelementptr inbounds nuw %struct.ImageParameters, ptr %675, i32 0, i32 47
  %677 = load i32, ptr %10, align 4, !tbaa !40
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %676, i64 0, i64 %678
  %680 = load i32, ptr %12, align 4, !tbaa !40
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [16 x [16 x i16]], ptr %679, i64 0, i64 %681
  %683 = load i32, ptr %11, align 4, !tbaa !40
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [16 x i16], ptr %682, i64 0, i64 %684
  %686 = load i16, ptr %685, align 2, !tbaa !67
  %687 = zext i16 %686 to i32
  %688 = sub nsw i32 %674, %687
  %689 = load ptr, ptr @img, align 8, !tbaa !13
  %690 = getelementptr inbounds nuw %struct.ImageParameters, ptr %689, i32 0, i32 52
  %691 = load i32, ptr %12, align 4, !tbaa !40
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [16 x [16 x i32]], ptr %690, i64 0, i64 %692
  %694 = load i32, ptr %11, align 4, !tbaa !40
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds [16 x i32], ptr %693, i64 0, i64 %695
  store i32 %688, ptr %696, align 4, !tbaa !40
  br label %697

697:                                              ; preds = %638
  %698 = load i32, ptr %11, align 4, !tbaa !40
  %699 = add nsw i32 %698, 1
  store i32 %699, ptr %11, align 4, !tbaa !40
  br label %635, !llvm.loop !144

700:                                              ; preds = %635
  call void @llvm.lifetime.end.p0(i64 4, ptr %43) #8
  br label %701

701:                                              ; preds = %700
  %702 = load i32, ptr %12, align 4, !tbaa !40
  %703 = add nsw i32 %702, 1
  store i32 %703, ptr %12, align 4, !tbaa !40
  br label %628, !llvm.loop !145

704:                                              ; preds = %628
  %705 = load i32, ptr %21, align 4, !tbaa !40
  %706 = load i32, ptr %22, align 4, !tbaa !40
  %707 = call signext i32 @dct_luma(i32 noundef signext %705, i32 noundef signext %706, ptr noundef %16, i32 noundef signext 1)
  store i32 %707, ptr %18, align 4, !tbaa !40
  br label %844

708:                                              ; preds = %605
  store i32 0, ptr %12, align 4, !tbaa !40
  br label %709

709:                                              ; preds = %733, %708
  %710 = load i32, ptr %12, align 4, !tbaa !40
  %711 = icmp slt i32 %710, 2
  br i1 %711, label %712, label %736

712:                                              ; preds = %709
  %713 = load ptr, ptr @img, align 8, !tbaa !13
  %714 = getelementptr inbounds nuw %struct.ImageParameters, ptr %713, i32 0, i32 53
  %715 = load ptr, ptr %714, align 8, !tbaa !137
  %716 = load i32, ptr %5, align 4, !tbaa !40
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds ptr, ptr %715, i64 %717
  %719 = load ptr, ptr %718, align 8, !tbaa !3
  %720 = load i32, ptr %6, align 4, !tbaa !40
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds ptr, ptr %719, i64 %721
  %723 = load ptr, ptr %722, align 8, !tbaa !21
  %724 = load i32, ptr %12, align 4, !tbaa !40
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds ptr, ptr %723, i64 %725
  %727 = load ptr, ptr %726, align 8, !tbaa !92
  %728 = load ptr, ptr @cofAC4x4, align 8, !tbaa !21
  %729 = load i32, ptr %12, align 4, !tbaa !40
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds ptr, ptr %728, i64 %730
  %732 = load ptr, ptr %731, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %727, ptr align 4 %732, i64 72, i1 false)
  br label %733

733:                                              ; preds = %712
  %734 = load i32, ptr %12, align 4, !tbaa !40
  %735 = add nsw i32 %734, 1
  store i32 %735, ptr %12, align 4, !tbaa !40
  br label %709, !llvm.loop !146

736:                                              ; preds = %709
  store i32 0, ptr %14, align 4, !tbaa !40
  br label %737

737:                                              ; preds = %802, %736
  %738 = load i32, ptr %14, align 4, !tbaa !40
  %739 = icmp slt i32 %738, 4
  br i1 %739, label %740, label %805

740:                                              ; preds = %737
  %741 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %742 = getelementptr inbounds nuw %struct.storable_picture, ptr %741, i32 0, i32 29
  %743 = load ptr, ptr %742, align 8, !tbaa !100
  %744 = load i32, ptr %24, align 4, !tbaa !40
  %745 = load i32, ptr %14, align 4, !tbaa !40
  %746 = add nsw i32 %744, %745
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds ptr, ptr %743, i64 %747
  %749 = load ptr, ptr %748, align 8, !tbaa !65
  %750 = load i32, ptr %23, align 4, !tbaa !40
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds i16, ptr %749, i64 %751
  %753 = load i32, ptr %14, align 4, !tbaa !40
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [4 x [4 x i16]], ptr %19, i64 0, i64 %754
  %756 = getelementptr inbounds [4 x i16], ptr %755, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %752, ptr align 2 %756, i64 8, i1 false)
  %757 = load ptr, ptr @img, align 8, !tbaa !13
  %758 = getelementptr inbounds nuw %struct.ImageParameters, ptr %757, i32 0, i32 51
  %759 = load i32, ptr %22, align 4, !tbaa !40
  %760 = load i32, ptr %14, align 4, !tbaa !40
  %761 = add nsw i32 %759, %760
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [16 x [16 x i16]], ptr %758, i64 0, i64 %762
  %764 = load i32, ptr %21, align 4, !tbaa !40
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [16 x i16], ptr %763, i64 0, i64 %765
  %767 = load ptr, ptr @img, align 8, !tbaa !13
  %768 = getelementptr inbounds nuw %struct.ImageParameters, ptr %767, i32 0, i32 47
  %769 = load i32, ptr %10, align 4, !tbaa !40
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [9 x [16 x [16 x i16]]], ptr %768, i64 0, i64 %770
  %772 = load i32, ptr %14, align 4, !tbaa !40
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [16 x [16 x i16]], ptr %771, i64 0, i64 %773
  %775 = getelementptr inbounds [16 x i16], ptr %774, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %766, ptr align 8 %775, i64 8, i1 false)
  %776 = load ptr, ptr @img, align 8, !tbaa !13
  %777 = getelementptr inbounds nuw %struct.ImageParameters, ptr %776, i32 0, i32 5
  %778 = load i32, ptr %777, align 4, !tbaa !39
  %779 = icmp eq i32 %778, 3
  br i1 %779, label %780, label %801

780:                                              ; preds = %740
  %781 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %782 = icmp ne i32 %781, 0
  br i1 %782, label %801, label %783

783:                                              ; preds = %780
  %784 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %785 = icmp ne i32 %784, 0
  br i1 %785, label %801, label %786

786:                                              ; preds = %783
  %787 = load ptr, ptr @lrec, align 8, !tbaa !21
  %788 = load i32, ptr %24, align 4, !tbaa !40
  %789 = load i32, ptr %14, align 4, !tbaa !40
  %790 = add nsw i32 %788, %789
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds ptr, ptr %787, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !92
  %794 = load i32, ptr %23, align 4, !tbaa !40
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds i32, ptr %793, i64 %795
  %797 = load i32, ptr %14, align 4, !tbaa !40
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [4 x [4 x i32]], ptr %38, i64 0, i64 %798
  %800 = getelementptr inbounds [4 x i32], ptr %799, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %796, ptr align 4 %800, i64 16, i1 false)
  br label %801

801:                                              ; preds = %786, %783, %780, %740
  br label %802

802:                                              ; preds = %801
  %803 = load i32, ptr %14, align 4, !tbaa !40
  %804 = add nsw i32 %803, 1
  store i32 %804, ptr %14, align 4, !tbaa !40
  br label %737, !llvm.loop !147

805:                                              ; preds = %737
  %806 = load ptr, ptr @img, align 8, !tbaa !13
  %807 = getelementptr inbounds nuw %struct.ImageParameters, ptr %806, i32 0, i32 98
  %808 = load i32, ptr %807, align 4, !tbaa !139
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %843

810:                                              ; preds = %805
  store i32 0, ptr %12, align 4, !tbaa !40
  br label %811

811:                                              ; preds = %839, %810
  %812 = load i32, ptr %12, align 4, !tbaa !40
  %813 = icmp slt i32 %812, 4
  br i1 %813, label %814, label %842

814:                                              ; preds = %811
  %815 = load ptr, ptr @img, align 8, !tbaa !13
  %816 = getelementptr inbounds nuw %struct.ImageParameters, ptr %815, i32 0, i32 55
  %817 = load ptr, ptr %816, align 8, !tbaa !140
  %818 = getelementptr inbounds ptr, ptr %817, i64 1
  %819 = load ptr, ptr %818, align 8, !tbaa !21
  %820 = load i32, ptr %22, align 4, !tbaa !40
  %821 = load i32, ptr %12, align 4, !tbaa !40
  %822 = add nsw i32 %820, %821
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds ptr, ptr %819, i64 %823
  %825 = load ptr, ptr %824, align 8, !tbaa !92
  %826 = load i32, ptr %21, align 4, !tbaa !40
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32, ptr %825, i64 %827
  %829 = load ptr, ptr @fadjust4x4, align 8, !tbaa !21
  %830 = load i32, ptr %22, align 4, !tbaa !40
  %831 = load i32, ptr %12, align 4, !tbaa !40
  %832 = add nsw i32 %830, %831
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds ptr, ptr %829, i64 %833
  %835 = load ptr, ptr %834, align 8, !tbaa !92
  %836 = load i32, ptr %21, align 4, !tbaa !40
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i32, ptr %835, i64 %837
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %828, ptr align 4 %838, i64 16, i1 false)
  br label %839

839:                                              ; preds = %814
  %840 = load i32, ptr %12, align 4, !tbaa !40
  %841 = add nsw i32 %840, 1
  store i32 %841, ptr %12, align 4, !tbaa !40
  br label %811, !llvm.loop !148

842:                                              ; preds = %811
  br label %843

843:                                              ; preds = %842, %805
  br label %844

844:                                              ; preds = %843, %704
  %845 = load i32, ptr %18, align 4, !tbaa !40
  store i32 1, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr %38) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %37) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr %36) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr %33) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  ret i32 %845

846:                                              ; preds = %571
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #4

declare void @getLuma4x4Neighbour(i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef) #1

declare void @intrapred_luma(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef) #1

declare signext i32 @distortion4x4(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare void @reset_coding_state(ptr noundef) #1

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_8x8IntraBlocks(i32 noundef signext %0, double noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !40
  store double %1, ptr %5, align 8, !tbaa !38
  store ptr %2, ptr %6, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  store i32 0, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %10 = load double, ptr %5, align 8, !tbaa !38
  %11 = call double @llvm.fmuladd.f64(double 6.000000e+00, double %10, double 4.999000e-01)
  %12 = call double @llvm.floor.f64(double %11)
  %13 = fptosi double %12 to i32
  %14 = load ptr, ptr %6, align 8, !tbaa !92
  store i32 %13, ptr %14, align 4, !tbaa !40
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i32, ptr %8, align 4, !tbaa !40
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %33

18:                                               ; preds = %15
  %19 = load i32, ptr %4, align 4, !tbaa !40
  %20 = load i32, ptr %8, align 4, !tbaa !40
  %21 = load double, ptr %5, align 8, !tbaa !38
  %22 = call signext i32 @Mode_Decision_for_4x4IntraBlocks(i32 noundef signext %19, i32 noundef signext %20, double noundef %21, ptr noundef %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, ptr %7, align 4, !tbaa !40
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i32, ptr %9, align 4, !tbaa !40
  %27 = load ptr, ptr %6, align 8, !tbaa !92
  %28 = load i32, ptr %27, align 4, !tbaa !40
  %29 = add nsw i32 %28, %26
  store i32 %29, ptr %27, align 4, !tbaa !40
  br label %30

30:                                               ; preds = %25
  %31 = load i32, ptr %8, align 4, !tbaa !40
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %8, align 4, !tbaa !40
  br label %15, !llvm.loop !149

33:                                               ; preds = %15
  %34 = load i32, ptr %7, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret i32 %34
}

; Function Attrs: nounwind
define dso_local signext i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef %0, ptr noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store double %0, ptr %3, align 8, !tbaa !38
  store ptr %1, ptr %4, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  store i32 0, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %8 = load ptr, ptr %4, align 8, !tbaa !92
  store i32 0, ptr %8, align 4, !tbaa !40
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, ptr %6, align 4, !tbaa !40
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load i32, ptr %6, align 4, !tbaa !40
  %14 = load double, ptr %3, align 8, !tbaa !38
  %15 = call signext i32 @Mode_Decision_for_8x8IntraBlocks(i32 noundef signext %13, double noundef %14, ptr noundef %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, ptr %6, align 4, !tbaa !40
  %19 = shl i32 1, %18
  %20 = load i32, ptr %5, align 4, !tbaa !40
  %21 = or i32 %20, %19
  store i32 %21, ptr %5, align 4, !tbaa !40
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, ptr %7, align 4, !tbaa !40
  %24 = load ptr, ptr %4, align 8, !tbaa !92
  %25 = load i32, ptr %24, align 4, !tbaa !40
  %26 = add nsw i32 %25, %23
  store i32 %26, ptr %24, align 4, !tbaa !40
  br label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %6, align 4, !tbaa !40
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %6, align 4, !tbaa !40
  br label %9, !llvm.loop !150

30:                                               ; preds = %9
  %31 = load i32, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret i32 %31
}

; Function Attrs: nounwind
define dso_local double @RDCost_for_8x8blocks(ptr noundef %0, ptr noundef %1, double noundef %2, i32 noundef signext %3, i32 noundef signext %4, i16 noundef signext %5, i16 noundef signext %6, i16 noundef signext %7) #0 {
  %9 = alloca double, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca %struct.syntaxelement, align 8
  %37 = alloca ptr, align 8
  %38 = alloca ptr, align 8
  %39 = alloca ptr, align 8
  %40 = alloca ptr, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store ptr %0, ptr %10, align 8, !tbaa !92
  store ptr %1, ptr %11, align 8, !tbaa !151
  store double %2, ptr %12, align 8, !tbaa !38
  store i32 %3, ptr %13, align 4, !tbaa !40
  store i32 %4, ptr %14, align 4, !tbaa !40
  store i16 %5, ptr %15, align 2, !tbaa !67
  store i16 %6, ptr %16, align 2, !tbaa !67
  store i16 %7, ptr %17, align 2, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  store i32 0, ptr %21, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #8
  store i64 0, ptr %22, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #8
  store i32 0, ptr %23, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  store i32 0, ptr %27, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  %43 = load i32, ptr %13, align 4, !tbaa !40
  %44 = and i32 %43, 1
  %45 = mul nsw i32 8, %44
  store i32 %45, ptr %28, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #8
  %46 = load i32, ptr %13, align 4, !tbaa !40
  %47 = ashr i32 %46, 1
  %48 = mul nsw i32 8, %47
  store i32 %48, ptr %29, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #8
  %49 = load i32, ptr %28, align 4, !tbaa !40
  %50 = ashr i32 %49, 2
  store i32 %50, ptr %30, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #8
  %51 = load i32, ptr %29, align 4, !tbaa !40
  %52 = ashr i32 %51, 2
  store i32 %52, ptr %31, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %32) #8
  %53 = load ptr, ptr @img, align 8, !tbaa !13
  %54 = getelementptr inbounds nuw %struct.ImageParameters, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = icmp eq i32 %55, 1
  %57 = zext i1 %56 to i32
  store i32 %57, ptr %32, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #8
  %58 = load i32, ptr %32, align 4, !tbaa !40
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %8
  %61 = load i32, ptr %14, align 4, !tbaa !40
  %62 = icmp eq i32 %61, 0
  br label %63

63:                                               ; preds = %60, %8
  %64 = phi i1 [ false, %8 ], [ %62, %60 ]
  %65 = zext i1 %64 to i32
  store i32 %65, ptr %33, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %34) #8
  %66 = load i32, ptr %14, align 4, !tbaa !40
  %67 = load i16, ptr %15, align 2, !tbaa !67
  %68 = sext i16 %67 to i32
  %69 = call signext i32 @B8Mode2Value(i32 noundef signext %66, i32 noundef signext %68)
  store i32 %69, ptr %34, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %35) #8
  %70 = load ptr, ptr @img, align 8, !tbaa !13
  %71 = getelementptr inbounds nuw %struct.ImageParameters, ptr %70, i32 0, i32 61
  %72 = load ptr, ptr %71, align 8, !tbaa !143
  %73 = load ptr, ptr @img, align 8, !tbaa !13
  %74 = getelementptr inbounds nuw %struct.ImageParameters, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !120
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.macroblock, ptr %72, i64 %76
  store ptr %77, ptr %35, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 40, ptr %36) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %37) #8
  %78 = load ptr, ptr @img, align 8, !tbaa !13
  %79 = getelementptr inbounds nuw %struct.ImageParameters, ptr %78, i32 0, i32 60
  %80 = load ptr, ptr %79, align 8, !tbaa !104
  store ptr %80, ptr %37, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %38) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %39) #8
  %81 = load ptr, ptr @input, align 8, !tbaa !13
  %82 = getelementptr inbounds nuw %struct.InputParameters, ptr %81, i32 0, i32 76
  %83 = load i32, ptr %82, align 8, !tbaa !105
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x ptr], ptr @assignSE2partition, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !92
  store ptr %86, ptr %39, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(i64 8, ptr %40) #8
  %87 = load ptr, ptr %35, align 8, !tbaa !153
  %88 = getelementptr inbounds nuw %struct.macroblock, ptr %87, i32 0, i32 33
  store i16 0, ptr %88, align 8, !tbaa !154
  %89 = load i32, ptr %33, align 4, !tbaa !40
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %178

91:                                               ; preds = %63
  %92 = load ptr, ptr @direct_pdir, align 8, !tbaa !43
  %93 = load ptr, ptr @img, align 8, !tbaa !13
  %94 = getelementptr inbounds nuw %struct.ImageParameters, ptr %93, i32 0, i32 38
  %95 = load i32, ptr %94, align 4, !tbaa !68
  %96 = load i32, ptr %31, align 4, !tbaa !40
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %92, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = load ptr, ptr @img, align 8, !tbaa !13
  %102 = getelementptr inbounds nuw %struct.ImageParameters, ptr %101, i32 0, i32 37
  %103 = load i32, ptr %102, align 8, !tbaa !69
  %104 = load i32, ptr %30, align 4, !tbaa !40
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %100, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !45
  %109 = sext i8 %108 to i32
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %91
  store double 1.000000e+20, ptr %9, align 8
  store i32 1, ptr %41, align 4
  br label %639

112:                                              ; preds = %91
  %113 = load ptr, ptr %11, align 8, !tbaa !151
  %114 = load i32, ptr %13, align 4, !tbaa !40
  %115 = load ptr, ptr @direct_pdir, align 8, !tbaa !43
  %116 = load ptr, ptr @img, align 8, !tbaa !13
  %117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %116, i32 0, i32 38
  %118 = load i32, ptr %117, align 4, !tbaa !68
  %119 = load i32, ptr %31, align 4, !tbaa !40
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %115, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !44
  %124 = load ptr, ptr @img, align 8, !tbaa !13
  %125 = getelementptr inbounds nuw %struct.ImageParameters, ptr %124, i32 0, i32 37
  %126 = load i32, ptr %125, align 8, !tbaa !69
  %127 = load i32, ptr %30, align 4, !tbaa !40
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %123, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !45
  %132 = sext i8 %131 to i16
  %133 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %134 = getelementptr inbounds ptr, ptr %133, i64 0
  %135 = load ptr, ptr %134, align 8, !tbaa !43
  %136 = load ptr, ptr @img, align 8, !tbaa !13
  %137 = getelementptr inbounds nuw %struct.ImageParameters, ptr %136, i32 0, i32 38
  %138 = load i32, ptr %137, align 4, !tbaa !68
  %139 = load i32, ptr %31, align 4, !tbaa !40
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %135, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !44
  %144 = load ptr, ptr @img, align 8, !tbaa !13
  %145 = getelementptr inbounds nuw %struct.ImageParameters, ptr %144, i32 0, i32 37
  %146 = load i32, ptr %145, align 8, !tbaa !69
  %147 = load i32, ptr %30, align 4, !tbaa !40
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %143, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !45
  %152 = sext i8 %151 to i32
  %153 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %152)
  %154 = trunc i32 %153 to i16
  %155 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %156 = getelementptr inbounds ptr, ptr %155, i64 1
  %157 = load ptr, ptr %156, align 8, !tbaa !43
  %158 = load ptr, ptr @img, align 8, !tbaa !13
  %159 = getelementptr inbounds nuw %struct.ImageParameters, ptr %158, i32 0, i32 38
  %160 = load i32, ptr %159, align 4, !tbaa !68
  %161 = load i32, ptr %31, align 4, !tbaa !40
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %157, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !44
  %166 = load ptr, ptr @img, align 8, !tbaa !13
  %167 = getelementptr inbounds nuw %struct.ImageParameters, ptr %166, i32 0, i32 37
  %168 = load i32, ptr %167, align 8, !tbaa !69
  %169 = load i32, ptr %30, align 4, !tbaa !40
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, ptr %165, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !45
  %174 = sext i8 %173 to i16
  %175 = call signext i32 @LumaResidualCoding8x8(ptr noundef %27, ptr noundef %113, i32 noundef signext %114, i16 noundef signext %132, i32 noundef signext 0, i32 noundef signext 0, i16 noundef signext %154, i16 noundef signext %174)
  %176 = load ptr, ptr %10, align 8, !tbaa !92
  store i32 %175, ptr %176, align 4, !tbaa !40
  br label %177

177:                                              ; preds = %112
  br label %267

178:                                              ; preds = %63
  %179 = load i16, ptr %15, align 2, !tbaa !67
  %180 = sext i16 %179 to i32
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %233

182:                                              ; preds = %178
  %183 = load ptr, ptr @active_pps, align 8, !tbaa !13
  %184 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %183, i32 0, i32 20
  %185 = load i32, ptr %184, align 4, !tbaa !157
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %233

187:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 4, ptr %42) #8
  %188 = load ptr, ptr @active_pps, align 8, !tbaa !13
  %189 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %188, i32 0, i32 20
  %190 = load i32, ptr %189, align 4, !tbaa !157
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %220

192:                                              ; preds = %187
  %193 = load ptr, ptr @wbp_weight, align 8, !tbaa !10
  %194 = getelementptr inbounds ptr, ptr %193, i64 0
  %195 = load ptr, ptr %194, align 8, !tbaa !3
  %196 = load i16, ptr %16, align 2, !tbaa !67
  %197 = sext i16 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %195, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !21
  %200 = load i16, ptr %17, align 2, !tbaa !67
  %201 = sext i16 %200 to i64
  %202 = getelementptr inbounds ptr, ptr %199, i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !92
  %204 = getelementptr inbounds i32, ptr %203, i64 0
  %205 = load i32, ptr %204, align 4, !tbaa !40
  %206 = load ptr, ptr @wbp_weight, align 8, !tbaa !10
  %207 = getelementptr inbounds ptr, ptr %206, i64 1
  %208 = load ptr, ptr %207, align 8, !tbaa !3
  %209 = load i16, ptr %16, align 2, !tbaa !67
  %210 = sext i16 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %208, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !21
  %213 = load i16, ptr %17, align 2, !tbaa !67
  %214 = sext i16 %213 to i64
  %215 = getelementptr inbounds ptr, ptr %212, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !92
  %217 = getelementptr inbounds i32, ptr %216, i64 0
  %218 = load i32, ptr %217, align 4, !tbaa !40
  %219 = add nsw i32 %205, %218
  br label %221

220:                                              ; preds = %187
  br label %221

221:                                              ; preds = %220, %192
  %222 = phi i32 [ %219, %192 ], [ 0, %220 ]
  store i32 %222, ptr %42, align 4, !tbaa !40
  %223 = load i32, ptr %42, align 4, !tbaa !40
  %224 = icmp slt i32 %223, -128
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = load i32, ptr %42, align 4, !tbaa !40
  %227 = icmp sgt i32 %226, 127
  br i1 %227, label %228, label %229

228:                                              ; preds = %225, %221
  store double 1.000000e+20, ptr %9, align 8
  store i32 1, ptr %41, align 4
  br label %230

229:                                              ; preds = %225
  store i32 0, ptr %41, align 4
  br label %230

230:                                              ; preds = %229, %228
  call void @llvm.lifetime.end.p0(i64 4, ptr %42) #8
  %231 = load i32, ptr %41, align 4
  switch i32 %231, label %639 [
    i32 0, label %232
  ]

232:                                              ; preds = %230
  br label %233

233:                                              ; preds = %232, %182, %178
  %234 = load i16, ptr %15, align 2, !tbaa !67
  %235 = sext i16 %234 to i32
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %241, label %237

237:                                              ; preds = %233
  %238 = load i16, ptr %15, align 2, !tbaa !67
  %239 = sext i16 %238 to i32
  %240 = icmp eq i32 %239, 2
  br i1 %240, label %241, label %243

241:                                              ; preds = %237, %233
  %242 = load i32, ptr %14, align 4, !tbaa !40
  br label %244

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243, %241
  %245 = phi i32 [ %242, %241 ], [ 0, %243 ]
  store i32 %245, ptr %25, align 4, !tbaa !40
  %246 = load i16, ptr %15, align 2, !tbaa !67
  %247 = sext i16 %246 to i32
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %253, label %249

249:                                              ; preds = %244
  %250 = load i16, ptr %15, align 2, !tbaa !67
  %251 = sext i16 %250 to i32
  %252 = icmp eq i32 %251, 2
  br i1 %252, label %253, label %255

253:                                              ; preds = %249, %244
  %254 = load i32, ptr %14, align 4, !tbaa !40
  br label %256

255:                                              ; preds = %249
  br label %256

256:                                              ; preds = %255, %253
  %257 = phi i32 [ %254, %253 ], [ 0, %255 ]
  store i32 %257, ptr %26, align 4, !tbaa !40
  %258 = load ptr, ptr %11, align 8, !tbaa !151
  %259 = load i32, ptr %13, align 4, !tbaa !40
  %260 = load i16, ptr %15, align 2, !tbaa !67
  %261 = load i32, ptr %25, align 4, !tbaa !40
  %262 = load i32, ptr %26, align 4, !tbaa !40
  %263 = load i16, ptr %16, align 2, !tbaa !67
  %264 = load i16, ptr %17, align 2, !tbaa !67
  %265 = call signext i32 @LumaResidualCoding8x8(ptr noundef %27, ptr noundef %258, i32 noundef signext %259, i16 noundef signext %260, i32 noundef signext %261, i32 noundef signext %262, i16 noundef signext %263, i16 noundef signext %264)
  %266 = load ptr, ptr %10, align 8, !tbaa !92
  store i32 %265, ptr %266, align 4, !tbaa !40
  br label %267

267:                                              ; preds = %256, %177
  %268 = load ptr, ptr @input, align 8, !tbaa !13
  %269 = getelementptr inbounds nuw %struct.InputParameters, ptr %268, i32 0, i32 113
  %270 = load i32, ptr %269, align 8, !tbaa !23
  %271 = icmp eq i32 %270, 3
  br i1 %271, label %272, label %279

272:                                              ; preds = %267
  %273 = load ptr, ptr @img, align 8, !tbaa !13
  %274 = getelementptr inbounds nuw %struct.ImageParameters, ptr %273, i32 0, i32 5
  %275 = load i32, ptr %274, align 4, !tbaa !39
  %276 = icmp ne i32 %275, 1
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, ptr %13, align 4, !tbaa !40
  call void @compute_residue_b8block(i32 noundef signext %278, i32 noundef signext -1)
  br label %279

279:                                              ; preds = %277, %272, %267
  %280 = load ptr, ptr @input, align 8, !tbaa !13
  %281 = getelementptr inbounds nuw %struct.InputParameters, ptr %280, i32 0, i32 113
  %282 = load i32, ptr %281, align 8, !tbaa !23
  %283 = icmp eq i32 %282, 3
  br i1 %283, label %284, label %386

284:                                              ; preds = %279
  %285 = load ptr, ptr @img, align 8, !tbaa !13
  %286 = getelementptr inbounds nuw %struct.ImageParameters, ptr %285, i32 0, i32 5
  %287 = load i32, ptr %286, align 4, !tbaa !39
  %288 = icmp ne i32 %287, 1
  br i1 %288, label %289, label %386

289:                                              ; preds = %284
  store i32 0, ptr %20, align 4, !tbaa !40
  br label %290

290:                                              ; preds = %376, %289
  %291 = load i32, ptr %20, align 4, !tbaa !40
  %292 = load ptr, ptr @input, align 8, !tbaa !13
  %293 = getelementptr inbounds nuw %struct.InputParameters, ptr %292, i32 0, i32 127
  %294 = load i32, ptr %293, align 8, !tbaa !159
  %295 = icmp slt i32 %291, %294
  br i1 %295, label %296, label %379

296:                                              ; preds = %290
  %297 = load i32, ptr %20, align 4, !tbaa !40
  %298 = load i32, ptr %13, align 4, !tbaa !40
  %299 = load i32, ptr %14, align 4, !tbaa !40
  %300 = load i16, ptr %16, align 2, !tbaa !67
  %301 = sext i16 %300 to i32
  call void @decode_one_b8block(i32 noundef signext %297, i32 noundef signext 8, i32 noundef signext %298, i32 noundef signext %299, i32 noundef signext %301)
  %302 = load ptr, ptr @img, align 8, !tbaa !13
  %303 = getelementptr inbounds nuw %struct.ImageParameters, ptr %302, i32 0, i32 44
  %304 = load i32, ptr %303, align 4, !tbaa !97
  %305 = load i32, ptr %29, align 4, !tbaa !40
  %306 = add nsw i32 %304, %305
  store i32 %306, ptr %19, align 4, !tbaa !40
  br label %307

307:                                              ; preds = %372, %296
  %308 = load i32, ptr %19, align 4, !tbaa !40
  %309 = load ptr, ptr @img, align 8, !tbaa !13
  %310 = getelementptr inbounds nuw %struct.ImageParameters, ptr %309, i32 0, i32 44
  %311 = load i32, ptr %310, align 4, !tbaa !97
  %312 = load i32, ptr %29, align 4, !tbaa !40
  %313 = add nsw i32 %311, %312
  %314 = add nsw i32 %313, 8
  %315 = icmp slt i32 %308, %314
  br i1 %315, label %316, label %375

316:                                              ; preds = %307
  %317 = load ptr, ptr @img, align 8, !tbaa !13
  %318 = getelementptr inbounds nuw %struct.ImageParameters, ptr %317, i32 0, i32 43
  %319 = load i32, ptr %318, align 8, !tbaa !119
  %320 = load i32, ptr %28, align 4, !tbaa !40
  %321 = add nsw i32 %319, %320
  store i32 %321, ptr %18, align 4, !tbaa !40
  br label %322

322:                                              ; preds = %368, %316
  %323 = load i32, ptr %18, align 4, !tbaa !40
  %324 = load ptr, ptr @img, align 8, !tbaa !13
  %325 = getelementptr inbounds nuw %struct.ImageParameters, ptr %324, i32 0, i32 43
  %326 = load i32, ptr %325, align 8, !tbaa !119
  %327 = load i32, ptr %28, align 4, !tbaa !40
  %328 = add nsw i32 %326, %327
  %329 = add nsw i32 %328, 8
  %330 = icmp slt i32 %323, %329
  br i1 %330, label %331, label %371

331:                                              ; preds = %322
  %332 = load ptr, ptr @img, align 8, !tbaa !13
  %333 = getelementptr inbounds nuw %struct.ImageParameters, ptr %332, i32 0, i32 62
  %334 = load ptr, ptr %333, align 8, !tbaa !106
  %335 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %336 = load i32, ptr %19, align 4, !tbaa !40
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds ptr, ptr %335, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !65
  %340 = load i32, ptr %18, align 4, !tbaa !40
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, ptr %339, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !67
  %344 = zext i16 %343 to i32
  %345 = load ptr, ptr @decs, align 8, !tbaa !13
  %346 = getelementptr inbounds nuw %struct.Decoders, ptr %345, i32 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !160
  %348 = load i32, ptr %20, align 4, !tbaa !40
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds ptr, ptr %347, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !63
  %352 = load i32, ptr %19, align 4, !tbaa !40
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds ptr, ptr %351, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !65
  %356 = load i32, ptr %18, align 4, !tbaa !40
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i16, ptr %355, i64 %357
  %359 = load i16, ptr %358, align 2, !tbaa !67
  %360 = zext i16 %359 to i32
  %361 = sub nsw i32 %344, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, ptr %334, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !40
  %365 = sext i32 %364 to i64
  %366 = load i64, ptr %22, align 8, !tbaa !93
  %367 = add nsw i64 %366, %365
  store i64 %367, ptr %22, align 8, !tbaa !93
  br label %368

368:                                              ; preds = %331
  %369 = load i32, ptr %18, align 4, !tbaa !40
  %370 = add nsw i32 %369, 1
  store i32 %370, ptr %18, align 4, !tbaa !40
  br label %322, !llvm.loop !162

371:                                              ; preds = %322
  br label %372

372:                                              ; preds = %371
  %373 = load i32, ptr %19, align 4, !tbaa !40
  %374 = add nsw i32 %373, 1
  store i32 %374, ptr %19, align 4, !tbaa !40
  br label %307, !llvm.loop !163

375:                                              ; preds = %307
  br label %376

376:                                              ; preds = %375
  %377 = load i32, ptr %20, align 4, !tbaa !40
  %378 = add nsw i32 %377, 1
  store i32 %378, ptr %20, align 4, !tbaa !40
  br label %290, !llvm.loop !164

379:                                              ; preds = %290
  %380 = load ptr, ptr @input, align 8, !tbaa !13
  %381 = getelementptr inbounds nuw %struct.InputParameters, ptr %380, i32 0, i32 127
  %382 = load i32, ptr %381, align 8, !tbaa !159
  %383 = sext i32 %382 to i64
  %384 = load i64, ptr %22, align 8, !tbaa !93
  %385 = sdiv i64 %384, %383
  store i64 %385, ptr %22, align 8, !tbaa !93
  br label %457

386:                                              ; preds = %284, %279
  %387 = load i32, ptr %29, align 4, !tbaa !40
  store i32 %387, ptr %19, align 4, !tbaa !40
  br label %388

388:                                              ; preds = %453, %386
  %389 = load i32, ptr %19, align 4, !tbaa !40
  %390 = load i32, ptr %29, align 4, !tbaa !40
  %391 = add nsw i32 %390, 8
  %392 = icmp slt i32 %389, %391
  br i1 %392, label %393, label %456

393:                                              ; preds = %388
  %394 = load ptr, ptr @img, align 8, !tbaa !13
  %395 = getelementptr inbounds nuw %struct.ImageParameters, ptr %394, i32 0, i32 39
  %396 = load i32, ptr %395, align 8, !tbaa !95
  %397 = load i32, ptr %28, align 4, !tbaa !40
  %398 = add nsw i32 %396, %397
  store i32 %398, ptr %18, align 4, !tbaa !40
  br label %399

399:                                              ; preds = %449, %393
  %400 = load i32, ptr %18, align 4, !tbaa !40
  %401 = load ptr, ptr @img, align 8, !tbaa !13
  %402 = getelementptr inbounds nuw %struct.ImageParameters, ptr %401, i32 0, i32 39
  %403 = load i32, ptr %402, align 8, !tbaa !95
  %404 = load i32, ptr %28, align 4, !tbaa !40
  %405 = add nsw i32 %403, %404
  %406 = add nsw i32 %405, 8
  %407 = icmp slt i32 %400, %406
  br i1 %407, label %408, label %452

408:                                              ; preds = %399
  %409 = load ptr, ptr @img, align 8, !tbaa !13
  %410 = getelementptr inbounds nuw %struct.ImageParameters, ptr %409, i32 0, i32 62
  %411 = load ptr, ptr %410, align 8, !tbaa !106
  %412 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %413 = load ptr, ptr @img, align 8, !tbaa !13
  %414 = getelementptr inbounds nuw %struct.ImageParameters, ptr %413, i32 0, i32 44
  %415 = load i32, ptr %414, align 4, !tbaa !97
  %416 = load i32, ptr %19, align 4, !tbaa !40
  %417 = add nsw i32 %415, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds ptr, ptr %412, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !65
  %421 = load i32, ptr %18, align 4, !tbaa !40
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i16, ptr %420, i64 %422
  %424 = load i16, ptr %423, align 2, !tbaa !67
  %425 = zext i16 %424 to i32
  %426 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %427 = getelementptr inbounds nuw %struct.storable_picture, ptr %426, i32 0, i32 29
  %428 = load ptr, ptr %427, align 8, !tbaa !100
  %429 = load ptr, ptr @img, align 8, !tbaa !13
  %430 = getelementptr inbounds nuw %struct.ImageParameters, ptr %429, i32 0, i32 40
  %431 = load i32, ptr %430, align 4, !tbaa !96
  %432 = load i32, ptr %19, align 4, !tbaa !40
  %433 = add nsw i32 %431, %432
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds ptr, ptr %428, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !65
  %437 = load i32, ptr %18, align 4, !tbaa !40
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i16, ptr %436, i64 %438
  %440 = load i16, ptr %439, align 2, !tbaa !67
  %441 = zext i16 %440 to i32
  %442 = sub nsw i32 %425, %441
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, ptr %411, i64 %443
  %445 = load i32, ptr %444, align 4, !tbaa !40
  %446 = sext i32 %445 to i64
  %447 = load i64, ptr %22, align 8, !tbaa !93
  %448 = add nsw i64 %447, %446
  store i64 %448, ptr %22, align 8, !tbaa !93
  br label %449

449:                                              ; preds = %408
  %450 = load i32, ptr %18, align 4, !tbaa !40
  %451 = add nsw i32 %450, 1
  store i32 %451, ptr %18, align 4, !tbaa !40
  br label %399, !llvm.loop !165

452:                                              ; preds = %399
  br label %453

453:                                              ; preds = %452
  %454 = load i32, ptr %19, align 4, !tbaa !40
  %455 = add nsw i32 %454, 1
  store i32 %455, ptr %19, align 4, !tbaa !40
  br label %388, !llvm.loop !166

456:                                              ; preds = %388
  br label %457

457:                                              ; preds = %456, %379
  %458 = load ptr, ptr @input, align 8, !tbaa !13
  %459 = getelementptr inbounds nuw %struct.InputParameters, ptr %458, i32 0, i32 74
  %460 = load i32, ptr %459, align 8, !tbaa !118
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %457
  %463 = load i32, ptr %34, align 4, !tbaa !40
  %464 = load i32, ptr %23, align 4, !tbaa !40
  call void @ue_linfo(i32 noundef signext %463, i32 noundef signext %464, ptr noundef %24, ptr noundef %23)
  %465 = load i32, ptr %24, align 4, !tbaa !40
  %466 = load i32, ptr %21, align 4, !tbaa !40
  %467 = add nsw i32 %466, %465
  store i32 %467, ptr %21, align 4, !tbaa !40
  br label %489

468:                                              ; preds = %457
  %469 = load i32, ptr %34, align 4, !tbaa !40
  %470 = getelementptr inbounds nuw %struct.syntaxelement, ptr %36, i32 0, i32 1
  store i32 %469, ptr %470, align 4, !tbaa !109
  %471 = getelementptr inbounds nuw %struct.syntaxelement, ptr %36, i32 0, i32 0
  store i32 2, ptr %471, align 8, !tbaa !112
  %472 = load ptr, ptr %37, align 8, !tbaa !13
  %473 = getelementptr inbounds nuw %struct.Slice, ptr %472, i32 0, i32 6
  %474 = load ptr, ptr %473, align 8, !tbaa !113
  %475 = load ptr, ptr %39, align 8, !tbaa !92
  %476 = getelementptr inbounds nuw %struct.syntaxelement, ptr %36, i32 0, i32 0
  %477 = load i32, ptr %476, align 8, !tbaa !112
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i32, ptr %475, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !40
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.datapartition, ptr %474, i64 %481
  store ptr %482, ptr %38, align 8, !tbaa !116
  %483 = load ptr, ptr @writeB8_typeInfo, align 8, !tbaa !13
  %484 = load ptr, ptr %38, align 8, !tbaa !116
  call void %483(ptr noundef %36, ptr noundef %484)
  %485 = getelementptr inbounds nuw %struct.syntaxelement, ptr %36, i32 0, i32 3
  %486 = load i32, ptr %485, align 4, !tbaa !117
  %487 = load i32, ptr %21, align 4, !tbaa !40
  %488 = add nsw i32 %487, %486
  store i32 %488, ptr %21, align 4, !tbaa !40
  br label %489

489:                                              ; preds = %468, %462
  %490 = load i32, ptr %33, align 4, !tbaa !40
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %585, label %492

492:                                              ; preds = %489
  %493 = load ptr, ptr @img, align 8, !tbaa !13
  %494 = getelementptr inbounds nuw %struct.ImageParameters, ptr %493, i32 0, i32 88
  %495 = load i32, ptr %494, align 8, !tbaa !167
  %496 = icmp sgt i32 %495, 1
  br i1 %496, label %497, label %514

497:                                              ; preds = %492
  %498 = load i16, ptr %15, align 2, !tbaa !67
  %499 = sext i16 %498 to i32
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %505, label %501

501:                                              ; preds = %497
  %502 = load i16, ptr %15, align 2, !tbaa !67
  %503 = sext i16 %502 to i32
  %504 = icmp eq i32 %503, 2
  br i1 %504, label %505, label %514

505:                                              ; preds = %501, %497
  %506 = load i32, ptr %14, align 4, !tbaa !40
  %507 = load i32, ptr %30, align 4, !tbaa !40
  %508 = load i32, ptr %31, align 4, !tbaa !40
  %509 = load i16, ptr %16, align 2, !tbaa !67
  %510 = sext i16 %509 to i32
  %511 = call signext i32 @writeReferenceFrame(i32 noundef signext %506, i32 noundef signext %507, i32 noundef signext %508, i32 noundef signext 1, i32 noundef signext %510)
  %512 = load i32, ptr %21, align 4, !tbaa !40
  %513 = add nsw i32 %512, %511
  store i32 %513, ptr %21, align 4, !tbaa !40
  br label %514

514:                                              ; preds = %505, %501, %492
  %515 = load ptr, ptr @img, align 8, !tbaa !13
  %516 = getelementptr inbounds nuw %struct.ImageParameters, ptr %515, i32 0, i32 89
  %517 = load i32, ptr %516, align 4, !tbaa !168
  %518 = icmp sgt i32 %517, 1
  br i1 %518, label %519, label %542

519:                                              ; preds = %514
  %520 = load ptr, ptr @img, align 8, !tbaa !13
  %521 = getelementptr inbounds nuw %struct.ImageParameters, ptr %520, i32 0, i32 5
  %522 = load i32, ptr %521, align 4, !tbaa !39
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %542

524:                                              ; preds = %519
  %525 = load i16, ptr %15, align 2, !tbaa !67
  %526 = sext i16 %525 to i32
  %527 = icmp eq i32 %526, 1
  br i1 %527, label %532, label %528

528:                                              ; preds = %524
  %529 = load i16, ptr %15, align 2, !tbaa !67
  %530 = sext i16 %529 to i32
  %531 = icmp eq i32 %530, 2
  br i1 %531, label %532, label %541

532:                                              ; preds = %528, %524
  %533 = load i32, ptr %14, align 4, !tbaa !40
  %534 = load i32, ptr %30, align 4, !tbaa !40
  %535 = load i32, ptr %31, align 4, !tbaa !40
  %536 = load i16, ptr %17, align 2, !tbaa !67
  %537 = sext i16 %536 to i32
  %538 = call signext i32 @writeReferenceFrame(i32 noundef signext %533, i32 noundef signext %534, i32 noundef signext %535, i32 noundef signext 0, i32 noundef signext %537)
  %539 = load i32, ptr %21, align 4, !tbaa !40
  %540 = add nsw i32 %539, %538
  store i32 %540, ptr %21, align 4, !tbaa !40
  br label %541

541:                                              ; preds = %532, %528
  br label %542

542:                                              ; preds = %541, %519, %514
  %543 = load i16, ptr %15, align 2, !tbaa !67
  %544 = sext i16 %543 to i32
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %550, label %546

546:                                              ; preds = %542
  %547 = load i16, ptr %15, align 2, !tbaa !67
  %548 = sext i16 %547 to i32
  %549 = icmp eq i32 %548, 2
  br i1 %549, label %550, label %563

550:                                              ; preds = %546, %542
  %551 = load i32, ptr %30, align 4, !tbaa !40
  %552 = load i32, ptr %31, align 4, !tbaa !40
  %553 = load i32, ptr %30, align 4, !tbaa !40
  %554 = add nsw i32 %553, 2
  %555 = load i32, ptr %31, align 4, !tbaa !40
  %556 = add nsw i32 %555, 2
  %557 = load i16, ptr %16, align 2, !tbaa !67
  %558 = sext i16 %557 to i32
  %559 = load i32, ptr %14, align 4, !tbaa !40
  %560 = call signext i32 @writeMotionVector8x8(i32 noundef signext %551, i32 noundef signext %552, i32 noundef signext %554, i32 noundef signext %556, i32 noundef signext %558, i32 noundef signext 0, i32 noundef signext %559)
  %561 = load i32, ptr %21, align 4, !tbaa !40
  %562 = add nsw i32 %561, %560
  store i32 %562, ptr %21, align 4, !tbaa !40
  br label %563

563:                                              ; preds = %550, %546
  %564 = load i16, ptr %15, align 2, !tbaa !67
  %565 = sext i16 %564 to i32
  %566 = icmp eq i32 %565, 1
  br i1 %566, label %571, label %567

567:                                              ; preds = %563
  %568 = load i16, ptr %15, align 2, !tbaa !67
  %569 = sext i16 %568 to i32
  %570 = icmp eq i32 %569, 2
  br i1 %570, label %571, label %584

571:                                              ; preds = %567, %563
  %572 = load i32, ptr %30, align 4, !tbaa !40
  %573 = load i32, ptr %31, align 4, !tbaa !40
  %574 = load i32, ptr %30, align 4, !tbaa !40
  %575 = add nsw i32 %574, 2
  %576 = load i32, ptr %31, align 4, !tbaa !40
  %577 = add nsw i32 %576, 2
  %578 = load i16, ptr %17, align 2, !tbaa !67
  %579 = sext i16 %578 to i32
  %580 = load i32, ptr %14, align 4, !tbaa !40
  %581 = call signext i32 @writeMotionVector8x8(i32 noundef signext %572, i32 noundef signext %573, i32 noundef signext %575, i32 noundef signext %577, i32 noundef signext %579, i32 noundef signext 1, i32 noundef signext %580)
  %582 = load i32, ptr %21, align 4, !tbaa !40
  %583 = add nsw i32 %582, %581
  store i32 %583, ptr %21, align 4, !tbaa !40
  br label %584

584:                                              ; preds = %571, %567
  br label %585

585:                                              ; preds = %584, %489
  %586 = load ptr, ptr @input, align 8, !tbaa !13
  %587 = getelementptr inbounds nuw %struct.InputParameters, ptr %586, i32 0, i32 74
  %588 = load i32, ptr %587, align 8, !tbaa !118
  %589 = icmp eq i32 %588, 1
  br i1 %589, label %590, label %619

590:                                              ; preds = %585
  %591 = load ptr, ptr %37, align 8, !tbaa !13
  %592 = getelementptr inbounds nuw %struct.Slice, ptr %591, i32 0, i32 6
  %593 = load ptr, ptr %592, align 8, !tbaa !113
  %594 = load ptr, ptr %39, align 8, !tbaa !92
  %595 = getelementptr inbounds i32, ptr %594, i64 6
  %596 = load i32, ptr %595, align 4, !tbaa !40
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.datapartition, ptr %593, i64 %597
  store ptr %598, ptr %38, align 8, !tbaa !116
  %599 = load ptr, ptr %38, align 8, !tbaa !116
  %600 = getelementptr inbounds nuw %struct.datapartition, ptr %599, i32 0, i32 1
  store ptr %600, ptr %40, align 8, !tbaa !13
  %601 = load ptr, ptr %40, align 8, !tbaa !13
  %602 = call signext i32 @arienco_bits_written(ptr noundef %601)
  store i32 %602, ptr %24, align 4, !tbaa !40
  %603 = load i32, ptr %13, align 4, !tbaa !40
  %604 = load ptr, ptr %10, align 8, !tbaa !92
  %605 = load i32, ptr %604, align 4, !tbaa !40
  %606 = icmp sgt i32 %605, 0
  %607 = zext i1 %606 to i64
  %608 = select i1 %606, i32 1, i32 0
  %609 = load i32, ptr @cbp8x8, align 4, !tbaa !40
  %610 = load ptr, ptr %35, align 8, !tbaa !153
  %611 = load ptr, ptr %40, align 8, !tbaa !13
  call void @writeCBP_BIT_CABAC(i32 noundef signext %603, i32 noundef signext %608, i32 noundef signext %609, ptr noundef %610, i32 noundef signext 1, ptr noundef %611)
  %612 = load ptr, ptr %40, align 8, !tbaa !13
  %613 = call signext i32 @arienco_bits_written(ptr noundef %612)
  %614 = load i32, ptr %24, align 4, !tbaa !40
  %615 = sub nsw i32 %613, %614
  store i32 %615, ptr %24, align 4, !tbaa !40
  %616 = load i32, ptr %24, align 4, !tbaa !40
  %617 = load i32, ptr %21, align 4, !tbaa !40
  %618 = add nsw i32 %617, %616
  store i32 %618, ptr %21, align 4, !tbaa !40
  br label %619

619:                                              ; preds = %590, %585
  %620 = load ptr, ptr %10, align 8, !tbaa !92
  %621 = load i32, ptr %620, align 4, !tbaa !40
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %632

623:                                              ; preds = %619
  %624 = load i32, ptr %13, align 4, !tbaa !40
  %625 = load i32, ptr %14, align 4, !tbaa !40
  %626 = load ptr, ptr %35, align 8, !tbaa !153
  %627 = getelementptr inbounds nuw %struct.macroblock, ptr %626, i32 0, i32 31
  %628 = load i32, ptr %627, align 8, !tbaa !169
  %629 = call signext i32 @writeLumaCoeff8x8(i32 noundef signext %624, i32 noundef signext %625, i32 noundef signext %628)
  %630 = load i32, ptr %21, align 4, !tbaa !40
  %631 = add nsw i32 %630, %629
  store i32 %631, ptr %21, align 4, !tbaa !40
  br label %632

632:                                              ; preds = %623, %619
  %633 = load i64, ptr %22, align 8, !tbaa !93
  %634 = sitofp i64 %633 to double
  %635 = load double, ptr %12, align 8, !tbaa !38
  %636 = load i32, ptr %21, align 4, !tbaa !40
  %637 = sitofp i32 %636 to double
  %638 = call double @llvm.fmuladd.f64(double %635, double %637, double %634)
  store double %638, ptr %9, align 8
  store i32 1, ptr %41, align 4
  br label %639

639:                                              ; preds = %632, %230, %111
  call void @llvm.lifetime.end.p0(i64 8, ptr %40) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %39) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %38) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %37) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr %36) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %35) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %34) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %32) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  %640 = load double, ptr %9, align 8
  ret double %640
}

declare signext i32 @B8Mode2Value(i32 noundef signext, i32 noundef signext) #1

declare signext i32 @LumaResidualCoding8x8(ptr noundef, ptr noundef, i32 noundef signext, i16 noundef signext, i32 noundef signext, i32 noundef signext, i16 noundef signext, i16 noundef signext) #1

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !40
  store i32 %1, ptr %4, align 4, !tbaa !40
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = load i32, ptr %4, align 4, !tbaa !40
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !40
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !40
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

declare void @compute_residue_b8block(i32 noundef signext, i32 noundef signext) #1

declare void @decode_one_b8block(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

declare void @ue_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #1

declare signext i32 @writeReferenceFrame(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

declare signext i32 @writeMotionVector8x8(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

declare signext i32 @arienco_bits_written(ptr noundef) #1

declare void @writeCBP_BIT_CABAC(i32 noundef signext, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) #1

declare signext i32 @writeLumaCoeff8x8(i32 noundef signext, i32 noundef signext, i32 noundef signext) #1

; Function Attrs: nounwind
define dso_local signext i32 @I16Offset(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !40
  store i32 %1, ptr %4, align 4, !tbaa !40
  %5 = load i32, ptr %3, align 4, !tbaa !40
  %6 = and i32 %5, 15
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 13, i32 1
  %10 = load i32, ptr %4, align 4, !tbaa !40
  %11 = add nsw i32 %9, %10
  %12 = load i32, ptr %3, align 4, !tbaa !40
  %13 = and i32 %12, 48
  %14 = ashr i32 %13, 2
  %15 = add nsw i32 %11, %14
  ret i32 %15
}

; Function Attrs: nounwind
define dso_local void @SetModesAndRefframeForBlocks(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store i32 %0, ptr %2, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %12 = load ptr, ptr @img, align 8, !tbaa !13
  %13 = getelementptr inbounds nuw %struct.ImageParameters, ptr %12, i32 0, i32 61
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = load ptr, ptr @img, align 8, !tbaa !13
  %16 = getelementptr inbounds nuw %struct.ImageParameters, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !120
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %18
  store ptr %19, ptr %7, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  %20 = load ptr, ptr @img, align 8, !tbaa !13
  %21 = getelementptr inbounds nuw %struct.ImageParameters, ptr %20, i32 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !39
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i32
  store i32 %24, ptr %8, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  %25 = load i32, ptr %2, align 4, !tbaa !40
  %26 = load ptr, ptr %7, align 8, !tbaa !153
  %27 = getelementptr inbounds nuw %struct.macroblock, ptr %26, i32 0, i32 8
  store i32 %25, ptr %27, align 8, !tbaa !170
  %28 = load i32, ptr %2, align 4, !tbaa !40
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %38

30:                                               ; preds = %1
  %31 = load ptr, ptr @img, align 8, !tbaa !13
  %32 = getelementptr inbounds nuw %struct.ImageParameters, ptr %31, i32 0, i32 83
  %33 = load i32, ptr %2, align 4, !tbaa !40
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [15 x i16], ptr %32, i64 0, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !67
  %37 = sext i16 %36 to i32
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i32 [ %37, %30 ], [ 0, %38 ]
  %41 = trunc i32 %40 to i16
  %42 = load ptr, ptr %7, align 8, !tbaa !153
  %43 = getelementptr inbounds nuw %struct.macroblock, ptr %42, i32 0, i32 33
  store i16 %41, ptr %43, align 8, !tbaa !154
  %44 = load i32, ptr %2, align 4, !tbaa !40
  switch i32 %44, label %232 [
    i32 0, label %45
    i32 1, label %92
    i32 2, label %92
    i32 3, label %92
    i32 8, label %120
    i32 9, label %152
    i32 10, label %171
    i32 13, label %190
    i32 14, label %211
  ]

45:                                               ; preds = %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %46

46:                                               ; preds = %88, %45
  %47 = load i32, ptr %3, align 4, !tbaa !40
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %91

49:                                               ; preds = %46
  %50 = load ptr, ptr %7, align 8, !tbaa !153
  %51 = getelementptr inbounds nuw %struct.macroblock, ptr %50, i32 0, i32 14
  %52 = load i32, ptr %3, align 4, !tbaa !40
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr %51, i64 0, i64 %53
  store i32 0, ptr %54, align 4, !tbaa !40
  %55 = load i32, ptr %8, align 4, !tbaa !40
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load ptr, ptr @direct_pdir, align 8, !tbaa !43
  %59 = load ptr, ptr @img, align 8, !tbaa !13
  %60 = getelementptr inbounds nuw %struct.ImageParameters, ptr %59, i32 0, i32 38
  %61 = load i32, ptr %60, align 4, !tbaa !68
  %62 = load i32, ptr %3, align 4, !tbaa !40
  %63 = ashr i32 %62, 1
  %64 = mul nsw i32 %63, 2
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %58, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !44
  %69 = load ptr, ptr @img, align 8, !tbaa !13
  %70 = getelementptr inbounds nuw %struct.ImageParameters, ptr %69, i32 0, i32 37
  %71 = load i32, ptr %70, align 8, !tbaa !69
  %72 = load i32, ptr %3, align 4, !tbaa !40
  %73 = and i32 %72, 1
  %74 = mul nsw i32 %73, 2
  %75 = add nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %68, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !45
  %79 = sext i8 %78 to i32
  br label %81

80:                                               ; preds = %49
  br label %81

81:                                               ; preds = %80, %57
  %82 = phi i32 [ %79, %57 ], [ 0, %80 ]
  %83 = load ptr, ptr %7, align 8, !tbaa !153
  %84 = getelementptr inbounds nuw %struct.macroblock, ptr %83, i32 0, i32 15
  %85 = load i32, ptr %3, align 4, !tbaa !40
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], ptr %84, i64 0, i64 %86
  store i32 %82, ptr %87, align 4, !tbaa !40
  br label %88

88:                                               ; preds = %81
  %89 = load i32, ptr %3, align 4, !tbaa !40
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %3, align 4, !tbaa !40
  br label %46, !llvm.loop !171

91:                                               ; preds = %46
  br label %234

92:                                               ; preds = %39, %39, %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %93

93:                                               ; preds = %116, %92
  %94 = load i32, ptr %3, align 4, !tbaa !40
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %119

96:                                               ; preds = %93
  %97 = load i32, ptr %2, align 4, !tbaa !40
  %98 = load ptr, ptr %7, align 8, !tbaa !153
  %99 = getelementptr inbounds nuw %struct.macroblock, ptr %98, i32 0, i32 14
  %100 = load i32, ptr %3, align 4, !tbaa !40
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], ptr %99, i64 0, i64 %101
  store i32 %97, ptr %102, align 4, !tbaa !40
  %103 = load i32, ptr %2, align 4, !tbaa !40
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %104
  %106 = load i32, ptr %3, align 4, !tbaa !40
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i8], ptr %105, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !45
  %110 = sext i8 %109 to i32
  %111 = load ptr, ptr %7, align 8, !tbaa !153
  %112 = getelementptr inbounds nuw %struct.macroblock, ptr %111, i32 0, i32 15
  %113 = load i32, ptr %3, align 4, !tbaa !40
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], ptr %112, i64 0, i64 %114
  store i32 %110, ptr %115, align 4, !tbaa !40
  br label %116

116:                                              ; preds = %96
  %117 = load i32, ptr %3, align 4, !tbaa !40
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr %3, align 4, !tbaa !40
  br label %93, !llvm.loop !172

119:                                              ; preds = %93
  br label %234

120:                                              ; preds = %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %121

121:                                              ; preds = %148, %120
  %122 = load i32, ptr %3, align 4, !tbaa !40
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %151

124:                                              ; preds = %121
  %125 = load i32, ptr %3, align 4, !tbaa !40
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %126
  %128 = load i16, ptr %127, align 2, !tbaa !67
  %129 = sext i16 %128 to i32
  %130 = load ptr, ptr %7, align 8, !tbaa !153
  %131 = getelementptr inbounds nuw %struct.macroblock, ptr %130, i32 0, i32 14
  %132 = load i32, ptr %3, align 4, !tbaa !40
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i32], ptr %131, i64 0, i64 %133
  store i32 %129, ptr %134, align 4, !tbaa !40
  %135 = load i32, ptr %2, align 4, !tbaa !40
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %136
  %138 = load i32, ptr %3, align 4, !tbaa !40
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i8], ptr %137, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !45
  %142 = sext i8 %141 to i32
  %143 = load ptr, ptr %7, align 8, !tbaa !153
  %144 = getelementptr inbounds nuw %struct.macroblock, ptr %143, i32 0, i32 15
  %145 = load i32, ptr %3, align 4, !tbaa !40
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [4 x i32], ptr %144, i64 0, i64 %146
  store i32 %142, ptr %147, align 4, !tbaa !40
  br label %148

148:                                              ; preds = %124
  %149 = load i32, ptr %3, align 4, !tbaa !40
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %3, align 4, !tbaa !40
  br label %121, !llvm.loop !173

151:                                              ; preds = %121
  br label %234

152:                                              ; preds = %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %153

153:                                              ; preds = %167, %152
  %154 = load i32, ptr %3, align 4, !tbaa !40
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load ptr, ptr %7, align 8, !tbaa !153
  %158 = getelementptr inbounds nuw %struct.macroblock, ptr %157, i32 0, i32 14
  %159 = load i32, ptr %3, align 4, !tbaa !40
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4 x i32], ptr %158, i64 0, i64 %160
  store i32 11, ptr %161, align 4, !tbaa !40
  %162 = load ptr, ptr %7, align 8, !tbaa !153
  %163 = getelementptr inbounds nuw %struct.macroblock, ptr %162, i32 0, i32 15
  %164 = load i32, ptr %3, align 4, !tbaa !40
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [4 x i32], ptr %163, i64 0, i64 %165
  store i32 -1, ptr %166, align 4, !tbaa !40
  br label %167

167:                                              ; preds = %156
  %168 = load i32, ptr %3, align 4, !tbaa !40
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %3, align 4, !tbaa !40
  br label %153, !llvm.loop !174

170:                                              ; preds = %153
  br label %234

171:                                              ; preds = %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %172

172:                                              ; preds = %186, %171
  %173 = load i32, ptr %3, align 4, !tbaa !40
  %174 = icmp slt i32 %173, 4
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load ptr, ptr %7, align 8, !tbaa !153
  %177 = getelementptr inbounds nuw %struct.macroblock, ptr %176, i32 0, i32 14
  %178 = load i32, ptr %3, align 4, !tbaa !40
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x i32], ptr %177, i64 0, i64 %179
  store i32 0, ptr %180, align 4, !tbaa !40
  %181 = load ptr, ptr %7, align 8, !tbaa !153
  %182 = getelementptr inbounds nuw %struct.macroblock, ptr %181, i32 0, i32 15
  %183 = load i32, ptr %3, align 4, !tbaa !40
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i32], ptr %182, i64 0, i64 %184
  store i32 -1, ptr %185, align 4, !tbaa !40
  br label %186

186:                                              ; preds = %175
  %187 = load i32, ptr %3, align 4, !tbaa !40
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %3, align 4, !tbaa !40
  br label %172, !llvm.loop !175

189:                                              ; preds = %172
  br label %234

190:                                              ; preds = %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %191

191:                                              ; preds = %205, %190
  %192 = load i32, ptr %3, align 4, !tbaa !40
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load ptr, ptr %7, align 8, !tbaa !153
  %196 = getelementptr inbounds nuw %struct.macroblock, ptr %195, i32 0, i32 14
  %197 = load i32, ptr %3, align 4, !tbaa !40
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [4 x i32], ptr %196, i64 0, i64 %198
  store i32 13, ptr %199, align 4, !tbaa !40
  %200 = load ptr, ptr %7, align 8, !tbaa !153
  %201 = getelementptr inbounds nuw %struct.macroblock, ptr %200, i32 0, i32 15
  %202 = load i32, ptr %3, align 4, !tbaa !40
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x i32], ptr %201, i64 0, i64 %203
  store i32 -1, ptr %204, align 4, !tbaa !40
  br label %205

205:                                              ; preds = %194
  %206 = load i32, ptr %3, align 4, !tbaa !40
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %3, align 4, !tbaa !40
  br label %191, !llvm.loop !176

208:                                              ; preds = %191
  %209 = load ptr, ptr %7, align 8, !tbaa !153
  %210 = getelementptr inbounds nuw %struct.macroblock, ptr %209, i32 0, i32 31
  store i32 1, ptr %210, align 8, !tbaa !169
  br label %234

211:                                              ; preds = %39
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %212

212:                                              ; preds = %226, %211
  %213 = load i32, ptr %3, align 4, !tbaa !40
  %214 = icmp slt i32 %213, 4
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = load ptr, ptr %7, align 8, !tbaa !153
  %217 = getelementptr inbounds nuw %struct.macroblock, ptr %216, i32 0, i32 14
  %218 = load i32, ptr %3, align 4, !tbaa !40
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i32], ptr %217, i64 0, i64 %219
  store i32 14, ptr %220, align 4, !tbaa !40
  %221 = load ptr, ptr %7, align 8, !tbaa !153
  %222 = getelementptr inbounds nuw %struct.macroblock, ptr %221, i32 0, i32 15
  %223 = load i32, ptr %3, align 4, !tbaa !40
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i32], ptr %222, i64 0, i64 %224
  store i32 -1, ptr %225, align 4, !tbaa !40
  br label %226

226:                                              ; preds = %215
  %227 = load i32, ptr %3, align 4, !tbaa !40
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %3, align 4, !tbaa !40
  br label %212, !llvm.loop !177

229:                                              ; preds = %212
  %230 = load ptr, ptr %7, align 8, !tbaa !153
  %231 = getelementptr inbounds nuw %struct.macroblock, ptr %230, i32 0, i32 31
  store i32 0, ptr %231, align 8, !tbaa !169
  br label %234

232:                                              ; preds = %39
  %233 = call signext i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @exit(i32 noundef signext 1) #9
  unreachable

234:                                              ; preds = %229, %208, %189, %170, %151, %119, %91
  %235 = load i32, ptr %2, align 4, !tbaa !40
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %246, label %237

237:                                              ; preds = %234
  %238 = load i32, ptr %2, align 4, !tbaa !40
  %239 = icmp eq i32 %238, 9
  br i1 %239, label %246, label %240

240:                                              ; preds = %237
  %241 = load i32, ptr %2, align 4, !tbaa !40
  %242 = icmp eq i32 %241, 10
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %2, align 4, !tbaa !40
  %245 = icmp eq i32 %244, 13
  br i1 %245, label %246, label %430

246:                                              ; preds = %243, %240, %237, %234
  %247 = load i32, ptr %8, align 4, !tbaa !40
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %365

249:                                              ; preds = %246
  %250 = load i32, ptr %2, align 4, !tbaa !40
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %320, label %252

252:                                              ; preds = %249
  %253 = load ptr, ptr @img, align 8, !tbaa !13
  %254 = getelementptr inbounds nuw %struct.ImageParameters, ptr %253, i32 0, i32 38
  %255 = load i32, ptr %254, align 4, !tbaa !68
  store i32 %255, ptr %4, align 4, !tbaa !40
  br label %256

256:                                              ; preds = %316, %252
  %257 = load i32, ptr %4, align 4, !tbaa !40
  %258 = load ptr, ptr @img, align 8, !tbaa !13
  %259 = getelementptr inbounds nuw %struct.ImageParameters, ptr %258, i32 0, i32 38
  %260 = load i32, ptr %259, align 4, !tbaa !68
  %261 = add nsw i32 %260, 4
  %262 = icmp slt i32 %257, %261
  br i1 %262, label %263, label %319

263:                                              ; preds = %256
  %264 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %265 = getelementptr inbounds nuw %struct.storable_picture, ptr %264, i32 0, i32 35
  %266 = load ptr, ptr %265, align 8, !tbaa !178
  %267 = getelementptr inbounds ptr, ptr %266, i64 0
  %268 = load ptr, ptr %267, align 8, !tbaa !43
  %269 = load i32, ptr %4, align 4, !tbaa !40
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds ptr, ptr %268, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !44
  %273 = load ptr, ptr @img, align 8, !tbaa !13
  %274 = getelementptr inbounds nuw %struct.ImageParameters, ptr %273, i32 0, i32 37
  %275 = load i32, ptr %274, align 8, !tbaa !69
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, ptr %272, i64 %276
  %278 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %279 = getelementptr inbounds ptr, ptr %278, i64 0
  %280 = load ptr, ptr %279, align 8, !tbaa !43
  %281 = load i32, ptr %4, align 4, !tbaa !40
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds ptr, ptr %280, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !44
  %285 = load ptr, ptr @img, align 8, !tbaa !13
  %286 = getelementptr inbounds nuw %struct.ImageParameters, ptr %285, i32 0, i32 37
  %287 = load i32, ptr %286, align 8, !tbaa !69
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, ptr %284, i64 %288
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %277, ptr align 1 %289, i64 4, i1 false)
  %290 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %291 = getelementptr inbounds nuw %struct.storable_picture, ptr %290, i32 0, i32 35
  %292 = load ptr, ptr %291, align 8, !tbaa !178
  %293 = getelementptr inbounds ptr, ptr %292, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !43
  %295 = load i32, ptr %4, align 4, !tbaa !40
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %294, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !44
  %299 = load ptr, ptr @img, align 8, !tbaa !13
  %300 = getelementptr inbounds nuw %struct.ImageParameters, ptr %299, i32 0, i32 37
  %301 = load i32, ptr %300, align 8, !tbaa !69
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %298, i64 %302
  %304 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %305 = getelementptr inbounds ptr, ptr %304, i64 1
  %306 = load ptr, ptr %305, align 8, !tbaa !43
  %307 = load i32, ptr %4, align 4, !tbaa !40
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %306, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !44
  %311 = load ptr, ptr @img, align 8, !tbaa !13
  %312 = getelementptr inbounds nuw %struct.ImageParameters, ptr %311, i32 0, i32 37
  %313 = load i32, ptr %312, align 8, !tbaa !69
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, ptr %310, i64 %314
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %303, ptr align 1 %315, i64 4, i1 false)
  br label %316

316:                                              ; preds = %263
  %317 = load i32, ptr %4, align 4, !tbaa !40
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %4, align 4, !tbaa !40
  br label %256, !llvm.loop !179

319:                                              ; preds = %256
  br label %364

320:                                              ; preds = %249
  %321 = load ptr, ptr @img, align 8, !tbaa !13
  %322 = getelementptr inbounds nuw %struct.ImageParameters, ptr %321, i32 0, i32 38
  %323 = load i32, ptr %322, align 4, !tbaa !68
  store i32 %323, ptr %4, align 4, !tbaa !40
  br label %324

324:                                              ; preds = %360, %320
  %325 = load i32, ptr %4, align 4, !tbaa !40
  %326 = load ptr, ptr @img, align 8, !tbaa !13
  %327 = getelementptr inbounds nuw %struct.ImageParameters, ptr %326, i32 0, i32 38
  %328 = load i32, ptr %327, align 4, !tbaa !68
  %329 = add nsw i32 %328, 4
  %330 = icmp slt i32 %325, %329
  br i1 %330, label %331, label %363

331:                                              ; preds = %324
  %332 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %333 = getelementptr inbounds nuw %struct.storable_picture, ptr %332, i32 0, i32 35
  %334 = load ptr, ptr %333, align 8, !tbaa !178
  %335 = getelementptr inbounds ptr, ptr %334, i64 0
  %336 = load ptr, ptr %335, align 8, !tbaa !43
  %337 = load i32, ptr %4, align 4, !tbaa !40
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds ptr, ptr %336, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !44
  %341 = load ptr, ptr @img, align 8, !tbaa !13
  %342 = getelementptr inbounds nuw %struct.ImageParameters, ptr %341, i32 0, i32 37
  %343 = load i32, ptr %342, align 8, !tbaa !69
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, ptr %340, i64 %344
  call void @llvm.memset.p0.i64(ptr align 1 %345, i8 -1, i64 4, i1 false)
  %346 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %347 = getelementptr inbounds nuw %struct.storable_picture, ptr %346, i32 0, i32 35
  %348 = load ptr, ptr %347, align 8, !tbaa !178
  %349 = getelementptr inbounds ptr, ptr %348, i64 1
  %350 = load ptr, ptr %349, align 8, !tbaa !43
  %351 = load i32, ptr %4, align 4, !tbaa !40
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds ptr, ptr %350, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !44
  %355 = load ptr, ptr @img, align 8, !tbaa !13
  %356 = getelementptr inbounds nuw %struct.ImageParameters, ptr %355, i32 0, i32 37
  %357 = load i32, ptr %356, align 8, !tbaa !69
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8, ptr %354, i64 %358
  call void @llvm.memset.p0.i64(ptr align 1 %359, i8 -1, i64 4, i1 false)
  br label %360

360:                                              ; preds = %331
  %361 = load i32, ptr %4, align 4, !tbaa !40
  %362 = add nsw i32 %361, 1
  store i32 %362, ptr %4, align 4, !tbaa !40
  br label %324, !llvm.loop !180

363:                                              ; preds = %324
  br label %364

364:                                              ; preds = %363, %319
  br label %429

365:                                              ; preds = %246
  %366 = load i32, ptr %2, align 4, !tbaa !40
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %398, label %368

368:                                              ; preds = %365
  %369 = load ptr, ptr @img, align 8, !tbaa !13
  %370 = getelementptr inbounds nuw %struct.ImageParameters, ptr %369, i32 0, i32 38
  %371 = load i32, ptr %370, align 4, !tbaa !68
  store i32 %371, ptr %4, align 4, !tbaa !40
  br label %372

372:                                              ; preds = %394, %368
  %373 = load i32, ptr %4, align 4, !tbaa !40
  %374 = load ptr, ptr @img, align 8, !tbaa !13
  %375 = getelementptr inbounds nuw %struct.ImageParameters, ptr %374, i32 0, i32 38
  %376 = load i32, ptr %375, align 4, !tbaa !68
  %377 = add nsw i32 %376, 4
  %378 = icmp slt i32 %373, %377
  br i1 %378, label %379, label %397

379:                                              ; preds = %372
  %380 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %381 = getelementptr inbounds nuw %struct.storable_picture, ptr %380, i32 0, i32 35
  %382 = load ptr, ptr %381, align 8, !tbaa !178
  %383 = getelementptr inbounds ptr, ptr %382, i64 0
  %384 = load ptr, ptr %383, align 8, !tbaa !43
  %385 = load i32, ptr %4, align 4, !tbaa !40
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds ptr, ptr %384, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !44
  %389 = load ptr, ptr @img, align 8, !tbaa !13
  %390 = getelementptr inbounds nuw %struct.ImageParameters, ptr %389, i32 0, i32 37
  %391 = load i32, ptr %390, align 8, !tbaa !69
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %388, i64 %392
  call void @llvm.memset.p0.i64(ptr align 1 %393, i8 0, i64 4, i1 false)
  br label %394

394:                                              ; preds = %379
  %395 = load i32, ptr %4, align 4, !tbaa !40
  %396 = add nsw i32 %395, 1
  store i32 %396, ptr %4, align 4, !tbaa !40
  br label %372, !llvm.loop !181

397:                                              ; preds = %372
  br label %428

398:                                              ; preds = %365
  %399 = load ptr, ptr @img, align 8, !tbaa !13
  %400 = getelementptr inbounds nuw %struct.ImageParameters, ptr %399, i32 0, i32 38
  %401 = load i32, ptr %400, align 4, !tbaa !68
  store i32 %401, ptr %4, align 4, !tbaa !40
  br label %402

402:                                              ; preds = %424, %398
  %403 = load i32, ptr %4, align 4, !tbaa !40
  %404 = load ptr, ptr @img, align 8, !tbaa !13
  %405 = getelementptr inbounds nuw %struct.ImageParameters, ptr %404, i32 0, i32 38
  %406 = load i32, ptr %405, align 4, !tbaa !68
  %407 = add nsw i32 %406, 4
  %408 = icmp slt i32 %403, %407
  br i1 %408, label %409, label %427

409:                                              ; preds = %402
  %410 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %411 = getelementptr inbounds nuw %struct.storable_picture, ptr %410, i32 0, i32 35
  %412 = load ptr, ptr %411, align 8, !tbaa !178
  %413 = getelementptr inbounds ptr, ptr %412, i64 0
  %414 = load ptr, ptr %413, align 8, !tbaa !43
  %415 = load i32, ptr %4, align 4, !tbaa !40
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds ptr, ptr %414, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !44
  %419 = load ptr, ptr @img, align 8, !tbaa !13
  %420 = getelementptr inbounds nuw %struct.ImageParameters, ptr %419, i32 0, i32 37
  %421 = load i32, ptr %420, align 8, !tbaa !69
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, ptr %418, i64 %422
  call void @llvm.memset.p0.i64(ptr align 1 %423, i8 -1, i64 4, i1 false)
  br label %424

424:                                              ; preds = %409
  %425 = load i32, ptr %4, align 4, !tbaa !40
  %426 = add nsw i32 %425, 1
  store i32 %426, ptr %4, align 4, !tbaa !40
  br label %402, !llvm.loop !182

427:                                              ; preds = %402
  br label %428

428:                                              ; preds = %427, %397
  br label %429

429:                                              ; preds = %428, %364
  br label %836

430:                                              ; preds = %243
  %431 = load i32, ptr %8, align 4, !tbaa !40
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %739

433:                                              ; preds = %430
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %434

434:                                              ; preds = %735, %433
  %435 = load i32, ptr %4, align 4, !tbaa !40
  %436 = icmp slt i32 %435, 4
  br i1 %436, label %437, label %738

437:                                              ; preds = %434
  %438 = load ptr, ptr @img, align 8, !tbaa !13
  %439 = getelementptr inbounds nuw %struct.ImageParameters, ptr %438, i32 0, i32 38
  %440 = load i32, ptr %439, align 4, !tbaa !68
  %441 = load i32, ptr %4, align 4, !tbaa !40
  %442 = add nsw i32 %440, %441
  store i32 %442, ptr %10, align 4, !tbaa !40
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %443

443:                                              ; preds = %731, %437
  %444 = load i32, ptr %3, align 4, !tbaa !40
  %445 = icmp slt i32 %444, 4
  br i1 %445, label %446, label %734

446:                                              ; preds = %443
  %447 = load ptr, ptr @img, align 8, !tbaa !13
  %448 = getelementptr inbounds nuw %struct.ImageParameters, ptr %447, i32 0, i32 37
  %449 = load i32, ptr %448, align 8, !tbaa !69
  %450 = load i32, ptr %3, align 4, !tbaa !40
  %451 = add nsw i32 %449, %450
  store i32 %451, ptr %9, align 4, !tbaa !40
  %452 = load i32, ptr %4, align 4, !tbaa !40
  %453 = ashr i32 %452, 1
  %454 = mul nsw i32 2, %453
  %455 = load i32, ptr %3, align 4, !tbaa !40
  %456 = ashr i32 %455, 1
  %457 = add nsw i32 %454, %456
  store i32 %457, ptr %5, align 4, !tbaa !40
  %458 = load i32, ptr %4, align 4, !tbaa !40
  %459 = and i32 %458, 1
  %460 = mul nsw i32 2, %459
  %461 = load i32, ptr %3, align 4, !tbaa !40
  %462 = and i32 %461, 1
  %463 = add nsw i32 %460, %462
  store i32 %463, ptr %6, align 4, !tbaa !40
  %464 = load i32, ptr %2, align 4, !tbaa !40
  %465 = icmp eq i32 %464, 8
  br i1 %465, label %466, label %520

466:                                              ; preds = %446
  %467 = load i32, ptr %5, align 4, !tbaa !40
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %468
  %470 = load i16, ptr %469, align 2, !tbaa !67
  %471 = sext i16 %470 to i32
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %520

473:                                              ; preds = %466
  %474 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %475 = getelementptr inbounds ptr, ptr %474, i64 0
  %476 = load ptr, ptr %475, align 8, !tbaa !43
  %477 = load i32, ptr %10, align 4, !tbaa !40
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds ptr, ptr %476, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !44
  %481 = load i32, ptr %9, align 4, !tbaa !40
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, ptr %480, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !45
  %485 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %486 = getelementptr inbounds nuw %struct.storable_picture, ptr %485, i32 0, i32 35
  %487 = load ptr, ptr %486, align 8, !tbaa !178
  %488 = getelementptr inbounds ptr, ptr %487, i64 0
  %489 = load ptr, ptr %488, align 8, !tbaa !43
  %490 = load i32, ptr %10, align 4, !tbaa !40
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds ptr, ptr %489, i64 %491
  %493 = load ptr, ptr %492, align 8, !tbaa !44
  %494 = load i32, ptr %9, align 4, !tbaa !40
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, ptr %493, i64 %495
  store i8 %484, ptr %496, align 1, !tbaa !45
  %497 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %498 = getelementptr inbounds ptr, ptr %497, i64 1
  %499 = load ptr, ptr %498, align 8, !tbaa !43
  %500 = load i32, ptr %10, align 4, !tbaa !40
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds ptr, ptr %499, i64 %501
  %503 = load ptr, ptr %502, align 8, !tbaa !44
  %504 = load i32, ptr %9, align 4, !tbaa !40
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i8, ptr %503, i64 %505
  %507 = load i8, ptr %506, align 1, !tbaa !45
  %508 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %509 = getelementptr inbounds nuw %struct.storable_picture, ptr %508, i32 0, i32 35
  %510 = load ptr, ptr %509, align 8, !tbaa !178
  %511 = getelementptr inbounds ptr, ptr %510, i64 1
  %512 = load ptr, ptr %511, align 8, !tbaa !43
  %513 = load i32, ptr %10, align 4, !tbaa !40
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds ptr, ptr %512, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !44
  %517 = load i32, ptr %9, align 4, !tbaa !40
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, ptr %516, i64 %518
  store i8 %507, ptr %519, align 1, !tbaa !45
  br label %730

520:                                              ; preds = %466, %446
  %521 = load i32, ptr %2, align 4, !tbaa !40
  %522 = icmp eq i32 %521, 1
  br i1 %522, label %523, label %617

523:                                              ; preds = %520
  %524 = load ptr, ptr %7, align 8, !tbaa !153
  %525 = getelementptr inbounds nuw %struct.macroblock, ptr %524, i32 0, i32 33
  %526 = load i16, ptr %525, align 8, !tbaa !154
  %527 = sext i16 %526 to i32
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %617

529:                                              ; preds = %523
  %530 = load i32, ptr %2, align 4, !tbaa !40
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %531
  %533 = load i32, ptr %5, align 4, !tbaa !40
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [4 x i8], ptr %532, i64 0, i64 %534
  %536 = load i8, ptr %535, align 1, !tbaa !45
  %537 = sext i8 %536 to i32
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %549, label %539

539:                                              ; preds = %529
  %540 = load i32, ptr %2, align 4, !tbaa !40
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %541
  %543 = load i32, ptr %5, align 4, !tbaa !40
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [4 x i8], ptr %542, i64 0, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !45
  %547 = sext i8 %546 to i32
  %548 = icmp eq i32 %547, 2
  br i1 %548, label %549, label %617

549:                                              ; preds = %539, %529
  %550 = load i32, ptr %2, align 4, !tbaa !40
  %551 = icmp ne i32 %550, 8
  br i1 %551, label %562, label %552

552:                                              ; preds = %549
  %553 = load i32, ptr %5, align 4, !tbaa !40
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !67
  %557 = sext i16 %556 to i32
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %562, label %559

559:                                              ; preds = %552
  %560 = load i32, ptr %8, align 4, !tbaa !40
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %617, label %562

562:                                              ; preds = %559, %552, %549
  %563 = load i32, ptr %2, align 4, !tbaa !40
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %564
  %566 = load i32, ptr %5, align 4, !tbaa !40
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [4 x i8], ptr %565, i64 0, i64 %567
  %569 = load i8, ptr %568, align 1, !tbaa !45
  %570 = sext i8 %569 to i32
  %571 = icmp eq i32 %570, 1
  br i1 %571, label %582, label %572

572:                                              ; preds = %562
  %573 = load i32, ptr %2, align 4, !tbaa !40
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %574
  %576 = load i32, ptr %5, align 4, !tbaa !40
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [4 x i8], ptr %575, i64 0, i64 %577
  %579 = load i8, ptr %578, align 1, !tbaa !45
  %580 = sext i8 %579 to i32
  %581 = icmp eq i32 %580, 2
  br i1 %581, label %582, label %617

582:                                              ; preds = %572, %562
  %583 = load i32, ptr %2, align 4, !tbaa !40
  %584 = icmp ne i32 %583, 8
  br i1 %584, label %592, label %585

585:                                              ; preds = %582
  %586 = load i32, ptr %5, align 4, !tbaa !40
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %587
  %589 = load i16, ptr %588, align 2, !tbaa !67
  %590 = sext i16 %589 to i32
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %617

592:                                              ; preds = %585, %582
  %593 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %594 = getelementptr inbounds nuw %struct.storable_picture, ptr %593, i32 0, i32 35
  %595 = load ptr, ptr %594, align 8, !tbaa !178
  %596 = getelementptr inbounds ptr, ptr %595, i64 0
  %597 = load ptr, ptr %596, align 8, !tbaa !43
  %598 = load i32, ptr %10, align 4, !tbaa !40
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds ptr, ptr %597, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !44
  %602 = load i32, ptr %9, align 4, !tbaa !40
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, ptr %601, i64 %603
  store i8 0, ptr %604, align 1, !tbaa !45
  %605 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %606 = getelementptr inbounds nuw %struct.storable_picture, ptr %605, i32 0, i32 35
  %607 = load ptr, ptr %606, align 8, !tbaa !178
  %608 = getelementptr inbounds ptr, ptr %607, i64 1
  %609 = load ptr, ptr %608, align 8, !tbaa !43
  %610 = load i32, ptr %10, align 4, !tbaa !40
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds ptr, ptr %609, i64 %611
  %613 = load ptr, ptr %612, align 8, !tbaa !44
  %614 = load i32, ptr %9, align 4, !tbaa !40
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i8, ptr %613, i64 %615
  store i8 0, ptr %616, align 1, !tbaa !45
  br label %729

617:                                              ; preds = %585, %572, %559, %539, %523, %520
  %618 = load i32, ptr %2, align 4, !tbaa !40
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %619
  %621 = load i32, ptr %5, align 4, !tbaa !40
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [4 x i8], ptr %620, i64 0, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !45
  %625 = sext i8 %624 to i32
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %637, label %627

627:                                              ; preds = %617
  %628 = load i32, ptr %2, align 4, !tbaa !40
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %629
  %631 = load i32, ptr %5, align 4, !tbaa !40
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [4 x i8], ptr %630, i64 0, i64 %632
  %634 = load i8, ptr %633, align 1, !tbaa !45
  %635 = sext i8 %634 to i32
  %636 = icmp eq i32 %635, 2
  br i1 %636, label %637, label %659

637:                                              ; preds = %627, %617
  %638 = load i32, ptr %2, align 4, !tbaa !40
  %639 = icmp ne i32 %638, 8
  br i1 %639, label %650, label %640

640:                                              ; preds = %637
  %641 = load i32, ptr %5, align 4, !tbaa !40
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %642
  %644 = load i16, ptr %643, align 2, !tbaa !67
  %645 = sext i16 %644 to i32
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %650, label %647

647:                                              ; preds = %640
  %648 = load i32, ptr %8, align 4, !tbaa !40
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %659, label %650

650:                                              ; preds = %647, %640, %637
  %651 = load i32, ptr %2, align 4, !tbaa !40
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8fwref, i64 0, i64 %652
  %654 = load i32, ptr %5, align 4, !tbaa !40
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [4 x i8], ptr %653, i64 0, i64 %655
  %657 = load i8, ptr %656, align 1, !tbaa !45
  %658 = sext i8 %657 to i32
  br label %660

659:                                              ; preds = %647, %627
  br label %660

660:                                              ; preds = %659, %650
  %661 = phi i32 [ %658, %650 ], [ -1, %659 ]
  %662 = trunc i32 %661 to i8
  %663 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %664 = getelementptr inbounds nuw %struct.storable_picture, ptr %663, i32 0, i32 35
  %665 = load ptr, ptr %664, align 8, !tbaa !178
  %666 = getelementptr inbounds ptr, ptr %665, i64 0
  %667 = load ptr, ptr %666, align 8, !tbaa !43
  %668 = load i32, ptr %10, align 4, !tbaa !40
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds ptr, ptr %667, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !44
  %672 = load i32, ptr %9, align 4, !tbaa !40
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i8, ptr %671, i64 %673
  store i8 %662, ptr %674, align 1, !tbaa !45
  %675 = load i32, ptr %2, align 4, !tbaa !40
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %676
  %678 = load i32, ptr %5, align 4, !tbaa !40
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [4 x i8], ptr %677, i64 0, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !45
  %682 = sext i8 %681 to i32
  %683 = icmp eq i32 %682, 1
  br i1 %683, label %694, label %684

684:                                              ; preds = %660
  %685 = load i32, ptr %2, align 4, !tbaa !40
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %686
  %688 = load i32, ptr %5, align 4, !tbaa !40
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [4 x i8], ptr %687, i64 0, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !45
  %692 = sext i8 %691 to i32
  %693 = icmp eq i32 %692, 2
  br i1 %693, label %694, label %713

694:                                              ; preds = %684, %660
  %695 = load i32, ptr %2, align 4, !tbaa !40
  %696 = icmp ne i32 %695, 8
  br i1 %696, label %704, label %697

697:                                              ; preds = %694
  %698 = load i32, ptr %5, align 4, !tbaa !40
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %699
  %701 = load i16, ptr %700, align 2, !tbaa !67
  %702 = sext i16 %701 to i32
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %713

704:                                              ; preds = %697, %694
  %705 = load i32, ptr %2, align 4, !tbaa !40
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8bwref, i64 0, i64 %706
  %708 = load i32, ptr %5, align 4, !tbaa !40
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds [4 x i8], ptr %707, i64 0, i64 %709
  %711 = load i8, ptr %710, align 1, !tbaa !45
  %712 = sext i8 %711 to i32
  br label %714

713:                                              ; preds = %697, %684
  br label %714

714:                                              ; preds = %713, %704
  %715 = phi i32 [ %712, %704 ], [ -1, %713 ]
  %716 = trunc i32 %715 to i8
  %717 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %718 = getelementptr inbounds nuw %struct.storable_picture, ptr %717, i32 0, i32 35
  %719 = load ptr, ptr %718, align 8, !tbaa !178
  %720 = getelementptr inbounds ptr, ptr %719, i64 1
  %721 = load ptr, ptr %720, align 8, !tbaa !43
  %722 = load i32, ptr %10, align 4, !tbaa !40
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds ptr, ptr %721, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !44
  %726 = load i32, ptr %9, align 4, !tbaa !40
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i8, ptr %725, i64 %727
  store i8 %716, ptr %728, align 1, !tbaa !45
  br label %729

729:                                              ; preds = %714, %592
  br label %730

730:                                              ; preds = %729, %473
  br label %731

731:                                              ; preds = %730
  %732 = load i32, ptr %3, align 4, !tbaa !40
  %733 = add nsw i32 %732, 1
  store i32 %733, ptr %3, align 4, !tbaa !40
  br label %443, !llvm.loop !183

734:                                              ; preds = %443
  br label %735

735:                                              ; preds = %734
  %736 = load i32, ptr %4, align 4, !tbaa !40
  %737 = add nsw i32 %736, 1
  store i32 %737, ptr %4, align 4, !tbaa !40
  br label %434, !llvm.loop !184

738:                                              ; preds = %434
  br label %835

739:                                              ; preds = %430
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %740

740:                                              ; preds = %831, %739
  %741 = load i32, ptr %4, align 4, !tbaa !40
  %742 = icmp slt i32 %741, 4
  br i1 %742, label %743, label %834

743:                                              ; preds = %740
  %744 = load ptr, ptr @img, align 8, !tbaa !13
  %745 = getelementptr inbounds nuw %struct.ImageParameters, ptr %744, i32 0, i32 38
  %746 = load i32, ptr %745, align 4, !tbaa !68
  %747 = load i32, ptr %4, align 4, !tbaa !40
  %748 = add nsw i32 %746, %747
  store i32 %748, ptr %10, align 4, !tbaa !40
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %749

749:                                              ; preds = %827, %743
  %750 = load i32, ptr %3, align 4, !tbaa !40
  %751 = icmp slt i32 %750, 4
  br i1 %751, label %752, label %830

752:                                              ; preds = %749
  %753 = load ptr, ptr @img, align 8, !tbaa !13
  %754 = getelementptr inbounds nuw %struct.ImageParameters, ptr %753, i32 0, i32 37
  %755 = load i32, ptr %754, align 8, !tbaa !69
  %756 = load i32, ptr %3, align 4, !tbaa !40
  %757 = add nsw i32 %755, %756
  store i32 %757, ptr %9, align 4, !tbaa !40
  %758 = load i32, ptr %4, align 4, !tbaa !40
  %759 = ashr i32 %758, 1
  %760 = mul nsw i32 2, %759
  %761 = load i32, ptr %3, align 4, !tbaa !40
  %762 = ashr i32 %761, 1
  %763 = add nsw i32 %760, %762
  store i32 %763, ptr %5, align 4, !tbaa !40
  %764 = load i32, ptr %4, align 4, !tbaa !40
  %765 = and i32 %764, 1
  %766 = mul nsw i32 2, %765
  %767 = load i32, ptr %3, align 4, !tbaa !40
  %768 = and i32 %767, 1
  %769 = add nsw i32 %766, %768
  store i32 %769, ptr %6, align 4, !tbaa !40
  %770 = load i32, ptr %2, align 4, !tbaa !40
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %771
  %773 = load i32, ptr %5, align 4, !tbaa !40
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [4 x i8], ptr %772, i64 0, i64 %774
  %776 = load i8, ptr %775, align 1, !tbaa !45
  %777 = sext i8 %776 to i32
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %789, label %779

779:                                              ; preds = %752
  %780 = load i32, ptr %2, align 4, !tbaa !40
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8pdir, i64 0, i64 %781
  %783 = load i32, ptr %5, align 4, !tbaa !40
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [4 x i8], ptr %782, i64 0, i64 %784
  %786 = load i8, ptr %785, align 1, !tbaa !45
  %787 = sext i8 %786 to i32
  %788 = icmp eq i32 %787, 2
  br i1 %788, label %789, label %811

789:                                              ; preds = %779, %752
  %790 = load i32, ptr %2, align 4, !tbaa !40
  %791 = icmp ne i32 %790, 8
  br i1 %791, label %802, label %792

792:                                              ; preds = %789
  %793 = load i32, ptr %5, align 4, !tbaa !40
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [4 x i16], ptr @best8x8mode, i64 0, i64 %794
  %796 = load i16, ptr %795, align 2, !tbaa !67
  %797 = sext i16 %796 to i32
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %802, label %799

799:                                              ; preds = %792
  %800 = load i32, ptr %8, align 4, !tbaa !40
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %811, label %802

802:                                              ; preds = %799, %792, %789
  %803 = load i32, ptr %2, align 4, !tbaa !40
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [15 x [4 x i8]], ptr @best8x8fwref, i64 0, i64 %804
  %806 = load i32, ptr %5, align 4, !tbaa !40
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [4 x i8], ptr %805, i64 0, i64 %807
  %809 = load i8, ptr %808, align 1, !tbaa !45
  %810 = sext i8 %809 to i32
  br label %812

811:                                              ; preds = %799, %779
  br label %812

812:                                              ; preds = %811, %802
  %813 = phi i32 [ %810, %802 ], [ -1, %811 ]
  %814 = trunc i32 %813 to i8
  %815 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %816 = getelementptr inbounds nuw %struct.storable_picture, ptr %815, i32 0, i32 35
  %817 = load ptr, ptr %816, align 8, !tbaa !178
  %818 = getelementptr inbounds ptr, ptr %817, i64 0
  %819 = load ptr, ptr %818, align 8, !tbaa !43
  %820 = load i32, ptr %10, align 4, !tbaa !40
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds ptr, ptr %819, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !44
  %824 = load i32, ptr %9, align 4, !tbaa !40
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i8, ptr %823, i64 %825
  store i8 %814, ptr %826, align 1, !tbaa !45
  br label %827

827:                                              ; preds = %812
  %828 = load i32, ptr %3, align 4, !tbaa !40
  %829 = add nsw i32 %828, 1
  store i32 %829, ptr %3, align 4, !tbaa !40
  br label %749, !llvm.loop !185

830:                                              ; preds = %749
  br label %831

831:                                              ; preds = %830
  %832 = load i32, ptr %4, align 4, !tbaa !40
  %833 = add nsw i32 %832, 1
  store i32 %833, ptr %4, align 4, !tbaa !40
  br label %740, !llvm.loop !186

834:                                              ; preds = %740
  br label %835

835:                                              ; preds = %834, %738
  br label %836

836:                                              ; preds = %835, %429
  %837 = load i32, ptr %8, align 4, !tbaa !40
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %964

839:                                              ; preds = %836
  %840 = load ptr, ptr @img, align 8, !tbaa !13
  %841 = getelementptr inbounds nuw %struct.ImageParameters, ptr %840, i32 0, i32 38
  %842 = load i32, ptr %841, align 4, !tbaa !68
  store i32 %842, ptr %4, align 4, !tbaa !40
  br label %843

843:                                              ; preds = %960, %839
  %844 = load i32, ptr %4, align 4, !tbaa !40
  %845 = load ptr, ptr @img, align 8, !tbaa !13
  %846 = getelementptr inbounds nuw %struct.ImageParameters, ptr %845, i32 0, i32 38
  %847 = load i32, ptr %846, align 4, !tbaa !68
  %848 = add nsw i32 %847, 4
  %849 = icmp slt i32 %844, %848
  br i1 %849, label %850, label %963

850:                                              ; preds = %843
  %851 = load ptr, ptr @img, align 8, !tbaa !13
  %852 = getelementptr inbounds nuw %struct.ImageParameters, ptr %851, i32 0, i32 37
  %853 = load i32, ptr %852, align 8, !tbaa !69
  store i32 %853, ptr %3, align 4, !tbaa !40
  br label %854

854:                                              ; preds = %956, %850
  %855 = load i32, ptr %3, align 4, !tbaa !40
  %856 = load ptr, ptr @img, align 8, !tbaa !13
  %857 = getelementptr inbounds nuw %struct.ImageParameters, ptr %856, i32 0, i32 37
  %858 = load i32, ptr %857, align 8, !tbaa !69
  %859 = add nsw i32 %858, 4
  %860 = icmp slt i32 %855, %859
  br i1 %860, label %861, label %959

861:                                              ; preds = %854
  %862 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %863 = getelementptr inbounds nuw %struct.storable_picture, ptr %862, i32 0, i32 35
  %864 = load ptr, ptr %863, align 8, !tbaa !178
  %865 = getelementptr inbounds ptr, ptr %864, i64 0
  %866 = load ptr, ptr %865, align 8, !tbaa !43
  %867 = load i32, ptr %4, align 4, !tbaa !40
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds ptr, ptr %866, i64 %868
  %870 = load ptr, ptr %869, align 8, !tbaa !44
  %871 = load i32, ptr %3, align 4, !tbaa !40
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds i8, ptr %870, i64 %872
  %874 = load i8, ptr %873, align 1, !tbaa !45
  %875 = sext i8 %874 to i32
  %876 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 0
  store i32 %875, ptr %876, align 4, !tbaa !40
  %877 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %878 = getelementptr inbounds nuw %struct.storable_picture, ptr %877, i32 0, i32 35
  %879 = load ptr, ptr %878, align 8, !tbaa !178
  %880 = getelementptr inbounds ptr, ptr %879, i64 1
  %881 = load ptr, ptr %880, align 8, !tbaa !43
  %882 = load i32, ptr %4, align 4, !tbaa !40
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds ptr, ptr %881, i64 %883
  %885 = load ptr, ptr %884, align 8, !tbaa !44
  %886 = load i32, ptr %3, align 4, !tbaa !40
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i8, ptr %885, i64 %887
  %889 = load i8, ptr %888, align 1, !tbaa !45
  %890 = sext i8 %889 to i32
  %891 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  store i32 %890, ptr %891, align 4, !tbaa !40
  %892 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 0
  %893 = load i32, ptr %892, align 4, !tbaa !40
  %894 = icmp sge i32 %893, 0
  br i1 %894, label %895, label %909

895:                                              ; preds = %861
  %896 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %897 = getelementptr inbounds nuw %struct.storable_picture, ptr %896, i32 0, i32 6
  %898 = load ptr, ptr %7, align 8, !tbaa !153
  %899 = getelementptr inbounds nuw %struct.macroblock, ptr %898, i32 0, i32 21
  %900 = load i32, ptr %899, align 8, !tbaa !187
  %901 = add nsw i32 0, %900
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds [6 x [33 x i64]], ptr %897, i64 0, i64 %902
  %904 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 0
  %905 = load i32, ptr %904, align 4, !tbaa !40
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [33 x i64], ptr %903, i64 0, i64 %906
  %908 = load i64, ptr %907, align 8, !tbaa !93
  br label %910

909:                                              ; preds = %861
  br label %910

910:                                              ; preds = %909, %895
  %911 = phi i64 [ %908, %895 ], [ -1, %909 ]
  %912 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %913 = getelementptr inbounds nuw %struct.storable_picture, ptr %912, i32 0, i32 36
  %914 = load ptr, ptr %913, align 8, !tbaa !188
  %915 = getelementptr inbounds ptr, ptr %914, i64 0
  %916 = load ptr, ptr %915, align 8, !tbaa !189
  %917 = load i32, ptr %4, align 4, !tbaa !40
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds ptr, ptr %916, i64 %918
  %920 = load ptr, ptr %919, align 8, !tbaa !151
  %921 = load i32, ptr %3, align 4, !tbaa !40
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds i64, ptr %920, i64 %922
  store i64 %911, ptr %923, align 8, !tbaa !93
  %924 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %925 = load i32, ptr %924, align 4, !tbaa !40
  %926 = icmp sge i32 %925, 0
  br i1 %926, label %927, label %941

927:                                              ; preds = %910
  %928 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %929 = getelementptr inbounds nuw %struct.storable_picture, ptr %928, i32 0, i32 6
  %930 = load ptr, ptr %7, align 8, !tbaa !153
  %931 = getelementptr inbounds nuw %struct.macroblock, ptr %930, i32 0, i32 21
  %932 = load i32, ptr %931, align 8, !tbaa !187
  %933 = add nsw i32 1, %932
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [6 x [33 x i64]], ptr %929, i64 0, i64 %934
  %936 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 1
  %937 = load i32, ptr %936, align 4, !tbaa !40
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [33 x i64], ptr %935, i64 0, i64 %938
  %940 = load i64, ptr %939, align 8, !tbaa !93
  br label %942

941:                                              ; preds = %910
  br label %942

942:                                              ; preds = %941, %927
  %943 = phi i64 [ %940, %927 ], [ -1, %941 ]
  %944 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %945 = getelementptr inbounds nuw %struct.storable_picture, ptr %944, i32 0, i32 36
  %946 = load ptr, ptr %945, align 8, !tbaa !188
  %947 = getelementptr inbounds ptr, ptr %946, i64 1
  %948 = load ptr, ptr %947, align 8, !tbaa !189
  %949 = load i32, ptr %4, align 4, !tbaa !40
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds ptr, ptr %948, i64 %950
  %952 = load ptr, ptr %951, align 8, !tbaa !151
  %953 = load i32, ptr %3, align 4, !tbaa !40
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i64, ptr %952, i64 %954
  store i64 %943, ptr %955, align 8, !tbaa !93
  br label %956

956:                                              ; preds = %942
  %957 = load i32, ptr %3, align 4, !tbaa !40
  %958 = add nsw i32 %957, 1
  store i32 %958, ptr %3, align 4, !tbaa !40
  br label %854, !llvm.loop !191

959:                                              ; preds = %854
  br label %960

960:                                              ; preds = %959
  %961 = load i32, ptr %4, align 4, !tbaa !40
  %962 = add nsw i32 %961, 1
  store i32 %962, ptr %4, align 4, !tbaa !40
  br label %843, !llvm.loop !192

963:                                              ; preds = %843
  br label %1042

964:                                              ; preds = %836
  %965 = load ptr, ptr @img, align 8, !tbaa !13
  %966 = getelementptr inbounds nuw %struct.ImageParameters, ptr %965, i32 0, i32 38
  %967 = load i32, ptr %966, align 4, !tbaa !68
  store i32 %967, ptr %4, align 4, !tbaa !40
  br label %968

968:                                              ; preds = %1038, %964
  %969 = load i32, ptr %4, align 4, !tbaa !40
  %970 = load ptr, ptr @img, align 8, !tbaa !13
  %971 = getelementptr inbounds nuw %struct.ImageParameters, ptr %970, i32 0, i32 38
  %972 = load i32, ptr %971, align 4, !tbaa !68
  %973 = add nsw i32 %972, 4
  %974 = icmp slt i32 %969, %973
  br i1 %974, label %975, label %1041

975:                                              ; preds = %968
  %976 = load ptr, ptr @img, align 8, !tbaa !13
  %977 = getelementptr inbounds nuw %struct.ImageParameters, ptr %976, i32 0, i32 37
  %978 = load i32, ptr %977, align 8, !tbaa !69
  store i32 %978, ptr %3, align 4, !tbaa !40
  br label %979

979:                                              ; preds = %1034, %975
  %980 = load i32, ptr %3, align 4, !tbaa !40
  %981 = load ptr, ptr @img, align 8, !tbaa !13
  %982 = getelementptr inbounds nuw %struct.ImageParameters, ptr %981, i32 0, i32 37
  %983 = load i32, ptr %982, align 8, !tbaa !69
  %984 = add nsw i32 %983, 4
  %985 = icmp slt i32 %980, %984
  br i1 %985, label %986, label %1037

986:                                              ; preds = %979
  %987 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %988 = getelementptr inbounds nuw %struct.storable_picture, ptr %987, i32 0, i32 35
  %989 = load ptr, ptr %988, align 8, !tbaa !178
  %990 = getelementptr inbounds ptr, ptr %989, i64 0
  %991 = load ptr, ptr %990, align 8, !tbaa !43
  %992 = load i32, ptr %4, align 4, !tbaa !40
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds ptr, ptr %991, i64 %993
  %995 = load ptr, ptr %994, align 8, !tbaa !44
  %996 = load i32, ptr %3, align 4, !tbaa !40
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds i8, ptr %995, i64 %997
  %999 = load i8, ptr %998, align 1, !tbaa !45
  %1000 = sext i8 %999 to i32
  %1001 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 0
  store i32 %1000, ptr %1001, align 4, !tbaa !40
  %1002 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 0
  %1003 = load i32, ptr %1002, align 4, !tbaa !40
  %1004 = icmp sge i32 %1003, 0
  br i1 %1004, label %1005, label %1019

1005:                                             ; preds = %986
  %1006 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1007 = getelementptr inbounds nuw %struct.storable_picture, ptr %1006, i32 0, i32 6
  %1008 = load ptr, ptr %7, align 8, !tbaa !153
  %1009 = getelementptr inbounds nuw %struct.macroblock, ptr %1008, i32 0, i32 21
  %1010 = load i32, ptr %1009, align 8, !tbaa !187
  %1011 = add nsw i32 0, %1010
  %1012 = sext i32 %1011 to i64
  %1013 = getelementptr inbounds [6 x [33 x i64]], ptr %1007, i64 0, i64 %1012
  %1014 = getelementptr inbounds [2 x i32], ptr %11, i64 0, i64 0
  %1015 = load i32, ptr %1014, align 4, !tbaa !40
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds [33 x i64], ptr %1013, i64 0, i64 %1016
  %1018 = load i64, ptr %1017, align 8, !tbaa !93
  br label %1020

1019:                                             ; preds = %986
  br label %1020

1020:                                             ; preds = %1019, %1005
  %1021 = phi i64 [ %1018, %1005 ], [ -1, %1019 ]
  %1022 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1023 = getelementptr inbounds nuw %struct.storable_picture, ptr %1022, i32 0, i32 36
  %1024 = load ptr, ptr %1023, align 8, !tbaa !188
  %1025 = getelementptr inbounds ptr, ptr %1024, i64 0
  %1026 = load ptr, ptr %1025, align 8, !tbaa !189
  %1027 = load i32, ptr %4, align 4, !tbaa !40
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds ptr, ptr %1026, i64 %1028
  %1030 = load ptr, ptr %1029, align 8, !tbaa !151
  %1031 = load i32, ptr %3, align 4, !tbaa !40
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds i64, ptr %1030, i64 %1032
  store i64 %1021, ptr %1033, align 8, !tbaa !93
  br label %1034

1034:                                             ; preds = %1020
  %1035 = load i32, ptr %3, align 4, !tbaa !40
  %1036 = add nsw i32 %1035, 1
  store i32 %1036, ptr %3, align 4, !tbaa !40
  br label %979, !llvm.loop !193

1037:                                             ; preds = %979
  br label %1038

1038:                                             ; preds = %1037
  %1039 = load i32, ptr %4, align 4, !tbaa !40
  %1040 = add nsw i32 %1039, 1
  store i32 %1040, ptr %4, align 4, !tbaa !40
  br label %968, !llvm.loop !194

1041:                                             ; preds = %968
  br label %1042

1042:                                             ; preds = %1041, %963
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

declare signext i32 @printf(ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nounwind
define dso_local void @Intra16x16_Mode_Decision(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !153
  store ptr %1, ptr %4, align 8, !tbaa !92
  call void @intrapred_luma_16x16()
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = call signext i32 @find_sad_16x16(ptr noundef %5)
  %7 = load ptr, ptr %4, align 8, !tbaa !92
  %8 = load i32, ptr %7, align 4, !tbaa !40
  %9 = call signext i32 @dct_luma_16x16(i32 noundef signext %8)
  %10 = load ptr, ptr %3, align 8, !tbaa !153
  %11 = getelementptr inbounds nuw %struct.macroblock, ptr %10, i32 0, i32 12
  store i32 %9, ptr %11, align 4, !tbaa !195
  ret void
}

declare void @intrapred_luma_16x16() #1

declare signext i32 @find_sad_16x16(ptr noundef) #1

declare signext i32 @dct_luma_16x16(i32 noundef signext) #1

; Function Attrs: nounwind
define dso_local void @SetCoeffAndReconstruction8x8(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %10 = load ptr, ptr @img, align 8, !tbaa !13
  %11 = getelementptr inbounds nuw %struct.ImageParameters, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = icmp eq i32 %12, 1
  %14 = zext i1 %13 to i32
  store i32 %14, ptr %9, align 4, !tbaa !40
  %15 = load ptr, ptr %2, align 8, !tbaa !153
  %16 = getelementptr inbounds nuw %struct.macroblock, ptr %15, i32 0, i32 31
  %17 = load i32, ptr %16, align 8, !tbaa !169
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %564

19:                                               ; preds = %1
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %20

20:                                               ; preds = %44, %19
  %21 = load i32, ptr %6, align 4, !tbaa !40
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, ptr %6, align 4, !tbaa !40
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 5), i64 0, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !67
  %28 = sext i16 %27 to i32
  %29 = load ptr, ptr %2, align 8, !tbaa !153
  %30 = getelementptr inbounds nuw %struct.macroblock, ptr %29, i32 0, i32 14
  %31 = load i32, ptr %6, align 4, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i32], ptr %30, i64 0, i64 %32
  store i32 %28, ptr %33, align 4, !tbaa !40
  %34 = load i32, ptr %6, align 4, !tbaa !40
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 6), i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !45
  %38 = sext i8 %37 to i32
  %39 = load ptr, ptr %2, align 8, !tbaa !153
  %40 = getelementptr inbounds nuw %struct.macroblock, ptr %39, i32 0, i32 15
  %41 = load i32, ptr %6, align 4, !tbaa !40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i32], ptr %40, i64 0, i64 %42
  store i32 %38, ptr %43, align 4, !tbaa !40
  br label %44

44:                                               ; preds = %23
  %45 = load i32, ptr %6, align 4, !tbaa !40
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4, !tbaa !40
  br label %20, !llvm.loop !196

47:                                               ; preds = %20
  %48 = load i32, ptr %9, align 4, !tbaa !40
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %154

50:                                               ; preds = %47
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %51

51:                                               ; preds = %150, %50
  %52 = load i32, ptr %5, align 4, !tbaa !40
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %153

54:                                               ; preds = %51
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %55

55:                                               ; preds = %146, %54
  %56 = load i32, ptr %6, align 4, !tbaa !40
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %149

58:                                               ; preds = %55
  %59 = load i32, ptr %5, align 4, !tbaa !40
  %60 = ashr i32 %59, 1
  %61 = mul nsw i32 2, %60
  %62 = load i32, ptr %6, align 4, !tbaa !40
  %63 = ashr i32 %62, 1
  %64 = add nsw i32 %61, %63
  store i32 %64, ptr %4, align 4, !tbaa !40
  %65 = load i32, ptr %5, align 4, !tbaa !40
  %66 = and i32 %65, 1
  %67 = mul nsw i32 2, %66
  %68 = load i32, ptr %6, align 4, !tbaa !40
  %69 = and i32 %68, 1
  %70 = add nsw i32 %67, %69
  store i32 %70, ptr %8, align 4, !tbaa !40
  %71 = load ptr, ptr %2, align 8, !tbaa !153
  %72 = getelementptr inbounds nuw %struct.macroblock, ptr %71, i32 0, i32 15
  %73 = load i32, ptr %4, align 4, !tbaa !40
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], ptr %72, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !40
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %58
  %80 = load i32, ptr %4, align 4, !tbaa !40
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 7), i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !45
  %84 = sext i8 %83 to i32
  br label %86

85:                                               ; preds = %58
  br label %86

86:                                               ; preds = %85, %79
  %87 = phi i32 [ %84, %79 ], [ -1, %85 ]
  %88 = trunc i32 %87 to i8
  %89 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %90 = getelementptr inbounds nuw %struct.storable_picture, ptr %89, i32 0, i32 35
  %91 = load ptr, ptr %90, align 8, !tbaa !178
  %92 = getelementptr inbounds ptr, ptr %91, i64 0
  %93 = load ptr, ptr %92, align 8, !tbaa !43
  %94 = load ptr, ptr @img, align 8, !tbaa !13
  %95 = getelementptr inbounds nuw %struct.ImageParameters, ptr %94, i32 0, i32 38
  %96 = load i32, ptr %95, align 4, !tbaa !68
  %97 = load i32, ptr %5, align 4, !tbaa !40
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %93, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  %102 = load ptr, ptr @img, align 8, !tbaa !13
  %103 = getelementptr inbounds nuw %struct.ImageParameters, ptr %102, i32 0, i32 37
  %104 = load i32, ptr %103, align 8, !tbaa !69
  %105 = load i32, ptr %6, align 4, !tbaa !40
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, ptr %101, i64 %107
  store i8 %88, ptr %108, align 1, !tbaa !45
  %109 = load ptr, ptr %2, align 8, !tbaa !153
  %110 = getelementptr inbounds nuw %struct.macroblock, ptr %109, i32 0, i32 15
  %111 = load i32, ptr %4, align 4, !tbaa !40
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i32], ptr %110, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !40
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %86
  %117 = load i32, ptr %4, align 4, !tbaa !40
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 8), i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !45
  %121 = sext i8 %120 to i32
  br label %123

122:                                              ; preds = %86
  br label %123

123:                                              ; preds = %122, %116
  %124 = phi i32 [ %121, %116 ], [ -1, %122 ]
  %125 = trunc i32 %124 to i8
  %126 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %127 = getelementptr inbounds nuw %struct.storable_picture, ptr %126, i32 0, i32 35
  %128 = load ptr, ptr %127, align 8, !tbaa !178
  %129 = getelementptr inbounds ptr, ptr %128, i64 1
  %130 = load ptr, ptr %129, align 8, !tbaa !43
  %131 = load ptr, ptr @img, align 8, !tbaa !13
  %132 = getelementptr inbounds nuw %struct.ImageParameters, ptr %131, i32 0, i32 38
  %133 = load i32, ptr %132, align 4, !tbaa !68
  %134 = load i32, ptr %5, align 4, !tbaa !40
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %130, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !44
  %139 = load ptr, ptr @img, align 8, !tbaa !13
  %140 = getelementptr inbounds nuw %struct.ImageParameters, ptr %139, i32 0, i32 37
  %141 = load i32, ptr %140, align 8, !tbaa !69
  %142 = load i32, ptr %6, align 4, !tbaa !40
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, ptr %138, i64 %144
  store i8 %125, ptr %145, align 1, !tbaa !45
  br label %146

146:                                              ; preds = %123
  %147 = load i32, ptr %6, align 4, !tbaa !40
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %6, align 4, !tbaa !40
  br label %55, !llvm.loop !197

149:                                              ; preds = %55
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %5, align 4, !tbaa !40
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %5, align 4, !tbaa !40
  br label %51, !llvm.loop !198

153:                                              ; preds = %51
  br label %207

154:                                              ; preds = %47
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %155

155:                                              ; preds = %203, %154
  %156 = load i32, ptr %5, align 4, !tbaa !40
  %157 = icmp slt i32 %156, 4
  br i1 %157, label %158, label %206

158:                                              ; preds = %155
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %159

159:                                              ; preds = %199, %158
  %160 = load i32, ptr %6, align 4, !tbaa !40
  %161 = icmp slt i32 %160, 4
  br i1 %161, label %162, label %202

162:                                              ; preds = %159
  %163 = load i32, ptr %5, align 4, !tbaa !40
  %164 = ashr i32 %163, 1
  %165 = mul nsw i32 2, %164
  %166 = load i32, ptr %6, align 4, !tbaa !40
  %167 = ashr i32 %166, 1
  %168 = add nsw i32 %165, %167
  store i32 %168, ptr %4, align 4, !tbaa !40
  %169 = load i32, ptr %5, align 4, !tbaa !40
  %170 = and i32 %169, 1
  %171 = mul nsw i32 2, %170
  %172 = load i32, ptr %6, align 4, !tbaa !40
  %173 = and i32 %172, 1
  %174 = add nsw i32 %171, %173
  store i32 %174, ptr %8, align 4, !tbaa !40
  %175 = load i32, ptr %4, align 4, !tbaa !40
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 7), i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !45
  %179 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %180 = getelementptr inbounds nuw %struct.storable_picture, ptr %179, i32 0, i32 35
  %181 = load ptr, ptr %180, align 8, !tbaa !178
  %182 = getelementptr inbounds ptr, ptr %181, i64 0
  %183 = load ptr, ptr %182, align 8, !tbaa !43
  %184 = load ptr, ptr @img, align 8, !tbaa !13
  %185 = getelementptr inbounds nuw %struct.ImageParameters, ptr %184, i32 0, i32 38
  %186 = load i32, ptr %185, align 4, !tbaa !68
  %187 = load i32, ptr %5, align 4, !tbaa !40
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %183, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !44
  %192 = load ptr, ptr @img, align 8, !tbaa !13
  %193 = getelementptr inbounds nuw %struct.ImageParameters, ptr %192, i32 0, i32 37
  %194 = load i32, ptr %193, align 8, !tbaa !69
  %195 = load i32, ptr %6, align 4, !tbaa !40
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %191, i64 %197
  store i8 %178, ptr %198, align 1, !tbaa !45
  br label %199

199:                                              ; preds = %162
  %200 = load i32, ptr %6, align 4, !tbaa !40
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %6, align 4, !tbaa !40
  br label %159, !llvm.loop !199

202:                                              ; preds = %159
  br label %203

203:                                              ; preds = %202
  %204 = load i32, ptr %5, align 4, !tbaa !40
  %205 = add nsw i32 %204, 1
  store i32 %205, ptr %5, align 4, !tbaa !40
  br label %155, !llvm.loop !200

206:                                              ; preds = %155
  br label %207

207:                                              ; preds = %206, %153
  %208 = load ptr, ptr @img, align 8, !tbaa !13
  %209 = getelementptr inbounds nuw %struct.ImageParameters, ptr %208, i32 0, i32 38
  %210 = load i32, ptr %209, align 4, !tbaa !68
  store i32 %210, ptr %5, align 4, !tbaa !40
  br label %211

211:                                              ; preds = %281, %207
  %212 = load i32, ptr %5, align 4, !tbaa !40
  %213 = load ptr, ptr @img, align 8, !tbaa !13
  %214 = getelementptr inbounds nuw %struct.ImageParameters, ptr %213, i32 0, i32 38
  %215 = load i32, ptr %214, align 4, !tbaa !68
  %216 = add nsw i32 %215, 4
  %217 = icmp slt i32 %212, %216
  br i1 %217, label %218, label %284

218:                                              ; preds = %211
  %219 = load ptr, ptr @img, align 8, !tbaa !13
  %220 = getelementptr inbounds nuw %struct.ImageParameters, ptr %219, i32 0, i32 37
  %221 = load i32, ptr %220, align 8, !tbaa !69
  store i32 %221, ptr %6, align 4, !tbaa !40
  br label %222

222:                                              ; preds = %277, %218
  %223 = load i32, ptr %6, align 4, !tbaa !40
  %224 = load ptr, ptr @img, align 8, !tbaa !13
  %225 = getelementptr inbounds nuw %struct.ImageParameters, ptr %224, i32 0, i32 37
  %226 = load i32, ptr %225, align 8, !tbaa !69
  %227 = add nsw i32 %226, 4
  %228 = icmp slt i32 %223, %227
  br i1 %228, label %229, label %280

229:                                              ; preds = %222
  %230 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %231 = getelementptr inbounds nuw %struct.storable_picture, ptr %230, i32 0, i32 35
  %232 = load ptr, ptr %231, align 8, !tbaa !178
  %233 = getelementptr inbounds ptr, ptr %232, i64 0
  %234 = load ptr, ptr %233, align 8, !tbaa !43
  %235 = load i32, ptr %5, align 4, !tbaa !40
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !44
  %239 = load i32, ptr %6, align 4, !tbaa !40
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8, ptr %238, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !45
  %243 = sext i8 %242 to i32
  %244 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 0
  store i32 %243, ptr %244, align 4, !tbaa !40
  %245 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 0
  %246 = load i32, ptr %245, align 4, !tbaa !40
  %247 = icmp sge i32 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %229
  %249 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %250 = getelementptr inbounds nuw %struct.storable_picture, ptr %249, i32 0, i32 6
  %251 = load ptr, ptr %2, align 8, !tbaa !153
  %252 = getelementptr inbounds nuw %struct.macroblock, ptr %251, i32 0, i32 21
  %253 = load i32, ptr %252, align 8, !tbaa !187
  %254 = add nsw i32 0, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [6 x [33 x i64]], ptr %250, i64 0, i64 %255
  %257 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 0
  %258 = load i32, ptr %257, align 4, !tbaa !40
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [33 x i64], ptr %256, i64 0, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !93
  br label %263

262:                                              ; preds = %229
  br label %263

263:                                              ; preds = %262, %248
  %264 = phi i64 [ %261, %248 ], [ -1, %262 ]
  %265 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %266 = getelementptr inbounds nuw %struct.storable_picture, ptr %265, i32 0, i32 36
  %267 = load ptr, ptr %266, align 8, !tbaa !188
  %268 = getelementptr inbounds ptr, ptr %267, i64 0
  %269 = load ptr, ptr %268, align 8, !tbaa !189
  %270 = load i32, ptr %5, align 4, !tbaa !40
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds ptr, ptr %269, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !151
  %274 = load i32, ptr %6, align 4, !tbaa !40
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, ptr %273, i64 %275
  store i64 %264, ptr %276, align 8, !tbaa !93
  br label %277

277:                                              ; preds = %263
  %278 = load i32, ptr %6, align 4, !tbaa !40
  %279 = add nsw i32 %278, 1
  store i32 %279, ptr %6, align 4, !tbaa !40
  br label %222, !llvm.loop !201

280:                                              ; preds = %222
  br label %281

281:                                              ; preds = %280
  %282 = load i32, ptr %5, align 4, !tbaa !40
  %283 = add nsw i32 %282, 1
  store i32 %283, ptr %5, align 4, !tbaa !40
  br label %211, !llvm.loop !202

284:                                              ; preds = %211
  %285 = load i32, ptr %9, align 4, !tbaa !40
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %365

287:                                              ; preds = %284
  %288 = load ptr, ptr @img, align 8, !tbaa !13
  %289 = getelementptr inbounds nuw %struct.ImageParameters, ptr %288, i32 0, i32 38
  %290 = load i32, ptr %289, align 4, !tbaa !68
  store i32 %290, ptr %5, align 4, !tbaa !40
  br label %291

291:                                              ; preds = %361, %287
  %292 = load i32, ptr %5, align 4, !tbaa !40
  %293 = load ptr, ptr @img, align 8, !tbaa !13
  %294 = getelementptr inbounds nuw %struct.ImageParameters, ptr %293, i32 0, i32 38
  %295 = load i32, ptr %294, align 4, !tbaa !68
  %296 = add nsw i32 %295, 4
  %297 = icmp slt i32 %292, %296
  br i1 %297, label %298, label %364

298:                                              ; preds = %291
  %299 = load ptr, ptr @img, align 8, !tbaa !13
  %300 = getelementptr inbounds nuw %struct.ImageParameters, ptr %299, i32 0, i32 37
  %301 = load i32, ptr %300, align 8, !tbaa !69
  store i32 %301, ptr %6, align 4, !tbaa !40
  br label %302

302:                                              ; preds = %357, %298
  %303 = load i32, ptr %6, align 4, !tbaa !40
  %304 = load ptr, ptr @img, align 8, !tbaa !13
  %305 = getelementptr inbounds nuw %struct.ImageParameters, ptr %304, i32 0, i32 37
  %306 = load i32, ptr %305, align 8, !tbaa !69
  %307 = add nsw i32 %306, 4
  %308 = icmp slt i32 %303, %307
  br i1 %308, label %309, label %360

309:                                              ; preds = %302
  %310 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %311 = getelementptr inbounds nuw %struct.storable_picture, ptr %310, i32 0, i32 35
  %312 = load ptr, ptr %311, align 8, !tbaa !178
  %313 = getelementptr inbounds ptr, ptr %312, i64 1
  %314 = load ptr, ptr %313, align 8, !tbaa !43
  %315 = load i32, ptr %5, align 4, !tbaa !40
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds ptr, ptr %314, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !44
  %319 = load i32, ptr %6, align 4, !tbaa !40
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, ptr %318, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !45
  %323 = sext i8 %322 to i32
  %324 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  store i32 %323, ptr %324, align 4, !tbaa !40
  %325 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %326 = load i32, ptr %325, align 4, !tbaa !40
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %342

328:                                              ; preds = %309
  %329 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %330 = getelementptr inbounds nuw %struct.storable_picture, ptr %329, i32 0, i32 6
  %331 = load ptr, ptr %2, align 8, !tbaa !153
  %332 = getelementptr inbounds nuw %struct.macroblock, ptr %331, i32 0, i32 21
  %333 = load i32, ptr %332, align 8, !tbaa !187
  %334 = add nsw i32 1, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [6 x [33 x i64]], ptr %330, i64 0, i64 %335
  %337 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %338 = load i32, ptr %337, align 4, !tbaa !40
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [33 x i64], ptr %336, i64 0, i64 %339
  %341 = load i64, ptr %340, align 8, !tbaa !93
  br label %343

342:                                              ; preds = %309
  br label %343

343:                                              ; preds = %342, %328
  %344 = phi i64 [ %341, %328 ], [ -1, %342 ]
  %345 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %346 = getelementptr inbounds nuw %struct.storable_picture, ptr %345, i32 0, i32 36
  %347 = load ptr, ptr %346, align 8, !tbaa !188
  %348 = getelementptr inbounds ptr, ptr %347, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !189
  %350 = load i32, ptr %5, align 4, !tbaa !40
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %349, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !151
  %354 = load i32, ptr %6, align 4, !tbaa !40
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, ptr %353, i64 %355
  store i64 %344, ptr %356, align 8, !tbaa !93
  br label %357

357:                                              ; preds = %343
  %358 = load i32, ptr %6, align 4, !tbaa !40
  %359 = add nsw i32 %358, 1
  store i32 %359, ptr %6, align 4, !tbaa !40
  br label %302, !llvm.loop !203

360:                                              ; preds = %302
  br label %361

361:                                              ; preds = %360
  %362 = load i32, ptr %5, align 4, !tbaa !40
  %363 = add nsw i32 %362, 1
  store i32 %363, ptr %5, align 4, !tbaa !40
  br label %291, !llvm.loop !204

364:                                              ; preds = %291
  br label %365

365:                                              ; preds = %364, %284
  call void @StoreMV8x8(i32 noundef signext 1)
  call void @RestoreMV8x8(i32 noundef signext 0)
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %366

366:                                              ; preds = %414, %365
  %367 = load i32, ptr %3, align 4, !tbaa !40
  %368 = icmp slt i32 %367, 4
  br i1 %368, label %369, label %417

369:                                              ; preds = %366
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %370

370:                                              ; preds = %410, %369
  %371 = load i32, ptr %4, align 4, !tbaa !40
  %372 = icmp slt i32 %371, 4
  br i1 %372, label %373, label %413

373:                                              ; preds = %370
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %374

374:                                              ; preds = %406, %373
  %375 = load i32, ptr %5, align 4, !tbaa !40
  %376 = icmp slt i32 %375, 2
  br i1 %376, label %377, label %409

377:                                              ; preds = %374
  %378 = load ptr, ptr @img, align 8, !tbaa !13
  %379 = getelementptr inbounds nuw %struct.ImageParameters, ptr %378, i32 0, i32 53
  %380 = load ptr, ptr %379, align 8, !tbaa !137
  %381 = load i32, ptr %3, align 4, !tbaa !40
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %380, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !3
  %385 = load i32, ptr %4, align 4, !tbaa !40
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds ptr, ptr %384, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !21
  %389 = load i32, ptr %5, align 4, !tbaa !40
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds ptr, ptr %388, i64 %390
  %392 = load ptr, ptr %391, align 8, !tbaa !92
  %393 = load ptr, ptr @cofAC_8x8ts, align 8, !tbaa !10
  %394 = load i32, ptr %3, align 4, !tbaa !40
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds ptr, ptr %393, i64 %395
  %397 = load ptr, ptr %396, align 8, !tbaa !3
  %398 = load i32, ptr %4, align 4, !tbaa !40
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds ptr, ptr %397, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !21
  %402 = load i32, ptr %5, align 4, !tbaa !40
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %392, ptr align 4 %405, i64 260, i1 false)
  br label %406

406:                                              ; preds = %377
  %407 = load i32, ptr %5, align 4, !tbaa !40
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr %5, align 4, !tbaa !40
  br label %374, !llvm.loop !205

409:                                              ; preds = %374
  br label %410

410:                                              ; preds = %409
  %411 = load i32, ptr %4, align 4, !tbaa !40
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %4, align 4, !tbaa !40
  br label %370, !llvm.loop !206

413:                                              ; preds = %370
  br label %414

414:                                              ; preds = %413
  %415 = load i32, ptr %3, align 4, !tbaa !40
  %416 = add nsw i32 %415, 1
  store i32 %416, ptr %3, align 4, !tbaa !40
  br label %366, !llvm.loop !207

417:                                              ; preds = %366
  %418 = load i32, ptr @cnt_nonz8_8x8ts, align 4, !tbaa !40
  %419 = icmp sle i32 %418, 5
  br i1 %419, label %420, label %498

420:                                              ; preds = %417
  %421 = load ptr, ptr @img, align 8, !tbaa !13
  %422 = getelementptr inbounds nuw %struct.ImageParameters, ptr %421, i32 0, i32 11
  %423 = load i32, ptr %422, align 4, !tbaa !208
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %430, label %425

425:                                              ; preds = %420
  %426 = load ptr, ptr @img, align 8, !tbaa !13
  %427 = getelementptr inbounds nuw %struct.ImageParameters, ptr %426, i32 0, i32 161
  %428 = load i32, ptr %427, align 4, !tbaa !209
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %498

430:                                              ; preds = %425, %420
  %431 = load ptr, ptr @img, align 8, !tbaa !13
  %432 = getelementptr inbounds nuw %struct.ImageParameters, ptr %431, i32 0, i32 5
  %433 = load i32, ptr %432, align 4, !tbaa !39
  %434 = icmp ne i32 %433, 3
  br i1 %434, label %435, label %498

435:                                              ; preds = %430
  %436 = load ptr, ptr %2, align 8, !tbaa !153
  %437 = getelementptr inbounds nuw %struct.macroblock, ptr %436, i32 0, i32 12
  store i32 0, ptr %437, align 4, !tbaa !195
  %438 = load ptr, ptr %2, align 8, !tbaa !153
  %439 = getelementptr inbounds nuw %struct.macroblock, ptr %438, i32 0, i32 13
  store i64 0, ptr %439, align 8, !tbaa !210
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %440

440:                                              ; preds = %494, %435
  %441 = load i32, ptr %5, align 4, !tbaa !40
  %442 = icmp slt i32 %441, 16
  br i1 %442, label %443, label %497

443:                                              ; preds = %440
  %444 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %445 = getelementptr inbounds nuw %struct.storable_picture, ptr %444, i32 0, i32 29
  %446 = load ptr, ptr %445, align 8, !tbaa !100
  %447 = load ptr, ptr @img, align 8, !tbaa !13
  %448 = getelementptr inbounds nuw %struct.ImageParameters, ptr %447, i32 0, i32 40
  %449 = load i32, ptr %448, align 4, !tbaa !96
  %450 = load i32, ptr %5, align 4, !tbaa !40
  %451 = add nsw i32 %449, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds ptr, ptr %446, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !65
  %455 = load ptr, ptr @img, align 8, !tbaa !13
  %456 = getelementptr inbounds nuw %struct.ImageParameters, ptr %455, i32 0, i32 39
  %457 = load i32, ptr %456, align 8, !tbaa !95
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i16, ptr %454, i64 %458
  %460 = load i32, ptr %5, align 4, !tbaa !40
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 10), i64 0, i64 %461
  %463 = getelementptr inbounds [16 x i16], ptr %462, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %459, ptr align 4 %463, i64 32, i1 false)
  %464 = load ptr, ptr @img, align 8, !tbaa !13
  %465 = getelementptr inbounds nuw %struct.ImageParameters, ptr %464, i32 0, i32 5
  %466 = load i32, ptr %465, align 4, !tbaa !39
  %467 = icmp eq i32 %466, 3
  br i1 %467, label %468, label %493

468:                                              ; preds = %443
  %469 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %493, label %471

471:                                              ; preds = %468
  %472 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %493, label %474

474:                                              ; preds = %471
  %475 = load ptr, ptr @lrec, align 8, !tbaa !21
  %476 = load ptr, ptr @img, align 8, !tbaa !13
  %477 = getelementptr inbounds nuw %struct.ImageParameters, ptr %476, i32 0, i32 40
  %478 = load i32, ptr %477, align 4, !tbaa !96
  %479 = load i32, ptr %5, align 4, !tbaa !40
  %480 = add nsw i32 %478, %479
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds ptr, ptr %475, i64 %481
  %483 = load ptr, ptr %482, align 8, !tbaa !92
  %484 = load ptr, ptr @img, align 8, !tbaa !13
  %485 = getelementptr inbounds nuw %struct.ImageParameters, ptr %484, i32 0, i32 39
  %486 = load i32, ptr %485, align 8, !tbaa !95
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32, ptr %483, i64 %487
  %489 = load i32, ptr %5, align 4, !tbaa !40
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 11), i64 0, i64 %490
  %492 = getelementptr inbounds [16 x i32], ptr %491, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %488, ptr align 4 %492, i64 64, i1 false)
  br label %493

493:                                              ; preds = %474, %471, %468, %443
  br label %494

494:                                              ; preds = %493
  %495 = load i32, ptr %5, align 4, !tbaa !40
  %496 = add nsw i32 %495, 1
  store i32 %496, ptr %5, align 4, !tbaa !40
  br label %440, !llvm.loop !211

497:                                              ; preds = %440
  br label %563

498:                                              ; preds = %430, %425, %417
  %499 = load i32, ptr @cbp8_8x8ts, align 4, !tbaa !40
  %500 = load ptr, ptr %2, align 8, !tbaa !153
  %501 = getelementptr inbounds nuw %struct.macroblock, ptr %500, i32 0, i32 12
  store i32 %499, ptr %501, align 4, !tbaa !195
  %502 = load i64, ptr @cbp_blk8_8x8ts, align 8, !tbaa !93
  %503 = load ptr, ptr %2, align 8, !tbaa !153
  %504 = getelementptr inbounds nuw %struct.macroblock, ptr %503, i32 0, i32 13
  store i64 %502, ptr %504, align 8, !tbaa !210
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %505

505:                                              ; preds = %559, %498
  %506 = load i32, ptr %5, align 4, !tbaa !40
  %507 = icmp slt i32 %506, 16
  br i1 %507, label %508, label %562

508:                                              ; preds = %505
  %509 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %510 = getelementptr inbounds nuw %struct.storable_picture, ptr %509, i32 0, i32 29
  %511 = load ptr, ptr %510, align 8, !tbaa !100
  %512 = load ptr, ptr @img, align 8, !tbaa !13
  %513 = getelementptr inbounds nuw %struct.ImageParameters, ptr %512, i32 0, i32 40
  %514 = load i32, ptr %513, align 4, !tbaa !96
  %515 = load i32, ptr %5, align 4, !tbaa !40
  %516 = add nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds ptr, ptr %511, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !65
  %520 = load ptr, ptr @img, align 8, !tbaa !13
  %521 = getelementptr inbounds nuw %struct.ImageParameters, ptr %520, i32 0, i32 39
  %522 = load i32, ptr %521, align 8, !tbaa !95
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i16, ptr %519, i64 %523
  %525 = load i32, ptr %5, align 4, !tbaa !40
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 9), i64 0, i64 %526
  %528 = getelementptr inbounds [16 x i16], ptr %527, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %524, ptr align 4 %528, i64 32, i1 false)
  %529 = load ptr, ptr @img, align 8, !tbaa !13
  %530 = getelementptr inbounds nuw %struct.ImageParameters, ptr %529, i32 0, i32 5
  %531 = load i32, ptr %530, align 4, !tbaa !39
  %532 = icmp eq i32 %531, 3
  br i1 %532, label %533, label %558

533:                                              ; preds = %508
  %534 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %558, label %536

536:                                              ; preds = %533
  %537 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %558, label %539

539:                                              ; preds = %536
  %540 = load ptr, ptr @lrec, align 8, !tbaa !21
  %541 = load ptr, ptr @img, align 8, !tbaa !13
  %542 = getelementptr inbounds nuw %struct.ImageParameters, ptr %541, i32 0, i32 40
  %543 = load i32, ptr %542, align 4, !tbaa !96
  %544 = load i32, ptr %5, align 4, !tbaa !40
  %545 = add nsw i32 %543, %544
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds ptr, ptr %540, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !92
  %549 = load ptr, ptr @img, align 8, !tbaa !13
  %550 = getelementptr inbounds nuw %struct.ImageParameters, ptr %549, i32 0, i32 39
  %551 = load i32, ptr %550, align 8, !tbaa !95
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, ptr %548, i64 %552
  %554 = load i32, ptr %5, align 4, !tbaa !40
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 11), i64 0, i64 %555
  %557 = getelementptr inbounds [16 x i32], ptr %556, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %553, ptr align 4 %557, i64 64, i1 false)
  br label %558

558:                                              ; preds = %539, %536, %533, %508
  br label %559

559:                                              ; preds = %558
  %560 = load i32, ptr %5, align 4, !tbaa !40
  %561 = add nsw i32 %560, 1
  store i32 %561, ptr %5, align 4, !tbaa !40
  br label %505, !llvm.loop !212

562:                                              ; preds = %505
  br label %563

563:                                              ; preds = %562, %497
  br label %768

564:                                              ; preds = %1
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %565

565:                                              ; preds = %617, %564
  %566 = load i32, ptr %3, align 4, !tbaa !40
  %567 = load ptr, ptr @img, align 8, !tbaa !13
  %568 = getelementptr inbounds nuw %struct.ImageParameters, ptr %567, i32 0, i32 158
  %569 = load i32, ptr %568, align 8, !tbaa !213
  %570 = add nsw i32 4, %569
  %571 = icmp slt i32 %566, %570
  br i1 %571, label %572, label %620

572:                                              ; preds = %565
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %573

573:                                              ; preds = %613, %572
  %574 = load i32, ptr %4, align 4, !tbaa !40
  %575 = icmp slt i32 %574, 4
  br i1 %575, label %576, label %616

576:                                              ; preds = %573
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %577

577:                                              ; preds = %609, %576
  %578 = load i32, ptr %5, align 4, !tbaa !40
  %579 = icmp slt i32 %578, 2
  br i1 %579, label %580, label %612

580:                                              ; preds = %577
  %581 = load ptr, ptr @img, align 8, !tbaa !13
  %582 = getelementptr inbounds nuw %struct.ImageParameters, ptr %581, i32 0, i32 53
  %583 = load ptr, ptr %582, align 8, !tbaa !137
  %584 = load i32, ptr %3, align 4, !tbaa !40
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds ptr, ptr %583, i64 %585
  %587 = load ptr, ptr %586, align 8, !tbaa !3
  %588 = load i32, ptr %4, align 4, !tbaa !40
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds ptr, ptr %587, i64 %589
  %591 = load ptr, ptr %590, align 8, !tbaa !21
  %592 = load i32, ptr %5, align 4, !tbaa !40
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds ptr, ptr %591, i64 %593
  %595 = load ptr, ptr %594, align 8, !tbaa !92
  %596 = load ptr, ptr @cofAC8x8, align 8, !tbaa !10
  %597 = load i32, ptr %3, align 4, !tbaa !40
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds ptr, ptr %596, i64 %598
  %600 = load ptr, ptr %599, align 8, !tbaa !3
  %601 = load i32, ptr %4, align 4, !tbaa !40
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds ptr, ptr %600, i64 %602
  %604 = load ptr, ptr %603, align 8, !tbaa !21
  %605 = load i32, ptr %5, align 4, !tbaa !40
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %604, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %595, ptr align 4 %608, i64 260, i1 false)
  br label %609

609:                                              ; preds = %580
  %610 = load i32, ptr %5, align 4, !tbaa !40
  %611 = add nsw i32 %610, 1
  store i32 %611, ptr %5, align 4, !tbaa !40
  br label %577, !llvm.loop !214

612:                                              ; preds = %577
  br label %613

613:                                              ; preds = %612
  %614 = load i32, ptr %4, align 4, !tbaa !40
  %615 = add nsw i32 %614, 1
  store i32 %615, ptr %4, align 4, !tbaa !40
  br label %573, !llvm.loop !215

616:                                              ; preds = %573
  br label %617

617:                                              ; preds = %616
  %618 = load i32, ptr %3, align 4, !tbaa !40
  %619 = add nsw i32 %618, 1
  store i32 %619, ptr %3, align 4, !tbaa !40
  br label %565, !llvm.loop !216

620:                                              ; preds = %565
  %621 = load i32, ptr @cnt_nonz_8x8, align 4, !tbaa !40
  %622 = icmp sle i32 %621, 5
  br i1 %622, label %623, label %701

623:                                              ; preds = %620
  %624 = load ptr, ptr @img, align 8, !tbaa !13
  %625 = getelementptr inbounds nuw %struct.ImageParameters, ptr %624, i32 0, i32 5
  %626 = load i32, ptr %625, align 4, !tbaa !39
  %627 = icmp ne i32 %626, 3
  br i1 %627, label %628, label %701

628:                                              ; preds = %623
  %629 = load ptr, ptr @img, align 8, !tbaa !13
  %630 = getelementptr inbounds nuw %struct.ImageParameters, ptr %629, i32 0, i32 11
  %631 = load i32, ptr %630, align 4, !tbaa !208
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %638, label %633

633:                                              ; preds = %628
  %634 = load ptr, ptr @img, align 8, !tbaa !13
  %635 = getelementptr inbounds nuw %struct.ImageParameters, ptr %634, i32 0, i32 161
  %636 = load i32, ptr %635, align 4, !tbaa !209
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %701

638:                                              ; preds = %633, %628
  %639 = load ptr, ptr %2, align 8, !tbaa !153
  %640 = getelementptr inbounds nuw %struct.macroblock, ptr %639, i32 0, i32 12
  store i32 0, ptr %640, align 4, !tbaa !195
  %641 = load ptr, ptr %2, align 8, !tbaa !153
  %642 = getelementptr inbounds nuw %struct.macroblock, ptr %641, i32 0, i32 13
  store i64 0, ptr %642, align 8, !tbaa !210
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %643

643:                                              ; preds = %697, %638
  %644 = load i32, ptr %5, align 4, !tbaa !40
  %645 = icmp slt i32 %644, 16
  br i1 %645, label %646, label %700

646:                                              ; preds = %643
  %647 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %648 = getelementptr inbounds nuw %struct.storable_picture, ptr %647, i32 0, i32 29
  %649 = load ptr, ptr %648, align 8, !tbaa !100
  %650 = load ptr, ptr @img, align 8, !tbaa !13
  %651 = getelementptr inbounds nuw %struct.ImageParameters, ptr %650, i32 0, i32 40
  %652 = load i32, ptr %651, align 4, !tbaa !96
  %653 = load i32, ptr %5, align 4, !tbaa !40
  %654 = add nsw i32 %652, %653
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds ptr, ptr %649, i64 %655
  %657 = load ptr, ptr %656, align 8, !tbaa !65
  %658 = load ptr, ptr @img, align 8, !tbaa !13
  %659 = getelementptr inbounds nuw %struct.ImageParameters, ptr %658, i32 0, i32 39
  %660 = load i32, ptr %659, align 8, !tbaa !95
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds i16, ptr %657, i64 %661
  %663 = load i32, ptr %5, align 4, !tbaa !40
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr4x4, i32 0, i32 10), i64 0, i64 %664
  %666 = getelementptr inbounds [16 x i16], ptr %665, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %662, ptr align 4 %666, i64 32, i1 false)
  %667 = load ptr, ptr @img, align 8, !tbaa !13
  %668 = getelementptr inbounds nuw %struct.ImageParameters, ptr %667, i32 0, i32 5
  %669 = load i32, ptr %668, align 4, !tbaa !39
  %670 = icmp eq i32 %669, 3
  br i1 %670, label %671, label %696

671:                                              ; preds = %646
  %672 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %696, label %674

674:                                              ; preds = %671
  %675 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %696, label %677

677:                                              ; preds = %674
  %678 = load ptr, ptr @lrec, align 8, !tbaa !21
  %679 = load ptr, ptr @img, align 8, !tbaa !13
  %680 = getelementptr inbounds nuw %struct.ImageParameters, ptr %679, i32 0, i32 40
  %681 = load i32, ptr %680, align 4, !tbaa !96
  %682 = load i32, ptr %5, align 4, !tbaa !40
  %683 = add nsw i32 %681, %682
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds ptr, ptr %678, i64 %684
  %686 = load ptr, ptr %685, align 8, !tbaa !92
  %687 = load ptr, ptr @img, align 8, !tbaa !13
  %688 = getelementptr inbounds nuw %struct.ImageParameters, ptr %687, i32 0, i32 39
  %689 = load i32, ptr %688, align 8, !tbaa !95
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, ptr %686, i64 %690
  %692 = load i32, ptr %5, align 4, !tbaa !40
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr4x4, i32 0, i32 11), i64 0, i64 %693
  %695 = getelementptr inbounds [16 x i32], ptr %694, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %691, ptr align 4 %695, i64 64, i1 false)
  br label %696

696:                                              ; preds = %677, %674, %671, %646
  br label %697

697:                                              ; preds = %696
  %698 = load i32, ptr %5, align 4, !tbaa !40
  %699 = add nsw i32 %698, 1
  store i32 %699, ptr %5, align 4, !tbaa !40
  br label %643, !llvm.loop !217

700:                                              ; preds = %643
  br label %767

701:                                              ; preds = %633, %623, %620
  %702 = load i32, ptr @cbp8x8, align 4, !tbaa !40
  %703 = load ptr, ptr %2, align 8, !tbaa !153
  %704 = getelementptr inbounds nuw %struct.macroblock, ptr %703, i32 0, i32 12
  store i32 %702, ptr %704, align 4, !tbaa !195
  %705 = load i32, ptr @cbp_blk8x8, align 4, !tbaa !40
  %706 = sext i32 %705 to i64
  %707 = load ptr, ptr %2, align 8, !tbaa !153
  %708 = getelementptr inbounds nuw %struct.macroblock, ptr %707, i32 0, i32 13
  store i64 %706, ptr %708, align 8, !tbaa !210
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %709

709:                                              ; preds = %763, %701
  %710 = load i32, ptr %5, align 4, !tbaa !40
  %711 = icmp slt i32 %710, 16
  br i1 %711, label %712, label %766

712:                                              ; preds = %709
  %713 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %714 = getelementptr inbounds nuw %struct.storable_picture, ptr %713, i32 0, i32 29
  %715 = load ptr, ptr %714, align 8, !tbaa !100
  %716 = load ptr, ptr @img, align 8, !tbaa !13
  %717 = getelementptr inbounds nuw %struct.ImageParameters, ptr %716, i32 0, i32 40
  %718 = load i32, ptr %717, align 4, !tbaa !96
  %719 = load i32, ptr %5, align 4, !tbaa !40
  %720 = add nsw i32 %718, %719
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds ptr, ptr %715, i64 %721
  %723 = load ptr, ptr %722, align 8, !tbaa !65
  %724 = load ptr, ptr @img, align 8, !tbaa !13
  %725 = getelementptr inbounds nuw %struct.ImageParameters, ptr %724, i32 0, i32 39
  %726 = load i32, ptr %725, align 8, !tbaa !95
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds i16, ptr %723, i64 %727
  %729 = load i32, ptr %5, align 4, !tbaa !40
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr4x4, i32 0, i32 9), i64 0, i64 %730
  %732 = getelementptr inbounds [16 x i16], ptr %731, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %728, ptr align 4 %732, i64 32, i1 false)
  %733 = load ptr, ptr @img, align 8, !tbaa !13
  %734 = getelementptr inbounds nuw %struct.ImageParameters, ptr %733, i32 0, i32 5
  %735 = load i32, ptr %734, align 4, !tbaa !39
  %736 = icmp eq i32 %735, 3
  br i1 %736, label %737, label %762

737:                                              ; preds = %712
  %738 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %762, label %740

740:                                              ; preds = %737
  %741 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %762, label %743

743:                                              ; preds = %740
  %744 = load ptr, ptr @lrec, align 8, !tbaa !21
  %745 = load ptr, ptr @img, align 8, !tbaa !13
  %746 = getelementptr inbounds nuw %struct.ImageParameters, ptr %745, i32 0, i32 40
  %747 = load i32, ptr %746, align 4, !tbaa !96
  %748 = load i32, ptr %5, align 4, !tbaa !40
  %749 = add nsw i32 %747, %748
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds ptr, ptr %744, i64 %750
  %752 = load ptr, ptr %751, align 8, !tbaa !92
  %753 = load ptr, ptr @img, align 8, !tbaa !13
  %754 = getelementptr inbounds nuw %struct.ImageParameters, ptr %753, i32 0, i32 39
  %755 = load i32, ptr %754, align 8, !tbaa !95
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, ptr %752, i64 %756
  %758 = load i32, ptr %5, align 4, !tbaa !40
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [16 x [16 x i32]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr4x4, i32 0, i32 11), i64 0, i64 %759
  %761 = getelementptr inbounds [16 x i32], ptr %760, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %757, ptr align 4 %761, i64 64, i1 false)
  br label %762

762:                                              ; preds = %743, %740, %737, %712
  br label %763

763:                                              ; preds = %762
  %764 = load i32, ptr %5, align 4, !tbaa !40
  %765 = add nsw i32 %764, 1
  store i32 %765, ptr %5, align 4, !tbaa !40
  br label %709, !llvm.loop !218

766:                                              ; preds = %709
  br label %767

767:                                              ; preds = %766, %700
  br label %768

768:                                              ; preds = %767, %563
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @StoreMV8x8(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  %5 = load ptr, ptr @img, align 8, !tbaa !13
  %6 = getelementptr inbounds nuw %struct.ImageParameters, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !39
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  store i32 %9, ptr %4, align 4, !tbaa !40
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %10

10:                                               ; preds = %37, %1
  %11 = load i32, ptr %3, align 4, !tbaa !40
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !tbaa !40
  %15 = load i32, ptr %3, align 4, !tbaa !40
  %16 = load i32, ptr %3, align 4, !tbaa !40
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i16], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 5), i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !67
  %20 = sext i16 %19 to i32
  %21 = load i32, ptr %3, align 4, !tbaa !40
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 7), i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !45
  %25 = sext i8 %24 to i32
  %26 = load i32, ptr %3, align 4, !tbaa !40
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 8), i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !45
  %30 = sext i8 %29 to i32
  %31 = load i32, ptr %3, align 4, !tbaa !40
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [4 x i8], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 6), i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !45
  %35 = sext i8 %34 to i32
  %36 = load i32, ptr %4, align 4, !tbaa !40
  call void @StoreMVBlock8x8(i32 noundef signext %14, i32 noundef signext %15, i32 noundef signext %20, i32 noundef signext %25, i32 noundef signext %30, i32 noundef signext %35, i32 noundef signext %36)
  br label %37

37:                                               ; preds = %13
  %38 = load i32, ptr %3, align 4, !tbaa !40
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %3, align 4, !tbaa !40
  br label %10, !llvm.loop !219

40:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @RestoreMV8x8(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.RD_8x8DATA, align 4
  store i32 %0, ptr %2, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  %6 = load ptr, ptr @img, align 8, !tbaa !13
  %7 = getelementptr inbounds nuw %struct.ImageParameters, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  store i32 %10, ptr %4, align 4, !tbaa !40
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %11

11:                                               ; preds = %18, %1
  %12 = load i32, ptr %3, align 4, !tbaa !40
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, ptr %2, align 4, !tbaa !40
  %16 = load i32, ptr %3, align 4, !tbaa !40
  %17 = load i32, ptr %4, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8216, ptr %5) #8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 @tr8x8, i64 8216, i1 false), !tbaa.struct !220
  call void @RestoreMVBlock8x8(i32 noundef signext %15, i32 noundef signext %16, ptr noundef %5, i32 noundef signext %17)
  call void @llvm.lifetime.end.p0(i64 8216, ptr %5) #8
  br label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %3, align 4, !tbaa !40
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !40
  br label %11, !llvm.loop !221

21:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @SetMotionVectorsMB(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !153
  store i32 %1, ptr %4, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #8
  %20 = load ptr, ptr @img, align 8, !tbaa !13
  %21 = getelementptr inbounds nuw %struct.ImageParameters, ptr %20, i32 0, i32 80
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  store ptr %22, ptr %15, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #8
  %23 = load ptr, ptr @img, align 8, !tbaa !13
  %24 = getelementptr inbounds nuw %struct.ImageParameters, ptr %23, i32 0, i32 79
  %25 = load ptr, ptr %24, align 8, !tbaa !223
  store ptr %25, ptr %16, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  %26 = load i32, ptr %4, align 4, !tbaa !40
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %197, label %28

28:                                               ; preds = %2
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %29

29:                                               ; preds = %193, %28
  %30 = load i32, ptr %6, align 4, !tbaa !40
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %196

32:                                               ; preds = %29
  %33 = load i32, ptr %6, align 4, !tbaa !40
  %34 = and i32 %33, 1
  store i32 %34, ptr %19, align 4, !tbaa !40
  %35 = load i32, ptr %6, align 4, !tbaa !40
  %36 = ashr i32 %35, 1
  store i32 %36, ptr %18, align 4, !tbaa !40
  %37 = load ptr, ptr @img, align 8, !tbaa !13
  %38 = getelementptr inbounds nuw %struct.ImageParameters, ptr %37, i32 0, i32 38
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = load i32, ptr %6, align 4, !tbaa !40
  %41 = add nsw i32 %39, %40
  store i32 %41, ptr %13, align 4, !tbaa !40
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %42

42:                                               ; preds = %189, %32
  %43 = load i32, ptr %5, align 4, !tbaa !40
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %192

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8, !tbaa !153
  %47 = getelementptr inbounds nuw %struct.macroblock, ptr %46, i32 0, i32 14
  %48 = load i32, ptr %18, align 4, !tbaa !40
  %49 = mul nsw i32 2, %48
  %50 = load i32, ptr %5, align 4, !tbaa !40
  %51 = ashr i32 %50, 1
  %52 = add nsw i32 %49, %51
  store i32 %52, ptr %7, align 4, !tbaa !40
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], ptr %47, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !40
  store i32 %55, ptr %10, align 4, !tbaa !40
  %56 = load i32, ptr %19, align 4, !tbaa !40
  %57 = mul nsw i32 2, %56
  %58 = load i32, ptr %5, align 4, !tbaa !40
  %59 = and i32 %58, 1
  %60 = add nsw i32 %57, %59
  store i32 %60, ptr %8, align 4, !tbaa !40
  %61 = load ptr, ptr @img, align 8, !tbaa !13
  %62 = getelementptr inbounds nuw %struct.ImageParameters, ptr %61, i32 0, i32 37
  %63 = load i32, ptr %62, align 8, !tbaa !69
  %64 = load i32, ptr %5, align 4, !tbaa !40
  %65 = add nsw i32 %63, %64
  store i32 %65, ptr %14, align 4, !tbaa !40
  %66 = load ptr, ptr %3, align 8, !tbaa !153
  %67 = getelementptr inbounds nuw %struct.macroblock, ptr %66, i32 0, i32 15
  %68 = load i32, ptr %7, align 4, !tbaa !40
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], ptr %67, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !40
  store i32 %71, ptr %11, align 4, !tbaa !40
  %72 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %73 = getelementptr inbounds nuw %struct.storable_picture, ptr %72, i32 0, i32 35
  %74 = load ptr, ptr %73, align 8, !tbaa !178
  %75 = getelementptr inbounds ptr, ptr %74, i64 0
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = load i32, ptr %13, align 4, !tbaa !40
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !44
  %81 = load i32, ptr %14, align 4, !tbaa !40
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !45
  %85 = sext i8 %84 to i32
  store i32 %85, ptr %12, align 4, !tbaa !40
  %86 = load i32, ptr %11, align 4, !tbaa !40
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %159

88:                                               ; preds = %45
  %89 = load ptr, ptr %15, align 8, !tbaa !222
  %90 = load i32, ptr %6, align 4, !tbaa !40
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !57
  %94 = load i32, ptr %5, align 4, !tbaa !40
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !59
  %98 = getelementptr inbounds ptr, ptr %97, i64 0
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  %100 = load i32, ptr %12, align 4, !tbaa !40
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !63
  %104 = load i32, ptr %10, align 4, !tbaa !40
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %103, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !65
  %108 = getelementptr inbounds i16, ptr %107, i64 0
  %109 = load i16, ptr %108, align 2, !tbaa !67
  %110 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %111 = getelementptr inbounds nuw %struct.storable_picture, ptr %110, i32 0, i32 38
  %112 = load ptr, ptr %111, align 8, !tbaa !224
  %113 = getelementptr inbounds ptr, ptr %112, i64 0
  %114 = load ptr, ptr %113, align 8, !tbaa !61
  %115 = load i32, ptr %13, align 4, !tbaa !40
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds ptr, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !63
  %119 = load i32, ptr %14, align 4, !tbaa !40
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %118, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !65
  %123 = getelementptr inbounds i16, ptr %122, i64 0
  store i16 %109, ptr %123, align 2, !tbaa !67
  %124 = load ptr, ptr %15, align 8, !tbaa !222
  %125 = load i32, ptr %6, align 4, !tbaa !40
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !57
  %129 = load i32, ptr %5, align 4, !tbaa !40
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !59
  %133 = getelementptr inbounds ptr, ptr %132, i64 0
  %134 = load ptr, ptr %133, align 8, !tbaa !61
  %135 = load i32, ptr %12, align 4, !tbaa !40
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %134, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !63
  %139 = load i32, ptr %10, align 4, !tbaa !40
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !65
  %143 = getelementptr inbounds i16, ptr %142, i64 1
  %144 = load i16, ptr %143, align 2, !tbaa !67
  %145 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %146 = getelementptr inbounds nuw %struct.storable_picture, ptr %145, i32 0, i32 38
  %147 = load ptr, ptr %146, align 8, !tbaa !224
  %148 = getelementptr inbounds ptr, ptr %147, i64 0
  %149 = load ptr, ptr %148, align 8, !tbaa !61
  %150 = load i32, ptr %13, align 4, !tbaa !40
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds ptr, ptr %149, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !63
  %154 = load i32, ptr %14, align 4, !tbaa !40
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !65
  %158 = getelementptr inbounds i16, ptr %157, i64 1
  store i16 %144, ptr %158, align 2, !tbaa !67
  br label %188

159:                                              ; preds = %45
  %160 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %161 = getelementptr inbounds nuw %struct.storable_picture, ptr %160, i32 0, i32 38
  %162 = load ptr, ptr %161, align 8, !tbaa !224
  %163 = getelementptr inbounds ptr, ptr %162, i64 0
  %164 = load ptr, ptr %163, align 8, !tbaa !61
  %165 = load i32, ptr %13, align 4, !tbaa !40
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %164, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !63
  %169 = load i32, ptr %14, align 4, !tbaa !40
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds ptr, ptr %168, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !65
  %173 = getelementptr inbounds i16, ptr %172, i64 0
  store i16 0, ptr %173, align 2, !tbaa !67
  %174 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %175 = getelementptr inbounds nuw %struct.storable_picture, ptr %174, i32 0, i32 38
  %176 = load ptr, ptr %175, align 8, !tbaa !224
  %177 = getelementptr inbounds ptr, ptr %176, i64 0
  %178 = load ptr, ptr %177, align 8, !tbaa !61
  %179 = load i32, ptr %13, align 4, !tbaa !40
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %178, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !63
  %183 = load i32, ptr %14, align 4, !tbaa !40
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !65
  %187 = getelementptr inbounds i16, ptr %186, i64 1
  store i16 0, ptr %187, align 2, !tbaa !67
  br label %188

188:                                              ; preds = %159, %88
  br label %189

189:                                              ; preds = %188
  %190 = load i32, ptr %5, align 4, !tbaa !40
  %191 = add nsw i32 %190, 1
  store i32 %191, ptr %5, align 4, !tbaa !40
  br label %42, !llvm.loop !225

192:                                              ; preds = %42
  br label %193

193:                                              ; preds = %192
  %194 = load i32, ptr %6, align 4, !tbaa !40
  %195 = add nsw i32 %194, 1
  store i32 %195, ptr %6, align 4, !tbaa !40
  br label %29, !llvm.loop !226

196:                                              ; preds = %29
  br label %743

197:                                              ; preds = %2
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %198

198:                                              ; preds = %739, %197
  %199 = load i32, ptr %6, align 4, !tbaa !40
  %200 = icmp slt i32 %199, 4
  br i1 %200, label %201, label %742

201:                                              ; preds = %198
  %202 = load i32, ptr %6, align 4, !tbaa !40
  %203 = and i32 %202, 1
  store i32 %203, ptr %19, align 4, !tbaa !40
  %204 = load i32, ptr %6, align 4, !tbaa !40
  %205 = ashr i32 %204, 1
  store i32 %205, ptr %18, align 4, !tbaa !40
  %206 = load ptr, ptr @img, align 8, !tbaa !13
  %207 = getelementptr inbounds nuw %struct.ImageParameters, ptr %206, i32 0, i32 38
  %208 = load i32, ptr %207, align 4, !tbaa !68
  %209 = load i32, ptr %6, align 4, !tbaa !40
  %210 = add nsw i32 %208, %209
  store i32 %210, ptr %13, align 4, !tbaa !40
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %211

211:                                              ; preds = %735, %201
  %212 = load i32, ptr %5, align 4, !tbaa !40
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %738

214:                                              ; preds = %211
  %215 = load ptr, ptr %3, align 8, !tbaa !153
  %216 = getelementptr inbounds nuw %struct.macroblock, ptr %215, i32 0, i32 14
  %217 = load i32, ptr %18, align 4, !tbaa !40
  %218 = mul nsw i32 2, %217
  %219 = load i32, ptr %5, align 4, !tbaa !40
  %220 = ashr i32 %219, 1
  %221 = add nsw i32 %218, %220
  store i32 %221, ptr %7, align 4, !tbaa !40
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [4 x i32], ptr %216, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !40
  store i32 %224, ptr %10, align 4, !tbaa !40
  %225 = load i32, ptr %19, align 4, !tbaa !40
  %226 = mul nsw i32 2, %225
  %227 = load i32, ptr %5, align 4, !tbaa !40
  %228 = and i32 %227, 1
  %229 = add nsw i32 %226, %228
  store i32 %229, ptr %8, align 4, !tbaa !40
  %230 = load ptr, ptr @img, align 8, !tbaa !13
  %231 = getelementptr inbounds nuw %struct.ImageParameters, ptr %230, i32 0, i32 37
  %232 = load i32, ptr %231, align 8, !tbaa !69
  %233 = load i32, ptr %5, align 4, !tbaa !40
  %234 = add nsw i32 %232, %233
  store i32 %234, ptr %14, align 4, !tbaa !40
  %235 = load ptr, ptr %3, align 8, !tbaa !153
  %236 = getelementptr inbounds nuw %struct.macroblock, ptr %235, i32 0, i32 15
  %237 = load i32, ptr %7, align 4, !tbaa !40
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x i32], ptr %236, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !40
  store i32 %240, ptr %11, align 4, !tbaa !40
  %241 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %242 = getelementptr inbounds nuw %struct.storable_picture, ptr %241, i32 0, i32 35
  %243 = load ptr, ptr %242, align 8, !tbaa !178
  %244 = getelementptr inbounds ptr, ptr %243, i64 0
  %245 = load ptr, ptr %244, align 8, !tbaa !43
  %246 = load i32, ptr %13, align 4, !tbaa !40
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %245, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !44
  %250 = load i32, ptr %14, align 4, !tbaa !40
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, ptr %249, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !45
  %254 = sext i8 %253 to i32
  store i32 %254, ptr %12, align 4, !tbaa !40
  %255 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %256 = getelementptr inbounds nuw %struct.storable_picture, ptr %255, i32 0, i32 35
  %257 = load ptr, ptr %256, align 8, !tbaa !178
  %258 = getelementptr inbounds ptr, ptr %257, i64 1
  %259 = load ptr, ptr %258, align 8, !tbaa !43
  %260 = load i32, ptr %13, align 4, !tbaa !40
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds ptr, ptr %259, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !44
  %264 = load i32, ptr %14, align 4, !tbaa !40
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %263, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !45
  %268 = sext i8 %267 to i32
  store i32 %268, ptr %17, align 4, !tbaa !40
  %269 = load ptr, ptr %3, align 8, !tbaa !153
  %270 = getelementptr inbounds nuw %struct.macroblock, ptr %269, i32 0, i32 33
  %271 = load i16, ptr %270, align 8, !tbaa !154
  %272 = sext i16 %271 to i32
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %298

274:                                              ; preds = %214
  %275 = load i32, ptr %11, align 4, !tbaa !40
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %277, label %298

277:                                              ; preds = %274
  %278 = load ptr, ptr %3, align 8, !tbaa !153
  %279 = getelementptr inbounds nuw %struct.macroblock, ptr %278, i32 0, i32 8
  %280 = load i32, ptr %279, align 8, !tbaa !170
  %281 = icmp eq i32 %280, 1
  br i1 %281, label %282, label %298

282:                                              ; preds = %277
  %283 = load ptr, ptr %3, align 8, !tbaa !153
  %284 = getelementptr inbounds nuw %struct.macroblock, ptr %283, i32 0, i32 33
  %285 = load i16, ptr %284, align 8, !tbaa !154
  %286 = sext i16 %285 to i32
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %292

288:                                              ; preds = %282
  %289 = load ptr, ptr @img, align 8, !tbaa !13
  %290 = getelementptr inbounds nuw %struct.ImageParameters, ptr %289, i32 0, i32 81
  %291 = load ptr, ptr %290, align 8, !tbaa !227
  br label %296

292:                                              ; preds = %282
  %293 = load ptr, ptr @img, align 8, !tbaa !13
  %294 = getelementptr inbounds nuw %struct.ImageParameters, ptr %293, i32 0, i32 82
  %295 = load ptr, ptr %294, align 8, !tbaa !228
  br label %296

296:                                              ; preds = %292, %288
  %297 = phi ptr [ %291, %288 ], [ %295, %292 ]
  store ptr %297, ptr %15, align 8, !tbaa !222
  store i32 0, ptr %12, align 4, !tbaa !40
  store i32 0, ptr %17, align 4, !tbaa !40
  br label %298

298:                                              ; preds = %296, %277, %274, %214
  %299 = load i32, ptr %11, align 4, !tbaa !40
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %358

301:                                              ; preds = %298
  %302 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %303 = getelementptr inbounds nuw %struct.storable_picture, ptr %302, i32 0, i32 38
  %304 = load ptr, ptr %303, align 8, !tbaa !224
  %305 = getelementptr inbounds ptr, ptr %304, i64 0
  %306 = load ptr, ptr %305, align 8, !tbaa !61
  %307 = load i32, ptr %13, align 4, !tbaa !40
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %306, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !63
  %311 = load i32, ptr %14, align 4, !tbaa !40
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %310, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !65
  %315 = getelementptr inbounds i16, ptr %314, i64 0
  store i16 0, ptr %315, align 2, !tbaa !67
  %316 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %317 = getelementptr inbounds nuw %struct.storable_picture, ptr %316, i32 0, i32 38
  %318 = load ptr, ptr %317, align 8, !tbaa !224
  %319 = getelementptr inbounds ptr, ptr %318, i64 0
  %320 = load ptr, ptr %319, align 8, !tbaa !61
  %321 = load i32, ptr %13, align 4, !tbaa !40
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds ptr, ptr %320, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !63
  %325 = load i32, ptr %14, align 4, !tbaa !40
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %324, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !65
  %329 = getelementptr inbounds i16, ptr %328, i64 1
  store i16 0, ptr %329, align 2, !tbaa !67
  %330 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %331 = getelementptr inbounds nuw %struct.storable_picture, ptr %330, i32 0, i32 38
  %332 = load ptr, ptr %331, align 8, !tbaa !224
  %333 = getelementptr inbounds ptr, ptr %332, i64 1
  %334 = load ptr, ptr %333, align 8, !tbaa !61
  %335 = load i32, ptr %13, align 4, !tbaa !40
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds ptr, ptr %334, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !63
  %339 = load i32, ptr %14, align 4, !tbaa !40
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds ptr, ptr %338, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !65
  %343 = getelementptr inbounds i16, ptr %342, i64 0
  store i16 0, ptr %343, align 2, !tbaa !67
  %344 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %345 = getelementptr inbounds nuw %struct.storable_picture, ptr %344, i32 0, i32 38
  %346 = load ptr, ptr %345, align 8, !tbaa !224
  %347 = getelementptr inbounds ptr, ptr %346, i64 1
  %348 = load ptr, ptr %347, align 8, !tbaa !61
  %349 = load i32, ptr %13, align 4, !tbaa !40
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds ptr, ptr %348, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !63
  %353 = load i32, ptr %14, align 4, !tbaa !40
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds ptr, ptr %352, i64 %354
  %356 = load ptr, ptr %355, align 8, !tbaa !65
  %357 = getelementptr inbounds i16, ptr %356, i64 1
  store i16 0, ptr %357, align 2, !tbaa !67
  br label %734

358:                                              ; preds = %298
  %359 = load i32, ptr %11, align 4, !tbaa !40
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %472

361:                                              ; preds = %358
  %362 = load ptr, ptr %15, align 8, !tbaa !222
  %363 = load i32, ptr %6, align 4, !tbaa !40
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds ptr, ptr %362, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !57
  %367 = load i32, ptr %5, align 4, !tbaa !40
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds ptr, ptr %366, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !59
  %371 = getelementptr inbounds ptr, ptr %370, i64 0
  %372 = load ptr, ptr %371, align 8, !tbaa !61
  %373 = load i32, ptr %12, align 4, !tbaa !40
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds ptr, ptr %372, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !63
  %377 = load i32, ptr %10, align 4, !tbaa !40
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds ptr, ptr %376, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !65
  %381 = getelementptr inbounds i16, ptr %380, i64 0
  %382 = load i16, ptr %381, align 2, !tbaa !67
  %383 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %384 = getelementptr inbounds nuw %struct.storable_picture, ptr %383, i32 0, i32 38
  %385 = load ptr, ptr %384, align 8, !tbaa !224
  %386 = getelementptr inbounds ptr, ptr %385, i64 0
  %387 = load ptr, ptr %386, align 8, !tbaa !61
  %388 = load i32, ptr %13, align 4, !tbaa !40
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds ptr, ptr %387, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !63
  %392 = load i32, ptr %14, align 4, !tbaa !40
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds ptr, ptr %391, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !65
  %396 = getelementptr inbounds i16, ptr %395, i64 0
  store i16 %382, ptr %396, align 2, !tbaa !67
  %397 = load ptr, ptr %15, align 8, !tbaa !222
  %398 = load i32, ptr %6, align 4, !tbaa !40
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds ptr, ptr %397, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !57
  %402 = load i32, ptr %5, align 4, !tbaa !40
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !59
  %406 = getelementptr inbounds ptr, ptr %405, i64 0
  %407 = load ptr, ptr %406, align 8, !tbaa !61
  %408 = load i32, ptr %12, align 4, !tbaa !40
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds ptr, ptr %407, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !63
  %412 = load i32, ptr %10, align 4, !tbaa !40
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds ptr, ptr %411, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !65
  %416 = getelementptr inbounds i16, ptr %415, i64 1
  %417 = load i16, ptr %416, align 2, !tbaa !67
  %418 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %419 = getelementptr inbounds nuw %struct.storable_picture, ptr %418, i32 0, i32 38
  %420 = load ptr, ptr %419, align 8, !tbaa !224
  %421 = getelementptr inbounds ptr, ptr %420, i64 0
  %422 = load ptr, ptr %421, align 8, !tbaa !61
  %423 = load i32, ptr %13, align 4, !tbaa !40
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds ptr, ptr %422, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !63
  %427 = load i32, ptr %14, align 4, !tbaa !40
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds ptr, ptr %426, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !65
  %431 = getelementptr inbounds i16, ptr %430, i64 1
  store i16 %417, ptr %431, align 2, !tbaa !67
  %432 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %433 = getelementptr inbounds nuw %struct.storable_picture, ptr %432, i32 0, i32 38
  %434 = load ptr, ptr %433, align 8, !tbaa !224
  %435 = getelementptr inbounds ptr, ptr %434, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !61
  %437 = load i32, ptr %13, align 4, !tbaa !40
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds ptr, ptr %436, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !63
  %441 = load i32, ptr %14, align 4, !tbaa !40
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds ptr, ptr %440, i64 %442
  %444 = load ptr, ptr %443, align 8, !tbaa !65
  %445 = getelementptr inbounds i16, ptr %444, i64 0
  store i16 0, ptr %445, align 2, !tbaa !67
  %446 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %447 = getelementptr inbounds nuw %struct.storable_picture, ptr %446, i32 0, i32 38
  %448 = load ptr, ptr %447, align 8, !tbaa !224
  %449 = getelementptr inbounds ptr, ptr %448, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !61
  %451 = load i32, ptr %13, align 4, !tbaa !40
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds ptr, ptr %450, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !63
  %455 = load i32, ptr %14, align 4, !tbaa !40
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds ptr, ptr %454, i64 %456
  %458 = load ptr, ptr %457, align 8, !tbaa !65
  %459 = getelementptr inbounds i16, ptr %458, i64 1
  store i16 0, ptr %459, align 2, !tbaa !67
  %460 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %461 = getelementptr inbounds nuw %struct.storable_picture, ptr %460, i32 0, i32 35
  %462 = load ptr, ptr %461, align 8, !tbaa !178
  %463 = getelementptr inbounds ptr, ptr %462, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !43
  %465 = load i32, ptr %13, align 4, !tbaa !40
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds ptr, ptr %464, i64 %466
  %468 = load ptr, ptr %467, align 8, !tbaa !44
  %469 = load i32, ptr %14, align 4, !tbaa !40
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, ptr %468, i64 %470
  store i8 -1, ptr %471, align 1, !tbaa !45
  br label %733

472:                                              ; preds = %358
  %473 = load i32, ptr %11, align 4, !tbaa !40
  %474 = icmp eq i32 %473, 1
  br i1 %474, label %475, label %586

475:                                              ; preds = %472
  %476 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %477 = getelementptr inbounds nuw %struct.storable_picture, ptr %476, i32 0, i32 38
  %478 = load ptr, ptr %477, align 8, !tbaa !224
  %479 = getelementptr inbounds ptr, ptr %478, i64 0
  %480 = load ptr, ptr %479, align 8, !tbaa !61
  %481 = load i32, ptr %13, align 4, !tbaa !40
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds ptr, ptr %480, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !63
  %485 = load i32, ptr %14, align 4, !tbaa !40
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds ptr, ptr %484, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !65
  %489 = getelementptr inbounds i16, ptr %488, i64 0
  store i16 0, ptr %489, align 2, !tbaa !67
  %490 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %491 = getelementptr inbounds nuw %struct.storable_picture, ptr %490, i32 0, i32 38
  %492 = load ptr, ptr %491, align 8, !tbaa !224
  %493 = getelementptr inbounds ptr, ptr %492, i64 0
  %494 = load ptr, ptr %493, align 8, !tbaa !61
  %495 = load i32, ptr %13, align 4, !tbaa !40
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds ptr, ptr %494, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !63
  %499 = load i32, ptr %14, align 4, !tbaa !40
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds ptr, ptr %498, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !65
  %503 = getelementptr inbounds i16, ptr %502, i64 1
  store i16 0, ptr %503, align 2, !tbaa !67
  %504 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %505 = getelementptr inbounds nuw %struct.storable_picture, ptr %504, i32 0, i32 35
  %506 = load ptr, ptr %505, align 8, !tbaa !178
  %507 = getelementptr inbounds ptr, ptr %506, i64 0
  %508 = load ptr, ptr %507, align 8, !tbaa !43
  %509 = load i32, ptr %13, align 4, !tbaa !40
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds ptr, ptr %508, i64 %510
  %512 = load ptr, ptr %511, align 8, !tbaa !44
  %513 = load i32, ptr %14, align 4, !tbaa !40
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, ptr %512, i64 %514
  store i8 -1, ptr %515, align 1, !tbaa !45
  %516 = load ptr, ptr %15, align 8, !tbaa !222
  %517 = load i32, ptr %6, align 4, !tbaa !40
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds ptr, ptr %516, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !57
  %521 = load i32, ptr %5, align 4, !tbaa !40
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds ptr, ptr %520, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !59
  %525 = getelementptr inbounds ptr, ptr %524, i64 1
  %526 = load ptr, ptr %525, align 8, !tbaa !61
  %527 = load i32, ptr %17, align 4, !tbaa !40
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds ptr, ptr %526, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !63
  %531 = load i32, ptr %10, align 4, !tbaa !40
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds ptr, ptr %530, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !65
  %535 = getelementptr inbounds i16, ptr %534, i64 0
  %536 = load i16, ptr %535, align 2, !tbaa !67
  %537 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %538 = getelementptr inbounds nuw %struct.storable_picture, ptr %537, i32 0, i32 38
  %539 = load ptr, ptr %538, align 8, !tbaa !224
  %540 = getelementptr inbounds ptr, ptr %539, i64 1
  %541 = load ptr, ptr %540, align 8, !tbaa !61
  %542 = load i32, ptr %13, align 4, !tbaa !40
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds ptr, ptr %541, i64 %543
  %545 = load ptr, ptr %544, align 8, !tbaa !63
  %546 = load i32, ptr %14, align 4, !tbaa !40
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds ptr, ptr %545, i64 %547
  %549 = load ptr, ptr %548, align 8, !tbaa !65
  %550 = getelementptr inbounds i16, ptr %549, i64 0
  store i16 %536, ptr %550, align 2, !tbaa !67
  %551 = load ptr, ptr %15, align 8, !tbaa !222
  %552 = load i32, ptr %6, align 4, !tbaa !40
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds ptr, ptr %551, i64 %553
  %555 = load ptr, ptr %554, align 8, !tbaa !57
  %556 = load i32, ptr %5, align 4, !tbaa !40
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds ptr, ptr %555, i64 %557
  %559 = load ptr, ptr %558, align 8, !tbaa !59
  %560 = getelementptr inbounds ptr, ptr %559, i64 1
  %561 = load ptr, ptr %560, align 8, !tbaa !61
  %562 = load i32, ptr %17, align 4, !tbaa !40
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds ptr, ptr %561, i64 %563
  %565 = load ptr, ptr %564, align 8, !tbaa !63
  %566 = load i32, ptr %10, align 4, !tbaa !40
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds ptr, ptr %565, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !65
  %570 = getelementptr inbounds i16, ptr %569, i64 1
  %571 = load i16, ptr %570, align 2, !tbaa !67
  %572 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %573 = getelementptr inbounds nuw %struct.storable_picture, ptr %572, i32 0, i32 38
  %574 = load ptr, ptr %573, align 8, !tbaa !224
  %575 = getelementptr inbounds ptr, ptr %574, i64 1
  %576 = load ptr, ptr %575, align 8, !tbaa !61
  %577 = load i32, ptr %13, align 4, !tbaa !40
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds ptr, ptr %576, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !63
  %581 = load i32, ptr %14, align 4, !tbaa !40
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds ptr, ptr %580, i64 %582
  %584 = load ptr, ptr %583, align 8, !tbaa !65
  %585 = getelementptr inbounds i16, ptr %584, i64 1
  store i16 %571, ptr %585, align 2, !tbaa !67
  br label %732

586:                                              ; preds = %472
  %587 = load i32, ptr %11, align 4, !tbaa !40
  %588 = icmp eq i32 %587, 2
  br i1 %588, label %589, label %730

589:                                              ; preds = %586
  %590 = load ptr, ptr %15, align 8, !tbaa !222
  %591 = load i32, ptr %6, align 4, !tbaa !40
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds ptr, ptr %590, i64 %592
  %594 = load ptr, ptr %593, align 8, !tbaa !57
  %595 = load i32, ptr %5, align 4, !tbaa !40
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds ptr, ptr %594, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !59
  %599 = getelementptr inbounds ptr, ptr %598, i64 0
  %600 = load ptr, ptr %599, align 8, !tbaa !61
  %601 = load i32, ptr %12, align 4, !tbaa !40
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds ptr, ptr %600, i64 %602
  %604 = load ptr, ptr %603, align 8, !tbaa !63
  %605 = load i32, ptr %10, align 4, !tbaa !40
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %604, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !65
  %609 = getelementptr inbounds i16, ptr %608, i64 0
  %610 = load i16, ptr %609, align 2, !tbaa !67
  %611 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %612 = getelementptr inbounds nuw %struct.storable_picture, ptr %611, i32 0, i32 38
  %613 = load ptr, ptr %612, align 8, !tbaa !224
  %614 = getelementptr inbounds ptr, ptr %613, i64 0
  %615 = load ptr, ptr %614, align 8, !tbaa !61
  %616 = load i32, ptr %13, align 4, !tbaa !40
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds ptr, ptr %615, i64 %617
  %619 = load ptr, ptr %618, align 8, !tbaa !63
  %620 = load i32, ptr %14, align 4, !tbaa !40
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds ptr, ptr %619, i64 %621
  %623 = load ptr, ptr %622, align 8, !tbaa !65
  %624 = getelementptr inbounds i16, ptr %623, i64 0
  store i16 %610, ptr %624, align 2, !tbaa !67
  %625 = load ptr, ptr %15, align 8, !tbaa !222
  %626 = load i32, ptr %6, align 4, !tbaa !40
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds ptr, ptr %625, i64 %627
  %629 = load ptr, ptr %628, align 8, !tbaa !57
  %630 = load i32, ptr %5, align 4, !tbaa !40
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds ptr, ptr %629, i64 %631
  %633 = load ptr, ptr %632, align 8, !tbaa !59
  %634 = getelementptr inbounds ptr, ptr %633, i64 0
  %635 = load ptr, ptr %634, align 8, !tbaa !61
  %636 = load i32, ptr %12, align 4, !tbaa !40
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds ptr, ptr %635, i64 %637
  %639 = load ptr, ptr %638, align 8, !tbaa !63
  %640 = load i32, ptr %10, align 4, !tbaa !40
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds ptr, ptr %639, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !65
  %644 = getelementptr inbounds i16, ptr %643, i64 1
  %645 = load i16, ptr %644, align 2, !tbaa !67
  %646 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %647 = getelementptr inbounds nuw %struct.storable_picture, ptr %646, i32 0, i32 38
  %648 = load ptr, ptr %647, align 8, !tbaa !224
  %649 = getelementptr inbounds ptr, ptr %648, i64 0
  %650 = load ptr, ptr %649, align 8, !tbaa !61
  %651 = load i32, ptr %13, align 4, !tbaa !40
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds ptr, ptr %650, i64 %652
  %654 = load ptr, ptr %653, align 8, !tbaa !63
  %655 = load i32, ptr %14, align 4, !tbaa !40
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds ptr, ptr %654, i64 %656
  %658 = load ptr, ptr %657, align 8, !tbaa !65
  %659 = getelementptr inbounds i16, ptr %658, i64 1
  store i16 %645, ptr %659, align 2, !tbaa !67
  %660 = load ptr, ptr %15, align 8, !tbaa !222
  %661 = load i32, ptr %6, align 4, !tbaa !40
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds ptr, ptr %660, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !57
  %665 = load i32, ptr %5, align 4, !tbaa !40
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds ptr, ptr %664, i64 %666
  %668 = load ptr, ptr %667, align 8, !tbaa !59
  %669 = getelementptr inbounds ptr, ptr %668, i64 1
  %670 = load ptr, ptr %669, align 8, !tbaa !61
  %671 = load i32, ptr %17, align 4, !tbaa !40
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds ptr, ptr %670, i64 %672
  %674 = load ptr, ptr %673, align 8, !tbaa !63
  %675 = load i32, ptr %10, align 4, !tbaa !40
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds ptr, ptr %674, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !65
  %679 = getelementptr inbounds i16, ptr %678, i64 0
  %680 = load i16, ptr %679, align 2, !tbaa !67
  %681 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %682 = getelementptr inbounds nuw %struct.storable_picture, ptr %681, i32 0, i32 38
  %683 = load ptr, ptr %682, align 8, !tbaa !224
  %684 = getelementptr inbounds ptr, ptr %683, i64 1
  %685 = load ptr, ptr %684, align 8, !tbaa !61
  %686 = load i32, ptr %13, align 4, !tbaa !40
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds ptr, ptr %685, i64 %687
  %689 = load ptr, ptr %688, align 8, !tbaa !63
  %690 = load i32, ptr %14, align 4, !tbaa !40
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds ptr, ptr %689, i64 %691
  %693 = load ptr, ptr %692, align 8, !tbaa !65
  %694 = getelementptr inbounds i16, ptr %693, i64 0
  store i16 %680, ptr %694, align 2, !tbaa !67
  %695 = load ptr, ptr %15, align 8, !tbaa !222
  %696 = load i32, ptr %6, align 4, !tbaa !40
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds ptr, ptr %695, i64 %697
  %699 = load ptr, ptr %698, align 8, !tbaa !57
  %700 = load i32, ptr %5, align 4, !tbaa !40
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds ptr, ptr %699, i64 %701
  %703 = load ptr, ptr %702, align 8, !tbaa !59
  %704 = getelementptr inbounds ptr, ptr %703, i64 1
  %705 = load ptr, ptr %704, align 8, !tbaa !61
  %706 = load i32, ptr %17, align 4, !tbaa !40
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds ptr, ptr %705, i64 %707
  %709 = load ptr, ptr %708, align 8, !tbaa !63
  %710 = load i32, ptr %10, align 4, !tbaa !40
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds ptr, ptr %709, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !65
  %714 = getelementptr inbounds i16, ptr %713, i64 1
  %715 = load i16, ptr %714, align 2, !tbaa !67
  %716 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %717 = getelementptr inbounds nuw %struct.storable_picture, ptr %716, i32 0, i32 38
  %718 = load ptr, ptr %717, align 8, !tbaa !224
  %719 = getelementptr inbounds ptr, ptr %718, i64 1
  %720 = load ptr, ptr %719, align 8, !tbaa !61
  %721 = load i32, ptr %13, align 4, !tbaa !40
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds ptr, ptr %720, i64 %722
  %724 = load ptr, ptr %723, align 8, !tbaa !63
  %725 = load i32, ptr %14, align 4, !tbaa !40
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds ptr, ptr %724, i64 %726
  %728 = load ptr, ptr %727, align 8, !tbaa !65
  %729 = getelementptr inbounds i16, ptr %728, i64 1
  store i16 %715, ptr %729, align 2, !tbaa !67
  br label %731

730:                                              ; preds = %586
  call void @error(ptr noundef @.str.1, i32 noundef signext 255)
  br label %731

731:                                              ; preds = %730, %589
  br label %732

732:                                              ; preds = %731, %475
  br label %733

733:                                              ; preds = %732, %361
  br label %734

734:                                              ; preds = %733, %301
  br label %735

735:                                              ; preds = %734
  %736 = load i32, ptr %5, align 4, !tbaa !40
  %737 = add nsw i32 %736, 1
  store i32 %737, ptr %5, align 4, !tbaa !40
  br label %211, !llvm.loop !229

738:                                              ; preds = %211
  br label %739

739:                                              ; preds = %738
  %740 = load i32, ptr %6, align 4, !tbaa !40
  %741 = add nsw i32 %740, 1
  store i32 %741, ptr %6, align 4, !tbaa !40
  br label %198, !llvm.loop !230

742:                                              ; preds = %198
  br label %743

743:                                              ; preds = %742, %196
  %744 = load ptr, ptr @img, align 8, !tbaa !13
  %745 = getelementptr inbounds nuw %struct.ImageParameters, ptr %744, i32 0, i32 100
  %746 = load i32, ptr %745, align 4, !tbaa !231
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %748, label %980

748:                                              ; preds = %743
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %749

749:                                              ; preds = %976, %748
  %750 = load i32, ptr %5, align 4, !tbaa !40
  %751 = icmp slt i32 %750, 4
  br i1 %751, label %752, label %979

752:                                              ; preds = %749
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %753

753:                                              ; preds = %972, %752
  %754 = load i32, ptr %6, align 4, !tbaa !40
  %755 = icmp slt i32 %754, 4
  br i1 %755, label %756, label %975

756:                                              ; preds = %753
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %757

757:                                              ; preds = %968, %756
  %758 = load i32, ptr %7, align 4, !tbaa !40
  %759 = icmp slt i32 %758, 2
  br i1 %759, label %760, label %971

760:                                              ; preds = %757
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %761

761:                                              ; preds = %964, %760
  %762 = load i32, ptr %8, align 4, !tbaa !40
  %763 = load ptr, ptr @img, align 8, !tbaa !13
  %764 = getelementptr inbounds nuw %struct.ImageParameters, ptr %763, i32 0, i32 8
  %765 = load i32, ptr %764, align 8, !tbaa !232
  %766 = icmp slt i32 %762, %765
  br i1 %766, label %767, label %967

767:                                              ; preds = %761
  store i32 0, ptr %9, align 4, !tbaa !40
  br label %768

768:                                              ; preds = %960, %767
  %769 = load i32, ptr %9, align 4, !tbaa !40
  %770 = icmp slt i32 %769, 9
  br i1 %770, label %771, label %963

771:                                              ; preds = %768
  %772 = load ptr, ptr %15, align 8, !tbaa !222
  %773 = load i32, ptr %6, align 4, !tbaa !40
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds ptr, ptr %772, i64 %774
  %776 = load ptr, ptr %775, align 8, !tbaa !57
  %777 = load i32, ptr %5, align 4, !tbaa !40
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds ptr, ptr %776, i64 %778
  %780 = load ptr, ptr %779, align 8, !tbaa !59
  %781 = load i32, ptr %7, align 4, !tbaa !40
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds ptr, ptr %780, i64 %782
  %784 = load ptr, ptr %783, align 8, !tbaa !61
  %785 = load i32, ptr %8, align 4, !tbaa !40
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds ptr, ptr %784, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !63
  %789 = load i32, ptr %9, align 4, !tbaa !40
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds ptr, ptr %788, i64 %790
  %792 = load ptr, ptr %791, align 8, !tbaa !65
  %793 = getelementptr inbounds i16, ptr %792, i64 0
  %794 = load i16, ptr %793, align 2, !tbaa !67
  %795 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %796 = getelementptr inbounds nuw %struct.RD_DATA, ptr %795, i32 0, i32 17
  %797 = load ptr, ptr %796, align 8, !tbaa !233
  %798 = load i32, ptr %6, align 4, !tbaa !40
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds ptr, ptr %797, i64 %799
  %801 = load ptr, ptr %800, align 8, !tbaa !57
  %802 = load i32, ptr %5, align 4, !tbaa !40
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds ptr, ptr %801, i64 %803
  %805 = load ptr, ptr %804, align 8, !tbaa !59
  %806 = load i32, ptr %7, align 4, !tbaa !40
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds ptr, ptr %805, i64 %807
  %809 = load ptr, ptr %808, align 8, !tbaa !61
  %810 = load i32, ptr %8, align 4, !tbaa !40
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds ptr, ptr %809, i64 %811
  %813 = load ptr, ptr %812, align 8, !tbaa !63
  %814 = load i32, ptr %9, align 4, !tbaa !40
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds ptr, ptr %813, i64 %815
  %817 = load ptr, ptr %816, align 8, !tbaa !65
  %818 = getelementptr inbounds i16, ptr %817, i64 0
  store i16 %794, ptr %818, align 2, !tbaa !67
  %819 = load ptr, ptr %16, align 8, !tbaa !222
  %820 = load i32, ptr %6, align 4, !tbaa !40
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds ptr, ptr %819, i64 %821
  %823 = load ptr, ptr %822, align 8, !tbaa !57
  %824 = load i32, ptr %5, align 4, !tbaa !40
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds ptr, ptr %823, i64 %825
  %827 = load ptr, ptr %826, align 8, !tbaa !59
  %828 = load i32, ptr %7, align 4, !tbaa !40
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds ptr, ptr %827, i64 %829
  %831 = load ptr, ptr %830, align 8, !tbaa !61
  %832 = load i32, ptr %8, align 4, !tbaa !40
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds ptr, ptr %831, i64 %833
  %835 = load ptr, ptr %834, align 8, !tbaa !63
  %836 = load i32, ptr %9, align 4, !tbaa !40
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds ptr, ptr %835, i64 %837
  %839 = load ptr, ptr %838, align 8, !tbaa !65
  %840 = getelementptr inbounds i16, ptr %839, i64 0
  %841 = load i16, ptr %840, align 2, !tbaa !67
  %842 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %843 = getelementptr inbounds nuw %struct.RD_DATA, ptr %842, i32 0, i32 16
  %844 = load ptr, ptr %843, align 8, !tbaa !235
  %845 = load i32, ptr %6, align 4, !tbaa !40
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds ptr, ptr %844, i64 %846
  %848 = load ptr, ptr %847, align 8, !tbaa !57
  %849 = load i32, ptr %5, align 4, !tbaa !40
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds ptr, ptr %848, i64 %850
  %852 = load ptr, ptr %851, align 8, !tbaa !59
  %853 = load i32, ptr %7, align 4, !tbaa !40
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds ptr, ptr %852, i64 %854
  %856 = load ptr, ptr %855, align 8, !tbaa !61
  %857 = load i32, ptr %8, align 4, !tbaa !40
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds ptr, ptr %856, i64 %858
  %860 = load ptr, ptr %859, align 8, !tbaa !63
  %861 = load i32, ptr %9, align 4, !tbaa !40
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds ptr, ptr %860, i64 %862
  %864 = load ptr, ptr %863, align 8, !tbaa !65
  %865 = getelementptr inbounds i16, ptr %864, i64 0
  store i16 %841, ptr %865, align 2, !tbaa !67
  %866 = load ptr, ptr %15, align 8, !tbaa !222
  %867 = load i32, ptr %6, align 4, !tbaa !40
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds ptr, ptr %866, i64 %868
  %870 = load ptr, ptr %869, align 8, !tbaa !57
  %871 = load i32, ptr %5, align 4, !tbaa !40
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds ptr, ptr %870, i64 %872
  %874 = load ptr, ptr %873, align 8, !tbaa !59
  %875 = load i32, ptr %7, align 4, !tbaa !40
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds ptr, ptr %874, i64 %876
  %878 = load ptr, ptr %877, align 8, !tbaa !61
  %879 = load i32, ptr %8, align 4, !tbaa !40
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds ptr, ptr %878, i64 %880
  %882 = load ptr, ptr %881, align 8, !tbaa !63
  %883 = load i32, ptr %9, align 4, !tbaa !40
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds ptr, ptr %882, i64 %884
  %886 = load ptr, ptr %885, align 8, !tbaa !65
  %887 = getelementptr inbounds i16, ptr %886, i64 1
  %888 = load i16, ptr %887, align 2, !tbaa !67
  %889 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %890 = getelementptr inbounds nuw %struct.RD_DATA, ptr %889, i32 0, i32 17
  %891 = load ptr, ptr %890, align 8, !tbaa !233
  %892 = load i32, ptr %6, align 4, !tbaa !40
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds ptr, ptr %891, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !57
  %896 = load i32, ptr %5, align 4, !tbaa !40
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds ptr, ptr %895, i64 %897
  %899 = load ptr, ptr %898, align 8, !tbaa !59
  %900 = load i32, ptr %7, align 4, !tbaa !40
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds ptr, ptr %899, i64 %901
  %903 = load ptr, ptr %902, align 8, !tbaa !61
  %904 = load i32, ptr %8, align 4, !tbaa !40
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds ptr, ptr %903, i64 %905
  %907 = load ptr, ptr %906, align 8, !tbaa !63
  %908 = load i32, ptr %9, align 4, !tbaa !40
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds ptr, ptr %907, i64 %909
  %911 = load ptr, ptr %910, align 8, !tbaa !65
  %912 = getelementptr inbounds i16, ptr %911, i64 1
  store i16 %888, ptr %912, align 2, !tbaa !67
  %913 = load ptr, ptr %16, align 8, !tbaa !222
  %914 = load i32, ptr %6, align 4, !tbaa !40
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds ptr, ptr %913, i64 %915
  %917 = load ptr, ptr %916, align 8, !tbaa !57
  %918 = load i32, ptr %5, align 4, !tbaa !40
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds ptr, ptr %917, i64 %919
  %921 = load ptr, ptr %920, align 8, !tbaa !59
  %922 = load i32, ptr %7, align 4, !tbaa !40
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds ptr, ptr %921, i64 %923
  %925 = load ptr, ptr %924, align 8, !tbaa !61
  %926 = load i32, ptr %8, align 4, !tbaa !40
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds ptr, ptr %925, i64 %927
  %929 = load ptr, ptr %928, align 8, !tbaa !63
  %930 = load i32, ptr %9, align 4, !tbaa !40
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds ptr, ptr %929, i64 %931
  %933 = load ptr, ptr %932, align 8, !tbaa !65
  %934 = getelementptr inbounds i16, ptr %933, i64 1
  %935 = load i16, ptr %934, align 2, !tbaa !67
  %936 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %937 = getelementptr inbounds nuw %struct.RD_DATA, ptr %936, i32 0, i32 16
  %938 = load ptr, ptr %937, align 8, !tbaa !235
  %939 = load i32, ptr %6, align 4, !tbaa !40
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds ptr, ptr %938, i64 %940
  %942 = load ptr, ptr %941, align 8, !tbaa !57
  %943 = load i32, ptr %5, align 4, !tbaa !40
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds ptr, ptr %942, i64 %944
  %946 = load ptr, ptr %945, align 8, !tbaa !59
  %947 = load i32, ptr %7, align 4, !tbaa !40
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds ptr, ptr %946, i64 %948
  %950 = load ptr, ptr %949, align 8, !tbaa !61
  %951 = load i32, ptr %8, align 4, !tbaa !40
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds ptr, ptr %950, i64 %952
  %954 = load ptr, ptr %953, align 8, !tbaa !63
  %955 = load i32, ptr %9, align 4, !tbaa !40
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds ptr, ptr %954, i64 %956
  %958 = load ptr, ptr %957, align 8, !tbaa !65
  %959 = getelementptr inbounds i16, ptr %958, i64 1
  store i16 %935, ptr %959, align 2, !tbaa !67
  br label %960

960:                                              ; preds = %771
  %961 = load i32, ptr %9, align 4, !tbaa !40
  %962 = add nsw i32 %961, 1
  store i32 %962, ptr %9, align 4, !tbaa !40
  br label %768, !llvm.loop !236

963:                                              ; preds = %768
  br label %964

964:                                              ; preds = %963
  %965 = load i32, ptr %8, align 4, !tbaa !40
  %966 = add nsw i32 %965, 1
  store i32 %966, ptr %8, align 4, !tbaa !40
  br label %761, !llvm.loop !237

967:                                              ; preds = %761
  br label %968

968:                                              ; preds = %967
  %969 = load i32, ptr %7, align 4, !tbaa !40
  %970 = add nsw i32 %969, 1
  store i32 %970, ptr %7, align 4, !tbaa !40
  br label %757, !llvm.loop !238

971:                                              ; preds = %757
  br label %972

972:                                              ; preds = %971
  %973 = load i32, ptr %6, align 4, !tbaa !40
  %974 = add nsw i32 %973, 1
  store i32 %974, ptr %6, align 4, !tbaa !40
  br label %753, !llvm.loop !239

975:                                              ; preds = %753
  br label %976

976:                                              ; preds = %975
  %977 = load i32, ptr %5, align 4, !tbaa !40
  %978 = add nsw i32 %977, 1
  store i32 %978, ptr %5, align 4, !tbaa !40
  br label %749, !llvm.loop !240

979:                                              ; preds = %749
  br label %980

980:                                              ; preds = %979, %743
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret void
}

declare void @error(ptr noundef, i32 noundef signext) #1

; Function Attrs: nounwind
define dso_local signext i32 @RDCost_for_macroblocks(double noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, i32 noundef signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store double %0, ptr %7, align 8, !tbaa !38
  store i32 %1, ptr %8, align 4, !tbaa !40
  store ptr %2, ptr %9, align 8, !tbaa !241
  store ptr %3, ptr %10, align 8, !tbaa !241
  store i32 %4, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  store i32 0, ptr %17, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  store i32 0, ptr %18, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #8
  store i64 0, ptr %19, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  %32 = load ptr, ptr @img, align 8, !tbaa !13
  %33 = getelementptr inbounds nuw %struct.ImageParameters, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !120
  %35 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %34)
  store i32 %35, ptr %21, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #8
  %36 = load ptr, ptr @img, align 8, !tbaa !13
  %37 = getelementptr inbounds nuw %struct.ImageParameters, ptr %36, i32 0, i32 61
  %38 = load ptr, ptr %37, align 8, !tbaa !143
  %39 = load ptr, ptr @img, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.ImageParameters, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !120
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.macroblock, ptr %38, i64 %42
  store ptr %43, ptr %22, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #8
  %44 = load i32, ptr %21, align 4, !tbaa !40
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %5
  %47 = load ptr, ptr @img, align 8, !tbaa !13
  %48 = getelementptr inbounds nuw %struct.ImageParameters, ptr %47, i32 0, i32 61
  %49 = load ptr, ptr %48, align 8, !tbaa !143
  %50 = load i32, ptr %21, align 4, !tbaa !40
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.macroblock, ptr %49, i64 %51
  br label %54

53:                                               ; preds = %5
  br label %54

54:                                               ; preds = %53, %46
  %55 = phi ptr [ %52, %46 ], [ null, %53 ]
  store ptr %55, ptr %23, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #8
  %56 = load ptr, ptr @img, align 8, !tbaa !13
  %57 = getelementptr inbounds nuw %struct.ImageParameters, ptr %56, i32 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !39
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i32
  store i32 %60, ptr %24, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #8
  %61 = load ptr, ptr @img, align 8, !tbaa !13
  %62 = getelementptr inbounds nuw %struct.ImageParameters, ptr %61, i32 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !39
  %64 = icmp ne i32 %63, 2
  br i1 %64, label %65, label %70

65:                                               ; preds = %54
  %66 = load ptr, ptr @input, align 8, !tbaa !13
  %67 = getelementptr inbounds nuw %struct.InputParameters, ptr %66, i32 0, i32 74
  %68 = load i32, ptr %67, align 8, !tbaa !118
  %69 = icmp ne i32 %68, 1
  br label %70

70:                                               ; preds = %65, %54
  %71 = phi i1 [ false, %54 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  store i32 %72, ptr %26, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #8
  %73 = load i32, ptr %8, align 4, !tbaa !40
  call void @SetModesAndRefframeForBlocks(i32 noundef signext %73)
  %74 = load i32, ptr %24, align 4, !tbaa !40
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %126

76:                                               ; preds = %70
  %77 = load i32, ptr %8, align 4, !tbaa !40
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #8
  %80 = load ptr, ptr @img, align 8, !tbaa !13
  %81 = getelementptr inbounds nuw %struct.ImageParameters, ptr %80, i32 0, i32 39
  %82 = load i32, ptr %81, align 8, !tbaa !95
  %83 = ashr i32 %82, 2
  store i32 %83, ptr %29, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %30) #8
  %84 = load ptr, ptr @img, align 8, !tbaa !13
  %85 = getelementptr inbounds nuw %struct.ImageParameters, ptr %84, i32 0, i32 40
  %86 = load i32, ptr %85, align 4, !tbaa !96
  %87 = ashr i32 %86, 2
  store i32 %87, ptr %30, align 4, !tbaa !40
  %88 = load i32, ptr %30, align 4, !tbaa !40
  store i32 %88, ptr %13, align 4, !tbaa !40
  br label %89

89:                                               ; preds = %119, %79
  %90 = load i32, ptr %13, align 4, !tbaa !40
  %91 = load i32, ptr %30, align 4, !tbaa !40
  %92 = add nsw i32 %91, 4
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %89
  %95 = load i32, ptr %29, align 4, !tbaa !40
  store i32 %95, ptr %12, align 4, !tbaa !40
  br label %96

96:                                               ; preds = %115, %94
  %97 = load i32, ptr %12, align 4, !tbaa !40
  %98 = load i32, ptr %29, align 4, !tbaa !40
  %99 = add nsw i32 %98, 4
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load ptr, ptr @direct_pdir, align 8, !tbaa !43
  %103 = load i32, ptr %13, align 4, !tbaa !40
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !44
  %107 = load i32, ptr %12, align 4, !tbaa !40
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %106, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !45
  %111 = sext i8 %110 to i32
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  store i32 0, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %123

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %12, align 4, !tbaa !40
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %12, align 4, !tbaa !40
  br label %96, !llvm.loop !243

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %13, align 4, !tbaa !40
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %13, align 4, !tbaa !40
  br label %89, !llvm.loop !244

122:                                              ; preds = %89
  store i32 0, ptr %31, align 4
  br label %123

123:                                              ; preds = %122, %113
  call void @llvm.lifetime.end.p0(i64 4, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #8
  %124 = load i32, ptr %31, align 4
  switch i32 %124, label %1153 [
    i32 0, label %125
  ]

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %76, %70
  %127 = load ptr, ptr @img, align 8, !tbaa !13
  %128 = getelementptr inbounds nuw %struct.ImageParameters, ptr %127, i32 0, i32 100
  %129 = load i32, ptr %128, align 4, !tbaa !231
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %232

131:                                              ; preds = %126
  %132 = load ptr, ptr %22, align 8, !tbaa !153
  %133 = getelementptr inbounds nuw %struct.macroblock, ptr %132, i32 0, i32 19
  %134 = load i32, ptr %133, align 8, !tbaa !245
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %232, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr @img, align 8, !tbaa !13
  %138 = getelementptr inbounds nuw %struct.ImageParameters, ptr %137, i32 0, i32 5
  %139 = load i32, ptr %138, align 4, !tbaa !39
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %232

141:                                              ; preds = %136
  %142 = load i32, ptr %8, align 4, !tbaa !40
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %232

144:                                              ; preds = %141
  %145 = load ptr, ptr @img, align 8, !tbaa !13
  %146 = getelementptr inbounds nuw %struct.ImageParameters, ptr %145, i32 0, i32 80
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  %148 = getelementptr inbounds ptr, ptr %147, i64 0
  %149 = load ptr, ptr %148, align 8, !tbaa !57
  %150 = getelementptr inbounds ptr, ptr %149, i64 0
  %151 = load ptr, ptr %150, align 8, !tbaa !59
  %152 = getelementptr inbounds ptr, ptr %151, i64 0
  %153 = load ptr, ptr %152, align 8, !tbaa !61
  %154 = getelementptr inbounds ptr, ptr %153, i64 0
  %155 = load ptr, ptr %154, align 8, !tbaa !63
  %156 = getelementptr inbounds ptr, ptr %155, i64 0
  %157 = load ptr, ptr %156, align 8, !tbaa !65
  %158 = getelementptr inbounds i16, ptr %157, i64 0
  %159 = load i16, ptr %158, align 2, !tbaa !67
  %160 = sext i16 %159 to i32
  %161 = icmp slt i32 %160, -8192
  br i1 %161, label %230, label %162

162:                                              ; preds = %144
  %163 = load ptr, ptr @img, align 8, !tbaa !13
  %164 = getelementptr inbounds nuw %struct.ImageParameters, ptr %163, i32 0, i32 80
  %165 = load ptr, ptr %164, align 8, !tbaa !56
  %166 = getelementptr inbounds ptr, ptr %165, i64 0
  %167 = load ptr, ptr %166, align 8, !tbaa !57
  %168 = getelementptr inbounds ptr, ptr %167, i64 0
  %169 = load ptr, ptr %168, align 8, !tbaa !59
  %170 = getelementptr inbounds ptr, ptr %169, i64 0
  %171 = load ptr, ptr %170, align 8, !tbaa !61
  %172 = getelementptr inbounds ptr, ptr %171, i64 0
  %173 = load ptr, ptr %172, align 8, !tbaa !63
  %174 = getelementptr inbounds ptr, ptr %173, i64 0
  %175 = load ptr, ptr %174, align 8, !tbaa !65
  %176 = getelementptr inbounds i16, ptr %175, i64 0
  %177 = load i16, ptr %176, align 2, !tbaa !67
  %178 = sext i16 %177 to i32
  %179 = icmp sgt i32 %178, 8191
  br i1 %179, label %230, label %180

180:                                              ; preds = %162
  %181 = load ptr, ptr @img, align 8, !tbaa !13
  %182 = getelementptr inbounds nuw %struct.ImageParameters, ptr %181, i32 0, i32 80
  %183 = load ptr, ptr %182, align 8, !tbaa !56
  %184 = getelementptr inbounds ptr, ptr %183, i64 0
  %185 = load ptr, ptr %184, align 8, !tbaa !57
  %186 = getelementptr inbounds ptr, ptr %185, i64 0
  %187 = load ptr, ptr %186, align 8, !tbaa !59
  %188 = getelementptr inbounds ptr, ptr %187, i64 0
  %189 = load ptr, ptr %188, align 8, !tbaa !61
  %190 = getelementptr inbounds ptr, ptr %189, i64 0
  %191 = load ptr, ptr %190, align 8, !tbaa !63
  %192 = getelementptr inbounds ptr, ptr %191, i64 0
  %193 = load ptr, ptr %192, align 8, !tbaa !65
  %194 = getelementptr inbounds i16, ptr %193, i64 1
  %195 = load i16, ptr %194, align 2, !tbaa !67
  %196 = sext i16 %195 to i32
  %197 = load ptr, ptr @img, align 8, !tbaa !13
  %198 = getelementptr inbounds nuw %struct.ImageParameters, ptr %197, i32 0, i32 2
  %199 = load i32, ptr %198, align 8, !tbaa !246
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %200
  %202 = getelementptr inbounds [6 x i32], ptr %201, i64 0, i64 4
  %203 = load i32, ptr %202, align 4, !tbaa !40
  %204 = icmp slt i32 %196, %203
  br i1 %204, label %230, label %205

205:                                              ; preds = %180
  %206 = load ptr, ptr @img, align 8, !tbaa !13
  %207 = getelementptr inbounds nuw %struct.ImageParameters, ptr %206, i32 0, i32 80
  %208 = load ptr, ptr %207, align 8, !tbaa !56
  %209 = getelementptr inbounds ptr, ptr %208, i64 0
  %210 = load ptr, ptr %209, align 8, !tbaa !57
  %211 = getelementptr inbounds ptr, ptr %210, i64 0
  %212 = load ptr, ptr %211, align 8, !tbaa !59
  %213 = getelementptr inbounds ptr, ptr %212, i64 0
  %214 = load ptr, ptr %213, align 8, !tbaa !61
  %215 = getelementptr inbounds ptr, ptr %214, i64 0
  %216 = load ptr, ptr %215, align 8, !tbaa !63
  %217 = getelementptr inbounds ptr, ptr %216, i64 0
  %218 = load ptr, ptr %217, align 8, !tbaa !65
  %219 = getelementptr inbounds i16, ptr %218, i64 1
  %220 = load i16, ptr %219, align 2, !tbaa !67
  %221 = sext i16 %220 to i32
  %222 = load ptr, ptr @img, align 8, !tbaa !13
  %223 = getelementptr inbounds nuw %struct.ImageParameters, ptr %222, i32 0, i32 2
  %224 = load i32, ptr %223, align 8, !tbaa !246
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [17 x [6 x i32]], ptr @LEVELMVLIMIT, i64 0, i64 %225
  %227 = getelementptr inbounds [6 x i32], ptr %226, i64 0, i64 5
  %228 = load i32, ptr %227, align 4, !tbaa !40
  %229 = icmp sgt i32 %221, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %205, %180, %162, %144
  store i32 0, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %1153

231:                                              ; preds = %205
  br label %232

232:                                              ; preds = %231, %141, %136, %131, %126
  %233 = load ptr, ptr @img, align 8, !tbaa !13
  %234 = getelementptr inbounds nuw %struct.ImageParameters, ptr %233, i32 0, i32 98
  %235 = load i32, ptr %234, align 4, !tbaa !139
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %292

237:                                              ; preds = %232
  %238 = load ptr, ptr @img, align 8, !tbaa !13
  %239 = getelementptr inbounds nuw %struct.ImageParameters, ptr %238, i32 0, i32 55
  %240 = load ptr, ptr %239, align 8, !tbaa !140
  %241 = getelementptr inbounds ptr, ptr %240, i64 0
  %242 = load ptr, ptr %241, align 8, !tbaa !21
  %243 = getelementptr inbounds ptr, ptr %242, i64 0
  %244 = load ptr, ptr %243, align 8, !tbaa !92
  %245 = getelementptr inbounds i32, ptr %244, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %245, i8 0, i64 1024, i1 false)
  %246 = load ptr, ptr @img, align 8, !tbaa !13
  %247 = getelementptr inbounds nuw %struct.ImageParameters, ptr %246, i32 0, i32 56
  %248 = load ptr, ptr %247, align 8, !tbaa !247
  %249 = getelementptr inbounds ptr, ptr %248, i64 0
  %250 = load ptr, ptr %249, align 8, !tbaa !21
  %251 = getelementptr inbounds ptr, ptr %250, i64 0
  %252 = load ptr, ptr %251, align 8, !tbaa !92
  %253 = getelementptr inbounds i32, ptr %252, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %253, i8 0, i64 1024, i1 false)
  %254 = load ptr, ptr @img, align 8, !tbaa !13
  %255 = getelementptr inbounds nuw %struct.ImageParameters, ptr %254, i32 0, i32 57
  %256 = load ptr, ptr %255, align 8, !tbaa !248
  %257 = getelementptr inbounds ptr, ptr %256, i64 0
  %258 = load ptr, ptr %257, align 8, !tbaa !3
  %259 = getelementptr inbounds ptr, ptr %258, i64 0
  %260 = load ptr, ptr %259, align 8, !tbaa !21
  %261 = getelementptr inbounds ptr, ptr %260, i64 0
  %262 = load ptr, ptr %261, align 8, !tbaa !92
  %263 = getelementptr inbounds i32, ptr %262, i64 0
  %264 = load ptr, ptr @img, align 8, !tbaa !13
  %265 = getelementptr inbounds nuw %struct.ImageParameters, ptr %264, i32 0, i32 163
  %266 = load i32, ptr %265, align 4, !tbaa !24
  %267 = load ptr, ptr @img, align 8, !tbaa !13
  %268 = getelementptr inbounds nuw %struct.ImageParameters, ptr %267, i32 0, i32 162
  %269 = load i32, ptr %268, align 8, !tbaa !36
  %270 = mul nsw i32 %266, %269
  %271 = sext i32 %270 to i64
  %272 = mul i64 %271, 4
  call void @llvm.memset.p0.i64(ptr align 4 %263, i8 0, i64 %272, i1 false)
  %273 = load ptr, ptr @img, align 8, !tbaa !13
  %274 = getelementptr inbounds nuw %struct.ImageParameters, ptr %273, i32 0, i32 57
  %275 = load ptr, ptr %274, align 8, !tbaa !248
  %276 = getelementptr inbounds ptr, ptr %275, i64 0
  %277 = load ptr, ptr %276, align 8, !tbaa !3
  %278 = getelementptr inbounds ptr, ptr %277, i64 1
  %279 = load ptr, ptr %278, align 8, !tbaa !21
  %280 = getelementptr inbounds ptr, ptr %279, i64 0
  %281 = load ptr, ptr %280, align 8, !tbaa !92
  %282 = getelementptr inbounds i32, ptr %281, i64 0
  %283 = load ptr, ptr @img, align 8, !tbaa !13
  %284 = getelementptr inbounds nuw %struct.ImageParameters, ptr %283, i32 0, i32 163
  %285 = load i32, ptr %284, align 4, !tbaa !24
  %286 = load ptr, ptr @img, align 8, !tbaa !13
  %287 = getelementptr inbounds nuw %struct.ImageParameters, ptr %286, i32 0, i32 162
  %288 = load i32, ptr %287, align 8, !tbaa !36
  %289 = mul nsw i32 %285, %288
  %290 = sext i32 %289 to i64
  %291 = mul i64 %290, 4
  call void @llvm.memset.p0.i64(ptr align 4 %282, i8 0, i64 %291, i1 false)
  br label %292

292:                                              ; preds = %237, %232
  %293 = load i32, ptr %8, align 4, !tbaa !40
  %294 = icmp slt i32 %293, 8
  br i1 %294, label %295, label %329

295:                                              ; preds = %292
  call void @LumaResidualCoding()
  %296 = load i32, ptr %8, align 4, !tbaa !40
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %295
  %299 = load ptr, ptr %22, align 8, !tbaa !153
  %300 = getelementptr inbounds nuw %struct.macroblock, ptr %299, i32 0, i32 12
  %301 = load i32, ptr %300, align 4, !tbaa !195
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %298
  %304 = load ptr, ptr @img, align 8, !tbaa !13
  %305 = getelementptr inbounds nuw %struct.ImageParameters, ptr %304, i32 0, i32 5
  %306 = load i32, ptr %305, align 4, !tbaa !39
  %307 = icmp ne i32 %306, 1
  br i1 %307, label %313, label %308

308:                                              ; preds = %303
  %309 = load ptr, ptr @img, align 8, !tbaa !13
  %310 = getelementptr inbounds nuw %struct.ImageParameters, ptr %309, i32 0, i32 97
  %311 = load i32, ptr %310, align 8, !tbaa !249
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %314

313:                                              ; preds = %308, %303
  store i32 0, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %1153

314:                                              ; preds = %308, %298, %295
  %315 = load i32, ptr %8, align 4, !tbaa !40
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %328

317:                                              ; preds = %314
  %318 = load ptr, ptr %22, align 8, !tbaa !153
  %319 = getelementptr inbounds nuw %struct.macroblock, ptr %318, i32 0, i32 12
  %320 = load i32, ptr %319, align 4, !tbaa !195
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %317
  %323 = load ptr, ptr %22, align 8, !tbaa !153
  %324 = getelementptr inbounds nuw %struct.macroblock, ptr %323, i32 0, i32 31
  %325 = load i32, ptr %324, align 8, !tbaa !169
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  store i32 0, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %1153

328:                                              ; preds = %322, %317, %314
  br label %543

329:                                              ; preds = %292
  %330 = load i32, ptr %8, align 4, !tbaa !40
  %331 = icmp eq i32 %330, 8
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = load ptr, ptr %22, align 8, !tbaa !153
  call void @SetCoeffAndReconstruction8x8(ptr noundef %333)
  br label %542

334:                                              ; preds = %329
  %335 = load i32, ptr %8, align 4, !tbaa !40
  %336 = icmp eq i32 %335, 9
  br i1 %336, label %337, label %342

337:                                              ; preds = %334
  %338 = load double, ptr %7, align 8, !tbaa !38
  %339 = call signext i32 @Mode_Decision_for_Intra4x4Macroblock(double noundef %338, ptr noundef %28)
  %340 = load ptr, ptr %22, align 8, !tbaa !153
  %341 = getelementptr inbounds nuw %struct.macroblock, ptr %340, i32 0, i32 12
  store i32 %339, ptr %341, align 4, !tbaa !195
  br label %541

342:                                              ; preds = %334
  %343 = load i32, ptr %8, align 4, !tbaa !40
  %344 = icmp eq i32 %343, 10
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = load ptr, ptr %22, align 8, !tbaa !153
  call void @Intra16x16_Mode_Decision(ptr noundef %346, ptr noundef %11)
  br label %540

347:                                              ; preds = %342
  %348 = load i32, ptr %8, align 4, !tbaa !40
  %349 = icmp eq i32 %348, 13
  br i1 %349, label %350, label %355

350:                                              ; preds = %347
  %351 = load double, ptr %7, align 8, !tbaa !38
  %352 = call signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef %351, ptr noundef %28)
  %353 = load ptr, ptr %22, align 8, !tbaa !153
  %354 = getelementptr inbounds nuw %struct.macroblock, ptr %353, i32 0, i32 12
  store i32 %352, ptr %354, align 4, !tbaa !195
  br label %539

355:                                              ; preds = %347
  %356 = load i32, ptr %8, align 4, !tbaa !40
  %357 = icmp eq i32 %356, 14
  br i1 %357, label %358, label %538

358:                                              ; preds = %355
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %359

359:                                              ; preds = %407, %358
  %360 = load i32, ptr %13, align 4, !tbaa !40
  %361 = icmp slt i32 %360, 16
  br i1 %361, label %362, label %410

362:                                              ; preds = %359
  %363 = load i32, ptr %13, align 4, !tbaa !40
  %364 = load ptr, ptr @img, align 8, !tbaa !13
  %365 = getelementptr inbounds nuw %struct.ImageParameters, ptr %364, i32 0, i32 44
  %366 = load i32, ptr %365, align 4, !tbaa !97
  %367 = add nsw i32 %363, %366
  store i32 %367, ptr %15, align 4, !tbaa !40
  %368 = load i32, ptr %13, align 4, !tbaa !40
  %369 = load ptr, ptr @img, align 8, !tbaa !13
  %370 = getelementptr inbounds nuw %struct.ImageParameters, ptr %369, i32 0, i32 40
  %371 = load i32, ptr %370, align 4, !tbaa !96
  %372 = add nsw i32 %368, %371
  store i32 %372, ptr %16, align 4, !tbaa !40
  %373 = load ptr, ptr @img, align 8, !tbaa !13
  %374 = getelementptr inbounds nuw %struct.ImageParameters, ptr %373, i32 0, i32 43
  %375 = load i32, ptr %374, align 8, !tbaa !119
  store i32 %375, ptr %12, align 4, !tbaa !40
  br label %376

376:                                              ; preds = %403, %362
  %377 = load i32, ptr %12, align 4, !tbaa !40
  %378 = load ptr, ptr @img, align 8, !tbaa !13
  %379 = getelementptr inbounds nuw %struct.ImageParameters, ptr %378, i32 0, i32 43
  %380 = load i32, ptr %379, align 8, !tbaa !119
  %381 = add nsw i32 %380, 16
  %382 = icmp slt i32 %377, %381
  br i1 %382, label %383, label %406

383:                                              ; preds = %376
  %384 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %385 = load i32, ptr %15, align 4, !tbaa !40
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds ptr, ptr %384, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !65
  %389 = load i32, ptr %12, align 4, !tbaa !40
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i16, ptr %388, i64 %390
  %392 = load i16, ptr %391, align 2, !tbaa !67
  %393 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %394 = getelementptr inbounds nuw %struct.storable_picture, ptr %393, i32 0, i32 29
  %395 = load ptr, ptr %394, align 8, !tbaa !100
  %396 = load i32, ptr %16, align 4, !tbaa !40
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds ptr, ptr %395, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !65
  %400 = load i32, ptr %12, align 4, !tbaa !40
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i16, ptr %399, i64 %401
  store i16 %392, ptr %402, align 2, !tbaa !67
  br label %403

403:                                              ; preds = %383
  %404 = load i32, ptr %12, align 4, !tbaa !40
  %405 = add nsw i32 %404, 1
  store i32 %405, ptr %12, align 4, !tbaa !40
  br label %376, !llvm.loop !250

406:                                              ; preds = %376
  br label %407

407:                                              ; preds = %406
  %408 = load i32, ptr %13, align 4, !tbaa !40
  %409 = add nsw i32 %408, 1
  store i32 %409, ptr %13, align 4, !tbaa !40
  br label %359, !llvm.loop !251

410:                                              ; preds = %359
  %411 = load ptr, ptr @img, align 8, !tbaa !13
  %412 = getelementptr inbounds nuw %struct.ImageParameters, ptr %411, i32 0, i32 160
  %413 = load i32, ptr %412, align 8, !tbaa !252
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %501

415:                                              ; preds = %410
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %416

416:                                              ; preds = %497, %415
  %417 = load i32, ptr %13, align 4, !tbaa !40
  %418 = load ptr, ptr @img, align 8, !tbaa !13
  %419 = getelementptr inbounds nuw %struct.ImageParameters, ptr %418, i32 0, i32 163
  %420 = load i32, ptr %419, align 4, !tbaa !24
  %421 = icmp slt i32 %417, %420
  br i1 %421, label %422, label %500

422:                                              ; preds = %416
  %423 = load i32, ptr %13, align 4, !tbaa !40
  %424 = load ptr, ptr @img, align 8, !tbaa !13
  %425 = getelementptr inbounds nuw %struct.ImageParameters, ptr %424, i32 0, i32 46
  %426 = load i32, ptr %425, align 4, !tbaa !253
  %427 = add nsw i32 %423, %426
  store i32 %427, ptr %15, align 4, !tbaa !40
  %428 = load i32, ptr %13, align 4, !tbaa !40
  %429 = load ptr, ptr @img, align 8, !tbaa !13
  %430 = getelementptr inbounds nuw %struct.ImageParameters, ptr %429, i32 0, i32 42
  %431 = load i32, ptr %430, align 4, !tbaa !254
  %432 = add nsw i32 %428, %431
  store i32 %432, ptr %16, align 4, !tbaa !40
  %433 = load ptr, ptr @img, align 8, !tbaa !13
  %434 = getelementptr inbounds nuw %struct.ImageParameters, ptr %433, i32 0, i32 45
  %435 = load i32, ptr %434, align 8, !tbaa !255
  store i32 %435, ptr %12, align 4, !tbaa !40
  br label %436

436:                                              ; preds = %493, %422
  %437 = load i32, ptr %12, align 4, !tbaa !40
  %438 = load ptr, ptr @img, align 8, !tbaa !13
  %439 = getelementptr inbounds nuw %struct.ImageParameters, ptr %438, i32 0, i32 45
  %440 = load i32, ptr %439, align 8, !tbaa !255
  %441 = load ptr, ptr @img, align 8, !tbaa !13
  %442 = getelementptr inbounds nuw %struct.ImageParameters, ptr %441, i32 0, i32 162
  %443 = load i32, ptr %442, align 8, !tbaa !36
  %444 = add nsw i32 %440, %443
  %445 = icmp slt i32 %437, %444
  br i1 %445, label %446, label %496

446:                                              ; preds = %436
  %447 = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %448 = getelementptr inbounds ptr, ptr %447, i64 0
  %449 = load ptr, ptr %448, align 8, !tbaa !63
  %450 = load i32, ptr %15, align 4, !tbaa !40
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %449, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !65
  %454 = load i32, ptr %12, align 4, !tbaa !40
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i16, ptr %453, i64 %455
  %457 = load i16, ptr %456, align 2, !tbaa !67
  %458 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %459 = getelementptr inbounds nuw %struct.storable_picture, ptr %458, i32 0, i32 33
  %460 = load ptr, ptr %459, align 8, !tbaa !256
  %461 = getelementptr inbounds ptr, ptr %460, i64 0
  %462 = load ptr, ptr %461, align 8, !tbaa !63
  %463 = load i32, ptr %16, align 4, !tbaa !40
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds ptr, ptr %462, i64 %464
  %466 = load ptr, ptr %465, align 8, !tbaa !65
  %467 = load i32, ptr %12, align 4, !tbaa !40
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i16, ptr %466, i64 %468
  store i16 %457, ptr %469, align 2, !tbaa !67
  %470 = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %471 = getelementptr inbounds ptr, ptr %470, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !63
  %473 = load i32, ptr %15, align 4, !tbaa !40
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds ptr, ptr %472, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !65
  %477 = load i32, ptr %12, align 4, !tbaa !40
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i16, ptr %476, i64 %478
  %480 = load i16, ptr %479, align 2, !tbaa !67
  %481 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %482 = getelementptr inbounds nuw %struct.storable_picture, ptr %481, i32 0, i32 33
  %483 = load ptr, ptr %482, align 8, !tbaa !256
  %484 = getelementptr inbounds ptr, ptr %483, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !63
  %486 = load i32, ptr %16, align 4, !tbaa !40
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds ptr, ptr %485, i64 %487
  %489 = load ptr, ptr %488, align 8, !tbaa !65
  %490 = load i32, ptr %12, align 4, !tbaa !40
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i16, ptr %489, i64 %491
  store i16 %480, ptr %492, align 2, !tbaa !67
  br label %493

493:                                              ; preds = %446
  %494 = load i32, ptr %12, align 4, !tbaa !40
  %495 = add nsw i32 %494, 1
  store i32 %495, ptr %12, align 4, !tbaa !40
  br label %436, !llvm.loop !257

496:                                              ; preds = %436
  br label %497

497:                                              ; preds = %496
  %498 = load i32, ptr %13, align 4, !tbaa !40
  %499 = add nsw i32 %498, 1
  store i32 %499, ptr %13, align 4, !tbaa !40
  br label %416, !llvm.loop !258

500:                                              ; preds = %416
  br label %501

501:                                              ; preds = %500, %410
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %502

502:                                              ; preds = %534, %501
  %503 = load i32, ptr %13, align 4, !tbaa !40
  %504 = icmp slt i32 %503, 4
  br i1 %504, label %505, label %537

505:                                              ; preds = %502
  store i32 0, ptr %12, align 4, !tbaa !40
  br label %506

506:                                              ; preds = %530, %505
  %507 = load i32, ptr %12, align 4, !tbaa !40
  %508 = load ptr, ptr @img, align 8, !tbaa !13
  %509 = getelementptr inbounds nuw %struct.ImageParameters, ptr %508, i32 0, i32 158
  %510 = load i32, ptr %509, align 8, !tbaa !213
  %511 = add nsw i32 4, %510
  %512 = icmp slt i32 %507, %511
  br i1 %512, label %513, label %533

513:                                              ; preds = %506
  %514 = load ptr, ptr @img, align 8, !tbaa !13
  %515 = getelementptr inbounds nuw %struct.ImageParameters, ptr %514, i32 0, i32 34
  %516 = load ptr, ptr %515, align 8, !tbaa !259
  %517 = load ptr, ptr @img, align 8, !tbaa !13
  %518 = getelementptr inbounds nuw %struct.ImageParameters, ptr %517, i32 0, i32 3
  %519 = load i32, ptr %518, align 4, !tbaa !120
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds ptr, ptr %516, i64 %520
  %522 = load ptr, ptr %521, align 8, !tbaa !21
  %523 = load i32, ptr %13, align 4, !tbaa !40
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds ptr, ptr %522, i64 %524
  %526 = load ptr, ptr %525, align 8, !tbaa !92
  %527 = load i32, ptr %12, align 4, !tbaa !40
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, ptr %526, i64 %528
  store i32 16, ptr %529, align 4, !tbaa !40
  br label %530

530:                                              ; preds = %513
  %531 = load i32, ptr %12, align 4, !tbaa !40
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr %12, align 4, !tbaa !40
  br label %506, !llvm.loop !260

533:                                              ; preds = %506
  br label %534

534:                                              ; preds = %533
  %535 = load i32, ptr %13, align 4, !tbaa !40
  %536 = add nsw i32 %535, 1
  store i32 %536, ptr %13, align 4, !tbaa !40
  br label %502, !llvm.loop !261

537:                                              ; preds = %502
  br label %538

538:                                              ; preds = %537, %355
  br label %539

539:                                              ; preds = %538, %350
  br label %540

540:                                              ; preds = %539, %345
  br label %541

541:                                              ; preds = %540, %337
  br label %542

542:                                              ; preds = %541, %332
  br label %543

543:                                              ; preds = %542, %328
  %544 = load ptr, ptr @input, align 8, !tbaa !13
  %545 = getelementptr inbounds nuw %struct.InputParameters, ptr %544, i32 0, i32 113
  %546 = load i32, ptr %545, align 8, !tbaa !23
  %547 = icmp eq i32 %546, 3
  br i1 %547, label %548, label %561

548:                                              ; preds = %543
  %549 = load ptr, ptr @img, align 8, !tbaa !13
  %550 = getelementptr inbounds nuw %struct.ImageParameters, ptr %549, i32 0, i32 5
  %551 = load i32, ptr %550, align 4, !tbaa !39
  %552 = icmp ne i32 %551, 1
  br i1 %552, label %553, label %561

553:                                              ; preds = %548
  %554 = load i32, ptr %8, align 4, !tbaa !40
  %555 = icmp eq i32 %554, 10
  br i1 %555, label %556, label %558

556:                                              ; preds = %553
  %557 = load i32, ptr %11, align 4, !tbaa !40
  br label %559

558:                                              ; preds = %553
  br label %559

559:                                              ; preds = %558, %556
  %560 = phi i32 [ %557, %556 ], [ -1, %558 ]
  call void @compute_residue_mb(i32 noundef signext %560)
  br label %561

561:                                              ; preds = %559, %548, %543
  %562 = load ptr, ptr @input, align 8, !tbaa !13
  %563 = getelementptr inbounds nuw %struct.InputParameters, ptr %562, i32 0, i32 157
  %564 = load i32, ptr %563, align 4, !tbaa !262
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %581

566:                                              ; preds = %561
  %567 = load i32, ptr %8, align 4, !tbaa !40
  %568 = icmp eq i32 %567, 10
  br i1 %568, label %569, label %576

569:                                              ; preds = %566
  %570 = load ptr, ptr @img, align 8, !tbaa !13
  %571 = getelementptr inbounds nuw %struct.ImageParameters, ptr %570, i32 0, i32 48
  %572 = load i32, ptr %11, align 4, !tbaa !40
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [5 x [16 x [16 x i16]]], ptr %571, i64 0, i64 %573
  %575 = getelementptr inbounds [16 x [16 x i16]], ptr %574, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 @pred, ptr align 8 %575, i64 512, i1 false)
  br label %580

576:                                              ; preds = %566
  %577 = load ptr, ptr @img, align 8, !tbaa !13
  %578 = getelementptr inbounds nuw %struct.ImageParameters, ptr %577, i32 0, i32 51
  %579 = getelementptr inbounds [16 x [16 x i16]], ptr %578, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 @pred, ptr align 8 %579, i64 512, i1 false)
  br label %580

580:                                              ; preds = %576, %569
  br label %581

581:                                              ; preds = %580, %561
  %582 = load ptr, ptr @img, align 8, !tbaa !13
  %583 = getelementptr inbounds nuw %struct.ImageParameters, ptr %582, i32 0, i32 94
  store i32 0, ptr %583, align 4, !tbaa !263
  store i32 0, ptr %28, align 4, !tbaa !40
  %584 = load ptr, ptr @img, align 8, !tbaa !13
  %585 = getelementptr inbounds nuw %struct.ImageParameters, ptr %584, i32 0, i32 160
  %586 = load i32, ptr %585, align 8, !tbaa !252
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %592

588:                                              ; preds = %581
  %589 = load i32, ptr %8, align 4, !tbaa !40
  %590 = icmp ne i32 %589, 14
  br i1 %590, label %591, label %592

591:                                              ; preds = %588
  call void @ChromaResidualCoding(ptr noundef %28)
  br label %592

592:                                              ; preds = %591, %588, %581
  %593 = load i32, ptr %8, align 4, !tbaa !40
  %594 = icmp eq i32 %593, 10
  br i1 %594, label %595, label %603

595:                                              ; preds = %592
  %596 = load ptr, ptr %22, align 8, !tbaa !153
  %597 = getelementptr inbounds nuw %struct.macroblock, ptr %596, i32 0, i32 12
  %598 = load i32, ptr %597, align 4, !tbaa !195
  %599 = load i32, ptr %11, align 4, !tbaa !40
  %600 = call signext i32 @I16Offset(i32 noundef signext %598, i32 noundef signext %599)
  %601 = load ptr, ptr @img, align 8, !tbaa !13
  %602 = getelementptr inbounds nuw %struct.ImageParameters, ptr %601, i32 0, i32 94
  store i32 %600, ptr %602, align 4, !tbaa !263
  br label %603

603:                                              ; preds = %595, %592
  %604 = load ptr, ptr @input, align 8, !tbaa !13
  %605 = getelementptr inbounds nuw %struct.InputParameters, ptr %604, i32 0, i32 113
  %606 = load i32, ptr %605, align 8, !tbaa !23
  %607 = icmp eq i32 %606, 3
  br i1 %607, label %608, label %817

608:                                              ; preds = %603
  %609 = load ptr, ptr @img, align 8, !tbaa !13
  %610 = getelementptr inbounds nuw %struct.ImageParameters, ptr %609, i32 0, i32 5
  %611 = load i32, ptr %610, align 4, !tbaa !39
  %612 = icmp ne i32 %611, 1
  br i1 %612, label %613, label %817

613:                                              ; preds = %608
  store i32 0, ptr %14, align 4, !tbaa !40
  br label %614

614:                                              ; preds = %690, %613
  %615 = load i32, ptr %14, align 4, !tbaa !40
  %616 = load ptr, ptr @input, align 8, !tbaa !13
  %617 = getelementptr inbounds nuw %struct.InputParameters, ptr %616, i32 0, i32 127
  %618 = load i32, ptr %617, align 8, !tbaa !159
  %619 = icmp slt i32 %615, %618
  br i1 %619, label %620, label %693

620:                                              ; preds = %614
  %621 = load i32, ptr %14, align 4, !tbaa !40
  %622 = load ptr, ptr %22, align 8, !tbaa !153
  call void @decode_one_mb(i32 noundef signext %621, ptr noundef %622)
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %623

623:                                              ; preds = %686, %620
  %624 = load i32, ptr %13, align 4, !tbaa !40
  %625 = icmp slt i32 %624, 16
  br i1 %625, label %626, label %689

626:                                              ; preds = %623
  %627 = load ptr, ptr @img, align 8, !tbaa !13
  %628 = getelementptr inbounds nuw %struct.ImageParameters, ptr %627, i32 0, i32 43
  %629 = load i32, ptr %628, align 8, !tbaa !119
  store i32 %629, ptr %12, align 4, !tbaa !40
  br label %630

630:                                              ; preds = %682, %626
  %631 = load i32, ptr %12, align 4, !tbaa !40
  %632 = load ptr, ptr @img, align 8, !tbaa !13
  %633 = getelementptr inbounds nuw %struct.ImageParameters, ptr %632, i32 0, i32 43
  %634 = load i32, ptr %633, align 8, !tbaa !119
  %635 = add nsw i32 %634, 16
  %636 = icmp slt i32 %631, %635
  br i1 %636, label %637, label %685

637:                                              ; preds = %630
  %638 = load ptr, ptr @img, align 8, !tbaa !13
  %639 = getelementptr inbounds nuw %struct.ImageParameters, ptr %638, i32 0, i32 62
  %640 = load ptr, ptr %639, align 8, !tbaa !106
  %641 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %642 = load ptr, ptr @img, align 8, !tbaa !13
  %643 = getelementptr inbounds nuw %struct.ImageParameters, ptr %642, i32 0, i32 44
  %644 = load i32, ptr %643, align 4, !tbaa !97
  %645 = load i32, ptr %13, align 4, !tbaa !40
  %646 = add nsw i32 %644, %645
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds ptr, ptr %641, i64 %647
  %649 = load ptr, ptr %648, align 8, !tbaa !65
  %650 = load i32, ptr %12, align 4, !tbaa !40
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i16, ptr %649, i64 %651
  %653 = load i16, ptr %652, align 2, !tbaa !67
  %654 = zext i16 %653 to i32
  %655 = load ptr, ptr @decs, align 8, !tbaa !13
  %656 = getelementptr inbounds nuw %struct.Decoders, ptr %655, i32 0, i32 1
  %657 = load ptr, ptr %656, align 8, !tbaa !160
  %658 = load i32, ptr %14, align 4, !tbaa !40
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds ptr, ptr %657, i64 %659
  %661 = load ptr, ptr %660, align 8, !tbaa !63
  %662 = load ptr, ptr @img, align 8, !tbaa !13
  %663 = getelementptr inbounds nuw %struct.ImageParameters, ptr %662, i32 0, i32 44
  %664 = load i32, ptr %663, align 4, !tbaa !97
  %665 = load i32, ptr %13, align 4, !tbaa !40
  %666 = add nsw i32 %664, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds ptr, ptr %661, i64 %667
  %669 = load ptr, ptr %668, align 8, !tbaa !65
  %670 = load i32, ptr %12, align 4, !tbaa !40
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i16, ptr %669, i64 %671
  %673 = load i16, ptr %672, align 2, !tbaa !67
  %674 = zext i16 %673 to i32
  %675 = sub nsw i32 %654, %674
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i32, ptr %640, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !40
  %679 = sext i32 %678 to i64
  %680 = load i64, ptr %19, align 8, !tbaa !93
  %681 = add nsw i64 %680, %679
  store i64 %681, ptr %19, align 8, !tbaa !93
  br label %682

682:                                              ; preds = %637
  %683 = load i32, ptr %12, align 4, !tbaa !40
  %684 = add nsw i32 %683, 1
  store i32 %684, ptr %12, align 4, !tbaa !40
  br label %630, !llvm.loop !264

685:                                              ; preds = %630
  br label %686

686:                                              ; preds = %685
  %687 = load i32, ptr %13, align 4, !tbaa !40
  %688 = add nsw i32 %687, 1
  store i32 %688, ptr %13, align 4, !tbaa !40
  br label %623, !llvm.loop !265

689:                                              ; preds = %623
  br label %690

690:                                              ; preds = %689
  %691 = load i32, ptr %14, align 4, !tbaa !40
  %692 = add nsw i32 %691, 1
  store i32 %692, ptr %14, align 4, !tbaa !40
  br label %614, !llvm.loop !266

693:                                              ; preds = %614
  %694 = load ptr, ptr @input, align 8, !tbaa !13
  %695 = getelementptr inbounds nuw %struct.InputParameters, ptr %694, i32 0, i32 127
  %696 = load i32, ptr %695, align 8, !tbaa !159
  %697 = sext i32 %696 to i64
  %698 = load i64, ptr %19, align 8, !tbaa !93
  %699 = sdiv i64 %698, %697
  store i64 %699, ptr %19, align 8, !tbaa !93
  %700 = load ptr, ptr @img, align 8, !tbaa !13
  %701 = getelementptr inbounds nuw %struct.ImageParameters, ptr %700, i32 0, i32 160
  %702 = load i32, ptr %701, align 8, !tbaa !252
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %816

704:                                              ; preds = %693
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %705

705:                                              ; preds = %812, %704
  %706 = load i32, ptr %13, align 4, !tbaa !40
  %707 = load ptr, ptr @img, align 8, !tbaa !13
  %708 = getelementptr inbounds nuw %struct.ImageParameters, ptr %707, i32 0, i32 163
  %709 = load i32, ptr %708, align 4, !tbaa !24
  %710 = icmp slt i32 %706, %709
  br i1 %710, label %711, label %815

711:                                              ; preds = %705
  %712 = load i32, ptr %13, align 4, !tbaa !40
  %713 = load ptr, ptr @img, align 8, !tbaa !13
  %714 = getelementptr inbounds nuw %struct.ImageParameters, ptr %713, i32 0, i32 46
  %715 = load i32, ptr %714, align 4, !tbaa !253
  %716 = add nsw i32 %712, %715
  store i32 %716, ptr %15, align 4, !tbaa !40
  %717 = load i32, ptr %13, align 4, !tbaa !40
  %718 = load ptr, ptr @img, align 8, !tbaa !13
  %719 = getelementptr inbounds nuw %struct.ImageParameters, ptr %718, i32 0, i32 42
  %720 = load i32, ptr %719, align 4, !tbaa !254
  %721 = add nsw i32 %717, %720
  store i32 %721, ptr %16, align 4, !tbaa !40
  %722 = load ptr, ptr @img, align 8, !tbaa !13
  %723 = getelementptr inbounds nuw %struct.ImageParameters, ptr %722, i32 0, i32 45
  %724 = load i32, ptr %723, align 8, !tbaa !255
  store i32 %724, ptr %12, align 4, !tbaa !40
  br label %725

725:                                              ; preds = %808, %711
  %726 = load i32, ptr %12, align 4, !tbaa !40
  %727 = load ptr, ptr @img, align 8, !tbaa !13
  %728 = getelementptr inbounds nuw %struct.ImageParameters, ptr %727, i32 0, i32 45
  %729 = load i32, ptr %728, align 8, !tbaa !255
  %730 = load ptr, ptr @img, align 8, !tbaa !13
  %731 = getelementptr inbounds nuw %struct.ImageParameters, ptr %730, i32 0, i32 162
  %732 = load i32, ptr %731, align 8, !tbaa !36
  %733 = add nsw i32 %729, %732
  %734 = icmp slt i32 %726, %733
  br i1 %734, label %735, label %811

735:                                              ; preds = %725
  %736 = load ptr, ptr @img, align 8, !tbaa !13
  %737 = getelementptr inbounds nuw %struct.ImageParameters, ptr %736, i32 0, i32 62
  %738 = load ptr, ptr %737, align 8, !tbaa !106
  %739 = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %740 = getelementptr inbounds ptr, ptr %739, i64 0
  %741 = load ptr, ptr %740, align 8, !tbaa !63
  %742 = load i32, ptr %15, align 4, !tbaa !40
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds ptr, ptr %741, i64 %743
  %745 = load ptr, ptr %744, align 8, !tbaa !65
  %746 = load i32, ptr %12, align 4, !tbaa !40
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i16, ptr %745, i64 %747
  %749 = load i16, ptr %748, align 2, !tbaa !67
  %750 = zext i16 %749 to i32
  %751 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %752 = getelementptr inbounds nuw %struct.storable_picture, ptr %751, i32 0, i32 33
  %753 = load ptr, ptr %752, align 8, !tbaa !256
  %754 = getelementptr inbounds ptr, ptr %753, i64 0
  %755 = load ptr, ptr %754, align 8, !tbaa !63
  %756 = load i32, ptr %16, align 4, !tbaa !40
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds ptr, ptr %755, i64 %757
  %759 = load ptr, ptr %758, align 8, !tbaa !65
  %760 = load i32, ptr %12, align 4, !tbaa !40
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i16, ptr %759, i64 %761
  %763 = load i16, ptr %762, align 2, !tbaa !67
  %764 = zext i16 %763 to i32
  %765 = sub nsw i32 %750, %764
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds i32, ptr %738, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !40
  %769 = sext i32 %768 to i64
  %770 = load i64, ptr %19, align 8, !tbaa !93
  %771 = add nsw i64 %770, %769
  store i64 %771, ptr %19, align 8, !tbaa !93
  %772 = load ptr, ptr @img, align 8, !tbaa !13
  %773 = getelementptr inbounds nuw %struct.ImageParameters, ptr %772, i32 0, i32 62
  %774 = load ptr, ptr %773, align 8, !tbaa !106
  %775 = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %776 = getelementptr inbounds ptr, ptr %775, i64 1
  %777 = load ptr, ptr %776, align 8, !tbaa !63
  %778 = load i32, ptr %15, align 4, !tbaa !40
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds ptr, ptr %777, i64 %779
  %781 = load ptr, ptr %780, align 8, !tbaa !65
  %782 = load i32, ptr %12, align 4, !tbaa !40
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds i16, ptr %781, i64 %783
  %785 = load i16, ptr %784, align 2, !tbaa !67
  %786 = zext i16 %785 to i32
  %787 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %788 = getelementptr inbounds nuw %struct.storable_picture, ptr %787, i32 0, i32 33
  %789 = load ptr, ptr %788, align 8, !tbaa !256
  %790 = getelementptr inbounds ptr, ptr %789, i64 1
  %791 = load ptr, ptr %790, align 8, !tbaa !63
  %792 = load i32, ptr %16, align 4, !tbaa !40
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds ptr, ptr %791, i64 %793
  %795 = load ptr, ptr %794, align 8, !tbaa !65
  %796 = load i32, ptr %12, align 4, !tbaa !40
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds i16, ptr %795, i64 %797
  %799 = load i16, ptr %798, align 2, !tbaa !67
  %800 = zext i16 %799 to i32
  %801 = sub nsw i32 %786, %800
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds i32, ptr %774, i64 %802
  %804 = load i32, ptr %803, align 4, !tbaa !40
  %805 = sext i32 %804 to i64
  %806 = load i64, ptr %19, align 8, !tbaa !93
  %807 = add nsw i64 %806, %805
  store i64 %807, ptr %19, align 8, !tbaa !93
  br label %808

808:                                              ; preds = %735
  %809 = load i32, ptr %12, align 4, !tbaa !40
  %810 = add nsw i32 %809, 1
  store i32 %810, ptr %12, align 4, !tbaa !40
  br label %725, !llvm.loop !267

811:                                              ; preds = %725
  br label %812

812:                                              ; preds = %811
  %813 = load i32, ptr %13, align 4, !tbaa !40
  %814 = add nsw i32 %813, 1
  store i32 %814, ptr %13, align 4, !tbaa !40
  br label %705, !llvm.loop !268

815:                                              ; preds = %705
  br label %816

816:                                              ; preds = %815, %693
  br label %1000

817:                                              ; preds = %608, %603
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %818

818:                                              ; preds = %879, %817
  %819 = load i32, ptr %13, align 4, !tbaa !40
  %820 = icmp slt i32 %819, 16
  br i1 %820, label %821, label %882

821:                                              ; preds = %818
  %822 = load i32, ptr %13, align 4, !tbaa !40
  %823 = load ptr, ptr @img, align 8, !tbaa !13
  %824 = getelementptr inbounds nuw %struct.ImageParameters, ptr %823, i32 0, i32 44
  %825 = load i32, ptr %824, align 4, !tbaa !97
  %826 = add nsw i32 %822, %825
  store i32 %826, ptr %15, align 4, !tbaa !40
  %827 = load i32, ptr %13, align 4, !tbaa !40
  %828 = load ptr, ptr @img, align 8, !tbaa !13
  %829 = getelementptr inbounds nuw %struct.ImageParameters, ptr %828, i32 0, i32 40
  %830 = load i32, ptr %829, align 4, !tbaa !96
  %831 = add nsw i32 %827, %830
  store i32 %831, ptr %16, align 4, !tbaa !40
  %832 = load ptr, ptr @img, align 8, !tbaa !13
  %833 = getelementptr inbounds nuw %struct.ImageParameters, ptr %832, i32 0, i32 43
  %834 = load i32, ptr %833, align 8, !tbaa !119
  store i32 %834, ptr %12, align 4, !tbaa !40
  br label %835

835:                                              ; preds = %875, %821
  %836 = load i32, ptr %12, align 4, !tbaa !40
  %837 = load ptr, ptr @img, align 8, !tbaa !13
  %838 = getelementptr inbounds nuw %struct.ImageParameters, ptr %837, i32 0, i32 43
  %839 = load i32, ptr %838, align 8, !tbaa !119
  %840 = add nsw i32 %839, 16
  %841 = icmp slt i32 %836, %840
  br i1 %841, label %842, label %878

842:                                              ; preds = %835
  %843 = load ptr, ptr @img, align 8, !tbaa !13
  %844 = getelementptr inbounds nuw %struct.ImageParameters, ptr %843, i32 0, i32 62
  %845 = load ptr, ptr %844, align 8, !tbaa !106
  %846 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %847 = load i32, ptr %15, align 4, !tbaa !40
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds ptr, ptr %846, i64 %848
  %850 = load ptr, ptr %849, align 8, !tbaa !65
  %851 = load i32, ptr %12, align 4, !tbaa !40
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i16, ptr %850, i64 %852
  %854 = load i16, ptr %853, align 2, !tbaa !67
  %855 = zext i16 %854 to i32
  %856 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %857 = getelementptr inbounds nuw %struct.storable_picture, ptr %856, i32 0, i32 29
  %858 = load ptr, ptr %857, align 8, !tbaa !100
  %859 = load i32, ptr %16, align 4, !tbaa !40
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds ptr, ptr %858, i64 %860
  %862 = load ptr, ptr %861, align 8, !tbaa !65
  %863 = load i32, ptr %12, align 4, !tbaa !40
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds i16, ptr %862, i64 %864
  %866 = load i16, ptr %865, align 2, !tbaa !67
  %867 = zext i16 %866 to i32
  %868 = sub nsw i32 %855, %867
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i32, ptr %845, i64 %869
  %871 = load i32, ptr %870, align 4, !tbaa !40
  %872 = sext i32 %871 to i64
  %873 = load i64, ptr %19, align 8, !tbaa !93
  %874 = add nsw i64 %873, %872
  store i64 %874, ptr %19, align 8, !tbaa !93
  br label %875

875:                                              ; preds = %842
  %876 = load i32, ptr %12, align 4, !tbaa !40
  %877 = add nsw i32 %876, 1
  store i32 %877, ptr %12, align 4, !tbaa !40
  br label %835, !llvm.loop !269

878:                                              ; preds = %835
  br label %879

879:                                              ; preds = %878
  %880 = load i32, ptr %13, align 4, !tbaa !40
  %881 = add nsw i32 %880, 1
  store i32 %881, ptr %13, align 4, !tbaa !40
  br label %818, !llvm.loop !270

882:                                              ; preds = %818
  %883 = load ptr, ptr @img, align 8, !tbaa !13
  %884 = getelementptr inbounds nuw %struct.ImageParameters, ptr %883, i32 0, i32 160
  %885 = load i32, ptr %884, align 8, !tbaa !252
  %886 = icmp ne i32 %885, 0
  br i1 %886, label %887, label %999

887:                                              ; preds = %882
  store i32 0, ptr %13, align 4, !tbaa !40
  br label %888

888:                                              ; preds = %995, %887
  %889 = load i32, ptr %13, align 4, !tbaa !40
  %890 = load ptr, ptr @img, align 8, !tbaa !13
  %891 = getelementptr inbounds nuw %struct.ImageParameters, ptr %890, i32 0, i32 163
  %892 = load i32, ptr %891, align 4, !tbaa !24
  %893 = icmp slt i32 %889, %892
  br i1 %893, label %894, label %998

894:                                              ; preds = %888
  %895 = load i32, ptr %13, align 4, !tbaa !40
  %896 = load ptr, ptr @img, align 8, !tbaa !13
  %897 = getelementptr inbounds nuw %struct.ImageParameters, ptr %896, i32 0, i32 46
  %898 = load i32, ptr %897, align 4, !tbaa !253
  %899 = add nsw i32 %895, %898
  store i32 %899, ptr %15, align 4, !tbaa !40
  %900 = load i32, ptr %13, align 4, !tbaa !40
  %901 = load ptr, ptr @img, align 8, !tbaa !13
  %902 = getelementptr inbounds nuw %struct.ImageParameters, ptr %901, i32 0, i32 42
  %903 = load i32, ptr %902, align 4, !tbaa !254
  %904 = add nsw i32 %900, %903
  store i32 %904, ptr %16, align 4, !tbaa !40
  %905 = load ptr, ptr @img, align 8, !tbaa !13
  %906 = getelementptr inbounds nuw %struct.ImageParameters, ptr %905, i32 0, i32 45
  %907 = load i32, ptr %906, align 8, !tbaa !255
  store i32 %907, ptr %12, align 4, !tbaa !40
  br label %908

908:                                              ; preds = %991, %894
  %909 = load i32, ptr %12, align 4, !tbaa !40
  %910 = load ptr, ptr @img, align 8, !tbaa !13
  %911 = getelementptr inbounds nuw %struct.ImageParameters, ptr %910, i32 0, i32 45
  %912 = load i32, ptr %911, align 8, !tbaa !255
  %913 = load ptr, ptr @img, align 8, !tbaa !13
  %914 = getelementptr inbounds nuw %struct.ImageParameters, ptr %913, i32 0, i32 162
  %915 = load i32, ptr %914, align 8, !tbaa !36
  %916 = add nsw i32 %912, %915
  %917 = icmp slt i32 %909, %916
  br i1 %917, label %918, label %994

918:                                              ; preds = %908
  %919 = load ptr, ptr @img, align 8, !tbaa !13
  %920 = getelementptr inbounds nuw %struct.ImageParameters, ptr %919, i32 0, i32 62
  %921 = load ptr, ptr %920, align 8, !tbaa !106
  %922 = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %923 = getelementptr inbounds ptr, ptr %922, i64 0
  %924 = load ptr, ptr %923, align 8, !tbaa !63
  %925 = load i32, ptr %15, align 4, !tbaa !40
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds ptr, ptr %924, i64 %926
  %928 = load ptr, ptr %927, align 8, !tbaa !65
  %929 = load i32, ptr %12, align 4, !tbaa !40
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds i16, ptr %928, i64 %930
  %932 = load i16, ptr %931, align 2, !tbaa !67
  %933 = zext i16 %932 to i32
  %934 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %935 = getelementptr inbounds nuw %struct.storable_picture, ptr %934, i32 0, i32 33
  %936 = load ptr, ptr %935, align 8, !tbaa !256
  %937 = getelementptr inbounds ptr, ptr %936, i64 0
  %938 = load ptr, ptr %937, align 8, !tbaa !63
  %939 = load i32, ptr %16, align 4, !tbaa !40
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds ptr, ptr %938, i64 %940
  %942 = load ptr, ptr %941, align 8, !tbaa !65
  %943 = load i32, ptr %12, align 4, !tbaa !40
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i16, ptr %942, i64 %944
  %946 = load i16, ptr %945, align 2, !tbaa !67
  %947 = zext i16 %946 to i32
  %948 = sub nsw i32 %933, %947
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds i32, ptr %921, i64 %949
  %951 = load i32, ptr %950, align 4, !tbaa !40
  %952 = sext i32 %951 to i64
  %953 = load i64, ptr %19, align 8, !tbaa !93
  %954 = add nsw i64 %953, %952
  store i64 %954, ptr %19, align 8, !tbaa !93
  %955 = load ptr, ptr @img, align 8, !tbaa !13
  %956 = getelementptr inbounds nuw %struct.ImageParameters, ptr %955, i32 0, i32 62
  %957 = load ptr, ptr %956, align 8, !tbaa !106
  %958 = load ptr, ptr @imgUV_org, align 8, !tbaa !61
  %959 = getelementptr inbounds ptr, ptr %958, i64 1
  %960 = load ptr, ptr %959, align 8, !tbaa !63
  %961 = load i32, ptr %15, align 4, !tbaa !40
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds ptr, ptr %960, i64 %962
  %964 = load ptr, ptr %963, align 8, !tbaa !65
  %965 = load i32, ptr %12, align 4, !tbaa !40
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds i16, ptr %964, i64 %966
  %968 = load i16, ptr %967, align 2, !tbaa !67
  %969 = zext i16 %968 to i32
  %970 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %971 = getelementptr inbounds nuw %struct.storable_picture, ptr %970, i32 0, i32 33
  %972 = load ptr, ptr %971, align 8, !tbaa !256
  %973 = getelementptr inbounds ptr, ptr %972, i64 1
  %974 = load ptr, ptr %973, align 8, !tbaa !63
  %975 = load i32, ptr %16, align 4, !tbaa !40
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds ptr, ptr %974, i64 %976
  %978 = load ptr, ptr %977, align 8, !tbaa !65
  %979 = load i32, ptr %12, align 4, !tbaa !40
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i16, ptr %978, i64 %980
  %982 = load i16, ptr %981, align 2, !tbaa !67
  %983 = zext i16 %982 to i32
  %984 = sub nsw i32 %969, %983
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds i32, ptr %957, i64 %985
  %987 = load i32, ptr %986, align 4, !tbaa !40
  %988 = sext i32 %987 to i64
  %989 = load i64, ptr %19, align 8, !tbaa !93
  %990 = add nsw i64 %989, %988
  store i64 %990, ptr %19, align 8, !tbaa !93
  br label %991

991:                                              ; preds = %918
  %992 = load i32, ptr %12, align 4, !tbaa !40
  %993 = add nsw i32 %992, 1
  store i32 %993, ptr %12, align 4, !tbaa !40
  br label %908, !llvm.loop !271

994:                                              ; preds = %908
  br label %995

995:                                              ; preds = %994
  %996 = load i32, ptr %13, align 4, !tbaa !40
  %997 = add nsw i32 %996, 1
  store i32 %997, ptr %13, align 4, !tbaa !40
  br label %888, !llvm.loop !272

998:                                              ; preds = %888
  br label %999

999:                                              ; preds = %998, %882
  br label %1000

1000:                                             ; preds = %999, %816
  %1001 = load ptr, ptr @cs_cm, align 8, !tbaa !13
  call void @store_coding_state(ptr noundef %1001)
  %1002 = load i32, ptr %26, align 4, !tbaa !40
  %1003 = icmp ne i32 %1002, 0
  br i1 %1003, label %1004, label %1044

1004:                                             ; preds = %1000
  %1005 = load ptr, ptr %22, align 8, !tbaa !153
  %1006 = getelementptr inbounds nuw %struct.macroblock, ptr %1005, i32 0, i32 8
  %1007 = load i32, ptr %1006, align 8, !tbaa !170
  %1008 = icmp ne i32 %1007, 0
  br i1 %1008, label %1017, label %1009

1009:                                             ; preds = %1004
  %1010 = load i32, ptr %24, align 4, !tbaa !40
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1012, label %1030

1012:                                             ; preds = %1009
  %1013 = load ptr, ptr %22, align 8, !tbaa !153
  %1014 = getelementptr inbounds nuw %struct.macroblock, ptr %1013, i32 0, i32 12
  %1015 = load i32, ptr %1014, align 4, !tbaa !195
  %1016 = icmp ne i32 %1015, 0
  br i1 %1016, label %1017, label %1030

1017:                                             ; preds = %1012, %1004
  %1018 = load ptr, ptr @img, align 8, !tbaa !13
  %1019 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1018, i32 0, i32 33
  %1020 = load i32, ptr %1019, align 8, !tbaa !273
  store i32 %1020, ptr %25, align 4, !tbaa !40
  %1021 = call signext i32 @writeMBLayer(i32 noundef signext 1, ptr noundef %18)
  store i32 %1021, ptr %17, align 4, !tbaa !40
  %1022 = load i32, ptr %25, align 4, !tbaa !40
  %1023 = load i32, ptr %28, align 4, !tbaa !40
  call void @ue_linfo(i32 noundef signext %1022, i32 noundef signext %1023, ptr noundef %27, ptr noundef %28)
  %1024 = load i32, ptr %27, align 4, !tbaa !40
  %1025 = load i32, ptr %17, align 4, !tbaa !40
  %1026 = sub nsw i32 %1025, %1024
  store i32 %1026, ptr %17, align 4, !tbaa !40
  %1027 = load i32, ptr %25, align 4, !tbaa !40
  %1028 = load ptr, ptr @img, align 8, !tbaa !13
  %1029 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1028, i32 0, i32 33
  store i32 %1027, ptr %1029, align 8, !tbaa !273
  br label %1043

1030:                                             ; preds = %1012, %1009
  %1031 = load ptr, ptr @img, align 8, !tbaa !13
  %1032 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1031, i32 0, i32 33
  %1033 = load i32, ptr %1032, align 8, !tbaa !273
  %1034 = add nsw i32 %1033, 1
  %1035 = load i32, ptr %28, align 4, !tbaa !40
  call void @ue_linfo(i32 noundef signext %1034, i32 noundef signext %1035, ptr noundef %17, ptr noundef %28)
  %1036 = load ptr, ptr @img, align 8, !tbaa !13
  %1037 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1036, i32 0, i32 33
  %1038 = load i32, ptr %1037, align 8, !tbaa !273
  %1039 = load i32, ptr %28, align 4, !tbaa !40
  call void @ue_linfo(i32 noundef signext %1038, i32 noundef signext %1039, ptr noundef %27, ptr noundef %28)
  %1040 = load i32, ptr %27, align 4, !tbaa !40
  %1041 = load i32, ptr %17, align 4, !tbaa !40
  %1042 = sub nsw i32 %1041, %1040
  store i32 %1042, ptr %17, align 4, !tbaa !40
  br label %1043

1043:                                             ; preds = %1030, %1017
  br label %1046

1044:                                             ; preds = %1000
  %1045 = call signext i32 @writeMBLayer(i32 noundef signext 1, ptr noundef %18)
  store i32 %1045, ptr %17, align 4, !tbaa !40
  br label %1046

1046:                                             ; preds = %1044, %1043
  %1047 = load ptr, ptr @cs_cm, align 8, !tbaa !13
  call void @reset_coding_state(ptr noundef %1047)
  %1048 = load i64, ptr %19, align 8, !tbaa !93
  %1049 = sitofp i64 %1048 to double
  %1050 = load double, ptr %7, align 8, !tbaa !38
  %1051 = load i32, ptr %17, align 4, !tbaa !40
  %1052 = sitofp i32 %1051 to double
  %1053 = call double @dmax(double noundef 5.000000e-01, double noundef %1052)
  %1054 = call double @llvm.fmuladd.f64(double %1050, double %1053, double %1049)
  store double %1054, ptr %20, align 8, !tbaa !38
  %1055 = load double, ptr %20, align 8, !tbaa !38
  %1056 = load ptr, ptr %9, align 8, !tbaa !241
  %1057 = load double, ptr %1056, align 8, !tbaa !38
  %1058 = fcmp oge double %1055, %1057
  br i1 %1058, label %1072, label %1059

1059:                                             ; preds = %1046
  %1060 = load ptr, ptr @img, align 8, !tbaa !13
  %1061 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1060, i32 0, i32 11
  %1062 = load i32, ptr %1061, align 4, !tbaa !208
  %1063 = icmp eq i32 %1062, 0
  br i1 %1063, label %1064, label %1092

1064:                                             ; preds = %1059
  %1065 = load ptr, ptr @img, align 8, !tbaa !13
  %1066 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1065, i32 0, i32 161
  %1067 = load i32, ptr %1066, align 4, !tbaa !209
  %1068 = icmp eq i32 %1067, 1
  br i1 %1068, label %1069, label %1092

1069:                                             ; preds = %1064
  %1070 = load i64, ptr %19, align 8, !tbaa !93
  %1071 = icmp ne i64 %1070, 0
  br i1 %1071, label %1072, label %1092

1072:                                             ; preds = %1069, %1046
  %1073 = load ptr, ptr @img, align 8, !tbaa !13
  %1074 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1073, i32 0, i32 5
  %1075 = load i32, ptr %1074, align 4, !tbaa !39
  %1076 = icmp ne i32 %1075, 0
  br i1 %1076, label %1090, label %1077

1077:                                             ; preds = %1072
  %1078 = load i32, ptr %8, align 4, !tbaa !40
  %1079 = icmp ne i32 %1078, 0
  br i1 %1079, label %1090, label %1080

1080:                                             ; preds = %1077
  %1081 = load double, ptr %20, align 8, !tbaa !38
  %1082 = load ptr, ptr %9, align 8, !tbaa !241
  %1083 = load double, ptr %1082, align 8, !tbaa !38
  %1084 = fcmp une double %1081, %1083
  br i1 %1084, label %1090, label %1085

1085:                                             ; preds = %1080
  %1086 = load ptr, ptr @input, align 8, !tbaa !13
  %1087 = getelementptr inbounds nuw %struct.InputParameters, ptr %1086, i32 0, i32 0
  %1088 = load i32, ptr %1087, align 8, !tbaa !274
  %1089 = icmp sge i32 %1088, 100
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1085, %1080, %1077, %1072
  store i32 0, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %1153

1091:                                             ; preds = %1085
  br label %1092

1092:                                             ; preds = %1091, %1069, %1064, %1059
  %1093 = load ptr, ptr @img, align 8, !tbaa !13
  %1094 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1093, i32 0, i32 100
  %1095 = load i32, ptr %1094, align 4, !tbaa !231
  %1096 = icmp ne i32 %1095, 0
  br i1 %1096, label %1097, label %1145

1097:                                             ; preds = %1092
  %1098 = load i32, ptr %8, align 4, !tbaa !40
  %1099 = icmp ne i32 %1098, 0
  br i1 %1099, label %1100, label %1101

1100:                                             ; preds = %1097
  br i1 false, label %1112, label %1145

1101:                                             ; preds = %1097
  %1102 = load ptr, ptr @img, align 8, !tbaa !13
  %1103 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1102, i32 0, i32 5
  %1104 = load i32, ptr %1103, align 4, !tbaa !39
  %1105 = icmp eq i32 %1104, 1
  br i1 %1105, label %1106, label %1111

1106:                                             ; preds = %1101
  %1107 = load ptr, ptr %22, align 8, !tbaa !153
  %1108 = getelementptr inbounds nuw %struct.macroblock, ptr %1107, i32 0, i32 12
  %1109 = load i32, ptr %1108, align 4, !tbaa !195
  %1110 = icmp ne i32 %1109, 0
  br i1 %1110, label %1145, label %1112

1111:                                             ; preds = %1101
  br i1 true, label %1112, label %1145

1112:                                             ; preds = %1111, %1106, %1100
  %1113 = load ptr, ptr @img, align 8, !tbaa !13
  %1114 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1113, i32 0, i32 3
  %1115 = load i32, ptr %1114, align 4, !tbaa !120
  %1116 = and i32 %1115, 1
  %1117 = icmp ne i32 %1116, 0
  br i1 %1117, label %1118, label %1144

1118:                                             ; preds = %1112
  %1119 = load ptr, ptr %23, align 8, !tbaa !153
  %1120 = getelementptr inbounds nuw %struct.macroblock, ptr %1119, i32 0, i32 8
  %1121 = load i32, ptr %1120, align 8, !tbaa !170
  %1122 = icmp ne i32 %1121, 0
  br i1 %1122, label %1123, label %1124

1123:                                             ; preds = %1118
  br i1 false, label %1135, label %1143

1124:                                             ; preds = %1118
  %1125 = load ptr, ptr @img, align 8, !tbaa !13
  %1126 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1125, i32 0, i32 5
  %1127 = load i32, ptr %1126, align 4, !tbaa !39
  %1128 = icmp eq i32 %1127, 1
  br i1 %1128, label %1129, label %1134

1129:                                             ; preds = %1124
  %1130 = load ptr, ptr %23, align 8, !tbaa !153
  %1131 = getelementptr inbounds nuw %struct.macroblock, ptr %1130, i32 0, i32 12
  %1132 = load i32, ptr %1131, align 4, !tbaa !195
  %1133 = icmp ne i32 %1132, 0
  br i1 %1133, label %1143, label %1135

1134:                                             ; preds = %1124
  br i1 true, label %1135, label %1143

1135:                                             ; preds = %1134, %1129, %1123
  %1136 = call signext i32 @field_flag_inference()
  %1137 = load ptr, ptr %22, align 8, !tbaa !153
  %1138 = getelementptr inbounds nuw %struct.macroblock, ptr %1137, i32 0, i32 19
  %1139 = load i32, ptr %1138, align 8, !tbaa !245
  %1140 = icmp eq i32 %1136, %1139
  br i1 %1140, label %1142, label %1141

1141:                                             ; preds = %1135
  store i32 0, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %1153

1142:                                             ; preds = %1135
  br label %1143

1143:                                             ; preds = %1142, %1134, %1129, %1123
  br label %1144

1144:                                             ; preds = %1143, %1112
  br label %1145

1145:                                             ; preds = %1144, %1111, %1106, %1100, %1092
  %1146 = load double, ptr %20, align 8, !tbaa !38
  %1147 = load ptr, ptr %9, align 8, !tbaa !241
  store double %1146, ptr %1147, align 8, !tbaa !38
  %1148 = load double, ptr %7, align 8, !tbaa !38
  %1149 = load i32, ptr %18, align 4, !tbaa !40
  %1150 = sitofp i32 %1149 to double
  %1151 = fmul double %1148, %1150
  %1152 = load ptr, ptr %10, align 8, !tbaa !241
  store double %1151, ptr %1152, align 8, !tbaa !38
  store i32 1, ptr %6, align 4
  store i32 1, ptr %31, align 4
  br label %1153

1153:                                             ; preds = %1145, %1141, %1090, %327, %313, %230, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  %1154 = load i32, ptr %6, align 4
  ret i32 %1154
}

declare signext i32 @FmoGetPreviousMBNr(i32 noundef signext) #1

declare void @LumaResidualCoding() #1

declare signext i32 @Mode_Decision_for_new_Intra8x8Macroblock(double noundef, ptr noundef) #1

declare void @compute_residue_mb(i32 noundef signext) #1

declare void @ChromaResidualCoding(ptr noundef) #1

declare void @decode_one_mb(i32 noundef signext, ptr noundef) #1

declare void @store_coding_state(ptr noundef) #1

declare signext i32 @writeMBLayer(i32 noundef signext, ptr noundef) #1

; Function Attrs: inlinehint nounwind
define internal double @dmax(double noundef %0, double noundef %1) #3 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8, !tbaa !38
  store double %1, ptr %4, align 8, !tbaa !38
  %5 = load double, ptr %3, align 8, !tbaa !38
  %6 = load double, ptr %4, align 8, !tbaa !38
  %7 = fcmp ogt double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, ptr %3, align 8, !tbaa !38
  br label %12

10:                                               ; preds = %2
  %11 = load double, ptr %4, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: nounwind
define dso_local signext i32 @field_flag_inference() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #8
  %3 = load ptr, ptr @img, align 8, !tbaa !13
  %4 = getelementptr inbounds nuw %struct.ImageParameters, ptr %3, i32 0, i32 61
  %5 = load ptr, ptr %4, align 8, !tbaa !143
  %6 = load ptr, ptr @img, align 8, !tbaa !13
  %7 = getelementptr inbounds nuw %struct.ImageParameters, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !120
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.macroblock, ptr %5, i64 %9
  store ptr %10, ptr %2, align 8, !tbaa !153
  %11 = load ptr, ptr %2, align 8, !tbaa !153
  %12 = getelementptr inbounds nuw %struct.macroblock, ptr %11, i32 0, i32 26
  %13 = load i32, ptr %12, align 4, !tbaa !275
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %0
  %16 = load ptr, ptr @img, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.ImageParameters, ptr %16, i32 0, i32 61
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = load ptr, ptr %2, align 8, !tbaa !153
  %20 = getelementptr inbounds nuw %struct.macroblock, ptr %19, i32 0, i32 22
  %21 = load i32, ptr %20, align 4, !tbaa !276
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.macroblock, ptr %18, i64 %22
  %24 = getelementptr inbounds nuw %struct.macroblock, ptr %23, i32 0, i32 19
  %25 = load i32, ptr %24, align 8, !tbaa !245
  store i32 %25, ptr %1, align 4, !tbaa !40
  br label %44

26:                                               ; preds = %0
  %27 = load ptr, ptr %2, align 8, !tbaa !153
  %28 = getelementptr inbounds nuw %struct.macroblock, ptr %27, i32 0, i32 27
  %29 = load i32, ptr %28, align 8, !tbaa !277
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load ptr, ptr @img, align 8, !tbaa !13
  %33 = getelementptr inbounds nuw %struct.ImageParameters, ptr %32, i32 0, i32 61
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  %35 = load ptr, ptr %2, align 8, !tbaa !153
  %36 = getelementptr inbounds nuw %struct.macroblock, ptr %35, i32 0, i32 23
  %37 = load i32, ptr %36, align 8, !tbaa !278
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.macroblock, ptr %34, i64 %38
  %40 = getelementptr inbounds nuw %struct.macroblock, ptr %39, i32 0, i32 19
  %41 = load i32, ptr %40, align 8, !tbaa !245
  store i32 %41, ptr %1, align 4, !tbaa !40
  br label %43

42:                                               ; preds = %26
  store i32 0, ptr %1, align 4, !tbaa !40
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %15
  %45 = load i32, ptr %1, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8
  ret i32 %45
}

; Function Attrs: nounwind
define dso_local void @store_adaptive_rounding_parameters(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !40
  store ptr %1, ptr %4, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  %7 = load i32, ptr %3, align 4, !tbaa !40
  %8 = icmp ne i32 %7, 9
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4, !tbaa !40
  %11 = icmp ne i32 %10, 10
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, ptr %3, align 4, !tbaa !40
  %14 = icmp ne i32 %13, 13
  br label %15

15:                                               ; preds = %12, %9, %2
  %16 = phi i1 [ false, %9 ], [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  store i32 %17, ptr %6, align 4, !tbaa !40
  %18 = load ptr, ptr %4, align 8, !tbaa !153
  %19 = getelementptr inbounds nuw %struct.macroblock, ptr %18, i32 0, i32 31
  %20 = load i32, ptr %19, align 8, !tbaa !169
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %69

22:                                               ; preds = %15
  %23 = load i32, ptr %3, align 4, !tbaa !40
  %24 = icmp eq i32 %23, 8
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load ptr, ptr @bestInterFAdjust8x8, align 8, !tbaa !21
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = getelementptr inbounds i32, ptr %28, i64 0
  %30 = load ptr, ptr @img, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 56
  %32 = load ptr, ptr %31, align 8, !tbaa !247
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !21
  %35 = getelementptr inbounds ptr, ptr %34, i64 0
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds i32, ptr %36, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr align 4 %37, i64 1024, i1 false)
  br label %68

38:                                               ; preds = %22
  %39 = load i32, ptr %6, align 4, !tbaa !40
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load ptr, ptr @bestInterFAdjust8x8, align 8, !tbaa !21
  %43 = getelementptr inbounds ptr, ptr %42, i64 0
  %44 = load ptr, ptr %43, align 8, !tbaa !92
  %45 = getelementptr inbounds i32, ptr %44, i64 0
  %46 = load ptr, ptr @img, align 8, !tbaa !13
  %47 = getelementptr inbounds nuw %struct.ImageParameters, ptr %46, i32 0, i32 56
  %48 = load ptr, ptr %47, align 8, !tbaa !247
  %49 = getelementptr inbounds ptr, ptr %48, i64 0
  %50 = load ptr, ptr %49, align 8, !tbaa !21
  %51 = getelementptr inbounds ptr, ptr %50, i64 0
  %52 = load ptr, ptr %51, align 8, !tbaa !92
  %53 = getelementptr inbounds i32, ptr %52, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %45, ptr align 4 %53, i64 1024, i1 false)
  br label %67

54:                                               ; preds = %38
  %55 = load ptr, ptr @bestIntraFAdjust8x8, align 8, !tbaa !21
  %56 = getelementptr inbounds ptr, ptr %55, i64 0
  %57 = load ptr, ptr %56, align 8, !tbaa !92
  %58 = getelementptr inbounds i32, ptr %57, i64 0
  %59 = load ptr, ptr @img, align 8, !tbaa !13
  %60 = getelementptr inbounds nuw %struct.ImageParameters, ptr %59, i32 0, i32 56
  %61 = load ptr, ptr %60, align 8, !tbaa !247
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !21
  %64 = getelementptr inbounds ptr, ptr %63, i64 0
  %65 = load ptr, ptr %64, align 8, !tbaa !92
  %66 = getelementptr inbounds i32, ptr %65, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %66, i64 1024, i1 false)
  br label %67

67:                                               ; preds = %54, %41
  br label %68

68:                                               ; preds = %67, %25
  br label %121

69:                                               ; preds = %15
  %70 = load i32, ptr %3, align 4, !tbaa !40
  %71 = icmp eq i32 %70, 8
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load ptr, ptr @bestInterFAdjust4x4, align 8, !tbaa !21
  %74 = getelementptr inbounds ptr, ptr %73, i64 0
  %75 = load ptr, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds i32, ptr %75, i64 0
  %77 = load ptr, ptr @img, align 8, !tbaa !13
  %78 = getelementptr inbounds nuw %struct.ImageParameters, ptr %77, i32 0, i32 55
  %79 = load ptr, ptr %78, align 8, !tbaa !140
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8, !tbaa !21
  %82 = getelementptr inbounds ptr, ptr %81, i64 0
  %83 = load ptr, ptr %82, align 8, !tbaa !92
  %84 = getelementptr inbounds i32, ptr %83, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %76, ptr align 4 %84, i64 1024, i1 false)
  br label %120

85:                                               ; preds = %69
  %86 = load i32, ptr %6, align 4, !tbaa !40
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load ptr, ptr @bestInterFAdjust4x4, align 8, !tbaa !21
  %90 = getelementptr inbounds ptr, ptr %89, i64 0
  %91 = load ptr, ptr %90, align 8, !tbaa !92
  %92 = getelementptr inbounds i32, ptr %91, i64 0
  %93 = load ptr, ptr @img, align 8, !tbaa !13
  %94 = getelementptr inbounds nuw %struct.ImageParameters, ptr %93, i32 0, i32 55
  %95 = load ptr, ptr %94, align 8, !tbaa !140
  %96 = getelementptr inbounds ptr, ptr %95, i64 0
  %97 = load ptr, ptr %96, align 8, !tbaa !21
  %98 = getelementptr inbounds ptr, ptr %97, i64 0
  %99 = load ptr, ptr %98, align 8, !tbaa !92
  %100 = getelementptr inbounds i32, ptr %99, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %92, ptr align 4 %100, i64 1024, i1 false)
  br label %119

101:                                              ; preds = %85
  %102 = load ptr, ptr @bestIntraFAdjust4x4, align 8, !tbaa !21
  %103 = getelementptr inbounds ptr, ptr %102, i64 0
  %104 = load ptr, ptr %103, align 8, !tbaa !92
  %105 = getelementptr inbounds i32, ptr %104, i64 0
  %106 = load ptr, ptr @img, align 8, !tbaa !13
  %107 = getelementptr inbounds nuw %struct.ImageParameters, ptr %106, i32 0, i32 55
  %108 = load ptr, ptr %107, align 8, !tbaa !140
  %109 = load i32, ptr %3, align 4, !tbaa !40
  %110 = add nsw i32 1, %109
  %111 = icmp eq i32 %110, 10
  %112 = zext i1 %111 to i32
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %108, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !21
  %116 = getelementptr inbounds ptr, ptr %115, i64 0
  %117 = load ptr, ptr %116, align 8, !tbaa !92
  %118 = getelementptr inbounds i32, ptr %117, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %105, ptr align 4 %118, i64 1024, i1 false)
  br label %119

119:                                              ; preds = %101, %88
  br label %120

120:                                              ; preds = %119, %72
  br label %121

121:                                              ; preds = %120, %68
  %122 = load ptr, ptr @input, align 8, !tbaa !13
  %123 = getelementptr inbounds nuw %struct.InputParameters, ptr %122, i32 0, i32 187
  %124 = load i32, ptr %123, align 4, !tbaa !279
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %375

126:                                              ; preds = %121
  %127 = load ptr, ptr %4, align 8, !tbaa !153
  %128 = getelementptr inbounds nuw %struct.macroblock, ptr %127, i32 0, i32 31
  %129 = load i32, ptr %128, align 8, !tbaa !169
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %192

131:                                              ; preds = %126
  %132 = load i32, ptr %3, align 4, !tbaa !40
  %133 = icmp eq i32 %132, 8
  br i1 %133, label %134, label %192

134:                                              ; preds = %131
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %135

135:                                              ; preds = %188, %134
  %136 = load i32, ptr %5, align 4, !tbaa !40
  %137 = load ptr, ptr @img, align 8, !tbaa !13
  %138 = getelementptr inbounds nuw %struct.ImageParameters, ptr %137, i32 0, i32 163
  %139 = load i32, ptr %138, align 4, !tbaa !24
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %191

141:                                              ; preds = %135
  %142 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  %143 = getelementptr inbounds ptr, ptr %142, i64 0
  %144 = load ptr, ptr %143, align 8, !tbaa !21
  %145 = load i32, ptr %5, align 4, !tbaa !40
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %144, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !92
  %149 = load ptr, ptr @img, align 8, !tbaa !13
  %150 = getelementptr inbounds nuw %struct.ImageParameters, ptr %149, i32 0, i32 58
  %151 = load ptr, ptr %150, align 8, !tbaa !280
  %152 = getelementptr inbounds ptr, ptr %151, i64 0
  %153 = load ptr, ptr %152, align 8, !tbaa !3
  %154 = getelementptr inbounds ptr, ptr %153, i64 0
  %155 = load ptr, ptr %154, align 8, !tbaa !21
  %156 = load i32, ptr %5, align 4, !tbaa !40
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %155, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !92
  %160 = load ptr, ptr @img, align 8, !tbaa !13
  %161 = getelementptr inbounds nuw %struct.ImageParameters, ptr %160, i32 0, i32 162
  %162 = load i32, ptr %161, align 8, !tbaa !36
  %163 = sext i32 %162 to i64
  %164 = mul i64 %163, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %148, ptr align 4 %159, i64 %164, i1 false)
  %165 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  %166 = getelementptr inbounds ptr, ptr %165, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !21
  %168 = load i32, ptr %5, align 4, !tbaa !40
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %167, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !92
  %172 = load ptr, ptr @img, align 8, !tbaa !13
  %173 = getelementptr inbounds nuw %struct.ImageParameters, ptr %172, i32 0, i32 58
  %174 = load ptr, ptr %173, align 8, !tbaa !280
  %175 = getelementptr inbounds ptr, ptr %174, i64 0
  %176 = load ptr, ptr %175, align 8, !tbaa !3
  %177 = getelementptr inbounds ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !21
  %179 = load i32, ptr %5, align 4, !tbaa !40
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %178, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !92
  %183 = load ptr, ptr @img, align 8, !tbaa !13
  %184 = getelementptr inbounds nuw %struct.ImageParameters, ptr %183, i32 0, i32 162
  %185 = load i32, ptr %184, align 8, !tbaa !36
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %171, ptr align 4 %182, i64 %187, i1 false)
  br label %188

188:                                              ; preds = %141
  %189 = load i32, ptr %5, align 4, !tbaa !40
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %5, align 4, !tbaa !40
  br label %135, !llvm.loop !281

191:                                              ; preds = %135
  br label %374

192:                                              ; preds = %131, %126
  %193 = load i32, ptr %3, align 4, !tbaa !40
  %194 = icmp eq i32 %193, 8
  br i1 %194, label %195, label %253

195:                                              ; preds = %192
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %196

196:                                              ; preds = %249, %195
  %197 = load i32, ptr %5, align 4, !tbaa !40
  %198 = load ptr, ptr @img, align 8, !tbaa !13
  %199 = getelementptr inbounds nuw %struct.ImageParameters, ptr %198, i32 0, i32 163
  %200 = load i32, ptr %199, align 4, !tbaa !24
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %252

202:                                              ; preds = %196
  %203 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  %204 = getelementptr inbounds ptr, ptr %203, i64 0
  %205 = load ptr, ptr %204, align 8, !tbaa !21
  %206 = load i32, ptr %5, align 4, !tbaa !40
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %205, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !92
  %210 = load ptr, ptr @img, align 8, !tbaa !13
  %211 = getelementptr inbounds nuw %struct.ImageParameters, ptr %210, i32 0, i32 57
  %212 = load ptr, ptr %211, align 8, !tbaa !248
  %213 = getelementptr inbounds ptr, ptr %212, i64 2
  %214 = load ptr, ptr %213, align 8, !tbaa !3
  %215 = getelementptr inbounds ptr, ptr %214, i64 0
  %216 = load ptr, ptr %215, align 8, !tbaa !21
  %217 = load i32, ptr %5, align 4, !tbaa !40
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds ptr, ptr %216, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !92
  %221 = load ptr, ptr @img, align 8, !tbaa !13
  %222 = getelementptr inbounds nuw %struct.ImageParameters, ptr %221, i32 0, i32 162
  %223 = load i32, ptr %222, align 8, !tbaa !36
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %209, ptr align 4 %220, i64 %225, i1 false)
  %226 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  %227 = getelementptr inbounds ptr, ptr %226, i64 1
  %228 = load ptr, ptr %227, align 8, !tbaa !21
  %229 = load i32, ptr %5, align 4, !tbaa !40
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %228, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !92
  %233 = load ptr, ptr @img, align 8, !tbaa !13
  %234 = getelementptr inbounds nuw %struct.ImageParameters, ptr %233, i32 0, i32 57
  %235 = load ptr, ptr %234, align 8, !tbaa !248
  %236 = getelementptr inbounds ptr, ptr %235, i64 2
  %237 = load ptr, ptr %236, align 8, !tbaa !3
  %238 = getelementptr inbounds ptr, ptr %237, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !21
  %240 = load i32, ptr %5, align 4, !tbaa !40
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %239, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !92
  %244 = load ptr, ptr @img, align 8, !tbaa !13
  %245 = getelementptr inbounds nuw %struct.ImageParameters, ptr %244, i32 0, i32 162
  %246 = load i32, ptr %245, align 8, !tbaa !36
  %247 = sext i32 %246 to i64
  %248 = mul i64 %247, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %232, ptr align 4 %243, i64 %248, i1 false)
  br label %249

249:                                              ; preds = %202
  %250 = load i32, ptr %5, align 4, !tbaa !40
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %5, align 4, !tbaa !40
  br label %196, !llvm.loop !282

252:                                              ; preds = %196
  br label %373

253:                                              ; preds = %192
  %254 = load i32, ptr %6, align 4, !tbaa !40
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %314

256:                                              ; preds = %253
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %257

257:                                              ; preds = %310, %256
  %258 = load i32, ptr %5, align 4, !tbaa !40
  %259 = load ptr, ptr @img, align 8, !tbaa !13
  %260 = getelementptr inbounds nuw %struct.ImageParameters, ptr %259, i32 0, i32 163
  %261 = load i32, ptr %260, align 4, !tbaa !24
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %313

263:                                              ; preds = %257
  %264 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  %265 = getelementptr inbounds ptr, ptr %264, i64 0
  %266 = load ptr, ptr %265, align 8, !tbaa !21
  %267 = load i32, ptr %5, align 4, !tbaa !40
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds ptr, ptr %266, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !92
  %271 = load ptr, ptr @img, align 8, !tbaa !13
  %272 = getelementptr inbounds nuw %struct.ImageParameters, ptr %271, i32 0, i32 57
  %273 = load ptr, ptr %272, align 8, !tbaa !248
  %274 = getelementptr inbounds ptr, ptr %273, i64 0
  %275 = load ptr, ptr %274, align 8, !tbaa !3
  %276 = getelementptr inbounds ptr, ptr %275, i64 0
  %277 = load ptr, ptr %276, align 8, !tbaa !21
  %278 = load i32, ptr %5, align 4, !tbaa !40
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %277, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !92
  %282 = load ptr, ptr @img, align 8, !tbaa !13
  %283 = getelementptr inbounds nuw %struct.ImageParameters, ptr %282, i32 0, i32 162
  %284 = load i32, ptr %283, align 8, !tbaa !36
  %285 = sext i32 %284 to i64
  %286 = mul i64 %285, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %270, ptr align 4 %281, i64 %286, i1 false)
  %287 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  %288 = getelementptr inbounds ptr, ptr %287, i64 1
  %289 = load ptr, ptr %288, align 8, !tbaa !21
  %290 = load i32, ptr %5, align 4, !tbaa !40
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds ptr, ptr %289, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !92
  %294 = load ptr, ptr @img, align 8, !tbaa !13
  %295 = getelementptr inbounds nuw %struct.ImageParameters, ptr %294, i32 0, i32 57
  %296 = load ptr, ptr %295, align 8, !tbaa !248
  %297 = getelementptr inbounds ptr, ptr %296, i64 0
  %298 = load ptr, ptr %297, align 8, !tbaa !3
  %299 = getelementptr inbounds ptr, ptr %298, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !21
  %301 = load i32, ptr %5, align 4, !tbaa !40
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %300, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !92
  %305 = load ptr, ptr @img, align 8, !tbaa !13
  %306 = getelementptr inbounds nuw %struct.ImageParameters, ptr %305, i32 0, i32 162
  %307 = load i32, ptr %306, align 8, !tbaa !36
  %308 = sext i32 %307 to i64
  %309 = mul i64 %308, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %293, ptr align 4 %304, i64 %309, i1 false)
  br label %310

310:                                              ; preds = %263
  %311 = load i32, ptr %5, align 4, !tbaa !40
  %312 = add nsw i32 %311, 1
  store i32 %312, ptr %5, align 4, !tbaa !40
  br label %257, !llvm.loop !283

313:                                              ; preds = %257
  br label %372

314:                                              ; preds = %253
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %315

315:                                              ; preds = %368, %314
  %316 = load i32, ptr %5, align 4, !tbaa !40
  %317 = load ptr, ptr @img, align 8, !tbaa !13
  %318 = getelementptr inbounds nuw %struct.ImageParameters, ptr %317, i32 0, i32 163
  %319 = load i32, ptr %318, align 4, !tbaa !24
  %320 = icmp slt i32 %316, %319
  br i1 %320, label %321, label %371

321:                                              ; preds = %315
  %322 = load ptr, ptr @bestIntraFAdjust4x4Cr, align 8, !tbaa !3
  %323 = getelementptr inbounds ptr, ptr %322, i64 0
  %324 = load ptr, ptr %323, align 8, !tbaa !21
  %325 = load i32, ptr %5, align 4, !tbaa !40
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %324, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !92
  %329 = load ptr, ptr @img, align 8, !tbaa !13
  %330 = getelementptr inbounds nuw %struct.ImageParameters, ptr %329, i32 0, i32 57
  %331 = load ptr, ptr %330, align 8, !tbaa !248
  %332 = getelementptr inbounds ptr, ptr %331, i64 1
  %333 = load ptr, ptr %332, align 8, !tbaa !3
  %334 = getelementptr inbounds ptr, ptr %333, i64 0
  %335 = load ptr, ptr %334, align 8, !tbaa !21
  %336 = load i32, ptr %5, align 4, !tbaa !40
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds ptr, ptr %335, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !92
  %340 = load ptr, ptr @img, align 8, !tbaa !13
  %341 = getelementptr inbounds nuw %struct.ImageParameters, ptr %340, i32 0, i32 162
  %342 = load i32, ptr %341, align 8, !tbaa !36
  %343 = sext i32 %342 to i64
  %344 = mul i64 %343, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %328, ptr align 4 %339, i64 %344, i1 false)
  %345 = load ptr, ptr @bestIntraFAdjust4x4Cr, align 8, !tbaa !3
  %346 = getelementptr inbounds ptr, ptr %345, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !21
  %348 = load i32, ptr %5, align 4, !tbaa !40
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds ptr, ptr %347, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !92
  %352 = load ptr, ptr @img, align 8, !tbaa !13
  %353 = getelementptr inbounds nuw %struct.ImageParameters, ptr %352, i32 0, i32 57
  %354 = load ptr, ptr %353, align 8, !tbaa !248
  %355 = getelementptr inbounds ptr, ptr %354, i64 1
  %356 = load ptr, ptr %355, align 8, !tbaa !3
  %357 = getelementptr inbounds ptr, ptr %356, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !21
  %359 = load i32, ptr %5, align 4, !tbaa !40
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %358, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !92
  %363 = load ptr, ptr @img, align 8, !tbaa !13
  %364 = getelementptr inbounds nuw %struct.ImageParameters, ptr %363, i32 0, i32 162
  %365 = load i32, ptr %364, align 8, !tbaa !36
  %366 = sext i32 %365 to i64
  %367 = mul i64 %366, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %351, ptr align 4 %362, i64 %367, i1 false)
  br label %368

368:                                              ; preds = %321
  %369 = load i32, ptr %5, align 4, !tbaa !40
  %370 = add nsw i32 %369, 1
  store i32 %370, ptr %5, align 4, !tbaa !40
  br label %315, !llvm.loop !284

371:                                              ; preds = %315
  br label %372

372:                                              ; preds = %371, %313
  br label %373

373:                                              ; preds = %372, %252
  br label %374

374:                                              ; preds = %373, %191
  br label %375

375:                                              ; preds = %374, %121
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @store_macroblock_parameters(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %10 = load ptr, ptr @img, align 8, !tbaa !13
  %11 = getelementptr inbounds nuw %struct.ImageParameters, ptr %10, i32 0, i32 61
  %12 = load ptr, ptr %11, align 8, !tbaa !143
  %13 = load ptr, ptr @img, align 8, !tbaa !13
  %14 = getelementptr inbounds nuw %struct.ImageParameters, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !120
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %16
  store ptr %17, ptr %8, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %18 = load ptr, ptr @img, align 8, !tbaa !13
  %19 = getelementptr inbounds nuw %struct.ImageParameters, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  store i32 %22, ptr %9, align 4, !tbaa !40
  %23 = load i32, ptr %2, align 4, !tbaa !40
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr @best_mode, align 2, !tbaa !67
  %25 = load ptr, ptr %8, align 8, !tbaa !153
  %26 = getelementptr inbounds nuw %struct.macroblock, ptr %25, i32 0, i32 17
  %27 = load i32, ptr %26, align 8, !tbaa !285
  store i32 %27, ptr @best_c_imode, align 4, !tbaa !40
  %28 = load ptr, ptr @img, align 8, !tbaa !13
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 94
  %30 = load i32, ptr %29, align 4, !tbaa !263
  store i32 %30, ptr @best_i16offset, align 4, !tbaa !40
  %31 = load i32, ptr %2, align 4, !tbaa !40
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load ptr, ptr %8, align 8, !tbaa !153
  %35 = getelementptr inbounds nuw %struct.macroblock, ptr %34, i32 0, i32 33
  %36 = load i16, ptr %35, align 8, !tbaa !154
  %37 = sext i16 %36 to i32
  br label %39

38:                                               ; preds = %1
  br label %39

39:                                               ; preds = %38, %33
  %40 = phi i32 [ %37, %33 ], [ 0, %38 ]
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr @bi_pred_me, align 2, !tbaa !67
  %42 = load ptr, ptr %8, align 8, !tbaa !153
  %43 = getelementptr inbounds nuw %struct.macroblock, ptr %42, i32 0, i32 14
  %44 = getelementptr inbounds [4 x i32], ptr %43, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @b8mode, ptr align 8 %44, i64 16, i1 false)
  %45 = load ptr, ptr %8, align 8, !tbaa !153
  %46 = getelementptr inbounds nuw %struct.macroblock, ptr %45, i32 0, i32 15
  %47 = getelementptr inbounds [4 x i32], ptr %46, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 @b8pdir, ptr align 8 %47, i64 16, i1 false)
  %48 = load ptr, ptr %8, align 8, !tbaa !153
  %49 = getelementptr inbounds nuw %struct.macroblock, ptr %48, i32 0, i32 10
  %50 = getelementptr inbounds [16 x i8], ptr %49, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @b4_intra_pred_modes, ptr align 4 %50, i64 16, i1 false)
  %51 = load ptr, ptr %8, align 8, !tbaa !153
  %52 = getelementptr inbounds nuw %struct.macroblock, ptr %51, i32 0, i32 11
  %53 = getelementptr inbounds [16 x i8], ptr %52, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @b8_intra_pred_modes8x8, ptr align 4 %53, i64 16, i1 false)
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %54

54:                                               ; preds = %98, %39
  %55 = load i32, ptr %4, align 4, !tbaa !40
  %56 = icmp slt i32 %55, 4
  br i1 %56, label %57, label %101

57:                                               ; preds = %54
  %58 = load i32, ptr %4, align 4, !tbaa !40
  %59 = mul nsw i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i8], ptr @b4_ipredmode, i64 0, i64 %60
  %62 = load ptr, ptr @img, align 8, !tbaa !13
  %63 = getelementptr inbounds nuw %struct.ImageParameters, ptr %62, i32 0, i32 31
  %64 = load ptr, ptr %63, align 8, !tbaa !126
  %65 = load ptr, ptr @img, align 8, !tbaa !13
  %66 = getelementptr inbounds nuw %struct.ImageParameters, ptr %65, i32 0, i32 38
  %67 = load i32, ptr %66, align 4, !tbaa !68
  %68 = load i32, ptr %4, align 4, !tbaa !40
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds ptr, ptr %64, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !44
  %73 = load ptr, ptr @img, align 8, !tbaa !13
  %74 = getelementptr inbounds nuw %struct.ImageParameters, ptr %73, i32 0, i32 37
  %75 = load i32, ptr %74, align 8, !tbaa !69
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %72, i64 %76
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %77, i64 4, i1 false)
  %78 = load i32, ptr %4, align 4, !tbaa !40
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x [4 x i8]], ptr @b8_ipredmode8x8, i64 0, i64 %79
  %81 = getelementptr inbounds [4 x i8], ptr %80, i64 0, i64 0
  %82 = load ptr, ptr @img, align 8, !tbaa !13
  %83 = getelementptr inbounds nuw %struct.ImageParameters, ptr %82, i32 0, i32 32
  %84 = load ptr, ptr %83, align 8, !tbaa !286
  %85 = load ptr, ptr @img, align 8, !tbaa !13
  %86 = getelementptr inbounds nuw %struct.ImageParameters, ptr %85, i32 0, i32 38
  %87 = load i32, ptr %86, align 4, !tbaa !68
  %88 = load i32, ptr %4, align 4, !tbaa !40
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %84, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !44
  %93 = load ptr, ptr @img, align 8, !tbaa !13
  %94 = getelementptr inbounds nuw %struct.ImageParameters, ptr %93, i32 0, i32 37
  %95 = load i32, ptr %94, align 8, !tbaa !69
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %92, i64 %96
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 1 %97, i64 4, i1 false)
  br label %98

98:                                               ; preds = %57
  %99 = load i32, ptr %4, align 4, !tbaa !40
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %4, align 4, !tbaa !40
  br label %54, !llvm.loop !287

101:                                              ; preds = %54
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %102

102:                                              ; preds = %126, %101
  %103 = load i32, ptr %4, align 4, !tbaa !40
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %129

105:                                              ; preds = %102
  %106 = load i32, ptr %4, align 4, !tbaa !40
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbY, i64 0, i64 %107
  %109 = getelementptr inbounds [16 x i16], ptr %108, i64 0, i64 0
  %110 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %111 = getelementptr inbounds nuw %struct.storable_picture, ptr %110, i32 0, i32 29
  %112 = load ptr, ptr %111, align 8, !tbaa !100
  %113 = load ptr, ptr @img, align 8, !tbaa !13
  %114 = getelementptr inbounds nuw %struct.ImageParameters, ptr %113, i32 0, i32 40
  %115 = load i32, ptr %114, align 4, !tbaa !96
  %116 = load i32, ptr %4, align 4, !tbaa !40
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %112, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !65
  %121 = load ptr, ptr @img, align 8, !tbaa !13
  %122 = getelementptr inbounds nuw %struct.ImageParameters, ptr %121, i32 0, i32 39
  %123 = load i32, ptr %122, align 8, !tbaa !95
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i16, ptr %120, i64 %124
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %109, ptr align 2 %125, i64 32, i1 false)
  br label %126

126:                                              ; preds = %105
  %127 = load i32, ptr %4, align 4, !tbaa !40
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %4, align 4, !tbaa !40
  br label %102, !llvm.loop !288

129:                                              ; preds = %102
  %130 = load ptr, ptr @img, align 8, !tbaa !13
  %131 = getelementptr inbounds nuw %struct.ImageParameters, ptr %130, i32 0, i32 5
  %132 = load i32, ptr %131, align 4, !tbaa !39
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %134, label %167

134:                                              ; preds = %129
  %135 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %134
  %138 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %167

140:                                              ; preds = %137
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %141

141:                                              ; preds = %163, %140
  %142 = load i32, ptr %4, align 4, !tbaa !40
  %143 = icmp slt i32 %142, 16
  br i1 %143, label %144, label %166

144:                                              ; preds = %141
  %145 = load i32, ptr %4, align 4, !tbaa !40
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec, i64 0, i64 %146
  %148 = getelementptr inbounds [16 x i32], ptr %147, i64 0, i64 0
  %149 = load ptr, ptr @lrec, align 8, !tbaa !21
  %150 = load ptr, ptr @img, align 8, !tbaa !13
  %151 = getelementptr inbounds nuw %struct.ImageParameters, ptr %150, i32 0, i32 40
  %152 = load i32, ptr %151, align 4, !tbaa !96
  %153 = load i32, ptr %4, align 4, !tbaa !40
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %149, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !92
  %158 = load ptr, ptr @img, align 8, !tbaa !13
  %159 = getelementptr inbounds nuw %struct.ImageParameters, ptr %158, i32 0, i32 39
  %160 = load i32, ptr %159, align 8, !tbaa !95
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, ptr %157, i64 %161
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %148, ptr align 4 %162, i64 64, i1 false)
  br label %163

163:                                              ; preds = %144
  %164 = load i32, ptr %4, align 4, !tbaa !40
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %4, align 4, !tbaa !40
  br label %141, !llvm.loop !289

166:                                              ; preds = %141
  br label %167

167:                                              ; preds = %166, %137, %134, %129
  %168 = load ptr, ptr @img, align 8, !tbaa !13
  %169 = getelementptr inbounds nuw %struct.ImageParameters, ptr %168, i32 0, i32 98
  %170 = load i32, ptr %169, align 4, !tbaa !139
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, ptr %2, align 4, !tbaa !40
  %174 = load ptr, ptr %8, align 8, !tbaa !153
  call void @store_adaptive_rounding_parameters(i32 noundef signext %173, ptr noundef %174)
  br label %175

175:                                              ; preds = %172, %167
  %176 = load ptr, ptr @img, align 8, !tbaa !13
  %177 = getelementptr inbounds nuw %struct.ImageParameters, ptr %176, i32 0, i32 160
  %178 = load i32, ptr %177, align 8, !tbaa !252
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %319

180:                                              ; preds = %175
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %181

181:                                              ; preds = %242, %180
  %182 = load i32, ptr %4, align 4, !tbaa !40
  %183 = load ptr, ptr @img, align 8, !tbaa !13
  %184 = getelementptr inbounds nuw %struct.ImageParameters, ptr %183, i32 0, i32 163
  %185 = load i32, ptr %184, align 4, !tbaa !24
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %245

187:                                              ; preds = %181
  %188 = load i32, ptr %4, align 4, !tbaa !40
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbU, i64 0, i64 %189
  %191 = getelementptr inbounds [16 x i16], ptr %190, i64 0, i64 0
  %192 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %193 = getelementptr inbounds nuw %struct.storable_picture, ptr %192, i32 0, i32 33
  %194 = load ptr, ptr %193, align 8, !tbaa !256
  %195 = getelementptr inbounds ptr, ptr %194, i64 0
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = load ptr, ptr @img, align 8, !tbaa !13
  %198 = getelementptr inbounds nuw %struct.ImageParameters, ptr %197, i32 0, i32 42
  %199 = load i32, ptr %198, align 4, !tbaa !254
  %200 = load i32, ptr %4, align 4, !tbaa !40
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds ptr, ptr %196, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !65
  %205 = load ptr, ptr @img, align 8, !tbaa !13
  %206 = getelementptr inbounds nuw %struct.ImageParameters, ptr %205, i32 0, i32 41
  %207 = load i32, ptr %206, align 8, !tbaa !290
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i16, ptr %204, i64 %208
  %210 = load ptr, ptr @img, align 8, !tbaa !13
  %211 = getelementptr inbounds nuw %struct.ImageParameters, ptr %210, i32 0, i32 162
  %212 = load i32, ptr %211, align 8, !tbaa !36
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %191, ptr align 2 %209, i64 %214, i1 false)
  %215 = load i32, ptr %4, align 4, !tbaa !40
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbV, i64 0, i64 %216
  %218 = getelementptr inbounds [16 x i16], ptr %217, i64 0, i64 0
  %219 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %220 = getelementptr inbounds nuw %struct.storable_picture, ptr %219, i32 0, i32 33
  %221 = load ptr, ptr %220, align 8, !tbaa !256
  %222 = getelementptr inbounds ptr, ptr %221, i64 1
  %223 = load ptr, ptr %222, align 8, !tbaa !63
  %224 = load ptr, ptr @img, align 8, !tbaa !13
  %225 = getelementptr inbounds nuw %struct.ImageParameters, ptr %224, i32 0, i32 42
  %226 = load i32, ptr %225, align 4, !tbaa !254
  %227 = load i32, ptr %4, align 4, !tbaa !40
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds ptr, ptr %223, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !65
  %232 = load ptr, ptr @img, align 8, !tbaa !13
  %233 = getelementptr inbounds nuw %struct.ImageParameters, ptr %232, i32 0, i32 41
  %234 = load i32, ptr %233, align 8, !tbaa !290
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i16, ptr %231, i64 %235
  %237 = load ptr, ptr @img, align 8, !tbaa !13
  %238 = getelementptr inbounds nuw %struct.ImageParameters, ptr %237, i32 0, i32 162
  %239 = load i32, ptr %238, align 8, !tbaa !36
  %240 = sext i32 %239 to i64
  %241 = mul i64 %240, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %218, ptr align 2 %236, i64 %241, i1 false)
  br label %242

242:                                              ; preds = %187
  %243 = load i32, ptr %4, align 4, !tbaa !40
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr %4, align 4, !tbaa !40
  br label %181, !llvm.loop !291

245:                                              ; preds = %181
  %246 = load ptr, ptr @img, align 8, !tbaa !13
  %247 = getelementptr inbounds nuw %struct.ImageParameters, ptr %246, i32 0, i32 5
  %248 = load i32, ptr %247, align 4, !tbaa !39
  %249 = icmp eq i32 %248, 3
  br i1 %249, label %250, label %318

250:                                              ; preds = %245
  %251 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %318

253:                                              ; preds = %250
  %254 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %318

256:                                              ; preds = %253
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %257

257:                                              ; preds = %314, %256
  %258 = load i32, ptr %4, align 4, !tbaa !40
  %259 = load ptr, ptr @img, align 8, !tbaa !13
  %260 = getelementptr inbounds nuw %struct.ImageParameters, ptr %259, i32 0, i32 163
  %261 = load i32, ptr %260, align 4, !tbaa !24
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %317

263:                                              ; preds = %257
  %264 = load i32, ptr %4, align 4, !tbaa !40
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_U, i64 0, i64 %265
  %267 = getelementptr inbounds [16 x i32], ptr %266, i64 0, i64 0
  %268 = load ptr, ptr @lrec_uv, align 8, !tbaa !3
  %269 = getelementptr inbounds ptr, ptr %268, i64 0
  %270 = load ptr, ptr %269, align 8, !tbaa !21
  %271 = load ptr, ptr @img, align 8, !tbaa !13
  %272 = getelementptr inbounds nuw %struct.ImageParameters, ptr %271, i32 0, i32 42
  %273 = load i32, ptr %272, align 4, !tbaa !254
  %274 = load i32, ptr %4, align 4, !tbaa !40
  %275 = add nsw i32 %273, %274
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds ptr, ptr %270, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !92
  %279 = load ptr, ptr @img, align 8, !tbaa !13
  %280 = getelementptr inbounds nuw %struct.ImageParameters, ptr %279, i32 0, i32 41
  %281 = load i32, ptr %280, align 8, !tbaa !290
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, ptr %278, i64 %282
  %284 = load ptr, ptr @img, align 8, !tbaa !13
  %285 = getelementptr inbounds nuw %struct.ImageParameters, ptr %284, i32 0, i32 162
  %286 = load i32, ptr %285, align 8, !tbaa !36
  %287 = sext i32 %286 to i64
  %288 = mul i64 %287, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %267, ptr align 4 %283, i64 %288, i1 false)
  %289 = load i32, ptr %4, align 4, !tbaa !40
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_V, i64 0, i64 %290
  %292 = getelementptr inbounds [16 x i32], ptr %291, i64 0, i64 0
  %293 = load ptr, ptr @lrec_uv, align 8, !tbaa !3
  %294 = getelementptr inbounds ptr, ptr %293, i64 1
  %295 = load ptr, ptr %294, align 8, !tbaa !21
  %296 = load ptr, ptr @img, align 8, !tbaa !13
  %297 = getelementptr inbounds nuw %struct.ImageParameters, ptr %296, i32 0, i32 42
  %298 = load i32, ptr %297, align 4, !tbaa !254
  %299 = load i32, ptr %4, align 4, !tbaa !40
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds ptr, ptr %295, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !92
  %304 = load ptr, ptr @img, align 8, !tbaa !13
  %305 = getelementptr inbounds nuw %struct.ImageParameters, ptr %304, i32 0, i32 41
  %306 = load i32, ptr %305, align 8, !tbaa !290
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, ptr %303, i64 %307
  %309 = load ptr, ptr @img, align 8, !tbaa !13
  %310 = getelementptr inbounds nuw %struct.ImageParameters, ptr %309, i32 0, i32 162
  %311 = load i32, ptr %310, align 8, !tbaa !36
  %312 = sext i32 %311 to i64
  %313 = mul i64 %312, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %292, ptr align 4 %308, i64 %313, i1 false)
  br label %314

314:                                              ; preds = %263
  %315 = load i32, ptr %4, align 4, !tbaa !40
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %4, align 4, !tbaa !40
  br label %257, !llvm.loop !292

317:                                              ; preds = %257
  br label %318

318:                                              ; preds = %317, %253, %250, %245
  br label %319

319:                                              ; preds = %318, %175
  %320 = load ptr, ptr @input, align 8, !tbaa !13
  %321 = getelementptr inbounds nuw %struct.InputParameters, ptr %320, i32 0, i32 113
  %322 = load i32, ptr %321, align 8, !tbaa !23
  %323 = icmp eq i32 %322, 3
  br i1 %323, label %324, label %400

324:                                              ; preds = %319
  %325 = load ptr, ptr @img, align 8, !tbaa !13
  %326 = getelementptr inbounds nuw %struct.ImageParameters, ptr %325, i32 0, i32 5
  %327 = load i32, ptr %326, align 4, !tbaa !39
  %328 = icmp ne i32 %327, 1
  br i1 %328, label %329, label %400

329:                                              ; preds = %324
  store i32 0, ptr %5, align 4, !tbaa !40
  br label %330

330:                                              ; preds = %396, %329
  %331 = load i32, ptr %5, align 4, !tbaa !40
  %332 = load ptr, ptr @input, align 8, !tbaa !13
  %333 = getelementptr inbounds nuw %struct.InputParameters, ptr %332, i32 0, i32 127
  %334 = load i32, ptr %333, align 8, !tbaa !159
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %399

336:                                              ; preds = %330
  %337 = load ptr, ptr @img, align 8, !tbaa !13
  %338 = getelementptr inbounds nuw %struct.ImageParameters, ptr %337, i32 0, i32 40
  %339 = load i32, ptr %338, align 4, !tbaa !96
  store i32 %339, ptr %4, align 4, !tbaa !40
  br label %340

340:                                              ; preds = %392, %336
  %341 = load i32, ptr %4, align 4, !tbaa !40
  %342 = load ptr, ptr @img, align 8, !tbaa !13
  %343 = getelementptr inbounds nuw %struct.ImageParameters, ptr %342, i32 0, i32 40
  %344 = load i32, ptr %343, align 4, !tbaa !96
  %345 = add nsw i32 %344, 16
  %346 = icmp slt i32 %341, %345
  br i1 %346, label %347, label %395

347:                                              ; preds = %340
  %348 = load ptr, ptr @img, align 8, !tbaa !13
  %349 = getelementptr inbounds nuw %struct.ImageParameters, ptr %348, i32 0, i32 39
  %350 = load i32, ptr %349, align 8, !tbaa !95
  store i32 %350, ptr %3, align 4, !tbaa !40
  br label %351

351:                                              ; preds = %388, %347
  %352 = load i32, ptr %3, align 4, !tbaa !40
  %353 = load ptr, ptr @img, align 8, !tbaa !13
  %354 = getelementptr inbounds nuw %struct.ImageParameters, ptr %353, i32 0, i32 39
  %355 = load i32, ptr %354, align 8, !tbaa !95
  %356 = add nsw i32 %355, 16
  %357 = icmp slt i32 %352, %356
  br i1 %357, label %358, label %391

358:                                              ; preds = %351
  %359 = load ptr, ptr @decs, align 8, !tbaa !13
  %360 = getelementptr inbounds nuw %struct.Decoders, ptr %359, i32 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !160
  %362 = load i32, ptr %5, align 4, !tbaa !40
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds ptr, ptr %361, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !63
  %366 = load i32, ptr %4, align 4, !tbaa !40
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds ptr, ptr %365, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !65
  %370 = load i32, ptr %3, align 4, !tbaa !40
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i16, ptr %369, i64 %371
  %373 = load i16, ptr %372, align 2, !tbaa !67
  %374 = load ptr, ptr @decs, align 8, !tbaa !13
  %375 = getelementptr inbounds nuw %struct.Decoders, ptr %374, i32 0, i32 3
  %376 = load ptr, ptr %375, align 8, !tbaa !293
  %377 = load i32, ptr %5, align 4, !tbaa !40
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds ptr, ptr %376, i64 %378
  %380 = load ptr, ptr %379, align 8, !tbaa !63
  %381 = load i32, ptr %4, align 4, !tbaa !40
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %380, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !65
  %385 = load i32, ptr %3, align 4, !tbaa !40
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i16, ptr %384, i64 %386
  store i16 %373, ptr %387, align 2, !tbaa !67
  br label %388

388:                                              ; preds = %358
  %389 = load i32, ptr %3, align 4, !tbaa !40
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %3, align 4, !tbaa !40
  br label %351, !llvm.loop !294

391:                                              ; preds = %351
  br label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %4, align 4, !tbaa !40
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %4, align 4, !tbaa !40
  br label %340, !llvm.loop !295

395:                                              ; preds = %340
  br label %396

396:                                              ; preds = %395
  %397 = load i32, ptr %5, align 4, !tbaa !40
  %398 = add nsw i32 %397, 1
  store i32 %398, ptr %5, align 4, !tbaa !40
  br label %330, !llvm.loop !296

399:                                              ; preds = %330
  br label %400

400:                                              ; preds = %399, %324, %319
  %401 = load i32, ptr %2, align 4, !tbaa !40
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %406, label %403

403:                                              ; preds = %400
  %404 = load i32, ptr %9, align 4, !tbaa !40
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %427

406:                                              ; preds = %403, %400
  %407 = load ptr, ptr @cofAC, align 8, !tbaa !10
  store ptr %407, ptr %6, align 8, !tbaa !10
  %408 = load ptr, ptr @img, align 8, !tbaa !13
  %409 = getelementptr inbounds nuw %struct.ImageParameters, ptr %408, i32 0, i32 53
  %410 = load ptr, ptr %409, align 8, !tbaa !137
  store ptr %410, ptr @cofAC, align 8, !tbaa !10
  %411 = load ptr, ptr %6, align 8, !tbaa !10
  %412 = load ptr, ptr @img, align 8, !tbaa !13
  %413 = getelementptr inbounds nuw %struct.ImageParameters, ptr %412, i32 0, i32 53
  store ptr %411, ptr %413, align 8, !tbaa !137
  %414 = load ptr, ptr @cofDC, align 8, !tbaa !3
  store ptr %414, ptr %7, align 8, !tbaa !3
  %415 = load ptr, ptr @img, align 8, !tbaa !13
  %416 = getelementptr inbounds nuw %struct.ImageParameters, ptr %415, i32 0, i32 54
  %417 = load ptr, ptr %416, align 8, !tbaa !297
  store ptr %417, ptr @cofDC, align 8, !tbaa !3
  %418 = load ptr, ptr %7, align 8, !tbaa !3
  %419 = load ptr, ptr @img, align 8, !tbaa !13
  %420 = getelementptr inbounds nuw %struct.ImageParameters, ptr %419, i32 0, i32 54
  store ptr %418, ptr %420, align 8, !tbaa !297
  %421 = load ptr, ptr %8, align 8, !tbaa !153
  %422 = getelementptr inbounds nuw %struct.macroblock, ptr %421, i32 0, i32 12
  %423 = load i32, ptr %422, align 4, !tbaa !195
  store i32 %423, ptr @cbp, align 4, !tbaa !40
  %424 = load ptr, ptr %8, align 8, !tbaa !153
  %425 = getelementptr inbounds nuw %struct.macroblock, ptr %424, i32 0, i32 13
  %426 = load i64, ptr %425, align 8, !tbaa !210
  store i64 %426, ptr @cbp_blk, align 8, !tbaa !93
  br label %428

427:                                              ; preds = %403
  store i32 0, ptr @cbp, align 4, !tbaa !40
  store i64 0, ptr @cbp_blk, align 8, !tbaa !93
  br label %428

428:                                              ; preds = %427, %406
  %429 = load ptr, ptr %8, align 8, !tbaa !153
  %430 = getelementptr inbounds nuw %struct.macroblock, ptr %429, i32 0, i32 31
  %431 = load i32, ptr %430, align 8, !tbaa !169
  store i32 %431, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !40
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %432

432:                                              ; preds = %458, %428
  %433 = load i32, ptr %4, align 4, !tbaa !40
  %434 = icmp slt i32 %433, 4
  br i1 %434, label %435, label %461

435:                                              ; preds = %432
  %436 = load i32, ptr %4, align 4, !tbaa !40
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x [4 x i8]], ptr @frefframe, i64 0, i64 %437
  %439 = getelementptr inbounds [4 x i8], ptr %438, i64 0, i64 0
  %440 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %441 = getelementptr inbounds nuw %struct.storable_picture, ptr %440, i32 0, i32 35
  %442 = load ptr, ptr %441, align 8, !tbaa !178
  %443 = getelementptr inbounds ptr, ptr %442, i64 0
  %444 = load ptr, ptr %443, align 8, !tbaa !43
  %445 = load ptr, ptr @img, align 8, !tbaa !13
  %446 = getelementptr inbounds nuw %struct.ImageParameters, ptr %445, i32 0, i32 38
  %447 = load i32, ptr %446, align 4, !tbaa !68
  %448 = load i32, ptr %4, align 4, !tbaa !40
  %449 = add nsw i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds ptr, ptr %444, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !44
  %453 = load ptr, ptr @img, align 8, !tbaa !13
  %454 = getelementptr inbounds nuw %struct.ImageParameters, ptr %453, i32 0, i32 37
  %455 = load i32, ptr %454, align 8, !tbaa !69
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, ptr %452, i64 %456
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %439, ptr align 1 %457, i64 4, i1 false)
  br label %458

458:                                              ; preds = %435
  %459 = load i32, ptr %4, align 4, !tbaa !40
  %460 = add nsw i32 %459, 1
  store i32 %460, ptr %4, align 4, !tbaa !40
  br label %432, !llvm.loop !298

461:                                              ; preds = %432
  %462 = load i32, ptr %9, align 4, !tbaa !40
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %495

464:                                              ; preds = %461
  store i32 0, ptr %4, align 4, !tbaa !40
  br label %465

465:                                              ; preds = %491, %464
  %466 = load i32, ptr %4, align 4, !tbaa !40
  %467 = icmp slt i32 %466, 4
  br i1 %467, label %468, label %494

468:                                              ; preds = %465
  %469 = load i32, ptr %4, align 4, !tbaa !40
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [4 x [4 x i8]], ptr @brefframe, i64 0, i64 %470
  %472 = getelementptr inbounds [4 x i8], ptr %471, i64 0, i64 0
  %473 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %474 = getelementptr inbounds nuw %struct.storable_picture, ptr %473, i32 0, i32 35
  %475 = load ptr, ptr %474, align 8, !tbaa !178
  %476 = getelementptr inbounds ptr, ptr %475, i64 1
  %477 = load ptr, ptr %476, align 8, !tbaa !43
  %478 = load ptr, ptr @img, align 8, !tbaa !13
  %479 = getelementptr inbounds nuw %struct.ImageParameters, ptr %478, i32 0, i32 38
  %480 = load i32, ptr %479, align 4, !tbaa !68
  %481 = load i32, ptr %4, align 4, !tbaa !40
  %482 = add nsw i32 %480, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds ptr, ptr %477, i64 %483
  %485 = load ptr, ptr %484, align 8, !tbaa !44
  %486 = load ptr, ptr @img, align 8, !tbaa !13
  %487 = getelementptr inbounds nuw %struct.ImageParameters, ptr %486, i32 0, i32 37
  %488 = load i32, ptr %487, align 8, !tbaa !69
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, ptr %485, i64 %489
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %472, ptr align 1 %490, i64 4, i1 false)
  br label %491

491:                                              ; preds = %468
  %492 = load i32, ptr %4, align 4, !tbaa !40
  %493 = add nsw i32 %492, 1
  store i32 %493, ptr %4, align 4, !tbaa !40
  br label %465, !llvm.loop !299

494:                                              ; preds = %465
  br label %495

495:                                              ; preds = %494, %461
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @set_stored_macroblock_parameters() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #8
  %15 = load ptr, ptr @img, align 8, !tbaa !13
  %16 = getelementptr inbounds nuw %struct.ImageParameters, ptr %15, i32 0, i32 61
  %17 = load ptr, ptr %16, align 8, !tbaa !143
  %18 = load ptr, ptr @img, align 8, !tbaa !13
  %19 = getelementptr inbounds nuw %struct.ImageParameters, ptr %18, i32 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !120
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %21
  store ptr %22, ptr %1, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #8
  %23 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %24 = getelementptr inbounds nuw %struct.storable_picture, ptr %23, i32 0, i32 29
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  store ptr %25, ptr %2, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #8
  %26 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %27 = getelementptr inbounds nuw %struct.storable_picture, ptr %26, i32 0, i32 33
  %28 = load ptr, ptr %27, align 8, !tbaa !256
  store ptr %28, ptr %3, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  %29 = load i16, ptr @best_mode, align 2, !tbaa !67
  %30 = sext i16 %29 to i32
  store i32 %30, ptr %4, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  %31 = load ptr, ptr @img, align 8, !tbaa !13
  %32 = getelementptr inbounds nuw %struct.ImageParameters, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !39
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  store i32 %35, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %36 = load ptr, ptr @img, align 8, !tbaa !13
  %37 = getelementptr inbounds nuw %struct.ImageParameters, ptr %36, i32 0, i32 31
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  store ptr %38, ptr %13, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %39

39:                                               ; preds = %61, %0
  %40 = load i32, ptr %7, align 4, !tbaa !40
  %41 = icmp slt i32 %40, 16
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load ptr, ptr %2, align 8, !tbaa !63
  %44 = load ptr, ptr @img, align 8, !tbaa !13
  %45 = getelementptr inbounds nuw %struct.ImageParameters, ptr %44, i32 0, i32 40
  %46 = load i32, ptr %45, align 4, !tbaa !96
  %47 = load i32, ptr %7, align 4, !tbaa !40
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %43, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !65
  %52 = load ptr, ptr @img, align 8, !tbaa !13
  %53 = getelementptr inbounds nuw %struct.ImageParameters, ptr %52, i32 0, i32 39
  %54 = load i32, ptr %53, align 8, !tbaa !95
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, ptr %51, i64 %55
  %57 = load i32, ptr %7, align 4, !tbaa !40
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbY, i64 0, i64 %58
  %60 = getelementptr inbounds [16 x i16], ptr %59, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %56, ptr align 2 %60, i64 32, i1 false)
  br label %61

61:                                               ; preds = %42
  %62 = load i32, ptr %7, align 4, !tbaa !40
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %7, align 4, !tbaa !40
  br label %39, !llvm.loop !300

64:                                               ; preds = %39
  %65 = load ptr, ptr @img, align 8, !tbaa !13
  %66 = getelementptr inbounds nuw %struct.ImageParameters, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !39
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %102

69:                                               ; preds = %64
  %70 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %69
  %73 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %72
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %76

76:                                               ; preds = %98, %75
  %77 = load i32, ptr %7, align 4, !tbaa !40
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = load ptr, ptr @lrec, align 8, !tbaa !21
  %81 = load ptr, ptr @img, align 8, !tbaa !13
  %82 = getelementptr inbounds nuw %struct.ImageParameters, ptr %81, i32 0, i32 40
  %83 = load i32, ptr %82, align 4, !tbaa !96
  %84 = load i32, ptr %7, align 4, !tbaa !40
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %80, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !92
  %89 = load ptr, ptr @img, align 8, !tbaa !13
  %90 = getelementptr inbounds nuw %struct.ImageParameters, ptr %89, i32 0, i32 39
  %91 = load i32, ptr %90, align 8, !tbaa !95
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, ptr %88, i64 %92
  %94 = load i32, ptr %7, align 4, !tbaa !40
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec, i64 0, i64 %95
  %97 = getelementptr inbounds [16 x i32], ptr %96, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %93, ptr align 4 %97, i64 64, i1 false)
  br label %98

98:                                               ; preds = %79
  %99 = load i32, ptr %7, align 4, !tbaa !40
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %7, align 4, !tbaa !40
  br label %76, !llvm.loop !301

101:                                              ; preds = %76
  br label %102

102:                                              ; preds = %101, %72, %69, %64
  %103 = load ptr, ptr @img, align 8, !tbaa !13
  %104 = getelementptr inbounds nuw %struct.ImageParameters, ptr %103, i32 0, i32 100
  %105 = load i32, ptr %104, align 4, !tbaa !231
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %108

108:                                              ; preds = %122, %107
  %109 = load i32, ptr %7, align 4, !tbaa !40
  %110 = icmp slt i32 %109, 16
  br i1 %110, label %111, label %125

111:                                              ; preds = %108
  %112 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %113 = getelementptr inbounds nuw %struct.RD_DATA, ptr %112, i32 0, i32 1
  %114 = load i32, ptr %7, align 4, !tbaa !40
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [16 x [16 x i16]], ptr %113, i64 0, i64 %115
  %117 = getelementptr inbounds [16 x i16], ptr %116, i64 0, i64 0
  %118 = load i32, ptr %7, align 4, !tbaa !40
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbY, i64 0, i64 %119
  %121 = getelementptr inbounds [16 x i16], ptr %120, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %117, ptr align 2 %121, i64 32, i1 false)
  br label %122

122:                                              ; preds = %111
  %123 = load i32, ptr %7, align 4, !tbaa !40
  %124 = add nsw i32 %123, 1
  store i32 %124, ptr %7, align 4, !tbaa !40
  br label %108, !llvm.loop !302

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %102
  %127 = load ptr, ptr @img, align 8, !tbaa !13
  %128 = getelementptr inbounds nuw %struct.ImageParameters, ptr %127, i32 0, i32 98
  %129 = load i32, ptr %128, align 4, !tbaa !139
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, ptr %4, align 4, !tbaa !40
  %133 = load i32, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !40
  call void @update_offset_params(i32 noundef signext %132, i32 noundef signext %133)
  br label %134

134:                                              ; preds = %131, %126
  %135 = load ptr, ptr @img, align 8, !tbaa !13
  %136 = getelementptr inbounds nuw %struct.ImageParameters, ptr %135, i32 0, i32 160
  %137 = load i32, ptr %136, align 8, !tbaa !252
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %419

139:                                              ; preds = %134
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %140

140:                                              ; preds = %295, %139
  %141 = load i32, ptr %7, align 4, !tbaa !40
  %142 = load ptr, ptr @img, align 8, !tbaa !13
  %143 = getelementptr inbounds nuw %struct.ImageParameters, ptr %142, i32 0, i32 163
  %144 = load i32, ptr %143, align 4, !tbaa !24
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %298

146:                                              ; preds = %140
  %147 = load ptr, ptr %3, align 8, !tbaa !61
  %148 = getelementptr inbounds ptr, ptr %147, i64 0
  %149 = load ptr, ptr %148, align 8, !tbaa !63
  %150 = load ptr, ptr @img, align 8, !tbaa !13
  %151 = getelementptr inbounds nuw %struct.ImageParameters, ptr %150, i32 0, i32 42
  %152 = load i32, ptr %151, align 4, !tbaa !254
  %153 = load i32, ptr %7, align 4, !tbaa !40
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %149, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !65
  %158 = load ptr, ptr @img, align 8, !tbaa !13
  %159 = getelementptr inbounds nuw %struct.ImageParameters, ptr %158, i32 0, i32 41
  %160 = load i32, ptr %159, align 8, !tbaa !290
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i16, ptr %157, i64 %161
  %163 = load i32, ptr %7, align 4, !tbaa !40
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbU, i64 0, i64 %164
  %166 = getelementptr inbounds [16 x i16], ptr %165, i64 0, i64 0
  %167 = load ptr, ptr @img, align 8, !tbaa !13
  %168 = getelementptr inbounds nuw %struct.ImageParameters, ptr %167, i32 0, i32 162
  %169 = load i32, ptr %168, align 8, !tbaa !36
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %162, ptr align 2 %166, i64 %171, i1 false)
  %172 = load ptr, ptr %3, align 8, !tbaa !61
  %173 = getelementptr inbounds ptr, ptr %172, i64 1
  %174 = load ptr, ptr %173, align 8, !tbaa !63
  %175 = load ptr, ptr @img, align 8, !tbaa !13
  %176 = getelementptr inbounds nuw %struct.ImageParameters, ptr %175, i32 0, i32 42
  %177 = load i32, ptr %176, align 4, !tbaa !254
  %178 = load i32, ptr %7, align 4, !tbaa !40
  %179 = add nsw i32 %177, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %174, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !65
  %183 = load ptr, ptr @img, align 8, !tbaa !13
  %184 = getelementptr inbounds nuw %struct.ImageParameters, ptr %183, i32 0, i32 41
  %185 = load i32, ptr %184, align 8, !tbaa !290
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i16, ptr %182, i64 %186
  %188 = load i32, ptr %7, align 4, !tbaa !40
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbV, i64 0, i64 %189
  %191 = getelementptr inbounds [16 x i16], ptr %190, i64 0, i64 0
  %192 = load ptr, ptr @img, align 8, !tbaa !13
  %193 = getelementptr inbounds nuw %struct.ImageParameters, ptr %192, i32 0, i32 162
  %194 = load i32, ptr %193, align 8, !tbaa !36
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %187, ptr align 2 %191, i64 %196, i1 false)
  %197 = load ptr, ptr @img, align 8, !tbaa !13
  %198 = getelementptr inbounds nuw %struct.ImageParameters, ptr %197, i32 0, i32 5
  %199 = load i32, ptr %198, align 4, !tbaa !39
  %200 = icmp eq i32 %199, 3
  br i1 %200, label %201, label %258

201:                                              ; preds = %146
  %202 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %258, label %204

204:                                              ; preds = %201
  %205 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %258, label %207

207:                                              ; preds = %204
  %208 = load ptr, ptr @lrec_uv, align 8, !tbaa !3
  %209 = getelementptr inbounds ptr, ptr %208, i64 0
  %210 = load ptr, ptr %209, align 8, !tbaa !21
  %211 = load ptr, ptr @img, align 8, !tbaa !13
  %212 = getelementptr inbounds nuw %struct.ImageParameters, ptr %211, i32 0, i32 42
  %213 = load i32, ptr %212, align 4, !tbaa !254
  %214 = load i32, ptr %7, align 4, !tbaa !40
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %210, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !92
  %219 = load ptr, ptr @img, align 8, !tbaa !13
  %220 = getelementptr inbounds nuw %struct.ImageParameters, ptr %219, i32 0, i32 41
  %221 = load i32, ptr %220, align 8, !tbaa !290
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, ptr %218, i64 %222
  %224 = load i32, ptr %7, align 4, !tbaa !40
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_U, i64 0, i64 %225
  %227 = getelementptr inbounds [16 x i32], ptr %226, i64 0, i64 0
  %228 = load ptr, ptr @img, align 8, !tbaa !13
  %229 = getelementptr inbounds nuw %struct.ImageParameters, ptr %228, i32 0, i32 162
  %230 = load i32, ptr %229, align 8, !tbaa !36
  %231 = sext i32 %230 to i64
  %232 = mul i64 %231, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %223, ptr align 4 %227, i64 %232, i1 false)
  %233 = load ptr, ptr @lrec_uv, align 8, !tbaa !3
  %234 = getelementptr inbounds ptr, ptr %233, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !21
  %236 = load ptr, ptr @img, align 8, !tbaa !13
  %237 = getelementptr inbounds nuw %struct.ImageParameters, ptr %236, i32 0, i32 42
  %238 = load i32, ptr %237, align 4, !tbaa !254
  %239 = load i32, ptr %7, align 4, !tbaa !40
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %235, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !92
  %244 = load ptr, ptr @img, align 8, !tbaa !13
  %245 = getelementptr inbounds nuw %struct.ImageParameters, ptr %244, i32 0, i32 41
  %246 = load i32, ptr %245, align 8, !tbaa !290
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %243, i64 %247
  %249 = load i32, ptr %7, align 4, !tbaa !40
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_V, i64 0, i64 %250
  %252 = getelementptr inbounds [16 x i32], ptr %251, i64 0, i64 0
  %253 = load ptr, ptr @img, align 8, !tbaa !13
  %254 = getelementptr inbounds nuw %struct.ImageParameters, ptr %253, i32 0, i32 162
  %255 = load i32, ptr %254, align 8, !tbaa !36
  %256 = sext i32 %255 to i64
  %257 = mul i64 %256, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %248, ptr align 4 %252, i64 %257, i1 false)
  br label %258

258:                                              ; preds = %207, %204, %201, %146
  %259 = load ptr, ptr @img, align 8, !tbaa !13
  %260 = getelementptr inbounds nuw %struct.ImageParameters, ptr %259, i32 0, i32 100
  %261 = load i32, ptr %260, align 4, !tbaa !231
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %294

263:                                              ; preds = %258
  %264 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %265 = getelementptr inbounds nuw %struct.RD_DATA, ptr %264, i32 0, i32 2
  %266 = load i32, ptr %7, align 4, !tbaa !40
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [16 x [16 x i16]], ptr %265, i64 0, i64 %267
  %269 = getelementptr inbounds [16 x i16], ptr %268, i64 0, i64 0
  %270 = load i32, ptr %7, align 4, !tbaa !40
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbU, i64 0, i64 %271
  %273 = getelementptr inbounds [16 x i16], ptr %272, i64 0, i64 0
  %274 = load ptr, ptr @img, align 8, !tbaa !13
  %275 = getelementptr inbounds nuw %struct.ImageParameters, ptr %274, i32 0, i32 162
  %276 = load i32, ptr %275, align 8, !tbaa !36
  %277 = sext i32 %276 to i64
  %278 = mul i64 %277, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %269, ptr align 2 %273, i64 %278, i1 false)
  %279 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %280 = getelementptr inbounds nuw %struct.RD_DATA, ptr %279, i32 0, i32 3
  %281 = load i32, ptr %7, align 4, !tbaa !40
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [16 x [16 x i16]], ptr %280, i64 0, i64 %282
  %284 = getelementptr inbounds [16 x i16], ptr %283, i64 0, i64 0
  %285 = load i32, ptr %7, align 4, !tbaa !40
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbV, i64 0, i64 %286
  %288 = getelementptr inbounds [16 x i16], ptr %287, i64 0, i64 0
  %289 = load ptr, ptr @img, align 8, !tbaa !13
  %290 = getelementptr inbounds nuw %struct.ImageParameters, ptr %289, i32 0, i32 162
  %291 = load i32, ptr %290, align 8, !tbaa !36
  %292 = sext i32 %291 to i64
  %293 = mul i64 %292, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %284, ptr align 2 %288, i64 %293, i1 false)
  br label %294

294:                                              ; preds = %263, %258
  br label %295

295:                                              ; preds = %294
  %296 = load i32, ptr %7, align 4, !tbaa !40
  %297 = add nsw i32 %296, 1
  store i32 %297, ptr %7, align 4, !tbaa !40
  br label %140, !llvm.loop !303

298:                                              ; preds = %140
  %299 = load ptr, ptr @img, align 8, !tbaa !13
  %300 = getelementptr inbounds nuw %struct.ImageParameters, ptr %299, i32 0, i32 5
  %301 = load i32, ptr %300, align 4, !tbaa !39
  %302 = icmp eq i32 %301, 3
  br i1 %302, label %303, label %371

303:                                              ; preds = %298
  %304 = load i32, ptr @si_frame_indicator, align 4, !tbaa !40
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %371, label %306

306:                                              ; preds = %303
  %307 = load i32, ptr @sp2_frame_indicator, align 4, !tbaa !40
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %371, label %309

309:                                              ; preds = %306
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %310

310:                                              ; preds = %367, %309
  %311 = load i32, ptr %7, align 4, !tbaa !40
  %312 = load ptr, ptr @img, align 8, !tbaa !13
  %313 = getelementptr inbounds nuw %struct.ImageParameters, ptr %312, i32 0, i32 163
  %314 = load i32, ptr %313, align 4, !tbaa !24
  %315 = icmp slt i32 %311, %314
  br i1 %315, label %316, label %370

316:                                              ; preds = %310
  %317 = load ptr, ptr @lrec_uv, align 8, !tbaa !3
  %318 = getelementptr inbounds ptr, ptr %317, i64 0
  %319 = load ptr, ptr %318, align 8, !tbaa !21
  %320 = load ptr, ptr @img, align 8, !tbaa !13
  %321 = getelementptr inbounds nuw %struct.ImageParameters, ptr %320, i32 0, i32 42
  %322 = load i32, ptr %321, align 4, !tbaa !254
  %323 = load i32, ptr %7, align 4, !tbaa !40
  %324 = add nsw i32 %322, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds ptr, ptr %319, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !92
  %328 = load ptr, ptr @img, align 8, !tbaa !13
  %329 = getelementptr inbounds nuw %struct.ImageParameters, ptr %328, i32 0, i32 41
  %330 = load i32, ptr %329, align 8, !tbaa !290
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, ptr %327, i64 %331
  %333 = load i32, ptr %7, align 4, !tbaa !40
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_U, i64 0, i64 %334
  %336 = getelementptr inbounds [16 x i32], ptr %335, i64 0, i64 0
  %337 = load ptr, ptr @img, align 8, !tbaa !13
  %338 = getelementptr inbounds nuw %struct.ImageParameters, ptr %337, i32 0, i32 162
  %339 = load i32, ptr %338, align 8, !tbaa !36
  %340 = sext i32 %339 to i64
  %341 = mul i64 %340, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %332, ptr align 4 %336, i64 %341, i1 false)
  %342 = load ptr, ptr @lrec_uv, align 8, !tbaa !3
  %343 = getelementptr inbounds ptr, ptr %342, i64 1
  %344 = load ptr, ptr %343, align 8, !tbaa !21
  %345 = load ptr, ptr @img, align 8, !tbaa !13
  %346 = getelementptr inbounds nuw %struct.ImageParameters, ptr %345, i32 0, i32 42
  %347 = load i32, ptr %346, align 4, !tbaa !254
  %348 = load i32, ptr %7, align 4, !tbaa !40
  %349 = add nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds ptr, ptr %344, i64 %350
  %352 = load ptr, ptr %351, align 8, !tbaa !92
  %353 = load ptr, ptr @img, align 8, !tbaa !13
  %354 = getelementptr inbounds nuw %struct.ImageParameters, ptr %353, i32 0, i32 41
  %355 = load i32, ptr %354, align 8, !tbaa !290
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, ptr %352, i64 %356
  %358 = load i32, ptr %7, align 4, !tbaa !40
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [16 x [16 x i32]], ptr @lrec_rec_V, i64 0, i64 %359
  %361 = getelementptr inbounds [16 x i32], ptr %360, i64 0, i64 0
  %362 = load ptr, ptr @img, align 8, !tbaa !13
  %363 = getelementptr inbounds nuw %struct.ImageParameters, ptr %362, i32 0, i32 162
  %364 = load i32, ptr %363, align 8, !tbaa !36
  %365 = sext i32 %364 to i64
  %366 = mul i64 %365, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %357, ptr align 4 %361, i64 %366, i1 false)
  br label %367

367:                                              ; preds = %316
  %368 = load i32, ptr %7, align 4, !tbaa !40
  %369 = add nsw i32 %368, 1
  store i32 %369, ptr %7, align 4, !tbaa !40
  br label %310, !llvm.loop !304

370:                                              ; preds = %310
  br label %371

371:                                              ; preds = %370, %306, %303, %298
  %372 = load ptr, ptr @img, align 8, !tbaa !13
  %373 = getelementptr inbounds nuw %struct.ImageParameters, ptr %372, i32 0, i32 100
  %374 = load i32, ptr %373, align 4, !tbaa !231
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %418

376:                                              ; preds = %371
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %377

377:                                              ; preds = %414, %376
  %378 = load i32, ptr %7, align 4, !tbaa !40
  %379 = load ptr, ptr @img, align 8, !tbaa !13
  %380 = getelementptr inbounds nuw %struct.ImageParameters, ptr %379, i32 0, i32 163
  %381 = load i32, ptr %380, align 4, !tbaa !24
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %417

383:                                              ; preds = %377
  %384 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %385 = getelementptr inbounds nuw %struct.RD_DATA, ptr %384, i32 0, i32 2
  %386 = load i32, ptr %7, align 4, !tbaa !40
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [16 x [16 x i16]], ptr %385, i64 0, i64 %387
  %389 = getelementptr inbounds [16 x i16], ptr %388, i64 0, i64 0
  %390 = load i32, ptr %7, align 4, !tbaa !40
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbU, i64 0, i64 %391
  %393 = getelementptr inbounds [16 x i16], ptr %392, i64 0, i64 0
  %394 = load ptr, ptr @img, align 8, !tbaa !13
  %395 = getelementptr inbounds nuw %struct.ImageParameters, ptr %394, i32 0, i32 162
  %396 = load i32, ptr %395, align 8, !tbaa !36
  %397 = sext i32 %396 to i64
  %398 = mul i64 %397, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %389, ptr align 2 %393, i64 %398, i1 false)
  %399 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %400 = getelementptr inbounds nuw %struct.RD_DATA, ptr %399, i32 0, i32 3
  %401 = load i32, ptr %7, align 4, !tbaa !40
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [16 x [16 x i16]], ptr %400, i64 0, i64 %402
  %404 = getelementptr inbounds [16 x i16], ptr %403, i64 0, i64 0
  %405 = load i32, ptr %7, align 4, !tbaa !40
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [16 x [16 x i16]], ptr @rec_mbV, i64 0, i64 %406
  %408 = getelementptr inbounds [16 x i16], ptr %407, i64 0, i64 0
  %409 = load ptr, ptr @img, align 8, !tbaa !13
  %410 = getelementptr inbounds nuw %struct.ImageParameters, ptr %409, i32 0, i32 162
  %411 = load i32, ptr %410, align 8, !tbaa !36
  %412 = sext i32 %411 to i64
  %413 = mul i64 %412, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %404, ptr align 2 %408, i64 %413, i1 false)
  br label %414

414:                                              ; preds = %383
  %415 = load i32, ptr %7, align 4, !tbaa !40
  %416 = add nsw i32 %415, 1
  store i32 %416, ptr %7, align 4, !tbaa !40
  br label %377, !llvm.loop !305

417:                                              ; preds = %377
  br label %418

418:                                              ; preds = %417, %371
  br label %419

419:                                              ; preds = %418, %134
  %420 = load ptr, ptr @cofAC, align 8, !tbaa !10
  store ptr %420, ptr %9, align 8, !tbaa !10
  %421 = load ptr, ptr @img, align 8, !tbaa !13
  %422 = getelementptr inbounds nuw %struct.ImageParameters, ptr %421, i32 0, i32 53
  %423 = load ptr, ptr %422, align 8, !tbaa !137
  store ptr %423, ptr @cofAC, align 8, !tbaa !10
  %424 = load ptr, ptr %9, align 8, !tbaa !10
  %425 = load ptr, ptr @img, align 8, !tbaa !13
  %426 = getelementptr inbounds nuw %struct.ImageParameters, ptr %425, i32 0, i32 53
  store ptr %424, ptr %426, align 8, !tbaa !137
  %427 = load ptr, ptr @cofDC, align 8, !tbaa !3
  store ptr %427, ptr %10, align 8, !tbaa !3
  %428 = load ptr, ptr @img, align 8, !tbaa !13
  %429 = getelementptr inbounds nuw %struct.ImageParameters, ptr %428, i32 0, i32 54
  %430 = load ptr, ptr %429, align 8, !tbaa !297
  store ptr %430, ptr @cofDC, align 8, !tbaa !3
  %431 = load ptr, ptr %10, align 8, !tbaa !3
  %432 = load ptr, ptr @img, align 8, !tbaa !13
  %433 = getelementptr inbounds nuw %struct.ImageParameters, ptr %432, i32 0, i32 54
  store ptr %431, ptr %433, align 8, !tbaa !297
  %434 = load i32, ptr @cbp, align 4, !tbaa !40
  %435 = load ptr, ptr %1, align 8, !tbaa !153
  %436 = getelementptr inbounds nuw %struct.macroblock, ptr %435, i32 0, i32 12
  store i32 %434, ptr %436, align 4, !tbaa !195
  %437 = load i64, ptr @cbp_blk, align 8, !tbaa !93
  %438 = load ptr, ptr %1, align 8, !tbaa !153
  %439 = getelementptr inbounds nuw %struct.macroblock, ptr %438, i32 0, i32 13
  store i64 %437, ptr %439, align 8, !tbaa !210
  %440 = load i32, ptr %4, align 4, !tbaa !40
  %441 = load ptr, ptr %1, align 8, !tbaa !153
  %442 = getelementptr inbounds nuw %struct.macroblock, ptr %441, i32 0, i32 8
  store i32 %440, ptr %442, align 8, !tbaa !170
  %443 = load ptr, ptr @img, align 8, !tbaa !13
  %444 = getelementptr inbounds nuw %struct.ImageParameters, ptr %443, i32 0, i32 100
  %445 = load i32, ptr %444, align 4, !tbaa !231
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %586

447:                                              ; preds = %419
  %448 = load i32, ptr %4, align 4, !tbaa !40
  %449 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %450 = getelementptr inbounds nuw %struct.RD_DATA, ptr %449, i32 0, i32 15
  store i32 %448, ptr %450, align 8, !tbaa !306
  %451 = load ptr, ptr @img, align 8, !tbaa !13
  %452 = getelementptr inbounds nuw %struct.ImageParameters, ptr %451, i32 0, i32 94
  %453 = load i32, ptr %452, align 4, !tbaa !263
  %454 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %455 = getelementptr inbounds nuw %struct.RD_DATA, ptr %454, i32 0, i32 19
  store i32 %453, ptr %455, align 8, !tbaa !307
  %456 = load i32, ptr @cbp, align 4, !tbaa !40
  %457 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %458 = getelementptr inbounds nuw %struct.RD_DATA, ptr %457, i32 0, i32 13
  store i32 %456, ptr %458, align 8, !tbaa !308
  %459 = load i64, ptr @cbp_blk, align 8, !tbaa !93
  %460 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %461 = getelementptr inbounds nuw %struct.RD_DATA, ptr %460, i32 0, i32 14
  store i64 %459, ptr %461, align 8, !tbaa !309
  %462 = load i32, ptr %4, align 4, !tbaa !40
  %463 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %464 = getelementptr inbounds nuw %struct.RD_DATA, ptr %463, i32 0, i32 6
  store i32 %462, ptr %464, align 8, !tbaa !310
  %465 = load ptr, ptr %1, align 8, !tbaa !153
  %466 = getelementptr inbounds nuw %struct.macroblock, ptr %465, i32 0, i32 35
  %467 = load i32, ptr %466, align 8, !tbaa !311
  %468 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %469 = getelementptr inbounds nuw %struct.RD_DATA, ptr %468, i32 0, i32 24
  store i32 %467, ptr %469, align 4, !tbaa !312
  %470 = load ptr, ptr %1, align 8, !tbaa !153
  %471 = getelementptr inbounds nuw %struct.macroblock, ptr %470, i32 0, i32 36
  %472 = load i32, ptr %471, align 4, !tbaa !313
  %473 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %474 = getelementptr inbounds nuw %struct.RD_DATA, ptr %473, i32 0, i32 25
  store i32 %472, ptr %474, align 8, !tbaa !314
  %475 = load ptr, ptr %1, align 8, !tbaa !153
  %476 = getelementptr inbounds nuw %struct.macroblock, ptr %475, i32 0, i32 1
  %477 = load i32, ptr %476, align 4, !tbaa !315
  %478 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %479 = getelementptr inbounds nuw %struct.RD_DATA, ptr %478, i32 0, i32 26
  store i32 %477, ptr %479, align 4, !tbaa !316
  %480 = load ptr, ptr %1, align 8, !tbaa !153
  %481 = getelementptr inbounds nuw %struct.macroblock, ptr %480, i32 0, i32 2
  %482 = load i32, ptr %481, align 8, !tbaa !317
  %483 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %484 = getelementptr inbounds nuw %struct.RD_DATA, ptr %483, i32 0, i32 23
  store i32 %482, ptr %484, align 8, !tbaa !318
  %485 = load ptr, ptr %1, align 8, !tbaa !153
  %486 = getelementptr inbounds nuw %struct.macroblock, ptr %485, i32 0, i32 37
  %487 = load i32, ptr %486, align 8, !tbaa !319
  %488 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %489 = getelementptr inbounds nuw %struct.RD_DATA, ptr %488, i32 0, i32 27
  store i32 %487, ptr %489, align 8, !tbaa !320
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %490

490:                                              ; preds = %544, %447
  %491 = load i32, ptr %6, align 4, !tbaa !40
  %492 = load ptr, ptr @img, align 8, !tbaa !13
  %493 = getelementptr inbounds nuw %struct.ImageParameters, ptr %492, i32 0, i32 158
  %494 = load i32, ptr %493, align 8, !tbaa !213
  %495 = add nsw i32 4, %494
  %496 = icmp slt i32 %491, %495
  br i1 %496, label %497, label %547

497:                                              ; preds = %490
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %498

498:                                              ; preds = %540, %497
  %499 = load i32, ptr %7, align 4, !tbaa !40
  %500 = icmp slt i32 %499, 4
  br i1 %500, label %501, label %543

501:                                              ; preds = %498
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %502

502:                                              ; preds = %536, %501
  %503 = load i32, ptr %8, align 4, !tbaa !40
  %504 = icmp slt i32 %503, 2
  br i1 %504, label %505, label %539

505:                                              ; preds = %502
  %506 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %507 = getelementptr inbounds nuw %struct.RD_DATA, ptr %506, i32 0, i32 4
  %508 = load ptr, ptr %507, align 8, !tbaa !321
  %509 = load i32, ptr %6, align 4, !tbaa !40
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds ptr, ptr %508, i64 %510
  %512 = load ptr, ptr %511, align 8, !tbaa !3
  %513 = load i32, ptr %7, align 4, !tbaa !40
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds ptr, ptr %512, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !21
  %517 = load i32, ptr %8, align 4, !tbaa !40
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds ptr, ptr %516, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !92
  %521 = load ptr, ptr @img, align 8, !tbaa !13
  %522 = getelementptr inbounds nuw %struct.ImageParameters, ptr %521, i32 0, i32 53
  %523 = load ptr, ptr %522, align 8, !tbaa !137
  %524 = load i32, ptr %6, align 4, !tbaa !40
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds ptr, ptr %523, i64 %525
  %527 = load ptr, ptr %526, align 8, !tbaa !3
  %528 = load i32, ptr %7, align 4, !tbaa !40
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds ptr, ptr %527, i64 %529
  %531 = load ptr, ptr %530, align 8, !tbaa !21
  %532 = load i32, ptr %8, align 4, !tbaa !40
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds ptr, ptr %531, i64 %533
  %535 = load ptr, ptr %534, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %520, ptr align 4 %535, i64 260, i1 false)
  br label %536

536:                                              ; preds = %505
  %537 = load i32, ptr %8, align 4, !tbaa !40
  %538 = add nsw i32 %537, 1
  store i32 %538, ptr %8, align 4, !tbaa !40
  br label %502, !llvm.loop !322

539:                                              ; preds = %502
  br label %540

540:                                              ; preds = %539
  %541 = load i32, ptr %7, align 4, !tbaa !40
  %542 = add nsw i32 %541, 1
  store i32 %542, ptr %7, align 4, !tbaa !40
  br label %498, !llvm.loop !323

543:                                              ; preds = %498
  br label %544

544:                                              ; preds = %543
  %545 = load i32, ptr %6, align 4, !tbaa !40
  %546 = add nsw i32 %545, 1
  store i32 %546, ptr %6, align 4, !tbaa !40
  br label %490, !llvm.loop !324

547:                                              ; preds = %490
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %548

548:                                              ; preds = %582, %547
  %549 = load i32, ptr %6, align 4, !tbaa !40
  %550 = icmp slt i32 %549, 3
  br i1 %550, label %551, label %585

551:                                              ; preds = %548
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %552

552:                                              ; preds = %578, %551
  %553 = load i32, ptr %8, align 4, !tbaa !40
  %554 = icmp slt i32 %553, 2
  br i1 %554, label %555, label %581

555:                                              ; preds = %552
  %556 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %557 = getelementptr inbounds nuw %struct.RD_DATA, ptr %556, i32 0, i32 5
  %558 = load ptr, ptr %557, align 8, !tbaa !325
  %559 = load i32, ptr %6, align 4, !tbaa !40
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %558, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !21
  %563 = load i32, ptr %8, align 4, !tbaa !40
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds ptr, ptr %562, i64 %564
  %566 = load ptr, ptr %565, align 8, !tbaa !92
  %567 = load ptr, ptr @img, align 8, !tbaa !13
  %568 = getelementptr inbounds nuw %struct.ImageParameters, ptr %567, i32 0, i32 54
  %569 = load ptr, ptr %568, align 8, !tbaa !297
  %570 = load i32, ptr %6, align 4, !tbaa !40
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds ptr, ptr %569, i64 %571
  %573 = load ptr, ptr %572, align 8, !tbaa !21
  %574 = load i32, ptr %8, align 4, !tbaa !40
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds ptr, ptr %573, i64 %575
  %577 = load ptr, ptr %576, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %566, ptr align 4 %577, i64 72, i1 false)
  br label %578

578:                                              ; preds = %555
  %579 = load i32, ptr %8, align 4, !tbaa !40
  %580 = add nsw i32 %579, 1
  store i32 %580, ptr %8, align 4, !tbaa !40
  br label %552, !llvm.loop !326

581:                                              ; preds = %552
  br label %582

582:                                              ; preds = %581
  %583 = load i32, ptr %6, align 4, !tbaa !40
  %584 = add nsw i32 %583, 1
  store i32 %584, ptr %6, align 4, !tbaa !40
  br label %548, !llvm.loop !327

585:                                              ; preds = %548
  br label %586

586:                                              ; preds = %585, %419
  %587 = load ptr, ptr %1, align 8, !tbaa !153
  %588 = getelementptr inbounds nuw %struct.macroblock, ptr %587, i32 0, i32 14
  %589 = getelementptr inbounds [4 x i32], ptr %588, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %589, ptr align 4 @b8mode, i64 16, i1 false)
  %590 = load ptr, ptr %1, align 8, !tbaa !153
  %591 = getelementptr inbounds nuw %struct.macroblock, ptr %590, i32 0, i32 15
  %592 = getelementptr inbounds [4 x i32], ptr %591, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %592, ptr align 4 @b8pdir, i64 16, i1 false)
  %593 = load ptr, ptr @img, align 8, !tbaa !13
  %594 = getelementptr inbounds nuw %struct.ImageParameters, ptr %593, i32 0, i32 100
  %595 = load i32, ptr %594, align 4, !tbaa !231
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %604

597:                                              ; preds = %586
  %598 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %599 = getelementptr inbounds nuw %struct.RD_DATA, ptr %598, i32 0, i32 8
  %600 = getelementptr inbounds [4 x i32], ptr %599, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %600, ptr align 4 @b8mode, i64 16, i1 false)
  %601 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %602 = getelementptr inbounds nuw %struct.RD_DATA, ptr %601, i32 0, i32 9
  %603 = getelementptr inbounds [4 x i32], ptr %602, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %603, ptr align 4 @b8pdir, i64 16, i1 false)
  br label %604

604:                                              ; preds = %597, %586
  %605 = load ptr, ptr %1, align 8, !tbaa !153
  %606 = getelementptr inbounds nuw %struct.macroblock, ptr %605, i32 0, i32 8
  %607 = load i32, ptr %606, align 8, !tbaa !170
  %608 = icmp eq i32 %607, 1
  br i1 %608, label %609, label %612

609:                                              ; preds = %604
  %610 = load i16, ptr @bi_pred_me, align 2, !tbaa !67
  %611 = sext i16 %610 to i32
  br label %613

612:                                              ; preds = %604
  br label %613

613:                                              ; preds = %612, %609
  %614 = phi i32 [ %611, %609 ], [ 0, %612 ]
  %615 = trunc i32 %614 to i16
  %616 = load ptr, ptr %1, align 8, !tbaa !153
  %617 = getelementptr inbounds nuw %struct.macroblock, ptr %616, i32 0, i32 33
  store i16 %615, ptr %617, align 8, !tbaa !154
  %618 = load i32, ptr %4, align 4, !tbaa !40
  %619 = icmp eq i32 %618, 8
  br i1 %619, label %620, label %629

620:                                              ; preds = %613
  %621 = load i32, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !40
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %629, label %623

623:                                              ; preds = %620
  %624 = load ptr, ptr @input, align 8, !tbaa !13
  %625 = getelementptr inbounds nuw %struct.InputParameters, ptr %624, i32 0, i32 153
  %626 = load i32, ptr %625, align 4, !tbaa !14
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %623
  call void @RestoreMV8x8(i32 noundef signext 1)
  br label %629

629:                                              ; preds = %628, %623, %620, %613
  %630 = load ptr, ptr %1, align 8, !tbaa !153
  %631 = getelementptr inbounds nuw %struct.macroblock, ptr %630, i32 0, i32 12
  %632 = load i32, ptr %631, align 4, !tbaa !195
  %633 = and i32 %632, 15
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %648

635:                                              ; preds = %629
  %636 = load ptr, ptr %1, align 8, !tbaa !153
  %637 = getelementptr inbounds nuw %struct.macroblock, ptr %636, i32 0, i32 8
  %638 = load i32, ptr %637, align 8, !tbaa !170
  %639 = icmp eq i32 %638, 9
  br i1 %639, label %648, label %640

640:                                              ; preds = %635
  %641 = load ptr, ptr %1, align 8, !tbaa !153
  %642 = getelementptr inbounds nuw %struct.macroblock, ptr %641, i32 0, i32 8
  %643 = load i32, ptr %642, align 8, !tbaa !170
  %644 = icmp eq i32 %643, 13
  br i1 %644, label %648, label %645

645:                                              ; preds = %640
  %646 = load ptr, ptr %1, align 8, !tbaa !153
  %647 = getelementptr inbounds nuw %struct.macroblock, ptr %646, i32 0, i32 31
  store i32 0, ptr %647, align 8, !tbaa !169
  br label %652

648:                                              ; preds = %640, %635, %629
  %649 = load i32, ptr @luma_transform_size_8x8_flag, align 4, !tbaa !40
  %650 = load ptr, ptr %1, align 8, !tbaa !153
  %651 = getelementptr inbounds nuw %struct.macroblock, ptr %650, i32 0, i32 31
  store i32 %649, ptr %651, align 8, !tbaa !169
  br label %652

652:                                              ; preds = %648, %645
  %653 = load ptr, ptr %1, align 8, !tbaa !153
  %654 = getelementptr inbounds nuw %struct.macroblock, ptr %653, i32 0, i32 31
  %655 = load i32, ptr %654, align 8, !tbaa !169
  %656 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %657 = getelementptr inbounds nuw %struct.RD_DATA, ptr %656, i32 0, i32 21
  store i32 %655, ptr %657, align 8, !tbaa !328
  %658 = load ptr, ptr @input, align 8, !tbaa !13
  %659 = getelementptr inbounds nuw %struct.InputParameters, ptr %658, i32 0, i32 113
  %660 = load i32, ptr %659, align 8, !tbaa !23
  %661 = icmp eq i32 %660, 3
  br i1 %661, label %662, label %684

662:                                              ; preds = %652
  %663 = load ptr, ptr @img, align 8, !tbaa !13
  %664 = getelementptr inbounds nuw %struct.ImageParameters, ptr %663, i32 0, i32 5
  %665 = load i32, ptr %664, align 4, !tbaa !39
  %666 = icmp ne i32 %665, 1
  br i1 %666, label %667, label %684

667:                                              ; preds = %662
  %668 = load i32, ptr %4, align 4, !tbaa !40
  %669 = trunc i32 %668 to i8
  %670 = load ptr, ptr @decs, align 8, !tbaa !13
  %671 = getelementptr inbounds nuw %struct.Decoders, ptr %670, i32 0, i32 6
  %672 = load ptr, ptr %671, align 8, !tbaa !329
  %673 = load ptr, ptr @img, align 8, !tbaa !13
  %674 = getelementptr inbounds nuw %struct.ImageParameters, ptr %673, i32 0, i32 36
  %675 = load i32, ptr %674, align 4, !tbaa !330
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds ptr, ptr %672, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !44
  %679 = load ptr, ptr @img, align 8, !tbaa !13
  %680 = getelementptr inbounds nuw %struct.ImageParameters, ptr %679, i32 0, i32 35
  %681 = load i32, ptr %680, align 8, !tbaa !331
  %682 = sext i32 %681 to i64
  %683 = getelementptr inbounds i8, ptr %678, i64 %682
  store i8 %669, ptr %683, align 1, !tbaa !45
  br label %684

684:                                              ; preds = %667, %662, %652
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %685

685:                                              ; preds = %1206, %684
  %686 = load i32, ptr %7, align 4, !tbaa !40
  %687 = icmp slt i32 %686, 4
  br i1 %687, label %688, label %1209

688:                                              ; preds = %685
  %689 = load ptr, ptr @img, align 8, !tbaa !13
  %690 = getelementptr inbounds nuw %struct.ImageParameters, ptr %689, i32 0, i32 38
  %691 = load i32, ptr %690, align 4, !tbaa !68
  %692 = load i32, ptr %7, align 4, !tbaa !40
  %693 = add nsw i32 %691, %692
  store i32 %693, ptr %12, align 4, !tbaa !40
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %694

694:                                              ; preds = %1202, %688
  %695 = load i32, ptr %6, align 4, !tbaa !40
  %696 = icmp slt i32 %695, 4
  br i1 %696, label %697, label %1205

697:                                              ; preds = %694
  %698 = load ptr, ptr @img, align 8, !tbaa !13
  %699 = getelementptr inbounds nuw %struct.ImageParameters, ptr %698, i32 0, i32 37
  %700 = load i32, ptr %699, align 8, !tbaa !69
  %701 = load i32, ptr %6, align 4, !tbaa !40
  %702 = add nsw i32 %700, %701
  store i32 %702, ptr %11, align 4, !tbaa !40
  %703 = load i32, ptr %7, align 4, !tbaa !40
  %704 = ashr i32 %703, 1
  %705 = mul nsw i32 2, %704
  %706 = load i32, ptr %6, align 4, !tbaa !40
  %707 = ashr i32 %706, 1
  %708 = add nsw i32 %705, %707
  store i32 %708, ptr %8, align 4, !tbaa !40
  %709 = load ptr, ptr %1, align 8, !tbaa !153
  %710 = getelementptr inbounds nuw %struct.macroblock, ptr %709, i32 0, i32 15
  %711 = load i32, ptr %8, align 4, !tbaa !40
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [4 x i32], ptr %710, i64 0, i64 %712
  %714 = load i32, ptr %713, align 4, !tbaa !40
  %715 = icmp eq i32 %714, 1
  br i1 %715, label %736, label %716

716:                                              ; preds = %697
  %717 = load ptr, ptr %1, align 8, !tbaa !153
  %718 = getelementptr inbounds nuw %struct.macroblock, ptr %717, i32 0, i32 8
  %719 = load i32, ptr %718, align 8, !tbaa !170
  %720 = icmp eq i32 %719, 9
  br i1 %720, label %736, label %721

721:                                              ; preds = %716
  %722 = load ptr, ptr %1, align 8, !tbaa !153
  %723 = getelementptr inbounds nuw %struct.macroblock, ptr %722, i32 0, i32 8
  %724 = load i32, ptr %723, align 8, !tbaa !170
  %725 = icmp eq i32 %724, 10
  br i1 %725, label %736, label %726

726:                                              ; preds = %721
  %727 = load ptr, ptr %1, align 8, !tbaa !153
  %728 = getelementptr inbounds nuw %struct.macroblock, ptr %727, i32 0, i32 8
  %729 = load i32, ptr %728, align 8, !tbaa !170
  %730 = icmp eq i32 %729, 13
  br i1 %730, label %736, label %731

731:                                              ; preds = %726
  %732 = load ptr, ptr %1, align 8, !tbaa !153
  %733 = getelementptr inbounds nuw %struct.macroblock, ptr %732, i32 0, i32 8
  %734 = load i32, ptr %733, align 8, !tbaa !170
  %735 = icmp eq i32 %734, 14
  br i1 %735, label %736, label %804

736:                                              ; preds = %731, %726, %721, %716, %697
  %737 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %738 = getelementptr inbounds nuw %struct.storable_picture, ptr %737, i32 0, i32 35
  %739 = load ptr, ptr %738, align 8, !tbaa !178
  %740 = getelementptr inbounds ptr, ptr %739, i64 0
  %741 = load ptr, ptr %740, align 8, !tbaa !43
  %742 = load i32, ptr %12, align 4, !tbaa !40
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds ptr, ptr %741, i64 %743
  %745 = load ptr, ptr %744, align 8, !tbaa !44
  %746 = load i32, ptr %11, align 4, !tbaa !40
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds i8, ptr %745, i64 %747
  store i8 -1, ptr %748, align 1, !tbaa !45
  %749 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %750 = getelementptr inbounds nuw %struct.storable_picture, ptr %749, i32 0, i32 36
  %751 = load ptr, ptr %750, align 8, !tbaa !188
  %752 = getelementptr inbounds ptr, ptr %751, i64 0
  %753 = load ptr, ptr %752, align 8, !tbaa !189
  %754 = load i32, ptr %12, align 4, !tbaa !40
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds ptr, ptr %753, i64 %755
  %757 = load ptr, ptr %756, align 8, !tbaa !151
  %758 = load i32, ptr %11, align 4, !tbaa !40
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i64, ptr %757, i64 %759
  store i64 -1, ptr %760, align 8, !tbaa !93
  %761 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %762 = getelementptr inbounds nuw %struct.storable_picture, ptr %761, i32 0, i32 38
  %763 = load ptr, ptr %762, align 8, !tbaa !224
  %764 = getelementptr inbounds ptr, ptr %763, i64 0
  %765 = load ptr, ptr %764, align 8, !tbaa !61
  %766 = load i32, ptr %12, align 4, !tbaa !40
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds ptr, ptr %765, i64 %767
  %769 = load ptr, ptr %768, align 8, !tbaa !63
  %770 = load i32, ptr %11, align 4, !tbaa !40
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds ptr, ptr %769, i64 %771
  %773 = load ptr, ptr %772, align 8, !tbaa !65
  %774 = getelementptr inbounds i16, ptr %773, i64 0
  store i16 0, ptr %774, align 2, !tbaa !67
  %775 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %776 = getelementptr inbounds nuw %struct.storable_picture, ptr %775, i32 0, i32 38
  %777 = load ptr, ptr %776, align 8, !tbaa !224
  %778 = getelementptr inbounds ptr, ptr %777, i64 0
  %779 = load ptr, ptr %778, align 8, !tbaa !61
  %780 = load i32, ptr %12, align 4, !tbaa !40
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds ptr, ptr %779, i64 %781
  %783 = load ptr, ptr %782, align 8, !tbaa !63
  %784 = load i32, ptr %11, align 4, !tbaa !40
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds ptr, ptr %783, i64 %785
  %787 = load ptr, ptr %786, align 8, !tbaa !65
  %788 = getelementptr inbounds i16, ptr %787, i64 1
  store i16 0, ptr %788, align 2, !tbaa !67
  %789 = load ptr, ptr @img, align 8, !tbaa !13
  %790 = getelementptr inbounds nuw %struct.ImageParameters, ptr %789, i32 0, i32 100
  %791 = load i32, ptr %790, align 4, !tbaa !231
  %792 = icmp ne i32 %791, 0
  br i1 %792, label %793, label %803

793:                                              ; preds = %736
  %794 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %795 = getelementptr inbounds nuw %struct.RD_DATA, ptr %794, i32 0, i32 18
  %796 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %795, i64 0, i64 0
  %797 = load i32, ptr %7, align 4, !tbaa !40
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [4 x [4 x i8]], ptr %796, i64 0, i64 %798
  %800 = load i32, ptr %6, align 4, !tbaa !40
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [4 x i8], ptr %799, i64 0, i64 %801
  store i8 -1, ptr %802, align 1, !tbaa !45
  br label %803

803:                                              ; preds = %793, %736
  br label %1105

804:                                              ; preds = %731
  %805 = load ptr, ptr %1, align 8, !tbaa !153
  %806 = getelementptr inbounds nuw %struct.macroblock, ptr %805, i32 0, i32 33
  %807 = load i16, ptr %806, align 8, !tbaa !154
  %808 = sext i16 %807 to i32
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %964

810:                                              ; preds = %804
  %811 = load ptr, ptr %1, align 8, !tbaa !153
  %812 = getelementptr inbounds nuw %struct.macroblock, ptr %811, i32 0, i32 15
  %813 = load i32, ptr %8, align 4, !tbaa !40
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds [4 x i32], ptr %812, i64 0, i64 %814
  %816 = load i32, ptr %815, align 4, !tbaa !40
  %817 = icmp eq i32 %816, 2
  br i1 %817, label %818, label %964

818:                                              ; preds = %810
  %819 = load ptr, ptr %1, align 8, !tbaa !153
  %820 = getelementptr inbounds nuw %struct.macroblock, ptr %819, i32 0, i32 8
  %821 = load i32, ptr %820, align 8, !tbaa !170
  %822 = icmp eq i32 %821, 1
  br i1 %822, label %823, label %964

823:                                              ; preds = %818
  %824 = load ptr, ptr %1, align 8, !tbaa !153
  %825 = getelementptr inbounds nuw %struct.macroblock, ptr %824, i32 0, i32 33
  %826 = load i16, ptr %825, align 8, !tbaa !154
  %827 = sext i16 %826 to i32
  %828 = icmp eq i32 %827, 1
  br i1 %828, label %829, label %854

829:                                              ; preds = %823
  %830 = load ptr, ptr @img, align 8, !tbaa !13
  %831 = getelementptr inbounds nuw %struct.ImageParameters, ptr %830, i32 0, i32 81
  %832 = load ptr, ptr %831, align 8, !tbaa !227
  %833 = load i32, ptr %7, align 4, !tbaa !40
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds ptr, ptr %832, i64 %834
  %836 = load ptr, ptr %835, align 8, !tbaa !57
  %837 = load i32, ptr %6, align 4, !tbaa !40
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds ptr, ptr %836, i64 %838
  %840 = load ptr, ptr %839, align 8, !tbaa !59
  %841 = getelementptr inbounds ptr, ptr %840, i64 0
  %842 = load ptr, ptr %841, align 8, !tbaa !61
  %843 = getelementptr inbounds ptr, ptr %842, i64 0
  %844 = load ptr, ptr %843, align 8, !tbaa !63
  %845 = load ptr, ptr %1, align 8, !tbaa !153
  %846 = getelementptr inbounds nuw %struct.macroblock, ptr %845, i32 0, i32 14
  %847 = load i32, ptr %8, align 4, !tbaa !40
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [4 x i32], ptr %846, i64 0, i64 %848
  %850 = load i32, ptr %849, align 4, !tbaa !40
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds ptr, ptr %844, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !65
  br label %879

854:                                              ; preds = %823
  %855 = load ptr, ptr @img, align 8, !tbaa !13
  %856 = getelementptr inbounds nuw %struct.ImageParameters, ptr %855, i32 0, i32 82
  %857 = load ptr, ptr %856, align 8, !tbaa !228
  %858 = load i32, ptr %7, align 4, !tbaa !40
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds ptr, ptr %857, i64 %859
  %861 = load ptr, ptr %860, align 8, !tbaa !57
  %862 = load i32, ptr %6, align 4, !tbaa !40
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds ptr, ptr %861, i64 %863
  %865 = load ptr, ptr %864, align 8, !tbaa !59
  %866 = getelementptr inbounds ptr, ptr %865, i64 0
  %867 = load ptr, ptr %866, align 8, !tbaa !61
  %868 = getelementptr inbounds ptr, ptr %867, i64 0
  %869 = load ptr, ptr %868, align 8, !tbaa !63
  %870 = load ptr, ptr %1, align 8, !tbaa !153
  %871 = getelementptr inbounds nuw %struct.macroblock, ptr %870, i32 0, i32 14
  %872 = load i32, ptr %8, align 4, !tbaa !40
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [4 x i32], ptr %871, i64 0, i64 %873
  %875 = load i32, ptr %874, align 4, !tbaa !40
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds ptr, ptr %869, i64 %876
  %878 = load ptr, ptr %877, align 8, !tbaa !65
  br label %879

879:                                              ; preds = %854, %829
  %880 = phi ptr [ %853, %829 ], [ %878, %854 ]
  store ptr %880, ptr %14, align 8, !tbaa !65
  %881 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %882 = getelementptr inbounds nuw %struct.storable_picture, ptr %881, i32 0, i32 35
  %883 = load ptr, ptr %882, align 8, !tbaa !178
  %884 = getelementptr inbounds ptr, ptr %883, i64 0
  %885 = load ptr, ptr %884, align 8, !tbaa !43
  %886 = load i32, ptr %12, align 4, !tbaa !40
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds ptr, ptr %885, i64 %887
  %889 = load ptr, ptr %888, align 8, !tbaa !44
  %890 = load i32, ptr %11, align 4, !tbaa !40
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds i8, ptr %889, i64 %891
  store i8 0, ptr %892, align 1, !tbaa !45
  %893 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %894 = getelementptr inbounds nuw %struct.storable_picture, ptr %893, i32 0, i32 6
  %895 = load ptr, ptr %1, align 8, !tbaa !153
  %896 = getelementptr inbounds nuw %struct.macroblock, ptr %895, i32 0, i32 21
  %897 = load i32, ptr %896, align 8, !tbaa !187
  %898 = add nsw i32 0, %897
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [6 x [33 x i64]], ptr %894, i64 0, i64 %899
  %901 = getelementptr inbounds [33 x i64], ptr %900, i64 0, i64 0
  %902 = load i64, ptr %901, align 8, !tbaa !93
  %903 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %904 = getelementptr inbounds nuw %struct.storable_picture, ptr %903, i32 0, i32 36
  %905 = load ptr, ptr %904, align 8, !tbaa !188
  %906 = getelementptr inbounds ptr, ptr %905, i64 0
  %907 = load ptr, ptr %906, align 8, !tbaa !189
  %908 = load i32, ptr %12, align 4, !tbaa !40
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds ptr, ptr %907, i64 %909
  %911 = load ptr, ptr %910, align 8, !tbaa !151
  %912 = load i32, ptr %11, align 4, !tbaa !40
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i64, ptr %911, i64 %913
  store i64 %902, ptr %914, align 8, !tbaa !93
  %915 = load ptr, ptr %14, align 8, !tbaa !65
  %916 = getelementptr inbounds i16, ptr %915, i64 0
  %917 = load i16, ptr %916, align 2, !tbaa !67
  %918 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %919 = getelementptr inbounds nuw %struct.storable_picture, ptr %918, i32 0, i32 38
  %920 = load ptr, ptr %919, align 8, !tbaa !224
  %921 = getelementptr inbounds ptr, ptr %920, i64 0
  %922 = load ptr, ptr %921, align 8, !tbaa !61
  %923 = load i32, ptr %12, align 4, !tbaa !40
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds ptr, ptr %922, i64 %924
  %926 = load ptr, ptr %925, align 8, !tbaa !63
  %927 = load i32, ptr %11, align 4, !tbaa !40
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds ptr, ptr %926, i64 %928
  %930 = load ptr, ptr %929, align 8, !tbaa !65
  %931 = getelementptr inbounds i16, ptr %930, i64 0
  store i16 %917, ptr %931, align 2, !tbaa !67
  %932 = load ptr, ptr %14, align 8, !tbaa !65
  %933 = getelementptr inbounds i16, ptr %932, i64 1
  %934 = load i16, ptr %933, align 2, !tbaa !67
  %935 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %936 = getelementptr inbounds nuw %struct.storable_picture, ptr %935, i32 0, i32 38
  %937 = load ptr, ptr %936, align 8, !tbaa !224
  %938 = getelementptr inbounds ptr, ptr %937, i64 0
  %939 = load ptr, ptr %938, align 8, !tbaa !61
  %940 = load i32, ptr %12, align 4, !tbaa !40
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds ptr, ptr %939, i64 %941
  %943 = load ptr, ptr %942, align 8, !tbaa !63
  %944 = load i32, ptr %11, align 4, !tbaa !40
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds ptr, ptr %943, i64 %945
  %947 = load ptr, ptr %946, align 8, !tbaa !65
  %948 = getelementptr inbounds i16, ptr %947, i64 1
  store i16 %934, ptr %948, align 2, !tbaa !67
  %949 = load ptr, ptr @img, align 8, !tbaa !13
  %950 = getelementptr inbounds nuw %struct.ImageParameters, ptr %949, i32 0, i32 100
  %951 = load i32, ptr %950, align 4, !tbaa !231
  %952 = icmp ne i32 %951, 0
  br i1 %952, label %953, label %963

953:                                              ; preds = %879
  %954 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %955 = getelementptr inbounds nuw %struct.RD_DATA, ptr %954, i32 0, i32 18
  %956 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %955, i64 0, i64 0
  %957 = load i32, ptr %7, align 4, !tbaa !40
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [4 x [4 x i8]], ptr %956, i64 0, i64 %958
  %960 = load i32, ptr %6, align 4, !tbaa !40
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds [4 x i8], ptr %959, i64 0, i64 %961
  store i8 0, ptr %962, align 1, !tbaa !45
  br label %963

963:                                              ; preds = %953, %879
  br label %1104

964:                                              ; preds = %818, %810, %804
  %965 = load ptr, ptr @img, align 8, !tbaa !13
  %966 = getelementptr inbounds nuw %struct.ImageParameters, ptr %965, i32 0, i32 80
  %967 = load ptr, ptr %966, align 8, !tbaa !56
  %968 = load i32, ptr %7, align 4, !tbaa !40
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds ptr, ptr %967, i64 %969
  %971 = load ptr, ptr %970, align 8, !tbaa !57
  %972 = load i32, ptr %6, align 4, !tbaa !40
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds ptr, ptr %971, i64 %973
  %975 = load ptr, ptr %974, align 8, !tbaa !59
  %976 = getelementptr inbounds ptr, ptr %975, i64 0
  %977 = load ptr, ptr %976, align 8, !tbaa !61
  %978 = load i32, ptr %7, align 4, !tbaa !40
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds [4 x [4 x i8]], ptr @frefframe, i64 0, i64 %979
  %981 = load i32, ptr %6, align 4, !tbaa !40
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [4 x i8], ptr %980, i64 0, i64 %982
  %984 = load i8, ptr %983, align 1, !tbaa !45
  %985 = sext i8 %984 to i16
  %986 = sext i16 %985 to i64
  %987 = getelementptr inbounds ptr, ptr %977, i64 %986
  %988 = load ptr, ptr %987, align 8, !tbaa !63
  %989 = load ptr, ptr %1, align 8, !tbaa !153
  %990 = getelementptr inbounds nuw %struct.macroblock, ptr %989, i32 0, i32 14
  %991 = load i32, ptr %8, align 4, !tbaa !40
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds [4 x i32], ptr %990, i64 0, i64 %992
  %994 = load i32, ptr %993, align 4, !tbaa !40
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds ptr, ptr %988, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !65
  store ptr %997, ptr %14, align 8, !tbaa !65
  %998 = load i32, ptr %7, align 4, !tbaa !40
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds [4 x [4 x i8]], ptr @frefframe, i64 0, i64 %999
  %1001 = load i32, ptr %6, align 4, !tbaa !40
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds [4 x i8], ptr %1000, i64 0, i64 %1002
  %1004 = load i8, ptr %1003, align 1, !tbaa !45
  %1005 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1006 = getelementptr inbounds nuw %struct.storable_picture, ptr %1005, i32 0, i32 35
  %1007 = load ptr, ptr %1006, align 8, !tbaa !178
  %1008 = getelementptr inbounds ptr, ptr %1007, i64 0
  %1009 = load ptr, ptr %1008, align 8, !tbaa !43
  %1010 = load i32, ptr %12, align 4, !tbaa !40
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds ptr, ptr %1009, i64 %1011
  %1013 = load ptr, ptr %1012, align 8, !tbaa !44
  %1014 = load i32, ptr %11, align 4, !tbaa !40
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds i8, ptr %1013, i64 %1015
  store i8 %1004, ptr %1016, align 1, !tbaa !45
  %1017 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1018 = getelementptr inbounds nuw %struct.storable_picture, ptr %1017, i32 0, i32 6
  %1019 = load ptr, ptr %1, align 8, !tbaa !153
  %1020 = getelementptr inbounds nuw %struct.macroblock, ptr %1019, i32 0, i32 21
  %1021 = load i32, ptr %1020, align 8, !tbaa !187
  %1022 = add nsw i32 0, %1021
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds [6 x [33 x i64]], ptr %1018, i64 0, i64 %1023
  %1025 = load i32, ptr %7, align 4, !tbaa !40
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [4 x [4 x i8]], ptr @frefframe, i64 0, i64 %1026
  %1028 = load i32, ptr %6, align 4, !tbaa !40
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [4 x i8], ptr %1027, i64 0, i64 %1029
  %1031 = load i8, ptr %1030, align 1, !tbaa !45
  %1032 = sext i8 %1031 to i16
  %1033 = sext i16 %1032 to i64
  %1034 = getelementptr inbounds [33 x i64], ptr %1024, i64 0, i64 %1033
  %1035 = load i64, ptr %1034, align 8, !tbaa !93
  %1036 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1037 = getelementptr inbounds nuw %struct.storable_picture, ptr %1036, i32 0, i32 36
  %1038 = load ptr, ptr %1037, align 8, !tbaa !188
  %1039 = getelementptr inbounds ptr, ptr %1038, i64 0
  %1040 = load ptr, ptr %1039, align 8, !tbaa !189
  %1041 = load i32, ptr %12, align 4, !tbaa !40
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds ptr, ptr %1040, i64 %1042
  %1044 = load ptr, ptr %1043, align 8, !tbaa !151
  %1045 = load i32, ptr %11, align 4, !tbaa !40
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds i64, ptr %1044, i64 %1046
  store i64 %1035, ptr %1047, align 8, !tbaa !93
  %1048 = load ptr, ptr %14, align 8, !tbaa !65
  %1049 = getelementptr inbounds i16, ptr %1048, i64 0
  %1050 = load i16, ptr %1049, align 2, !tbaa !67
  %1051 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1052 = getelementptr inbounds nuw %struct.storable_picture, ptr %1051, i32 0, i32 38
  %1053 = load ptr, ptr %1052, align 8, !tbaa !224
  %1054 = getelementptr inbounds ptr, ptr %1053, i64 0
  %1055 = load ptr, ptr %1054, align 8, !tbaa !61
  %1056 = load i32, ptr %12, align 4, !tbaa !40
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds ptr, ptr %1055, i64 %1057
  %1059 = load ptr, ptr %1058, align 8, !tbaa !63
  %1060 = load i32, ptr %11, align 4, !tbaa !40
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds ptr, ptr %1059, i64 %1061
  %1063 = load ptr, ptr %1062, align 8, !tbaa !65
  %1064 = getelementptr inbounds i16, ptr %1063, i64 0
  store i16 %1050, ptr %1064, align 2, !tbaa !67
  %1065 = load ptr, ptr %14, align 8, !tbaa !65
  %1066 = getelementptr inbounds i16, ptr %1065, i64 1
  %1067 = load i16, ptr %1066, align 2, !tbaa !67
  %1068 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1069 = getelementptr inbounds nuw %struct.storable_picture, ptr %1068, i32 0, i32 38
  %1070 = load ptr, ptr %1069, align 8, !tbaa !224
  %1071 = getelementptr inbounds ptr, ptr %1070, i64 0
  %1072 = load ptr, ptr %1071, align 8, !tbaa !61
  %1073 = load i32, ptr %12, align 4, !tbaa !40
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds ptr, ptr %1072, i64 %1074
  %1076 = load ptr, ptr %1075, align 8, !tbaa !63
  %1077 = load i32, ptr %11, align 4, !tbaa !40
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds ptr, ptr %1076, i64 %1078
  %1080 = load ptr, ptr %1079, align 8, !tbaa !65
  %1081 = getelementptr inbounds i16, ptr %1080, i64 1
  store i16 %1067, ptr %1081, align 2, !tbaa !67
  %1082 = load ptr, ptr @img, align 8, !tbaa !13
  %1083 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1082, i32 0, i32 100
  %1084 = load i32, ptr %1083, align 4, !tbaa !231
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1086, label %1103

1086:                                             ; preds = %964
  %1087 = load i32, ptr %7, align 4, !tbaa !40
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [4 x [4 x i8]], ptr @frefframe, i64 0, i64 %1088
  %1090 = load i32, ptr %6, align 4, !tbaa !40
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [4 x i8], ptr %1089, i64 0, i64 %1091
  %1093 = load i8, ptr %1092, align 1, !tbaa !45
  %1094 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1095 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1094, i32 0, i32 18
  %1096 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %1095, i64 0, i64 0
  %1097 = load i32, ptr %7, align 4, !tbaa !40
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds [4 x [4 x i8]], ptr %1096, i64 0, i64 %1098
  %1100 = load i32, ptr %6, align 4, !tbaa !40
  %1101 = sext i32 %1100 to i64
  %1102 = getelementptr inbounds [4 x i8], ptr %1099, i64 0, i64 %1101
  store i8 %1093, ptr %1102, align 1, !tbaa !45
  br label %1103

1103:                                             ; preds = %1086, %964
  br label %1104

1104:                                             ; preds = %1103, %963
  br label %1105

1105:                                             ; preds = %1104, %803
  %1106 = load ptr, ptr %1, align 8, !tbaa !153
  %1107 = getelementptr inbounds nuw %struct.macroblock, ptr %1106, i32 0, i32 15
  %1108 = load i32, ptr %8, align 4, !tbaa !40
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds [4 x i32], ptr %1107, i64 0, i64 %1109
  %1111 = load i32, ptr %1110, align 4, !tbaa !40
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1133, label %1113

1113:                                             ; preds = %1105
  %1114 = load ptr, ptr %1, align 8, !tbaa !153
  %1115 = getelementptr inbounds nuw %struct.macroblock, ptr %1114, i32 0, i32 8
  %1116 = load i32, ptr %1115, align 8, !tbaa !170
  %1117 = icmp eq i32 %1116, 9
  br i1 %1117, label %1133, label %1118

1118:                                             ; preds = %1113
  %1119 = load ptr, ptr %1, align 8, !tbaa !153
  %1120 = getelementptr inbounds nuw %struct.macroblock, ptr %1119, i32 0, i32 8
  %1121 = load i32, ptr %1120, align 8, !tbaa !170
  %1122 = icmp eq i32 %1121, 10
  br i1 %1122, label %1133, label %1123

1123:                                             ; preds = %1118
  %1124 = load ptr, ptr %1, align 8, !tbaa !153
  %1125 = getelementptr inbounds nuw %struct.macroblock, ptr %1124, i32 0, i32 8
  %1126 = load i32, ptr %1125, align 8, !tbaa !170
  %1127 = icmp eq i32 %1126, 13
  br i1 %1127, label %1133, label %1128

1128:                                             ; preds = %1123
  %1129 = load ptr, ptr %1, align 8, !tbaa !153
  %1130 = getelementptr inbounds nuw %struct.macroblock, ptr %1129, i32 0, i32 8
  %1131 = load i32, ptr %1130, align 8, !tbaa !170
  %1132 = icmp eq i32 %1131, 14
  br i1 %1132, label %1133, label %1201

1133:                                             ; preds = %1128, %1123, %1118, %1113, %1105
  %1134 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1135 = getelementptr inbounds nuw %struct.storable_picture, ptr %1134, i32 0, i32 35
  %1136 = load ptr, ptr %1135, align 8, !tbaa !178
  %1137 = getelementptr inbounds ptr, ptr %1136, i64 1
  %1138 = load ptr, ptr %1137, align 8, !tbaa !43
  %1139 = load i32, ptr %12, align 4, !tbaa !40
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds ptr, ptr %1138, i64 %1140
  %1142 = load ptr, ptr %1141, align 8, !tbaa !44
  %1143 = load i32, ptr %11, align 4, !tbaa !40
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds i8, ptr %1142, i64 %1144
  store i8 -1, ptr %1145, align 1, !tbaa !45
  %1146 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1147 = getelementptr inbounds nuw %struct.storable_picture, ptr %1146, i32 0, i32 36
  %1148 = load ptr, ptr %1147, align 8, !tbaa !188
  %1149 = getelementptr inbounds ptr, ptr %1148, i64 1
  %1150 = load ptr, ptr %1149, align 8, !tbaa !189
  %1151 = load i32, ptr %12, align 4, !tbaa !40
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds ptr, ptr %1150, i64 %1152
  %1154 = load ptr, ptr %1153, align 8, !tbaa !151
  %1155 = load i32, ptr %11, align 4, !tbaa !40
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds i64, ptr %1154, i64 %1156
  store i64 -1, ptr %1157, align 8, !tbaa !93
  %1158 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1159 = getelementptr inbounds nuw %struct.storable_picture, ptr %1158, i32 0, i32 38
  %1160 = load ptr, ptr %1159, align 8, !tbaa !224
  %1161 = getelementptr inbounds ptr, ptr %1160, i64 1
  %1162 = load ptr, ptr %1161, align 8, !tbaa !61
  %1163 = load i32, ptr %12, align 4, !tbaa !40
  %1164 = sext i32 %1163 to i64
  %1165 = getelementptr inbounds ptr, ptr %1162, i64 %1164
  %1166 = load ptr, ptr %1165, align 8, !tbaa !63
  %1167 = load i32, ptr %11, align 4, !tbaa !40
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds ptr, ptr %1166, i64 %1168
  %1170 = load ptr, ptr %1169, align 8, !tbaa !65
  %1171 = getelementptr inbounds i16, ptr %1170, i64 0
  store i16 0, ptr %1171, align 2, !tbaa !67
  %1172 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1173 = getelementptr inbounds nuw %struct.storable_picture, ptr %1172, i32 0, i32 38
  %1174 = load ptr, ptr %1173, align 8, !tbaa !224
  %1175 = getelementptr inbounds ptr, ptr %1174, i64 1
  %1176 = load ptr, ptr %1175, align 8, !tbaa !61
  %1177 = load i32, ptr %12, align 4, !tbaa !40
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds ptr, ptr %1176, i64 %1178
  %1180 = load ptr, ptr %1179, align 8, !tbaa !63
  %1181 = load i32, ptr %11, align 4, !tbaa !40
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds ptr, ptr %1180, i64 %1182
  %1184 = load ptr, ptr %1183, align 8, !tbaa !65
  %1185 = getelementptr inbounds i16, ptr %1184, i64 1
  store i16 0, ptr %1185, align 2, !tbaa !67
  %1186 = load ptr, ptr @img, align 8, !tbaa !13
  %1187 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1186, i32 0, i32 100
  %1188 = load i32, ptr %1187, align 4, !tbaa !231
  %1189 = icmp ne i32 %1188, 0
  br i1 %1189, label %1190, label %1200

1190:                                             ; preds = %1133
  %1191 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1192 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1191, i32 0, i32 18
  %1193 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %1192, i64 0, i64 1
  %1194 = load i32, ptr %7, align 4, !tbaa !40
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds [4 x [4 x i8]], ptr %1193, i64 0, i64 %1195
  %1197 = load i32, ptr %6, align 4, !tbaa !40
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds [4 x i8], ptr %1196, i64 0, i64 %1198
  store i8 -1, ptr %1199, align 1, !tbaa !45
  br label %1200

1200:                                             ; preds = %1190, %1133
  br label %1201

1201:                                             ; preds = %1200, %1128
  br label %1202

1202:                                             ; preds = %1201
  %1203 = load i32, ptr %6, align 4, !tbaa !40
  %1204 = add nsw i32 %1203, 1
  store i32 %1204, ptr %6, align 4, !tbaa !40
  br label %694, !llvm.loop !332

1205:                                             ; preds = %694
  br label %1206

1206:                                             ; preds = %1205
  %1207 = load i32, ptr %7, align 4, !tbaa !40
  %1208 = add nsw i32 %1207, 1
  store i32 %1208, ptr %7, align 4, !tbaa !40
  br label %685, !llvm.loop !333

1209:                                             ; preds = %685
  %1210 = load i32, ptr %5, align 4, !tbaa !40
  %1211 = icmp ne i32 %1210, 0
  br i1 %1211, label %1212, label %1642

1212:                                             ; preds = %1209
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %1213

1213:                                             ; preds = %1638, %1212
  %1214 = load i32, ptr %7, align 4, !tbaa !40
  %1215 = icmp slt i32 %1214, 4
  br i1 %1215, label %1216, label %1641

1216:                                             ; preds = %1213
  %1217 = load ptr, ptr @img, align 8, !tbaa !13
  %1218 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1217, i32 0, i32 38
  %1219 = load i32, ptr %1218, align 4, !tbaa !68
  %1220 = load i32, ptr %7, align 4, !tbaa !40
  %1221 = add nsw i32 %1219, %1220
  store i32 %1221, ptr %12, align 4, !tbaa !40
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %1222

1222:                                             ; preds = %1634, %1216
  %1223 = load i32, ptr %6, align 4, !tbaa !40
  %1224 = icmp slt i32 %1223, 4
  br i1 %1224, label %1225, label %1637

1225:                                             ; preds = %1222
  %1226 = load ptr, ptr @img, align 8, !tbaa !13
  %1227 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1226, i32 0, i32 37
  %1228 = load i32, ptr %1227, align 8, !tbaa !69
  %1229 = load i32, ptr %6, align 4, !tbaa !40
  %1230 = add nsw i32 %1228, %1229
  store i32 %1230, ptr %11, align 4, !tbaa !40
  %1231 = load i32, ptr %7, align 4, !tbaa !40
  %1232 = ashr i32 %1231, 1
  %1233 = mul nsw i32 2, %1232
  %1234 = load i32, ptr %6, align 4, !tbaa !40
  %1235 = ashr i32 %1234, 1
  %1236 = add nsw i32 %1233, %1235
  store i32 %1236, ptr %8, align 4, !tbaa !40
  %1237 = load ptr, ptr %1, align 8, !tbaa !153
  %1238 = getelementptr inbounds nuw %struct.macroblock, ptr %1237, i32 0, i32 8
  %1239 = load i32, ptr %1238, align 8, !tbaa !170
  %1240 = icmp eq i32 %1239, 9
  br i1 %1240, label %1264, label %1241

1241:                                             ; preds = %1225
  %1242 = load ptr, ptr %1, align 8, !tbaa !153
  %1243 = getelementptr inbounds nuw %struct.macroblock, ptr %1242, i32 0, i32 8
  %1244 = load i32, ptr %1243, align 8, !tbaa !170
  %1245 = icmp eq i32 %1244, 10
  br i1 %1245, label %1264, label %1246

1246:                                             ; preds = %1241
  %1247 = load ptr, ptr %1, align 8, !tbaa !153
  %1248 = getelementptr inbounds nuw %struct.macroblock, ptr %1247, i32 0, i32 8
  %1249 = load i32, ptr %1248, align 8, !tbaa !170
  %1250 = icmp eq i32 %1249, 13
  br i1 %1250, label %1264, label %1251

1251:                                             ; preds = %1246
  %1252 = load ptr, ptr %1, align 8, !tbaa !153
  %1253 = getelementptr inbounds nuw %struct.macroblock, ptr %1252, i32 0, i32 8
  %1254 = load i32, ptr %1253, align 8, !tbaa !170
  %1255 = icmp eq i32 %1254, 14
  br i1 %1255, label %1264, label %1256

1256:                                             ; preds = %1251
  %1257 = load ptr, ptr %1, align 8, !tbaa !153
  %1258 = getelementptr inbounds nuw %struct.macroblock, ptr %1257, i32 0, i32 15
  %1259 = load i32, ptr %8, align 4, !tbaa !40
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds [4 x i32], ptr %1258, i64 0, i64 %1260
  %1262 = load i32, ptr %1261, align 4, !tbaa !40
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1264, label %1332

1264:                                             ; preds = %1256, %1251, %1246, %1241, %1225
  %1265 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1266 = getelementptr inbounds nuw %struct.storable_picture, ptr %1265, i32 0, i32 35
  %1267 = load ptr, ptr %1266, align 8, !tbaa !178
  %1268 = getelementptr inbounds ptr, ptr %1267, i64 1
  %1269 = load ptr, ptr %1268, align 8, !tbaa !43
  %1270 = load i32, ptr %12, align 4, !tbaa !40
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds ptr, ptr %1269, i64 %1271
  %1273 = load ptr, ptr %1272, align 8, !tbaa !44
  %1274 = load i32, ptr %11, align 4, !tbaa !40
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i8, ptr %1273, i64 %1275
  store i8 -1, ptr %1276, align 1, !tbaa !45
  %1277 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1278 = getelementptr inbounds nuw %struct.storable_picture, ptr %1277, i32 0, i32 36
  %1279 = load ptr, ptr %1278, align 8, !tbaa !188
  %1280 = getelementptr inbounds ptr, ptr %1279, i64 1
  %1281 = load ptr, ptr %1280, align 8, !tbaa !189
  %1282 = load i32, ptr %12, align 4, !tbaa !40
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds ptr, ptr %1281, i64 %1283
  %1285 = load ptr, ptr %1284, align 8, !tbaa !151
  %1286 = load i32, ptr %11, align 4, !tbaa !40
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds i64, ptr %1285, i64 %1287
  store i64 -1, ptr %1288, align 8, !tbaa !93
  %1289 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1290 = getelementptr inbounds nuw %struct.storable_picture, ptr %1289, i32 0, i32 38
  %1291 = load ptr, ptr %1290, align 8, !tbaa !224
  %1292 = getelementptr inbounds ptr, ptr %1291, i64 1
  %1293 = load ptr, ptr %1292, align 8, !tbaa !61
  %1294 = load i32, ptr %12, align 4, !tbaa !40
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds ptr, ptr %1293, i64 %1295
  %1297 = load ptr, ptr %1296, align 8, !tbaa !63
  %1298 = load i32, ptr %11, align 4, !tbaa !40
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds ptr, ptr %1297, i64 %1299
  %1301 = load ptr, ptr %1300, align 8, !tbaa !65
  %1302 = getelementptr inbounds i16, ptr %1301, i64 0
  store i16 0, ptr %1302, align 2, !tbaa !67
  %1303 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1304 = getelementptr inbounds nuw %struct.storable_picture, ptr %1303, i32 0, i32 38
  %1305 = load ptr, ptr %1304, align 8, !tbaa !224
  %1306 = getelementptr inbounds ptr, ptr %1305, i64 1
  %1307 = load ptr, ptr %1306, align 8, !tbaa !61
  %1308 = load i32, ptr %12, align 4, !tbaa !40
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds ptr, ptr %1307, i64 %1309
  %1311 = load ptr, ptr %1310, align 8, !tbaa !63
  %1312 = load i32, ptr %11, align 4, !tbaa !40
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds ptr, ptr %1311, i64 %1313
  %1315 = load ptr, ptr %1314, align 8, !tbaa !65
  %1316 = getelementptr inbounds i16, ptr %1315, i64 1
  store i16 0, ptr %1316, align 2, !tbaa !67
  %1317 = load ptr, ptr @img, align 8, !tbaa !13
  %1318 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1317, i32 0, i32 100
  %1319 = load i32, ptr %1318, align 4, !tbaa !231
  %1320 = icmp ne i32 %1319, 0
  br i1 %1320, label %1321, label %1331

1321:                                             ; preds = %1264
  %1322 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1323 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1322, i32 0, i32 18
  %1324 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %1323, i64 0, i64 1
  %1325 = load i32, ptr %7, align 4, !tbaa !40
  %1326 = sext i32 %1325 to i64
  %1327 = getelementptr inbounds [4 x [4 x i8]], ptr %1324, i64 0, i64 %1326
  %1328 = load i32, ptr %6, align 4, !tbaa !40
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds [4 x i8], ptr %1327, i64 0, i64 %1329
  store i8 -1, ptr %1330, align 1, !tbaa !45
  br label %1331

1331:                                             ; preds = %1321, %1264
  br label %1633

1332:                                             ; preds = %1256
  %1333 = load ptr, ptr %1, align 8, !tbaa !153
  %1334 = getelementptr inbounds nuw %struct.macroblock, ptr %1333, i32 0, i32 33
  %1335 = load i16, ptr %1334, align 8, !tbaa !154
  %1336 = sext i16 %1335 to i32
  %1337 = icmp ne i32 %1336, 0
  br i1 %1337, label %1338, label %1492

1338:                                             ; preds = %1332
  %1339 = load ptr, ptr %1, align 8, !tbaa !153
  %1340 = getelementptr inbounds nuw %struct.macroblock, ptr %1339, i32 0, i32 15
  %1341 = load i32, ptr %8, align 4, !tbaa !40
  %1342 = sext i32 %1341 to i64
  %1343 = getelementptr inbounds [4 x i32], ptr %1340, i64 0, i64 %1342
  %1344 = load i32, ptr %1343, align 4, !tbaa !40
  %1345 = icmp eq i32 %1344, 2
  br i1 %1345, label %1346, label %1492

1346:                                             ; preds = %1338
  %1347 = load ptr, ptr %1, align 8, !tbaa !153
  %1348 = getelementptr inbounds nuw %struct.macroblock, ptr %1347, i32 0, i32 8
  %1349 = load i32, ptr %1348, align 8, !tbaa !170
  %1350 = icmp eq i32 %1349, 1
  br i1 %1350, label %1351, label %1492

1351:                                             ; preds = %1346
  %1352 = load ptr, ptr %1, align 8, !tbaa !153
  %1353 = getelementptr inbounds nuw %struct.macroblock, ptr %1352, i32 0, i32 33
  %1354 = load i16, ptr %1353, align 8, !tbaa !154
  %1355 = sext i16 %1354 to i32
  %1356 = icmp eq i32 %1355, 1
  br i1 %1356, label %1357, label %1382

1357:                                             ; preds = %1351
  %1358 = load ptr, ptr @img, align 8, !tbaa !13
  %1359 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1358, i32 0, i32 81
  %1360 = load ptr, ptr %1359, align 8, !tbaa !227
  %1361 = load i32, ptr %7, align 4, !tbaa !40
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds ptr, ptr %1360, i64 %1362
  %1364 = load ptr, ptr %1363, align 8, !tbaa !57
  %1365 = load i32, ptr %6, align 4, !tbaa !40
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds ptr, ptr %1364, i64 %1366
  %1368 = load ptr, ptr %1367, align 8, !tbaa !59
  %1369 = getelementptr inbounds ptr, ptr %1368, i64 1
  %1370 = load ptr, ptr %1369, align 8, !tbaa !61
  %1371 = getelementptr inbounds ptr, ptr %1370, i64 0
  %1372 = load ptr, ptr %1371, align 8, !tbaa !63
  %1373 = load ptr, ptr %1, align 8, !tbaa !153
  %1374 = getelementptr inbounds nuw %struct.macroblock, ptr %1373, i32 0, i32 14
  %1375 = load i32, ptr %8, align 4, !tbaa !40
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds [4 x i32], ptr %1374, i64 0, i64 %1376
  %1378 = load i32, ptr %1377, align 4, !tbaa !40
  %1379 = sext i32 %1378 to i64
  %1380 = getelementptr inbounds ptr, ptr %1372, i64 %1379
  %1381 = load ptr, ptr %1380, align 8, !tbaa !65
  br label %1407

1382:                                             ; preds = %1351
  %1383 = load ptr, ptr @img, align 8, !tbaa !13
  %1384 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1383, i32 0, i32 82
  %1385 = load ptr, ptr %1384, align 8, !tbaa !228
  %1386 = load i32, ptr %7, align 4, !tbaa !40
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds ptr, ptr %1385, i64 %1387
  %1389 = load ptr, ptr %1388, align 8, !tbaa !57
  %1390 = load i32, ptr %6, align 4, !tbaa !40
  %1391 = sext i32 %1390 to i64
  %1392 = getelementptr inbounds ptr, ptr %1389, i64 %1391
  %1393 = load ptr, ptr %1392, align 8, !tbaa !59
  %1394 = getelementptr inbounds ptr, ptr %1393, i64 1
  %1395 = load ptr, ptr %1394, align 8, !tbaa !61
  %1396 = getelementptr inbounds ptr, ptr %1395, i64 0
  %1397 = load ptr, ptr %1396, align 8, !tbaa !63
  %1398 = load ptr, ptr %1, align 8, !tbaa !153
  %1399 = getelementptr inbounds nuw %struct.macroblock, ptr %1398, i32 0, i32 14
  %1400 = load i32, ptr %8, align 4, !tbaa !40
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds [4 x i32], ptr %1399, i64 0, i64 %1401
  %1403 = load i32, ptr %1402, align 4, !tbaa !40
  %1404 = sext i32 %1403 to i64
  %1405 = getelementptr inbounds ptr, ptr %1397, i64 %1404
  %1406 = load ptr, ptr %1405, align 8, !tbaa !65
  br label %1407

1407:                                             ; preds = %1382, %1357
  %1408 = phi ptr [ %1381, %1357 ], [ %1406, %1382 ]
  store ptr %1408, ptr %14, align 8, !tbaa !65
  %1409 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1410 = getelementptr inbounds nuw %struct.storable_picture, ptr %1409, i32 0, i32 35
  %1411 = load ptr, ptr %1410, align 8, !tbaa !178
  %1412 = getelementptr inbounds ptr, ptr %1411, i64 1
  %1413 = load ptr, ptr %1412, align 8, !tbaa !43
  %1414 = load i32, ptr %12, align 4, !tbaa !40
  %1415 = sext i32 %1414 to i64
  %1416 = getelementptr inbounds ptr, ptr %1413, i64 %1415
  %1417 = load ptr, ptr %1416, align 8, !tbaa !44
  %1418 = load i32, ptr %11, align 4, !tbaa !40
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds i8, ptr %1417, i64 %1419
  store i8 0, ptr %1420, align 1, !tbaa !45
  %1421 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1422 = getelementptr inbounds nuw %struct.storable_picture, ptr %1421, i32 0, i32 6
  %1423 = load ptr, ptr %1, align 8, !tbaa !153
  %1424 = getelementptr inbounds nuw %struct.macroblock, ptr %1423, i32 0, i32 21
  %1425 = load i32, ptr %1424, align 8, !tbaa !187
  %1426 = add nsw i32 1, %1425
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [6 x [33 x i64]], ptr %1422, i64 0, i64 %1427
  %1429 = getelementptr inbounds [33 x i64], ptr %1428, i64 0, i64 0
  %1430 = load i64, ptr %1429, align 8, !tbaa !93
  %1431 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1432 = getelementptr inbounds nuw %struct.storable_picture, ptr %1431, i32 0, i32 36
  %1433 = load ptr, ptr %1432, align 8, !tbaa !188
  %1434 = getelementptr inbounds ptr, ptr %1433, i64 1
  %1435 = load ptr, ptr %1434, align 8, !tbaa !189
  %1436 = load i32, ptr %12, align 4, !tbaa !40
  %1437 = sext i32 %1436 to i64
  %1438 = getelementptr inbounds ptr, ptr %1435, i64 %1437
  %1439 = load ptr, ptr %1438, align 8, !tbaa !151
  %1440 = load i32, ptr %11, align 4, !tbaa !40
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds i64, ptr %1439, i64 %1441
  store i64 %1430, ptr %1442, align 8, !tbaa !93
  %1443 = load ptr, ptr %14, align 8, !tbaa !65
  %1444 = getelementptr inbounds i16, ptr %1443, i64 0
  %1445 = load i16, ptr %1444, align 2, !tbaa !67
  %1446 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1447 = getelementptr inbounds nuw %struct.storable_picture, ptr %1446, i32 0, i32 38
  %1448 = load ptr, ptr %1447, align 8, !tbaa !224
  %1449 = getelementptr inbounds ptr, ptr %1448, i64 1
  %1450 = load ptr, ptr %1449, align 8, !tbaa !61
  %1451 = load i32, ptr %12, align 4, !tbaa !40
  %1452 = sext i32 %1451 to i64
  %1453 = getelementptr inbounds ptr, ptr %1450, i64 %1452
  %1454 = load ptr, ptr %1453, align 8, !tbaa !63
  %1455 = load i32, ptr %11, align 4, !tbaa !40
  %1456 = sext i32 %1455 to i64
  %1457 = getelementptr inbounds ptr, ptr %1454, i64 %1456
  %1458 = load ptr, ptr %1457, align 8, !tbaa !65
  %1459 = getelementptr inbounds i16, ptr %1458, i64 0
  store i16 %1445, ptr %1459, align 2, !tbaa !67
  %1460 = load ptr, ptr %14, align 8, !tbaa !65
  %1461 = getelementptr inbounds i16, ptr %1460, i64 1
  %1462 = load i16, ptr %1461, align 2, !tbaa !67
  %1463 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1464 = getelementptr inbounds nuw %struct.storable_picture, ptr %1463, i32 0, i32 38
  %1465 = load ptr, ptr %1464, align 8, !tbaa !224
  %1466 = getelementptr inbounds ptr, ptr %1465, i64 1
  %1467 = load ptr, ptr %1466, align 8, !tbaa !61
  %1468 = load i32, ptr %12, align 4, !tbaa !40
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds ptr, ptr %1467, i64 %1469
  %1471 = load ptr, ptr %1470, align 8, !tbaa !63
  %1472 = load i32, ptr %11, align 4, !tbaa !40
  %1473 = sext i32 %1472 to i64
  %1474 = getelementptr inbounds ptr, ptr %1471, i64 %1473
  %1475 = load ptr, ptr %1474, align 8, !tbaa !65
  %1476 = getelementptr inbounds i16, ptr %1475, i64 1
  store i16 %1462, ptr %1476, align 2, !tbaa !67
  %1477 = load ptr, ptr @img, align 8, !tbaa !13
  %1478 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1477, i32 0, i32 100
  %1479 = load i32, ptr %1478, align 4, !tbaa !231
  %1480 = icmp ne i32 %1479, 0
  br i1 %1480, label %1481, label %1491

1481:                                             ; preds = %1407
  %1482 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1483 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1482, i32 0, i32 18
  %1484 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %1483, i64 0, i64 1
  %1485 = load i32, ptr %7, align 4, !tbaa !40
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds [4 x [4 x i8]], ptr %1484, i64 0, i64 %1486
  %1488 = load i32, ptr %6, align 4, !tbaa !40
  %1489 = sext i32 %1488 to i64
  %1490 = getelementptr inbounds [4 x i8], ptr %1487, i64 0, i64 %1489
  store i8 0, ptr %1490, align 1, !tbaa !45
  br label %1491

1491:                                             ; preds = %1481, %1407
  br label %1632

1492:                                             ; preds = %1346, %1338, %1332
  %1493 = load ptr, ptr @img, align 8, !tbaa !13
  %1494 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1493, i32 0, i32 80
  %1495 = load ptr, ptr %1494, align 8, !tbaa !56
  %1496 = load i32, ptr %7, align 4, !tbaa !40
  %1497 = sext i32 %1496 to i64
  %1498 = getelementptr inbounds ptr, ptr %1495, i64 %1497
  %1499 = load ptr, ptr %1498, align 8, !tbaa !57
  %1500 = load i32, ptr %6, align 4, !tbaa !40
  %1501 = sext i32 %1500 to i64
  %1502 = getelementptr inbounds ptr, ptr %1499, i64 %1501
  %1503 = load ptr, ptr %1502, align 8, !tbaa !59
  %1504 = getelementptr inbounds ptr, ptr %1503, i64 1
  %1505 = load ptr, ptr %1504, align 8, !tbaa !61
  %1506 = load i32, ptr %7, align 4, !tbaa !40
  %1507 = sext i32 %1506 to i64
  %1508 = getelementptr inbounds [4 x [4 x i8]], ptr @brefframe, i64 0, i64 %1507
  %1509 = load i32, ptr %6, align 4, !tbaa !40
  %1510 = sext i32 %1509 to i64
  %1511 = getelementptr inbounds [4 x i8], ptr %1508, i64 0, i64 %1510
  %1512 = load i8, ptr %1511, align 1, !tbaa !45
  %1513 = sext i8 %1512 to i16
  %1514 = sext i16 %1513 to i64
  %1515 = getelementptr inbounds ptr, ptr %1505, i64 %1514
  %1516 = load ptr, ptr %1515, align 8, !tbaa !63
  %1517 = load ptr, ptr %1, align 8, !tbaa !153
  %1518 = getelementptr inbounds nuw %struct.macroblock, ptr %1517, i32 0, i32 14
  %1519 = load i32, ptr %8, align 4, !tbaa !40
  %1520 = sext i32 %1519 to i64
  %1521 = getelementptr inbounds [4 x i32], ptr %1518, i64 0, i64 %1520
  %1522 = load i32, ptr %1521, align 4, !tbaa !40
  %1523 = sext i32 %1522 to i64
  %1524 = getelementptr inbounds ptr, ptr %1516, i64 %1523
  %1525 = load ptr, ptr %1524, align 8, !tbaa !65
  store ptr %1525, ptr %14, align 8, !tbaa !65
  %1526 = load i32, ptr %7, align 4, !tbaa !40
  %1527 = sext i32 %1526 to i64
  %1528 = getelementptr inbounds [4 x [4 x i8]], ptr @brefframe, i64 0, i64 %1527
  %1529 = load i32, ptr %6, align 4, !tbaa !40
  %1530 = sext i32 %1529 to i64
  %1531 = getelementptr inbounds [4 x i8], ptr %1528, i64 0, i64 %1530
  %1532 = load i8, ptr %1531, align 1, !tbaa !45
  %1533 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1534 = getelementptr inbounds nuw %struct.storable_picture, ptr %1533, i32 0, i32 35
  %1535 = load ptr, ptr %1534, align 8, !tbaa !178
  %1536 = getelementptr inbounds ptr, ptr %1535, i64 1
  %1537 = load ptr, ptr %1536, align 8, !tbaa !43
  %1538 = load i32, ptr %12, align 4, !tbaa !40
  %1539 = sext i32 %1538 to i64
  %1540 = getelementptr inbounds ptr, ptr %1537, i64 %1539
  %1541 = load ptr, ptr %1540, align 8, !tbaa !44
  %1542 = load i32, ptr %11, align 4, !tbaa !40
  %1543 = sext i32 %1542 to i64
  %1544 = getelementptr inbounds i8, ptr %1541, i64 %1543
  store i8 %1532, ptr %1544, align 1, !tbaa !45
  %1545 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1546 = getelementptr inbounds nuw %struct.storable_picture, ptr %1545, i32 0, i32 6
  %1547 = load ptr, ptr %1, align 8, !tbaa !153
  %1548 = getelementptr inbounds nuw %struct.macroblock, ptr %1547, i32 0, i32 21
  %1549 = load i32, ptr %1548, align 8, !tbaa !187
  %1550 = add nsw i32 1, %1549
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds [6 x [33 x i64]], ptr %1546, i64 0, i64 %1551
  %1553 = load i32, ptr %7, align 4, !tbaa !40
  %1554 = sext i32 %1553 to i64
  %1555 = getelementptr inbounds [4 x [4 x i8]], ptr @brefframe, i64 0, i64 %1554
  %1556 = load i32, ptr %6, align 4, !tbaa !40
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds [4 x i8], ptr %1555, i64 0, i64 %1557
  %1559 = load i8, ptr %1558, align 1, !tbaa !45
  %1560 = sext i8 %1559 to i16
  %1561 = sext i16 %1560 to i64
  %1562 = getelementptr inbounds [33 x i64], ptr %1552, i64 0, i64 %1561
  %1563 = load i64, ptr %1562, align 8, !tbaa !93
  %1564 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1565 = getelementptr inbounds nuw %struct.storable_picture, ptr %1564, i32 0, i32 36
  %1566 = load ptr, ptr %1565, align 8, !tbaa !188
  %1567 = getelementptr inbounds ptr, ptr %1566, i64 1
  %1568 = load ptr, ptr %1567, align 8, !tbaa !189
  %1569 = load i32, ptr %12, align 4, !tbaa !40
  %1570 = sext i32 %1569 to i64
  %1571 = getelementptr inbounds ptr, ptr %1568, i64 %1570
  %1572 = load ptr, ptr %1571, align 8, !tbaa !151
  %1573 = load i32, ptr %11, align 4, !tbaa !40
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds i64, ptr %1572, i64 %1574
  store i64 %1563, ptr %1575, align 8, !tbaa !93
  %1576 = load ptr, ptr %14, align 8, !tbaa !65
  %1577 = getelementptr inbounds i16, ptr %1576, i64 0
  %1578 = load i16, ptr %1577, align 2, !tbaa !67
  %1579 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1580 = getelementptr inbounds nuw %struct.storable_picture, ptr %1579, i32 0, i32 38
  %1581 = load ptr, ptr %1580, align 8, !tbaa !224
  %1582 = getelementptr inbounds ptr, ptr %1581, i64 1
  %1583 = load ptr, ptr %1582, align 8, !tbaa !61
  %1584 = load i32, ptr %12, align 4, !tbaa !40
  %1585 = sext i32 %1584 to i64
  %1586 = getelementptr inbounds ptr, ptr %1583, i64 %1585
  %1587 = load ptr, ptr %1586, align 8, !tbaa !63
  %1588 = load i32, ptr %11, align 4, !tbaa !40
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds ptr, ptr %1587, i64 %1589
  %1591 = load ptr, ptr %1590, align 8, !tbaa !65
  %1592 = getelementptr inbounds i16, ptr %1591, i64 0
  store i16 %1578, ptr %1592, align 2, !tbaa !67
  %1593 = load ptr, ptr %14, align 8, !tbaa !65
  %1594 = getelementptr inbounds i16, ptr %1593, i64 1
  %1595 = load i16, ptr %1594, align 2, !tbaa !67
  %1596 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1597 = getelementptr inbounds nuw %struct.storable_picture, ptr %1596, i32 0, i32 38
  %1598 = load ptr, ptr %1597, align 8, !tbaa !224
  %1599 = getelementptr inbounds ptr, ptr %1598, i64 1
  %1600 = load ptr, ptr %1599, align 8, !tbaa !61
  %1601 = load i32, ptr %12, align 4, !tbaa !40
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds ptr, ptr %1600, i64 %1602
  %1604 = load ptr, ptr %1603, align 8, !tbaa !63
  %1605 = load i32, ptr %11, align 4, !tbaa !40
  %1606 = sext i32 %1605 to i64
  %1607 = getelementptr inbounds ptr, ptr %1604, i64 %1606
  %1608 = load ptr, ptr %1607, align 8, !tbaa !65
  %1609 = getelementptr inbounds i16, ptr %1608, i64 1
  store i16 %1595, ptr %1609, align 2, !tbaa !67
  %1610 = load ptr, ptr @img, align 8, !tbaa !13
  %1611 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1610, i32 0, i32 100
  %1612 = load i32, ptr %1611, align 4, !tbaa !231
  %1613 = icmp ne i32 %1612, 0
  br i1 %1613, label %1614, label %1631

1614:                                             ; preds = %1492
  %1615 = load i32, ptr %7, align 4, !tbaa !40
  %1616 = sext i32 %1615 to i64
  %1617 = getelementptr inbounds [4 x [4 x i8]], ptr @brefframe, i64 0, i64 %1616
  %1618 = load i32, ptr %6, align 4, !tbaa !40
  %1619 = sext i32 %1618 to i64
  %1620 = getelementptr inbounds [4 x i8], ptr %1617, i64 0, i64 %1619
  %1621 = load i8, ptr %1620, align 1, !tbaa !45
  %1622 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1623 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1622, i32 0, i32 18
  %1624 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %1623, i64 0, i64 1
  %1625 = load i32, ptr %7, align 4, !tbaa !40
  %1626 = sext i32 %1625 to i64
  %1627 = getelementptr inbounds [4 x [4 x i8]], ptr %1624, i64 0, i64 %1626
  %1628 = load i32, ptr %6, align 4, !tbaa !40
  %1629 = sext i32 %1628 to i64
  %1630 = getelementptr inbounds [4 x i8], ptr %1627, i64 0, i64 %1629
  store i8 %1621, ptr %1630, align 1, !tbaa !45
  br label %1631

1631:                                             ; preds = %1614, %1492
  br label %1632

1632:                                             ; preds = %1631, %1491
  br label %1633

1633:                                             ; preds = %1632, %1331
  br label %1634

1634:                                             ; preds = %1633
  %1635 = load i32, ptr %6, align 4, !tbaa !40
  %1636 = add nsw i32 %1635, 1
  store i32 %1636, ptr %6, align 4, !tbaa !40
  br label %1222, !llvm.loop !334

1637:                                             ; preds = %1222
  br label %1638

1638:                                             ; preds = %1637
  %1639 = load i32, ptr %7, align 4, !tbaa !40
  %1640 = add nsw i32 %1639, 1
  store i32 %1640, ptr %7, align 4, !tbaa !40
  br label %1213, !llvm.loop !335

1641:                                             ; preds = %1213
  br label %1642

1642:                                             ; preds = %1641, %1209
  %1643 = load i32, ptr @best_c_imode, align 4, !tbaa !40
  %1644 = load ptr, ptr %1, align 8, !tbaa !153
  %1645 = getelementptr inbounds nuw %struct.macroblock, ptr %1644, i32 0, i32 17
  store i32 %1643, ptr %1645, align 8, !tbaa !285
  %1646 = load i32, ptr @best_i16offset, align 4, !tbaa !40
  %1647 = load ptr, ptr @img, align 8, !tbaa !13
  %1648 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1647, i32 0, i32 94
  store i32 %1646, ptr %1648, align 4, !tbaa !263
  %1649 = load ptr, ptr %1, align 8, !tbaa !153
  %1650 = getelementptr inbounds nuw %struct.macroblock, ptr %1649, i32 0, i32 8
  %1651 = load i32, ptr %1650, align 8, !tbaa !170
  %1652 = icmp eq i32 %1651, 13
  br i1 %1652, label %1653, label %1708

1653:                                             ; preds = %1642
  %1654 = load ptr, ptr %1, align 8, !tbaa !153
  %1655 = getelementptr inbounds nuw %struct.macroblock, ptr %1654, i32 0, i32 11
  %1656 = getelementptr inbounds [16 x i8], ptr %1655, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1656, ptr align 1 @b8_intra_pred_modes8x8, i64 16, i1 false)
  %1657 = load ptr, ptr %1, align 8, !tbaa !153
  %1658 = getelementptr inbounds nuw %struct.macroblock, ptr %1657, i32 0, i32 10
  %1659 = getelementptr inbounds [16 x i8], ptr %1658, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1659, ptr align 1 @b8_intra_pred_modes8x8, i64 16, i1 false)
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %1660

1660:                                             ; preds = %1704, %1653
  %1661 = load i32, ptr %7, align 4, !tbaa !40
  %1662 = icmp slt i32 %1661, 4
  br i1 %1662, label %1663, label %1707

1663:                                             ; preds = %1660
  %1664 = load ptr, ptr @img, align 8, !tbaa !13
  %1665 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1664, i32 0, i32 31
  %1666 = load ptr, ptr %1665, align 8, !tbaa !126
  %1667 = load ptr, ptr @img, align 8, !tbaa !13
  %1668 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1667, i32 0, i32 38
  %1669 = load i32, ptr %1668, align 4, !tbaa !68
  %1670 = load i32, ptr %7, align 4, !tbaa !40
  %1671 = add nsw i32 %1669, %1670
  %1672 = sext i32 %1671 to i64
  %1673 = getelementptr inbounds ptr, ptr %1666, i64 %1672
  %1674 = load ptr, ptr %1673, align 8, !tbaa !44
  %1675 = load ptr, ptr @img, align 8, !tbaa !13
  %1676 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1675, i32 0, i32 37
  %1677 = load i32, ptr %1676, align 8, !tbaa !69
  %1678 = sext i32 %1677 to i64
  %1679 = getelementptr inbounds i8, ptr %1674, i64 %1678
  %1680 = load i32, ptr %7, align 4, !tbaa !40
  %1681 = sext i32 %1680 to i64
  %1682 = getelementptr inbounds [4 x [4 x i8]], ptr @b8_ipredmode8x8, i64 0, i64 %1681
  %1683 = getelementptr inbounds [4 x i8], ptr %1682, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1679, ptr align 1 %1683, i64 4, i1 false)
  %1684 = load ptr, ptr @img, align 8, !tbaa !13
  %1685 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1684, i32 0, i32 32
  %1686 = load ptr, ptr %1685, align 8, !tbaa !286
  %1687 = load ptr, ptr @img, align 8, !tbaa !13
  %1688 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1687, i32 0, i32 38
  %1689 = load i32, ptr %1688, align 4, !tbaa !68
  %1690 = load i32, ptr %7, align 4, !tbaa !40
  %1691 = add nsw i32 %1689, %1690
  %1692 = sext i32 %1691 to i64
  %1693 = getelementptr inbounds ptr, ptr %1686, i64 %1692
  %1694 = load ptr, ptr %1693, align 8, !tbaa !44
  %1695 = load ptr, ptr @img, align 8, !tbaa !13
  %1696 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1695, i32 0, i32 37
  %1697 = load i32, ptr %1696, align 8, !tbaa !69
  %1698 = sext i32 %1697 to i64
  %1699 = getelementptr inbounds i8, ptr %1694, i64 %1698
  %1700 = load i32, ptr %7, align 4, !tbaa !40
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds [4 x [4 x i8]], ptr @b8_ipredmode8x8, i64 0, i64 %1701
  %1703 = getelementptr inbounds [4 x i8], ptr %1702, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1699, ptr align 1 %1703, i64 4, i1 false)
  br label %1704

1704:                                             ; preds = %1663
  %1705 = load i32, ptr %7, align 4, !tbaa !40
  %1706 = add nsw i32 %1705, 1
  store i32 %1706, ptr %7, align 4, !tbaa !40
  br label %1660, !llvm.loop !336

1707:                                             ; preds = %1660
  br label %1782

1708:                                             ; preds = %1642
  %1709 = load i32, ptr %4, align 4, !tbaa !40
  %1710 = icmp ne i32 %1709, 9
  br i1 %1710, label %1711, label %1745

1711:                                             ; preds = %1708
  %1712 = load i32, ptr %4, align 4, !tbaa !40
  %1713 = icmp ne i32 %1712, 13
  br i1 %1713, label %1714, label %1745

1714:                                             ; preds = %1711
  %1715 = load ptr, ptr %1, align 8, !tbaa !153
  %1716 = getelementptr inbounds nuw %struct.macroblock, ptr %1715, i32 0, i32 10
  %1717 = getelementptr inbounds [16 x i8], ptr %1716, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %1717, i8 2, i64 16, i1 false)
  %1718 = load ptr, ptr @img, align 8, !tbaa !13
  %1719 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1718, i32 0, i32 38
  %1720 = load i32, ptr %1719, align 4, !tbaa !68
  store i32 %1720, ptr %7, align 4, !tbaa !40
  br label %1721

1721:                                             ; preds = %1741, %1714
  %1722 = load i32, ptr %7, align 4, !tbaa !40
  %1723 = load ptr, ptr @img, align 8, !tbaa !13
  %1724 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1723, i32 0, i32 38
  %1725 = load i32, ptr %1724, align 4, !tbaa !68
  %1726 = add nsw i32 %1725, 4
  %1727 = icmp slt i32 %1722, %1726
  br i1 %1727, label %1728, label %1744

1728:                                             ; preds = %1721
  %1729 = load ptr, ptr @img, align 8, !tbaa !13
  %1730 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1729, i32 0, i32 31
  %1731 = load ptr, ptr %1730, align 8, !tbaa !126
  %1732 = load i32, ptr %7, align 4, !tbaa !40
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds ptr, ptr %1731, i64 %1733
  %1735 = load ptr, ptr %1734, align 8, !tbaa !44
  %1736 = load ptr, ptr @img, align 8, !tbaa !13
  %1737 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1736, i32 0, i32 37
  %1738 = load i32, ptr %1737, align 8, !tbaa !69
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds i8, ptr %1735, i64 %1739
  call void @llvm.memset.p0.i64(ptr align 1 %1740, i8 2, i64 4, i1 false)
  br label %1741

1741:                                             ; preds = %1728
  %1742 = load i32, ptr %7, align 4, !tbaa !40
  %1743 = add nsw i32 %1742, 1
  store i32 %1743, ptr %7, align 4, !tbaa !40
  br label %1721, !llvm.loop !337

1744:                                             ; preds = %1721
  br label %1781

1745:                                             ; preds = %1711, %1708
  %1746 = load i32, ptr %4, align 4, !tbaa !40
  %1747 = icmp eq i32 %1746, 9
  br i1 %1747, label %1748, label %1780

1748:                                             ; preds = %1745
  %1749 = load ptr, ptr %1, align 8, !tbaa !153
  %1750 = getelementptr inbounds nuw %struct.macroblock, ptr %1749, i32 0, i32 10
  %1751 = getelementptr inbounds [16 x i8], ptr %1750, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1751, ptr align 1 @b4_intra_pred_modes, i64 16, i1 false)
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %1752

1752:                                             ; preds = %1776, %1748
  %1753 = load i32, ptr %7, align 4, !tbaa !40
  %1754 = icmp slt i32 %1753, 4
  br i1 %1754, label %1755, label %1779

1755:                                             ; preds = %1752
  %1756 = load ptr, ptr @img, align 8, !tbaa !13
  %1757 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1756, i32 0, i32 31
  %1758 = load ptr, ptr %1757, align 8, !tbaa !126
  %1759 = load ptr, ptr @img, align 8, !tbaa !13
  %1760 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1759, i32 0, i32 38
  %1761 = load i32, ptr %1760, align 4, !tbaa !68
  %1762 = load i32, ptr %7, align 4, !tbaa !40
  %1763 = add nsw i32 %1761, %1762
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds ptr, ptr %1758, i64 %1764
  %1766 = load ptr, ptr %1765, align 8, !tbaa !44
  %1767 = load ptr, ptr @img, align 8, !tbaa !13
  %1768 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1767, i32 0, i32 37
  %1769 = load i32, ptr %1768, align 8, !tbaa !69
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds i8, ptr %1766, i64 %1770
  %1772 = load i32, ptr %7, align 4, !tbaa !40
  %1773 = mul nsw i32 4, %1772
  %1774 = sext i32 %1773 to i64
  %1775 = getelementptr inbounds [16 x i8], ptr @b4_ipredmode, i64 0, i64 %1774
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1771, ptr align 1 %1775, i64 4, i1 false)
  br label %1776

1776:                                             ; preds = %1755
  %1777 = load i32, ptr %7, align 4, !tbaa !40
  %1778 = add nsw i32 %1777, 1
  store i32 %1778, ptr %7, align 4, !tbaa !40
  br label %1752, !llvm.loop !338

1779:                                             ; preds = %1752
  br label %1780

1780:                                             ; preds = %1779, %1745
  br label %1781

1781:                                             ; preds = %1780, %1744
  br label %1782

1782:                                             ; preds = %1781, %1707
  %1783 = load ptr, ptr @img, align 8, !tbaa !13
  %1784 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1783, i32 0, i32 100
  %1785 = load i32, ptr %1784, align 4, !tbaa !231
  %1786 = icmp ne i32 %1785, 0
  br i1 %1786, label %1787, label %1847

1787:                                             ; preds = %1782
  %1788 = load ptr, ptr %1, align 8, !tbaa !153
  %1789 = getelementptr inbounds nuw %struct.macroblock, ptr %1788, i32 0, i32 17
  %1790 = load i32, ptr %1789, align 8, !tbaa !285
  %1791 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1792 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1791, i32 0, i32 20
  store i32 %1790, ptr %1792, align 4, !tbaa !339
  %1793 = load ptr, ptr @img, align 8, !tbaa !13
  %1794 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1793, i32 0, i32 94
  %1795 = load i32, ptr %1794, align 4, !tbaa !263
  %1796 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1797 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1796, i32 0, i32 19
  store i32 %1795, ptr %1797, align 8, !tbaa !307
  %1798 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1799 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1798, i32 0, i32 11
  %1800 = getelementptr inbounds [16 x i8], ptr %1799, i64 0, i64 0
  %1801 = load ptr, ptr %1, align 8, !tbaa !153
  %1802 = getelementptr inbounds nuw %struct.macroblock, ptr %1801, i32 0, i32 10
  %1803 = getelementptr inbounds [16 x i8], ptr %1802, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1800, ptr align 4 %1803, i64 16, i1 false)
  %1804 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1805 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1804, i32 0, i32 12
  %1806 = getelementptr inbounds [16 x i8], ptr %1805, i64 0, i64 0
  %1807 = load ptr, ptr %1, align 8, !tbaa !153
  %1808 = getelementptr inbounds nuw %struct.macroblock, ptr %1807, i32 0, i32 11
  %1809 = getelementptr inbounds [16 x i8], ptr %1808, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1806, ptr align 4 %1809, i64 16, i1 false)
  %1810 = load ptr, ptr @img, align 8, !tbaa !13
  %1811 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1810, i32 0, i32 38
  %1812 = load i32, ptr %1811, align 4, !tbaa !68
  store i32 %1812, ptr %7, align 4, !tbaa !40
  br label %1813

1813:                                             ; preds = %1843, %1787
  %1814 = load i32, ptr %7, align 4, !tbaa !40
  %1815 = load ptr, ptr @img, align 8, !tbaa !13
  %1816 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1815, i32 0, i32 38
  %1817 = load i32, ptr %1816, align 4, !tbaa !68
  %1818 = add nsw i32 %1817, 4
  %1819 = icmp slt i32 %1814, %1818
  br i1 %1819, label %1820, label %1846

1820:                                             ; preds = %1813
  %1821 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %1822 = getelementptr inbounds nuw %struct.RD_DATA, ptr %1821, i32 0, i32 10
  %1823 = load ptr, ptr %1822, align 8, !tbaa !340
  %1824 = load i32, ptr %7, align 4, !tbaa !40
  %1825 = sext i32 %1824 to i64
  %1826 = getelementptr inbounds ptr, ptr %1823, i64 %1825
  %1827 = load ptr, ptr %1826, align 8, !tbaa !44
  %1828 = load ptr, ptr @img, align 8, !tbaa !13
  %1829 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1828, i32 0, i32 37
  %1830 = load i32, ptr %1829, align 8, !tbaa !69
  %1831 = sext i32 %1830 to i64
  %1832 = getelementptr inbounds i8, ptr %1827, i64 %1831
  %1833 = load ptr, ptr %13, align 8, !tbaa !43
  %1834 = load i32, ptr %7, align 4, !tbaa !40
  %1835 = sext i32 %1834 to i64
  %1836 = getelementptr inbounds ptr, ptr %1833, i64 %1835
  %1837 = load ptr, ptr %1836, align 8, !tbaa !44
  %1838 = load ptr, ptr @img, align 8, !tbaa !13
  %1839 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1838, i32 0, i32 37
  %1840 = load i32, ptr %1839, align 8, !tbaa !69
  %1841 = sext i32 %1840 to i64
  %1842 = getelementptr inbounds i8, ptr %1837, i64 %1841
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1832, ptr align 1 %1842, i64 4, i1 false)
  br label %1843

1843:                                             ; preds = %1820
  %1844 = load i32, ptr %7, align 4, !tbaa !40
  %1845 = add nsw i32 %1844, 1
  store i32 %1845, ptr %7, align 4, !tbaa !40
  br label %1813, !llvm.loop !341

1846:                                             ; preds = %1813
  br label %1847

1847:                                             ; preds = %1846, %1782
  %1848 = load ptr, ptr %1, align 8, !tbaa !153
  %1849 = load i32, ptr %5, align 4, !tbaa !40
  call void @SetMotionVectorsMB(ptr noundef %1848, i32 noundef signext %1849)
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @update_offset_params(i32 noundef signext %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4, !tbaa !40
  store i32 %1, ptr %4, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  %20 = load i32, ptr %3, align 4, !tbaa !40
  %21 = icmp ne i32 %20, 9
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, ptr %3, align 4, !tbaa !40
  %24 = icmp ne i32 %23, 10
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 4, !tbaa !40
  %27 = icmp ne i32 %26, 13
  br label %28

28:                                               ; preds = %25, %22, %2
  %29 = phi i1 [ false, %22 ], [ false, %2 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  %31 = load i32, ptr %5, align 4, !tbaa !40
  %32 = shl i32 %31, 1
  %33 = load i32, ptr %4, align 4, !tbaa !40
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x [5 x i32]], ptr @AdaptRndPos, i64 0, i64 %35
  %37 = load ptr, ptr @img, align 8, !tbaa !13
  %38 = getelementptr inbounds nuw %struct.ImageParameters, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !39
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x i32], ptr %36, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !40
  store i32 %42, ptr %6, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  store i32 0, ptr %9, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  %43 = load i32, ptr @OffsetBits, align 4, !tbaa !40
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  store i32 %45, ptr %10, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  %46 = load i32, ptr %4, align 4, !tbaa !40
  %47 = shl i32 %46, 2
  %48 = add nsw i32 3, %47
  store i32 %48, ptr %11, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  %49 = load i32, ptr %4, align 4, !tbaa !40
  %50 = add nsw i32 2, %49
  store i32 %50, ptr %12, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %51 = load i32, ptr %4, align 4, !tbaa !40
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %28
  %54 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !63
  br label %57

55:                                               ; preds = %28
  %56 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi ptr [ %54, %53 ], [ %56, %55 ]
  store ptr %58, ptr %13, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %59 = load i32, ptr %5, align 4, !tbaa !40
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32, ptr %4, align 4, !tbaa !40
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load ptr, ptr @bestInterFAdjust8x8, align 8, !tbaa !21
  br label %68

66:                                               ; preds = %61
  %67 = load ptr, ptr @bestInterFAdjust4x4, align 8, !tbaa !21
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi ptr [ %65, %64 ], [ %67, %66 ]
  br label %79

70:                                               ; preds = %57
  %71 = load i32, ptr %4, align 4, !tbaa !40
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load ptr, ptr @bestIntraFAdjust8x8, align 8, !tbaa !21
  br label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr @bestIntraFAdjust4x4, align 8, !tbaa !21
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %74, %73 ], [ %76, %75 ]
  br label %79

79:                                               ; preds = %77, %68
  %80 = phi ptr [ %69, %68 ], [ %78, %77 ]
  store ptr %80, ptr %14, align 8, !tbaa !21
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %81

81:                                               ; preds = %145, %79
  %82 = load i32, ptr %8, align 4, !tbaa !40
  %83 = icmp slt i32 %82, 16
  br i1 %83, label %84, label %148

84:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  %85 = load i32, ptr %8, align 4, !tbaa !40
  %86 = load i32, ptr %11, align 4, !tbaa !40
  %87 = and i32 %85, %86
  %88 = load i32, ptr %12, align 4, !tbaa !40
  %89 = shl i32 %87, %88
  store i32 %89, ptr %15, align 4, !tbaa !40
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %90

90:                                               ; preds = %141, %84
  %91 = load i32, ptr %7, align 4, !tbaa !40
  %92 = icmp slt i32 %91, 16
  br i1 %92, label %93, label %144

93:                                               ; preds = %90
  %94 = load i32, ptr %15, align 4, !tbaa !40
  %95 = load i32, ptr %7, align 4, !tbaa !40
  %96 = load i32, ptr %11, align 4, !tbaa !40
  %97 = and i32 %95, %96
  %98 = add nsw i32 %94, %97
  store i32 %98, ptr %9, align 4, !tbaa !40
  %99 = load ptr, ptr %14, align 8, !tbaa !21
  %100 = load i32, ptr %8, align 4, !tbaa !40
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !92
  %104 = load i32, ptr %7, align 4, !tbaa !40
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, ptr %103, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !40
  %108 = load ptr, ptr %13, align 8, !tbaa !63
  %109 = load i32, ptr %6, align 4, !tbaa !40
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !65
  %113 = load i32, ptr %9, align 4, !tbaa !40
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, ptr %112, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !67
  %117 = sext i16 %116 to i32
  %118 = add nsw i32 %117, %107
  %119 = trunc i32 %118 to i16
  store i16 %119, ptr %115, align 2, !tbaa !67
  %120 = load i32, ptr %10, align 4, !tbaa !40
  %121 = load ptr, ptr %13, align 8, !tbaa !63
  %122 = load i32, ptr %6, align 4, !tbaa !40
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %121, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !65
  %126 = load i32, ptr %9, align 4, !tbaa !40
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, ptr %125, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !67
  %130 = sext i16 %129 to i32
  %131 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %120, i32 noundef signext %130)
  %132 = trunc i32 %131 to i16
  %133 = load ptr, ptr %13, align 8, !tbaa !63
  %134 = load i32, ptr %6, align 4, !tbaa !40
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !65
  %138 = load i32, ptr %9, align 4, !tbaa !40
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, ptr %137, i64 %139
  store i16 %132, ptr %140, align 2, !tbaa !67
  br label %141

141:                                              ; preds = %93
  %142 = load i32, ptr %7, align 4, !tbaa !40
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %7, align 4, !tbaa !40
  br label %90, !llvm.loop !342

144:                                              ; preds = %90
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  br label %145

145:                                              ; preds = %144
  %146 = load i32, ptr %8, align 4, !tbaa !40
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %8, align 4, !tbaa !40
  br label %81, !llvm.loop !343

148:                                              ; preds = %81
  %149 = load ptr, ptr @input, align 8, !tbaa !13
  %150 = getelementptr inbounds nuw %struct.InputParameters, ptr %149, i32 0, i32 187
  %151 = load i32, ptr %150, align 4, !tbaa !279
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %290

153:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  %154 = load i32, ptr %5, align 4, !tbaa !40
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x [5 x i32]], ptr @AdaptRndCrPos, i64 0, i64 %155
  %157 = load ptr, ptr @img, align 8, !tbaa !13
  %158 = getelementptr inbounds nuw %struct.ImageParameters, ptr %157, i32 0, i32 5
  %159 = load i32, ptr %158, align 4, !tbaa !39
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [5 x i32], ptr %156, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !40
  store i32 %162, ptr %16, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  %163 = load i32, ptr %16, align 4, !tbaa !40
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %17, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #8
  %165 = load i32, ptr %5, align 4, !tbaa !40
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load ptr, ptr @bestInterFAdjust4x4Cr, align 8, !tbaa !3
  br label %171

169:                                              ; preds = %153
  %170 = load ptr, ptr @bestIntraFAdjust4x4Cr, align 8, !tbaa !3
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi ptr [ %168, %167 ], [ %170, %169 ]
  store ptr %172, ptr %19, align 8, !tbaa !3
  store i32 0, ptr %8, align 4, !tbaa !40
  br label %173

173:                                              ; preds = %286, %171
  %174 = load i32, ptr %8, align 4, !tbaa !40
  %175 = load ptr, ptr @img, align 8, !tbaa !13
  %176 = getelementptr inbounds nuw %struct.ImageParameters, ptr %175, i32 0, i32 163
  %177 = load i32, ptr %176, align 4, !tbaa !24
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %289

179:                                              ; preds = %173
  %180 = load i32, ptr %8, align 4, !tbaa !40
  %181 = and i32 %180, 3
  %182 = shl i32 %181, 2
  store i32 %182, ptr %18, align 4, !tbaa !40
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %183

183:                                              ; preds = %282, %179
  %184 = load i32, ptr %7, align 4, !tbaa !40
  %185 = load ptr, ptr @img, align 8, !tbaa !13
  %186 = getelementptr inbounds nuw %struct.ImageParameters, ptr %185, i32 0, i32 162
  %187 = load i32, ptr %186, align 8, !tbaa !36
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %285

189:                                              ; preds = %183
  %190 = load i32, ptr %18, align 4, !tbaa !40
  %191 = load i32, ptr %7, align 4, !tbaa !40
  %192 = and i32 %191, 3
  %193 = add nsw i32 %190, %192
  store i32 %193, ptr %9, align 4, !tbaa !40
  %194 = load ptr, ptr %19, align 8, !tbaa !3
  %195 = getelementptr inbounds ptr, ptr %194, i64 0
  %196 = load ptr, ptr %195, align 8, !tbaa !21
  %197 = load i32, ptr %8, align 4, !tbaa !40
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds ptr, ptr %196, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !92
  %201 = load i32, ptr %7, align 4, !tbaa !40
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, ptr %200, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !40
  %205 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  %206 = load i32, ptr %16, align 4, !tbaa !40
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds ptr, ptr %205, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !65
  %210 = load i32, ptr %9, align 4, !tbaa !40
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i16, ptr %209, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !67
  %214 = sext i16 %213 to i32
  %215 = add nsw i32 %214, %204
  %216 = trunc i32 %215 to i16
  store i16 %216, ptr %212, align 2, !tbaa !67
  %217 = load i32, ptr %10, align 4, !tbaa !40
  %218 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  %219 = load i32, ptr %16, align 4, !tbaa !40
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %218, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !65
  %223 = load i32, ptr %9, align 4, !tbaa !40
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i16, ptr %222, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !67
  %227 = sext i16 %226 to i32
  %228 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %217, i32 noundef signext %227)
  %229 = trunc i32 %228 to i16
  %230 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  %231 = load i32, ptr %16, align 4, !tbaa !40
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds ptr, ptr %230, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !65
  %235 = load i32, ptr %9, align 4, !tbaa !40
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i16, ptr %234, i64 %236
  store i16 %229, ptr %237, align 2, !tbaa !67
  %238 = load ptr, ptr %19, align 8, !tbaa !3
  %239 = getelementptr inbounds ptr, ptr %238, i64 1
  %240 = load ptr, ptr %239, align 8, !tbaa !21
  %241 = load i32, ptr %8, align 4, !tbaa !40
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %240, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !92
  %245 = load i32, ptr %7, align 4, !tbaa !40
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, ptr %244, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !40
  %249 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  %250 = load i32, ptr %17, align 4, !tbaa !40
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %249, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !65
  %254 = load i32, ptr %9, align 4, !tbaa !40
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i16, ptr %253, i64 %255
  %257 = load i16, ptr %256, align 2, !tbaa !67
  %258 = sext i16 %257 to i32
  %259 = add nsw i32 %258, %248
  %260 = trunc i32 %259 to i16
  store i16 %260, ptr %256, align 2, !tbaa !67
  %261 = load i32, ptr %10, align 4, !tbaa !40
  %262 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  %263 = load i32, ptr %17, align 4, !tbaa !40
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %262, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !65
  %267 = load i32, ptr %9, align 4, !tbaa !40
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i16, ptr %266, i64 %268
  %270 = load i16, ptr %269, align 2, !tbaa !67
  %271 = sext i16 %270 to i32
  %272 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext %261, i32 noundef signext %271)
  %273 = trunc i32 %272 to i16
  %274 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !63
  %275 = load i32, ptr %17, align 4, !tbaa !40
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds ptr, ptr %274, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !65
  %279 = load i32, ptr %9, align 4, !tbaa !40
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i16, ptr %278, i64 %280
  store i16 %273, ptr %281, align 2, !tbaa !67
  br label %282

282:                                              ; preds = %189
  %283 = load i32, ptr %7, align 4, !tbaa !40
  %284 = add nsw i32 %283, 1
  store i32 %284, ptr %7, align 4, !tbaa !40
  br label %183, !llvm.loop !344

285:                                              ; preds = %183
  br label %286

286:                                              ; preds = %285
  %287 = load i32, ptr %8, align 4, !tbaa !40
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %8, align 4, !tbaa !40
  br label %173, !llvm.loop !345

289:                                              ; preds = %173
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  br label %290

290:                                              ; preds = %289, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @SetRefAndMotionVectors(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !40
  store i32 %1, ptr %7, align 4, !tbaa !40
  store i32 %2, ptr %8, align 4, !tbaa !40
  store i32 %3, ptr %9, align 4, !tbaa !40
  store i32 %4, ptr %10, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  store i32 0, ptr %12, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  %24 = load ptr, ptr @img, align 8, !tbaa !13
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !39
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  store i32 %28, ptr %13, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  %29 = load i32, ptr %7, align 4, !tbaa !40
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = load i32, ptr %7, align 4, !tbaa !40
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %7, align 4, !tbaa !40
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31, %5
  %38 = load i32, ptr %7, align 4, !tbaa !40
  br label %40

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 4, %39 ]
  store i32 %41, ptr %14, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  %42 = load i32, ptr %6, align 4, !tbaa !40
  %43 = ashr i32 %42, 1
  %44 = shl i32 %43, 1
  store i32 %44, ptr %15, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  %45 = load i32, ptr %6, align 4, !tbaa !40
  %46 = and i32 %45, 1
  %47 = shl i32 %46, 1
  store i32 %47, ptr %16, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  %48 = load i32, ptr %15, align 4, !tbaa !40
  %49 = load ptr, ptr @input, align 8, !tbaa !13
  %50 = getelementptr inbounds nuw %struct.InputParameters, ptr %49, i32 0, i32 19
  %51 = load i32, ptr %14, align 4, !tbaa !40
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [2 x i32]], ptr %50, i64 0, i64 %52
  %54 = getelementptr inbounds [2 x i32], ptr %53, i64 0, i64 1
  %55 = load i32, ptr %54, align 4, !tbaa !40
  %56 = add nsw i32 %48, %55
  store i32 %56, ptr %17, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  %57 = load i32, ptr %16, align 4, !tbaa !40
  %58 = load ptr, ptr @input, align 8, !tbaa !13
  %59 = getelementptr inbounds nuw %struct.InputParameters, ptr %58, i32 0, i32 19
  %60 = load i32, ptr %14, align 4, !tbaa !40
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x [2 x i32]], ptr %59, i64 0, i64 %61
  %63 = getelementptr inbounds [2 x i32], ptr %62, i64 0, i64 0
  %64 = load i32, ptr %63, align 8, !tbaa !40
  %65 = add nsw i32 %57, %64
  store i32 %65, ptr %18, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #8
  %66 = load ptr, ptr @img, align 8, !tbaa !13
  %67 = getelementptr inbounds nuw %struct.ImageParameters, ptr %66, i32 0, i32 61
  %68 = load ptr, ptr %67, align 8, !tbaa !143
  %69 = load ptr, ptr @img, align 8, !tbaa !13
  %70 = getelementptr inbounds nuw %struct.ImageParameters, ptr %69, i32 0, i32 3
  %71 = load i32, ptr %70, align 4, !tbaa !120
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.macroblock, ptr %68, i64 %72
  store ptr %73, ptr %22, align 8, !tbaa !153
  %74 = load i32, ptr %8, align 4, !tbaa !40
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %241

76:                                               ; preds = %40
  %77 = load ptr, ptr @img, align 8, !tbaa !13
  %78 = getelementptr inbounds nuw %struct.ImageParameters, ptr %77, i32 0, i32 38
  %79 = load i32, ptr %78, align 4, !tbaa !68
  %80 = load i32, ptr %15, align 4, !tbaa !40
  %81 = add nsw i32 %79, %80
  store i32 %81, ptr %12, align 4, !tbaa !40
  br label %82

82:                                               ; preds = %237, %76
  %83 = load i32, ptr %12, align 4, !tbaa !40
  %84 = load ptr, ptr @img, align 8, !tbaa !13
  %85 = getelementptr inbounds nuw %struct.ImageParameters, ptr %84, i32 0, i32 38
  %86 = load i32, ptr %85, align 4, !tbaa !68
  %87 = load i32, ptr %17, align 4, !tbaa !40
  %88 = add nsw i32 %86, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %240

90:                                               ; preds = %82
  %91 = load ptr, ptr @img, align 8, !tbaa !13
  %92 = getelementptr inbounds nuw %struct.ImageParameters, ptr %91, i32 0, i32 37
  %93 = load i32, ptr %92, align 8, !tbaa !69
  %94 = load i32, ptr %16, align 4, !tbaa !40
  %95 = add nsw i32 %93, %94
  store i32 %95, ptr %11, align 4, !tbaa !40
  br label %96

96:                                               ; preds = %129, %90
  %97 = load i32, ptr %11, align 4, !tbaa !40
  %98 = load ptr, ptr @img, align 8, !tbaa !13
  %99 = getelementptr inbounds nuw %struct.ImageParameters, ptr %98, i32 0, i32 37
  %100 = load i32, ptr %99, align 8, !tbaa !69
  %101 = load i32, ptr %18, align 4, !tbaa !40
  %102 = add nsw i32 %100, %101
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %96
  %105 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %106 = getelementptr inbounds nuw %struct.storable_picture, ptr %105, i32 0, i32 36
  %107 = load ptr, ptr %106, align 8, !tbaa !188
  %108 = getelementptr inbounds ptr, ptr %107, i64 0
  %109 = load ptr, ptr %108, align 8, !tbaa !189
  %110 = load i32, ptr %12, align 4, !tbaa !40
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !151
  %114 = load i32, ptr %11, align 4, !tbaa !40
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, ptr %113, i64 %115
  store i64 -1, ptr %116, align 8, !tbaa !93
  %117 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %118 = getelementptr inbounds nuw %struct.storable_picture, ptr %117, i32 0, i32 36
  %119 = load ptr, ptr %118, align 8, !tbaa !188
  %120 = getelementptr inbounds ptr, ptr %119, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !189
  %122 = load i32, ptr %12, align 4, !tbaa !40
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds ptr, ptr %121, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !151
  %126 = load i32, ptr %11, align 4, !tbaa !40
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, ptr %125, i64 %127
  store i64 -1, ptr %128, align 8, !tbaa !93
  br label %129

129:                                              ; preds = %104
  %130 = load i32, ptr %11, align 4, !tbaa !40
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %11, align 4, !tbaa !40
  br label %96, !llvm.loop !346

132:                                              ; preds = %96
  %133 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %134 = getelementptr inbounds nuw %struct.storable_picture, ptr %133, i32 0, i32 35
  %135 = load ptr, ptr %134, align 8, !tbaa !178
  %136 = getelementptr inbounds ptr, ptr %135, i64 0
  %137 = load ptr, ptr %136, align 8, !tbaa !43
  %138 = load i32, ptr %12, align 4, !tbaa !40
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !44
  %142 = load ptr, ptr @img, align 8, !tbaa !13
  %143 = getelementptr inbounds nuw %struct.ImageParameters, ptr %142, i32 0, i32 37
  %144 = load i32, ptr %143, align 8, !tbaa !69
  %145 = load i32, ptr %16, align 4, !tbaa !40
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %141, i64 %147
  %149 = load ptr, ptr @input, align 8, !tbaa !13
  %150 = getelementptr inbounds nuw %struct.InputParameters, ptr %149, i32 0, i32 19
  %151 = load i32, ptr %14, align 4, !tbaa !40
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [8 x [2 x i32]], ptr %150, i64 0, i64 %152
  %154 = getelementptr inbounds [2 x i32], ptr %153, i64 0, i64 0
  %155 = load i32, ptr %154, align 8, !tbaa !40
  %156 = sext i32 %155 to i64
  %157 = mul i64 %156, 1
  call void @llvm.memset.p0.i64(ptr align 1 %148, i8 -1, i64 %157, i1 false)
  %158 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %159 = getelementptr inbounds nuw %struct.storable_picture, ptr %158, i32 0, i32 35
  %160 = load ptr, ptr %159, align 8, !tbaa !178
  %161 = getelementptr inbounds ptr, ptr %160, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !43
  %163 = load i32, ptr %12, align 4, !tbaa !40
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !44
  %167 = load ptr, ptr @img, align 8, !tbaa !13
  %168 = getelementptr inbounds nuw %struct.ImageParameters, ptr %167, i32 0, i32 37
  %169 = load i32, ptr %168, align 8, !tbaa !69
  %170 = load i32, ptr %16, align 4, !tbaa !40
  %171 = add nsw i32 %169, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %166, i64 %172
  %174 = load ptr, ptr @input, align 8, !tbaa !13
  %175 = getelementptr inbounds nuw %struct.InputParameters, ptr %174, i32 0, i32 19
  %176 = load i32, ptr %14, align 4, !tbaa !40
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [8 x [2 x i32]], ptr %175, i64 0, i64 %177
  %179 = getelementptr inbounds [2 x i32], ptr %178, i64 0, i64 0
  %180 = load i32, ptr %179, align 8, !tbaa !40
  %181 = sext i32 %180 to i64
  %182 = mul i64 %181, 1
  call void @llvm.memset.p0.i64(ptr align 1 %173, i8 -1, i64 %182, i1 false)
  %183 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %184 = getelementptr inbounds nuw %struct.storable_picture, ptr %183, i32 0, i32 38
  %185 = load ptr, ptr %184, align 8, !tbaa !224
  %186 = getelementptr inbounds ptr, ptr %185, i64 0
  %187 = load ptr, ptr %186, align 8, !tbaa !61
  %188 = load i32, ptr %12, align 4, !tbaa !40
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !63
  %192 = load ptr, ptr @img, align 8, !tbaa !13
  %193 = getelementptr inbounds nuw %struct.ImageParameters, ptr %192, i32 0, i32 37
  %194 = load i32, ptr %193, align 8, !tbaa !69
  %195 = load i32, ptr %16, align 4, !tbaa !40
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %191, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !65
  %200 = load ptr, ptr @input, align 8, !tbaa !13
  %201 = getelementptr inbounds nuw %struct.InputParameters, ptr %200, i32 0, i32 19
  %202 = load i32, ptr %14, align 4, !tbaa !40
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [8 x [2 x i32]], ptr %201, i64 0, i64 %203
  %205 = getelementptr inbounds [2 x i32], ptr %204, i64 0, i64 0
  %206 = load i32, ptr %205, align 8, !tbaa !40
  %207 = mul nsw i32 2, %206
  %208 = sext i32 %207 to i64
  %209 = mul i64 %208, 2
  call void @llvm.memset.p0.i64(ptr align 2 %199, i8 0, i64 %209, i1 false)
  %210 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %211 = getelementptr inbounds nuw %struct.storable_picture, ptr %210, i32 0, i32 38
  %212 = load ptr, ptr %211, align 8, !tbaa !224
  %213 = getelementptr inbounds ptr, ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !61
  %215 = load i32, ptr %12, align 4, !tbaa !40
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %214, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !63
  %219 = load ptr, ptr @img, align 8, !tbaa !13
  %220 = getelementptr inbounds nuw %struct.ImageParameters, ptr %219, i32 0, i32 37
  %221 = load i32, ptr %220, align 8, !tbaa !69
  %222 = load i32, ptr %16, align 4, !tbaa !40
  %223 = add nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds ptr, ptr %218, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !65
  %227 = load ptr, ptr @input, align 8, !tbaa !13
  %228 = getelementptr inbounds nuw %struct.InputParameters, ptr %227, i32 0, i32 19
  %229 = load i32, ptr %14, align 4, !tbaa !40
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [8 x [2 x i32]], ptr %228, i64 0, i64 %230
  %232 = getelementptr inbounds [2 x i32], ptr %231, i64 0, i64 0
  %233 = load i32, ptr %232, align 8, !tbaa !40
  %234 = mul nsw i32 2, %233
  %235 = sext i32 %234 to i64
  %236 = mul i64 %235, 2
  call void @llvm.memset.p0.i64(ptr align 2 %226, i8 0, i64 %236, i1 false)
  br label %237

237:                                              ; preds = %132
  %238 = load i32, ptr %12, align 4, !tbaa !40
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %12, align 4, !tbaa !40
  br label %82, !llvm.loop !347

240:                                              ; preds = %82
  store i32 1, ptr %23, align 4
  br label %1041

241:                                              ; preds = %40
  %242 = load i32, ptr %13, align 4, !tbaa !40
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %381, label %244

244:                                              ; preds = %241
  %245 = load i32, ptr %15, align 4, !tbaa !40
  store i32 %245, ptr %12, align 4, !tbaa !40
  br label %246

246:                                              ; preds = %377, %244
  %247 = load i32, ptr %12, align 4, !tbaa !40
  %248 = load i32, ptr %17, align 4, !tbaa !40
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %380

250:                                              ; preds = %246
  %251 = load ptr, ptr @img, align 8, !tbaa !13
  %252 = getelementptr inbounds nuw %struct.ImageParameters, ptr %251, i32 0, i32 38
  %253 = load i32, ptr %252, align 4, !tbaa !68
  %254 = load i32, ptr %12, align 4, !tbaa !40
  %255 = add nsw i32 %253, %254
  store i32 %255, ptr %20, align 4, !tbaa !40
  %256 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %257 = getelementptr inbounds nuw %struct.storable_picture, ptr %256, i32 0, i32 35
  %258 = load ptr, ptr %257, align 8, !tbaa !178
  %259 = getelementptr inbounds ptr, ptr %258, i64 0
  %260 = load ptr, ptr %259, align 8, !tbaa !43
  %261 = load i32, ptr %20, align 4, !tbaa !40
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds ptr, ptr %260, i64 %262
  %264 = load ptr, ptr %263, align 8, !tbaa !44
  %265 = load ptr, ptr @img, align 8, !tbaa !13
  %266 = getelementptr inbounds nuw %struct.ImageParameters, ptr %265, i32 0, i32 37
  %267 = load i32, ptr %266, align 8, !tbaa !69
  %268 = load i32, ptr %16, align 4, !tbaa !40
  %269 = add nsw i32 %267, %268
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8, ptr %264, i64 %270
  %272 = load i32, ptr %9, align 4, !tbaa !40
  %273 = trunc i32 %272 to i8
  %274 = load ptr, ptr @input, align 8, !tbaa !13
  %275 = getelementptr inbounds nuw %struct.InputParameters, ptr %274, i32 0, i32 19
  %276 = load i32, ptr %14, align 4, !tbaa !40
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [8 x [2 x i32]], ptr %275, i64 0, i64 %277
  %279 = getelementptr inbounds [2 x i32], ptr %278, i64 0, i64 0
  %280 = load i32, ptr %279, align 8, !tbaa !40
  %281 = sext i32 %280 to i64
  %282 = mul i64 %281, 1
  call void @llvm.memset.p0.i64(ptr align 1 %271, i8 %273, i64 %282, i1 false)
  %283 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %283, ptr %11, align 4, !tbaa !40
  br label %284

284:                                              ; preds = %373, %250
  %285 = load i32, ptr %11, align 4, !tbaa !40
  %286 = load i32, ptr %18, align 4, !tbaa !40
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %376

288:                                              ; preds = %284
  %289 = load ptr, ptr @img, align 8, !tbaa !13
  %290 = getelementptr inbounds nuw %struct.ImageParameters, ptr %289, i32 0, i32 37
  %291 = load i32, ptr %290, align 8, !tbaa !69
  %292 = load i32, ptr %11, align 4, !tbaa !40
  %293 = add nsw i32 %291, %292
  store i32 %293, ptr %19, align 4, !tbaa !40
  %294 = load ptr, ptr @img, align 8, !tbaa !13
  %295 = getelementptr inbounds nuw %struct.ImageParameters, ptr %294, i32 0, i32 80
  %296 = load ptr, ptr %295, align 8, !tbaa !56
  %297 = load i32, ptr %12, align 4, !tbaa !40
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %296, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !57
  %301 = load i32, ptr %11, align 4, !tbaa !40
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %300, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !59
  %305 = getelementptr inbounds ptr, ptr %304, i64 0
  %306 = load ptr, ptr %305, align 8, !tbaa !61
  %307 = load i32, ptr %9, align 4, !tbaa !40
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %306, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !63
  %311 = load i32, ptr %7, align 4, !tbaa !40
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %310, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !65
  store ptr %314, ptr %21, align 8, !tbaa !65
  %315 = load ptr, ptr %21, align 8, !tbaa !65
  %316 = getelementptr inbounds i16, ptr %315, i64 0
  %317 = load i16, ptr %316, align 2, !tbaa !67
  %318 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %319 = getelementptr inbounds nuw %struct.storable_picture, ptr %318, i32 0, i32 38
  %320 = load ptr, ptr %319, align 8, !tbaa !224
  %321 = getelementptr inbounds ptr, ptr %320, i64 0
  %322 = load ptr, ptr %321, align 8, !tbaa !61
  %323 = load i32, ptr %20, align 4, !tbaa !40
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %322, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !63
  %327 = load i32, ptr %19, align 4, !tbaa !40
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds ptr, ptr %326, i64 %328
  %330 = load ptr, ptr %329, align 8, !tbaa !65
  %331 = getelementptr inbounds i16, ptr %330, i64 0
  store i16 %317, ptr %331, align 2, !tbaa !67
  %332 = load ptr, ptr %21, align 8, !tbaa !65
  %333 = getelementptr inbounds i16, ptr %332, i64 1
  %334 = load i16, ptr %333, align 2, !tbaa !67
  %335 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %336 = getelementptr inbounds nuw %struct.storable_picture, ptr %335, i32 0, i32 38
  %337 = load ptr, ptr %336, align 8, !tbaa !224
  %338 = getelementptr inbounds ptr, ptr %337, i64 0
  %339 = load ptr, ptr %338, align 8, !tbaa !61
  %340 = load i32, ptr %20, align 4, !tbaa !40
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds ptr, ptr %339, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !63
  %344 = load i32, ptr %19, align 4, !tbaa !40
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds ptr, ptr %343, i64 %345
  %347 = load ptr, ptr %346, align 8, !tbaa !65
  %348 = getelementptr inbounds i16, ptr %347, i64 1
  store i16 %334, ptr %348, align 2, !tbaa !67
  %349 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %350 = getelementptr inbounds nuw %struct.storable_picture, ptr %349, i32 0, i32 6
  %351 = load ptr, ptr %22, align 8, !tbaa !153
  %352 = getelementptr inbounds nuw %struct.macroblock, ptr %351, i32 0, i32 21
  %353 = load i32, ptr %352, align 8, !tbaa !187
  %354 = add nsw i32 0, %353
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [6 x [33 x i64]], ptr %350, i64 0, i64 %355
  %357 = load i32, ptr %9, align 4, !tbaa !40
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [33 x i64], ptr %356, i64 0, i64 %358
  %360 = load i64, ptr %359, align 8, !tbaa !93
  %361 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %362 = getelementptr inbounds nuw %struct.storable_picture, ptr %361, i32 0, i32 36
  %363 = load ptr, ptr %362, align 8, !tbaa !188
  %364 = getelementptr inbounds ptr, ptr %363, i64 0
  %365 = load ptr, ptr %364, align 8, !tbaa !189
  %366 = load i32, ptr %20, align 4, !tbaa !40
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds ptr, ptr %365, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !151
  %370 = load i32, ptr %19, align 4, !tbaa !40
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i64, ptr %369, i64 %371
  store i64 %360, ptr %372, align 8, !tbaa !93
  br label %373

373:                                              ; preds = %288
  %374 = load i32, ptr %11, align 4, !tbaa !40
  %375 = add nsw i32 %374, 1
  store i32 %375, ptr %11, align 4, !tbaa !40
  br label %284, !llvm.loop !348

376:                                              ; preds = %284
  br label %377

377:                                              ; preds = %376
  %378 = load i32, ptr %12, align 4, !tbaa !40
  %379 = add nsw i32 %378, 1
  store i32 %379, ptr %12, align 4, !tbaa !40
  br label %246, !llvm.loop !349

380:                                              ; preds = %246
  store i32 1, ptr %23, align 4
  br label %1041

381:                                              ; preds = %241
  %382 = load i32, ptr %15, align 4, !tbaa !40
  store i32 %382, ptr %12, align 4, !tbaa !40
  br label %383

383:                                              ; preds = %1036, %381
  %384 = load i32, ptr %12, align 4, !tbaa !40
  %385 = load i32, ptr %17, align 4, !tbaa !40
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %1039

387:                                              ; preds = %383
  %388 = load ptr, ptr @img, align 8, !tbaa !13
  %389 = getelementptr inbounds nuw %struct.ImageParameters, ptr %388, i32 0, i32 38
  %390 = load i32, ptr %389, align 4, !tbaa !68
  %391 = load i32, ptr %12, align 4, !tbaa !40
  %392 = add nsw i32 %390, %391
  store i32 %392, ptr %20, align 4, !tbaa !40
  %393 = load i32, ptr %16, align 4, !tbaa !40
  store i32 %393, ptr %11, align 4, !tbaa !40
  br label %394

394:                                              ; preds = %1032, %387
  %395 = load i32, ptr %11, align 4, !tbaa !40
  %396 = load i32, ptr %18, align 4, !tbaa !40
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %1035

398:                                              ; preds = %394
  %399 = load ptr, ptr @img, align 8, !tbaa !13
  %400 = getelementptr inbounds nuw %struct.ImageParameters, ptr %399, i32 0, i32 37
  %401 = load i32, ptr %400, align 8, !tbaa !69
  %402 = load i32, ptr %11, align 4, !tbaa !40
  %403 = add nsw i32 %401, %402
  store i32 %403, ptr %19, align 4, !tbaa !40
  %404 = load i32, ptr %7, align 4, !tbaa !40
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %441

406:                                              ; preds = %398
  %407 = load ptr, ptr @direct_pdir, align 8, !tbaa !43
  %408 = load i32, ptr %20, align 4, !tbaa !40
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds ptr, ptr %407, i64 %409
  %411 = load ptr, ptr %410, align 8, !tbaa !44
  %412 = load i32, ptr %19, align 4, !tbaa !40
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, ptr %411, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !45
  %416 = sext i8 %415 to i32
  store i32 %416, ptr %8, align 4, !tbaa !40
  %417 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %418 = getelementptr inbounds ptr, ptr %417, i64 0
  %419 = load ptr, ptr %418, align 8, !tbaa !43
  %420 = load i32, ptr %20, align 4, !tbaa !40
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds ptr, ptr %419, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !44
  %424 = load i32, ptr %19, align 4, !tbaa !40
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, ptr %423, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !45
  %428 = sext i8 %427 to i32
  store i32 %428, ptr %9, align 4, !tbaa !40
  %429 = load ptr, ptr @direct_ref_idx, align 8, !tbaa !156
  %430 = getelementptr inbounds ptr, ptr %429, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !43
  %432 = load i32, ptr %20, align 4, !tbaa !40
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !44
  %436 = load i32, ptr %19, align 4, !tbaa !40
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, ptr %435, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !45
  %440 = sext i8 %439 to i32
  store i32 %440, ptr %10, align 4, !tbaa !40
  br label %441

441:                                              ; preds = %406, %398
  %442 = load i32, ptr %8, align 4, !tbaa !40
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %441
  %445 = load i32, ptr %8, align 4, !tbaa !40
  %446 = icmp eq i32 %445, 2
  br i1 %446, label %447, label %683

447:                                              ; preds = %444, %441
  %448 = load ptr, ptr %22, align 8, !tbaa !153
  %449 = getelementptr inbounds nuw %struct.macroblock, ptr %448, i32 0, i32 33
  %450 = load i16, ptr %449, align 8, !tbaa !154
  %451 = sext i16 %450 to i32
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %575

453:                                              ; preds = %447
  %454 = load i32, ptr %8, align 4, !tbaa !40
  %455 = icmp eq i32 %454, 2
  br i1 %455, label %456, label %575

456:                                              ; preds = %453
  %457 = load i32, ptr %7, align 4, !tbaa !40
  %458 = icmp eq i32 %457, 1
  br i1 %458, label %459, label %575

459:                                              ; preds = %456
  %460 = load ptr, ptr %22, align 8, !tbaa !153
  %461 = getelementptr inbounds nuw %struct.macroblock, ptr %460, i32 0, i32 33
  %462 = load i16, ptr %461, align 8, !tbaa !154
  %463 = sext i16 %462 to i32
  %464 = icmp eq i32 %463, 1
  br i1 %464, label %465, label %485

465:                                              ; preds = %459
  %466 = load ptr, ptr @img, align 8, !tbaa !13
  %467 = getelementptr inbounds nuw %struct.ImageParameters, ptr %466, i32 0, i32 81
  %468 = load ptr, ptr %467, align 8, !tbaa !227
  %469 = load i32, ptr %12, align 4, !tbaa !40
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds ptr, ptr %468, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !57
  %473 = load i32, ptr %11, align 4, !tbaa !40
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds ptr, ptr %472, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !59
  %477 = getelementptr inbounds ptr, ptr %476, i64 0
  %478 = load ptr, ptr %477, align 8, !tbaa !61
  %479 = getelementptr inbounds ptr, ptr %478, i64 0
  %480 = load ptr, ptr %479, align 8, !tbaa !63
  %481 = load i32, ptr %7, align 4, !tbaa !40
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds ptr, ptr %480, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !65
  br label %505

485:                                              ; preds = %459
  %486 = load ptr, ptr @img, align 8, !tbaa !13
  %487 = getelementptr inbounds nuw %struct.ImageParameters, ptr %486, i32 0, i32 82
  %488 = load ptr, ptr %487, align 8, !tbaa !228
  %489 = load i32, ptr %12, align 4, !tbaa !40
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %488, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !57
  %493 = load i32, ptr %11, align 4, !tbaa !40
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds ptr, ptr %492, i64 %494
  %496 = load ptr, ptr %495, align 8, !tbaa !59
  %497 = getelementptr inbounds ptr, ptr %496, i64 0
  %498 = load ptr, ptr %497, align 8, !tbaa !61
  %499 = getelementptr inbounds ptr, ptr %498, i64 0
  %500 = load ptr, ptr %499, align 8, !tbaa !63
  %501 = load i32, ptr %7, align 4, !tbaa !40
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds ptr, ptr %500, i64 %502
  %504 = load ptr, ptr %503, align 8, !tbaa !65
  br label %505

505:                                              ; preds = %485, %465
  %506 = phi ptr [ %484, %465 ], [ %504, %485 ]
  store ptr %506, ptr %21, align 8, !tbaa !65
  %507 = load ptr, ptr %21, align 8, !tbaa !65
  %508 = getelementptr inbounds i16, ptr %507, i64 0
  %509 = load i16, ptr %508, align 2, !tbaa !67
  %510 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %511 = getelementptr inbounds nuw %struct.storable_picture, ptr %510, i32 0, i32 38
  %512 = load ptr, ptr %511, align 8, !tbaa !224
  %513 = getelementptr inbounds ptr, ptr %512, i64 0
  %514 = load ptr, ptr %513, align 8, !tbaa !61
  %515 = load i32, ptr %20, align 4, !tbaa !40
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds ptr, ptr %514, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !63
  %519 = load i32, ptr %19, align 4, !tbaa !40
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds ptr, ptr %518, i64 %520
  %522 = load ptr, ptr %521, align 8, !tbaa !65
  %523 = getelementptr inbounds i16, ptr %522, i64 0
  store i16 %509, ptr %523, align 2, !tbaa !67
  %524 = load ptr, ptr %21, align 8, !tbaa !65
  %525 = getelementptr inbounds i16, ptr %524, i64 1
  %526 = load i16, ptr %525, align 2, !tbaa !67
  %527 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %528 = getelementptr inbounds nuw %struct.storable_picture, ptr %527, i32 0, i32 38
  %529 = load ptr, ptr %528, align 8, !tbaa !224
  %530 = getelementptr inbounds ptr, ptr %529, i64 0
  %531 = load ptr, ptr %530, align 8, !tbaa !61
  %532 = load i32, ptr %20, align 4, !tbaa !40
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds ptr, ptr %531, i64 %533
  %535 = load ptr, ptr %534, align 8, !tbaa !63
  %536 = load i32, ptr %19, align 4, !tbaa !40
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds ptr, ptr %535, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !65
  %540 = getelementptr inbounds i16, ptr %539, i64 1
  store i16 %526, ptr %540, align 2, !tbaa !67
  %541 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %542 = getelementptr inbounds nuw %struct.storable_picture, ptr %541, i32 0, i32 35
  %543 = load ptr, ptr %542, align 8, !tbaa !178
  %544 = getelementptr inbounds ptr, ptr %543, i64 0
  %545 = load ptr, ptr %544, align 8, !tbaa !43
  %546 = load i32, ptr %20, align 4, !tbaa !40
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds ptr, ptr %545, i64 %547
  %549 = load ptr, ptr %548, align 8, !tbaa !44
  %550 = load i32, ptr %19, align 4, !tbaa !40
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, ptr %549, i64 %551
  store i8 0, ptr %552, align 1, !tbaa !45
  %553 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %554 = getelementptr inbounds nuw %struct.storable_picture, ptr %553, i32 0, i32 6
  %555 = load ptr, ptr %22, align 8, !tbaa !153
  %556 = getelementptr inbounds nuw %struct.macroblock, ptr %555, i32 0, i32 21
  %557 = load i32, ptr %556, align 8, !tbaa !187
  %558 = add nsw i32 0, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [6 x [33 x i64]], ptr %554, i64 0, i64 %559
  %561 = getelementptr inbounds [33 x i64], ptr %560, i64 0, i64 0
  %562 = load i64, ptr %561, align 8, !tbaa !93
  %563 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %564 = getelementptr inbounds nuw %struct.storable_picture, ptr %563, i32 0, i32 36
  %565 = load ptr, ptr %564, align 8, !tbaa !188
  %566 = getelementptr inbounds ptr, ptr %565, i64 0
  %567 = load ptr, ptr %566, align 8, !tbaa !189
  %568 = load i32, ptr %20, align 4, !tbaa !40
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds ptr, ptr %567, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !151
  %572 = load i32, ptr %19, align 4, !tbaa !40
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i64, ptr %571, i64 %573
  store i64 %562, ptr %574, align 8, !tbaa !93
  br label %682

575:                                              ; preds = %456, %453, %447
  %576 = load ptr, ptr @img, align 8, !tbaa !13
  %577 = getelementptr inbounds nuw %struct.ImageParameters, ptr %576, i32 0, i32 80
  %578 = load ptr, ptr %577, align 8, !tbaa !56
  %579 = load i32, ptr %12, align 4, !tbaa !40
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds ptr, ptr %578, i64 %580
  %582 = load ptr, ptr %581, align 8, !tbaa !57
  %583 = load i32, ptr %11, align 4, !tbaa !40
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds ptr, ptr %582, i64 %584
  %586 = load ptr, ptr %585, align 8, !tbaa !59
  %587 = getelementptr inbounds ptr, ptr %586, i64 0
  %588 = load ptr, ptr %587, align 8, !tbaa !61
  %589 = load i32, ptr %9, align 4, !tbaa !40
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds ptr, ptr %588, i64 %590
  %592 = load ptr, ptr %591, align 8, !tbaa !63
  %593 = load i32, ptr %7, align 4, !tbaa !40
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds ptr, ptr %592, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !65
  store ptr %596, ptr %21, align 8, !tbaa !65
  %597 = load ptr, ptr %21, align 8, !tbaa !65
  %598 = getelementptr inbounds i16, ptr %597, i64 0
  %599 = load i16, ptr %598, align 2, !tbaa !67
  %600 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %601 = getelementptr inbounds nuw %struct.storable_picture, ptr %600, i32 0, i32 38
  %602 = load ptr, ptr %601, align 8, !tbaa !224
  %603 = getelementptr inbounds ptr, ptr %602, i64 0
  %604 = load ptr, ptr %603, align 8, !tbaa !61
  %605 = load i32, ptr %20, align 4, !tbaa !40
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %604, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !63
  %609 = load i32, ptr %19, align 4, !tbaa !40
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds ptr, ptr %608, i64 %610
  %612 = load ptr, ptr %611, align 8, !tbaa !65
  %613 = getelementptr inbounds i16, ptr %612, i64 0
  store i16 %599, ptr %613, align 2, !tbaa !67
  %614 = load ptr, ptr %21, align 8, !tbaa !65
  %615 = getelementptr inbounds i16, ptr %614, i64 1
  %616 = load i16, ptr %615, align 2, !tbaa !67
  %617 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %618 = getelementptr inbounds nuw %struct.storable_picture, ptr %617, i32 0, i32 38
  %619 = load ptr, ptr %618, align 8, !tbaa !224
  %620 = getelementptr inbounds ptr, ptr %619, i64 0
  %621 = load ptr, ptr %620, align 8, !tbaa !61
  %622 = load i32, ptr %20, align 4, !tbaa !40
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds ptr, ptr %621, i64 %623
  %625 = load ptr, ptr %624, align 8, !tbaa !63
  %626 = load i32, ptr %19, align 4, !tbaa !40
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds ptr, ptr %625, i64 %627
  %629 = load ptr, ptr %628, align 8, !tbaa !65
  %630 = getelementptr inbounds i16, ptr %629, i64 1
  store i16 %616, ptr %630, align 2, !tbaa !67
  %631 = load i32, ptr %9, align 4, !tbaa !40
  %632 = trunc i32 %631 to i8
  %633 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %634 = getelementptr inbounds nuw %struct.storable_picture, ptr %633, i32 0, i32 35
  %635 = load ptr, ptr %634, align 8, !tbaa !178
  %636 = getelementptr inbounds ptr, ptr %635, i64 0
  %637 = load ptr, ptr %636, align 8, !tbaa !43
  %638 = load i32, ptr %20, align 4, !tbaa !40
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds ptr, ptr %637, i64 %639
  %641 = load ptr, ptr %640, align 8, !tbaa !44
  %642 = load i32, ptr %19, align 4, !tbaa !40
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i8, ptr %641, i64 %643
  store i8 %632, ptr %644, align 1, !tbaa !45
  %645 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %646 = getelementptr inbounds nuw %struct.storable_picture, ptr %645, i32 0, i32 6
  %647 = load ptr, ptr %22, align 8, !tbaa !153
  %648 = getelementptr inbounds nuw %struct.macroblock, ptr %647, i32 0, i32 21
  %649 = load i32, ptr %648, align 8, !tbaa !187
  %650 = add nsw i32 0, %649
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [6 x [33 x i64]], ptr %646, i64 0, i64 %651
  %653 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %654 = getelementptr inbounds nuw %struct.storable_picture, ptr %653, i32 0, i32 35
  %655 = load ptr, ptr %654, align 8, !tbaa !178
  %656 = getelementptr inbounds ptr, ptr %655, i64 0
  %657 = load ptr, ptr %656, align 8, !tbaa !43
  %658 = load i32, ptr %20, align 4, !tbaa !40
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds ptr, ptr %657, i64 %659
  %661 = load ptr, ptr %660, align 8, !tbaa !44
  %662 = load i32, ptr %19, align 4, !tbaa !40
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i8, ptr %661, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !45
  %666 = sext i8 %665 to i16
  %667 = sext i16 %666 to i64
  %668 = getelementptr inbounds [33 x i64], ptr %652, i64 0, i64 %667
  %669 = load i64, ptr %668, align 8, !tbaa !93
  %670 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %671 = getelementptr inbounds nuw %struct.storable_picture, ptr %670, i32 0, i32 36
  %672 = load ptr, ptr %671, align 8, !tbaa !188
  %673 = getelementptr inbounds ptr, ptr %672, i64 0
  %674 = load ptr, ptr %673, align 8, !tbaa !189
  %675 = load i32, ptr %20, align 4, !tbaa !40
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds ptr, ptr %674, i64 %676
  %678 = load ptr, ptr %677, align 8, !tbaa !151
  %679 = load i32, ptr %19, align 4, !tbaa !40
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds i64, ptr %678, i64 %680
  store i64 %669, ptr %681, align 8, !tbaa !93
  br label %682

682:                                              ; preds = %575, %505
  br label %736

683:                                              ; preds = %444
  %684 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %685 = getelementptr inbounds nuw %struct.storable_picture, ptr %684, i32 0, i32 38
  %686 = load ptr, ptr %685, align 8, !tbaa !224
  %687 = getelementptr inbounds ptr, ptr %686, i64 0
  %688 = load ptr, ptr %687, align 8, !tbaa !61
  %689 = load i32, ptr %20, align 4, !tbaa !40
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds ptr, ptr %688, i64 %690
  %692 = load ptr, ptr %691, align 8, !tbaa !63
  %693 = load i32, ptr %19, align 4, !tbaa !40
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds ptr, ptr %692, i64 %694
  %696 = load ptr, ptr %695, align 8, !tbaa !65
  %697 = getelementptr inbounds i16, ptr %696, i64 0
  store i16 0, ptr %697, align 2, !tbaa !67
  %698 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %699 = getelementptr inbounds nuw %struct.storable_picture, ptr %698, i32 0, i32 38
  %700 = load ptr, ptr %699, align 8, !tbaa !224
  %701 = getelementptr inbounds ptr, ptr %700, i64 0
  %702 = load ptr, ptr %701, align 8, !tbaa !61
  %703 = load i32, ptr %20, align 4, !tbaa !40
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds ptr, ptr %702, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !63
  %707 = load i32, ptr %19, align 4, !tbaa !40
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds ptr, ptr %706, i64 %708
  %710 = load ptr, ptr %709, align 8, !tbaa !65
  %711 = getelementptr inbounds i16, ptr %710, i64 1
  store i16 0, ptr %711, align 2, !tbaa !67
  %712 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %713 = getelementptr inbounds nuw %struct.storable_picture, ptr %712, i32 0, i32 35
  %714 = load ptr, ptr %713, align 8, !tbaa !178
  %715 = getelementptr inbounds ptr, ptr %714, i64 0
  %716 = load ptr, ptr %715, align 8, !tbaa !43
  %717 = load i32, ptr %20, align 4, !tbaa !40
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds ptr, ptr %716, i64 %718
  %720 = load ptr, ptr %719, align 8, !tbaa !44
  %721 = load i32, ptr %19, align 4, !tbaa !40
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i8, ptr %720, i64 %722
  store i8 -1, ptr %723, align 1, !tbaa !45
  %724 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %725 = getelementptr inbounds nuw %struct.storable_picture, ptr %724, i32 0, i32 36
  %726 = load ptr, ptr %725, align 8, !tbaa !188
  %727 = getelementptr inbounds ptr, ptr %726, i64 0
  %728 = load ptr, ptr %727, align 8, !tbaa !189
  %729 = load i32, ptr %20, align 4, !tbaa !40
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds ptr, ptr %728, i64 %730
  %732 = load ptr, ptr %731, align 8, !tbaa !151
  %733 = load i32, ptr %19, align 4, !tbaa !40
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds i64, ptr %732, i64 %734
  store i64 -1, ptr %735, align 8, !tbaa !93
  br label %736

736:                                              ; preds = %683, %682
  %737 = load i32, ptr %8, align 4, !tbaa !40
  %738 = icmp eq i32 %737, 1
  br i1 %738, label %742, label %739

739:                                              ; preds = %736
  %740 = load i32, ptr %8, align 4, !tbaa !40
  %741 = icmp eq i32 %740, 2
  br i1 %741, label %742, label %978

742:                                              ; preds = %739, %736
  %743 = load ptr, ptr %22, align 8, !tbaa !153
  %744 = getelementptr inbounds nuw %struct.macroblock, ptr %743, i32 0, i32 33
  %745 = load i16, ptr %744, align 8, !tbaa !154
  %746 = sext i16 %745 to i32
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %748, label %870

748:                                              ; preds = %742
  %749 = load i32, ptr %8, align 4, !tbaa !40
  %750 = icmp eq i32 %749, 2
  br i1 %750, label %751, label %870

751:                                              ; preds = %748
  %752 = load i32, ptr %7, align 4, !tbaa !40
  %753 = icmp eq i32 %752, 1
  br i1 %753, label %754, label %870

754:                                              ; preds = %751
  %755 = load ptr, ptr %22, align 8, !tbaa !153
  %756 = getelementptr inbounds nuw %struct.macroblock, ptr %755, i32 0, i32 33
  %757 = load i16, ptr %756, align 8, !tbaa !154
  %758 = sext i16 %757 to i32
  %759 = icmp eq i32 %758, 1
  br i1 %759, label %760, label %780

760:                                              ; preds = %754
  %761 = load ptr, ptr @img, align 8, !tbaa !13
  %762 = getelementptr inbounds nuw %struct.ImageParameters, ptr %761, i32 0, i32 81
  %763 = load ptr, ptr %762, align 8, !tbaa !227
  %764 = load i32, ptr %12, align 4, !tbaa !40
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds ptr, ptr %763, i64 %765
  %767 = load ptr, ptr %766, align 8, !tbaa !57
  %768 = load i32, ptr %11, align 4, !tbaa !40
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds ptr, ptr %767, i64 %769
  %771 = load ptr, ptr %770, align 8, !tbaa !59
  %772 = getelementptr inbounds ptr, ptr %771, i64 1
  %773 = load ptr, ptr %772, align 8, !tbaa !61
  %774 = getelementptr inbounds ptr, ptr %773, i64 0
  %775 = load ptr, ptr %774, align 8, !tbaa !63
  %776 = load i32, ptr %7, align 4, !tbaa !40
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds ptr, ptr %775, i64 %777
  %779 = load ptr, ptr %778, align 8, !tbaa !65
  br label %800

780:                                              ; preds = %754
  %781 = load ptr, ptr @img, align 8, !tbaa !13
  %782 = getelementptr inbounds nuw %struct.ImageParameters, ptr %781, i32 0, i32 82
  %783 = load ptr, ptr %782, align 8, !tbaa !228
  %784 = load i32, ptr %12, align 4, !tbaa !40
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds ptr, ptr %783, i64 %785
  %787 = load ptr, ptr %786, align 8, !tbaa !57
  %788 = load i32, ptr %11, align 4, !tbaa !40
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds ptr, ptr %787, i64 %789
  %791 = load ptr, ptr %790, align 8, !tbaa !59
  %792 = getelementptr inbounds ptr, ptr %791, i64 1
  %793 = load ptr, ptr %792, align 8, !tbaa !61
  %794 = getelementptr inbounds ptr, ptr %793, i64 0
  %795 = load ptr, ptr %794, align 8, !tbaa !63
  %796 = load i32, ptr %7, align 4, !tbaa !40
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds ptr, ptr %795, i64 %797
  %799 = load ptr, ptr %798, align 8, !tbaa !65
  br label %800

800:                                              ; preds = %780, %760
  %801 = phi ptr [ %779, %760 ], [ %799, %780 ]
  store ptr %801, ptr %21, align 8, !tbaa !65
  %802 = load ptr, ptr %21, align 8, !tbaa !65
  %803 = getelementptr inbounds i16, ptr %802, i64 0
  %804 = load i16, ptr %803, align 2, !tbaa !67
  %805 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %806 = getelementptr inbounds nuw %struct.storable_picture, ptr %805, i32 0, i32 38
  %807 = load ptr, ptr %806, align 8, !tbaa !224
  %808 = getelementptr inbounds ptr, ptr %807, i64 1
  %809 = load ptr, ptr %808, align 8, !tbaa !61
  %810 = load i32, ptr %20, align 4, !tbaa !40
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds ptr, ptr %809, i64 %811
  %813 = load ptr, ptr %812, align 8, !tbaa !63
  %814 = load i32, ptr %19, align 4, !tbaa !40
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds ptr, ptr %813, i64 %815
  %817 = load ptr, ptr %816, align 8, !tbaa !65
  %818 = getelementptr inbounds i16, ptr %817, i64 0
  store i16 %804, ptr %818, align 2, !tbaa !67
  %819 = load ptr, ptr %21, align 8, !tbaa !65
  %820 = getelementptr inbounds i16, ptr %819, i64 1
  %821 = load i16, ptr %820, align 2, !tbaa !67
  %822 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %823 = getelementptr inbounds nuw %struct.storable_picture, ptr %822, i32 0, i32 38
  %824 = load ptr, ptr %823, align 8, !tbaa !224
  %825 = getelementptr inbounds ptr, ptr %824, i64 1
  %826 = load ptr, ptr %825, align 8, !tbaa !61
  %827 = load i32, ptr %20, align 4, !tbaa !40
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds ptr, ptr %826, i64 %828
  %830 = load ptr, ptr %829, align 8, !tbaa !63
  %831 = load i32, ptr %19, align 4, !tbaa !40
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds ptr, ptr %830, i64 %832
  %834 = load ptr, ptr %833, align 8, !tbaa !65
  %835 = getelementptr inbounds i16, ptr %834, i64 1
  store i16 %821, ptr %835, align 2, !tbaa !67
  %836 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %837 = getelementptr inbounds nuw %struct.storable_picture, ptr %836, i32 0, i32 35
  %838 = load ptr, ptr %837, align 8, !tbaa !178
  %839 = getelementptr inbounds ptr, ptr %838, i64 1
  %840 = load ptr, ptr %839, align 8, !tbaa !43
  %841 = load i32, ptr %20, align 4, !tbaa !40
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds ptr, ptr %840, i64 %842
  %844 = load ptr, ptr %843, align 8, !tbaa !44
  %845 = load i32, ptr %19, align 4, !tbaa !40
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i8, ptr %844, i64 %846
  store i8 0, ptr %847, align 1, !tbaa !45
  %848 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %849 = getelementptr inbounds nuw %struct.storable_picture, ptr %848, i32 0, i32 6
  %850 = load ptr, ptr %22, align 8, !tbaa !153
  %851 = getelementptr inbounds nuw %struct.macroblock, ptr %850, i32 0, i32 21
  %852 = load i32, ptr %851, align 8, !tbaa !187
  %853 = add nsw i32 1, %852
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds [6 x [33 x i64]], ptr %849, i64 0, i64 %854
  %856 = getelementptr inbounds [33 x i64], ptr %855, i64 0, i64 0
  %857 = load i64, ptr %856, align 8, !tbaa !93
  %858 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %859 = getelementptr inbounds nuw %struct.storable_picture, ptr %858, i32 0, i32 36
  %860 = load ptr, ptr %859, align 8, !tbaa !188
  %861 = getelementptr inbounds ptr, ptr %860, i64 1
  %862 = load ptr, ptr %861, align 8, !tbaa !189
  %863 = load i32, ptr %20, align 4, !tbaa !40
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds ptr, ptr %862, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !151
  %867 = load i32, ptr %19, align 4, !tbaa !40
  %868 = sext i32 %867 to i64
  %869 = getelementptr inbounds i64, ptr %866, i64 %868
  store i64 %857, ptr %869, align 8, !tbaa !93
  br label %977

870:                                              ; preds = %751, %748, %742
  %871 = load ptr, ptr @img, align 8, !tbaa !13
  %872 = getelementptr inbounds nuw %struct.ImageParameters, ptr %871, i32 0, i32 80
  %873 = load ptr, ptr %872, align 8, !tbaa !56
  %874 = load i32, ptr %12, align 4, !tbaa !40
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds ptr, ptr %873, i64 %875
  %877 = load ptr, ptr %876, align 8, !tbaa !57
  %878 = load i32, ptr %11, align 4, !tbaa !40
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds ptr, ptr %877, i64 %879
  %881 = load ptr, ptr %880, align 8, !tbaa !59
  %882 = getelementptr inbounds ptr, ptr %881, i64 1
  %883 = load ptr, ptr %882, align 8, !tbaa !61
  %884 = load i32, ptr %10, align 4, !tbaa !40
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds ptr, ptr %883, i64 %885
  %887 = load ptr, ptr %886, align 8, !tbaa !63
  %888 = load i32, ptr %7, align 4, !tbaa !40
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds ptr, ptr %887, i64 %889
  %891 = load ptr, ptr %890, align 8, !tbaa !65
  store ptr %891, ptr %21, align 8, !tbaa !65
  %892 = load ptr, ptr %21, align 8, !tbaa !65
  %893 = getelementptr inbounds i16, ptr %892, i64 0
  %894 = load i16, ptr %893, align 2, !tbaa !67
  %895 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %896 = getelementptr inbounds nuw %struct.storable_picture, ptr %895, i32 0, i32 38
  %897 = load ptr, ptr %896, align 8, !tbaa !224
  %898 = getelementptr inbounds ptr, ptr %897, i64 1
  %899 = load ptr, ptr %898, align 8, !tbaa !61
  %900 = load i32, ptr %20, align 4, !tbaa !40
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds ptr, ptr %899, i64 %901
  %903 = load ptr, ptr %902, align 8, !tbaa !63
  %904 = load i32, ptr %19, align 4, !tbaa !40
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds ptr, ptr %903, i64 %905
  %907 = load ptr, ptr %906, align 8, !tbaa !65
  %908 = getelementptr inbounds i16, ptr %907, i64 0
  store i16 %894, ptr %908, align 2, !tbaa !67
  %909 = load ptr, ptr %21, align 8, !tbaa !65
  %910 = getelementptr inbounds i16, ptr %909, i64 1
  %911 = load i16, ptr %910, align 2, !tbaa !67
  %912 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %913 = getelementptr inbounds nuw %struct.storable_picture, ptr %912, i32 0, i32 38
  %914 = load ptr, ptr %913, align 8, !tbaa !224
  %915 = getelementptr inbounds ptr, ptr %914, i64 1
  %916 = load ptr, ptr %915, align 8, !tbaa !61
  %917 = load i32, ptr %20, align 4, !tbaa !40
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds ptr, ptr %916, i64 %918
  %920 = load ptr, ptr %919, align 8, !tbaa !63
  %921 = load i32, ptr %19, align 4, !tbaa !40
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds ptr, ptr %920, i64 %922
  %924 = load ptr, ptr %923, align 8, !tbaa !65
  %925 = getelementptr inbounds i16, ptr %924, i64 1
  store i16 %911, ptr %925, align 2, !tbaa !67
  %926 = load i32, ptr %10, align 4, !tbaa !40
  %927 = trunc i32 %926 to i8
  %928 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %929 = getelementptr inbounds nuw %struct.storable_picture, ptr %928, i32 0, i32 35
  %930 = load ptr, ptr %929, align 8, !tbaa !178
  %931 = getelementptr inbounds ptr, ptr %930, i64 1
  %932 = load ptr, ptr %931, align 8, !tbaa !43
  %933 = load i32, ptr %20, align 4, !tbaa !40
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds ptr, ptr %932, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !44
  %937 = load i32, ptr %19, align 4, !tbaa !40
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds i8, ptr %936, i64 %938
  store i8 %927, ptr %939, align 1, !tbaa !45
  %940 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %941 = getelementptr inbounds nuw %struct.storable_picture, ptr %940, i32 0, i32 6
  %942 = load ptr, ptr %22, align 8, !tbaa !153
  %943 = getelementptr inbounds nuw %struct.macroblock, ptr %942, i32 0, i32 21
  %944 = load i32, ptr %943, align 8, !tbaa !187
  %945 = add nsw i32 1, %944
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds [6 x [33 x i64]], ptr %941, i64 0, i64 %946
  %948 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %949 = getelementptr inbounds nuw %struct.storable_picture, ptr %948, i32 0, i32 35
  %950 = load ptr, ptr %949, align 8, !tbaa !178
  %951 = getelementptr inbounds ptr, ptr %950, i64 1
  %952 = load ptr, ptr %951, align 8, !tbaa !43
  %953 = load i32, ptr %20, align 4, !tbaa !40
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds ptr, ptr %952, i64 %954
  %956 = load ptr, ptr %955, align 8, !tbaa !44
  %957 = load i32, ptr %19, align 4, !tbaa !40
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds i8, ptr %956, i64 %958
  %960 = load i8, ptr %959, align 1, !tbaa !45
  %961 = sext i8 %960 to i16
  %962 = sext i16 %961 to i64
  %963 = getelementptr inbounds [33 x i64], ptr %947, i64 0, i64 %962
  %964 = load i64, ptr %963, align 8, !tbaa !93
  %965 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %966 = getelementptr inbounds nuw %struct.storable_picture, ptr %965, i32 0, i32 36
  %967 = load ptr, ptr %966, align 8, !tbaa !188
  %968 = getelementptr inbounds ptr, ptr %967, i64 1
  %969 = load ptr, ptr %968, align 8, !tbaa !189
  %970 = load i32, ptr %20, align 4, !tbaa !40
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds ptr, ptr %969, i64 %971
  %973 = load ptr, ptr %972, align 8, !tbaa !151
  %974 = load i32, ptr %19, align 4, !tbaa !40
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds i64, ptr %973, i64 %975
  store i64 %964, ptr %976, align 8, !tbaa !93
  br label %977

977:                                              ; preds = %870, %800
  br label %1031

978:                                              ; preds = %739
  %979 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %980 = getelementptr inbounds nuw %struct.storable_picture, ptr %979, i32 0, i32 38
  %981 = load ptr, ptr %980, align 8, !tbaa !224
  %982 = getelementptr inbounds ptr, ptr %981, i64 1
  %983 = load ptr, ptr %982, align 8, !tbaa !61
  %984 = load i32, ptr %20, align 4, !tbaa !40
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds ptr, ptr %983, i64 %985
  %987 = load ptr, ptr %986, align 8, !tbaa !63
  %988 = load i32, ptr %19, align 4, !tbaa !40
  %989 = sext i32 %988 to i64
  %990 = getelementptr inbounds ptr, ptr %987, i64 %989
  %991 = load ptr, ptr %990, align 8, !tbaa !65
  %992 = getelementptr inbounds i16, ptr %991, i64 0
  store i16 0, ptr %992, align 2, !tbaa !67
  %993 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %994 = getelementptr inbounds nuw %struct.storable_picture, ptr %993, i32 0, i32 38
  %995 = load ptr, ptr %994, align 8, !tbaa !224
  %996 = getelementptr inbounds ptr, ptr %995, i64 1
  %997 = load ptr, ptr %996, align 8, !tbaa !61
  %998 = load i32, ptr %20, align 4, !tbaa !40
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds ptr, ptr %997, i64 %999
  %1001 = load ptr, ptr %1000, align 8, !tbaa !63
  %1002 = load i32, ptr %19, align 4, !tbaa !40
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds ptr, ptr %1001, i64 %1003
  %1005 = load ptr, ptr %1004, align 8, !tbaa !65
  %1006 = getelementptr inbounds i16, ptr %1005, i64 1
  store i16 0, ptr %1006, align 2, !tbaa !67
  %1007 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1008 = getelementptr inbounds nuw %struct.storable_picture, ptr %1007, i32 0, i32 35
  %1009 = load ptr, ptr %1008, align 8, !tbaa !178
  %1010 = getelementptr inbounds ptr, ptr %1009, i64 1
  %1011 = load ptr, ptr %1010, align 8, !tbaa !43
  %1012 = load i32, ptr %20, align 4, !tbaa !40
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds ptr, ptr %1011, i64 %1013
  %1015 = load ptr, ptr %1014, align 8, !tbaa !44
  %1016 = load i32, ptr %19, align 4, !tbaa !40
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds i8, ptr %1015, i64 %1017
  store i8 -1, ptr %1018, align 1, !tbaa !45
  %1019 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1020 = getelementptr inbounds nuw %struct.storable_picture, ptr %1019, i32 0, i32 36
  %1021 = load ptr, ptr %1020, align 8, !tbaa !188
  %1022 = getelementptr inbounds ptr, ptr %1021, i64 1
  %1023 = load ptr, ptr %1022, align 8, !tbaa !189
  %1024 = load i32, ptr %20, align 4, !tbaa !40
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds ptr, ptr %1023, i64 %1025
  %1027 = load ptr, ptr %1026, align 8, !tbaa !151
  %1028 = load i32, ptr %19, align 4, !tbaa !40
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i64, ptr %1027, i64 %1029
  store i64 -1, ptr %1030, align 8, !tbaa !93
  br label %1031

1031:                                             ; preds = %978, %977
  br label %1032

1032:                                             ; preds = %1031
  %1033 = load i32, ptr %11, align 4, !tbaa !40
  %1034 = add nsw i32 %1033, 1
  store i32 %1034, ptr %11, align 4, !tbaa !40
  br label %394, !llvm.loop !350

1035:                                             ; preds = %394
  br label %1036

1036:                                             ; preds = %1035
  %1037 = load i32, ptr %12, align 4, !tbaa !40
  %1038 = add nsw i32 %1037, 1
  store i32 %1038, ptr %12, align 4, !tbaa !40
  br label %383, !llvm.loop !351

1039:                                             ; preds = %383
  br label %1040

1040:                                             ; preds = %1039
  store i32 0, ptr %23, align 4
  br label %1041

1041:                                             ; preds = %1040, %380, %240
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  %1042 = load i32, ptr %23, align 4
  switch i32 %1042, label %1044 [
    i32 0, label %1043
    i32 1, label %1043
  ]

1043:                                             ; preds = %1041, %1041
  ret void

1044:                                             ; preds = %1041
  unreachable
}

; Function Attrs: nounwind
define dso_local void @StoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store i32 %0, ptr %8, align 4, !tbaa !40
  store i32 %1, ptr %9, align 4, !tbaa !40
  store i32 %2, ptr %10, align 4, !tbaa !40
  store i32 %3, ptr %11, align 4, !tbaa !40
  store i32 %4, ptr %12, align 4, !tbaa !40
  store i32 %5, ptr %13, align 4, !tbaa !40
  store i32 %6, ptr %14, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #8
  %26 = load ptr, ptr @img, align 8, !tbaa !13
  %27 = getelementptr inbounds nuw %struct.ImageParameters, ptr %26, i32 0, i32 80
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  store ptr %28, ptr %21, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #8
  %29 = load ptr, ptr @img, align 8, !tbaa !13
  %30 = getelementptr inbounds nuw %struct.ImageParameters, ptr %29, i32 0, i32 79
  %31 = load ptr, ptr %30, align 8, !tbaa !223
  store ptr %31, ptr %22, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #8
  %32 = load i32, ptr %8, align 4, !tbaa !40
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %33
  %35 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %34, i64 0, i64 0
  %36 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %35, i64 0, i64 0
  store ptr %36, ptr %23, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #8
  %37 = load i32, ptr %8, align 4, !tbaa !40
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %38
  %40 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %39, i64 0, i64 1
  %41 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %40, i64 0, i64 0
  store ptr %41, ptr %24, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %25) #8
  store ptr null, ptr %25, align 8, !tbaa !65
  %42 = load i32, ptr %9, align 4, !tbaa !40
  %43 = and i32 %42, 1
  %44 = shl i32 %43, 1
  store i32 %44, ptr %17, align 4, !tbaa !40
  %45 = load i32, ptr %9, align 4, !tbaa !40
  %46 = ashr i32 %45, 1
  %47 = shl i32 %46, 1
  store i32 %47, ptr %18, align 4, !tbaa !40
  %48 = load i32, ptr %17, align 4, !tbaa !40
  %49 = add nsw i32 %48, 2
  store i32 %49, ptr %19, align 4, !tbaa !40
  %50 = load i32, ptr %18, align 4, !tbaa !40
  %51 = add nsw i32 %50, 2
  store i32 %51, ptr %20, align 4, !tbaa !40
  %52 = load i32, ptr %14, align 4, !tbaa !40
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %192, label %54

54:                                               ; preds = %7
  %55 = load i32, ptr %13, align 4, !tbaa !40
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %191

57:                                               ; preds = %54
  %58 = load i32, ptr %8, align 4, !tbaa !40
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %59
  %61 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %60, i64 0, i64 0
  %62 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %61, i64 0, i64 0
  store ptr %62, ptr %25, align 8, !tbaa !65
  %63 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %63, ptr %16, align 4, !tbaa !40
  br label %64

64:                                               ; preds = %187, %57
  %65 = load i32, ptr %16, align 4, !tbaa !40
  %66 = load i32, ptr %20, align 4, !tbaa !40
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %190

68:                                               ; preds = %64
  %69 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %69, ptr %15, align 4, !tbaa !40
  br label %70

70:                                               ; preds = %183, %68
  %71 = load i32, ptr %15, align 4, !tbaa !40
  %72 = load i32, ptr %19, align 4, !tbaa !40
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %186

74:                                               ; preds = %70
  %75 = load ptr, ptr %21, align 8, !tbaa !222
  %76 = load i32, ptr %16, align 4, !tbaa !40
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = load i32, ptr %15, align 4, !tbaa !40
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !59
  %84 = getelementptr inbounds ptr, ptr %83, i64 0
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = load i32, ptr %11, align 4, !tbaa !40
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !63
  %90 = getelementptr inbounds ptr, ptr %89, i64 4
  %91 = load ptr, ptr %90, align 8, !tbaa !65
  %92 = getelementptr inbounds i16, ptr %91, i64 0
  %93 = load i16, ptr %92, align 2, !tbaa !67
  %94 = load ptr, ptr %23, align 8, !tbaa !65
  %95 = load i32, ptr %16, align 4, !tbaa !40
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x [2 x i16]], ptr %94, i64 %96
  %98 = load i32, ptr %15, align 4, !tbaa !40
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x [2 x i16]], ptr %97, i64 0, i64 %99
  %101 = getelementptr inbounds [2 x i16], ptr %100, i64 0, i64 0
  store i16 %93, ptr %101, align 2, !tbaa !67
  %102 = load ptr, ptr %21, align 8, !tbaa !222
  %103 = load i32, ptr %16, align 4, !tbaa !40
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !57
  %107 = load i32, ptr %15, align 4, !tbaa !40
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !59
  %111 = getelementptr inbounds ptr, ptr %110, i64 0
  %112 = load ptr, ptr %111, align 8, !tbaa !61
  %113 = load i32, ptr %11, align 4, !tbaa !40
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !63
  %117 = getelementptr inbounds ptr, ptr %116, i64 4
  %118 = load ptr, ptr %117, align 8, !tbaa !65
  %119 = getelementptr inbounds i16, ptr %118, i64 1
  %120 = load i16, ptr %119, align 2, !tbaa !67
  %121 = load ptr, ptr %23, align 8, !tbaa !65
  %122 = load i32, ptr %16, align 4, !tbaa !40
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [4 x [2 x i16]], ptr %121, i64 %123
  %125 = load i32, ptr %15, align 4, !tbaa !40
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x [2 x i16]], ptr %124, i64 0, i64 %126
  %128 = getelementptr inbounds [2 x i16], ptr %127, i64 0, i64 1
  store i16 %120, ptr %128, align 2, !tbaa !67
  %129 = load ptr, ptr %22, align 8, !tbaa !222
  %130 = load i32, ptr %16, align 4, !tbaa !40
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %129, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !57
  %134 = load i32, ptr %15, align 4, !tbaa !40
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !59
  %138 = getelementptr inbounds ptr, ptr %137, i64 0
  %139 = load ptr, ptr %138, align 8, !tbaa !61
  %140 = load i32, ptr %11, align 4, !tbaa !40
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %139, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !63
  %144 = getelementptr inbounds ptr, ptr %143, i64 4
  %145 = load ptr, ptr %144, align 8, !tbaa !65
  %146 = getelementptr inbounds i16, ptr %145, i64 0
  %147 = load i16, ptr %146, align 2, !tbaa !67
  %148 = load ptr, ptr %25, align 8, !tbaa !65
  %149 = load i32, ptr %16, align 4, !tbaa !40
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [4 x [2 x i16]], ptr %148, i64 %150
  %152 = load i32, ptr %15, align 4, !tbaa !40
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x [2 x i16]], ptr %151, i64 0, i64 %153
  %155 = getelementptr inbounds [2 x i16], ptr %154, i64 0, i64 0
  store i16 %147, ptr %155, align 2, !tbaa !67
  %156 = load ptr, ptr %22, align 8, !tbaa !222
  %157 = load i32, ptr %16, align 4, !tbaa !40
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !57
  %161 = load i32, ptr %15, align 4, !tbaa !40
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !59
  %165 = getelementptr inbounds ptr, ptr %164, i64 0
  %166 = load ptr, ptr %165, align 8, !tbaa !61
  %167 = load i32, ptr %11, align 4, !tbaa !40
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !63
  %171 = getelementptr inbounds ptr, ptr %170, i64 4
  %172 = load ptr, ptr %171, align 8, !tbaa !65
  %173 = getelementptr inbounds i16, ptr %172, i64 1
  %174 = load i16, ptr %173, align 2, !tbaa !67
  %175 = load ptr, ptr %25, align 8, !tbaa !65
  %176 = load i32, ptr %16, align 4, !tbaa !40
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [4 x [2 x i16]], ptr %175, i64 %177
  %179 = load i32, ptr %15, align 4, !tbaa !40
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x [2 x i16]], ptr %178, i64 0, i64 %180
  %182 = getelementptr inbounds [2 x i16], ptr %181, i64 0, i64 1
  store i16 %174, ptr %182, align 2, !tbaa !67
  br label %183

183:                                              ; preds = %74
  %184 = load i32, ptr %15, align 4, !tbaa !40
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %15, align 4, !tbaa !40
  br label %70, !llvm.loop !352

186:                                              ; preds = %70
  br label %187

187:                                              ; preds = %186
  %188 = load i32, ptr %16, align 4, !tbaa !40
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %16, align 4, !tbaa !40
  br label %64, !llvm.loop !353

190:                                              ; preds = %64
  br label %191

191:                                              ; preds = %190, %54
  br label %772

192:                                              ; preds = %7
  %193 = load i32, ptr %13, align 4, !tbaa !40
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %337

195:                                              ; preds = %192
  %196 = load i32, ptr %8, align 4, !tbaa !40
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %197
  %199 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %198, i64 0, i64 0
  %200 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %199, i64 0, i64 0
  store ptr %200, ptr %25, align 8, !tbaa !65
  %201 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %201, ptr %16, align 4, !tbaa !40
  br label %202

202:                                              ; preds = %333, %195
  %203 = load i32, ptr %16, align 4, !tbaa !40
  %204 = load i32, ptr %20, align 4, !tbaa !40
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %336

206:                                              ; preds = %202
  %207 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %207, ptr %15, align 4, !tbaa !40
  br label %208

208:                                              ; preds = %329, %206
  %209 = load i32, ptr %15, align 4, !tbaa !40
  %210 = load i32, ptr %19, align 4, !tbaa !40
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %332

212:                                              ; preds = %208
  %213 = load ptr, ptr %21, align 8, !tbaa !222
  %214 = load i32, ptr %16, align 4, !tbaa !40
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds ptr, ptr %213, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !57
  %218 = load i32, ptr %15, align 4, !tbaa !40
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %217, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !59
  %222 = getelementptr inbounds ptr, ptr %221, i64 0
  %223 = load ptr, ptr %222, align 8, !tbaa !61
  %224 = load i32, ptr %11, align 4, !tbaa !40
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds ptr, ptr %223, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !63
  %228 = load i32, ptr %10, align 4, !tbaa !40
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds ptr, ptr %227, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !65
  %232 = getelementptr inbounds i16, ptr %231, i64 0
  %233 = load i16, ptr %232, align 2, !tbaa !67
  %234 = load ptr, ptr %23, align 8, !tbaa !65
  %235 = load i32, ptr %16, align 4, !tbaa !40
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x [2 x i16]], ptr %234, i64 %236
  %238 = load i32, ptr %15, align 4, !tbaa !40
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [4 x [2 x i16]], ptr %237, i64 0, i64 %239
  %241 = getelementptr inbounds [2 x i16], ptr %240, i64 0, i64 0
  store i16 %233, ptr %241, align 2, !tbaa !67
  %242 = load ptr, ptr %21, align 8, !tbaa !222
  %243 = load i32, ptr %16, align 4, !tbaa !40
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %242, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !57
  %247 = load i32, ptr %15, align 4, !tbaa !40
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds ptr, ptr %246, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !59
  %251 = getelementptr inbounds ptr, ptr %250, i64 0
  %252 = load ptr, ptr %251, align 8, !tbaa !61
  %253 = load i32, ptr %11, align 4, !tbaa !40
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %252, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !63
  %257 = load i32, ptr %10, align 4, !tbaa !40
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds ptr, ptr %256, i64 %258
  %260 = load ptr, ptr %259, align 8, !tbaa !65
  %261 = getelementptr inbounds i16, ptr %260, i64 1
  %262 = load i16, ptr %261, align 2, !tbaa !67
  %263 = load ptr, ptr %23, align 8, !tbaa !65
  %264 = load i32, ptr %16, align 4, !tbaa !40
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [4 x [2 x i16]], ptr %263, i64 %265
  %267 = load i32, ptr %15, align 4, !tbaa !40
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x [2 x i16]], ptr %266, i64 0, i64 %268
  %270 = getelementptr inbounds [2 x i16], ptr %269, i64 0, i64 1
  store i16 %262, ptr %270, align 2, !tbaa !67
  %271 = load ptr, ptr %22, align 8, !tbaa !222
  %272 = load i32, ptr %16, align 4, !tbaa !40
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds ptr, ptr %271, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !57
  %276 = load i32, ptr %15, align 4, !tbaa !40
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds ptr, ptr %275, i64 %277
  %279 = load ptr, ptr %278, align 8, !tbaa !59
  %280 = getelementptr inbounds ptr, ptr %279, i64 0
  %281 = load ptr, ptr %280, align 8, !tbaa !61
  %282 = load i32, ptr %11, align 4, !tbaa !40
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds ptr, ptr %281, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !63
  %286 = load i32, ptr %10, align 4, !tbaa !40
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds ptr, ptr %285, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !65
  %290 = getelementptr inbounds i16, ptr %289, i64 0
  %291 = load i16, ptr %290, align 2, !tbaa !67
  %292 = load ptr, ptr %25, align 8, !tbaa !65
  %293 = load i32, ptr %16, align 4, !tbaa !40
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [4 x [2 x i16]], ptr %292, i64 %294
  %296 = load i32, ptr %15, align 4, !tbaa !40
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [4 x [2 x i16]], ptr %295, i64 0, i64 %297
  %299 = getelementptr inbounds [2 x i16], ptr %298, i64 0, i64 0
  store i16 %291, ptr %299, align 2, !tbaa !67
  %300 = load ptr, ptr %22, align 8, !tbaa !222
  %301 = load i32, ptr %16, align 4, !tbaa !40
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %300, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !57
  %305 = load i32, ptr %15, align 4, !tbaa !40
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds ptr, ptr %304, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !59
  %309 = getelementptr inbounds ptr, ptr %308, i64 0
  %310 = load ptr, ptr %309, align 8, !tbaa !61
  %311 = load i32, ptr %11, align 4, !tbaa !40
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %310, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !63
  %315 = load i32, ptr %10, align 4, !tbaa !40
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds ptr, ptr %314, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !65
  %319 = getelementptr inbounds i16, ptr %318, i64 1
  %320 = load i16, ptr %319, align 2, !tbaa !67
  %321 = load ptr, ptr %25, align 8, !tbaa !65
  %322 = load i32, ptr %16, align 4, !tbaa !40
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [4 x [2 x i16]], ptr %321, i64 %323
  %325 = load i32, ptr %15, align 4, !tbaa !40
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [4 x [2 x i16]], ptr %324, i64 0, i64 %326
  %328 = getelementptr inbounds [2 x i16], ptr %327, i64 0, i64 1
  store i16 %320, ptr %328, align 2, !tbaa !67
  br label %329

329:                                              ; preds = %212
  %330 = load i32, ptr %15, align 4, !tbaa !40
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr %15, align 4, !tbaa !40
  br label %208, !llvm.loop !354

332:                                              ; preds = %208
  br label %333

333:                                              ; preds = %332
  %334 = load i32, ptr %16, align 4, !tbaa !40
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr %16, align 4, !tbaa !40
  br label %202, !llvm.loop !355

336:                                              ; preds = %202
  br label %771

337:                                              ; preds = %192
  %338 = load i32, ptr %13, align 4, !tbaa !40
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %482

340:                                              ; preds = %337
  %341 = load i32, ptr %8, align 4, !tbaa !40
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %342
  %344 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %343, i64 0, i64 1
  %345 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %344, i64 0, i64 0
  store ptr %345, ptr %25, align 8, !tbaa !65
  %346 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %346, ptr %16, align 4, !tbaa !40
  br label %347

347:                                              ; preds = %478, %340
  %348 = load i32, ptr %16, align 4, !tbaa !40
  %349 = load i32, ptr %20, align 4, !tbaa !40
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %481

351:                                              ; preds = %347
  %352 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %352, ptr %15, align 4, !tbaa !40
  br label %353

353:                                              ; preds = %474, %351
  %354 = load i32, ptr %15, align 4, !tbaa !40
  %355 = load i32, ptr %19, align 4, !tbaa !40
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %477

357:                                              ; preds = %353
  %358 = load ptr, ptr %21, align 8, !tbaa !222
  %359 = load i32, ptr %16, align 4, !tbaa !40
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %358, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !57
  %363 = load i32, ptr %15, align 4, !tbaa !40
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds ptr, ptr %362, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !59
  %367 = getelementptr inbounds ptr, ptr %366, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !61
  %369 = load i32, ptr %12, align 4, !tbaa !40
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds ptr, ptr %368, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !63
  %373 = load i32, ptr %10, align 4, !tbaa !40
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds ptr, ptr %372, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !65
  %377 = getelementptr inbounds i16, ptr %376, i64 0
  %378 = load i16, ptr %377, align 2, !tbaa !67
  %379 = load ptr, ptr %24, align 8, !tbaa !65
  %380 = load i32, ptr %16, align 4, !tbaa !40
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [4 x [2 x i16]], ptr %379, i64 %381
  %383 = load i32, ptr %15, align 4, !tbaa !40
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x [2 x i16]], ptr %382, i64 0, i64 %384
  %386 = getelementptr inbounds [2 x i16], ptr %385, i64 0, i64 0
  store i16 %378, ptr %386, align 2, !tbaa !67
  %387 = load ptr, ptr %21, align 8, !tbaa !222
  %388 = load i32, ptr %16, align 4, !tbaa !40
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds ptr, ptr %387, i64 %389
  %391 = load ptr, ptr %390, align 8, !tbaa !57
  %392 = load i32, ptr %15, align 4, !tbaa !40
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds ptr, ptr %391, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !59
  %396 = getelementptr inbounds ptr, ptr %395, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !61
  %398 = load i32, ptr %12, align 4, !tbaa !40
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds ptr, ptr %397, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !63
  %402 = load i32, ptr %10, align 4, !tbaa !40
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !65
  %406 = getelementptr inbounds i16, ptr %405, i64 1
  %407 = load i16, ptr %406, align 2, !tbaa !67
  %408 = load ptr, ptr %24, align 8, !tbaa !65
  %409 = load i32, ptr %16, align 4, !tbaa !40
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [4 x [2 x i16]], ptr %408, i64 %410
  %412 = load i32, ptr %15, align 4, !tbaa !40
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x [2 x i16]], ptr %411, i64 0, i64 %413
  %415 = getelementptr inbounds [2 x i16], ptr %414, i64 0, i64 1
  store i16 %407, ptr %415, align 2, !tbaa !67
  %416 = load ptr, ptr %22, align 8, !tbaa !222
  %417 = load i32, ptr %16, align 4, !tbaa !40
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds ptr, ptr %416, i64 %418
  %420 = load ptr, ptr %419, align 8, !tbaa !57
  %421 = load i32, ptr %15, align 4, !tbaa !40
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds ptr, ptr %420, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !59
  %425 = getelementptr inbounds ptr, ptr %424, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !61
  %427 = load i32, ptr %12, align 4, !tbaa !40
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds ptr, ptr %426, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !63
  %431 = load i32, ptr %10, align 4, !tbaa !40
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds ptr, ptr %430, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !65
  %435 = getelementptr inbounds i16, ptr %434, i64 0
  %436 = load i16, ptr %435, align 2, !tbaa !67
  %437 = load ptr, ptr %25, align 8, !tbaa !65
  %438 = load i32, ptr %16, align 4, !tbaa !40
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [4 x [2 x i16]], ptr %437, i64 %439
  %441 = load i32, ptr %15, align 4, !tbaa !40
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [4 x [2 x i16]], ptr %440, i64 0, i64 %442
  %444 = getelementptr inbounds [2 x i16], ptr %443, i64 0, i64 0
  store i16 %436, ptr %444, align 2, !tbaa !67
  %445 = load ptr, ptr %22, align 8, !tbaa !222
  %446 = load i32, ptr %16, align 4, !tbaa !40
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds ptr, ptr %445, i64 %447
  %449 = load ptr, ptr %448, align 8, !tbaa !57
  %450 = load i32, ptr %15, align 4, !tbaa !40
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %449, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !59
  %454 = getelementptr inbounds ptr, ptr %453, i64 1
  %455 = load ptr, ptr %454, align 8, !tbaa !61
  %456 = load i32, ptr %12, align 4, !tbaa !40
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds ptr, ptr %455, i64 %457
  %459 = load ptr, ptr %458, align 8, !tbaa !63
  %460 = load i32, ptr %10, align 4, !tbaa !40
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds ptr, ptr %459, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !65
  %464 = getelementptr inbounds i16, ptr %463, i64 1
  %465 = load i16, ptr %464, align 2, !tbaa !67
  %466 = load ptr, ptr %25, align 8, !tbaa !65
  %467 = load i32, ptr %16, align 4, !tbaa !40
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [4 x [2 x i16]], ptr %466, i64 %468
  %470 = load i32, ptr %15, align 4, !tbaa !40
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [4 x [2 x i16]], ptr %469, i64 0, i64 %471
  %473 = getelementptr inbounds [2 x i16], ptr %472, i64 0, i64 1
  store i16 %465, ptr %473, align 2, !tbaa !67
  br label %474

474:                                              ; preds = %357
  %475 = load i32, ptr %15, align 4, !tbaa !40
  %476 = add nsw i32 %475, 1
  store i32 %476, ptr %15, align 4, !tbaa !40
  br label %353, !llvm.loop !356

477:                                              ; preds = %353
  br label %478

478:                                              ; preds = %477
  %479 = load i32, ptr %16, align 4, !tbaa !40
  %480 = add nsw i32 %479, 1
  store i32 %480, ptr %16, align 4, !tbaa !40
  br label %347, !llvm.loop !357

481:                                              ; preds = %347
  br label %770

482:                                              ; preds = %337
  %483 = load i32, ptr %13, align 4, !tbaa !40
  %484 = icmp eq i32 %483, 2
  br i1 %484, label %485, label %768

485:                                              ; preds = %482
  %486 = load i32, ptr %8, align 4, !tbaa !40
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %487
  %489 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %488, i64 0, i64 0
  %490 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %489, i64 0, i64 0
  store ptr %490, ptr %25, align 8, !tbaa !65
  %491 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %491, ptr %16, align 4, !tbaa !40
  br label %492

492:                                              ; preds = %623, %485
  %493 = load i32, ptr %16, align 4, !tbaa !40
  %494 = load i32, ptr %20, align 4, !tbaa !40
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %626

496:                                              ; preds = %492
  %497 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %497, ptr %15, align 4, !tbaa !40
  br label %498

498:                                              ; preds = %619, %496
  %499 = load i32, ptr %15, align 4, !tbaa !40
  %500 = load i32, ptr %19, align 4, !tbaa !40
  %501 = icmp slt i32 %499, %500
  br i1 %501, label %502, label %622

502:                                              ; preds = %498
  %503 = load ptr, ptr %21, align 8, !tbaa !222
  %504 = load i32, ptr %16, align 4, !tbaa !40
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds ptr, ptr %503, i64 %505
  %507 = load ptr, ptr %506, align 8, !tbaa !57
  %508 = load i32, ptr %15, align 4, !tbaa !40
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds ptr, ptr %507, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !59
  %512 = getelementptr inbounds ptr, ptr %511, i64 0
  %513 = load ptr, ptr %512, align 8, !tbaa !61
  %514 = load i32, ptr %11, align 4, !tbaa !40
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds ptr, ptr %513, i64 %515
  %517 = load ptr, ptr %516, align 8, !tbaa !63
  %518 = load i32, ptr %10, align 4, !tbaa !40
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds ptr, ptr %517, i64 %519
  %521 = load ptr, ptr %520, align 8, !tbaa !65
  %522 = getelementptr inbounds i16, ptr %521, i64 0
  %523 = load i16, ptr %522, align 2, !tbaa !67
  %524 = load ptr, ptr %23, align 8, !tbaa !65
  %525 = load i32, ptr %16, align 4, !tbaa !40
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [4 x [2 x i16]], ptr %524, i64 %526
  %528 = load i32, ptr %15, align 4, !tbaa !40
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [4 x [2 x i16]], ptr %527, i64 0, i64 %529
  %531 = getelementptr inbounds [2 x i16], ptr %530, i64 0, i64 0
  store i16 %523, ptr %531, align 2, !tbaa !67
  %532 = load ptr, ptr %21, align 8, !tbaa !222
  %533 = load i32, ptr %16, align 4, !tbaa !40
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds ptr, ptr %532, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !57
  %537 = load i32, ptr %15, align 4, !tbaa !40
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds ptr, ptr %536, i64 %538
  %540 = load ptr, ptr %539, align 8, !tbaa !59
  %541 = getelementptr inbounds ptr, ptr %540, i64 0
  %542 = load ptr, ptr %541, align 8, !tbaa !61
  %543 = load i32, ptr %11, align 4, !tbaa !40
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds ptr, ptr %542, i64 %544
  %546 = load ptr, ptr %545, align 8, !tbaa !63
  %547 = load i32, ptr %10, align 4, !tbaa !40
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds ptr, ptr %546, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !65
  %551 = getelementptr inbounds i16, ptr %550, i64 1
  %552 = load i16, ptr %551, align 2, !tbaa !67
  %553 = load ptr, ptr %23, align 8, !tbaa !65
  %554 = load i32, ptr %16, align 4, !tbaa !40
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [4 x [2 x i16]], ptr %553, i64 %555
  %557 = load i32, ptr %15, align 4, !tbaa !40
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds [4 x [2 x i16]], ptr %556, i64 0, i64 %558
  %560 = getelementptr inbounds [2 x i16], ptr %559, i64 0, i64 1
  store i16 %552, ptr %560, align 2, !tbaa !67
  %561 = load ptr, ptr %22, align 8, !tbaa !222
  %562 = load i32, ptr %16, align 4, !tbaa !40
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds ptr, ptr %561, i64 %563
  %565 = load ptr, ptr %564, align 8, !tbaa !57
  %566 = load i32, ptr %15, align 4, !tbaa !40
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds ptr, ptr %565, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !59
  %570 = getelementptr inbounds ptr, ptr %569, i64 0
  %571 = load ptr, ptr %570, align 8, !tbaa !61
  %572 = load i32, ptr %11, align 4, !tbaa !40
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds ptr, ptr %571, i64 %573
  %575 = load ptr, ptr %574, align 8, !tbaa !63
  %576 = load i32, ptr %10, align 4, !tbaa !40
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds ptr, ptr %575, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !65
  %580 = getelementptr inbounds i16, ptr %579, i64 0
  %581 = load i16, ptr %580, align 2, !tbaa !67
  %582 = load ptr, ptr %25, align 8, !tbaa !65
  %583 = load i32, ptr %16, align 4, !tbaa !40
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [4 x [2 x i16]], ptr %582, i64 %584
  %586 = load i32, ptr %15, align 4, !tbaa !40
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [4 x [2 x i16]], ptr %585, i64 0, i64 %587
  %589 = getelementptr inbounds [2 x i16], ptr %588, i64 0, i64 0
  store i16 %581, ptr %589, align 2, !tbaa !67
  %590 = load ptr, ptr %22, align 8, !tbaa !222
  %591 = load i32, ptr %16, align 4, !tbaa !40
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds ptr, ptr %590, i64 %592
  %594 = load ptr, ptr %593, align 8, !tbaa !57
  %595 = load i32, ptr %15, align 4, !tbaa !40
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds ptr, ptr %594, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !59
  %599 = getelementptr inbounds ptr, ptr %598, i64 0
  %600 = load ptr, ptr %599, align 8, !tbaa !61
  %601 = load i32, ptr %11, align 4, !tbaa !40
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds ptr, ptr %600, i64 %602
  %604 = load ptr, ptr %603, align 8, !tbaa !63
  %605 = load i32, ptr %10, align 4, !tbaa !40
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds ptr, ptr %604, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !65
  %609 = getelementptr inbounds i16, ptr %608, i64 1
  %610 = load i16, ptr %609, align 2, !tbaa !67
  %611 = load ptr, ptr %25, align 8, !tbaa !65
  %612 = load i32, ptr %16, align 4, !tbaa !40
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds [4 x [2 x i16]], ptr %611, i64 %613
  %615 = load i32, ptr %15, align 4, !tbaa !40
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds [4 x [2 x i16]], ptr %614, i64 0, i64 %616
  %618 = getelementptr inbounds [2 x i16], ptr %617, i64 0, i64 1
  store i16 %610, ptr %618, align 2, !tbaa !67
  br label %619

619:                                              ; preds = %502
  %620 = load i32, ptr %15, align 4, !tbaa !40
  %621 = add nsw i32 %620, 1
  store i32 %621, ptr %15, align 4, !tbaa !40
  br label %498, !llvm.loop !358

622:                                              ; preds = %498
  br label %623

623:                                              ; preds = %622
  %624 = load i32, ptr %16, align 4, !tbaa !40
  %625 = add nsw i32 %624, 1
  store i32 %625, ptr %16, align 4, !tbaa !40
  br label %492, !llvm.loop !359

626:                                              ; preds = %492
  %627 = load i32, ptr %8, align 4, !tbaa !40
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %628
  %630 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %629, i64 0, i64 1
  %631 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %630, i64 0, i64 0
  store ptr %631, ptr %25, align 8, !tbaa !65
  %632 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %632, ptr %16, align 4, !tbaa !40
  br label %633

633:                                              ; preds = %764, %626
  %634 = load i32, ptr %16, align 4, !tbaa !40
  %635 = load i32, ptr %20, align 4, !tbaa !40
  %636 = icmp slt i32 %634, %635
  br i1 %636, label %637, label %767

637:                                              ; preds = %633
  %638 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %638, ptr %15, align 4, !tbaa !40
  br label %639

639:                                              ; preds = %760, %637
  %640 = load i32, ptr %15, align 4, !tbaa !40
  %641 = load i32, ptr %19, align 4, !tbaa !40
  %642 = icmp slt i32 %640, %641
  br i1 %642, label %643, label %763

643:                                              ; preds = %639
  %644 = load ptr, ptr %21, align 8, !tbaa !222
  %645 = load i32, ptr %16, align 4, !tbaa !40
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds ptr, ptr %644, i64 %646
  %648 = load ptr, ptr %647, align 8, !tbaa !57
  %649 = load i32, ptr %15, align 4, !tbaa !40
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds ptr, ptr %648, i64 %650
  %652 = load ptr, ptr %651, align 8, !tbaa !59
  %653 = getelementptr inbounds ptr, ptr %652, i64 1
  %654 = load ptr, ptr %653, align 8, !tbaa !61
  %655 = load i32, ptr %12, align 4, !tbaa !40
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds ptr, ptr %654, i64 %656
  %658 = load ptr, ptr %657, align 8, !tbaa !63
  %659 = load i32, ptr %10, align 4, !tbaa !40
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds ptr, ptr %658, i64 %660
  %662 = load ptr, ptr %661, align 8, !tbaa !65
  %663 = getelementptr inbounds i16, ptr %662, i64 0
  %664 = load i16, ptr %663, align 2, !tbaa !67
  %665 = load ptr, ptr %24, align 8, !tbaa !65
  %666 = load i32, ptr %16, align 4, !tbaa !40
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [4 x [2 x i16]], ptr %665, i64 %667
  %669 = load i32, ptr %15, align 4, !tbaa !40
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [4 x [2 x i16]], ptr %668, i64 0, i64 %670
  %672 = getelementptr inbounds [2 x i16], ptr %671, i64 0, i64 0
  store i16 %664, ptr %672, align 2, !tbaa !67
  %673 = load ptr, ptr %21, align 8, !tbaa !222
  %674 = load i32, ptr %16, align 4, !tbaa !40
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds ptr, ptr %673, i64 %675
  %677 = load ptr, ptr %676, align 8, !tbaa !57
  %678 = load i32, ptr %15, align 4, !tbaa !40
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds ptr, ptr %677, i64 %679
  %681 = load ptr, ptr %680, align 8, !tbaa !59
  %682 = getelementptr inbounds ptr, ptr %681, i64 1
  %683 = load ptr, ptr %682, align 8, !tbaa !61
  %684 = load i32, ptr %12, align 4, !tbaa !40
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds ptr, ptr %683, i64 %685
  %687 = load ptr, ptr %686, align 8, !tbaa !63
  %688 = load i32, ptr %10, align 4, !tbaa !40
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds ptr, ptr %687, i64 %689
  %691 = load ptr, ptr %690, align 8, !tbaa !65
  %692 = getelementptr inbounds i16, ptr %691, i64 1
  %693 = load i16, ptr %692, align 2, !tbaa !67
  %694 = load ptr, ptr %24, align 8, !tbaa !65
  %695 = load i32, ptr %16, align 4, !tbaa !40
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [4 x [2 x i16]], ptr %694, i64 %696
  %698 = load i32, ptr %15, align 4, !tbaa !40
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [4 x [2 x i16]], ptr %697, i64 0, i64 %699
  %701 = getelementptr inbounds [2 x i16], ptr %700, i64 0, i64 1
  store i16 %693, ptr %701, align 2, !tbaa !67
  %702 = load ptr, ptr %22, align 8, !tbaa !222
  %703 = load i32, ptr %16, align 4, !tbaa !40
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds ptr, ptr %702, i64 %704
  %706 = load ptr, ptr %705, align 8, !tbaa !57
  %707 = load i32, ptr %15, align 4, !tbaa !40
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds ptr, ptr %706, i64 %708
  %710 = load ptr, ptr %709, align 8, !tbaa !59
  %711 = getelementptr inbounds ptr, ptr %710, i64 1
  %712 = load ptr, ptr %711, align 8, !tbaa !61
  %713 = load i32, ptr %12, align 4, !tbaa !40
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds ptr, ptr %712, i64 %714
  %716 = load ptr, ptr %715, align 8, !tbaa !63
  %717 = load i32, ptr %10, align 4, !tbaa !40
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds ptr, ptr %716, i64 %718
  %720 = load ptr, ptr %719, align 8, !tbaa !65
  %721 = getelementptr inbounds i16, ptr %720, i64 0
  %722 = load i16, ptr %721, align 2, !tbaa !67
  %723 = load ptr, ptr %25, align 8, !tbaa !65
  %724 = load i32, ptr %16, align 4, !tbaa !40
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [4 x [2 x i16]], ptr %723, i64 %725
  %727 = load i32, ptr %15, align 4, !tbaa !40
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds [4 x [2 x i16]], ptr %726, i64 0, i64 %728
  %730 = getelementptr inbounds [2 x i16], ptr %729, i64 0, i64 0
  store i16 %722, ptr %730, align 2, !tbaa !67
  %731 = load ptr, ptr %22, align 8, !tbaa !222
  %732 = load i32, ptr %16, align 4, !tbaa !40
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds ptr, ptr %731, i64 %733
  %735 = load ptr, ptr %734, align 8, !tbaa !57
  %736 = load i32, ptr %15, align 4, !tbaa !40
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds ptr, ptr %735, i64 %737
  %739 = load ptr, ptr %738, align 8, !tbaa !59
  %740 = getelementptr inbounds ptr, ptr %739, i64 1
  %741 = load ptr, ptr %740, align 8, !tbaa !61
  %742 = load i32, ptr %12, align 4, !tbaa !40
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds ptr, ptr %741, i64 %743
  %745 = load ptr, ptr %744, align 8, !tbaa !63
  %746 = load i32, ptr %10, align 4, !tbaa !40
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds ptr, ptr %745, i64 %747
  %749 = load ptr, ptr %748, align 8, !tbaa !65
  %750 = getelementptr inbounds i16, ptr %749, i64 1
  %751 = load i16, ptr %750, align 2, !tbaa !67
  %752 = load ptr, ptr %25, align 8, !tbaa !65
  %753 = load i32, ptr %16, align 4, !tbaa !40
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [4 x [2 x i16]], ptr %752, i64 %754
  %756 = load i32, ptr %15, align 4, !tbaa !40
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [4 x [2 x i16]], ptr %755, i64 0, i64 %757
  %759 = getelementptr inbounds [2 x i16], ptr %758, i64 0, i64 1
  store i16 %751, ptr %759, align 2, !tbaa !67
  br label %760

760:                                              ; preds = %643
  %761 = load i32, ptr %15, align 4, !tbaa !40
  %762 = add nsw i32 %761, 1
  store i32 %762, ptr %15, align 4, !tbaa !40
  br label %639, !llvm.loop !360

763:                                              ; preds = %639
  br label %764

764:                                              ; preds = %763
  %765 = load i32, ptr %16, align 4, !tbaa !40
  %766 = add nsw i32 %765, 1
  store i32 %766, ptr %16, align 4, !tbaa !40
  br label %633, !llvm.loop !361

767:                                              ; preds = %633
  br label %769

768:                                              ; preds = %482
  call void @error(ptr noundef @.str.1, i32 noundef signext 255)
  br label %769

769:                                              ; preds = %768, %767
  br label %770

770:                                              ; preds = %769, %481
  br label %771

771:                                              ; preds = %770, %336
  br label %772

772:                                              ; preds = %771, %191
  call void @llvm.lifetime.end.p0(i64 8, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @RestoreMVBlock8x8(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  store i32 %0, ptr %5, align 4, !tbaa !40
  store i32 %1, ptr %6, align 4, !tbaa !40
  store ptr %2, ptr %7, align 8, !tbaa !13
  store i32 %3, ptr %8, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #8
  %24 = load ptr, ptr @img, align 8, !tbaa !13
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 80
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  store ptr %26, ptr %15, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #8
  %27 = load ptr, ptr @img, align 8, !tbaa !13
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 79
  %29 = load ptr, ptr %28, align 8, !tbaa !223
  store ptr %29, ptr %16, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #8
  %30 = load i32, ptr %5, align 4, !tbaa !40
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %31
  %33 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %32, i64 0, i64 0
  %34 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %33, i64 0, i64 0
  store ptr %34, ptr %17, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #8
  %35 = load i32, ptr %5, align 4, !tbaa !40
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %36
  %38 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %37, i64 0, i64 1
  %39 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %38, i64 0, i64 0
  store ptr %39, ptr %18, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #8
  store ptr null, ptr %19, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 2, ptr %20) #8
  %40 = getelementptr inbounds nuw %struct.RD_8x8DATA, ptr %2, i32 0, i32 6
  %41 = load i32, ptr %6, align 4, !tbaa !40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8], ptr %40, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !45
  %45 = sext i8 %44 to i16
  store i16 %45, ptr %20, align 2, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 2, ptr %21) #8
  %46 = getelementptr inbounds nuw %struct.RD_8x8DATA, ptr %2, i32 0, i32 5
  %47 = load i32, ptr %6, align 4, !tbaa !40
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i16], ptr %46, i64 0, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !67
  store i16 %50, ptr %21, align 2, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 2, ptr %22) #8
  %51 = getelementptr inbounds nuw %struct.RD_8x8DATA, ptr %2, i32 0, i32 7
  %52 = load i32, ptr %6, align 4, !tbaa !40
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i8], ptr %51, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !45
  %56 = sext i8 %55 to i16
  store i16 %56, ptr %22, align 2, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 2, ptr %23) #8
  %57 = getelementptr inbounds nuw %struct.RD_8x8DATA, ptr %2, i32 0, i32 8
  %58 = load i32, ptr %6, align 4, !tbaa !40
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], ptr %57, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !45
  %62 = sext i8 %61 to i16
  store i16 %62, ptr %23, align 2, !tbaa !67
  %63 = load i32, ptr %6, align 4, !tbaa !40
  %64 = and i32 %63, 1
  %65 = shl i32 %64, 1
  store i32 %65, ptr %11, align 4, !tbaa !40
  %66 = load i32, ptr %6, align 4, !tbaa !40
  %67 = ashr i32 %66, 1
  %68 = shl i32 %67, 1
  store i32 %68, ptr %12, align 4, !tbaa !40
  %69 = load i32, ptr %11, align 4, !tbaa !40
  %70 = add nsw i32 %69, 2
  store i32 %70, ptr %13, align 4, !tbaa !40
  %71 = load i32, ptr %12, align 4, !tbaa !40
  %72 = add nsw i32 %71, 2
  store i32 %72, ptr %14, align 4, !tbaa !40
  %73 = load i32, ptr %8, align 4, !tbaa !40
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %214, label %75

75:                                               ; preds = %4
  %76 = load i16, ptr %20, align 2, !tbaa !67
  %77 = sext i16 %76 to i32
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %213

79:                                               ; preds = %75
  %80 = load i32, ptr %5, align 4, !tbaa !40
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %81
  %83 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %82, i64 0, i64 0
  %84 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %83, i64 0, i64 0
  store ptr %84, ptr %19, align 8, !tbaa !65
  %85 = load i32, ptr %12, align 4, !tbaa !40
  store i32 %85, ptr %10, align 4, !tbaa !40
  br label %86

86:                                               ; preds = %209, %79
  %87 = load i32, ptr %10, align 4, !tbaa !40
  %88 = load i32, ptr %14, align 4, !tbaa !40
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %212

90:                                               ; preds = %86
  %91 = load i32, ptr %11, align 4, !tbaa !40
  store i32 %91, ptr %9, align 4, !tbaa !40
  br label %92

92:                                               ; preds = %205, %90
  %93 = load i32, ptr %9, align 4, !tbaa !40
  %94 = load i32, ptr %13, align 4, !tbaa !40
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %208

96:                                               ; preds = %92
  %97 = load ptr, ptr %17, align 8, !tbaa !65
  %98 = load i32, ptr %10, align 4, !tbaa !40
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x [2 x i16]], ptr %97, i64 %99
  %101 = load i32, ptr %9, align 4, !tbaa !40
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x [2 x i16]], ptr %100, i64 0, i64 %102
  %104 = getelementptr inbounds [2 x i16], ptr %103, i64 0, i64 0
  %105 = load i16, ptr %104, align 2, !tbaa !67
  %106 = load ptr, ptr %15, align 8, !tbaa !222
  %107 = load i32, ptr %10, align 4, !tbaa !40
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !57
  %111 = load i32, ptr %9, align 4, !tbaa !40
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %110, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !59
  %115 = getelementptr inbounds ptr, ptr %114, i64 0
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  %117 = load i16, ptr %22, align 2, !tbaa !67
  %118 = sext i16 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !63
  %121 = getelementptr inbounds ptr, ptr %120, i64 4
  %122 = load ptr, ptr %121, align 8, !tbaa !65
  %123 = getelementptr inbounds i16, ptr %122, i64 0
  store i16 %105, ptr %123, align 2, !tbaa !67
  %124 = load ptr, ptr %17, align 8, !tbaa !65
  %125 = load i32, ptr %10, align 4, !tbaa !40
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [4 x [2 x i16]], ptr %124, i64 %126
  %128 = load i32, ptr %9, align 4, !tbaa !40
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x [2 x i16]], ptr %127, i64 0, i64 %129
  %131 = getelementptr inbounds [2 x i16], ptr %130, i64 0, i64 1
  %132 = load i16, ptr %131, align 2, !tbaa !67
  %133 = load ptr, ptr %15, align 8, !tbaa !222
  %134 = load i32, ptr %10, align 4, !tbaa !40
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %133, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  %138 = load i32, ptr %9, align 4, !tbaa !40
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !59
  %142 = getelementptr inbounds ptr, ptr %141, i64 0
  %143 = load ptr, ptr %142, align 8, !tbaa !61
  %144 = load i16, ptr %22, align 2, !tbaa !67
  %145 = sext i16 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %143, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !63
  %148 = getelementptr inbounds ptr, ptr %147, i64 4
  %149 = load ptr, ptr %148, align 8, !tbaa !65
  %150 = getelementptr inbounds i16, ptr %149, i64 1
  store i16 %132, ptr %150, align 2, !tbaa !67
  %151 = load ptr, ptr %19, align 8, !tbaa !65
  %152 = load i32, ptr %10, align 4, !tbaa !40
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x [2 x i16]], ptr %151, i64 %153
  %155 = load i32, ptr %9, align 4, !tbaa !40
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x [2 x i16]], ptr %154, i64 0, i64 %156
  %158 = getelementptr inbounds [2 x i16], ptr %157, i64 0, i64 0
  %159 = load i16, ptr %158, align 2, !tbaa !67
  %160 = load ptr, ptr %16, align 8, !tbaa !222
  %161 = load i32, ptr %10, align 4, !tbaa !40
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !57
  %165 = load i32, ptr %9, align 4, !tbaa !40
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %164, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !59
  %169 = getelementptr inbounds ptr, ptr %168, i64 0
  %170 = load ptr, ptr %169, align 8, !tbaa !61
  %171 = load i16, ptr %22, align 2, !tbaa !67
  %172 = sext i16 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !63
  %175 = getelementptr inbounds ptr, ptr %174, i64 4
  %176 = load ptr, ptr %175, align 8, !tbaa !65
  %177 = getelementptr inbounds i16, ptr %176, i64 0
  store i16 %159, ptr %177, align 2, !tbaa !67
  %178 = load ptr, ptr %19, align 8, !tbaa !65
  %179 = load i32, ptr %10, align 4, !tbaa !40
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x [2 x i16]], ptr %178, i64 %180
  %182 = load i32, ptr %9, align 4, !tbaa !40
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [4 x [2 x i16]], ptr %181, i64 0, i64 %183
  %185 = getelementptr inbounds [2 x i16], ptr %184, i64 0, i64 1
  %186 = load i16, ptr %185, align 2, !tbaa !67
  %187 = load ptr, ptr %16, align 8, !tbaa !222
  %188 = load i32, ptr %10, align 4, !tbaa !40
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !57
  %192 = load i32, ptr %9, align 4, !tbaa !40
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %191, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !59
  %196 = getelementptr inbounds ptr, ptr %195, i64 0
  %197 = load ptr, ptr %196, align 8, !tbaa !61
  %198 = load i16, ptr %22, align 2, !tbaa !67
  %199 = sext i16 %198 to i64
  %200 = getelementptr inbounds ptr, ptr %197, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !63
  %202 = getelementptr inbounds ptr, ptr %201, i64 4
  %203 = load ptr, ptr %202, align 8, !tbaa !65
  %204 = getelementptr inbounds i16, ptr %203, i64 1
  store i16 %186, ptr %204, align 2, !tbaa !67
  br label %205

205:                                              ; preds = %96
  %206 = load i32, ptr %9, align 4, !tbaa !40
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %9, align 4, !tbaa !40
  br label %92, !llvm.loop !362

208:                                              ; preds = %92
  br label %209

209:                                              ; preds = %208
  %210 = load i32, ptr %10, align 4, !tbaa !40
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %10, align 4, !tbaa !40
  br label %86, !llvm.loop !363

212:                                              ; preds = %86
  br label %213

213:                                              ; preds = %212, %75
  br label %797

214:                                              ; preds = %4
  %215 = load i16, ptr %20, align 2, !tbaa !67
  %216 = sext i16 %215 to i32
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %360

218:                                              ; preds = %214
  %219 = load i32, ptr %5, align 4, !tbaa !40
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %220
  %222 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %221, i64 0, i64 0
  %223 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %222, i64 0, i64 0
  store ptr %223, ptr %19, align 8, !tbaa !65
  %224 = load i32, ptr %12, align 4, !tbaa !40
  store i32 %224, ptr %10, align 4, !tbaa !40
  br label %225

225:                                              ; preds = %356, %218
  %226 = load i32, ptr %10, align 4, !tbaa !40
  %227 = load i32, ptr %14, align 4, !tbaa !40
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %359

229:                                              ; preds = %225
  %230 = load i32, ptr %11, align 4, !tbaa !40
  store i32 %230, ptr %9, align 4, !tbaa !40
  br label %231

231:                                              ; preds = %352, %229
  %232 = load i32, ptr %9, align 4, !tbaa !40
  %233 = load i32, ptr %13, align 4, !tbaa !40
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %355

235:                                              ; preds = %231
  %236 = load ptr, ptr %17, align 8, !tbaa !65
  %237 = load i32, ptr %10, align 4, !tbaa !40
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [4 x [2 x i16]], ptr %236, i64 %238
  %240 = load i32, ptr %9, align 4, !tbaa !40
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [4 x [2 x i16]], ptr %239, i64 0, i64 %241
  %243 = getelementptr inbounds [2 x i16], ptr %242, i64 0, i64 0
  %244 = load i16, ptr %243, align 2, !tbaa !67
  %245 = load ptr, ptr %15, align 8, !tbaa !222
  %246 = load i32, ptr %10, align 4, !tbaa !40
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %245, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !57
  %250 = load i32, ptr %9, align 4, !tbaa !40
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %249, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !59
  %254 = getelementptr inbounds ptr, ptr %253, i64 0
  %255 = load ptr, ptr %254, align 8, !tbaa !61
  %256 = load i16, ptr %22, align 2, !tbaa !67
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %255, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !63
  %260 = load i16, ptr %21, align 2, !tbaa !67
  %261 = sext i16 %260 to i64
  %262 = getelementptr inbounds ptr, ptr %259, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !65
  %264 = getelementptr inbounds i16, ptr %263, i64 0
  store i16 %244, ptr %264, align 2, !tbaa !67
  %265 = load ptr, ptr %17, align 8, !tbaa !65
  %266 = load i32, ptr %10, align 4, !tbaa !40
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [4 x [2 x i16]], ptr %265, i64 %267
  %269 = load i32, ptr %9, align 4, !tbaa !40
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x [2 x i16]], ptr %268, i64 0, i64 %270
  %272 = getelementptr inbounds [2 x i16], ptr %271, i64 0, i64 1
  %273 = load i16, ptr %272, align 2, !tbaa !67
  %274 = load ptr, ptr %15, align 8, !tbaa !222
  %275 = load i32, ptr %10, align 4, !tbaa !40
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds ptr, ptr %274, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !57
  %279 = load i32, ptr %9, align 4, !tbaa !40
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds ptr, ptr %278, i64 %280
  %282 = load ptr, ptr %281, align 8, !tbaa !59
  %283 = getelementptr inbounds ptr, ptr %282, i64 0
  %284 = load ptr, ptr %283, align 8, !tbaa !61
  %285 = load i16, ptr %22, align 2, !tbaa !67
  %286 = sext i16 %285 to i64
  %287 = getelementptr inbounds ptr, ptr %284, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !63
  %289 = load i16, ptr %21, align 2, !tbaa !67
  %290 = sext i16 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %288, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !65
  %293 = getelementptr inbounds i16, ptr %292, i64 1
  store i16 %273, ptr %293, align 2, !tbaa !67
  %294 = load ptr, ptr %19, align 8, !tbaa !65
  %295 = load i32, ptr %10, align 4, !tbaa !40
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [4 x [2 x i16]], ptr %294, i64 %296
  %298 = load i32, ptr %9, align 4, !tbaa !40
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x [2 x i16]], ptr %297, i64 0, i64 %299
  %301 = getelementptr inbounds [2 x i16], ptr %300, i64 0, i64 0
  %302 = load i16, ptr %301, align 2, !tbaa !67
  %303 = load ptr, ptr %16, align 8, !tbaa !222
  %304 = load i32, ptr %10, align 4, !tbaa !40
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds ptr, ptr %303, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !57
  %308 = load i32, ptr %9, align 4, !tbaa !40
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds ptr, ptr %307, i64 %309
  %311 = load ptr, ptr %310, align 8, !tbaa !59
  %312 = getelementptr inbounds ptr, ptr %311, i64 0
  %313 = load ptr, ptr %312, align 8, !tbaa !61
  %314 = load i16, ptr %22, align 2, !tbaa !67
  %315 = sext i16 %314 to i64
  %316 = getelementptr inbounds ptr, ptr %313, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !63
  %318 = load i16, ptr %21, align 2, !tbaa !67
  %319 = sext i16 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %317, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !65
  %322 = getelementptr inbounds i16, ptr %321, i64 0
  store i16 %302, ptr %322, align 2, !tbaa !67
  %323 = load ptr, ptr %19, align 8, !tbaa !65
  %324 = load i32, ptr %10, align 4, !tbaa !40
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [4 x [2 x i16]], ptr %323, i64 %325
  %327 = load i32, ptr %9, align 4, !tbaa !40
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [4 x [2 x i16]], ptr %326, i64 0, i64 %328
  %330 = getelementptr inbounds [2 x i16], ptr %329, i64 0, i64 1
  %331 = load i16, ptr %330, align 2, !tbaa !67
  %332 = load ptr, ptr %16, align 8, !tbaa !222
  %333 = load i32, ptr %10, align 4, !tbaa !40
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds ptr, ptr %332, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !57
  %337 = load i32, ptr %9, align 4, !tbaa !40
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds ptr, ptr %336, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !59
  %341 = getelementptr inbounds ptr, ptr %340, i64 0
  %342 = load ptr, ptr %341, align 8, !tbaa !61
  %343 = load i16, ptr %22, align 2, !tbaa !67
  %344 = sext i16 %343 to i64
  %345 = getelementptr inbounds ptr, ptr %342, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !63
  %347 = load i16, ptr %21, align 2, !tbaa !67
  %348 = sext i16 %347 to i64
  %349 = getelementptr inbounds ptr, ptr %346, i64 %348
  %350 = load ptr, ptr %349, align 8, !tbaa !65
  %351 = getelementptr inbounds i16, ptr %350, i64 1
  store i16 %331, ptr %351, align 2, !tbaa !67
  br label %352

352:                                              ; preds = %235
  %353 = load i32, ptr %9, align 4, !tbaa !40
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %9, align 4, !tbaa !40
  br label %231, !llvm.loop !364

355:                                              ; preds = %231
  br label %356

356:                                              ; preds = %355
  %357 = load i32, ptr %10, align 4, !tbaa !40
  %358 = add nsw i32 %357, 1
  store i32 %358, ptr %10, align 4, !tbaa !40
  br label %225, !llvm.loop !365

359:                                              ; preds = %225
  br label %796

360:                                              ; preds = %214
  %361 = load i16, ptr %20, align 2, !tbaa !67
  %362 = sext i16 %361 to i32
  %363 = icmp eq i32 %362, 1
  br i1 %363, label %364, label %506

364:                                              ; preds = %360
  %365 = load i32, ptr %5, align 4, !tbaa !40
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %366
  %368 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %367, i64 0, i64 1
  %369 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %368, i64 0, i64 0
  store ptr %369, ptr %19, align 8, !tbaa !65
  %370 = load i32, ptr %12, align 4, !tbaa !40
  store i32 %370, ptr %10, align 4, !tbaa !40
  br label %371

371:                                              ; preds = %502, %364
  %372 = load i32, ptr %10, align 4, !tbaa !40
  %373 = load i32, ptr %14, align 4, !tbaa !40
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %505

375:                                              ; preds = %371
  %376 = load i32, ptr %11, align 4, !tbaa !40
  store i32 %376, ptr %9, align 4, !tbaa !40
  br label %377

377:                                              ; preds = %498, %375
  %378 = load i32, ptr %9, align 4, !tbaa !40
  %379 = load i32, ptr %13, align 4, !tbaa !40
  %380 = icmp slt i32 %378, %379
  br i1 %380, label %381, label %501

381:                                              ; preds = %377
  %382 = load ptr, ptr %18, align 8, !tbaa !65
  %383 = load i32, ptr %10, align 4, !tbaa !40
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x [2 x i16]], ptr %382, i64 %384
  %386 = load i32, ptr %9, align 4, !tbaa !40
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x [2 x i16]], ptr %385, i64 0, i64 %387
  %389 = getelementptr inbounds [2 x i16], ptr %388, i64 0, i64 0
  %390 = load i16, ptr %389, align 2, !tbaa !67
  %391 = load ptr, ptr %15, align 8, !tbaa !222
  %392 = load i32, ptr %10, align 4, !tbaa !40
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds ptr, ptr %391, i64 %393
  %395 = load ptr, ptr %394, align 8, !tbaa !57
  %396 = load i32, ptr %9, align 4, !tbaa !40
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds ptr, ptr %395, i64 %397
  %399 = load ptr, ptr %398, align 8, !tbaa !59
  %400 = getelementptr inbounds ptr, ptr %399, i64 1
  %401 = load ptr, ptr %400, align 8, !tbaa !61
  %402 = load i16, ptr %23, align 2, !tbaa !67
  %403 = sext i16 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !63
  %406 = load i16, ptr %21, align 2, !tbaa !67
  %407 = sext i16 %406 to i64
  %408 = getelementptr inbounds ptr, ptr %405, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !65
  %410 = getelementptr inbounds i16, ptr %409, i64 0
  store i16 %390, ptr %410, align 2, !tbaa !67
  %411 = load ptr, ptr %18, align 8, !tbaa !65
  %412 = load i32, ptr %10, align 4, !tbaa !40
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [4 x [2 x i16]], ptr %411, i64 %413
  %415 = load i32, ptr %9, align 4, !tbaa !40
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [4 x [2 x i16]], ptr %414, i64 0, i64 %416
  %418 = getelementptr inbounds [2 x i16], ptr %417, i64 0, i64 1
  %419 = load i16, ptr %418, align 2, !tbaa !67
  %420 = load ptr, ptr %15, align 8, !tbaa !222
  %421 = load i32, ptr %10, align 4, !tbaa !40
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds ptr, ptr %420, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !57
  %425 = load i32, ptr %9, align 4, !tbaa !40
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds ptr, ptr %424, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !59
  %429 = getelementptr inbounds ptr, ptr %428, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !61
  %431 = load i16, ptr %23, align 2, !tbaa !67
  %432 = sext i16 %431 to i64
  %433 = getelementptr inbounds ptr, ptr %430, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !63
  %435 = load i16, ptr %21, align 2, !tbaa !67
  %436 = sext i16 %435 to i64
  %437 = getelementptr inbounds ptr, ptr %434, i64 %436
  %438 = load ptr, ptr %437, align 8, !tbaa !65
  %439 = getelementptr inbounds i16, ptr %438, i64 1
  store i16 %419, ptr %439, align 2, !tbaa !67
  %440 = load ptr, ptr %19, align 8, !tbaa !65
  %441 = load i32, ptr %10, align 4, !tbaa !40
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [4 x [2 x i16]], ptr %440, i64 %442
  %444 = load i32, ptr %9, align 4, !tbaa !40
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [4 x [2 x i16]], ptr %443, i64 0, i64 %445
  %447 = getelementptr inbounds [2 x i16], ptr %446, i64 0, i64 0
  %448 = load i16, ptr %447, align 2, !tbaa !67
  %449 = load ptr, ptr %16, align 8, !tbaa !222
  %450 = load i32, ptr %10, align 4, !tbaa !40
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %449, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !57
  %454 = load i32, ptr %9, align 4, !tbaa !40
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds ptr, ptr %453, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !59
  %458 = getelementptr inbounds ptr, ptr %457, i64 1
  %459 = load ptr, ptr %458, align 8, !tbaa !61
  %460 = load i16, ptr %23, align 2, !tbaa !67
  %461 = sext i16 %460 to i64
  %462 = getelementptr inbounds ptr, ptr %459, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !63
  %464 = load i16, ptr %21, align 2, !tbaa !67
  %465 = sext i16 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %463, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !65
  %468 = getelementptr inbounds i16, ptr %467, i64 0
  store i16 %448, ptr %468, align 2, !tbaa !67
  %469 = load ptr, ptr %19, align 8, !tbaa !65
  %470 = load i32, ptr %10, align 4, !tbaa !40
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [4 x [2 x i16]], ptr %469, i64 %471
  %473 = load i32, ptr %9, align 4, !tbaa !40
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [4 x [2 x i16]], ptr %472, i64 0, i64 %474
  %476 = getelementptr inbounds [2 x i16], ptr %475, i64 0, i64 1
  %477 = load i16, ptr %476, align 2, !tbaa !67
  %478 = load ptr, ptr %16, align 8, !tbaa !222
  %479 = load i32, ptr %10, align 4, !tbaa !40
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds ptr, ptr %478, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !57
  %483 = load i32, ptr %9, align 4, !tbaa !40
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds ptr, ptr %482, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !59
  %487 = getelementptr inbounds ptr, ptr %486, i64 1
  %488 = load ptr, ptr %487, align 8, !tbaa !61
  %489 = load i16, ptr %23, align 2, !tbaa !67
  %490 = sext i16 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %488, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !63
  %493 = load i16, ptr %21, align 2, !tbaa !67
  %494 = sext i16 %493 to i64
  %495 = getelementptr inbounds ptr, ptr %492, i64 %494
  %496 = load ptr, ptr %495, align 8, !tbaa !65
  %497 = getelementptr inbounds i16, ptr %496, i64 1
  store i16 %477, ptr %497, align 2, !tbaa !67
  br label %498

498:                                              ; preds = %381
  %499 = load i32, ptr %9, align 4, !tbaa !40
  %500 = add nsw i32 %499, 1
  store i32 %500, ptr %9, align 4, !tbaa !40
  br label %377, !llvm.loop !366

501:                                              ; preds = %377
  br label %502

502:                                              ; preds = %501
  %503 = load i32, ptr %10, align 4, !tbaa !40
  %504 = add nsw i32 %503, 1
  store i32 %504, ptr %10, align 4, !tbaa !40
  br label %371, !llvm.loop !367

505:                                              ; preds = %371
  br label %795

506:                                              ; preds = %360
  %507 = load i16, ptr %20, align 2, !tbaa !67
  %508 = sext i16 %507 to i32
  %509 = icmp eq i32 %508, 2
  br i1 %509, label %510, label %793

510:                                              ; preds = %506
  %511 = load i32, ptr %5, align 4, !tbaa !40
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %512
  %514 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %513, i64 0, i64 0
  %515 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %514, i64 0, i64 0
  store ptr %515, ptr %19, align 8, !tbaa !65
  %516 = load i32, ptr %12, align 4, !tbaa !40
  store i32 %516, ptr %10, align 4, !tbaa !40
  br label %517

517:                                              ; preds = %648, %510
  %518 = load i32, ptr %10, align 4, !tbaa !40
  %519 = load i32, ptr %14, align 4, !tbaa !40
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %651

521:                                              ; preds = %517
  %522 = load i32, ptr %11, align 4, !tbaa !40
  store i32 %522, ptr %9, align 4, !tbaa !40
  br label %523

523:                                              ; preds = %644, %521
  %524 = load i32, ptr %9, align 4, !tbaa !40
  %525 = load i32, ptr %13, align 4, !tbaa !40
  %526 = icmp slt i32 %524, %525
  br i1 %526, label %527, label %647

527:                                              ; preds = %523
  %528 = load ptr, ptr %17, align 8, !tbaa !65
  %529 = load i32, ptr %10, align 4, !tbaa !40
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [4 x [2 x i16]], ptr %528, i64 %530
  %532 = load i32, ptr %9, align 4, !tbaa !40
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [4 x [2 x i16]], ptr %531, i64 0, i64 %533
  %535 = getelementptr inbounds [2 x i16], ptr %534, i64 0, i64 0
  %536 = load i16, ptr %535, align 2, !tbaa !67
  %537 = load ptr, ptr %15, align 8, !tbaa !222
  %538 = load i32, ptr %10, align 4, !tbaa !40
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds ptr, ptr %537, i64 %539
  %541 = load ptr, ptr %540, align 8, !tbaa !57
  %542 = load i32, ptr %9, align 4, !tbaa !40
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds ptr, ptr %541, i64 %543
  %545 = load ptr, ptr %544, align 8, !tbaa !59
  %546 = getelementptr inbounds ptr, ptr %545, i64 0
  %547 = load ptr, ptr %546, align 8, !tbaa !61
  %548 = load i16, ptr %22, align 2, !tbaa !67
  %549 = sext i16 %548 to i64
  %550 = getelementptr inbounds ptr, ptr %547, i64 %549
  %551 = load ptr, ptr %550, align 8, !tbaa !63
  %552 = load i16, ptr %21, align 2, !tbaa !67
  %553 = sext i16 %552 to i64
  %554 = getelementptr inbounds ptr, ptr %551, i64 %553
  %555 = load ptr, ptr %554, align 8, !tbaa !65
  %556 = getelementptr inbounds i16, ptr %555, i64 0
  store i16 %536, ptr %556, align 2, !tbaa !67
  %557 = load ptr, ptr %17, align 8, !tbaa !65
  %558 = load i32, ptr %10, align 4, !tbaa !40
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [4 x [2 x i16]], ptr %557, i64 %559
  %561 = load i32, ptr %9, align 4, !tbaa !40
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [4 x [2 x i16]], ptr %560, i64 0, i64 %562
  %564 = getelementptr inbounds [2 x i16], ptr %563, i64 0, i64 1
  %565 = load i16, ptr %564, align 2, !tbaa !67
  %566 = load ptr, ptr %15, align 8, !tbaa !222
  %567 = load i32, ptr %10, align 4, !tbaa !40
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds ptr, ptr %566, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !57
  %571 = load i32, ptr %9, align 4, !tbaa !40
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds ptr, ptr %570, i64 %572
  %574 = load ptr, ptr %573, align 8, !tbaa !59
  %575 = getelementptr inbounds ptr, ptr %574, i64 0
  %576 = load ptr, ptr %575, align 8, !tbaa !61
  %577 = load i16, ptr %22, align 2, !tbaa !67
  %578 = sext i16 %577 to i64
  %579 = getelementptr inbounds ptr, ptr %576, i64 %578
  %580 = load ptr, ptr %579, align 8, !tbaa !63
  %581 = load i16, ptr %21, align 2, !tbaa !67
  %582 = sext i16 %581 to i64
  %583 = getelementptr inbounds ptr, ptr %580, i64 %582
  %584 = load ptr, ptr %583, align 8, !tbaa !65
  %585 = getelementptr inbounds i16, ptr %584, i64 1
  store i16 %565, ptr %585, align 2, !tbaa !67
  %586 = load ptr, ptr %19, align 8, !tbaa !65
  %587 = load i32, ptr %10, align 4, !tbaa !40
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [4 x [2 x i16]], ptr %586, i64 %588
  %590 = load i32, ptr %9, align 4, !tbaa !40
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds [4 x [2 x i16]], ptr %589, i64 0, i64 %591
  %593 = getelementptr inbounds [2 x i16], ptr %592, i64 0, i64 0
  %594 = load i16, ptr %593, align 2, !tbaa !67
  %595 = load ptr, ptr %16, align 8, !tbaa !222
  %596 = load i32, ptr %10, align 4, !tbaa !40
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds ptr, ptr %595, i64 %597
  %599 = load ptr, ptr %598, align 8, !tbaa !57
  %600 = load i32, ptr %9, align 4, !tbaa !40
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds ptr, ptr %599, i64 %601
  %603 = load ptr, ptr %602, align 8, !tbaa !59
  %604 = getelementptr inbounds ptr, ptr %603, i64 0
  %605 = load ptr, ptr %604, align 8, !tbaa !61
  %606 = load i16, ptr %22, align 2, !tbaa !67
  %607 = sext i16 %606 to i64
  %608 = getelementptr inbounds ptr, ptr %605, i64 %607
  %609 = load ptr, ptr %608, align 8, !tbaa !63
  %610 = load i16, ptr %21, align 2, !tbaa !67
  %611 = sext i16 %610 to i64
  %612 = getelementptr inbounds ptr, ptr %609, i64 %611
  %613 = load ptr, ptr %612, align 8, !tbaa !65
  %614 = getelementptr inbounds i16, ptr %613, i64 0
  store i16 %594, ptr %614, align 2, !tbaa !67
  %615 = load ptr, ptr %19, align 8, !tbaa !65
  %616 = load i32, ptr %10, align 4, !tbaa !40
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [4 x [2 x i16]], ptr %615, i64 %617
  %619 = load i32, ptr %9, align 4, !tbaa !40
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [4 x [2 x i16]], ptr %618, i64 0, i64 %620
  %622 = getelementptr inbounds [2 x i16], ptr %621, i64 0, i64 1
  %623 = load i16, ptr %622, align 2, !tbaa !67
  %624 = load ptr, ptr %16, align 8, !tbaa !222
  %625 = load i32, ptr %10, align 4, !tbaa !40
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds ptr, ptr %624, i64 %626
  %628 = load ptr, ptr %627, align 8, !tbaa !57
  %629 = load i32, ptr %9, align 4, !tbaa !40
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds ptr, ptr %628, i64 %630
  %632 = load ptr, ptr %631, align 8, !tbaa !59
  %633 = getelementptr inbounds ptr, ptr %632, i64 0
  %634 = load ptr, ptr %633, align 8, !tbaa !61
  %635 = load i16, ptr %22, align 2, !tbaa !67
  %636 = sext i16 %635 to i64
  %637 = getelementptr inbounds ptr, ptr %634, i64 %636
  %638 = load ptr, ptr %637, align 8, !tbaa !63
  %639 = load i16, ptr %21, align 2, !tbaa !67
  %640 = sext i16 %639 to i64
  %641 = getelementptr inbounds ptr, ptr %638, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !65
  %643 = getelementptr inbounds i16, ptr %642, i64 1
  store i16 %623, ptr %643, align 2, !tbaa !67
  br label %644

644:                                              ; preds = %527
  %645 = load i32, ptr %9, align 4, !tbaa !40
  %646 = add nsw i32 %645, 1
  store i32 %646, ptr %9, align 4, !tbaa !40
  br label %523, !llvm.loop !368

647:                                              ; preds = %523
  br label %648

648:                                              ; preds = %647
  %649 = load i32, ptr %10, align 4, !tbaa !40
  %650 = add nsw i32 %649, 1
  store i32 %650, ptr %10, align 4, !tbaa !40
  br label %517, !llvm.loop !369

651:                                              ; preds = %517
  %652 = load i32, ptr %5, align 4, !tbaa !40
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %653
  %655 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %654, i64 0, i64 1
  %656 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %655, i64 0, i64 0
  store ptr %656, ptr %19, align 8, !tbaa !65
  %657 = load i32, ptr %12, align 4, !tbaa !40
  store i32 %657, ptr %10, align 4, !tbaa !40
  br label %658

658:                                              ; preds = %789, %651
  %659 = load i32, ptr %10, align 4, !tbaa !40
  %660 = load i32, ptr %14, align 4, !tbaa !40
  %661 = icmp slt i32 %659, %660
  br i1 %661, label %662, label %792

662:                                              ; preds = %658
  %663 = load i32, ptr %11, align 4, !tbaa !40
  store i32 %663, ptr %9, align 4, !tbaa !40
  br label %664

664:                                              ; preds = %785, %662
  %665 = load i32, ptr %9, align 4, !tbaa !40
  %666 = load i32, ptr %13, align 4, !tbaa !40
  %667 = icmp slt i32 %665, %666
  br i1 %667, label %668, label %788

668:                                              ; preds = %664
  %669 = load ptr, ptr %18, align 8, !tbaa !65
  %670 = load i32, ptr %10, align 4, !tbaa !40
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [4 x [2 x i16]], ptr %669, i64 %671
  %673 = load i32, ptr %9, align 4, !tbaa !40
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [4 x [2 x i16]], ptr %672, i64 0, i64 %674
  %676 = getelementptr inbounds [2 x i16], ptr %675, i64 0, i64 0
  %677 = load i16, ptr %676, align 2, !tbaa !67
  %678 = load ptr, ptr %15, align 8, !tbaa !222
  %679 = load i32, ptr %10, align 4, !tbaa !40
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds ptr, ptr %678, i64 %680
  %682 = load ptr, ptr %681, align 8, !tbaa !57
  %683 = load i32, ptr %9, align 4, !tbaa !40
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds ptr, ptr %682, i64 %684
  %686 = load ptr, ptr %685, align 8, !tbaa !59
  %687 = getelementptr inbounds ptr, ptr %686, i64 1
  %688 = load ptr, ptr %687, align 8, !tbaa !61
  %689 = load i16, ptr %23, align 2, !tbaa !67
  %690 = sext i16 %689 to i64
  %691 = getelementptr inbounds ptr, ptr %688, i64 %690
  %692 = load ptr, ptr %691, align 8, !tbaa !63
  %693 = load i16, ptr %21, align 2, !tbaa !67
  %694 = sext i16 %693 to i64
  %695 = getelementptr inbounds ptr, ptr %692, i64 %694
  %696 = load ptr, ptr %695, align 8, !tbaa !65
  %697 = getelementptr inbounds i16, ptr %696, i64 0
  store i16 %677, ptr %697, align 2, !tbaa !67
  %698 = load ptr, ptr %18, align 8, !tbaa !65
  %699 = load i32, ptr %10, align 4, !tbaa !40
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [4 x [2 x i16]], ptr %698, i64 %700
  %702 = load i32, ptr %9, align 4, !tbaa !40
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [4 x [2 x i16]], ptr %701, i64 0, i64 %703
  %705 = getelementptr inbounds [2 x i16], ptr %704, i64 0, i64 1
  %706 = load i16, ptr %705, align 2, !tbaa !67
  %707 = load ptr, ptr %15, align 8, !tbaa !222
  %708 = load i32, ptr %10, align 4, !tbaa !40
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds ptr, ptr %707, i64 %709
  %711 = load ptr, ptr %710, align 8, !tbaa !57
  %712 = load i32, ptr %9, align 4, !tbaa !40
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds ptr, ptr %711, i64 %713
  %715 = load ptr, ptr %714, align 8, !tbaa !59
  %716 = getelementptr inbounds ptr, ptr %715, i64 1
  %717 = load ptr, ptr %716, align 8, !tbaa !61
  %718 = load i16, ptr %23, align 2, !tbaa !67
  %719 = sext i16 %718 to i64
  %720 = getelementptr inbounds ptr, ptr %717, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !63
  %722 = load i16, ptr %21, align 2, !tbaa !67
  %723 = sext i16 %722 to i64
  %724 = getelementptr inbounds ptr, ptr %721, i64 %723
  %725 = load ptr, ptr %724, align 8, !tbaa !65
  %726 = getelementptr inbounds i16, ptr %725, i64 1
  store i16 %706, ptr %726, align 2, !tbaa !67
  %727 = load ptr, ptr %19, align 8, !tbaa !65
  %728 = load i32, ptr %10, align 4, !tbaa !40
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [4 x [2 x i16]], ptr %727, i64 %729
  %731 = load i32, ptr %9, align 4, !tbaa !40
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [4 x [2 x i16]], ptr %730, i64 0, i64 %732
  %734 = getelementptr inbounds [2 x i16], ptr %733, i64 0, i64 0
  %735 = load i16, ptr %734, align 2, !tbaa !67
  %736 = load ptr, ptr %16, align 8, !tbaa !222
  %737 = load i32, ptr %10, align 4, !tbaa !40
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds ptr, ptr %736, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !57
  %741 = load i32, ptr %9, align 4, !tbaa !40
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds ptr, ptr %740, i64 %742
  %744 = load ptr, ptr %743, align 8, !tbaa !59
  %745 = getelementptr inbounds ptr, ptr %744, i64 1
  %746 = load ptr, ptr %745, align 8, !tbaa !61
  %747 = load i16, ptr %23, align 2, !tbaa !67
  %748 = sext i16 %747 to i64
  %749 = getelementptr inbounds ptr, ptr %746, i64 %748
  %750 = load ptr, ptr %749, align 8, !tbaa !63
  %751 = load i16, ptr %21, align 2, !tbaa !67
  %752 = sext i16 %751 to i64
  %753 = getelementptr inbounds ptr, ptr %750, i64 %752
  %754 = load ptr, ptr %753, align 8, !tbaa !65
  %755 = getelementptr inbounds i16, ptr %754, i64 0
  store i16 %735, ptr %755, align 2, !tbaa !67
  %756 = load ptr, ptr %19, align 8, !tbaa !65
  %757 = load i32, ptr %10, align 4, !tbaa !40
  %758 = sext i32 %757 to i64
  %759 = getelementptr inbounds [4 x [2 x i16]], ptr %756, i64 %758
  %760 = load i32, ptr %9, align 4, !tbaa !40
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds [4 x [2 x i16]], ptr %759, i64 0, i64 %761
  %763 = getelementptr inbounds [2 x i16], ptr %762, i64 0, i64 1
  %764 = load i16, ptr %763, align 2, !tbaa !67
  %765 = load ptr, ptr %16, align 8, !tbaa !222
  %766 = load i32, ptr %10, align 4, !tbaa !40
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds ptr, ptr %765, i64 %767
  %769 = load ptr, ptr %768, align 8, !tbaa !57
  %770 = load i32, ptr %9, align 4, !tbaa !40
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds ptr, ptr %769, i64 %771
  %773 = load ptr, ptr %772, align 8, !tbaa !59
  %774 = getelementptr inbounds ptr, ptr %773, i64 1
  %775 = load ptr, ptr %774, align 8, !tbaa !61
  %776 = load i16, ptr %23, align 2, !tbaa !67
  %777 = sext i16 %776 to i64
  %778 = getelementptr inbounds ptr, ptr %775, i64 %777
  %779 = load ptr, ptr %778, align 8, !tbaa !63
  %780 = load i16, ptr %21, align 2, !tbaa !67
  %781 = sext i16 %780 to i64
  %782 = getelementptr inbounds ptr, ptr %779, i64 %781
  %783 = load ptr, ptr %782, align 8, !tbaa !65
  %784 = getelementptr inbounds i16, ptr %783, i64 1
  store i16 %764, ptr %784, align 2, !tbaa !67
  br label %785

785:                                              ; preds = %668
  %786 = load i32, ptr %9, align 4, !tbaa !40
  %787 = add nsw i32 %786, 1
  store i32 %787, ptr %9, align 4, !tbaa !40
  br label %664, !llvm.loop !370

788:                                              ; preds = %664
  br label %789

789:                                              ; preds = %788
  %790 = load i32, ptr %10, align 4, !tbaa !40
  %791 = add nsw i32 %790, 1
  store i32 %791, ptr %10, align 4, !tbaa !40
  br label %658, !llvm.loop !371

792:                                              ; preds = %658
  br label %794

793:                                              ; preds = %506
  call void @error(ptr noundef @.str.1, i32 noundef signext 255)
  br label %794

794:                                              ; preds = %793, %792
  br label %795

795:                                              ; preds = %794, %505
  br label %796

796:                                              ; preds = %795, %359
  br label %797

797:                                              ; preds = %796, %213
  call void @llvm.lifetime.end.p0(i64 2, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @StoreNewMotionVectorsBlock8x8(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  store i32 %0, ptr %8, align 4, !tbaa !40
  store i32 %1, ptr %9, align 4, !tbaa !40
  store i32 %2, ptr %10, align 4, !tbaa !40
  store i32 %3, ptr %11, align 4, !tbaa !40
  store i32 %4, ptr %12, align 4, !tbaa !40
  store i32 %5, ptr %13, align 4, !tbaa !40
  store i32 %6, ptr %14, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #8
  %27 = load ptr, ptr @img, align 8, !tbaa !13
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 80
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  store ptr %29, ptr %21, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #8
  %30 = load ptr, ptr @img, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 79
  %32 = load ptr, ptr %31, align 8, !tbaa !223
  store ptr %32, ptr %22, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #8
  %33 = load i32, ptr %8, align 4, !tbaa !40
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %34
  %36 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %35, i64 0, i64 0
  %37 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %36, i64 0, i64 0
  store ptr %37, ptr %23, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #8
  %38 = load i32, ptr %8, align 4, !tbaa !40
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @all_mv8x8, i64 0, i64 %39
  %41 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %40, i64 0, i64 1
  %42 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %41, i64 0, i64 0
  store ptr %42, ptr %24, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %25) #8
  store ptr null, ptr %25, align 8, !tbaa !65
  %43 = load i32, ptr %9, align 4, !tbaa !40
  %44 = and i32 %43, 1
  %45 = shl i32 %44, 1
  store i32 %45, ptr %17, align 4, !tbaa !40
  %46 = load i32, ptr %9, align 4, !tbaa !40
  %47 = ashr i32 %46, 1
  %48 = shl i32 %47, 1
  store i32 %48, ptr %18, align 4, !tbaa !40
  %49 = load i32, ptr %17, align 4, !tbaa !40
  %50 = add nsw i32 %49, 2
  store i32 %50, ptr %19, align 4, !tbaa !40
  %51 = load i32, ptr %18, align 4, !tbaa !40
  %52 = add nsw i32 %51, 2
  store i32 %52, ptr %20, align 4, !tbaa !40
  %53 = load i32, ptr %13, align 4, !tbaa !40
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %7
  %56 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %56, ptr %16, align 4, !tbaa !40
  br label %57

57:                                               ; preds = %76, %55
  %58 = load i32, ptr %16, align 4, !tbaa !40
  %59 = load i32, ptr %20, align 4, !tbaa !40
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load ptr, ptr %23, align 8, !tbaa !65
  %63 = load i32, ptr %16, align 4, !tbaa !40
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x [2 x i16]], ptr %62, i64 %64
  %66 = load i32, ptr %17, align 4, !tbaa !40
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x [2 x i16]], ptr %65, i64 0, i64 %67
  call void @llvm.memset.p0.i64(ptr align 2 %68, i8 0, i64 8, i1 false)
  %69 = load ptr, ptr %24, align 8, !tbaa !65
  %70 = load i32, ptr %16, align 4, !tbaa !40
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x [2 x i16]], ptr %69, i64 %71
  %73 = load i32, ptr %17, align 4, !tbaa !40
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x [2 x i16]], ptr %72, i64 0, i64 %74
  call void @llvm.memset.p0.i64(ptr align 2 %75, i8 0, i64 8, i1 false)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, ptr %16, align 4, !tbaa !40
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %16, align 4, !tbaa !40
  br label %57, !llvm.loop !372

79:                                               ; preds = %57
  store i32 1, ptr %26, align 4
  br label %558

80:                                               ; preds = %7
  %81 = load i32, ptr %14, align 4, !tbaa !40
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %224, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %8, align 4, !tbaa !40
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %85
  %87 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %86, i64 0, i64 0
  %88 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %87, i64 0, i64 0
  store ptr %88, ptr %25, align 8, !tbaa !65
  %89 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %89, ptr %16, align 4, !tbaa !40
  br label %90

90:                                               ; preds = %220, %83
  %91 = load i32, ptr %16, align 4, !tbaa !40
  %92 = load i32, ptr %20, align 4, !tbaa !40
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %223

94:                                               ; preds = %90
  %95 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %95, ptr %15, align 4, !tbaa !40
  br label %96

96:                                               ; preds = %209, %94
  %97 = load i32, ptr %15, align 4, !tbaa !40
  %98 = load i32, ptr %19, align 4, !tbaa !40
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %212

100:                                              ; preds = %96
  %101 = load ptr, ptr %21, align 8, !tbaa !222
  %102 = load i32, ptr %16, align 4, !tbaa !40
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !57
  %106 = load i32, ptr %15, align 4, !tbaa !40
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !59
  %110 = getelementptr inbounds ptr, ptr %109, i64 0
  %111 = load ptr, ptr %110, align 8, !tbaa !61
  %112 = load i32, ptr %11, align 4, !tbaa !40
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !63
  %116 = getelementptr inbounds ptr, ptr %115, i64 4
  %117 = load ptr, ptr %116, align 8, !tbaa !65
  %118 = getelementptr inbounds i16, ptr %117, i64 0
  %119 = load i16, ptr %118, align 2, !tbaa !67
  %120 = load ptr, ptr %23, align 8, !tbaa !65
  %121 = load i32, ptr %16, align 4, !tbaa !40
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x [2 x i16]], ptr %120, i64 %122
  %124 = load i32, ptr %15, align 4, !tbaa !40
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x [2 x i16]], ptr %123, i64 0, i64 %125
  %127 = getelementptr inbounds [2 x i16], ptr %126, i64 0, i64 0
  store i16 %119, ptr %127, align 2, !tbaa !67
  %128 = load ptr, ptr %21, align 8, !tbaa !222
  %129 = load i32, ptr %16, align 4, !tbaa !40
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !57
  %133 = load i32, ptr %15, align 4, !tbaa !40
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !59
  %137 = getelementptr inbounds ptr, ptr %136, i64 0
  %138 = load ptr, ptr %137, align 8, !tbaa !61
  %139 = load i32, ptr %11, align 4, !tbaa !40
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !63
  %143 = getelementptr inbounds ptr, ptr %142, i64 4
  %144 = load ptr, ptr %143, align 8, !tbaa !65
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !67
  %147 = load ptr, ptr %23, align 8, !tbaa !65
  %148 = load i32, ptr %16, align 4, !tbaa !40
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x [2 x i16]], ptr %147, i64 %149
  %151 = load i32, ptr %15, align 4, !tbaa !40
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x [2 x i16]], ptr %150, i64 0, i64 %152
  %154 = getelementptr inbounds [2 x i16], ptr %153, i64 0, i64 1
  store i16 %146, ptr %154, align 2, !tbaa !67
  %155 = load ptr, ptr %22, align 8, !tbaa !222
  %156 = load i32, ptr %16, align 4, !tbaa !40
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds ptr, ptr %155, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !57
  %160 = load i32, ptr %15, align 4, !tbaa !40
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds ptr, ptr %159, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !59
  %164 = getelementptr inbounds ptr, ptr %163, i64 0
  %165 = load ptr, ptr %164, align 8, !tbaa !61
  %166 = load i32, ptr %11, align 4, !tbaa !40
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %165, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !63
  %170 = getelementptr inbounds ptr, ptr %169, i64 4
  %171 = load ptr, ptr %170, align 8, !tbaa !65
  %172 = getelementptr inbounds i16, ptr %171, i64 0
  %173 = load i16, ptr %172, align 2, !tbaa !67
  %174 = load ptr, ptr %25, align 8, !tbaa !65
  %175 = load i32, ptr %16, align 4, !tbaa !40
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x [2 x i16]], ptr %174, i64 %176
  %178 = load i32, ptr %15, align 4, !tbaa !40
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x [2 x i16]], ptr %177, i64 0, i64 %179
  %181 = getelementptr inbounds [2 x i16], ptr %180, i64 0, i64 0
  store i16 %173, ptr %181, align 2, !tbaa !67
  %182 = load ptr, ptr %22, align 8, !tbaa !222
  %183 = load i32, ptr %16, align 4, !tbaa !40
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !57
  %187 = load i32, ptr %15, align 4, !tbaa !40
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds ptr, ptr %186, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !59
  %191 = getelementptr inbounds ptr, ptr %190, i64 0
  %192 = load ptr, ptr %191, align 8, !tbaa !61
  %193 = load i32, ptr %11, align 4, !tbaa !40
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %192, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = getelementptr inbounds ptr, ptr %196, i64 4
  %198 = load ptr, ptr %197, align 8, !tbaa !65
  %199 = getelementptr inbounds i16, ptr %198, i64 1
  %200 = load i16, ptr %199, align 2, !tbaa !67
  %201 = load ptr, ptr %25, align 8, !tbaa !65
  %202 = load i32, ptr %16, align 4, !tbaa !40
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [4 x [2 x i16]], ptr %201, i64 %203
  %205 = load i32, ptr %15, align 4, !tbaa !40
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x [2 x i16]], ptr %204, i64 0, i64 %206
  %208 = getelementptr inbounds [2 x i16], ptr %207, i64 0, i64 1
  store i16 %200, ptr %208, align 2, !tbaa !67
  br label %209

209:                                              ; preds = %100
  %210 = load i32, ptr %15, align 4, !tbaa !40
  %211 = add nsw i32 %210, 1
  store i32 %211, ptr %15, align 4, !tbaa !40
  br label %96, !llvm.loop !373

212:                                              ; preds = %96
  %213 = load ptr, ptr %24, align 8, !tbaa !65
  %214 = load i32, ptr %16, align 4, !tbaa !40
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x [2 x i16]], ptr %213, i64 %215
  %217 = load i32, ptr %17, align 4, !tbaa !40
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [4 x [2 x i16]], ptr %216, i64 0, i64 %218
  call void @llvm.memset.p0.i64(ptr align 2 %219, i8 0, i64 8, i1 false)
  br label %220

220:                                              ; preds = %212
  %221 = load i32, ptr %16, align 4, !tbaa !40
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %16, align 4, !tbaa !40
  br label %90, !llvm.loop !374

223:                                              ; preds = %90
  store i32 1, ptr %26, align 4
  br label %558

224:                                              ; preds = %80
  %225 = load i32, ptr %13, align 4, !tbaa !40
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32, ptr %13, align 4, !tbaa !40
  %229 = icmp eq i32 %228, 2
  br i1 %229, label %230, label %372

230:                                              ; preds = %227, %224
  %231 = load i32, ptr %8, align 4, !tbaa !40
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %232
  %234 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %233, i64 0, i64 0
  %235 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %234, i64 0, i64 0
  store ptr %235, ptr %25, align 8, !tbaa !65
  %236 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %236, ptr %16, align 4, !tbaa !40
  br label %237

237:                                              ; preds = %368, %230
  %238 = load i32, ptr %16, align 4, !tbaa !40
  %239 = load i32, ptr %20, align 4, !tbaa !40
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %371

241:                                              ; preds = %237
  %242 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %242, ptr %15, align 4, !tbaa !40
  br label %243

243:                                              ; preds = %364, %241
  %244 = load i32, ptr %15, align 4, !tbaa !40
  %245 = load i32, ptr %19, align 4, !tbaa !40
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %367

247:                                              ; preds = %243
  %248 = load ptr, ptr %21, align 8, !tbaa !222
  %249 = load i32, ptr %16, align 4, !tbaa !40
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %248, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !57
  %253 = load i32, ptr %15, align 4, !tbaa !40
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds ptr, ptr %252, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !59
  %257 = getelementptr inbounds ptr, ptr %256, i64 0
  %258 = load ptr, ptr %257, align 8, !tbaa !61
  %259 = load i32, ptr %11, align 4, !tbaa !40
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds ptr, ptr %258, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !63
  %263 = load i32, ptr %10, align 4, !tbaa !40
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %262, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !65
  %267 = getelementptr inbounds i16, ptr %266, i64 0
  %268 = load i16, ptr %267, align 2, !tbaa !67
  %269 = load ptr, ptr %23, align 8, !tbaa !65
  %270 = load i32, ptr %16, align 4, !tbaa !40
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [4 x [2 x i16]], ptr %269, i64 %271
  %273 = load i32, ptr %15, align 4, !tbaa !40
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [4 x [2 x i16]], ptr %272, i64 0, i64 %274
  %276 = getelementptr inbounds [2 x i16], ptr %275, i64 0, i64 0
  store i16 %268, ptr %276, align 2, !tbaa !67
  %277 = load ptr, ptr %21, align 8, !tbaa !222
  %278 = load i32, ptr %16, align 4, !tbaa !40
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %277, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !57
  %282 = load i32, ptr %15, align 4, !tbaa !40
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds ptr, ptr %281, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !59
  %286 = getelementptr inbounds ptr, ptr %285, i64 0
  %287 = load ptr, ptr %286, align 8, !tbaa !61
  %288 = load i32, ptr %11, align 4, !tbaa !40
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %287, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !63
  %292 = load i32, ptr %10, align 4, !tbaa !40
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds ptr, ptr %291, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !65
  %296 = getelementptr inbounds i16, ptr %295, i64 1
  %297 = load i16, ptr %296, align 2, !tbaa !67
  %298 = load ptr, ptr %23, align 8, !tbaa !65
  %299 = load i32, ptr %16, align 4, !tbaa !40
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [4 x [2 x i16]], ptr %298, i64 %300
  %302 = load i32, ptr %15, align 4, !tbaa !40
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [4 x [2 x i16]], ptr %301, i64 0, i64 %303
  %305 = getelementptr inbounds [2 x i16], ptr %304, i64 0, i64 1
  store i16 %297, ptr %305, align 2, !tbaa !67
  %306 = load ptr, ptr %22, align 8, !tbaa !222
  %307 = load i32, ptr %16, align 4, !tbaa !40
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %306, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !57
  %311 = load i32, ptr %15, align 4, !tbaa !40
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds ptr, ptr %310, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !59
  %315 = getelementptr inbounds ptr, ptr %314, i64 0
  %316 = load ptr, ptr %315, align 8, !tbaa !61
  %317 = load i32, ptr %11, align 4, !tbaa !40
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds ptr, ptr %316, i64 %318
  %320 = load ptr, ptr %319, align 8, !tbaa !63
  %321 = load i32, ptr %10, align 4, !tbaa !40
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds ptr, ptr %320, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !65
  %325 = getelementptr inbounds i16, ptr %324, i64 0
  %326 = load i16, ptr %325, align 2, !tbaa !67
  %327 = load ptr, ptr %25, align 8, !tbaa !65
  %328 = load i32, ptr %16, align 4, !tbaa !40
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [4 x [2 x i16]], ptr %327, i64 %329
  %331 = load i32, ptr %15, align 4, !tbaa !40
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [4 x [2 x i16]], ptr %330, i64 0, i64 %332
  %334 = getelementptr inbounds [2 x i16], ptr %333, i64 0, i64 0
  store i16 %326, ptr %334, align 2, !tbaa !67
  %335 = load ptr, ptr %22, align 8, !tbaa !222
  %336 = load i32, ptr %16, align 4, !tbaa !40
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds ptr, ptr %335, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !57
  %340 = load i32, ptr %15, align 4, !tbaa !40
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds ptr, ptr %339, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !59
  %344 = getelementptr inbounds ptr, ptr %343, i64 0
  %345 = load ptr, ptr %344, align 8, !tbaa !61
  %346 = load i32, ptr %11, align 4, !tbaa !40
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !63
  %350 = load i32, ptr %10, align 4, !tbaa !40
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %349, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !65
  %354 = getelementptr inbounds i16, ptr %353, i64 1
  %355 = load i16, ptr %354, align 2, !tbaa !67
  %356 = load ptr, ptr %25, align 8, !tbaa !65
  %357 = load i32, ptr %16, align 4, !tbaa !40
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [4 x [2 x i16]], ptr %356, i64 %358
  %360 = load i32, ptr %15, align 4, !tbaa !40
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [4 x [2 x i16]], ptr %359, i64 0, i64 %361
  %363 = getelementptr inbounds [2 x i16], ptr %362, i64 0, i64 1
  store i16 %355, ptr %363, align 2, !tbaa !67
  br label %364

364:                                              ; preds = %247
  %365 = load i32, ptr %15, align 4, !tbaa !40
  %366 = add nsw i32 %365, 1
  store i32 %366, ptr %15, align 4, !tbaa !40
  br label %243, !llvm.loop !375

367:                                              ; preds = %243
  br label %368

368:                                              ; preds = %367
  %369 = load i32, ptr %16, align 4, !tbaa !40
  %370 = add nsw i32 %369, 1
  store i32 %370, ptr %16, align 4, !tbaa !40
  br label %237, !llvm.loop !376

371:                                              ; preds = %237
  br label %390

372:                                              ; preds = %227
  %373 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %373, ptr %16, align 4, !tbaa !40
  br label %374

374:                                              ; preds = %386, %372
  %375 = load i32, ptr %16, align 4, !tbaa !40
  %376 = load i32, ptr %20, align 4, !tbaa !40
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %389

378:                                              ; preds = %374
  %379 = load ptr, ptr %23, align 8, !tbaa !65
  %380 = load i32, ptr %16, align 4, !tbaa !40
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [4 x [2 x i16]], ptr %379, i64 %381
  %383 = load i32, ptr %17, align 4, !tbaa !40
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x [2 x i16]], ptr %382, i64 0, i64 %384
  call void @llvm.memset.p0.i64(ptr align 2 %385, i8 0, i64 8, i1 false)
  br label %386

386:                                              ; preds = %378
  %387 = load i32, ptr %16, align 4, !tbaa !40
  %388 = add nsw i32 %387, 1
  store i32 %388, ptr %16, align 4, !tbaa !40
  br label %374, !llvm.loop !377

389:                                              ; preds = %374
  br label %390

390:                                              ; preds = %389, %371
  %391 = load i32, ptr %13, align 4, !tbaa !40
  %392 = icmp eq i32 %391, 1
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = load i32, ptr %13, align 4, !tbaa !40
  %395 = icmp eq i32 %394, 2
  br i1 %395, label %396, label %538

396:                                              ; preds = %393, %390
  %397 = load i32, ptr %8, align 4, !tbaa !40
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [2 x [2 x [4 x [4 x [2 x i16]]]]], ptr @pred_mv8x8, i64 0, i64 %398
  %400 = getelementptr inbounds [2 x [4 x [4 x [2 x i16]]]], ptr %399, i64 0, i64 1
  %401 = getelementptr inbounds [4 x [4 x [2 x i16]]], ptr %400, i64 0, i64 0
  store ptr %401, ptr %25, align 8, !tbaa !65
  %402 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %402, ptr %16, align 4, !tbaa !40
  br label %403

403:                                              ; preds = %534, %396
  %404 = load i32, ptr %16, align 4, !tbaa !40
  %405 = load i32, ptr %20, align 4, !tbaa !40
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %537

407:                                              ; preds = %403
  %408 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %408, ptr %15, align 4, !tbaa !40
  br label %409

409:                                              ; preds = %530, %407
  %410 = load i32, ptr %15, align 4, !tbaa !40
  %411 = load i32, ptr %19, align 4, !tbaa !40
  %412 = icmp slt i32 %410, %411
  br i1 %412, label %413, label %533

413:                                              ; preds = %409
  %414 = load ptr, ptr %21, align 8, !tbaa !222
  %415 = load i32, ptr %16, align 4, !tbaa !40
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds ptr, ptr %414, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !57
  %419 = load i32, ptr %15, align 4, !tbaa !40
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds ptr, ptr %418, i64 %420
  %422 = load ptr, ptr %421, align 8, !tbaa !59
  %423 = getelementptr inbounds ptr, ptr %422, i64 1
  %424 = load ptr, ptr %423, align 8, !tbaa !61
  %425 = load i32, ptr %12, align 4, !tbaa !40
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds ptr, ptr %424, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !63
  %429 = load i32, ptr %10, align 4, !tbaa !40
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds ptr, ptr %428, i64 %430
  %432 = load ptr, ptr %431, align 8, !tbaa !65
  %433 = getelementptr inbounds i16, ptr %432, i64 0
  %434 = load i16, ptr %433, align 2, !tbaa !67
  %435 = load ptr, ptr %24, align 8, !tbaa !65
  %436 = load i32, ptr %16, align 4, !tbaa !40
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [4 x [2 x i16]], ptr %435, i64 %437
  %439 = load i32, ptr %15, align 4, !tbaa !40
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [4 x [2 x i16]], ptr %438, i64 0, i64 %440
  %442 = getelementptr inbounds [2 x i16], ptr %441, i64 0, i64 0
  store i16 %434, ptr %442, align 2, !tbaa !67
  %443 = load ptr, ptr %21, align 8, !tbaa !222
  %444 = load i32, ptr %16, align 4, !tbaa !40
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds ptr, ptr %443, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !57
  %448 = load i32, ptr %15, align 4, !tbaa !40
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds ptr, ptr %447, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !59
  %452 = getelementptr inbounds ptr, ptr %451, i64 1
  %453 = load ptr, ptr %452, align 8, !tbaa !61
  %454 = load i32, ptr %12, align 4, !tbaa !40
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds ptr, ptr %453, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !63
  %458 = load i32, ptr %10, align 4, !tbaa !40
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds ptr, ptr %457, i64 %459
  %461 = load ptr, ptr %460, align 8, !tbaa !65
  %462 = getelementptr inbounds i16, ptr %461, i64 1
  %463 = load i16, ptr %462, align 2, !tbaa !67
  %464 = load ptr, ptr %24, align 8, !tbaa !65
  %465 = load i32, ptr %16, align 4, !tbaa !40
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [4 x [2 x i16]], ptr %464, i64 %466
  %468 = load i32, ptr %15, align 4, !tbaa !40
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [4 x [2 x i16]], ptr %467, i64 0, i64 %469
  %471 = getelementptr inbounds [2 x i16], ptr %470, i64 0, i64 1
  store i16 %463, ptr %471, align 2, !tbaa !67
  %472 = load ptr, ptr %22, align 8, !tbaa !222
  %473 = load i32, ptr %16, align 4, !tbaa !40
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds ptr, ptr %472, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !57
  %477 = load i32, ptr %15, align 4, !tbaa !40
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds ptr, ptr %476, i64 %478
  %480 = load ptr, ptr %479, align 8, !tbaa !59
  %481 = getelementptr inbounds ptr, ptr %480, i64 1
  %482 = load ptr, ptr %481, align 8, !tbaa !61
  %483 = load i32, ptr %12, align 4, !tbaa !40
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds ptr, ptr %482, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !63
  %487 = load i32, ptr %10, align 4, !tbaa !40
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds ptr, ptr %486, i64 %488
  %490 = load ptr, ptr %489, align 8, !tbaa !65
  %491 = getelementptr inbounds i16, ptr %490, i64 0
  %492 = load i16, ptr %491, align 2, !tbaa !67
  %493 = load ptr, ptr %25, align 8, !tbaa !65
  %494 = load i32, ptr %16, align 4, !tbaa !40
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [4 x [2 x i16]], ptr %493, i64 %495
  %497 = load i32, ptr %15, align 4, !tbaa !40
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [4 x [2 x i16]], ptr %496, i64 0, i64 %498
  %500 = getelementptr inbounds [2 x i16], ptr %499, i64 0, i64 0
  store i16 %492, ptr %500, align 2, !tbaa !67
  %501 = load ptr, ptr %22, align 8, !tbaa !222
  %502 = load i32, ptr %16, align 4, !tbaa !40
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds ptr, ptr %501, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !57
  %506 = load i32, ptr %15, align 4, !tbaa !40
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %505, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !59
  %510 = getelementptr inbounds ptr, ptr %509, i64 1
  %511 = load ptr, ptr %510, align 8, !tbaa !61
  %512 = load i32, ptr %12, align 4, !tbaa !40
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds ptr, ptr %511, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !63
  %516 = load i32, ptr %10, align 4, !tbaa !40
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds ptr, ptr %515, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !65
  %520 = getelementptr inbounds i16, ptr %519, i64 1
  %521 = load i16, ptr %520, align 2, !tbaa !67
  %522 = load ptr, ptr %25, align 8, !tbaa !65
  %523 = load i32, ptr %16, align 4, !tbaa !40
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [4 x [2 x i16]], ptr %522, i64 %524
  %526 = load i32, ptr %15, align 4, !tbaa !40
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [4 x [2 x i16]], ptr %525, i64 0, i64 %527
  %529 = getelementptr inbounds [2 x i16], ptr %528, i64 0, i64 1
  store i16 %521, ptr %529, align 2, !tbaa !67
  br label %530

530:                                              ; preds = %413
  %531 = load i32, ptr %15, align 4, !tbaa !40
  %532 = add nsw i32 %531, 1
  store i32 %532, ptr %15, align 4, !tbaa !40
  br label %409, !llvm.loop !378

533:                                              ; preds = %409
  br label %534

534:                                              ; preds = %533
  %535 = load i32, ptr %16, align 4, !tbaa !40
  %536 = add nsw i32 %535, 1
  store i32 %536, ptr %16, align 4, !tbaa !40
  br label %403, !llvm.loop !379

537:                                              ; preds = %403
  br label %556

538:                                              ; preds = %393
  %539 = load i32, ptr %18, align 4, !tbaa !40
  store i32 %539, ptr %16, align 4, !tbaa !40
  br label %540

540:                                              ; preds = %552, %538
  %541 = load i32, ptr %16, align 4, !tbaa !40
  %542 = load i32, ptr %20, align 4, !tbaa !40
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %555

544:                                              ; preds = %540
  %545 = load ptr, ptr %24, align 8, !tbaa !65
  %546 = load i32, ptr %16, align 4, !tbaa !40
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [4 x [2 x i16]], ptr %545, i64 %547
  %549 = load i32, ptr %17, align 4, !tbaa !40
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [4 x [2 x i16]], ptr %548, i64 0, i64 %550
  call void @llvm.memset.p0.i64(ptr align 2 %551, i8 0, i64 8, i1 false)
  br label %552

552:                                              ; preds = %544
  %553 = load i32, ptr %16, align 4, !tbaa !40
  %554 = add nsw i32 %553, 1
  store i32 %554, ptr %16, align 4, !tbaa !40
  br label %540, !llvm.loop !380

555:                                              ; preds = %540
  br label %556

556:                                              ; preds = %555, %537
  br label %557

557:                                              ; preds = %556
  store i32 0, ptr %26, align 4
  br label %558

558:                                              ; preds = %557, %223, %79
  call void @llvm.lifetime.end.p0(i64 8, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  %559 = load i32, ptr %26, align 4
  switch i32 %559, label %561 [
    i32 0, label %560
    i32 1, label %560
  ]

560:                                              ; preds = %558, %558
  ret void

561:                                              ; preds = %558
  unreachable
}

; Function Attrs: nounwind
define dso_local signext i32 @GetBestTransformP8x8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  store i32 0, ptr %12, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  store i32 0, ptr %13, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %16 = load ptr, ptr @input, align 8, !tbaa !13
  %17 = getelementptr inbounds nuw %struct.InputParameters, ptr %16, i32 0, i32 153
  %18 = load i32, ptr %17, align 4, !tbaa !14
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %0
  store i32 1, ptr %1, align 4
  store i32 1, ptr %15, align 4
  br label %160

21:                                               ; preds = %0
  store i32 0, ptr %11, align 4, !tbaa !40
  br label %22

22:                                               ; preds = %152, %21
  %23 = load i32, ptr %11, align 4, !tbaa !40
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %155

25:                                               ; preds = %22
  %26 = load i32, ptr %11, align 4, !tbaa !40
  %27 = ashr i32 %26, 1
  %28 = shl i32 %27, 3
  store i32 %28, ptr %9, align 4, !tbaa !40
  %29 = load i32, ptr %11, align 4, !tbaa !40
  %30 = and i32 %29, 1
  %31 = shl i32 %30, 3
  store i32 %31, ptr %10, align 4, !tbaa !40
  store i32 0, ptr %8, align 4, !tbaa !40
  %32 = load i32, ptr %9, align 4, !tbaa !40
  store i32 %32, ptr %2, align 4, !tbaa !40
  br label %33

33:                                               ; preds = %145, %25
  %34 = load i32, ptr %2, align 4, !tbaa !40
  %35 = load i32, ptr %9, align 4, !tbaa !40
  %36 = add nsw i32 %35, 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %148

38:                                               ; preds = %33
  %39 = load ptr, ptr @img, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.ImageParameters, ptr %39, i32 0, i32 44
  %41 = load i32, ptr %40, align 4, !tbaa !97
  %42 = load i32, ptr %2, align 4, !tbaa !40
  %43 = add nsw i32 %41, %42
  store i32 %43, ptr %4, align 4, !tbaa !40
  %44 = load i32, ptr %10, align 4, !tbaa !40
  store i32 %44, ptr %3, align 4, !tbaa !40
  br label %45

45:                                               ; preds = %141, %38
  %46 = load i32, ptr %3, align 4, !tbaa !40
  %47 = load i32, ptr %10, align 4, !tbaa !40
  %48 = add nsw i32 %47, 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %144

50:                                               ; preds = %45
  %51 = load ptr, ptr @img, align 8, !tbaa !13
  %52 = getelementptr inbounds nuw %struct.ImageParameters, ptr %51, i32 0, i32 43
  %53 = load i32, ptr %52, align 8, !tbaa !119
  %54 = load i32, ptr %3, align 4, !tbaa !40
  %55 = add nsw i32 %53, %54
  store i32 %55, ptr %5, align 4, !tbaa !40
  %56 = load i32, ptr %8, align 4, !tbaa !40
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [64 x i32], ptr @diff4x4, i64 0, i64 %57
  store ptr %58, ptr %14, align 8, !tbaa !92
  store i32 0, ptr %7, align 4, !tbaa !40
  br label %59

59:                                               ; preds = %133, %50
  %60 = load i32, ptr %7, align 4, !tbaa !40
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %136

62:                                               ; preds = %59
  store i32 0, ptr %6, align 4, !tbaa !40
  br label %63

63:                                               ; preds = %127, %62
  %64 = load i32, ptr %6, align 4, !tbaa !40
  %65 = icmp slt i32 %64, 4
  br i1 %65, label %66, label %132

66:                                               ; preds = %63
  %67 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %68 = load i32, ptr %4, align 4, !tbaa !40
  %69 = load i32, ptr %7, align 4, !tbaa !40
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %67, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !65
  %74 = load i32, ptr %5, align 4, !tbaa !40
  %75 = load i32, ptr %6, align 4, !tbaa !40
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %73, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !67
  %80 = zext i16 %79 to i32
  %81 = load i32, ptr %7, align 4, !tbaa !40
  %82 = load i32, ptr %2, align 4, !tbaa !40
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr4x4, i32 0, i32 10), i64 0, i64 %84
  %86 = load i32, ptr %6, align 4, !tbaa !40
  %87 = load i32, ptr %3, align 4, !tbaa !40
  %88 = add nsw i32 %86, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [16 x i16], ptr %85, i64 0, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !67
  %92 = zext i16 %91 to i32
  %93 = sub nsw i32 %80, %92
  %94 = load i32, ptr %8, align 4, !tbaa !40
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [64 x i32], ptr @diff4x4, i64 0, i64 %95
  store i32 %93, ptr %96, align 4, !tbaa !40
  %97 = load ptr, ptr @imgY_org, align 8, !tbaa !63
  %98 = load i32, ptr %4, align 4, !tbaa !40
  %99 = load i32, ptr %7, align 4, !tbaa !40
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %97, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !65
  %104 = load i32, ptr %5, align 4, !tbaa !40
  %105 = load i32, ptr %6, align 4, !tbaa !40
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i16, ptr %103, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !67
  %110 = zext i16 %109 to i32
  %111 = load i32, ptr %7, align 4, !tbaa !40
  %112 = load i32, ptr %2, align 4, !tbaa !40
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [16 x [16 x i16]], ptr getelementptr inbounds nuw (%struct.RD_8x8DATA, ptr @tr8x8, i32 0, i32 10), i64 0, i64 %114
  %116 = load i32, ptr %6, align 4, !tbaa !40
  %117 = load i32, ptr %3, align 4, !tbaa !40
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i16], ptr %115, i64 0, i64 %119
  %121 = load i16, ptr %120, align 2, !tbaa !67
  %122 = zext i16 %121 to i32
  %123 = sub nsw i32 %110, %122
  %124 = load i32, ptr %8, align 4, !tbaa !40
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [64 x i32], ptr @diff8x8, i64 0, i64 %125
  store i32 %123, ptr %126, align 4, !tbaa !40
  br label %127

127:                                              ; preds = %66
  %128 = load i32, ptr %6, align 4, !tbaa !40
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %6, align 4, !tbaa !40
  %130 = load i32, ptr %8, align 4, !tbaa !40
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %8, align 4, !tbaa !40
  br label %63, !llvm.loop !381

132:                                              ; preds = %63
  br label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %7, align 4, !tbaa !40
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %7, align 4, !tbaa !40
  br label %59, !llvm.loop !382

136:                                              ; preds = %59
  %137 = load ptr, ptr %14, align 8, !tbaa !92
  %138 = call signext i32 @distortion4x4(ptr noundef %137)
  %139 = load i32, ptr %13, align 4, !tbaa !40
  %140 = add nsw i32 %139, %138
  store i32 %140, ptr %13, align 4, !tbaa !40
  br label %141

141:                                              ; preds = %136
  %142 = load i32, ptr %3, align 4, !tbaa !40
  %143 = add nsw i32 %142, 4
  store i32 %143, ptr %3, align 4, !tbaa !40
  br label %45, !llvm.loop !383

144:                                              ; preds = %45
  br label %145

145:                                              ; preds = %144
  %146 = load i32, ptr %2, align 4, !tbaa !40
  %147 = add nsw i32 %146, 4
  store i32 %147, ptr %2, align 4, !tbaa !40
  br label %33, !llvm.loop !384

148:                                              ; preds = %33
  %149 = call signext i32 @distortion8x8(ptr noundef @diff8x8)
  %150 = load i32, ptr %12, align 4, !tbaa !40
  %151 = add nsw i32 %150, %149
  store i32 %151, ptr %12, align 4, !tbaa !40
  br label %152

152:                                              ; preds = %148
  %153 = load i32, ptr %11, align 4, !tbaa !40
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %11, align 4, !tbaa !40
  br label %22, !llvm.loop !385

155:                                              ; preds = %22
  %156 = load i32, ptr %12, align 4, !tbaa !40
  %157 = load i32, ptr %13, align 4, !tbaa !40
  %158 = icmp slt i32 %156, %157
  %159 = zext i1 %158 to i32
  store i32 %159, ptr %1, align 4
  store i32 1, ptr %15, align 4
  br label %160

160:                                              ; preds = %155, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8
  %161 = load i32, ptr %1, align 4
  ret i32 %161
}

declare signext i32 @distortion8x8(ptr noundef) #1

; Function Attrs: nounwind
define dso_local void @set_mbaff_parameters() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #8
  %8 = load ptr, ptr @img, align 8, !tbaa !13
  %9 = getelementptr inbounds nuw %struct.ImageParameters, ptr %8, i32 0, i32 61
  %10 = load ptr, ptr %9, align 8, !tbaa !143
  %11 = load ptr, ptr @img, align 8, !tbaa !13
  %12 = getelementptr inbounds nuw %struct.ImageParameters, ptr %11, i32 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !120
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.macroblock, ptr %10, i64 %14
  store ptr %15, ptr %4, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  %16 = load i16, ptr @best_mode, align 2, !tbaa !67
  %17 = sext i16 %16 to i32
  store i32 %17, ptr %5, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  %18 = load ptr, ptr @img, align 8, !tbaa !13
  %19 = getelementptr inbounds nuw %struct.ImageParameters, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = icmp eq i32 %20, 1
  %22 = zext i1 %21 to i32
  store i32 %22, ptr %6, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  %23 = load ptr, ptr @img, align 8, !tbaa !13
  %24 = getelementptr inbounds nuw %struct.ImageParameters, ptr %23, i32 0, i32 31
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  store ptr %25, ptr %7, align 8, !tbaa !43
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %26

26:                                               ; preds = %52, %0
  %27 = load i32, ptr %2, align 4, !tbaa !40
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.RD_DATA, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %2, align 4, !tbaa !40
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x [16 x i16]], ptr %31, i64 0, i64 %33
  %35 = getelementptr inbounds [16 x i16], ptr %34, i64 0, i64 0
  %36 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %37 = getelementptr inbounds nuw %struct.storable_picture, ptr %36, i32 0, i32 29
  %38 = load ptr, ptr %37, align 8, !tbaa !100
  %39 = load ptr, ptr @img, align 8, !tbaa !13
  %40 = getelementptr inbounds nuw %struct.ImageParameters, ptr %39, i32 0, i32 40
  %41 = load i32, ptr %40, align 4, !tbaa !96
  %42 = load i32, ptr %2, align 4, !tbaa !40
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %38, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !65
  %47 = load ptr, ptr @img, align 8, !tbaa !13
  %48 = getelementptr inbounds nuw %struct.ImageParameters, ptr %47, i32 0, i32 39
  %49 = load i32, ptr %48, align 8, !tbaa !95
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %46, i64 %50
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %35, ptr align 2 %51, i64 32, i1 false)
  br label %52

52:                                               ; preds = %29
  %53 = load i32, ptr %2, align 4, !tbaa !40
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %2, align 4, !tbaa !40
  br label %26, !llvm.loop !386

55:                                               ; preds = %26
  %56 = load ptr, ptr @img, align 8, !tbaa !13
  %57 = getelementptr inbounds nuw %struct.ImageParameters, ptr %56, i32 0, i32 160
  %58 = load i32, ptr %57, align 8, !tbaa !252
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %130

60:                                               ; preds = %55
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %61

61:                                               ; preds = %126, %60
  %62 = load i32, ptr %2, align 4, !tbaa !40
  %63 = load ptr, ptr @img, align 8, !tbaa !13
  %64 = getelementptr inbounds nuw %struct.ImageParameters, ptr %63, i32 0, i32 163
  %65 = load i32, ptr %64, align 4, !tbaa !24
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %129

67:                                               ; preds = %61
  %68 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %69 = getelementptr inbounds nuw %struct.RD_DATA, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %2, align 4, !tbaa !40
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [16 x [16 x i16]], ptr %69, i64 0, i64 %71
  %73 = getelementptr inbounds [16 x i16], ptr %72, i64 0, i64 0
  %74 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %75 = getelementptr inbounds nuw %struct.storable_picture, ptr %74, i32 0, i32 33
  %76 = load ptr, ptr %75, align 8, !tbaa !256
  %77 = getelementptr inbounds ptr, ptr %76, i64 0
  %78 = load ptr, ptr %77, align 8, !tbaa !63
  %79 = load ptr, ptr @img, align 8, !tbaa !13
  %80 = getelementptr inbounds nuw %struct.ImageParameters, ptr %79, i32 0, i32 42
  %81 = load i32, ptr %80, align 4, !tbaa !254
  %82 = load i32, ptr %2, align 4, !tbaa !40
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %78, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !65
  %87 = load ptr, ptr @img, align 8, !tbaa !13
  %88 = getelementptr inbounds nuw %struct.ImageParameters, ptr %87, i32 0, i32 41
  %89 = load i32, ptr %88, align 8, !tbaa !290
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %86, i64 %90
  %92 = load ptr, ptr @img, align 8, !tbaa !13
  %93 = getelementptr inbounds nuw %struct.ImageParameters, ptr %92, i32 0, i32 162
  %94 = load i32, ptr %93, align 8, !tbaa !36
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %73, ptr align 2 %91, i64 %96, i1 false)
  %97 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %98 = getelementptr inbounds nuw %struct.RD_DATA, ptr %97, i32 0, i32 3
  %99 = load i32, ptr %2, align 4, !tbaa !40
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [16 x [16 x i16]], ptr %98, i64 0, i64 %100
  %102 = getelementptr inbounds [16 x i16], ptr %101, i64 0, i64 0
  %103 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %104 = getelementptr inbounds nuw %struct.storable_picture, ptr %103, i32 0, i32 33
  %105 = load ptr, ptr %104, align 8, !tbaa !256
  %106 = getelementptr inbounds ptr, ptr %105, i64 1
  %107 = load ptr, ptr %106, align 8, !tbaa !63
  %108 = load ptr, ptr @img, align 8, !tbaa !13
  %109 = getelementptr inbounds nuw %struct.ImageParameters, ptr %108, i32 0, i32 42
  %110 = load i32, ptr %109, align 4, !tbaa !254
  %111 = load i32, ptr %2, align 4, !tbaa !40
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %107, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !65
  %116 = load ptr, ptr @img, align 8, !tbaa !13
  %117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %116, i32 0, i32 41
  %118 = load i32, ptr %117, align 8, !tbaa !290
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i16, ptr %115, i64 %119
  %121 = load ptr, ptr @img, align 8, !tbaa !13
  %122 = getelementptr inbounds nuw %struct.ImageParameters, ptr %121, i32 0, i32 162
  %123 = load i32, ptr %122, align 8, !tbaa !36
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %102, ptr align 2 %120, i64 %125, i1 false)
  br label %126

126:                                              ; preds = %67
  %127 = load i32, ptr %2, align 4, !tbaa !40
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %2, align 4, !tbaa !40
  br label %61, !llvm.loop !387

129:                                              ; preds = %61
  br label %130

130:                                              ; preds = %129, %55
  %131 = load i32, ptr %5, align 4, !tbaa !40
  %132 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %133 = getelementptr inbounds nuw %struct.RD_DATA, ptr %132, i32 0, i32 15
  store i32 %131, ptr %133, align 8, !tbaa !306
  %134 = load ptr, ptr @img, align 8, !tbaa !13
  %135 = getelementptr inbounds nuw %struct.ImageParameters, ptr %134, i32 0, i32 94
  %136 = load i32, ptr %135, align 4, !tbaa !263
  %137 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %138 = getelementptr inbounds nuw %struct.RD_DATA, ptr %137, i32 0, i32 19
  store i32 %136, ptr %138, align 8, !tbaa !307
  %139 = load ptr, ptr %4, align 8, !tbaa !153
  %140 = getelementptr inbounds nuw %struct.macroblock, ptr %139, i32 0, i32 12
  %141 = load i32, ptr %140, align 4, !tbaa !195
  %142 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %143 = getelementptr inbounds nuw %struct.RD_DATA, ptr %142, i32 0, i32 13
  store i32 %141, ptr %143, align 8, !tbaa !308
  %144 = load ptr, ptr %4, align 8, !tbaa !153
  %145 = getelementptr inbounds nuw %struct.macroblock, ptr %144, i32 0, i32 13
  %146 = load i64, ptr %145, align 8, !tbaa !210
  %147 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %148 = getelementptr inbounds nuw %struct.RD_DATA, ptr %147, i32 0, i32 14
  store i64 %146, ptr %148, align 8, !tbaa !309
  %149 = load ptr, ptr %4, align 8, !tbaa !153
  %150 = getelementptr inbounds nuw %struct.macroblock, ptr %149, i32 0, i32 8
  %151 = load i32, ptr %150, align 8, !tbaa !170
  %152 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %153 = getelementptr inbounds nuw %struct.RD_DATA, ptr %152, i32 0, i32 6
  store i32 %151, ptr %153, align 8, !tbaa !310
  %154 = load ptr, ptr %4, align 8, !tbaa !153
  %155 = getelementptr inbounds nuw %struct.macroblock, ptr %154, i32 0, i32 31
  %156 = load i32, ptr %155, align 8, !tbaa !169
  %157 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %158 = getelementptr inbounds nuw %struct.RD_DATA, ptr %157, i32 0, i32 21
  store i32 %156, ptr %158, align 8, !tbaa !328
  %159 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %160 = getelementptr inbounds nuw %struct.RD_DATA, ptr %159, i32 0, i32 6
  %161 = load i32, ptr %160, align 8, !tbaa !310
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %130
  %164 = load i32, ptr %5, align 4, !tbaa !40
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  store i32 0, ptr %5, align 4, !tbaa !40
  %167 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %168 = getelementptr inbounds nuw %struct.RD_DATA, ptr %167, i32 0, i32 15
  store i32 0, ptr %168, align 8, !tbaa !306
  br label %169

169:                                              ; preds = %166, %163, %130
  store i32 0, ptr %1, align 4, !tbaa !40
  br label %170

170:                                              ; preds = %224, %169
  %171 = load i32, ptr %1, align 4, !tbaa !40
  %172 = load ptr, ptr @img, align 8, !tbaa !13
  %173 = getelementptr inbounds nuw %struct.ImageParameters, ptr %172, i32 0, i32 158
  %174 = load i32, ptr %173, align 8, !tbaa !213
  %175 = add nsw i32 4, %174
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %227

177:                                              ; preds = %170
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %178

178:                                              ; preds = %220, %177
  %179 = load i32, ptr %2, align 4, !tbaa !40
  %180 = icmp slt i32 %179, 4
  br i1 %180, label %181, label %223

181:                                              ; preds = %178
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %182

182:                                              ; preds = %216, %181
  %183 = load i32, ptr %3, align 4, !tbaa !40
  %184 = icmp slt i32 %183, 2
  br i1 %184, label %185, label %219

185:                                              ; preds = %182
  %186 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %187 = getelementptr inbounds nuw %struct.RD_DATA, ptr %186, i32 0, i32 4
  %188 = load ptr, ptr %187, align 8, !tbaa !321
  %189 = load i32, ptr %1, align 4, !tbaa !40
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %188, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !3
  %193 = load i32, ptr %2, align 4, !tbaa !40
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %192, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !21
  %197 = load i32, ptr %3, align 4, !tbaa !40
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds ptr, ptr %196, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !92
  %201 = load ptr, ptr @img, align 8, !tbaa !13
  %202 = getelementptr inbounds nuw %struct.ImageParameters, ptr %201, i32 0, i32 53
  %203 = load ptr, ptr %202, align 8, !tbaa !137
  %204 = load i32, ptr %1, align 4, !tbaa !40
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !3
  %208 = load i32, ptr %2, align 4, !tbaa !40
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds ptr, ptr %207, i64 %209
  %211 = load ptr, ptr %210, align 8, !tbaa !21
  %212 = load i32, ptr %3, align 4, !tbaa !40
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds ptr, ptr %211, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %200, ptr align 4 %215, i64 260, i1 false)
  br label %216

216:                                              ; preds = %185
  %217 = load i32, ptr %3, align 4, !tbaa !40
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %3, align 4, !tbaa !40
  br label %182, !llvm.loop !388

219:                                              ; preds = %182
  br label %220

220:                                              ; preds = %219
  %221 = load i32, ptr %2, align 4, !tbaa !40
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr %2, align 4, !tbaa !40
  br label %178, !llvm.loop !389

223:                                              ; preds = %178
  br label %224

224:                                              ; preds = %223
  %225 = load i32, ptr %1, align 4, !tbaa !40
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %1, align 4, !tbaa !40
  br label %170, !llvm.loop !390

227:                                              ; preds = %170
  store i32 0, ptr %1, align 4, !tbaa !40
  br label %228

228:                                              ; preds = %262, %227
  %229 = load i32, ptr %1, align 4, !tbaa !40
  %230 = icmp slt i32 %229, 3
  br i1 %230, label %231, label %265

231:                                              ; preds = %228
  store i32 0, ptr %3, align 4, !tbaa !40
  br label %232

232:                                              ; preds = %258, %231
  %233 = load i32, ptr %3, align 4, !tbaa !40
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %235, label %261

235:                                              ; preds = %232
  %236 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %237 = getelementptr inbounds nuw %struct.RD_DATA, ptr %236, i32 0, i32 5
  %238 = load ptr, ptr %237, align 8, !tbaa !325
  %239 = load i32, ptr %1, align 4, !tbaa !40
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds ptr, ptr %238, i64 %240
  %242 = load ptr, ptr %241, align 8, !tbaa !21
  %243 = load i32, ptr %3, align 4, !tbaa !40
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds ptr, ptr %242, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !92
  %247 = load ptr, ptr @img, align 8, !tbaa !13
  %248 = getelementptr inbounds nuw %struct.ImageParameters, ptr %247, i32 0, i32 54
  %249 = load ptr, ptr %248, align 8, !tbaa !297
  %250 = load i32, ptr %1, align 4, !tbaa !40
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds ptr, ptr %249, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !21
  %254 = load i32, ptr %3, align 4, !tbaa !40
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds ptr, ptr %253, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !92
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %246, ptr align 4 %257, i64 72, i1 false)
  br label %258

258:                                              ; preds = %235
  %259 = load i32, ptr %3, align 4, !tbaa !40
  %260 = add nsw i32 %259, 1
  store i32 %260, ptr %3, align 4, !tbaa !40
  br label %232, !llvm.loop !391

261:                                              ; preds = %232
  br label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %1, align 4, !tbaa !40
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %1, align 4, !tbaa !40
  br label %228, !llvm.loop !392

265:                                              ; preds = %228
  %266 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %267 = getelementptr inbounds nuw %struct.RD_DATA, ptr %266, i32 0, i32 8
  %268 = getelementptr inbounds [4 x i32], ptr %267, i64 0, i64 0
  %269 = load ptr, ptr %4, align 8, !tbaa !153
  %270 = getelementptr inbounds nuw %struct.macroblock, ptr %269, i32 0, i32 14
  %271 = getelementptr inbounds [4 x i32], ptr %270, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %268, ptr align 8 %271, i64 16, i1 false)
  %272 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %273 = getelementptr inbounds nuw %struct.RD_DATA, ptr %272, i32 0, i32 9
  %274 = getelementptr inbounds [4 x i32], ptr %273, i64 0, i64 0
  %275 = load ptr, ptr %4, align 8, !tbaa !153
  %276 = getelementptr inbounds nuw %struct.macroblock, ptr %275, i32 0, i32 15
  %277 = getelementptr inbounds [4 x i32], ptr %276, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %274, ptr align 8 %277, i64 16, i1 false)
  %278 = load i32, ptr %6, align 4, !tbaa !40
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %344

280:                                              ; preds = %265
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %281

281:                                              ; preds = %335, %280
  %282 = load i32, ptr %2, align 4, !tbaa !40
  %283 = icmp slt i32 %282, 4
  br i1 %283, label %284, label %338

284:                                              ; preds = %281
  %285 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %286 = getelementptr inbounds nuw %struct.RD_DATA, ptr %285, i32 0, i32 18
  %287 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %286, i64 0, i64 0
  %288 = load i32, ptr %2, align 4, !tbaa !40
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [4 x [4 x i8]], ptr %287, i64 0, i64 %289
  %291 = getelementptr inbounds [4 x i8], ptr %290, i64 0, i64 0
  %292 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %293 = getelementptr inbounds nuw %struct.storable_picture, ptr %292, i32 0, i32 35
  %294 = load ptr, ptr %293, align 8, !tbaa !178
  %295 = getelementptr inbounds ptr, ptr %294, i64 0
  %296 = load ptr, ptr %295, align 8, !tbaa !43
  %297 = load ptr, ptr @img, align 8, !tbaa !13
  %298 = getelementptr inbounds nuw %struct.ImageParameters, ptr %297, i32 0, i32 38
  %299 = load i32, ptr %298, align 4, !tbaa !68
  %300 = load i32, ptr %2, align 4, !tbaa !40
  %301 = add nsw i32 %299, %300
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %296, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !44
  %305 = load ptr, ptr @img, align 8, !tbaa !13
  %306 = getelementptr inbounds nuw %struct.ImageParameters, ptr %305, i32 0, i32 37
  %307 = load i32, ptr %306, align 8, !tbaa !69
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, ptr %304, i64 %308
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %291, ptr align 1 %309, i64 4, i1 false)
  %310 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %311 = getelementptr inbounds nuw %struct.RD_DATA, ptr %310, i32 0, i32 18
  %312 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %311, i64 0, i64 1
  %313 = load i32, ptr %2, align 4, !tbaa !40
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [4 x [4 x i8]], ptr %312, i64 0, i64 %314
  %316 = getelementptr inbounds [4 x i8], ptr %315, i64 0, i64 0
  %317 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %318 = getelementptr inbounds nuw %struct.storable_picture, ptr %317, i32 0, i32 35
  %319 = load ptr, ptr %318, align 8, !tbaa !178
  %320 = getelementptr inbounds ptr, ptr %319, i64 1
  %321 = load ptr, ptr %320, align 8, !tbaa !43
  %322 = load ptr, ptr @img, align 8, !tbaa !13
  %323 = getelementptr inbounds nuw %struct.ImageParameters, ptr %322, i32 0, i32 38
  %324 = load i32, ptr %323, align 4, !tbaa !68
  %325 = load i32, ptr %2, align 4, !tbaa !40
  %326 = add nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds ptr, ptr %321, i64 %327
  %329 = load ptr, ptr %328, align 8, !tbaa !44
  %330 = load ptr, ptr @img, align 8, !tbaa !13
  %331 = getelementptr inbounds nuw %struct.ImageParameters, ptr %330, i32 0, i32 37
  %332 = load i32, ptr %331, align 8, !tbaa !69
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i8, ptr %329, i64 %333
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %316, ptr align 1 %334, i64 4, i1 false)
  br label %335

335:                                              ; preds = %284
  %336 = load i32, ptr %2, align 4, !tbaa !40
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %2, align 4, !tbaa !40
  br label %281, !llvm.loop !393

338:                                              ; preds = %281
  %339 = load ptr, ptr %4, align 8, !tbaa !153
  %340 = getelementptr inbounds nuw %struct.macroblock, ptr %339, i32 0, i32 33
  %341 = load i16, ptr %340, align 8, !tbaa !154
  %342 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %343 = getelementptr inbounds nuw %struct.RD_DATA, ptr %342, i32 0, i32 7
  store i16 %341, ptr %343, align 4, !tbaa !394
  br label %378

344:                                              ; preds = %265
  store i32 0, ptr %2, align 4, !tbaa !40
  br label %345

345:                                              ; preds = %374, %344
  %346 = load i32, ptr %2, align 4, !tbaa !40
  %347 = icmp slt i32 %346, 4
  br i1 %347, label %348, label %377

348:                                              ; preds = %345
  %349 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %350 = getelementptr inbounds nuw %struct.RD_DATA, ptr %349, i32 0, i32 18
  %351 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %350, i64 0, i64 0
  %352 = load i32, ptr %2, align 4, !tbaa !40
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [4 x [4 x i8]], ptr %351, i64 0, i64 %353
  %355 = getelementptr inbounds [4 x i8], ptr %354, i64 0, i64 0
  %356 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %357 = getelementptr inbounds nuw %struct.storable_picture, ptr %356, i32 0, i32 35
  %358 = load ptr, ptr %357, align 8, !tbaa !178
  %359 = getelementptr inbounds ptr, ptr %358, i64 0
  %360 = load ptr, ptr %359, align 8, !tbaa !43
  %361 = load ptr, ptr @img, align 8, !tbaa !13
  %362 = getelementptr inbounds nuw %struct.ImageParameters, ptr %361, i32 0, i32 38
  %363 = load i32, ptr %362, align 4, !tbaa !68
  %364 = load i32, ptr %2, align 4, !tbaa !40
  %365 = add nsw i32 %363, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds ptr, ptr %360, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !44
  %369 = load ptr, ptr @img, align 8, !tbaa !13
  %370 = getelementptr inbounds nuw %struct.ImageParameters, ptr %369, i32 0, i32 37
  %371 = load i32, ptr %370, align 8, !tbaa !69
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8, ptr %368, i64 %372
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %355, ptr align 1 %373, i64 4, i1 false)
  br label %374

374:                                              ; preds = %348
  %375 = load i32, ptr %2, align 4, !tbaa !40
  %376 = add nsw i32 %375, 1
  store i32 %376, ptr %2, align 4, !tbaa !40
  br label %345, !llvm.loop !395

377:                                              ; preds = %345
  br label %378

378:                                              ; preds = %377, %338
  %379 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %380 = getelementptr inbounds nuw %struct.RD_DATA, ptr %379, i32 0, i32 11
  %381 = getelementptr inbounds [16 x i8], ptr %380, i64 0, i64 0
  %382 = load ptr, ptr %4, align 8, !tbaa !153
  %383 = getelementptr inbounds nuw %struct.macroblock, ptr %382, i32 0, i32 10
  %384 = getelementptr inbounds [16 x i8], ptr %383, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %381, ptr align 4 %384, i64 16, i1 false)
  %385 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %386 = getelementptr inbounds nuw %struct.RD_DATA, ptr %385, i32 0, i32 12
  %387 = getelementptr inbounds [16 x i8], ptr %386, i64 0, i64 0
  %388 = load ptr, ptr %4, align 8, !tbaa !153
  %389 = getelementptr inbounds nuw %struct.macroblock, ptr %388, i32 0, i32 11
  %390 = getelementptr inbounds [16 x i8], ptr %389, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %387, ptr align 4 %390, i64 16, i1 false)
  %391 = load ptr, ptr @img, align 8, !tbaa !13
  %392 = getelementptr inbounds nuw %struct.ImageParameters, ptr %391, i32 0, i32 38
  %393 = load i32, ptr %392, align 4, !tbaa !68
  store i32 %393, ptr %2, align 4, !tbaa !40
  br label %394

394:                                              ; preds = %424, %378
  %395 = load i32, ptr %2, align 4, !tbaa !40
  %396 = load ptr, ptr @img, align 8, !tbaa !13
  %397 = getelementptr inbounds nuw %struct.ImageParameters, ptr %396, i32 0, i32 38
  %398 = load i32, ptr %397, align 4, !tbaa !68
  %399 = add nsw i32 %398, 4
  %400 = icmp slt i32 %395, %399
  br i1 %400, label %401, label %427

401:                                              ; preds = %394
  %402 = load ptr, ptr @rdopt, align 8, !tbaa !13
  %403 = getelementptr inbounds nuw %struct.RD_DATA, ptr %402, i32 0, i32 10
  %404 = load ptr, ptr %403, align 8, !tbaa !340
  %405 = load i32, ptr %2, align 4, !tbaa !40
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds ptr, ptr %404, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !44
  %409 = load ptr, ptr @img, align 8, !tbaa !13
  %410 = getelementptr inbounds nuw %struct.ImageParameters, ptr %409, i32 0, i32 37
  %411 = load i32, ptr %410, align 8, !tbaa !69
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %408, i64 %412
  %414 = load ptr, ptr %7, align 8, !tbaa !43
  %415 = load i32, ptr %2, align 4, !tbaa !40
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds ptr, ptr %414, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !44
  %419 = load ptr, ptr @img, align 8, !tbaa !13
  %420 = getelementptr inbounds nuw %struct.ImageParameters, ptr %419, i32 0, i32 37
  %421 = load i32, ptr %420, align 8, !tbaa !69
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i8, ptr %418, i64 %422
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %413, ptr align 1 %423, i64 4, i1 false)
  br label %424

424:                                              ; preds = %401
  %425 = load i32, ptr %2, align 4, !tbaa !40
  %426 = add nsw i32 %425, 1
  store i32 %426, ptr %2, align 4, !tbaa !40
  br label %394, !llvm.loop !396

427:                                              ; preds = %394
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @store_coding_state_cs_cm() #0 {
  %1 = load ptr, ptr @cs_cm, align 8, !tbaa !13
  call void @store_coding_state(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind
define dso_local void @reset_coding_state_cs_cm() #0 {
  %1 = load ptr, ptr @cs_cm, align 8, !tbaa !13
  call void @reset_coding_state(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind
define dso_local void @assign_enc_picture_params(i32 noundef signext %0, i8 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  store i32 %0, ptr %8, align 4, !tbaa !40
  store i8 %1, ptr %9, align 1, !tbaa !45
  store i32 %2, ptr %10, align 4, !tbaa !40
  store i32 %3, ptr %11, align 4, !tbaa !40
  store i32 %4, ptr %12, align 4, !tbaa !40
  store i32 %5, ptr %13, align 4, !tbaa !40
  store i32 %6, ptr %14, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #8
  %20 = load i32, ptr %8, align 4, !tbaa !40
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %777

22:                                               ; preds = %7
  %23 = load i8, ptr %9, align 1, !tbaa !45
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %103

26:                                               ; preds = %22
  %27 = load ptr, ptr @img, align 8, !tbaa !13
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 38
  %29 = load i32, ptr %28, align 4, !tbaa !68
  %30 = load i32, ptr %10, align 4, !tbaa !40
  %31 = and i32 %30, 2
  %32 = add nsw i32 %29, %31
  store i32 %32, ptr %16, align 4, !tbaa !40
  br label %33

33:                                               ; preds = %99, %26
  %34 = load i32, ptr %16, align 4, !tbaa !40
  %35 = load ptr, ptr @img, align 8, !tbaa !13
  %36 = getelementptr inbounds nuw %struct.ImageParameters, ptr %35, i32 0, i32 38
  %37 = load i32, ptr %36, align 4, !tbaa !68
  %38 = load i32, ptr %10, align 4, !tbaa !40
  %39 = and i32 %38, 2
  %40 = add nsw i32 %37, %39
  %41 = add nsw i32 %40, 4
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %102

43:                                               ; preds = %33
  %44 = load ptr, ptr @img, align 8, !tbaa !13
  %45 = getelementptr inbounds nuw %struct.ImageParameters, ptr %44, i32 0, i32 37
  %46 = load i32, ptr %45, align 8, !tbaa !69
  %47 = load i32, ptr %10, align 4, !tbaa !40
  %48 = and i32 %47, 1
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %46, %49
  store i32 %50, ptr %17, align 4, !tbaa !40
  %51 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %52 = getelementptr inbounds nuw %struct.storable_picture, ptr %51, i32 0, i32 35
  %53 = load ptr, ptr %52, align 8, !tbaa !178
  %54 = getelementptr inbounds ptr, ptr %53, i64 0
  %55 = load ptr, ptr %54, align 8, !tbaa !43
  %56 = load i32, ptr %16, align 4, !tbaa !40
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !44
  %60 = load i32, ptr %17, align 4, !tbaa !40
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  call void @llvm.memset.p0.i64(ptr align 1 %62, i8 -1, i64 4, i1 false)
  %63 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %64 = getelementptr inbounds nuw %struct.storable_picture, ptr %63, i32 0, i32 38
  %65 = load ptr, ptr %64, align 8, !tbaa !224
  %66 = getelementptr inbounds ptr, ptr %65, i64 0
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  %68 = load i32, ptr %16, align 4, !tbaa !40
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = load i32, ptr %17, align 4, !tbaa !40
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr align 2 %75, i8 0, i64 16, i1 false)
  %76 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %76, ptr %15, align 4, !tbaa !40
  br label %77

77:                                               ; preds = %95, %43
  %78 = load i32, ptr %15, align 4, !tbaa !40
  %79 = load i32, ptr %17, align 4, !tbaa !40
  %80 = add nsw i32 %79, 4
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %84 = getelementptr inbounds nuw %struct.storable_picture, ptr %83, i32 0, i32 36
  %85 = load ptr, ptr %84, align 8, !tbaa !188
  %86 = getelementptr inbounds ptr, ptr %85, i64 0
  %87 = load ptr, ptr %86, align 8, !tbaa !189
  %88 = load i32, ptr %16, align 4, !tbaa !40
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !151
  %92 = load i32, ptr %15, align 4, !tbaa !40
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, ptr %91, i64 %93
  store i64 -1, ptr %94, align 8, !tbaa !93
  br label %95

95:                                               ; preds = %82
  %96 = load i32, ptr %15, align 4, !tbaa !40
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %15, align 4, !tbaa !40
  br label %77, !llvm.loop !397

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %16, align 4, !tbaa !40
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %16, align 4, !tbaa !40
  br label %33, !llvm.loop !398

102:                                              ; preds = %33
  br label %395

103:                                              ; preds = %22
  %104 = load ptr, ptr @img, align 8, !tbaa !13
  %105 = getelementptr inbounds nuw %struct.ImageParameters, ptr %104, i32 0, i32 83
  %106 = load i32, ptr %8, align 4, !tbaa !40
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [15 x i16], ptr %105, i64 0, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !67
  %110 = icmp ne i16 %109, 0
  br i1 %110, label %111, label %265

111:                                              ; preds = %103
  store i32 0, ptr %16, align 4, !tbaa !40
  br label %112

112:                                              ; preds = %261, %111
  %113 = load i32, ptr %16, align 4, !tbaa !40
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %264

115:                                              ; preds = %112
  %116 = load ptr, ptr @img, align 8, !tbaa !13
  %117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %116, i32 0, i32 38
  %118 = load i32, ptr %117, align 4, !tbaa !68
  %119 = load i32, ptr %10, align 4, !tbaa !40
  %120 = and i32 %119, 2
  %121 = add nsw i32 %118, %120
  %122 = load i32, ptr %16, align 4, !tbaa !40
  %123 = add nsw i32 %121, %122
  store i32 %123, ptr %18, align 4, !tbaa !40
  %124 = load ptr, ptr @img, align 8, !tbaa !13
  %125 = getelementptr inbounds nuw %struct.ImageParameters, ptr %124, i32 0, i32 37
  %126 = load i32, ptr %125, align 8, !tbaa !69
  %127 = load i32, ptr %10, align 4, !tbaa !40
  %128 = and i32 %127, 1
  %129 = mul nsw i32 %128, 2
  %130 = add nsw i32 %126, %129
  store i32 %130, ptr %17, align 4, !tbaa !40
  %131 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %132 = getelementptr inbounds nuw %struct.storable_picture, ptr %131, i32 0, i32 35
  %133 = load ptr, ptr %132, align 8, !tbaa !178
  %134 = getelementptr inbounds ptr, ptr %133, i64 0
  %135 = load ptr, ptr %134, align 8, !tbaa !43
  %136 = load i32, ptr %18, align 4, !tbaa !40
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds ptr, ptr %135, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !44
  %140 = load i32, ptr %17, align 4, !tbaa !40
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %139, i64 %141
  call void @llvm.memset.p0.i64(ptr align 1 %142, i8 0, i64 4, i1 false)
  store i32 0, ptr %15, align 4, !tbaa !40
  br label %143

143:                                              ; preds = %257, %115
  %144 = load i32, ptr %15, align 4, !tbaa !40
  %145 = icmp slt i32 %144, 4
  br i1 %145, label %146, label %260

146:                                              ; preds = %143
  %147 = load ptr, ptr @img, align 8, !tbaa !13
  %148 = getelementptr inbounds nuw %struct.ImageParameters, ptr %147, i32 0, i32 83
  %149 = load i32, ptr %8, align 4, !tbaa !40
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [15 x i16], ptr %148, i64 0, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !67
  %153 = sext i16 %152 to i32
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %175

155:                                              ; preds = %146
  %156 = load ptr, ptr @img, align 8, !tbaa !13
  %157 = getelementptr inbounds nuw %struct.ImageParameters, ptr %156, i32 0, i32 81
  %158 = load ptr, ptr %157, align 8, !tbaa !227
  %159 = load i32, ptr %15, align 4, !tbaa !40
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %158, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !57
  %163 = load i32, ptr %16, align 4, !tbaa !40
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !59
  %167 = getelementptr inbounds ptr, ptr %166, i64 0
  %168 = load ptr, ptr %167, align 8, !tbaa !61
  %169 = getelementptr inbounds ptr, ptr %168, i64 0
  %170 = load ptr, ptr %169, align 8, !tbaa !63
  %171 = load i32, ptr %8, align 4, !tbaa !40
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !65
  br label %195

175:                                              ; preds = %146
  %176 = load ptr, ptr @img, align 8, !tbaa !13
  %177 = getelementptr inbounds nuw %struct.ImageParameters, ptr %176, i32 0, i32 82
  %178 = load ptr, ptr %177, align 8, !tbaa !228
  %179 = load i32, ptr %15, align 4, !tbaa !40
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %178, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !57
  %183 = load i32, ptr %16, align 4, !tbaa !40
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !59
  %187 = getelementptr inbounds ptr, ptr %186, i64 0
  %188 = load ptr, ptr %187, align 8, !tbaa !61
  %189 = getelementptr inbounds ptr, ptr %188, i64 0
  %190 = load ptr, ptr %189, align 8, !tbaa !63
  %191 = load i32, ptr %8, align 4, !tbaa !40
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !65
  br label %195

195:                                              ; preds = %175, %155
  %196 = phi ptr [ %174, %155 ], [ %194, %175 ]
  store ptr %196, ptr %19, align 8, !tbaa !65
  %197 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %198 = getelementptr inbounds nuw %struct.storable_picture, ptr %197, i32 0, i32 6
  %199 = load i32, ptr %11, align 4, !tbaa !40
  %200 = add nsw i32 0, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [6 x [33 x i64]], ptr %198, i64 0, i64 %201
  %203 = getelementptr inbounds [33 x i64], ptr %202, i64 0, i64 0
  %204 = load i64, ptr %203, align 8, !tbaa !93
  %205 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %206 = getelementptr inbounds nuw %struct.storable_picture, ptr %205, i32 0, i32 36
  %207 = load ptr, ptr %206, align 8, !tbaa !188
  %208 = getelementptr inbounds ptr, ptr %207, i64 0
  %209 = load ptr, ptr %208, align 8, !tbaa !189
  %210 = load i32, ptr %18, align 4, !tbaa !40
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %209, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !151
  %214 = load i32, ptr %17, align 4, !tbaa !40
  %215 = load i32, ptr %15, align 4, !tbaa !40
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, ptr %213, i64 %217
  store i64 %204, ptr %218, align 8, !tbaa !93
  %219 = load ptr, ptr %19, align 8, !tbaa !65
  %220 = getelementptr inbounds i16, ptr %219, i64 0
  %221 = load i16, ptr %220, align 2, !tbaa !67
  %222 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %223 = getelementptr inbounds nuw %struct.storable_picture, ptr %222, i32 0, i32 38
  %224 = load ptr, ptr %223, align 8, !tbaa !224
  %225 = getelementptr inbounds ptr, ptr %224, i64 0
  %226 = load ptr, ptr %225, align 8, !tbaa !61
  %227 = load i32, ptr %18, align 4, !tbaa !40
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds ptr, ptr %226, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !63
  %231 = load i32, ptr %17, align 4, !tbaa !40
  %232 = load i32, ptr %15, align 4, !tbaa !40
  %233 = add nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %230, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !65
  %237 = getelementptr inbounds i16, ptr %236, i64 0
  store i16 %221, ptr %237, align 2, !tbaa !67
  %238 = load ptr, ptr %19, align 8, !tbaa !65
  %239 = getelementptr inbounds i16, ptr %238, i64 1
  %240 = load i16, ptr %239, align 2, !tbaa !67
  %241 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %242 = getelementptr inbounds nuw %struct.storable_picture, ptr %241, i32 0, i32 38
  %243 = load ptr, ptr %242, align 8, !tbaa !224
  %244 = getelementptr inbounds ptr, ptr %243, i64 0
  %245 = load ptr, ptr %244, align 8, !tbaa !61
  %246 = load i32, ptr %18, align 4, !tbaa !40
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %245, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !63
  %250 = load i32, ptr %17, align 4, !tbaa !40
  %251 = load i32, ptr %15, align 4, !tbaa !40
  %252 = add nsw i32 %250, %251
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %249, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !65
  %256 = getelementptr inbounds i16, ptr %255, i64 1
  store i16 %240, ptr %256, align 2, !tbaa !67
  br label %257

257:                                              ; preds = %195
  %258 = load i32, ptr %15, align 4, !tbaa !40
  %259 = add nsw i32 %258, 1
  store i32 %259, ptr %15, align 4, !tbaa !40
  br label %143, !llvm.loop !399

260:                                              ; preds = %143
  br label %261

261:                                              ; preds = %260
  %262 = load i32, ptr %16, align 4, !tbaa !40
  %263 = add nsw i32 %262, 1
  store i32 %263, ptr %16, align 4, !tbaa !40
  br label %112, !llvm.loop !400

264:                                              ; preds = %112
  br label %394

265:                                              ; preds = %103
  store i32 0, ptr %16, align 4, !tbaa !40
  br label %266

266:                                              ; preds = %390, %265
  %267 = load i32, ptr %16, align 4, !tbaa !40
  %268 = icmp slt i32 %267, 4
  br i1 %268, label %269, label %393

269:                                              ; preds = %266
  %270 = load ptr, ptr @img, align 8, !tbaa !13
  %271 = getelementptr inbounds nuw %struct.ImageParameters, ptr %270, i32 0, i32 38
  %272 = load i32, ptr %271, align 4, !tbaa !68
  %273 = load i32, ptr %10, align 4, !tbaa !40
  %274 = and i32 %273, 2
  %275 = add nsw i32 %272, %274
  %276 = load i32, ptr %16, align 4, !tbaa !40
  %277 = add nsw i32 %275, %276
  store i32 %277, ptr %18, align 4, !tbaa !40
  %278 = load ptr, ptr @img, align 8, !tbaa !13
  %279 = getelementptr inbounds nuw %struct.ImageParameters, ptr %278, i32 0, i32 37
  %280 = load i32, ptr %279, align 8, !tbaa !69
  %281 = load i32, ptr %10, align 4, !tbaa !40
  %282 = and i32 %281, 1
  %283 = mul nsw i32 %282, 2
  %284 = add nsw i32 %280, %283
  store i32 %284, ptr %17, align 4, !tbaa !40
  %285 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %286 = getelementptr inbounds nuw %struct.storable_picture, ptr %285, i32 0, i32 35
  %287 = load ptr, ptr %286, align 8, !tbaa !178
  %288 = getelementptr inbounds ptr, ptr %287, i64 0
  %289 = load ptr, ptr %288, align 8, !tbaa !43
  %290 = load i32, ptr %18, align 4, !tbaa !40
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds ptr, ptr %289, i64 %291
  %293 = load ptr, ptr %292, align 8, !tbaa !44
  %294 = load i32, ptr %17, align 4, !tbaa !40
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, ptr %293, i64 %295
  %297 = load i32, ptr %12, align 4, !tbaa !40
  %298 = trunc i32 %297 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %296, i8 %298, i64 4, i1 false)
  store i32 0, ptr %15, align 4, !tbaa !40
  br label %299

299:                                              ; preds = %386, %269
  %300 = load i32, ptr %15, align 4, !tbaa !40
  %301 = icmp slt i32 %300, 4
  br i1 %301, label %302, label %389

302:                                              ; preds = %299
  %303 = load ptr, ptr @img, align 8, !tbaa !13
  %304 = getelementptr inbounds nuw %struct.ImageParameters, ptr %303, i32 0, i32 80
  %305 = load ptr, ptr %304, align 8, !tbaa !56
  %306 = load i32, ptr %16, align 4, !tbaa !40
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds ptr, ptr %305, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !57
  %310 = load i32, ptr %15, align 4, !tbaa !40
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds ptr, ptr %309, i64 %311
  %313 = load ptr, ptr %312, align 8, !tbaa !59
  %314 = getelementptr inbounds ptr, ptr %313, i64 0
  %315 = load ptr, ptr %314, align 8, !tbaa !61
  %316 = load i32, ptr %12, align 4, !tbaa !40
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %315, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !63
  %320 = load i32, ptr %8, align 4, !tbaa !40
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds ptr, ptr %319, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !65
  store ptr %323, ptr %19, align 8, !tbaa !65
  %324 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %325 = getelementptr inbounds nuw %struct.storable_picture, ptr %324, i32 0, i32 6
  %326 = load i32, ptr %11, align 4, !tbaa !40
  %327 = add nsw i32 0, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [6 x [33 x i64]], ptr %325, i64 0, i64 %328
  %330 = load i32, ptr %12, align 4, !tbaa !40
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [33 x i64], ptr %329, i64 0, i64 %331
  %333 = load i64, ptr %332, align 8, !tbaa !93
  %334 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %335 = getelementptr inbounds nuw %struct.storable_picture, ptr %334, i32 0, i32 36
  %336 = load ptr, ptr %335, align 8, !tbaa !188
  %337 = getelementptr inbounds ptr, ptr %336, i64 0
  %338 = load ptr, ptr %337, align 8, !tbaa !189
  %339 = load i32, ptr %18, align 4, !tbaa !40
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds ptr, ptr %338, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !151
  %343 = load i32, ptr %17, align 4, !tbaa !40
  %344 = load i32, ptr %15, align 4, !tbaa !40
  %345 = add nsw i32 %343, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, ptr %342, i64 %346
  store i64 %333, ptr %347, align 8, !tbaa !93
  %348 = load ptr, ptr %19, align 8, !tbaa !65
  %349 = getelementptr inbounds i16, ptr %348, i64 0
  %350 = load i16, ptr %349, align 2, !tbaa !67
  %351 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %352 = getelementptr inbounds nuw %struct.storable_picture, ptr %351, i32 0, i32 38
  %353 = load ptr, ptr %352, align 8, !tbaa !224
  %354 = getelementptr inbounds ptr, ptr %353, i64 0
  %355 = load ptr, ptr %354, align 8, !tbaa !61
  %356 = load i32, ptr %18, align 4, !tbaa !40
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds ptr, ptr %355, i64 %357
  %359 = load ptr, ptr %358, align 8, !tbaa !63
  %360 = load i32, ptr %17, align 4, !tbaa !40
  %361 = load i32, ptr %15, align 4, !tbaa !40
  %362 = add nsw i32 %360, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds ptr, ptr %359, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !65
  %366 = getelementptr inbounds i16, ptr %365, i64 0
  store i16 %350, ptr %366, align 2, !tbaa !67
  %367 = load ptr, ptr %19, align 8, !tbaa !65
  %368 = getelementptr inbounds i16, ptr %367, i64 1
  %369 = load i16, ptr %368, align 2, !tbaa !67
  %370 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %371 = getelementptr inbounds nuw %struct.storable_picture, ptr %370, i32 0, i32 38
  %372 = load ptr, ptr %371, align 8, !tbaa !224
  %373 = getelementptr inbounds ptr, ptr %372, i64 0
  %374 = load ptr, ptr %373, align 8, !tbaa !61
  %375 = load i32, ptr %18, align 4, !tbaa !40
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds ptr, ptr %374, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !63
  %379 = load i32, ptr %17, align 4, !tbaa !40
  %380 = load i32, ptr %15, align 4, !tbaa !40
  %381 = add nsw i32 %379, %380
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %378, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !65
  %385 = getelementptr inbounds i16, ptr %384, i64 1
  store i16 %369, ptr %385, align 2, !tbaa !67
  br label %386

386:                                              ; preds = %302
  %387 = load i32, ptr %15, align 4, !tbaa !40
  %388 = add nsw i32 %387, 1
  store i32 %388, ptr %15, align 4, !tbaa !40
  br label %299, !llvm.loop !401

389:                                              ; preds = %299
  br label %390

390:                                              ; preds = %389
  %391 = load i32, ptr %16, align 4, !tbaa !40
  %392 = add nsw i32 %391, 1
  store i32 %392, ptr %16, align 4, !tbaa !40
  br label %266, !llvm.loop !402

393:                                              ; preds = %266
  br label %394

394:                                              ; preds = %393, %264
  br label %395

395:                                              ; preds = %394, %102
  %396 = load i32, ptr %14, align 4, !tbaa !40
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %776

398:                                              ; preds = %395
  %399 = load i8, ptr %9, align 1, !tbaa !45
  %400 = sext i8 %399 to i32
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %479

402:                                              ; preds = %398
  %403 = load ptr, ptr @img, align 8, !tbaa !13
  %404 = getelementptr inbounds nuw %struct.ImageParameters, ptr %403, i32 0, i32 38
  %405 = load i32, ptr %404, align 4, !tbaa !68
  %406 = load i32, ptr %10, align 4, !tbaa !40
  %407 = and i32 %406, 2
  %408 = add nsw i32 %405, %407
  store i32 %408, ptr %16, align 4, !tbaa !40
  br label %409

409:                                              ; preds = %475, %402
  %410 = load i32, ptr %16, align 4, !tbaa !40
  %411 = load ptr, ptr @img, align 8, !tbaa !13
  %412 = getelementptr inbounds nuw %struct.ImageParameters, ptr %411, i32 0, i32 38
  %413 = load i32, ptr %412, align 4, !tbaa !68
  %414 = load i32, ptr %10, align 4, !tbaa !40
  %415 = and i32 %414, 2
  %416 = add nsw i32 %413, %415
  %417 = add nsw i32 %416, 4
  %418 = icmp slt i32 %410, %417
  br i1 %418, label %419, label %478

419:                                              ; preds = %409
  %420 = load ptr, ptr @img, align 8, !tbaa !13
  %421 = getelementptr inbounds nuw %struct.ImageParameters, ptr %420, i32 0, i32 37
  %422 = load i32, ptr %421, align 8, !tbaa !69
  %423 = load i32, ptr %10, align 4, !tbaa !40
  %424 = and i32 %423, 1
  %425 = mul nsw i32 %424, 2
  %426 = add nsw i32 %422, %425
  store i32 %426, ptr %17, align 4, !tbaa !40
  %427 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %428 = getelementptr inbounds nuw %struct.storable_picture, ptr %427, i32 0, i32 35
  %429 = load ptr, ptr %428, align 8, !tbaa !178
  %430 = getelementptr inbounds ptr, ptr %429, i64 1
  %431 = load ptr, ptr %430, align 8, !tbaa !43
  %432 = load i32, ptr %16, align 4, !tbaa !40
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !44
  %436 = load i32, ptr %17, align 4, !tbaa !40
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, ptr %435, i64 %437
  call void @llvm.memset.p0.i64(ptr align 1 %438, i8 -1, i64 4, i1 false)
  %439 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %440 = getelementptr inbounds nuw %struct.storable_picture, ptr %439, i32 0, i32 38
  %441 = load ptr, ptr %440, align 8, !tbaa !224
  %442 = getelementptr inbounds ptr, ptr %441, i64 1
  %443 = load ptr, ptr %442, align 8, !tbaa !61
  %444 = load i32, ptr %16, align 4, !tbaa !40
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds ptr, ptr %443, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !63
  %448 = load i32, ptr %17, align 4, !tbaa !40
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds ptr, ptr %447, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !65
  call void @llvm.memset.p0.i64(ptr align 2 %451, i8 0, i64 16, i1 false)
  %452 = load i32, ptr %17, align 4, !tbaa !40
  store i32 %452, ptr %15, align 4, !tbaa !40
  br label %453

453:                                              ; preds = %471, %419
  %454 = load i32, ptr %15, align 4, !tbaa !40
  %455 = load i32, ptr %17, align 4, !tbaa !40
  %456 = add nsw i32 %455, 4
  %457 = icmp slt i32 %454, %456
  br i1 %457, label %458, label %474

458:                                              ; preds = %453
  %459 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %460 = getelementptr inbounds nuw %struct.storable_picture, ptr %459, i32 0, i32 36
  %461 = load ptr, ptr %460, align 8, !tbaa !188
  %462 = getelementptr inbounds ptr, ptr %461, i64 1
  %463 = load ptr, ptr %462, align 8, !tbaa !189
  %464 = load i32, ptr %16, align 4, !tbaa !40
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %463, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !151
  %468 = load i32, ptr %15, align 4, !tbaa !40
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i64, ptr %467, i64 %469
  store i64 -1, ptr %470, align 8, !tbaa !93
  br label %471

471:                                              ; preds = %458
  %472 = load i32, ptr %15, align 4, !tbaa !40
  %473 = add nsw i32 %472, 1
  store i32 %473, ptr %15, align 4, !tbaa !40
  br label %453, !llvm.loop !403

474:                                              ; preds = %453
  br label %475

475:                                              ; preds = %474
  %476 = load i32, ptr %16, align 4, !tbaa !40
  %477 = add nsw i32 %476, 1
  store i32 %477, ptr %16, align 4, !tbaa !40
  br label %409, !llvm.loop !404

478:                                              ; preds = %409
  br label %775

479:                                              ; preds = %398
  %480 = load ptr, ptr @img, align 8, !tbaa !13
  %481 = getelementptr inbounds nuw %struct.ImageParameters, ptr %480, i32 0, i32 83
  %482 = load i32, ptr %8, align 4, !tbaa !40
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [15 x i16], ptr %481, i64 0, i64 %483
  %485 = load i16, ptr %484, align 2, !tbaa !67
  %486 = icmp ne i16 %485, 0
  br i1 %486, label %487, label %641

487:                                              ; preds = %479
  store i32 0, ptr %16, align 4, !tbaa !40
  br label %488

488:                                              ; preds = %637, %487
  %489 = load i32, ptr %16, align 4, !tbaa !40
  %490 = icmp slt i32 %489, 4
  br i1 %490, label %491, label %640

491:                                              ; preds = %488
  %492 = load ptr, ptr @img, align 8, !tbaa !13
  %493 = getelementptr inbounds nuw %struct.ImageParameters, ptr %492, i32 0, i32 38
  %494 = load i32, ptr %493, align 4, !tbaa !68
  %495 = load i32, ptr %10, align 4, !tbaa !40
  %496 = and i32 %495, 2
  %497 = add nsw i32 %494, %496
  %498 = load i32, ptr %16, align 4, !tbaa !40
  %499 = add nsw i32 %497, %498
  store i32 %499, ptr %18, align 4, !tbaa !40
  %500 = load ptr, ptr @img, align 8, !tbaa !13
  %501 = getelementptr inbounds nuw %struct.ImageParameters, ptr %500, i32 0, i32 37
  %502 = load i32, ptr %501, align 8, !tbaa !69
  %503 = load i32, ptr %10, align 4, !tbaa !40
  %504 = and i32 %503, 1
  %505 = mul nsw i32 %504, 2
  %506 = add nsw i32 %502, %505
  store i32 %506, ptr %17, align 4, !tbaa !40
  %507 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %508 = getelementptr inbounds nuw %struct.storable_picture, ptr %507, i32 0, i32 35
  %509 = load ptr, ptr %508, align 8, !tbaa !178
  %510 = getelementptr inbounds ptr, ptr %509, i64 1
  %511 = load ptr, ptr %510, align 8, !tbaa !43
  %512 = load i32, ptr %18, align 4, !tbaa !40
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds ptr, ptr %511, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !44
  %516 = load i32, ptr %17, align 4, !tbaa !40
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8, ptr %515, i64 %517
  call void @llvm.memset.p0.i64(ptr align 1 %518, i8 0, i64 4, i1 false)
  store i32 0, ptr %15, align 4, !tbaa !40
  br label %519

519:                                              ; preds = %633, %491
  %520 = load i32, ptr %15, align 4, !tbaa !40
  %521 = icmp slt i32 %520, 4
  br i1 %521, label %522, label %636

522:                                              ; preds = %519
  %523 = load ptr, ptr @img, align 8, !tbaa !13
  %524 = getelementptr inbounds nuw %struct.ImageParameters, ptr %523, i32 0, i32 83
  %525 = load i32, ptr %8, align 4, !tbaa !40
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [15 x i16], ptr %524, i64 0, i64 %526
  %528 = load i16, ptr %527, align 2, !tbaa !67
  %529 = sext i16 %528 to i32
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %531, label %551

531:                                              ; preds = %522
  %532 = load ptr, ptr @img, align 8, !tbaa !13
  %533 = getelementptr inbounds nuw %struct.ImageParameters, ptr %532, i32 0, i32 81
  %534 = load ptr, ptr %533, align 8, !tbaa !227
  %535 = load i32, ptr %15, align 4, !tbaa !40
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds ptr, ptr %534, i64 %536
  %538 = load ptr, ptr %537, align 8, !tbaa !57
  %539 = load i32, ptr %16, align 4, !tbaa !40
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds ptr, ptr %538, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !59
  %543 = getelementptr inbounds ptr, ptr %542, i64 1
  %544 = load ptr, ptr %543, align 8, !tbaa !61
  %545 = getelementptr inbounds ptr, ptr %544, i64 0
  %546 = load ptr, ptr %545, align 8, !tbaa !63
  %547 = load i32, ptr %8, align 4, !tbaa !40
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds ptr, ptr %546, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !65
  br label %571

551:                                              ; preds = %522
  %552 = load ptr, ptr @img, align 8, !tbaa !13
  %553 = getelementptr inbounds nuw %struct.ImageParameters, ptr %552, i32 0, i32 82
  %554 = load ptr, ptr %553, align 8, !tbaa !228
  %555 = load i32, ptr %15, align 4, !tbaa !40
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %554, i64 %556
  %558 = load ptr, ptr %557, align 8, !tbaa !57
  %559 = load i32, ptr %16, align 4, !tbaa !40
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %558, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !59
  %563 = getelementptr inbounds ptr, ptr %562, i64 1
  %564 = load ptr, ptr %563, align 8, !tbaa !61
  %565 = getelementptr inbounds ptr, ptr %564, i64 0
  %566 = load ptr, ptr %565, align 8, !tbaa !63
  %567 = load i32, ptr %8, align 4, !tbaa !40
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds ptr, ptr %566, i64 %568
  %570 = load ptr, ptr %569, align 8, !tbaa !65
  br label %571

571:                                              ; preds = %551, %531
  %572 = phi ptr [ %550, %531 ], [ %570, %551 ]
  store ptr %572, ptr %19, align 8, !tbaa !65
  %573 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %574 = getelementptr inbounds nuw %struct.storable_picture, ptr %573, i32 0, i32 6
  %575 = load i32, ptr %11, align 4, !tbaa !40
  %576 = add nsw i32 1, %575
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [6 x [33 x i64]], ptr %574, i64 0, i64 %577
  %579 = getelementptr inbounds [33 x i64], ptr %578, i64 0, i64 0
  %580 = load i64, ptr %579, align 8, !tbaa !93
  %581 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %582 = getelementptr inbounds nuw %struct.storable_picture, ptr %581, i32 0, i32 36
  %583 = load ptr, ptr %582, align 8, !tbaa !188
  %584 = getelementptr inbounds ptr, ptr %583, i64 1
  %585 = load ptr, ptr %584, align 8, !tbaa !189
  %586 = load i32, ptr %18, align 4, !tbaa !40
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds ptr, ptr %585, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !151
  %590 = load i32, ptr %17, align 4, !tbaa !40
  %591 = load i32, ptr %15, align 4, !tbaa !40
  %592 = add nsw i32 %590, %591
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i64, ptr %589, i64 %593
  store i64 %580, ptr %594, align 8, !tbaa !93
  %595 = load ptr, ptr %19, align 8, !tbaa !65
  %596 = getelementptr inbounds i16, ptr %595, i64 0
  %597 = load i16, ptr %596, align 2, !tbaa !67
  %598 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %599 = getelementptr inbounds nuw %struct.storable_picture, ptr %598, i32 0, i32 38
  %600 = load ptr, ptr %599, align 8, !tbaa !224
  %601 = getelementptr inbounds ptr, ptr %600, i64 1
  %602 = load ptr, ptr %601, align 8, !tbaa !61
  %603 = load i32, ptr %18, align 4, !tbaa !40
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds ptr, ptr %602, i64 %604
  %606 = load ptr, ptr %605, align 8, !tbaa !63
  %607 = load i32, ptr %17, align 4, !tbaa !40
  %608 = load i32, ptr %15, align 4, !tbaa !40
  %609 = add nsw i32 %607, %608
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds ptr, ptr %606, i64 %610
  %612 = load ptr, ptr %611, align 8, !tbaa !65
  %613 = getelementptr inbounds i16, ptr %612, i64 0
  store i16 %597, ptr %613, align 2, !tbaa !67
  %614 = load ptr, ptr %19, align 8, !tbaa !65
  %615 = getelementptr inbounds i16, ptr %614, i64 1
  %616 = load i16, ptr %615, align 2, !tbaa !67
  %617 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %618 = getelementptr inbounds nuw %struct.storable_picture, ptr %617, i32 0, i32 38
  %619 = load ptr, ptr %618, align 8, !tbaa !224
  %620 = getelementptr inbounds ptr, ptr %619, i64 1
  %621 = load ptr, ptr %620, align 8, !tbaa !61
  %622 = load i32, ptr %18, align 4, !tbaa !40
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds ptr, ptr %621, i64 %623
  %625 = load ptr, ptr %624, align 8, !tbaa !63
  %626 = load i32, ptr %17, align 4, !tbaa !40
  %627 = load i32, ptr %15, align 4, !tbaa !40
  %628 = add nsw i32 %626, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds ptr, ptr %625, i64 %629
  %631 = load ptr, ptr %630, align 8, !tbaa !65
  %632 = getelementptr inbounds i16, ptr %631, i64 1
  store i16 %616, ptr %632, align 2, !tbaa !67
  br label %633

633:                                              ; preds = %571
  %634 = load i32, ptr %15, align 4, !tbaa !40
  %635 = add nsw i32 %634, 1
  store i32 %635, ptr %15, align 4, !tbaa !40
  br label %519, !llvm.loop !405

636:                                              ; preds = %519
  br label %637

637:                                              ; preds = %636
  %638 = load i32, ptr %16, align 4, !tbaa !40
  %639 = add nsw i32 %638, 1
  store i32 %639, ptr %16, align 4, !tbaa !40
  br label %488, !llvm.loop !406

640:                                              ; preds = %488
  br label %774

641:                                              ; preds = %479
  store i32 0, ptr %16, align 4, !tbaa !40
  br label %642

642:                                              ; preds = %770, %641
  %643 = load i32, ptr %16, align 4, !tbaa !40
  %644 = icmp slt i32 %643, 4
  br i1 %644, label %645, label %773

645:                                              ; preds = %642
  %646 = load ptr, ptr @img, align 8, !tbaa !13
  %647 = getelementptr inbounds nuw %struct.ImageParameters, ptr %646, i32 0, i32 38
  %648 = load i32, ptr %647, align 4, !tbaa !68
  %649 = load i32, ptr %10, align 4, !tbaa !40
  %650 = and i32 %649, 2
  %651 = add nsw i32 %648, %650
  %652 = load i32, ptr %16, align 4, !tbaa !40
  %653 = add nsw i32 %651, %652
  store i32 %653, ptr %18, align 4, !tbaa !40
  %654 = load ptr, ptr @img, align 8, !tbaa !13
  %655 = getelementptr inbounds nuw %struct.ImageParameters, ptr %654, i32 0, i32 37
  %656 = load i32, ptr %655, align 8, !tbaa !69
  %657 = load i32, ptr %10, align 4, !tbaa !40
  %658 = and i32 %657, 1
  %659 = mul nsw i32 %658, 2
  %660 = add nsw i32 %656, %659
  store i32 %660, ptr %17, align 4, !tbaa !40
  %661 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %662 = getelementptr inbounds nuw %struct.storable_picture, ptr %661, i32 0, i32 35
  %663 = load ptr, ptr %662, align 8, !tbaa !178
  %664 = getelementptr inbounds ptr, ptr %663, i64 1
  %665 = load ptr, ptr %664, align 8, !tbaa !43
  %666 = load i32, ptr %18, align 4, !tbaa !40
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds ptr, ptr %665, i64 %667
  %669 = load ptr, ptr %668, align 8, !tbaa !44
  %670 = load i32, ptr %17, align 4, !tbaa !40
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i8, ptr %669, i64 %671
  %673 = load i32, ptr %13, align 4, !tbaa !40
  %674 = trunc i32 %673 to i8
  call void @llvm.memset.p0.i64(ptr align 1 %672, i8 %674, i64 4, i1 false)
  store i32 0, ptr %15, align 4, !tbaa !40
  br label %675

675:                                              ; preds = %766, %645
  %676 = load i32, ptr %15, align 4, !tbaa !40
  %677 = icmp slt i32 %676, 4
  br i1 %677, label %678, label %769

678:                                              ; preds = %675
  %679 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %680 = getelementptr inbounds nuw %struct.storable_picture, ptr %679, i32 0, i32 6
  %681 = load i32, ptr %11, align 4, !tbaa !40
  %682 = add nsw i32 1, %681
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [6 x [33 x i64]], ptr %680, i64 0, i64 %683
  %685 = load i32, ptr %13, align 4, !tbaa !40
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds [33 x i64], ptr %684, i64 0, i64 %686
  %688 = load i64, ptr %687, align 8, !tbaa !93
  %689 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %690 = getelementptr inbounds nuw %struct.storable_picture, ptr %689, i32 0, i32 36
  %691 = load ptr, ptr %690, align 8, !tbaa !188
  %692 = getelementptr inbounds ptr, ptr %691, i64 1
  %693 = load ptr, ptr %692, align 8, !tbaa !189
  %694 = load i32, ptr %18, align 4, !tbaa !40
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds ptr, ptr %693, i64 %695
  %697 = load ptr, ptr %696, align 8, !tbaa !151
  %698 = load i32, ptr %17, align 4, !tbaa !40
  %699 = load i32, ptr %15, align 4, !tbaa !40
  %700 = add nsw i32 %698, %699
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds i64, ptr %697, i64 %701
  store i64 %688, ptr %702, align 8, !tbaa !93
  %703 = load i32, ptr %13, align 4, !tbaa !40
  %704 = icmp sge i32 %703, 0
  br i1 %704, label %705, label %765

705:                                              ; preds = %678
  %706 = load ptr, ptr @img, align 8, !tbaa !13
  %707 = getelementptr inbounds nuw %struct.ImageParameters, ptr %706, i32 0, i32 80
  %708 = load ptr, ptr %707, align 8, !tbaa !56
  %709 = load i32, ptr %16, align 4, !tbaa !40
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds ptr, ptr %708, i64 %710
  %712 = load ptr, ptr %711, align 8, !tbaa !57
  %713 = load i32, ptr %15, align 4, !tbaa !40
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds ptr, ptr %712, i64 %714
  %716 = load ptr, ptr %715, align 8, !tbaa !59
  %717 = getelementptr inbounds ptr, ptr %716, i64 1
  %718 = load ptr, ptr %717, align 8, !tbaa !61
  %719 = load i32, ptr %13, align 4, !tbaa !40
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds ptr, ptr %718, i64 %720
  %722 = load ptr, ptr %721, align 8, !tbaa !63
  %723 = load i32, ptr %8, align 4, !tbaa !40
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds ptr, ptr %722, i64 %724
  %726 = load ptr, ptr %725, align 8, !tbaa !65
  store ptr %726, ptr %19, align 8, !tbaa !65
  %727 = load ptr, ptr %19, align 8, !tbaa !65
  %728 = getelementptr inbounds i16, ptr %727, i64 0
  %729 = load i16, ptr %728, align 2, !tbaa !67
  %730 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %731 = getelementptr inbounds nuw %struct.storable_picture, ptr %730, i32 0, i32 38
  %732 = load ptr, ptr %731, align 8, !tbaa !224
  %733 = getelementptr inbounds ptr, ptr %732, i64 1
  %734 = load ptr, ptr %733, align 8, !tbaa !61
  %735 = load i32, ptr %18, align 4, !tbaa !40
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds ptr, ptr %734, i64 %736
  %738 = load ptr, ptr %737, align 8, !tbaa !63
  %739 = load i32, ptr %17, align 4, !tbaa !40
  %740 = load i32, ptr %15, align 4, !tbaa !40
  %741 = add nsw i32 %739, %740
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds ptr, ptr %738, i64 %742
  %744 = load ptr, ptr %743, align 8, !tbaa !65
  %745 = getelementptr inbounds i16, ptr %744, i64 0
  store i16 %729, ptr %745, align 2, !tbaa !67
  %746 = load ptr, ptr %19, align 8, !tbaa !65
  %747 = getelementptr inbounds i16, ptr %746, i64 1
  %748 = load i16, ptr %747, align 2, !tbaa !67
  %749 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %750 = getelementptr inbounds nuw %struct.storable_picture, ptr %749, i32 0, i32 38
  %751 = load ptr, ptr %750, align 8, !tbaa !224
  %752 = getelementptr inbounds ptr, ptr %751, i64 1
  %753 = load ptr, ptr %752, align 8, !tbaa !61
  %754 = load i32, ptr %18, align 4, !tbaa !40
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds ptr, ptr %753, i64 %755
  %757 = load ptr, ptr %756, align 8, !tbaa !63
  %758 = load i32, ptr %17, align 4, !tbaa !40
  %759 = load i32, ptr %15, align 4, !tbaa !40
  %760 = add nsw i32 %758, %759
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds ptr, ptr %757, i64 %761
  %763 = load ptr, ptr %762, align 8, !tbaa !65
  %764 = getelementptr inbounds i16, ptr %763, i64 1
  store i16 %748, ptr %764, align 2, !tbaa !67
  br label %765

765:                                              ; preds = %705, %678
  br label %766

766:                                              ; preds = %765
  %767 = load i32, ptr %15, align 4, !tbaa !40
  %768 = add nsw i32 %767, 1
  store i32 %768, ptr %15, align 4, !tbaa !40
  br label %675, !llvm.loop !407

769:                                              ; preds = %675
  br label %770

770:                                              ; preds = %769
  %771 = load i32, ptr %16, align 4, !tbaa !40
  %772 = add nsw i32 %771, 1
  store i32 %772, ptr %16, align 4, !tbaa !40
  br label %642, !llvm.loop !408

773:                                              ; preds = %642
  br label %774

774:                                              ; preds = %773, %640
  br label %775

775:                                              ; preds = %774, %478
  br label %776

776:                                              ; preds = %775, %395
  br label %1465

777:                                              ; preds = %7
  %778 = load i32, ptr %8, align 4, !tbaa !40
  %779 = icmp eq i32 %778, 2
  br i1 %779, label %780, label %1122

780:                                              ; preds = %777
  store i32 0, ptr %16, align 4, !tbaa !40
  br label %781

781:                                              ; preds = %1118, %780
  %782 = load i32, ptr %16, align 4, !tbaa !40
  %783 = icmp slt i32 %782, 2
  br i1 %783, label %784, label %1121

784:                                              ; preds = %781
  %785 = load ptr, ptr @img, align 8, !tbaa !13
  %786 = getelementptr inbounds nuw %struct.ImageParameters, ptr %785, i32 0, i32 38
  %787 = load i32, ptr %786, align 4, !tbaa !68
  %788 = load i32, ptr %10, align 4, !tbaa !40
  %789 = mul nsw i32 %788, 2
  %790 = add nsw i32 %787, %789
  %791 = load i32, ptr %16, align 4, !tbaa !40
  %792 = add nsw i32 %790, %791
  store i32 %792, ptr %18, align 4, !tbaa !40
  store i32 0, ptr %15, align 4, !tbaa !40
  br label %793

793:                                              ; preds = %1114, %784
  %794 = load i32, ptr %15, align 4, !tbaa !40
  %795 = icmp slt i32 %794, 4
  br i1 %795, label %796, label %1117

796:                                              ; preds = %793
  %797 = load ptr, ptr @img, align 8, !tbaa !13
  %798 = getelementptr inbounds nuw %struct.ImageParameters, ptr %797, i32 0, i32 37
  %799 = load i32, ptr %798, align 8, !tbaa !69
  %800 = load i32, ptr %15, align 4, !tbaa !40
  %801 = add nsw i32 %799, %800
  store i32 %801, ptr %17, align 4, !tbaa !40
  %802 = load i8, ptr %9, align 1, !tbaa !45
  %803 = sext i8 %802 to i32
  %804 = icmp eq i32 %803, 1
  br i1 %804, label %805, label %858

805:                                              ; preds = %796
  %806 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %807 = getelementptr inbounds nuw %struct.storable_picture, ptr %806, i32 0, i32 35
  %808 = load ptr, ptr %807, align 8, !tbaa !178
  %809 = getelementptr inbounds ptr, ptr %808, i64 0
  %810 = load ptr, ptr %809, align 8, !tbaa !43
  %811 = load i32, ptr %18, align 4, !tbaa !40
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds ptr, ptr %810, i64 %812
  %814 = load ptr, ptr %813, align 8, !tbaa !44
  %815 = load i32, ptr %17, align 4, !tbaa !40
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i8, ptr %814, i64 %816
  store i8 -1, ptr %817, align 1, !tbaa !45
  %818 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %819 = getelementptr inbounds nuw %struct.storable_picture, ptr %818, i32 0, i32 36
  %820 = load ptr, ptr %819, align 8, !tbaa !188
  %821 = getelementptr inbounds ptr, ptr %820, i64 0
  %822 = load ptr, ptr %821, align 8, !tbaa !189
  %823 = load i32, ptr %18, align 4, !tbaa !40
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds ptr, ptr %822, i64 %824
  %826 = load ptr, ptr %825, align 8, !tbaa !151
  %827 = load i32, ptr %17, align 4, !tbaa !40
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds i64, ptr %826, i64 %828
  store i64 -1, ptr %829, align 8, !tbaa !93
  %830 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %831 = getelementptr inbounds nuw %struct.storable_picture, ptr %830, i32 0, i32 38
  %832 = load ptr, ptr %831, align 8, !tbaa !224
  %833 = getelementptr inbounds ptr, ptr %832, i64 0
  %834 = load ptr, ptr %833, align 8, !tbaa !61
  %835 = load i32, ptr %18, align 4, !tbaa !40
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds ptr, ptr %834, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !63
  %839 = load i32, ptr %17, align 4, !tbaa !40
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds ptr, ptr %838, i64 %840
  %842 = load ptr, ptr %841, align 8, !tbaa !65
  %843 = getelementptr inbounds i16, ptr %842, i64 0
  store i16 0, ptr %843, align 2, !tbaa !67
  %844 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %845 = getelementptr inbounds nuw %struct.storable_picture, ptr %844, i32 0, i32 38
  %846 = load ptr, ptr %845, align 8, !tbaa !224
  %847 = getelementptr inbounds ptr, ptr %846, i64 0
  %848 = load ptr, ptr %847, align 8, !tbaa !61
  %849 = load i32, ptr %18, align 4, !tbaa !40
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds ptr, ptr %848, i64 %850
  %852 = load ptr, ptr %851, align 8, !tbaa !63
  %853 = load i32, ptr %17, align 4, !tbaa !40
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds ptr, ptr %852, i64 %854
  %856 = load ptr, ptr %855, align 8, !tbaa !65
  %857 = getelementptr inbounds i16, ptr %856, i64 1
  store i16 0, ptr %857, align 2, !tbaa !67
  br label %953

858:                                              ; preds = %796
  %859 = load ptr, ptr @img, align 8, !tbaa !13
  %860 = getelementptr inbounds nuw %struct.ImageParameters, ptr %859, i32 0, i32 80
  %861 = load ptr, ptr %860, align 8, !tbaa !56
  %862 = load i32, ptr %16, align 4, !tbaa !40
  %863 = load i32, ptr %10, align 4, !tbaa !40
  %864 = mul nsw i32 %863, 2
  %865 = add nsw i32 %862, %864
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds ptr, ptr %861, i64 %866
  %868 = load ptr, ptr %867, align 8, !tbaa !57
  %869 = load i32, ptr %15, align 4, !tbaa !40
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds ptr, ptr %868, i64 %870
  %872 = load ptr, ptr %871, align 8, !tbaa !59
  %873 = getelementptr inbounds ptr, ptr %872, i64 0
  %874 = load ptr, ptr %873, align 8, !tbaa !61
  %875 = load i32, ptr %12, align 4, !tbaa !40
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds ptr, ptr %874, i64 %876
  %878 = load ptr, ptr %877, align 8, !tbaa !63
  %879 = load i32, ptr %8, align 4, !tbaa !40
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds ptr, ptr %878, i64 %880
  %882 = load ptr, ptr %881, align 8, !tbaa !65
  store ptr %882, ptr %19, align 8, !tbaa !65
  %883 = load i32, ptr %12, align 4, !tbaa !40
  %884 = trunc i32 %883 to i8
  %885 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %886 = getelementptr inbounds nuw %struct.storable_picture, ptr %885, i32 0, i32 35
  %887 = load ptr, ptr %886, align 8, !tbaa !178
  %888 = getelementptr inbounds ptr, ptr %887, i64 0
  %889 = load ptr, ptr %888, align 8, !tbaa !43
  %890 = load i32, ptr %18, align 4, !tbaa !40
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds ptr, ptr %889, i64 %891
  %893 = load ptr, ptr %892, align 8, !tbaa !44
  %894 = load i32, ptr %17, align 4, !tbaa !40
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds i8, ptr %893, i64 %895
  store i8 %884, ptr %896, align 1, !tbaa !45
  %897 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %898 = getelementptr inbounds nuw %struct.storable_picture, ptr %897, i32 0, i32 6
  %899 = load i32, ptr %11, align 4, !tbaa !40
  %900 = add nsw i32 0, %899
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [6 x [33 x i64]], ptr %898, i64 0, i64 %901
  %903 = load i32, ptr %12, align 4, !tbaa !40
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [33 x i64], ptr %902, i64 0, i64 %904
  %906 = load i64, ptr %905, align 8, !tbaa !93
  %907 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %908 = getelementptr inbounds nuw %struct.storable_picture, ptr %907, i32 0, i32 36
  %909 = load ptr, ptr %908, align 8, !tbaa !188
  %910 = getelementptr inbounds ptr, ptr %909, i64 0
  %911 = load ptr, ptr %910, align 8, !tbaa !189
  %912 = load i32, ptr %18, align 4, !tbaa !40
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds ptr, ptr %911, i64 %913
  %915 = load ptr, ptr %914, align 8, !tbaa !151
  %916 = load i32, ptr %17, align 4, !tbaa !40
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i64, ptr %915, i64 %917
  store i64 %906, ptr %918, align 8, !tbaa !93
  %919 = load ptr, ptr %19, align 8, !tbaa !65
  %920 = getelementptr inbounds i16, ptr %919, i64 0
  %921 = load i16, ptr %920, align 2, !tbaa !67
  %922 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %923 = getelementptr inbounds nuw %struct.storable_picture, ptr %922, i32 0, i32 38
  %924 = load ptr, ptr %923, align 8, !tbaa !224
  %925 = getelementptr inbounds ptr, ptr %924, i64 0
  %926 = load ptr, ptr %925, align 8, !tbaa !61
  %927 = load i32, ptr %18, align 4, !tbaa !40
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds ptr, ptr %926, i64 %928
  %930 = load ptr, ptr %929, align 8, !tbaa !63
  %931 = load i32, ptr %17, align 4, !tbaa !40
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds ptr, ptr %930, i64 %932
  %934 = load ptr, ptr %933, align 8, !tbaa !65
  %935 = getelementptr inbounds i16, ptr %934, i64 0
  store i16 %921, ptr %935, align 2, !tbaa !67
  %936 = load ptr, ptr %19, align 8, !tbaa !65
  %937 = getelementptr inbounds i16, ptr %936, i64 1
  %938 = load i16, ptr %937, align 2, !tbaa !67
  %939 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %940 = getelementptr inbounds nuw %struct.storable_picture, ptr %939, i32 0, i32 38
  %941 = load ptr, ptr %940, align 8, !tbaa !224
  %942 = getelementptr inbounds ptr, ptr %941, i64 0
  %943 = load ptr, ptr %942, align 8, !tbaa !61
  %944 = load i32, ptr %18, align 4, !tbaa !40
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds ptr, ptr %943, i64 %945
  %947 = load ptr, ptr %946, align 8, !tbaa !63
  %948 = load i32, ptr %17, align 4, !tbaa !40
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds ptr, ptr %947, i64 %949
  %951 = load ptr, ptr %950, align 8, !tbaa !65
  %952 = getelementptr inbounds i16, ptr %951, i64 1
  store i16 %938, ptr %952, align 2, !tbaa !67
  br label %953

953:                                              ; preds = %858, %805
  %954 = load i32, ptr %14, align 4, !tbaa !40
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %1113

956:                                              ; preds = %953
  %957 = load i8, ptr %9, align 1, !tbaa !45
  %958 = sext i8 %957 to i32
  %959 = icmp eq i32 %958, 0
  br i1 %959, label %960, label %1013

960:                                              ; preds = %956
  %961 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %962 = getelementptr inbounds nuw %struct.storable_picture, ptr %961, i32 0, i32 35
  %963 = load ptr, ptr %962, align 8, !tbaa !178
  %964 = getelementptr inbounds ptr, ptr %963, i64 1
  %965 = load ptr, ptr %964, align 8, !tbaa !43
  %966 = load i32, ptr %18, align 4, !tbaa !40
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds ptr, ptr %965, i64 %967
  %969 = load ptr, ptr %968, align 8, !tbaa !44
  %970 = load i32, ptr %17, align 4, !tbaa !40
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds i8, ptr %969, i64 %971
  store i8 -1, ptr %972, align 1, !tbaa !45
  %973 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %974 = getelementptr inbounds nuw %struct.storable_picture, ptr %973, i32 0, i32 36
  %975 = load ptr, ptr %974, align 8, !tbaa !188
  %976 = getelementptr inbounds ptr, ptr %975, i64 1
  %977 = load ptr, ptr %976, align 8, !tbaa !189
  %978 = load i32, ptr %18, align 4, !tbaa !40
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds ptr, ptr %977, i64 %979
  %981 = load ptr, ptr %980, align 8, !tbaa !151
  %982 = load i32, ptr %17, align 4, !tbaa !40
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds i64, ptr %981, i64 %983
  store i64 -1, ptr %984, align 8, !tbaa !93
  %985 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %986 = getelementptr inbounds nuw %struct.storable_picture, ptr %985, i32 0, i32 38
  %987 = load ptr, ptr %986, align 8, !tbaa !224
  %988 = getelementptr inbounds ptr, ptr %987, i64 1
  %989 = load ptr, ptr %988, align 8, !tbaa !61
  %990 = load i32, ptr %18, align 4, !tbaa !40
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds ptr, ptr %989, i64 %991
  %993 = load ptr, ptr %992, align 8, !tbaa !63
  %994 = load i32, ptr %17, align 4, !tbaa !40
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds ptr, ptr %993, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !65
  %998 = getelementptr inbounds i16, ptr %997, i64 0
  store i16 0, ptr %998, align 2, !tbaa !67
  %999 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1000 = getelementptr inbounds nuw %struct.storable_picture, ptr %999, i32 0, i32 38
  %1001 = load ptr, ptr %1000, align 8, !tbaa !224
  %1002 = getelementptr inbounds ptr, ptr %1001, i64 1
  %1003 = load ptr, ptr %1002, align 8, !tbaa !61
  %1004 = load i32, ptr %18, align 4, !tbaa !40
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds ptr, ptr %1003, i64 %1005
  %1007 = load ptr, ptr %1006, align 8, !tbaa !63
  %1008 = load i32, ptr %17, align 4, !tbaa !40
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds ptr, ptr %1007, i64 %1009
  %1011 = load ptr, ptr %1010, align 8, !tbaa !65
  %1012 = getelementptr inbounds i16, ptr %1011, i64 1
  store i16 0, ptr %1012, align 2, !tbaa !67
  br label %1112

1013:                                             ; preds = %956
  %1014 = load i32, ptr %13, align 4, !tbaa !40
  %1015 = trunc i32 %1014 to i8
  %1016 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1017 = getelementptr inbounds nuw %struct.storable_picture, ptr %1016, i32 0, i32 35
  %1018 = load ptr, ptr %1017, align 8, !tbaa !178
  %1019 = getelementptr inbounds ptr, ptr %1018, i64 1
  %1020 = load ptr, ptr %1019, align 8, !tbaa !43
  %1021 = load i32, ptr %18, align 4, !tbaa !40
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds ptr, ptr %1020, i64 %1022
  %1024 = load ptr, ptr %1023, align 8, !tbaa !44
  %1025 = load i32, ptr %17, align 4, !tbaa !40
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds i8, ptr %1024, i64 %1026
  store i8 %1015, ptr %1027, align 1, !tbaa !45
  %1028 = load i32, ptr %13, align 4, !tbaa !40
  %1029 = icmp sge i32 %1028, 0
  br i1 %1029, label %1030, label %1111

1030:                                             ; preds = %1013
  %1031 = load ptr, ptr @img, align 8, !tbaa !13
  %1032 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1031, i32 0, i32 80
  %1033 = load ptr, ptr %1032, align 8, !tbaa !56
  %1034 = load i32, ptr %16, align 4, !tbaa !40
  %1035 = load i32, ptr %10, align 4, !tbaa !40
  %1036 = mul nsw i32 %1035, 2
  %1037 = add nsw i32 %1034, %1036
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds ptr, ptr %1033, i64 %1038
  %1040 = load ptr, ptr %1039, align 8, !tbaa !57
  %1041 = load i32, ptr %15, align 4, !tbaa !40
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds ptr, ptr %1040, i64 %1042
  %1044 = load ptr, ptr %1043, align 8, !tbaa !59
  %1045 = getelementptr inbounds ptr, ptr %1044, i64 1
  %1046 = load ptr, ptr %1045, align 8, !tbaa !61
  %1047 = load i32, ptr %13, align 4, !tbaa !40
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds ptr, ptr %1046, i64 %1048
  %1050 = load ptr, ptr %1049, align 8, !tbaa !63
  %1051 = load i32, ptr %8, align 4, !tbaa !40
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds ptr, ptr %1050, i64 %1052
  %1054 = load ptr, ptr %1053, align 8, !tbaa !65
  store ptr %1054, ptr %19, align 8, !tbaa !65
  %1055 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1056 = getelementptr inbounds nuw %struct.storable_picture, ptr %1055, i32 0, i32 6
  %1057 = load i32, ptr %11, align 4, !tbaa !40
  %1058 = add nsw i32 1, %1057
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [6 x [33 x i64]], ptr %1056, i64 0, i64 %1059
  %1061 = load i32, ptr %13, align 4, !tbaa !40
  %1062 = sext i32 %1061 to i64
  %1063 = getelementptr inbounds [33 x i64], ptr %1060, i64 0, i64 %1062
  %1064 = load i64, ptr %1063, align 8, !tbaa !93
  %1065 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1066 = getelementptr inbounds nuw %struct.storable_picture, ptr %1065, i32 0, i32 36
  %1067 = load ptr, ptr %1066, align 8, !tbaa !188
  %1068 = getelementptr inbounds ptr, ptr %1067, i64 1
  %1069 = load ptr, ptr %1068, align 8, !tbaa !189
  %1070 = load i32, ptr %18, align 4, !tbaa !40
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds ptr, ptr %1069, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !151
  %1074 = load i32, ptr %17, align 4, !tbaa !40
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i64, ptr %1073, i64 %1075
  store i64 %1064, ptr %1076, align 8, !tbaa !93
  %1077 = load ptr, ptr %19, align 8, !tbaa !65
  %1078 = getelementptr inbounds i16, ptr %1077, i64 0
  %1079 = load i16, ptr %1078, align 2, !tbaa !67
  %1080 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1081 = getelementptr inbounds nuw %struct.storable_picture, ptr %1080, i32 0, i32 38
  %1082 = load ptr, ptr %1081, align 8, !tbaa !224
  %1083 = getelementptr inbounds ptr, ptr %1082, i64 1
  %1084 = load ptr, ptr %1083, align 8, !tbaa !61
  %1085 = load i32, ptr %18, align 4, !tbaa !40
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds ptr, ptr %1084, i64 %1086
  %1088 = load ptr, ptr %1087, align 8, !tbaa !63
  %1089 = load i32, ptr %17, align 4, !tbaa !40
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds ptr, ptr %1088, i64 %1090
  %1092 = load ptr, ptr %1091, align 8, !tbaa !65
  %1093 = getelementptr inbounds i16, ptr %1092, i64 0
  store i16 %1079, ptr %1093, align 2, !tbaa !67
  %1094 = load ptr, ptr %19, align 8, !tbaa !65
  %1095 = getelementptr inbounds i16, ptr %1094, i64 1
  %1096 = load i16, ptr %1095, align 2, !tbaa !67
  %1097 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1098 = getelementptr inbounds nuw %struct.storable_picture, ptr %1097, i32 0, i32 38
  %1099 = load ptr, ptr %1098, align 8, !tbaa !224
  %1100 = getelementptr inbounds ptr, ptr %1099, i64 1
  %1101 = load ptr, ptr %1100, align 8, !tbaa !61
  %1102 = load i32, ptr %18, align 4, !tbaa !40
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds ptr, ptr %1101, i64 %1103
  %1105 = load ptr, ptr %1104, align 8, !tbaa !63
  %1106 = load i32, ptr %17, align 4, !tbaa !40
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds ptr, ptr %1105, i64 %1107
  %1109 = load ptr, ptr %1108, align 8, !tbaa !65
  %1110 = getelementptr inbounds i16, ptr %1109, i64 1
  store i16 %1096, ptr %1110, align 2, !tbaa !67
  br label %1111

1111:                                             ; preds = %1030, %1013
  br label %1112

1112:                                             ; preds = %1111, %960
  br label %1113

1113:                                             ; preds = %1112, %953
  br label %1114

1114:                                             ; preds = %1113
  %1115 = load i32, ptr %15, align 4, !tbaa !40
  %1116 = add nsw i32 %1115, 1
  store i32 %1116, ptr %15, align 4, !tbaa !40
  br label %793, !llvm.loop !409

1117:                                             ; preds = %793
  br label %1118

1118:                                             ; preds = %1117
  %1119 = load i32, ptr %16, align 4, !tbaa !40
  %1120 = add nsw i32 %1119, 1
  store i32 %1120, ptr %16, align 4, !tbaa !40
  br label %781, !llvm.loop !410

1121:                                             ; preds = %781
  br label %1464

1122:                                             ; preds = %777
  store i32 0, ptr %16, align 4, !tbaa !40
  br label %1123

1123:                                             ; preds = %1460, %1122
  %1124 = load i32, ptr %16, align 4, !tbaa !40
  %1125 = icmp slt i32 %1124, 4
  br i1 %1125, label %1126, label %1463

1126:                                             ; preds = %1123
  %1127 = load ptr, ptr @img, align 8, !tbaa !13
  %1128 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1127, i32 0, i32 38
  %1129 = load i32, ptr %1128, align 4, !tbaa !68
  %1130 = load i32, ptr %16, align 4, !tbaa !40
  %1131 = add nsw i32 %1129, %1130
  store i32 %1131, ptr %18, align 4, !tbaa !40
  store i32 0, ptr %15, align 4, !tbaa !40
  br label %1132

1132:                                             ; preds = %1456, %1126
  %1133 = load i32, ptr %15, align 4, !tbaa !40
  %1134 = icmp slt i32 %1133, 2
  br i1 %1134, label %1135, label %1459

1135:                                             ; preds = %1132
  %1136 = load ptr, ptr @img, align 8, !tbaa !13
  %1137 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1136, i32 0, i32 37
  %1138 = load i32, ptr %1137, align 8, !tbaa !69
  %1139 = load i32, ptr %10, align 4, !tbaa !40
  %1140 = mul nsw i32 %1139, 2
  %1141 = add nsw i32 %1138, %1140
  %1142 = load i32, ptr %15, align 4, !tbaa !40
  %1143 = add nsw i32 %1141, %1142
  store i32 %1143, ptr %17, align 4, !tbaa !40
  %1144 = load i8, ptr %9, align 1, !tbaa !45
  %1145 = sext i8 %1144 to i32
  %1146 = icmp eq i32 %1145, 1
  br i1 %1146, label %1147, label %1200

1147:                                             ; preds = %1135
  %1148 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1149 = getelementptr inbounds nuw %struct.storable_picture, ptr %1148, i32 0, i32 35
  %1150 = load ptr, ptr %1149, align 8, !tbaa !178
  %1151 = getelementptr inbounds ptr, ptr %1150, i64 0
  %1152 = load ptr, ptr %1151, align 8, !tbaa !43
  %1153 = load i32, ptr %18, align 4, !tbaa !40
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds ptr, ptr %1152, i64 %1154
  %1156 = load ptr, ptr %1155, align 8, !tbaa !44
  %1157 = load i32, ptr %17, align 4, !tbaa !40
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds i8, ptr %1156, i64 %1158
  store i8 -1, ptr %1159, align 1, !tbaa !45
  %1160 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1161 = getelementptr inbounds nuw %struct.storable_picture, ptr %1160, i32 0, i32 36
  %1162 = load ptr, ptr %1161, align 8, !tbaa !188
  %1163 = getelementptr inbounds ptr, ptr %1162, i64 0
  %1164 = load ptr, ptr %1163, align 8, !tbaa !189
  %1165 = load i32, ptr %18, align 4, !tbaa !40
  %1166 = sext i32 %1165 to i64
  %1167 = getelementptr inbounds ptr, ptr %1164, i64 %1166
  %1168 = load ptr, ptr %1167, align 8, !tbaa !151
  %1169 = load i32, ptr %17, align 4, !tbaa !40
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds i64, ptr %1168, i64 %1170
  store i64 -1, ptr %1171, align 8, !tbaa !93
  %1172 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1173 = getelementptr inbounds nuw %struct.storable_picture, ptr %1172, i32 0, i32 38
  %1174 = load ptr, ptr %1173, align 8, !tbaa !224
  %1175 = getelementptr inbounds ptr, ptr %1174, i64 0
  %1176 = load ptr, ptr %1175, align 8, !tbaa !61
  %1177 = load i32, ptr %18, align 4, !tbaa !40
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds ptr, ptr %1176, i64 %1178
  %1180 = load ptr, ptr %1179, align 8, !tbaa !63
  %1181 = load i32, ptr %17, align 4, !tbaa !40
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds ptr, ptr %1180, i64 %1182
  %1184 = load ptr, ptr %1183, align 8, !tbaa !65
  %1185 = getelementptr inbounds i16, ptr %1184, i64 0
  store i16 0, ptr %1185, align 2, !tbaa !67
  %1186 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1187 = getelementptr inbounds nuw %struct.storable_picture, ptr %1186, i32 0, i32 38
  %1188 = load ptr, ptr %1187, align 8, !tbaa !224
  %1189 = getelementptr inbounds ptr, ptr %1188, i64 0
  %1190 = load ptr, ptr %1189, align 8, !tbaa !61
  %1191 = load i32, ptr %18, align 4, !tbaa !40
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds ptr, ptr %1190, i64 %1192
  %1194 = load ptr, ptr %1193, align 8, !tbaa !63
  %1195 = load i32, ptr %17, align 4, !tbaa !40
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds ptr, ptr %1194, i64 %1196
  %1198 = load ptr, ptr %1197, align 8, !tbaa !65
  %1199 = getelementptr inbounds i16, ptr %1198, i64 1
  store i16 0, ptr %1199, align 2, !tbaa !67
  br label %1295

1200:                                             ; preds = %1135
  %1201 = load ptr, ptr @img, align 8, !tbaa !13
  %1202 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1201, i32 0, i32 80
  %1203 = load ptr, ptr %1202, align 8, !tbaa !56
  %1204 = load i32, ptr %16, align 4, !tbaa !40
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds ptr, ptr %1203, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !57
  %1208 = load i32, ptr %10, align 4, !tbaa !40
  %1209 = mul nsw i32 %1208, 2
  %1210 = load i32, ptr %15, align 4, !tbaa !40
  %1211 = add nsw i32 %1209, %1210
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds ptr, ptr %1207, i64 %1212
  %1214 = load ptr, ptr %1213, align 8, !tbaa !59
  %1215 = getelementptr inbounds ptr, ptr %1214, i64 0
  %1216 = load ptr, ptr %1215, align 8, !tbaa !61
  %1217 = load i32, ptr %12, align 4, !tbaa !40
  %1218 = sext i32 %1217 to i64
  %1219 = getelementptr inbounds ptr, ptr %1216, i64 %1218
  %1220 = load ptr, ptr %1219, align 8, !tbaa !63
  %1221 = load i32, ptr %8, align 4, !tbaa !40
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds ptr, ptr %1220, i64 %1222
  %1224 = load ptr, ptr %1223, align 8, !tbaa !65
  store ptr %1224, ptr %19, align 8, !tbaa !65
  %1225 = load i32, ptr %12, align 4, !tbaa !40
  %1226 = trunc i32 %1225 to i8
  %1227 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1228 = getelementptr inbounds nuw %struct.storable_picture, ptr %1227, i32 0, i32 35
  %1229 = load ptr, ptr %1228, align 8, !tbaa !178
  %1230 = getelementptr inbounds ptr, ptr %1229, i64 0
  %1231 = load ptr, ptr %1230, align 8, !tbaa !43
  %1232 = load i32, ptr %18, align 4, !tbaa !40
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds ptr, ptr %1231, i64 %1233
  %1235 = load ptr, ptr %1234, align 8, !tbaa !44
  %1236 = load i32, ptr %17, align 4, !tbaa !40
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds i8, ptr %1235, i64 %1237
  store i8 %1226, ptr %1238, align 1, !tbaa !45
  %1239 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1240 = getelementptr inbounds nuw %struct.storable_picture, ptr %1239, i32 0, i32 6
  %1241 = load i32, ptr %11, align 4, !tbaa !40
  %1242 = add nsw i32 0, %1241
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds [6 x [33 x i64]], ptr %1240, i64 0, i64 %1243
  %1245 = load i32, ptr %12, align 4, !tbaa !40
  %1246 = sext i32 %1245 to i64
  %1247 = getelementptr inbounds [33 x i64], ptr %1244, i64 0, i64 %1246
  %1248 = load i64, ptr %1247, align 8, !tbaa !93
  %1249 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1250 = getelementptr inbounds nuw %struct.storable_picture, ptr %1249, i32 0, i32 36
  %1251 = load ptr, ptr %1250, align 8, !tbaa !188
  %1252 = getelementptr inbounds ptr, ptr %1251, i64 0
  %1253 = load ptr, ptr %1252, align 8, !tbaa !189
  %1254 = load i32, ptr %18, align 4, !tbaa !40
  %1255 = sext i32 %1254 to i64
  %1256 = getelementptr inbounds ptr, ptr %1253, i64 %1255
  %1257 = load ptr, ptr %1256, align 8, !tbaa !151
  %1258 = load i32, ptr %17, align 4, !tbaa !40
  %1259 = sext i32 %1258 to i64
  %1260 = getelementptr inbounds i64, ptr %1257, i64 %1259
  store i64 %1248, ptr %1260, align 8, !tbaa !93
  %1261 = load ptr, ptr %19, align 8, !tbaa !65
  %1262 = getelementptr inbounds i16, ptr %1261, i64 0
  %1263 = load i16, ptr %1262, align 2, !tbaa !67
  %1264 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1265 = getelementptr inbounds nuw %struct.storable_picture, ptr %1264, i32 0, i32 38
  %1266 = load ptr, ptr %1265, align 8, !tbaa !224
  %1267 = getelementptr inbounds ptr, ptr %1266, i64 0
  %1268 = load ptr, ptr %1267, align 8, !tbaa !61
  %1269 = load i32, ptr %18, align 4, !tbaa !40
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds ptr, ptr %1268, i64 %1270
  %1272 = load ptr, ptr %1271, align 8, !tbaa !63
  %1273 = load i32, ptr %17, align 4, !tbaa !40
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds ptr, ptr %1272, i64 %1274
  %1276 = load ptr, ptr %1275, align 8, !tbaa !65
  %1277 = getelementptr inbounds i16, ptr %1276, i64 0
  store i16 %1263, ptr %1277, align 2, !tbaa !67
  %1278 = load ptr, ptr %19, align 8, !tbaa !65
  %1279 = getelementptr inbounds i16, ptr %1278, i64 1
  %1280 = load i16, ptr %1279, align 2, !tbaa !67
  %1281 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1282 = getelementptr inbounds nuw %struct.storable_picture, ptr %1281, i32 0, i32 38
  %1283 = load ptr, ptr %1282, align 8, !tbaa !224
  %1284 = getelementptr inbounds ptr, ptr %1283, i64 0
  %1285 = load ptr, ptr %1284, align 8, !tbaa !61
  %1286 = load i32, ptr %18, align 4, !tbaa !40
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds ptr, ptr %1285, i64 %1287
  %1289 = load ptr, ptr %1288, align 8, !tbaa !63
  %1290 = load i32, ptr %17, align 4, !tbaa !40
  %1291 = sext i32 %1290 to i64
  %1292 = getelementptr inbounds ptr, ptr %1289, i64 %1291
  %1293 = load ptr, ptr %1292, align 8, !tbaa !65
  %1294 = getelementptr inbounds i16, ptr %1293, i64 1
  store i16 %1280, ptr %1294, align 2, !tbaa !67
  br label %1295

1295:                                             ; preds = %1200, %1147
  %1296 = load i32, ptr %14, align 4, !tbaa !40
  %1297 = icmp ne i32 %1296, 0
  br i1 %1297, label %1298, label %1455

1298:                                             ; preds = %1295
  %1299 = load i8, ptr %9, align 1, !tbaa !45
  %1300 = sext i8 %1299 to i32
  %1301 = icmp eq i32 %1300, 0
  br i1 %1301, label %1302, label %1355

1302:                                             ; preds = %1298
  %1303 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1304 = getelementptr inbounds nuw %struct.storable_picture, ptr %1303, i32 0, i32 35
  %1305 = load ptr, ptr %1304, align 8, !tbaa !178
  %1306 = getelementptr inbounds ptr, ptr %1305, i64 1
  %1307 = load ptr, ptr %1306, align 8, !tbaa !43
  %1308 = load i32, ptr %18, align 4, !tbaa !40
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds ptr, ptr %1307, i64 %1309
  %1311 = load ptr, ptr %1310, align 8, !tbaa !44
  %1312 = load i32, ptr %17, align 4, !tbaa !40
  %1313 = sext i32 %1312 to i64
  %1314 = getelementptr inbounds i8, ptr %1311, i64 %1313
  store i8 -1, ptr %1314, align 1, !tbaa !45
  %1315 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1316 = getelementptr inbounds nuw %struct.storable_picture, ptr %1315, i32 0, i32 36
  %1317 = load ptr, ptr %1316, align 8, !tbaa !188
  %1318 = getelementptr inbounds ptr, ptr %1317, i64 1
  %1319 = load ptr, ptr %1318, align 8, !tbaa !189
  %1320 = load i32, ptr %18, align 4, !tbaa !40
  %1321 = sext i32 %1320 to i64
  %1322 = getelementptr inbounds ptr, ptr %1319, i64 %1321
  %1323 = load ptr, ptr %1322, align 8, !tbaa !151
  %1324 = load i32, ptr %17, align 4, !tbaa !40
  %1325 = sext i32 %1324 to i64
  %1326 = getelementptr inbounds i64, ptr %1323, i64 %1325
  store i64 -1, ptr %1326, align 8, !tbaa !93
  %1327 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1328 = getelementptr inbounds nuw %struct.storable_picture, ptr %1327, i32 0, i32 38
  %1329 = load ptr, ptr %1328, align 8, !tbaa !224
  %1330 = getelementptr inbounds ptr, ptr %1329, i64 1
  %1331 = load ptr, ptr %1330, align 8, !tbaa !61
  %1332 = load i32, ptr %18, align 4, !tbaa !40
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds ptr, ptr %1331, i64 %1333
  %1335 = load ptr, ptr %1334, align 8, !tbaa !63
  %1336 = load i32, ptr %17, align 4, !tbaa !40
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds ptr, ptr %1335, i64 %1337
  %1339 = load ptr, ptr %1338, align 8, !tbaa !65
  %1340 = getelementptr inbounds i16, ptr %1339, i64 0
  store i16 0, ptr %1340, align 2, !tbaa !67
  %1341 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1342 = getelementptr inbounds nuw %struct.storable_picture, ptr %1341, i32 0, i32 38
  %1343 = load ptr, ptr %1342, align 8, !tbaa !224
  %1344 = getelementptr inbounds ptr, ptr %1343, i64 1
  %1345 = load ptr, ptr %1344, align 8, !tbaa !61
  %1346 = load i32, ptr %18, align 4, !tbaa !40
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds ptr, ptr %1345, i64 %1347
  %1349 = load ptr, ptr %1348, align 8, !tbaa !63
  %1350 = load i32, ptr %17, align 4, !tbaa !40
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds ptr, ptr %1349, i64 %1351
  %1353 = load ptr, ptr %1352, align 8, !tbaa !65
  %1354 = getelementptr inbounds i16, ptr %1353, i64 1
  store i16 0, ptr %1354, align 2, !tbaa !67
  br label %1454

1355:                                             ; preds = %1298
  %1356 = load i32, ptr %13, align 4, !tbaa !40
  %1357 = trunc i32 %1356 to i8
  %1358 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1359 = getelementptr inbounds nuw %struct.storable_picture, ptr %1358, i32 0, i32 35
  %1360 = load ptr, ptr %1359, align 8, !tbaa !178
  %1361 = getelementptr inbounds ptr, ptr %1360, i64 1
  %1362 = load ptr, ptr %1361, align 8, !tbaa !43
  %1363 = load i32, ptr %18, align 4, !tbaa !40
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds ptr, ptr %1362, i64 %1364
  %1366 = load ptr, ptr %1365, align 8, !tbaa !44
  %1367 = load i32, ptr %17, align 4, !tbaa !40
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds i8, ptr %1366, i64 %1368
  store i8 %1357, ptr %1369, align 1, !tbaa !45
  %1370 = load i32, ptr %13, align 4, !tbaa !40
  %1371 = icmp sge i32 %1370, 0
  br i1 %1371, label %1372, label %1453

1372:                                             ; preds = %1355
  %1373 = load ptr, ptr @img, align 8, !tbaa !13
  %1374 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1373, i32 0, i32 80
  %1375 = load ptr, ptr %1374, align 8, !tbaa !56
  %1376 = load i32, ptr %16, align 4, !tbaa !40
  %1377 = sext i32 %1376 to i64
  %1378 = getelementptr inbounds ptr, ptr %1375, i64 %1377
  %1379 = load ptr, ptr %1378, align 8, !tbaa !57
  %1380 = load i32, ptr %10, align 4, !tbaa !40
  %1381 = mul nsw i32 %1380, 2
  %1382 = load i32, ptr %15, align 4, !tbaa !40
  %1383 = add nsw i32 %1381, %1382
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds ptr, ptr %1379, i64 %1384
  %1386 = load ptr, ptr %1385, align 8, !tbaa !59
  %1387 = getelementptr inbounds ptr, ptr %1386, i64 1
  %1388 = load ptr, ptr %1387, align 8, !tbaa !61
  %1389 = load i32, ptr %13, align 4, !tbaa !40
  %1390 = sext i32 %1389 to i64
  %1391 = getelementptr inbounds ptr, ptr %1388, i64 %1390
  %1392 = load ptr, ptr %1391, align 8, !tbaa !63
  %1393 = load i32, ptr %8, align 4, !tbaa !40
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds ptr, ptr %1392, i64 %1394
  %1396 = load ptr, ptr %1395, align 8, !tbaa !65
  store ptr %1396, ptr %19, align 8, !tbaa !65
  %1397 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1398 = getelementptr inbounds nuw %struct.storable_picture, ptr %1397, i32 0, i32 6
  %1399 = load i32, ptr %11, align 4, !tbaa !40
  %1400 = add nsw i32 1, %1399
  %1401 = sext i32 %1400 to i64
  %1402 = getelementptr inbounds [6 x [33 x i64]], ptr %1398, i64 0, i64 %1401
  %1403 = load i32, ptr %13, align 4, !tbaa !40
  %1404 = sext i32 %1403 to i64
  %1405 = getelementptr inbounds [33 x i64], ptr %1402, i64 0, i64 %1404
  %1406 = load i64, ptr %1405, align 8, !tbaa !93
  %1407 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1408 = getelementptr inbounds nuw %struct.storable_picture, ptr %1407, i32 0, i32 36
  %1409 = load ptr, ptr %1408, align 8, !tbaa !188
  %1410 = getelementptr inbounds ptr, ptr %1409, i64 1
  %1411 = load ptr, ptr %1410, align 8, !tbaa !189
  %1412 = load i32, ptr %18, align 4, !tbaa !40
  %1413 = sext i32 %1412 to i64
  %1414 = getelementptr inbounds ptr, ptr %1411, i64 %1413
  %1415 = load ptr, ptr %1414, align 8, !tbaa !151
  %1416 = load i32, ptr %17, align 4, !tbaa !40
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds i64, ptr %1415, i64 %1417
  store i64 %1406, ptr %1418, align 8, !tbaa !93
  %1419 = load ptr, ptr %19, align 8, !tbaa !65
  %1420 = getelementptr inbounds i16, ptr %1419, i64 0
  %1421 = load i16, ptr %1420, align 2, !tbaa !67
  %1422 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1423 = getelementptr inbounds nuw %struct.storable_picture, ptr %1422, i32 0, i32 38
  %1424 = load ptr, ptr %1423, align 8, !tbaa !224
  %1425 = getelementptr inbounds ptr, ptr %1424, i64 1
  %1426 = load ptr, ptr %1425, align 8, !tbaa !61
  %1427 = load i32, ptr %18, align 4, !tbaa !40
  %1428 = sext i32 %1427 to i64
  %1429 = getelementptr inbounds ptr, ptr %1426, i64 %1428
  %1430 = load ptr, ptr %1429, align 8, !tbaa !63
  %1431 = load i32, ptr %17, align 4, !tbaa !40
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds ptr, ptr %1430, i64 %1432
  %1434 = load ptr, ptr %1433, align 8, !tbaa !65
  %1435 = getelementptr inbounds i16, ptr %1434, i64 0
  store i16 %1421, ptr %1435, align 2, !tbaa !67
  %1436 = load ptr, ptr %19, align 8, !tbaa !65
  %1437 = getelementptr inbounds i16, ptr %1436, i64 1
  %1438 = load i16, ptr %1437, align 2, !tbaa !67
  %1439 = load ptr, ptr @enc_picture, align 8, !tbaa !98
  %1440 = getelementptr inbounds nuw %struct.storable_picture, ptr %1439, i32 0, i32 38
  %1441 = load ptr, ptr %1440, align 8, !tbaa !224
  %1442 = getelementptr inbounds ptr, ptr %1441, i64 1
  %1443 = load ptr, ptr %1442, align 8, !tbaa !61
  %1444 = load i32, ptr %18, align 4, !tbaa !40
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds ptr, ptr %1443, i64 %1445
  %1447 = load ptr, ptr %1446, align 8, !tbaa !63
  %1448 = load i32, ptr %17, align 4, !tbaa !40
  %1449 = sext i32 %1448 to i64
  %1450 = getelementptr inbounds ptr, ptr %1447, i64 %1449
  %1451 = load ptr, ptr %1450, align 8, !tbaa !65
  %1452 = getelementptr inbounds i16, ptr %1451, i64 1
  store i16 %1438, ptr %1452, align 2, !tbaa !67
  br label %1453

1453:                                             ; preds = %1372, %1355
  br label %1454

1454:                                             ; preds = %1453, %1302
  br label %1455

1455:                                             ; preds = %1454, %1295
  br label %1456

1456:                                             ; preds = %1455
  %1457 = load i32, ptr %15, align 4, !tbaa !40
  %1458 = add nsw i32 %1457, 1
  store i32 %1458, ptr %15, align 4, !tbaa !40
  br label %1132, !llvm.loop !411

1459:                                             ; preds = %1132
  br label %1460

1460:                                             ; preds = %1459
  %1461 = load i32, ptr %16, align 4, !tbaa !40
  %1462 = add nsw i32 %1461, 1
  store i32 %1462, ptr %16, align 4, !tbaa !40
  br label %1123, !llvm.loop !412

1463:                                             ; preds = %1123
  br label %1464

1464:                                             ; preds = %1463, %1121
  br label %1465

1465:                                             ; preds = %1464, %776
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  ret void
}

; Function Attrs: nounwind
define dso_local void @update_refresh_map(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !40
  store i32 %1, ptr %5, align 4, !tbaa !40
  store ptr %2, ptr %6, align 8, !tbaa !153
  %7 = load ptr, ptr @input, align 8, !tbaa !13
  %8 = getelementptr inbounds nuw %struct.InputParameters, ptr %7, i32 0, i32 128
  %9 = load i32, ptr %8, align 4, !tbaa !413
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %241

11:                                               ; preds = %3
  %12 = load ptr, ptr @input, align 8, !tbaa !13
  %13 = getelementptr inbounds nuw %struct.InputParameters, ptr %12, i32 0, i32 113
  %14 = load i32, ptr %13, align 8, !tbaa !23
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %97

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4, !tbaa !40
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %23 = load ptr, ptr @img, align 8, !tbaa !13
  %24 = getelementptr inbounds nuw %struct.ImageParameters, ptr %23, i32 0, i32 36
  %25 = load i32, ptr %24, align 4, !tbaa !330
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %22, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = load ptr, ptr @img, align 8, !tbaa !13
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 35
  %32 = load i32, ptr %31, align 8, !tbaa !331
  %33 = mul nsw i32 2, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %29, i64 %34
  store i8 %21, ptr %35, align 1, !tbaa !45
  %36 = load i32, ptr %4, align 4, !tbaa !40
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = trunc i32 %39 to i8
  %41 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %42 = load ptr, ptr @img, align 8, !tbaa !13
  %43 = getelementptr inbounds nuw %struct.ImageParameters, ptr %42, i32 0, i32 36
  %44 = load i32, ptr %43, align 4, !tbaa !330
  %45 = mul nsw i32 2, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %41, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = load ptr, ptr @img, align 8, !tbaa !13
  %50 = getelementptr inbounds nuw %struct.ImageParameters, ptr %49, i32 0, i32 35
  %51 = load i32, ptr %50, align 8, !tbaa !331
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %48, i64 %54
  store i8 %40, ptr %55, align 1, !tbaa !45
  %56 = load i32, ptr %4, align 4, !tbaa !40
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = trunc i32 %59 to i8
  %61 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %62 = load ptr, ptr @img, align 8, !tbaa !13
  %63 = getelementptr inbounds nuw %struct.ImageParameters, ptr %62, i32 0, i32 36
  %64 = load i32, ptr %63, align 4, !tbaa !330
  %65 = mul nsw i32 2, %64
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %61, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !44
  %70 = load ptr, ptr @img, align 8, !tbaa !13
  %71 = getelementptr inbounds nuw %struct.ImageParameters, ptr %70, i32 0, i32 35
  %72 = load i32, ptr %71, align 8, !tbaa !331
  %73 = mul nsw i32 2, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %69, i64 %74
  store i8 %60, ptr %75, align 1, !tbaa !45
  %76 = load i32, ptr %4, align 4, !tbaa !40
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = trunc i32 %79 to i8
  %81 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %82 = load ptr, ptr @img, align 8, !tbaa !13
  %83 = getelementptr inbounds nuw %struct.ImageParameters, ptr %82, i32 0, i32 36
  %84 = load i32, ptr %83, align 4, !tbaa !330
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %81, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !44
  %90 = load ptr, ptr @img, align 8, !tbaa !13
  %91 = getelementptr inbounds nuw %struct.ImageParameters, ptr %90, i32 0, i32 35
  %92 = load i32, ptr %91, align 8, !tbaa !331
  %93 = mul nsw i32 2, %92
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %89, i64 %95
  store i8 %80, ptr %96, align 1, !tbaa !45
  br label %240

97:                                               ; preds = %11
  %98 = load ptr, ptr @input, align 8, !tbaa !13
  %99 = getelementptr inbounds nuw %struct.InputParameters, ptr %98, i32 0, i32 113
  %100 = load i32, ptr %99, align 8, !tbaa !23
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %239

102:                                              ; preds = %97
  %103 = load i32, ptr %5, align 4, !tbaa !40
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load ptr, ptr %6, align 8, !tbaa !153
  %107 = getelementptr inbounds nuw %struct.macroblock, ptr %106, i32 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !170
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %6, align 8, !tbaa !153
  %112 = getelementptr inbounds nuw %struct.macroblock, ptr %111, i32 0, i32 8
  %113 = load i32, ptr %112, align 8, !tbaa !170
  %114 = icmp eq i32 %113, 9
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i1 [ true, %105 ], [ %114, %110 ]
  br label %117

117:                                              ; preds = %115, %102
  %118 = phi i1 [ false, %102 ], [ %116, %115 ]
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = trunc i32 %120 to i8
  %122 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %123 = load ptr, ptr @img, align 8, !tbaa !13
  %124 = getelementptr inbounds nuw %struct.ImageParameters, ptr %123, i32 0, i32 36
  %125 = load i32, ptr %124, align 4, !tbaa !330
  %126 = mul nsw i32 2, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %122, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !44
  %130 = load ptr, ptr @img, align 8, !tbaa !13
  %131 = getelementptr inbounds nuw %struct.ImageParameters, ptr %130, i32 0, i32 35
  %132 = load i32, ptr %131, align 8, !tbaa !331
  %133 = mul nsw i32 2, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, ptr %129, i64 %134
  store i8 %121, ptr %135, align 1, !tbaa !45
  %136 = load i32, ptr %5, align 4, !tbaa !40
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %117
  %139 = load ptr, ptr %6, align 8, !tbaa !153
  %140 = getelementptr inbounds nuw %struct.macroblock, ptr %139, i32 0, i32 8
  %141 = load i32, ptr %140, align 8, !tbaa !170
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %6, align 8, !tbaa !153
  %145 = getelementptr inbounds nuw %struct.macroblock, ptr %144, i32 0, i32 8
  %146 = load i32, ptr %145, align 8, !tbaa !170
  %147 = icmp eq i32 %146, 9
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i1 [ true, %138 ], [ %147, %143 ]
  br label %150

150:                                              ; preds = %148, %117
  %151 = phi i1 [ false, %117 ], [ %149, %148 ]
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 1, i32 0
  %154 = trunc i32 %153 to i8
  %155 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %156 = load ptr, ptr @img, align 8, !tbaa !13
  %157 = getelementptr inbounds nuw %struct.ImageParameters, ptr %156, i32 0, i32 36
  %158 = load i32, ptr %157, align 4, !tbaa !330
  %159 = mul nsw i32 2, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %155, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !44
  %163 = load ptr, ptr @img, align 8, !tbaa !13
  %164 = getelementptr inbounds nuw %struct.ImageParameters, ptr %163, i32 0, i32 35
  %165 = load i32, ptr %164, align 8, !tbaa !331
  %166 = mul nsw i32 2, %165
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %162, i64 %168
  store i8 %154, ptr %169, align 1, !tbaa !45
  %170 = load i32, ptr %5, align 4, !tbaa !40
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %150
  %173 = load ptr, ptr %6, align 8, !tbaa !153
  %174 = getelementptr inbounds nuw %struct.macroblock, ptr %173, i32 0, i32 8
  %175 = load i32, ptr %174, align 8, !tbaa !170
  %176 = icmp eq i32 %175, 10
  br i1 %176, label %182, label %177

177:                                              ; preds = %172
  %178 = load ptr, ptr %6, align 8, !tbaa !153
  %179 = getelementptr inbounds nuw %struct.macroblock, ptr %178, i32 0, i32 8
  %180 = load i32, ptr %179, align 8, !tbaa !170
  %181 = icmp eq i32 %180, 9
  br label %182

182:                                              ; preds = %177, %172
  %183 = phi i1 [ true, %172 ], [ %181, %177 ]
  br label %184

184:                                              ; preds = %182, %150
  %185 = phi i1 [ false, %150 ], [ %183, %182 ]
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 0
  %188 = trunc i32 %187 to i8
  %189 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %190 = load ptr, ptr @img, align 8, !tbaa !13
  %191 = getelementptr inbounds nuw %struct.ImageParameters, ptr %190, i32 0, i32 36
  %192 = load i32, ptr %191, align 4, !tbaa !330
  %193 = mul nsw i32 2, %192
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds ptr, ptr %189, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !44
  %198 = load ptr, ptr @img, align 8, !tbaa !13
  %199 = getelementptr inbounds nuw %struct.ImageParameters, ptr %198, i32 0, i32 35
  %200 = load i32, ptr %199, align 8, !tbaa !331
  %201 = mul nsw i32 2, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %197, i64 %202
  store i8 %188, ptr %203, align 1, !tbaa !45
  %204 = load i32, ptr %5, align 4, !tbaa !40
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %184
  %207 = load ptr, ptr %6, align 8, !tbaa !153
  %208 = getelementptr inbounds nuw %struct.macroblock, ptr %207, i32 0, i32 8
  %209 = load i32, ptr %208, align 8, !tbaa !170
  %210 = icmp eq i32 %209, 10
  br i1 %210, label %216, label %211

211:                                              ; preds = %206
  %212 = load ptr, ptr %6, align 8, !tbaa !153
  %213 = getelementptr inbounds nuw %struct.macroblock, ptr %212, i32 0, i32 8
  %214 = load i32, ptr %213, align 8, !tbaa !170
  %215 = icmp eq i32 %214, 9
  br label %216

216:                                              ; preds = %211, %206
  %217 = phi i1 [ true, %206 ], [ %215, %211 ]
  br label %218

218:                                              ; preds = %216, %184
  %219 = phi i1 [ false, %184 ], [ %217, %216 ]
  %220 = zext i1 %219 to i64
  %221 = select i1 %219, i32 1, i32 0
  %222 = trunc i32 %221 to i8
  %223 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %224 = load ptr, ptr @img, align 8, !tbaa !13
  %225 = getelementptr inbounds nuw %struct.ImageParameters, ptr %224, i32 0, i32 36
  %226 = load i32, ptr %225, align 4, !tbaa !330
  %227 = mul nsw i32 2, %226
  %228 = add nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds ptr, ptr %223, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !44
  %232 = load ptr, ptr @img, align 8, !tbaa !13
  %233 = getelementptr inbounds nuw %struct.ImageParameters, ptr %232, i32 0, i32 35
  %234 = load i32, ptr %233, align 8, !tbaa !331
  %235 = mul nsw i32 2, %234
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, ptr %231, i64 %237
  store i8 %222, ptr %238, align 1, !tbaa !45
  br label %239

239:                                              ; preds = %218, %97
  br label %240

240:                                              ; preds = %239, %16
  br label %364

241:                                              ; preds = %3
  %242 = load ptr, ptr @input, align 8, !tbaa !13
  %243 = getelementptr inbounds nuw %struct.InputParameters, ptr %242, i32 0, i32 128
  %244 = load i32, ptr %243, align 4, !tbaa !413
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %363

246:                                              ; preds = %241
  %247 = load ptr, ptr %6, align 8, !tbaa !153
  %248 = getelementptr inbounds nuw %struct.macroblock, ptr %247, i32 0, i32 8
  %249 = load i32, ptr %248, align 8, !tbaa !170
  %250 = icmp eq i32 %249, 10
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load ptr, ptr %6, align 8, !tbaa !153
  %253 = getelementptr inbounds nuw %struct.macroblock, ptr %252, i32 0, i32 8
  %254 = load i32, ptr %253, align 8, !tbaa !170
  %255 = icmp eq i32 %254, 9
  br label %256

256:                                              ; preds = %251, %246
  %257 = phi i1 [ true, %246 ], [ %255, %251 ]
  %258 = zext i1 %257 to i64
  %259 = select i1 %257, i32 1, i32 0
  %260 = trunc i32 %259 to i8
  %261 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %262 = load ptr, ptr @img, align 8, !tbaa !13
  %263 = getelementptr inbounds nuw %struct.ImageParameters, ptr %262, i32 0, i32 36
  %264 = load i32, ptr %263, align 4, !tbaa !330
  %265 = mul nsw i32 2, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds ptr, ptr %261, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !44
  %269 = load ptr, ptr @img, align 8, !tbaa !13
  %270 = getelementptr inbounds nuw %struct.ImageParameters, ptr %269, i32 0, i32 35
  %271 = load i32, ptr %270, align 8, !tbaa !331
  %272 = mul nsw i32 2, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %268, i64 %273
  store i8 %260, ptr %274, align 1, !tbaa !45
  %275 = load ptr, ptr %6, align 8, !tbaa !153
  %276 = getelementptr inbounds nuw %struct.macroblock, ptr %275, i32 0, i32 8
  %277 = load i32, ptr %276, align 8, !tbaa !170
  %278 = icmp eq i32 %277, 10
  br i1 %278, label %284, label %279

279:                                              ; preds = %256
  %280 = load ptr, ptr %6, align 8, !tbaa !153
  %281 = getelementptr inbounds nuw %struct.macroblock, ptr %280, i32 0, i32 8
  %282 = load i32, ptr %281, align 8, !tbaa !170
  %283 = icmp eq i32 %282, 9
  br label %284

284:                                              ; preds = %279, %256
  %285 = phi i1 [ true, %256 ], [ %283, %279 ]
  %286 = zext i1 %285 to i64
  %287 = select i1 %285, i32 1, i32 0
  %288 = trunc i32 %287 to i8
  %289 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %290 = load ptr, ptr @img, align 8, !tbaa !13
  %291 = getelementptr inbounds nuw %struct.ImageParameters, ptr %290, i32 0, i32 36
  %292 = load i32, ptr %291, align 4, !tbaa !330
  %293 = mul nsw i32 2, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds ptr, ptr %289, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !44
  %297 = load ptr, ptr @img, align 8, !tbaa !13
  %298 = getelementptr inbounds nuw %struct.ImageParameters, ptr %297, i32 0, i32 35
  %299 = load i32, ptr %298, align 8, !tbaa !331
  %300 = mul nsw i32 2, %299
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, ptr %296, i64 %302
  store i8 %288, ptr %303, align 1, !tbaa !45
  %304 = load ptr, ptr %6, align 8, !tbaa !153
  %305 = getelementptr inbounds nuw %struct.macroblock, ptr %304, i32 0, i32 8
  %306 = load i32, ptr %305, align 8, !tbaa !170
  %307 = icmp eq i32 %306, 10
  br i1 %307, label %313, label %308

308:                                              ; preds = %284
  %309 = load ptr, ptr %6, align 8, !tbaa !153
  %310 = getelementptr inbounds nuw %struct.macroblock, ptr %309, i32 0, i32 8
  %311 = load i32, ptr %310, align 8, !tbaa !170
  %312 = icmp eq i32 %311, 9
  br label %313

313:                                              ; preds = %308, %284
  %314 = phi i1 [ true, %284 ], [ %312, %308 ]
  %315 = zext i1 %314 to i64
  %316 = select i1 %314, i32 1, i32 0
  %317 = trunc i32 %316 to i8
  %318 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %319 = load ptr, ptr @img, align 8, !tbaa !13
  %320 = getelementptr inbounds nuw %struct.ImageParameters, ptr %319, i32 0, i32 36
  %321 = load i32, ptr %320, align 4, !tbaa !330
  %322 = mul nsw i32 2, %321
  %323 = add nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %318, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !44
  %327 = load ptr, ptr @img, align 8, !tbaa !13
  %328 = getelementptr inbounds nuw %struct.ImageParameters, ptr %327, i32 0, i32 35
  %329 = load i32, ptr %328, align 8, !tbaa !331
  %330 = mul nsw i32 2, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, ptr %326, i64 %331
  store i8 %317, ptr %332, align 1, !tbaa !45
  %333 = load ptr, ptr %6, align 8, !tbaa !153
  %334 = getelementptr inbounds nuw %struct.macroblock, ptr %333, i32 0, i32 8
  %335 = load i32, ptr %334, align 8, !tbaa !170
  %336 = icmp eq i32 %335, 10
  br i1 %336, label %342, label %337

337:                                              ; preds = %313
  %338 = load ptr, ptr %6, align 8, !tbaa !153
  %339 = getelementptr inbounds nuw %struct.macroblock, ptr %338, i32 0, i32 8
  %340 = load i32, ptr %339, align 8, !tbaa !170
  %341 = icmp eq i32 %340, 9
  br label %342

342:                                              ; preds = %337, %313
  %343 = phi i1 [ true, %313 ], [ %341, %337 ]
  %344 = zext i1 %343 to i64
  %345 = select i1 %343, i32 1, i32 0
  %346 = trunc i32 %345 to i8
  %347 = load ptr, ptr @refresh_map, align 8, !tbaa !43
  %348 = load ptr, ptr @img, align 8, !tbaa !13
  %349 = getelementptr inbounds nuw %struct.ImageParameters, ptr %348, i32 0, i32 36
  %350 = load i32, ptr %349, align 4, !tbaa !330
  %351 = mul nsw i32 2, %350
  %352 = add nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds ptr, ptr %347, i64 %353
  %355 = load ptr, ptr %354, align 8, !tbaa !44
  %356 = load ptr, ptr @img, align 8, !tbaa !13
  %357 = getelementptr inbounds nuw %struct.ImageParameters, ptr %356, i32 0, i32 35
  %358 = load i32, ptr %357, align 8, !tbaa !331
  %359 = mul nsw i32 2, %358
  %360 = add nsw i32 %359, 1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i8, ptr %355, i64 %361
  store i8 %346, ptr %362, align 1, !tbaa !45
  br label %363

363:                                              ; preds = %342, %241
  br label %364

364:                                              ; preds = %363, %240
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p3 int", !5, i64 0}
!5 = !{!"any p3 pointer", !6, i64 0}
!6 = !{!"any p2 pointer", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p4 int", !12, i64 0}
!12 = !{!"any p4 pointer", !5, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !16, i64 5100}
!15 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 136, !8, i64 200, !16, i64 264, !16, i64 268, !16, i64 272, !16, i64 276, !8, i64 280, !8, i64 536, !8, i64 792, !8, i64 1048, !8, i64 1304, !16, i64 1560, !16, i64 1564, !16, i64 1568, !16, i64 1572, !16, i64 1576, !16, i64 1580, !8, i64 1584, !16, i64 2084, !16, i64 2088, !16, i64 2092, !16, i64 2096, !16, i64 2100, !16, i64 2104, !16, i64 2108, !16, i64 2112, !16, i64 2116, !16, i64 2120, !16, i64 2124, !16, i64 2128, !16, i64 2132, !16, i64 2136, !16, i64 2140, !16, i64 2144, !16, i64 2148, !16, i64 2152, !16, i64 2156, !8, i64 2160, !8, i64 2416, !8, i64 2672, !16, i64 2928, !16, i64 2932, !16, i64 2936, !16, i64 2940, !16, i64 2944, !16, i64 2948, !16, i64 2952, !16, i64 2956, !16, i64 2960, !16, i64 2964, !16, i64 2968, !16, i64 2972, !8, i64 2976, !16, i64 4000, !16, i64 4004, !16, i64 4008, !16, i64 4012, !16, i64 4016, !16, i64 4020, !16, i64 4024, !16, i64 4028, !16, i64 4032, !16, i64 4036, !16, i64 4040, !16, i64 4044, !16, i64 4048, !16, i64 4052, !16, i64 4056, !16, i64 4060, !16, i64 4064, !16, i64 4068, !16, i64 4072, !16, i64 4076, !17, i64 4080, !16, i64 4088, !16, i64 4092, !16, i64 4096, !16, i64 4100, !16, i64 4104, !16, i64 4108, !16, i64 4112, !16, i64 4116, !16, i64 4120, !16, i64 4124, !16, i64 4128, !16, i64 4132, !16, i64 4136, !16, i64 4140, !16, i64 4144, !16, i64 4148, !16, i64 4152, !16, i64 4156, !16, i64 4160, !16, i64 4164, !16, i64 4168, !16, i64 4172, !16, i64 4176, !16, i64 4180, !16, i64 4184, !16, i64 4188, !8, i64 4192, !8, i64 4448, !16, i64 4704, !16, i64 4708, !16, i64 4712, !16, i64 4716, !16, i64 4720, !16, i64 4724, !16, i64 4728, !16, i64 4732, !16, i64 4736, !16, i64 4740, !16, i64 4744, !16, i64 4748, !16, i64 4752, !16, i64 4756, !16, i64 4760, !16, i64 4764, !16, i64 4768, !16, i64 4772, !8, i64 4776, !16, i64 5032, !16, i64 5036, !18, i64 5040, !18, i64 5048, !19, i64 5056, !18, i64 5064, !16, i64 5072, !16, i64 5076, !16, i64 5080, !16, i64 5084, !16, i64 5088, !16, i64 5092, !16, i64 5096, !16, i64 5100, !16, i64 5104, !16, i64 5108, !16, i64 5112, !16, i64 5116, !16, i64 5120, !16, i64 5124, !16, i64 5128, !16, i64 5132, !16, i64 5136, !17, i64 5144, !17, i64 5152, !17, i64 5160, !8, i64 5168, !16, i64 5208, !8, i64 5212, !16, i64 5244, !16, i64 5248, !16, i64 5252, !16, i64 5256, !16, i64 5260, !16, i64 5264, !16, i64 5268, !16, i64 5272, !16, i64 5276, !16, i64 5280, !16, i64 5284, !16, i64 5288, !8, i64 5296, !8, i64 5344, !8, i64 5392, !16, i64 5648, !16, i64 5652, !16, i64 5656, !16, i64 5660, !8, i64 5664, !8, i64 5704, !16, i64 5744, !16, i64 5748, !16, i64 5752, !16, i64 5756, !16, i64 5760, !16, i64 5764, !16, i64 5768, !16, i64 5772, !16, i64 5776, !8, i64 5780, !16, i64 5792}
!16 = !{!"int", !8, i64 0}
!17 = !{!"double", !8, i64 0}
!18 = !{!"p1 int", !7, i64 0}
!19 = !{!"p1 omnipotent char", !7, i64 0}
!20 = !{!15, !16, i64 5652}
!21 = !{!22, !22, i64 0}
!22 = !{!"p2 int", !6, i64 0}
!23 = !{!15, !16, i64 4168}
!24 = !{!25, !16, i64 15548}
!25 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !16, i64 40, !16, i64 44, !26, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !16, i64 100, !16, i64 104, !16, i64 108, !16, i64 112, !16, i64 116, !16, i64 120, !27, i64 128, !27, i64 136, !16, i64 144, !4, i64 152, !16, i64 160, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !8, i64 208, !8, i64 4816, !8, i64 7376, !8, i64 8528, !8, i64 12624, !8, i64 13136, !11, i64 14160, !4, i64 14168, !4, i64 14176, !4, i64 14184, !11, i64 14192, !11, i64 14200, !7, i64 14208, !7, i64 14216, !28, i64 14224, !18, i64 14232, !18, i64 14240, !16, i64 14248, !16, i64 14252, !16, i64 14256, !16, i64 14260, !8, i64 14264, !16, i64 14328, !16, i64 14332, !16, i64 14336, !16, i64 14340, !16, i64 14344, !17, i64 14352, !16, i64 14360, !16, i64 14364, !16, i64 14368, !16, i64 14372, !29, i64 14376, !29, i64 14384, !29, i64 14392, !29, i64 14400, !8, i64 14408, !16, i64 14440, !16, i64 14444, !16, i64 14448, !16, i64 14452, !16, i64 14456, !16, i64 14460, !16, i64 14464, !16, i64 14468, !8, i64 14472, !16, i64 15240, !16, i64 15244, !16, i64 15248, !16, i64 15252, !16, i64 15256, !16, i64 15260, !16, i64 15264, !16, i64 15268, !16, i64 15272, !16, i64 15276, !16, i64 15280, !16, i64 15284, !16, i64 15288, !8, i64 15292, !16, i64 15296, !16, i64 15300, !8, i64 15304, !16, i64 15312, !16, i64 15316, !16, i64 15320, !16, i64 15324, !16, i64 15328, !16, i64 15332, !16, i64 15336, !16, i64 15340, !16, i64 15344, !16, i64 15348, !16, i64 15352, !16, i64 15356, !16, i64 15360, !16, i64 15364, !16, i64 15368, !16, i64 15372, !32, i64 15376, !16, i64 15384, !16, i64 15388, !16, i64 15392, !16, i64 15396, !16, i64 15400, !16, i64 15404, !16, i64 15408, !16, i64 15412, !16, i64 15416, !16, i64 15420, !16, i64 15424, !16, i64 15428, !16, i64 15432, !16, i64 15436, !16, i64 15440, !16, i64 15444, !16, i64 15448, !16, i64 15452, !16, i64 15456, !16, i64 15460, !16, i64 15464, !16, i64 15468, !16, i64 15472, !33, i64 15480, !34, i64 15488, !4, i64 15496, !33, i64 15504, !16, i64 15512, !16, i64 15516, !16, i64 15520, !16, i64 15524, !16, i64 15528, !16, i64 15532, !16, i64 15536, !16, i64 15540, !16, i64 15544, !16, i64 15548, !8, i64 15552, !8, i64 15576, !16, i64 15584, !16, i64 15588, !35, i64 15592, !16, i64 15596, !16, i64 15600, !16, i64 15604, !16, i64 15608, !16, i64 15612}
!26 = !{!"float", !8, i64 0}
!27 = !{!"p2 omnipotent char", !6, i64 0}
!28 = !{!"p1 _ZTS10macroblock", !7, i64 0}
!29 = !{!"p6 short", !30, i64 0}
!30 = !{!"any p6 pointer", !31, i64 0}
!31 = !{!"any p5 pointer", !12, i64 0}
!32 = !{!"p1 _ZTS18DecRefPicMarking_s", !7, i64 0}
!33 = !{!"p2 double", !6, i64 0}
!34 = !{!"p3 double", !5, i64 0}
!35 = !{!"short", !8, i64 0}
!36 = !{!25, !16, i64 15544}
!37 = !{!15, !16, i64 4172}
!38 = !{!17, !17, i64 0}
!39 = !{!25, !16, i64 20}
!40 = !{!16, !16, i64 0}
!41 = !{!25, !16, i64 68}
!42 = !{!25, !16, i64 52}
!43 = !{!27, !27, i64 0}
!44 = !{!19, !19, i64 0}
!45 = !{!8, !8, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = !{!15, !16, i64 32}
!52 = distinct !{!52, !47}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
!55 = distinct !{!55, !47}
!56 = !{!25, !29, i64 14384}
!57 = !{!58, !58, i64 0}
!58 = !{!"p5 short", !31, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"p4 short", !12, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"p3 short", !5, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"p2 short", !6, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 short", !7, i64 0}
!67 = !{!35, !35, i64 0}
!68 = !{!25, !16, i64 172}
!69 = !{!25, !16, i64 168}
!70 = distinct !{!70, !47}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = distinct !{!82, !47}
!83 = distinct !{!83, !47}
!84 = distinct !{!84, !47}
!85 = distinct !{!85, !47}
!86 = distinct !{!86, !47}
!87 = distinct !{!87, !47}
!88 = distinct !{!88, !47}
!89 = distinct !{!89, !47}
!90 = distinct !{!90, !47}
!91 = distinct !{!91, !47}
!92 = !{!18, !18, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"long long", !8, i64 0}
!95 = !{!25, !16, i64 176}
!96 = !{!25, !16, i64 180}
!97 = !{!25, !16, i64 196}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 _ZTS16storable_picture", !7, i64 0}
!100 = !{!101, !64, i64 6440}
!101 = !{!"storable_picture", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24, !8, i64 1608, !8, i64 3192, !8, i64 4776, !16, i64 6360, !16, i64 6364, !16, i64 6368, !16, i64 6372, !16, i64 6376, !16, i64 6380, !16, i64 6384, !16, i64 6388, !16, i64 6392, !16, i64 6396, !16, i64 6400, !16, i64 6404, !16, i64 6408, !16, i64 6412, !16, i64 6416, !16, i64 6420, !16, i64 6424, !16, i64 6428, !16, i64 6432, !64, i64 6440, !60, i64 6448, !60, i64 6456, !58, i64 6464, !62, i64 6472, !19, i64 6480, !102, i64 6488, !103, i64 6496, !103, i64 6504, !60, i64 6512, !27, i64 6520, !27, i64 6528, !99, i64 6536, !99, i64 6544, !99, i64 6552, !16, i64 6560, !16, i64 6564, !16, i64 6568, !16, i64 6572, !16, i64 6576, !16, i64 6580, !16, i64 6584}
!102 = !{!"p3 omnipotent char", !5, i64 0}
!103 = !{!"p3 long long", !5, i64 0}
!104 = !{!25, !7, i64 14216}
!105 = !{!15, !16, i64 4016}
!106 = !{!25, !18, i64 14232}
!107 = distinct !{!107, !47}
!108 = distinct !{!108, !47}
!109 = !{!110, !16, i64 4}
!110 = !{!"syntaxelement", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !7, i64 32}
!111 = !{!110, !16, i64 24}
!112 = !{!110, !16, i64 0}
!113 = !{!114, !115, i64 24}
!114 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !115, i64 24, !7, i64 32, !7, i64 40, !16, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !16, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !7, i64 112, !8, i64 120}
!115 = !{!"p1 _ZTS13datapartition", !7, i64 0}
!116 = !{!115, !115, i64 0}
!117 = !{!110, !16, i64 12}
!118 = !{!15, !16, i64 4008}
!119 = !{!25, !16, i64 192}
!120 = !{!25, !16, i64 12}
!121 = !{!15, !16, i64 272}
!122 = !{!123, !16, i64 0}
!123 = !{!"pix_pos", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20}
!124 = !{!25, !18, i64 14240}
!125 = !{!123, !16, i64 4}
!126 = !{!25, !27, i64 128}
!127 = !{!123, !16, i64 20}
!128 = !{!123, !16, i64 16}
!129 = !{!15, !16, i64 4048}
!130 = !{!15, !16, i64 4052}
!131 = !{!15, !16, i64 4056}
!132 = !{!15, !16, i64 4060}
!133 = distinct !{!133, !47}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = distinct !{!136, !47}
!137 = !{!25, !11, i64 14160}
!138 = distinct !{!138, !47}
!139 = !{!25, !16, i64 15260}
!140 = !{!25, !4, i64 14176}
!141 = distinct !{!141, !47}
!142 = distinct !{!142, !47}
!143 = !{!25, !28, i64 14224}
!144 = distinct !{!144, !47}
!145 = distinct !{!145, !47}
!146 = distinct !{!146, !47}
!147 = distinct !{!147, !47}
!148 = distinct !{!148, !47}
!149 = distinct !{!149, !47}
!150 = distinct !{!150, !47}
!151 = !{!152, !152, i64 0}
!152 = !{!"p1 long long", !7, i64 0}
!153 = !{!28, !28, i64 0}
!154 = !{!155, !35, i64 480}
!155 = !{!"macroblock", !16, i64 0, !16, i64 4, !16, i64 8, !8, i64 12, !16, i64 20, !8, i64 24, !28, i64 56, !28, i64 64, !16, i64 72, !8, i64 76, !8, i64 332, !8, i64 348, !16, i64 364, !94, i64 368, !8, i64 376, !8, i64 392, !94, i64 408, !16, i64 416, !16, i64 420, !16, i64 424, !16, i64 428, !16, i64 432, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !16, i64 456, !16, i64 460, !16, i64 464, !16, i64 468, !16, i64 472, !16, i64 476, !35, i64 480, !17, i64 488, !16, i64 496, !16, i64 500, !16, i64 504, !16, i64 508, !16, i64 512, !16, i64 516, !16, i64 520, !16, i64 524, !16, i64 528}
!156 = !{!102, !102, i64 0}
!157 = !{!158, !16, i64 196}
!158 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !8, i64 24, !16, i64 56, !16, i64 60, !16, i64 64, !8, i64 68, !8, i64 100, !8, i64 132, !16, i64 164, !16, i64 168, !16, i64 172, !19, i64 176, !16, i64 184, !16, i64 188, !16, i64 192, !16, i64 196, !16, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232}
!159 = !{!15, !16, i64 4728}
!160 = !{!161, !62, i64 8}
!161 = !{!"", !22, i64 0, !62, i64 8, !60, i64 16, !62, i64 24, !64, i64 32, !27, i64 40, !27, i64 48}
!162 = distinct !{!162, !47}
!163 = distinct !{!163, !47}
!164 = distinct !{!164, !47}
!165 = distinct !{!165, !47}
!166 = distinct !{!166, !47}
!167 = !{!25, !16, i64 14456}
!168 = !{!25, !16, i64 14460}
!169 = !{!155, !16, i64 472}
!170 = !{!155, !16, i64 72}
!171 = distinct !{!171, !47}
!172 = distinct !{!172, !47}
!173 = distinct !{!173, !47}
!174 = distinct !{!174, !47}
!175 = distinct !{!175, !47}
!176 = distinct !{!176, !47}
!177 = distinct !{!177, !47}
!178 = !{!101, !102, i64 6488}
!179 = distinct !{!179, !47}
!180 = distinct !{!180, !47}
!181 = distinct !{!181, !47}
!182 = distinct !{!182, !47}
!183 = distinct !{!183, !47}
!184 = distinct !{!184, !47}
!185 = distinct !{!185, !47}
!186 = distinct !{!186, !47}
!187 = !{!155, !16, i64 432}
!188 = !{!101, !103, i64 6496}
!189 = !{!190, !190, i64 0}
!190 = !{!"p2 long long", !6, i64 0}
!191 = distinct !{!191, !47}
!192 = distinct !{!192, !47}
!193 = distinct !{!193, !47}
!194 = distinct !{!194, !47}
!195 = !{!155, !16, i64 364}
!196 = distinct !{!196, !47}
!197 = distinct !{!197, !47}
!198 = distinct !{!198, !47}
!199 = distinct !{!199, !47}
!200 = distinct !{!200, !47}
!201 = distinct !{!201, !47}
!202 = distinct !{!202, !47}
!203 = distinct !{!203, !47}
!204 = distinct !{!204, !47}
!205 = distinct !{!205, !47}
!206 = distinct !{!206, !47}
!207 = distinct !{!207, !47}
!208 = !{!25, !16, i64 44}
!209 = !{!25, !16, i64 15540}
!210 = !{!155, !94, i64 368}
!211 = distinct !{!211, !47}
!212 = distinct !{!212, !47}
!213 = !{!25, !16, i64 15528}
!214 = distinct !{!214, !47}
!215 = distinct !{!215, !47}
!216 = distinct !{!216, !47}
!217 = distinct !{!217, !47}
!218 = distinct !{!218, !47}
!219 = distinct !{!219, !47}
!220 = !{i64 0, i64 4, !40, i64 4, i64 1024, !45, i64 1028, i64 1024, !45, i64 2052, i64 1024, !45, i64 3076, i64 3072, !45, i64 6148, i64 8, !45, i64 6156, i64 4, !45, i64 6160, i64 4, !45, i64 6164, i64 4, !45, i64 6168, i64 512, !45, i64 6680, i64 512, !45, i64 7192, i64 1024, !45}
!221 = distinct !{!221, !47}
!222 = !{!29, !29, i64 0}
!223 = !{!25, !29, i64 14376}
!224 = !{!101, !60, i64 6512}
!225 = distinct !{!225, !47}
!226 = distinct !{!226, !47}
!227 = !{!25, !29, i64 14392}
!228 = !{!25, !29, i64 14400}
!229 = distinct !{!229, !47}
!230 = distinct !{!230, !47}
!231 = !{!25, !16, i64 15268}
!232 = !{!25, !16, i64 32}
!233 = !{!234, !29, i64 1672}
!234 = !{!"", !17, i64 0, !8, i64 8, !8, i64 520, !8, i64 1032, !11, i64 1544, !4, i64 1552, !16, i64 1560, !35, i64 1564, !8, i64 1568, !8, i64 1584, !27, i64 1600, !8, i64 1608, !8, i64 1624, !16, i64 1640, !94, i64 1648, !16, i64 1656, !29, i64 1664, !29, i64 1672, !8, i64 1680, !16, i64 1712, !16, i64 1716, !16, i64 1720, !16, i64 1724, !16, i64 1728, !16, i64 1732, !16, i64 1736, !16, i64 1740, !16, i64 1744}
!235 = !{!234, !29, i64 1664}
!236 = distinct !{!236, !47}
!237 = distinct !{!237, !47}
!238 = distinct !{!238, !47}
!239 = distinct !{!239, !47}
!240 = distinct !{!240, !47}
!241 = !{!242, !242, i64 0}
!242 = !{!"p1 double", !7, i64 0}
!243 = distinct !{!243, !47}
!244 = distinct !{!244, !47}
!245 = !{!155, !16, i64 424}
!246 = !{!25, !16, i64 8}
!247 = !{!25, !4, i64 14184}
!248 = !{!25, !11, i64 14192}
!249 = !{!25, !16, i64 15256}
!250 = distinct !{!250, !47}
!251 = distinct !{!251, !47}
!252 = !{!25, !16, i64 15536}
!253 = !{!25, !16, i64 204}
!254 = !{!25, !16, i64 188}
!255 = !{!25, !16, i64 200}
!256 = !{!101, !62, i64 6472}
!257 = distinct !{!257, !47}
!258 = distinct !{!258, !47}
!259 = !{!25, !4, i64 152}
!260 = distinct !{!260, !47}
!261 = distinct !{!261, !47}
!262 = !{!15, !16, i64 5116}
!263 = !{!25, !16, i64 15244}
!264 = distinct !{!264, !47}
!265 = distinct !{!265, !47}
!266 = distinct !{!266, !47}
!267 = distinct !{!267, !47}
!268 = distinct !{!268, !47}
!269 = distinct !{!269, !47}
!270 = distinct !{!270, !47}
!271 = distinct !{!271, !47}
!272 = distinct !{!272, !47}
!273 = !{!25, !16, i64 144}
!274 = !{!15, !16, i64 0}
!275 = !{!155, !16, i64 452}
!276 = !{!155, !16, i64 436}
!277 = !{!155, !16, i64 456}
!278 = !{!155, !16, i64 440}
!279 = !{!15, !16, i64 5660}
!280 = !{!25, !11, i64 14200}
!281 = distinct !{!281, !47}
!282 = distinct !{!282, !47}
!283 = distinct !{!283, !47}
!284 = distinct !{!284, !47}
!285 = !{!155, !16, i64 416}
!286 = !{!25, !27, i64 136}
!287 = distinct !{!287, !47}
!288 = distinct !{!288, !47}
!289 = distinct !{!289, !47}
!290 = !{!25, !16, i64 184}
!291 = distinct !{!291, !47}
!292 = distinct !{!292, !47}
!293 = !{!161, !62, i64 24}
!294 = distinct !{!294, !47}
!295 = distinct !{!295, !47}
!296 = distinct !{!296, !47}
!297 = !{!25, !4, i64 14168}
!298 = distinct !{!298, !47}
!299 = distinct !{!299, !47}
!300 = distinct !{!300, !47}
!301 = distinct !{!301, !47}
!302 = distinct !{!302, !47}
!303 = distinct !{!303, !47}
!304 = distinct !{!304, !47}
!305 = distinct !{!305, !47}
!306 = !{!234, !16, i64 1656}
!307 = !{!234, !16, i64 1712}
!308 = !{!234, !16, i64 1640}
!309 = !{!234, !94, i64 1648}
!310 = !{!234, !16, i64 1560}
!311 = !{!155, !16, i64 496}
!312 = !{!234, !16, i64 1732}
!313 = !{!155, !16, i64 500}
!314 = !{!234, !16, i64 1736}
!315 = !{!155, !16, i64 4}
!316 = !{!234, !16, i64 1740}
!317 = !{!155, !16, i64 8}
!318 = !{!234, !16, i64 1728}
!319 = !{!155, !16, i64 504}
!320 = !{!234, !16, i64 1744}
!321 = !{!234, !11, i64 1544}
!322 = distinct !{!322, !47}
!323 = distinct !{!323, !47}
!324 = distinct !{!324, !47}
!325 = !{!234, !4, i64 1552}
!326 = distinct !{!326, !47}
!327 = distinct !{!327, !47}
!328 = !{!234, !16, i64 1720}
!329 = !{!161, !27, i64 48}
!330 = !{!25, !16, i64 164}
!331 = !{!25, !16, i64 160}
!332 = distinct !{!332, !47}
!333 = distinct !{!333, !47}
!334 = distinct !{!334, !47}
!335 = distinct !{!335, !47}
!336 = distinct !{!336, !47}
!337 = distinct !{!337, !47}
!338 = distinct !{!338, !47}
!339 = !{!234, !16, i64 1716}
!340 = !{!234, !27, i64 1600}
!341 = distinct !{!341, !47}
!342 = distinct !{!342, !47}
!343 = distinct !{!343, !47}
!344 = distinct !{!344, !47}
!345 = distinct !{!345, !47}
!346 = distinct !{!346, !47}
!347 = distinct !{!347, !47}
!348 = distinct !{!348, !47}
!349 = distinct !{!349, !47}
!350 = distinct !{!350, !47}
!351 = distinct !{!351, !47}
!352 = distinct !{!352, !47}
!353 = distinct !{!353, !47}
!354 = distinct !{!354, !47}
!355 = distinct !{!355, !47}
!356 = distinct !{!356, !47}
!357 = distinct !{!357, !47}
!358 = distinct !{!358, !47}
!359 = distinct !{!359, !47}
!360 = distinct !{!360, !47}
!361 = distinct !{!361, !47}
!362 = distinct !{!362, !47}
!363 = distinct !{!363, !47}
!364 = distinct !{!364, !47}
!365 = distinct !{!365, !47}
!366 = distinct !{!366, !47}
!367 = distinct !{!367, !47}
!368 = distinct !{!368, !47}
!369 = distinct !{!369, !47}
!370 = distinct !{!370, !47}
!371 = distinct !{!371, !47}
!372 = distinct !{!372, !47}
!373 = distinct !{!373, !47}
!374 = distinct !{!374, !47}
!375 = distinct !{!375, !47}
!376 = distinct !{!376, !47}
!377 = distinct !{!377, !47}
!378 = distinct !{!378, !47}
!379 = distinct !{!379, !47}
!380 = distinct !{!380, !47}
!381 = distinct !{!381, !47}
!382 = distinct !{!382, !47}
!383 = distinct !{!383, !47}
!384 = distinct !{!384, !47}
!385 = distinct !{!385, !47}
!386 = distinct !{!386, !47}
!387 = distinct !{!387, !47}
!388 = distinct !{!388, !47}
!389 = distinct !{!389, !47}
!390 = distinct !{!390, !47}
!391 = distinct !{!391, !47}
!392 = distinct !{!392, !47}
!393 = distinct !{!393, !47}
!394 = !{!234, !35, i64 1564}
!395 = distinct !{!395, !47}
!396 = distinct !{!396, !47}
!397 = distinct !{!397, !47}
!398 = distinct !{!398, !47}
!399 = distinct !{!399, !47}
!400 = distinct !{!400, !47}
!401 = distinct !{!401, !47}
!402 = distinct !{!402, !47}
!403 = distinct !{!403, !47}
!404 = distinct !{!404, !47}
!405 = distinct !{!405, !47}
!406 = distinct !{!406, !47}
!407 = distinct !{!407, !47}
!408 = distinct !{!408, !47}
!409 = distinct !{!409, !47}
!410 = distinct !{!410, !47}
!411 = distinct !{!411, !47}
!412 = distinct !{!412, !47}
!413 = !{!15, !16, i64 4732}
