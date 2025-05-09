; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/q_matrix.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/q_matrix.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@matrix4x4_check = dso_local global [6 x i32] zeroinitializer, align 4
@matrix8x8_check = dso_local global [2 x i32] zeroinitializer, align 4
@MatrixType4x4 = internal constant [6 x [20 x i8]] [[20 x i8] c"INTRA4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTRA4X4_CHROMAV\00\00\00\00", [20 x i8] c"INTER4X4_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAU\00\00\00\00", [20 x i8] c"INTER4X4_CHROMAV\00\00\00\00"], align 1
@MatrixType8x8 = internal constant [2 x [20 x i8]] [[20 x i8] c"INTRA8X8_LUMA\00\00\00\00\00\00\00", [20 x i8] c"INTER8X8_LUMA\00\00\00\00\00\00\00"], align 1
@errortext = common dso_local global [300 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@ScalingList4x4input = common dso_local global [6 x [16 x i16]] zeroinitializer, align 2
@ScalingList8x8input = common dso_local global [2 x [64 x i16]] zeroinitializer, align 2
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@input = external global ptr, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"\0A%s value exceed range. (Value must be 1 to 255)\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Setting default values for this matrix.\00", align 1
@Quant_inter_default = internal constant [16 x i16] [i16 10, i16 14, i16 20, i16 24, i16 14, i16 20, i16 24, i16 27, i16 20, i16 24, i16 27, i16 30, i16 24, i16 27, i16 30, i16 34], align 2
@Quant_intra_default = internal constant [16 x i16] [i16 6, i16 13, i16 20, i16 28, i16 13, i16 20, i16 28, i16 32, i16 20, i16 28, i16 32, i16 37, i16 28, i16 32, i16 37, i16 42], align 2
@.str.8 = private unnamed_addr constant [57 x i8] c"\0A%s matrix definition not found. Setting default values.\00", align 1
@Quant8_inter_default = internal constant [64 x i16] [i16 9, i16 13, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 13, i16 13, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 15, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 17, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 19, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 21, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 22, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 24, i16 25, i16 27, i16 28, i16 30, i16 32, i16 33, i16 35], align 2
@Quant8_intra_default = internal constant [64 x i16] [i16 6, i16 10, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 10, i16 11, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 13, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 16, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 18, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 23, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 25, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 27, i16 29, i16 31, i16 33, i16 36, i16 38, i16 40, i16 42], align 2
@qp_per_matrix = common dso_local global ptr null, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"init_global_buffers: qp_per_matrix\00", align 1
@qp_rem_matrix = common dso_local global ptr null, align 8
@LevelScale4x4Luma = common dso_local global ptr null, align 8
@LevelScale4x4Chroma = common dso_local global ptr null, align 8
@LevelScale8x8Luma = common dso_local global ptr null, align 8
@InvLevelScale4x4Luma = common dso_local global ptr null, align 8
@InvLevelScale4x4Chroma = common dso_local global ptr null, align 8
@InvLevelScale8x8Luma = common dso_local global ptr null, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"Parsing QMatrix file %s \00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@UseDefaultScalingMatrix4x4Flag = common dso_local global [6 x i16] zeroinitializer, align 2
@UseDefaultScalingMatrix8x8Flag = common dso_local global [2 x i16] zeroinitializer, align 2
@active_sps = common dso_local global ptr null, align 8
@active_pps = common dso_local global ptr null, align 8
@quant_coef = external constant [6 x [4 x [4 x i32]]], align 4
@dequant_coef = external constant [6 x [4 x [4 x i32]]], align 4
@ScalingList4x4 = common dso_local global [6 x [16 x i16]] zeroinitializer, align 2
@quant_coef8 = external constant [6 x [8 x [8 x i32]]], align 4
@dequant_coef8 = external constant [6 x [8 x [8 x i32]]], align 4
@ScalingList8x8 = common dso_local global [2 x [64 x i16]] zeroinitializer, align 2
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
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
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

; Function Attrs: nounwind
define dso_local signext i32 @CheckParameterName(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !10
  %8 = load ptr, ptr %5, align 8, !tbaa !8
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, ptr %6, align 4, !tbaa !10
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x [20 x i8]], ptr @MatrixType4x4, i64 0, i64 %11
  %13 = getelementptr inbounds [20 x i8], ptr %12, i64 0, i64 0
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, ptr %6, align 4, !tbaa !10
  %17 = icmp slt i32 %16, 6
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i1 [ false, %9 ], [ %17, %15 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load i32, ptr %6, align 4, !tbaa !10
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x [20 x i8]], ptr @MatrixType4x4, i64 0, i64 %22
  %24 = getelementptr inbounds [20 x i8], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %4, align 8, !tbaa !3
  %26 = call signext i32 @strcmp(ptr noundef %24, ptr noundef %25) #8
  %27 = icmp eq i32 0, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, ptr %6, align 4, !tbaa !10
  store i32 %29, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %62

30:                                               ; preds = %20
  %31 = load i32, ptr %6, align 4, !tbaa !10
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %6, align 4, !tbaa !10
  br label %33

33:                                               ; preds = %30
  br label %9, !llvm.loop !12

34:                                               ; preds = %18
  store i32 0, ptr %6, align 4, !tbaa !10
  %35 = load ptr, ptr %5, align 8, !tbaa !8
  store i32 1, ptr %35, align 4, !tbaa !10
  br label %36

36:                                               ; preds = %60, %34
  %37 = load i32, ptr %6, align 4, !tbaa !10
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x [20 x i8]], ptr @MatrixType8x8, i64 0, i64 %38
  %40 = getelementptr inbounds [20 x i8], ptr %39, i64 0, i64 0
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, ptr %6, align 4, !tbaa !10
  %44 = icmp slt i32 %43, 2
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i1 [ false, %36 ], [ %44, %42 ]
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4, !tbaa !10
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x [20 x i8]], ptr @MatrixType8x8, i64 0, i64 %49
  %51 = getelementptr inbounds [20 x i8], ptr %50, i64 0, i64 0
  %52 = load ptr, ptr %4, align 8, !tbaa !3
  %53 = call signext i32 @strcmp(ptr noundef %51, ptr noundef %52) #8
  %54 = icmp eq i32 0, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, ptr %6, align 4, !tbaa !10
  store i32 %56, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load i32, ptr %6, align 4, !tbaa !10
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %6, align 4, !tbaa !10
  br label %60

60:                                               ; preds = %57
  br label %36, !llvm.loop !14

61:                                               ; preds = %45
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %62

62:                                               ; preds = %61, %55, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  %63 = load i32, ptr %3, align 4
  ret i32 %63
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @ParseMatrix(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1000 x ptr], align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8000, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  store i32 0, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  store i32 0, ptr %8, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  store i32 0, ptr %9, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #7
  %19 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %19, ptr %10, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #7
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = load i32, ptr %4, align 4, !tbaa !10
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  store ptr %23, ptr %11, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #7
  br label %24

24:                                               ; preds = %99, %2
  %25 = load ptr, ptr %10, align 8, !tbaa !3
  %26 = load ptr, ptr %11, align 8, !tbaa !3
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8, !tbaa !3
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = sext i8 %30 to i32
  switch i32 %31, label %85 [
    i32 13, label %32
    i32 35, label %35
    i32 10, label %52
    i32 32, label %55
    i32 9, label %55
    i32 34, label %65
    i32 44, label %82
  ]

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %34, ptr %10, align 8, !tbaa !3
  br label %99

35:                                               ; preds = %28
  %36 = load ptr, ptr %10, align 8, !tbaa !3
  store i8 0, ptr %36, align 1, !tbaa !15
  br label %37

37:                                               ; preds = %48, %35
  %38 = load ptr, ptr %10, align 8, !tbaa !3
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load ptr, ptr %10, align 8, !tbaa !3
  %44 = load ptr, ptr %11, align 8, !tbaa !3
  %45 = icmp ult ptr %43, %44
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load ptr, ptr %10, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %50, ptr %10, align 8, !tbaa !3
  br label %37, !llvm.loop !16

51:                                               ; preds = %46
  store i32 0, ptr %8, align 4, !tbaa !10
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %99

52:                                               ; preds = %28
  store i32 0, ptr %9, align 4, !tbaa !10
  store i32 0, ptr %8, align 4, !tbaa !10
  %53 = load ptr, ptr %10, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %54, ptr %10, align 8, !tbaa !3
  store i8 0, ptr %53, align 1, !tbaa !15
  br label %99

55:                                               ; preds = %28, %28
  %56 = load i32, ptr %8, align 4, !tbaa !10
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr %10, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %60, ptr %10, align 8, !tbaa !3
  br label %64

61:                                               ; preds = %55
  %62 = load ptr, ptr %10, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %63, ptr %10, align 8, !tbaa !3
  store i8 0, ptr %62, align 1, !tbaa !15
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %64

64:                                               ; preds = %61, %58
  br label %99

65:                                               ; preds = %28
  %66 = load ptr, ptr %10, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1
  store ptr %67, ptr %10, align 8, !tbaa !3
  store i8 0, ptr %66, align 1, !tbaa !15
  %68 = load i32, ptr %8, align 4, !tbaa !10
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %10, align 8, !tbaa !3
  %72 = load i32, ptr %7, align 4, !tbaa !10
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 4, !tbaa !10
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %74
  store ptr %71, ptr %75, align 8, !tbaa !3
  %76 = load i32, ptr %9, align 4, !tbaa !10
  %77 = xor i32 %76, -1
  store i32 %77, ptr %9, align 4, !tbaa !10
  br label %79

78:                                               ; preds = %65
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, ptr %8, align 4, !tbaa !10
  %81 = xor i32 %80, -1
  store i32 %81, ptr %8, align 4, !tbaa !10
  br label %99

82:                                               ; preds = %28
  %83 = load ptr, ptr %10, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw i8, ptr %83, i32 1
  store ptr %84, ptr %10, align 8, !tbaa !3
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %99

85:                                               ; preds = %28
  %86 = load i32, ptr %9, align 4, !tbaa !10
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %10, align 8, !tbaa !3
  %90 = load i32, ptr %7, align 4, !tbaa !10
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %7, align 4, !tbaa !10
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %92
  store ptr %89, ptr %93, align 8, !tbaa !3
  %94 = load i32, ptr %9, align 4, !tbaa !10
  %95 = xor i32 %94, -1
  store i32 %95, ptr %9, align 4, !tbaa !10
  br label %96

96:                                               ; preds = %88, %85
  %97 = load ptr, ptr %10, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw i8, ptr %97, i32 1
  store ptr %98, ptr %10, align 8, !tbaa !3
  br label %99

99:                                               ; preds = %96, %82, %79, %64, %52, %51, %32
  br label %24, !llvm.loop !17

100:                                              ; preds = %24
  %101 = load i32, ptr %7, align 4, !tbaa !10
  %102 = add nsw i32 %101, -1
  store i32 %102, ptr %7, align 4, !tbaa !10
  store i32 0, ptr %13, align 4, !tbaa !10
  br label %103

103:                                              ; preds = %203, %100
  %104 = load i32, ptr %13, align 4, !tbaa !10
  %105 = load i32, ptr %7, align 4, !tbaa !10
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %207

107:                                              ; preds = %103
  store i32 0, ptr %17, align 4, !tbaa !10
  %108 = load i32, ptr %13, align 4, !tbaa !10
  %109 = load i32, ptr %17, align 4, !tbaa !10
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !3
  %114 = call signext i32 @CheckParameterName(ptr noundef %113, ptr noundef %16)
  store i32 %114, ptr %6, align 4, !tbaa !10
  %115 = icmp sgt i32 0, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load i32, ptr %13, align 4, !tbaa !10
  %118 = load i32, ptr %17, align 4, !tbaa !10
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !3
  %123 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str, ptr noundef %122) #7
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %124

124:                                              ; preds = %116, %107
  %125 = load i32, ptr %17, align 4, !tbaa !10
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %17, align 4, !tbaa !10
  %127 = load i32, ptr %13, align 4, !tbaa !10
  %128 = load i32, ptr %17, align 4, !tbaa !10
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !3
  %133 = call signext i32 @strcmp(ptr noundef @.str.1, ptr noundef %132) #8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.2) #7
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %137

137:                                              ; preds = %135, %124
  %138 = load i32, ptr %17, align 4, !tbaa !10
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %17, align 4, !tbaa !10
  %140 = load i32, ptr %16, align 4, !tbaa !10
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %137
  store i32 16, ptr %15, align 4, !tbaa !10
  %143 = load i32, ptr %6, align 4, !tbaa !10
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %144
  %146 = getelementptr inbounds [16 x i16], ptr %145, i64 0, i64 0
  store ptr %146, ptr %18, align 8, !tbaa !18
  %147 = load i32, ptr %6, align 4, !tbaa !10
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [6 x i32], ptr @matrix4x4_check, i64 0, i64 %148
  store i32 1, ptr %149, align 4, !tbaa !10
  br label %158

150:                                              ; preds = %137
  store i32 64, ptr %15, align 4, !tbaa !10
  %151 = load i32, ptr %6, align 4, !tbaa !10
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %152
  %154 = getelementptr inbounds [64 x i16], ptr %153, i64 0, i64 0
  store ptr %154, ptr %18, align 8, !tbaa !18
  %155 = load i32, ptr %6, align 4, !tbaa !10
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x i32], ptr @matrix8x8_check, i64 0, i64 %156
  store i32 1, ptr %157, align 4, !tbaa !10
  br label %158

158:                                              ; preds = %150, %142
  store i32 0, ptr %14, align 4, !tbaa !10
  br label %159

159:                                              ; preds = %195, %158
  %160 = load i32, ptr %14, align 4, !tbaa !10
  %161 = load i32, ptr %15, align 4, !tbaa !10
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %198

163:                                              ; preds = %159
  %164 = load i32, ptr %13, align 4, !tbaa !10
  %165 = load i32, ptr %17, align 4, !tbaa !10
  %166 = add nsw i32 %164, %165
  %167 = load i32, ptr %14, align 4, !tbaa !10
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !3
  %172 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %171, ptr noundef @.str.3, ptr noundef %12) #7
  %173 = icmp ne i32 1, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %163
  %175 = load i32, ptr %13, align 4, !tbaa !10
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !3
  %179 = load i32, ptr %13, align 4, !tbaa !10
  %180 = load i32, ptr %17, align 4, !tbaa !10
  %181 = add nsw i32 %179, %180
  %182 = load i32, ptr %14, align 4, !tbaa !10
  %183 = add nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !3
  %187 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.4, ptr noundef %178, ptr noundef %186) #7
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %188

188:                                              ; preds = %174, %163
  %189 = load i32, ptr %12, align 4, !tbaa !10
  %190 = trunc i32 %189 to i16
  %191 = load ptr, ptr %18, align 8, !tbaa !18
  %192 = load i32, ptr %14, align 4, !tbaa !10
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i16, ptr %191, i64 %193
  store i16 %190, ptr %194, align 2, !tbaa !20
  br label %195

195:                                              ; preds = %188
  %196 = load i32, ptr %14, align 4, !tbaa !10
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %14, align 4, !tbaa !10
  br label %159, !llvm.loop !22

198:                                              ; preds = %159
  %199 = load i32, ptr %14, align 4, !tbaa !10
  %200 = load i32, ptr %17, align 4, !tbaa !10
  %201 = add nsw i32 %200, %199
  store i32 %201, ptr %17, align 4, !tbaa !10
  %202 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %203

203:                                              ; preds = %198
  %204 = load i32, ptr %17, align 4, !tbaa !10
  %205 = load i32, ptr %13, align 4, !tbaa !10
  %206 = add nsw i32 %205, %204
  store i32 %206, ptr %13, align 4, !tbaa !10
  br label %103, !llvm.loop !23

207:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8000, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
declare signext i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

declare void @error(ptr noundef, i32 noundef signext) #3

; Function Attrs: nounwind
declare signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #0

declare signext i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
define dso_local void @PatchMatrix() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %5

5:                                                ; preds = %163, %0
  %6 = load i32, ptr %2, align 4, !tbaa !10
  %7 = icmp slt i32 %6, 6
  br i1 %7, label %8, label %166

8:                                                ; preds = %5
  %9 = load ptr, ptr @input, align 8, !tbaa !24
  %10 = getelementptr inbounds nuw %struct.InputParameters, ptr %9, i32 0, i32 168
  %11 = load i32, ptr %2, align 4, !tbaa !10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i32], ptr %10, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !10
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %8
  %17 = load i32, ptr %2, align 4, !tbaa !10
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [6 x [16 x i16]], ptr @ScalingList4x4input, i64 0, i64 %18
  %20 = getelementptr inbounds [16 x i16], ptr %19, i64 0, i64 0
  store ptr %20, ptr %1, align 8, !tbaa !18
  %21 = load i32, ptr %2, align 4, !tbaa !10
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x i32], ptr @matrix4x4_check, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !10
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %69

26:                                               ; preds = %16
  store i32 0, ptr %4, align 4, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %27

27:                                               ; preds = %48, %26
  %28 = load i32, ptr %3, align 4, !tbaa !10
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load ptr, ptr %1, align 8, !tbaa !18
  %32 = load i32, ptr %3, align 4, !tbaa !10
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %31, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !20
  %36 = sext i16 %35 to i32
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load ptr, ptr %1, align 8, !tbaa !18
  %40 = load i32, ptr %3, align 4, !tbaa !10
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !20
  %44 = sext i16 %43 to i32
  %45 = icmp sgt i32 %44, 255
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %51

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  %49 = load i32, ptr %3, align 4, !tbaa !10
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr %3, align 4, !tbaa !10
  br label %27, !llvm.loop !25

51:                                               ; preds = %46, %27
  %52 = load i32, ptr %4, align 4, !tbaa !10
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, ptr %2, align 4, !tbaa !10
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x [20 x i8]], ptr @MatrixType4x4, i64 0, i64 %56
  %58 = getelementptr inbounds [20 x i8], ptr %57, i64 0, i64 0
  %59 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %58)
  %60 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %61 = load i32, ptr %2, align 4, !tbaa !10
  %62 = icmp sgt i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %64, ptr align 2 @Quant_inter_default, i64 32, i1 false)
  br label %67

65:                                               ; preds = %54
  %66 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %66, ptr align 2 @Quant_intra_default, i64 32, i1 false)
  br label %67

67:                                               ; preds = %65, %63
  br label %68

68:                                               ; preds = %67, %51
  br label %82

69:                                               ; preds = %16
  %70 = load i32, ptr %2, align 4, !tbaa !10
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [6 x [20 x i8]], ptr @MatrixType4x4, i64 0, i64 %71
  %73 = getelementptr inbounds [20 x i8], ptr %72, i64 0, i64 0
  %74 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %73)
  %75 = load i32, ptr %2, align 4, !tbaa !10
  %76 = icmp sgt i32 %75, 2
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %78, ptr align 2 @Quant_inter_default, i64 32, i1 false)
  br label %81

79:                                               ; preds = %69
  %80 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %80, ptr align 2 @Quant_intra_default, i64 32, i1 false)
  br label %81

81:                                               ; preds = %79, %77
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %8
  %84 = load i32, ptr %2, align 4, !tbaa !10
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %162

86:                                               ; preds = %83
  %87 = load ptr, ptr @input, align 8, !tbaa !24
  %88 = getelementptr inbounds nuw %struct.InputParameters, ptr %87, i32 0, i32 168
  %89 = load i32, ptr %2, align 4, !tbaa !10
  %90 = add nsw i32 %89, 6
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i32], ptr %88, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !10
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %162

95:                                               ; preds = %86
  %96 = load i32, ptr %2, align 4, !tbaa !10
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x [64 x i16]], ptr @ScalingList8x8input, i64 0, i64 %97
  %99 = getelementptr inbounds [64 x i16], ptr %98, i64 0, i64 0
  store ptr %99, ptr %1, align 8, !tbaa !18
  %100 = load i32, ptr %2, align 4, !tbaa !10
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], ptr @matrix8x8_check, i64 0, i64 %101
  %103 = load i32, ptr %102, align 4, !tbaa !10
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %148

105:                                              ; preds = %95
  store i32 0, ptr %4, align 4, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %106

106:                                              ; preds = %127, %105
  %107 = load i32, ptr %3, align 4, !tbaa !10
  %108 = icmp slt i32 %107, 64
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load ptr, ptr %1, align 8, !tbaa !18
  %111 = load i32, ptr %3, align 4, !tbaa !10
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %110, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !20
  %115 = sext i16 %114 to i32
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %109
  %118 = load ptr, ptr %1, align 8, !tbaa !18
  %119 = load i32, ptr %3, align 4, !tbaa !10
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i16, ptr %118, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !20
  %123 = sext i16 %122 to i32
  %124 = icmp sgt i32 %123, 255
  br i1 %124, label %125, label %126

125:                                              ; preds = %117, %109
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %130

126:                                              ; preds = %117
  br label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %3, align 4, !tbaa !10
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %3, align 4, !tbaa !10
  br label %106, !llvm.loop !26

130:                                              ; preds = %125, %106
  %131 = load i32, ptr %4, align 4, !tbaa !10
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %147

133:                                              ; preds = %130
  %134 = load i32, ptr %2, align 4, !tbaa !10
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x [20 x i8]], ptr @MatrixType8x8, i64 0, i64 %135
  %137 = getelementptr inbounds [20 x i8], ptr %136, i64 0, i64 0
  %138 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %137)
  %139 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %140 = load i32, ptr %2, align 4, !tbaa !10
  %141 = icmp eq i32 %140, 7
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %143, ptr align 2 @Quant8_inter_default, i64 128, i1 false)
  br label %146

144:                                              ; preds = %133
  %145 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %145, ptr align 2 @Quant8_intra_default, i64 128, i1 false)
  br label %146

146:                                              ; preds = %144, %142
  br label %147

147:                                              ; preds = %146, %130
  br label %161

148:                                              ; preds = %95
  %149 = load i32, ptr %2, align 4, !tbaa !10
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [2 x [20 x i8]], ptr @MatrixType8x8, i64 0, i64 %150
  %152 = getelementptr inbounds [20 x i8], ptr %151, i64 0, i64 0
  %153 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %152)
  %154 = load i32, ptr %2, align 4, !tbaa !10
  %155 = icmp eq i32 %154, 7
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %157, ptr align 2 @Quant8_inter_default, i64 128, i1 false)
  br label %160

158:                                              ; preds = %148
  %159 = load ptr, ptr %1, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %159, ptr align 2 @Quant8_intra_default, i64 128, i1 false)
  br label %160

160:                                              ; preds = %158, %156
  br label %161

161:                                              ; preds = %160, %147
  br label %162

162:                                              ; preds = %161, %86, %83
  br label %163

163:                                              ; preds = %162
  %164 = load i32, ptr %2, align 4, !tbaa !10
  %165 = add nsw i32 %164, 1
  store i32 %165, ptr %2, align 4, !tbaa !10
  br label %5, !llvm.loop !27

166:                                              ; preds = %5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local void @allocate_QMatrix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  %3 = load ptr, ptr @input, align 8, !tbaa !24
  %4 = getelementptr inbounds nuw %struct.InputParameters, ptr %3, i32 0, i32 172
  %5 = load i32, ptr %4, align 8, !tbaa !28
  %6 = sub nsw i32 %5, 8
  %7 = mul nsw i32 6, %6
  store i32 %7, ptr %1, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  %8 = load i32, ptr %1, align 4, !tbaa !10
  %9 = add nsw i32 52, %8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = call noalias ptr @malloc(i64 noundef %11) #9
  store ptr %12, ptr @qp_per_matrix, align 8, !tbaa !8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.9)
  br label %15

15:                                               ; preds = %14, %0
  %16 = load i32, ptr %1, align 4, !tbaa !10
  %17 = add nsw i32 52, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call noalias ptr @malloc(i64 noundef %19) #9
  store ptr %20, ptr @qp_rem_matrix, align 8, !tbaa !8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  call void @no_mem_exit(ptr noundef @.str.9)
  br label %23

23:                                               ; preds = %22, %15
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, ptr %2, align 4, !tbaa !10
  %26 = load i32, ptr %1, align 4, !tbaa !10
  %27 = add nsw i32 51, %26
  %28 = add nsw i32 %27, 1
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load i32, ptr %2, align 4, !tbaa !10
  %32 = sdiv i32 %31, 6
  %33 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !8
  %34 = load i32, ptr %2, align 4, !tbaa !10
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  store i32 %32, ptr %36, align 4, !tbaa !10
  %37 = load i32, ptr %2, align 4, !tbaa !10
  %38 = srem i32 %37, 6
  %39 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !8
  %40 = load i32, ptr %2, align 4, !tbaa !10
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 %38, ptr %42, align 4, !tbaa !10
  br label %43

43:                                               ; preds = %30
  %44 = load i32, ptr %2, align 4, !tbaa !10
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %2, align 4, !tbaa !10
  br label %24, !llvm.loop !31

46:                                               ; preds = %24
  %47 = call signext i32 @get_mem4Dint(ptr noundef @LevelScale4x4Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4)
  %48 = call signext i32 @get_mem5Dint(ptr noundef @LevelScale4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4)
  %49 = call signext i32 @get_mem4Dint(ptr noundef @LevelScale8x8Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 8, i32 noundef signext 8)
  %50 = call signext i32 @get_mem4Dint(ptr noundef @InvLevelScale4x4Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4)
  %51 = call signext i32 @get_mem5Dint(ptr noundef @InvLevelScale4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 4, i32 noundef signext 4)
  %52 = call signext i32 @get_mem4Dint(ptr noundef @InvLevelScale8x8Luma, i32 noundef signext 2, i32 noundef signext 6, i32 noundef signext 8, i32 noundef signext 8)
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare void @no_mem_exit(ptr noundef) #3

declare signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare signext i32 @get_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

; Function Attrs: nounwind
define dso_local void @free_QMatrix() #0 {
  %1 = load ptr, ptr @qp_rem_matrix, align 8, !tbaa !8
  call void @free(ptr noundef %1) #7
  %2 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !8
  call void @free(ptr noundef %2) #7
  %3 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  call void @free_mem4Dint(ptr noundef %3, i32 noundef signext 2, i32 noundef signext 6)
  %4 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  call void @free_mem5Dint(ptr noundef %4, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6)
  %5 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  call void @free_mem4Dint(ptr noundef %5, i32 noundef signext 2, i32 noundef signext 6)
  %6 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  call void @free_mem4Dint(ptr noundef %6, i32 noundef signext 2, i32 noundef signext 6)
  %7 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  call void @free_mem5Dint(ptr noundef %7, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext 6)
  %8 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  call void @free_mem4Dint(ptr noundef %8, i32 noundef signext 2, i32 noundef signext 6)
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

declare void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) #3

declare void @free_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

; Function Attrs: nounwind
define dso_local void @Init_QMatrix() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  call void @allocate_QMatrix()
  %2 = load ptr, ptr @input, align 8, !tbaa !24
  %3 = getelementptr inbounds nuw %struct.InputParameters, ptr %2, i32 0, i32 167
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %0
  %7 = load ptr, ptr @input, align 8, !tbaa !24
  %8 = getelementptr inbounds nuw %struct.InputParameters, ptr %7, i32 0, i32 29
  %9 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0
  %10 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %9)
  %11 = load ptr, ptr @input, align 8, !tbaa !24
  %12 = getelementptr inbounds nuw %struct.InputParameters, ptr %11, i32 0, i32 29
  %13 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0
  %14 = call ptr @GetConfigFileContent(ptr noundef %13, i32 noundef signext 0)
  store ptr %14, ptr %1, align 8, !tbaa !3
  %15 = load ptr, ptr %1, align 8, !tbaa !3
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load ptr, ptr %1, align 8, !tbaa !3
  %19 = load ptr, ptr %1, align 8, !tbaa !3
  %20 = call i64 @strlen(ptr noundef %19) #8
  %21 = trunc i64 %20 to i32
  call void @ParseMatrix(ptr noundef %18, i32 noundef signext %21)
  br label %24

22:                                               ; preds = %6
  %23 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef @errortext)
  br label %24

24:                                               ; preds = %22, %17
  call void @PatchMatrix()
  %25 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.12)
  call void @llvm.memset.p0.i64(ptr align 2 @UseDefaultScalingMatrix4x4Flag, i8 0, i64 12, i1 false)
  store i16 0, ptr getelementptr inbounds ([2 x i16], ptr @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !tbaa !20
  store i16 0, ptr @UseDefaultScalingMatrix8x8Flag, align 2, !tbaa !20
  %26 = load ptr, ptr %1, align 8, !tbaa !3
  call void @free(ptr noundef %26) #7
  br label %27

27:                                               ; preds = %24, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret void
}

declare ptr @GetConfigFileContent(ptr noundef, i32 noundef signext) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
define dso_local void @CalculateQuantParam() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [6 x i32], align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !10
  %7 = load ptr, ptr @active_sps, align 8, !tbaa !24
  %8 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %13 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !45
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %84

17:                                               ; preds = %11, %0
  %18 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 24, i1 false)
  %19 = load ptr, ptr @active_sps, align 8, !tbaa !24
  %20 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %19, i32 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, ptr %1, align 4, !tbaa !10
  %26 = icmp slt i32 %25, 6
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load ptr, ptr @active_sps, align 8, !tbaa !24
  %29 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %28, i32 0, i32 10
  %30 = load i32, ptr %1, align 4, !tbaa !10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], ptr %29, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !10
  %34 = load i32, ptr %1, align 4, !tbaa !10
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 %35
  store i32 %33, ptr %36, align 4, !tbaa !10
  br label %37

37:                                               ; preds = %27
  %38 = load i32, ptr %1, align 4, !tbaa !10
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %1, align 4, !tbaa !10
  br label %24, !llvm.loop !47

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %17
  %42 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %43 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %42, i32 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !45
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %83

46:                                               ; preds = %41
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %47

47:                                               ; preds = %79, %46
  %48 = load i32, ptr %1, align 4, !tbaa !10
  %49 = icmp slt i32 %48, 6
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = load i32, ptr %1, align 4, !tbaa !10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %1, align 4, !tbaa !10
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %68

56:                                               ; preds = %53, %50
  %57 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %58 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %57, i32 0, i32 6
  %59 = load i32, ptr %1, align 4, !tbaa !10
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], ptr %58, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !10
  %63 = load i32, ptr %1, align 4, !tbaa !10
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !10
  %67 = or i32 %66, %62
  store i32 %67, ptr %65, align 4, !tbaa !10
  br label %78

68:                                               ; preds = %53
  %69 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %70 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %69, i32 0, i32 6
  %71 = load i32, ptr %1, align 4, !tbaa !10
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i32], ptr %70, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !10
  %75 = load i32, ptr %1, align 4, !tbaa !10
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 %76
  store i32 %74, ptr %77, align 4, !tbaa !10
  br label %78

78:                                               ; preds = %68, %56
  br label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %1, align 4, !tbaa !10
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %1, align 4, !tbaa !10
  br label %47, !llvm.loop !48

82:                                               ; preds = %47
  br label %83

83:                                               ; preds = %82, %41
  br label %84

84:                                               ; preds = %83, %16
  %85 = load i32, ptr %6, align 4, !tbaa !10
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %422

87:                                               ; preds = %84
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %88

88:                                               ; preds = %418, %87
  %89 = load i32, ptr %3, align 4, !tbaa !10
  %90 = icmp slt i32 %89, 6
  br i1 %90, label %91, label %421

91:                                               ; preds = %88
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %92

92:                                               ; preds = %414, %91
  %93 = load i32, ptr %2, align 4, !tbaa !10
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %417

95:                                               ; preds = %92
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %96

96:                                               ; preds = %410, %95
  %97 = load i32, ptr %1, align 4, !tbaa !10
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %413

99:                                               ; preds = %96
  %100 = load i32, ptr %3, align 4, !tbaa !10
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %101
  %103 = load i32, ptr %2, align 4, !tbaa !10
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x [4 x i32]], ptr %102, i64 0, i64 %104
  %106 = load i32, ptr %1, align 4, !tbaa !10
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], ptr %105, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !10
  %110 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !49
  %113 = load i32, ptr %3, align 4, !tbaa !10
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !51
  %117 = load i32, ptr %2, align 4, !tbaa !10
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !8
  %121 = load i32, ptr %1, align 4, !tbaa !10
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %120, i64 %122
  store i32 %109, ptr %123, align 4, !tbaa !10
  %124 = load i32, ptr %3, align 4, !tbaa !10
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %125
  %127 = load i32, ptr %2, align 4, !tbaa !10
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x [4 x i32]], ptr %126, i64 0, i64 %128
  %130 = load i32, ptr %1, align 4, !tbaa !10
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i32], ptr %129, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !10
  %134 = shl i32 %133, 4
  %135 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !49
  %138 = load i32, ptr %3, align 4, !tbaa !10
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !51
  %142 = load i32, ptr %2, align 4, !tbaa !10
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %141, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !8
  %146 = load i32, ptr %1, align 4, !tbaa !10
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, ptr %145, i64 %147
  store i32 %134, ptr %148, align 4, !tbaa !10
  %149 = load i32, ptr %3, align 4, !tbaa !10
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %150
  %152 = load i32, ptr %2, align 4, !tbaa !10
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x [4 x i32]], ptr %151, i64 0, i64 %153
  %155 = load i32, ptr %1, align 4, !tbaa !10
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i32], ptr %154, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !10
  %159 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %160 = getelementptr inbounds ptr, ptr %159, i64 0
  %161 = load ptr, ptr %160, align 8, !tbaa !32
  %162 = getelementptr inbounds ptr, ptr %161, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !49
  %164 = load i32, ptr %3, align 4, !tbaa !10
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %163, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !51
  %168 = load i32, ptr %2, align 4, !tbaa !10
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %167, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !8
  %172 = load i32, ptr %1, align 4, !tbaa !10
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %171, i64 %173
  store i32 %158, ptr %174, align 4, !tbaa !10
  %175 = load i32, ptr %3, align 4, !tbaa !10
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %176
  %178 = load i32, ptr %2, align 4, !tbaa !10
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [4 x [4 x i32]], ptr %177, i64 0, i64 %179
  %181 = load i32, ptr %1, align 4, !tbaa !10
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [4 x i32], ptr %180, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !10
  %185 = shl i32 %184, 4
  %186 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %187 = getelementptr inbounds ptr, ptr %186, i64 0
  %188 = load ptr, ptr %187, align 8, !tbaa !32
  %189 = getelementptr inbounds ptr, ptr %188, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !49
  %191 = load i32, ptr %3, align 4, !tbaa !10
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !51
  %195 = load i32, ptr %2, align 4, !tbaa !10
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !8
  %199 = load i32, ptr %1, align 4, !tbaa !10
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, ptr %198, i64 %200
  store i32 %185, ptr %201, align 4, !tbaa !10
  %202 = load i32, ptr %3, align 4, !tbaa !10
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %203
  %205 = load i32, ptr %2, align 4, !tbaa !10
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x [4 x i32]], ptr %204, i64 0, i64 %206
  %208 = load i32, ptr %1, align 4, !tbaa !10
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i32], ptr %207, i64 0, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !10
  %212 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %213 = getelementptr inbounds ptr, ptr %212, i64 1
  %214 = load ptr, ptr %213, align 8, !tbaa !32
  %215 = getelementptr inbounds ptr, ptr %214, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !49
  %217 = load i32, ptr %3, align 4, !tbaa !10
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds ptr, ptr %216, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !51
  %221 = load i32, ptr %2, align 4, !tbaa !10
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds ptr, ptr %220, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !8
  %225 = load i32, ptr %1, align 4, !tbaa !10
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, ptr %224, i64 %226
  store i32 %211, ptr %227, align 4, !tbaa !10
  %228 = load i32, ptr %3, align 4, !tbaa !10
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %229
  %231 = load i32, ptr %2, align 4, !tbaa !10
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x [4 x i32]], ptr %230, i64 0, i64 %232
  %234 = load i32, ptr %1, align 4, !tbaa !10
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i32], ptr %233, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !10
  %238 = shl i32 %237, 4
  %239 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %240 = getelementptr inbounds ptr, ptr %239, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !32
  %242 = getelementptr inbounds ptr, ptr %241, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !49
  %244 = load i32, ptr %3, align 4, !tbaa !10
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds ptr, ptr %243, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !51
  %248 = load i32, ptr %2, align 4, !tbaa !10
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds ptr, ptr %247, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !8
  %252 = load i32, ptr %1, align 4, !tbaa !10
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %251, i64 %253
  store i32 %238, ptr %254, align 4, !tbaa !10
  %255 = load i32, ptr %3, align 4, !tbaa !10
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %256
  %258 = load i32, ptr %2, align 4, !tbaa !10
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [4 x [4 x i32]], ptr %257, i64 0, i64 %259
  %261 = load i32, ptr %1, align 4, !tbaa !10
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [4 x i32], ptr %260, i64 0, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !10
  %265 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %266 = getelementptr inbounds ptr, ptr %265, i64 0
  %267 = load ptr, ptr %266, align 8, !tbaa !49
  %268 = load i32, ptr %3, align 4, !tbaa !10
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds ptr, ptr %267, i64 %269
  %271 = load ptr, ptr %270, align 8, !tbaa !51
  %272 = load i32, ptr %2, align 4, !tbaa !10
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds ptr, ptr %271, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !8
  %276 = load i32, ptr %1, align 4, !tbaa !10
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, ptr %275, i64 %277
  store i32 %264, ptr %278, align 4, !tbaa !10
  %279 = load i32, ptr %3, align 4, !tbaa !10
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %280
  %282 = load i32, ptr %2, align 4, !tbaa !10
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [4 x [4 x i32]], ptr %281, i64 0, i64 %283
  %285 = load i32, ptr %1, align 4, !tbaa !10
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [4 x i32], ptr %284, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !10
  %289 = shl i32 %288, 4
  %290 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %291 = getelementptr inbounds ptr, ptr %290, i64 0
  %292 = load ptr, ptr %291, align 8, !tbaa !49
  %293 = load i32, ptr %3, align 4, !tbaa !10
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds ptr, ptr %292, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !51
  %297 = load i32, ptr %2, align 4, !tbaa !10
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %296, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !8
  %301 = load i32, ptr %1, align 4, !tbaa !10
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, ptr %300, i64 %302
  store i32 %289, ptr %303, align 4, !tbaa !10
  %304 = load i32, ptr %3, align 4, !tbaa !10
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %305
  %307 = load i32, ptr %2, align 4, !tbaa !10
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [4 x [4 x i32]], ptr %306, i64 0, i64 %308
  %310 = load i32, ptr %1, align 4, !tbaa !10
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [4 x i32], ptr %309, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !10
  %314 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %315 = getelementptr inbounds ptr, ptr %314, i64 0
  %316 = load ptr, ptr %315, align 8, !tbaa !32
  %317 = getelementptr inbounds ptr, ptr %316, i64 0
  %318 = load ptr, ptr %317, align 8, !tbaa !49
  %319 = load i32, ptr %3, align 4, !tbaa !10
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds ptr, ptr %318, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !51
  %323 = load i32, ptr %2, align 4, !tbaa !10
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %322, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !8
  %327 = load i32, ptr %1, align 4, !tbaa !10
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, ptr %326, i64 %328
  store i32 %313, ptr %329, align 4, !tbaa !10
  %330 = load i32, ptr %3, align 4, !tbaa !10
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %331
  %333 = load i32, ptr %2, align 4, !tbaa !10
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [4 x [4 x i32]], ptr %332, i64 0, i64 %334
  %336 = load i32, ptr %1, align 4, !tbaa !10
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [4 x i32], ptr %335, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !10
  %340 = shl i32 %339, 4
  %341 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %342 = getelementptr inbounds ptr, ptr %341, i64 0
  %343 = load ptr, ptr %342, align 8, !tbaa !32
  %344 = getelementptr inbounds ptr, ptr %343, i64 0
  %345 = load ptr, ptr %344, align 8, !tbaa !49
  %346 = load i32, ptr %3, align 4, !tbaa !10
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !51
  %350 = load i32, ptr %2, align 4, !tbaa !10
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %349, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !8
  %354 = load i32, ptr %1, align 4, !tbaa !10
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, ptr %353, i64 %355
  store i32 %340, ptr %356, align 4, !tbaa !10
  %357 = load i32, ptr %3, align 4, !tbaa !10
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %358
  %360 = load i32, ptr %2, align 4, !tbaa !10
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [4 x [4 x i32]], ptr %359, i64 0, i64 %361
  %363 = load i32, ptr %1, align 4, !tbaa !10
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [4 x i32], ptr %362, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !10
  %367 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %368 = getelementptr inbounds ptr, ptr %367, i64 1
  %369 = load ptr, ptr %368, align 8, !tbaa !32
  %370 = getelementptr inbounds ptr, ptr %369, i64 0
  %371 = load ptr, ptr %370, align 8, !tbaa !49
  %372 = load i32, ptr %3, align 4, !tbaa !10
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds ptr, ptr %371, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !51
  %376 = load i32, ptr %2, align 4, !tbaa !10
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds ptr, ptr %375, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !8
  %380 = load i32, ptr %1, align 4, !tbaa !10
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, ptr %379, i64 %381
  store i32 %366, ptr %382, align 4, !tbaa !10
  %383 = load i32, ptr %3, align 4, !tbaa !10
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %384
  %386 = load i32, ptr %2, align 4, !tbaa !10
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [4 x [4 x i32]], ptr %385, i64 0, i64 %387
  %389 = load i32, ptr %1, align 4, !tbaa !10
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [4 x i32], ptr %388, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !10
  %393 = shl i32 %392, 4
  %394 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %395 = getelementptr inbounds ptr, ptr %394, i64 1
  %396 = load ptr, ptr %395, align 8, !tbaa !32
  %397 = getelementptr inbounds ptr, ptr %396, i64 0
  %398 = load ptr, ptr %397, align 8, !tbaa !49
  %399 = load i32, ptr %3, align 4, !tbaa !10
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds ptr, ptr %398, i64 %400
  %402 = load ptr, ptr %401, align 8, !tbaa !51
  %403 = load i32, ptr %2, align 4, !tbaa !10
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds ptr, ptr %402, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !8
  %407 = load i32, ptr %1, align 4, !tbaa !10
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, ptr %406, i64 %408
  store i32 %393, ptr %409, align 4, !tbaa !10
  br label %410

410:                                              ; preds = %99
  %411 = load i32, ptr %1, align 4, !tbaa !10
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %1, align 4, !tbaa !10
  br label %96, !llvm.loop !53

413:                                              ; preds = %96
  br label %414

414:                                              ; preds = %413
  %415 = load i32, ptr %2, align 4, !tbaa !10
  %416 = add nsw i32 %415, 1
  store i32 %416, ptr %2, align 4, !tbaa !10
  br label %92, !llvm.loop !54

417:                                              ; preds = %92
  br label %418

418:                                              ; preds = %417
  %419 = load i32, ptr %3, align 4, !tbaa !10
  %420 = add nsw i32 %419, 1
  store i32 %420, ptr %3, align 4, !tbaa !10
  br label %88, !llvm.loop !55

421:                                              ; preds = %88
  br label %1351

422:                                              ; preds = %84
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %423

423:                                              ; preds = %1347, %422
  %424 = load i32, ptr %3, align 4, !tbaa !10
  %425 = icmp slt i32 %424, 6
  br i1 %425, label %426, label %1350

426:                                              ; preds = %423
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %427

427:                                              ; preds = %1343, %426
  %428 = load i32, ptr %2, align 4, !tbaa !10
  %429 = icmp slt i32 %428, 4
  br i1 %429, label %430, label %1346

430:                                              ; preds = %427
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %431

431:                                              ; preds = %1339, %430
  %432 = load i32, ptr %1, align 4, !tbaa !10
  %433 = icmp slt i32 %432, 4
  br i1 %433, label %434, label %1342

434:                                              ; preds = %431
  %435 = load i32, ptr %2, align 4, !tbaa !10
  %436 = shl i32 %435, 2
  %437 = load i32, ptr %1, align 4, !tbaa !10
  %438 = add nsw i32 %436, %437
  store i32 %438, ptr %4, align 4, !tbaa !10
  %439 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 0
  %440 = load i32, ptr %439, align 4, !tbaa !10
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %434
  %443 = load i16, ptr @UseDefaultScalingMatrix4x4Flag, align 2, !tbaa !20
  %444 = sext i16 %443 to i32
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %508

446:                                              ; preds = %442, %434
  %447 = load i32, ptr %3, align 4, !tbaa !10
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %448
  %450 = load i32, ptr %2, align 4, !tbaa !10
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [4 x [4 x i32]], ptr %449, i64 0, i64 %451
  %453 = load i32, ptr %1, align 4, !tbaa !10
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [4 x i32], ptr %452, i64 0, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !10
  %457 = shl i32 %456, 4
  %458 = load i32, ptr %4, align 4, !tbaa !10
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %459
  %461 = load i16, ptr %460, align 2, !tbaa !20
  %462 = sext i16 %461 to i32
  %463 = sdiv i32 %457, %462
  %464 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %465 = getelementptr inbounds ptr, ptr %464, i64 1
  %466 = load ptr, ptr %465, align 8, !tbaa !49
  %467 = load i32, ptr %3, align 4, !tbaa !10
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds ptr, ptr %466, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !51
  %471 = load i32, ptr %2, align 4, !tbaa !10
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds ptr, ptr %470, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !8
  %475 = load i32, ptr %1, align 4, !tbaa !10
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, ptr %474, i64 %476
  store i32 %463, ptr %477, align 4, !tbaa !10
  %478 = load i32, ptr %3, align 4, !tbaa !10
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %479
  %481 = load i32, ptr %2, align 4, !tbaa !10
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [4 x [4 x i32]], ptr %480, i64 0, i64 %482
  %484 = load i32, ptr %1, align 4, !tbaa !10
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [4 x i32], ptr %483, i64 0, i64 %485
  %487 = load i32, ptr %486, align 4, !tbaa !10
  %488 = load i32, ptr %4, align 4, !tbaa !10
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %489
  %491 = load i16, ptr %490, align 2, !tbaa !20
  %492 = sext i16 %491 to i32
  %493 = mul nsw i32 %487, %492
  %494 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %495 = getelementptr inbounds ptr, ptr %494, i64 1
  %496 = load ptr, ptr %495, align 8, !tbaa !49
  %497 = load i32, ptr %3, align 4, !tbaa !10
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds ptr, ptr %496, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !51
  %501 = load i32, ptr %2, align 4, !tbaa !10
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds ptr, ptr %500, i64 %502
  %504 = load ptr, ptr %503, align 8, !tbaa !8
  %505 = load i32, ptr %1, align 4, !tbaa !10
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, ptr %504, i64 %506
  store i32 %493, ptr %507, align 4, !tbaa !10
  br label %570

508:                                              ; preds = %442
  %509 = load i32, ptr %3, align 4, !tbaa !10
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %510
  %512 = load i32, ptr %2, align 4, !tbaa !10
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [4 x [4 x i32]], ptr %511, i64 0, i64 %513
  %515 = load i32, ptr %1, align 4, !tbaa !10
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [4 x i32], ptr %514, i64 0, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !10
  %519 = shl i32 %518, 4
  %520 = load i32, ptr %4, align 4, !tbaa !10
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [16 x i16], ptr @ScalingList4x4, i64 0, i64 %521
  %523 = load i16, ptr %522, align 2, !tbaa !20
  %524 = sext i16 %523 to i32
  %525 = sdiv i32 %519, %524
  %526 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %527 = getelementptr inbounds ptr, ptr %526, i64 1
  %528 = load ptr, ptr %527, align 8, !tbaa !49
  %529 = load i32, ptr %3, align 4, !tbaa !10
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds ptr, ptr %528, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !51
  %533 = load i32, ptr %2, align 4, !tbaa !10
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds ptr, ptr %532, i64 %534
  %536 = load ptr, ptr %535, align 8, !tbaa !8
  %537 = load i32, ptr %1, align 4, !tbaa !10
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, ptr %536, i64 %538
  store i32 %525, ptr %539, align 4, !tbaa !10
  %540 = load i32, ptr %3, align 4, !tbaa !10
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %541
  %543 = load i32, ptr %2, align 4, !tbaa !10
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [4 x [4 x i32]], ptr %542, i64 0, i64 %544
  %546 = load i32, ptr %1, align 4, !tbaa !10
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [4 x i32], ptr %545, i64 0, i64 %547
  %549 = load i32, ptr %548, align 4, !tbaa !10
  %550 = load i32, ptr %4, align 4, !tbaa !10
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [16 x i16], ptr @ScalingList4x4, i64 0, i64 %551
  %553 = load i16, ptr %552, align 2, !tbaa !20
  %554 = sext i16 %553 to i32
  %555 = mul nsw i32 %549, %554
  %556 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %557 = getelementptr inbounds ptr, ptr %556, i64 1
  %558 = load ptr, ptr %557, align 8, !tbaa !49
  %559 = load i32, ptr %3, align 4, !tbaa !10
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %558, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !51
  %563 = load i32, ptr %2, align 4, !tbaa !10
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds ptr, ptr %562, i64 %564
  %566 = load ptr, ptr %565, align 8, !tbaa !8
  %567 = load i32, ptr %1, align 4, !tbaa !10
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, ptr %566, i64 %568
  store i32 %555, ptr %569, align 4, !tbaa !10
  br label %570

570:                                              ; preds = %508, %446
  %571 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 1
  %572 = load i32, ptr %571, align 4, !tbaa !10
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %637, label %574

574:                                              ; preds = %570
  %575 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %576 = getelementptr inbounds ptr, ptr %575, i64 1
  %577 = load ptr, ptr %576, align 8, !tbaa !49
  %578 = load i32, ptr %3, align 4, !tbaa !10
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds ptr, ptr %577, i64 %579
  %581 = load ptr, ptr %580, align 8, !tbaa !51
  %582 = load i32, ptr %2, align 4, !tbaa !10
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds ptr, ptr %581, i64 %583
  %585 = load ptr, ptr %584, align 8, !tbaa !8
  %586 = load i32, ptr %1, align 4, !tbaa !10
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i32, ptr %585, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !10
  %590 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %591 = getelementptr inbounds ptr, ptr %590, i64 0
  %592 = load ptr, ptr %591, align 8, !tbaa !32
  %593 = getelementptr inbounds ptr, ptr %592, i64 1
  %594 = load ptr, ptr %593, align 8, !tbaa !49
  %595 = load i32, ptr %3, align 4, !tbaa !10
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds ptr, ptr %594, i64 %596
  %598 = load ptr, ptr %597, align 8, !tbaa !51
  %599 = load i32, ptr %2, align 4, !tbaa !10
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds ptr, ptr %598, i64 %600
  %602 = load ptr, ptr %601, align 8, !tbaa !8
  %603 = load i32, ptr %1, align 4, !tbaa !10
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, ptr %602, i64 %604
  store i32 %589, ptr %605, align 4, !tbaa !10
  %606 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %607 = getelementptr inbounds ptr, ptr %606, i64 1
  %608 = load ptr, ptr %607, align 8, !tbaa !49
  %609 = load i32, ptr %3, align 4, !tbaa !10
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds ptr, ptr %608, i64 %610
  %612 = load ptr, ptr %611, align 8, !tbaa !51
  %613 = load i32, ptr %2, align 4, !tbaa !10
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds ptr, ptr %612, i64 %614
  %616 = load ptr, ptr %615, align 8, !tbaa !8
  %617 = load i32, ptr %1, align 4, !tbaa !10
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, ptr %616, i64 %618
  %620 = load i32, ptr %619, align 4, !tbaa !10
  %621 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %622 = getelementptr inbounds ptr, ptr %621, i64 0
  %623 = load ptr, ptr %622, align 8, !tbaa !32
  %624 = getelementptr inbounds ptr, ptr %623, i64 1
  %625 = load ptr, ptr %624, align 8, !tbaa !49
  %626 = load i32, ptr %3, align 4, !tbaa !10
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds ptr, ptr %625, i64 %627
  %629 = load ptr, ptr %628, align 8, !tbaa !51
  %630 = load i32, ptr %2, align 4, !tbaa !10
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds ptr, ptr %629, i64 %631
  %633 = load ptr, ptr %632, align 8, !tbaa !8
  %634 = load i32, ptr %1, align 4, !tbaa !10
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32, ptr %633, i64 %635
  store i32 %620, ptr %636, align 4, !tbaa !10
  br label %727

637:                                              ; preds = %570
  %638 = load i32, ptr %3, align 4, !tbaa !10
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %639
  %641 = load i32, ptr %2, align 4, !tbaa !10
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [4 x [4 x i32]], ptr %640, i64 0, i64 %642
  %644 = load i32, ptr %1, align 4, !tbaa !10
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [4 x i32], ptr %643, i64 0, i64 %645
  %647 = load i32, ptr %646, align 4, !tbaa !10
  %648 = shl i32 %647, 4
  %649 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2, !tbaa !20
  %650 = sext i16 %649 to i32
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %658

652:                                              ; preds = %637
  %653 = load i32, ptr %4, align 4, !tbaa !10
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %654
  %656 = load i16, ptr %655, align 2, !tbaa !20
  %657 = sext i16 %656 to i32
  br label %664

658:                                              ; preds = %637
  %659 = load i32, ptr %4, align 4, !tbaa !10
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 1), i64 0, i64 %660
  %662 = load i16, ptr %661, align 2, !tbaa !20
  %663 = sext i16 %662 to i32
  br label %664

664:                                              ; preds = %658, %652
  %665 = phi i32 [ %657, %652 ], [ %663, %658 ]
  %666 = sdiv i32 %648, %665
  %667 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %668 = getelementptr inbounds ptr, ptr %667, i64 0
  %669 = load ptr, ptr %668, align 8, !tbaa !32
  %670 = getelementptr inbounds ptr, ptr %669, i64 1
  %671 = load ptr, ptr %670, align 8, !tbaa !49
  %672 = load i32, ptr %3, align 4, !tbaa !10
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds ptr, ptr %671, i64 %673
  %675 = load ptr, ptr %674, align 8, !tbaa !51
  %676 = load i32, ptr %2, align 4, !tbaa !10
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds ptr, ptr %675, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !8
  %680 = load i32, ptr %1, align 4, !tbaa !10
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, ptr %679, i64 %681
  store i32 %666, ptr %682, align 4, !tbaa !10
  %683 = load i32, ptr %3, align 4, !tbaa !10
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %684
  %686 = load i32, ptr %2, align 4, !tbaa !10
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [4 x [4 x i32]], ptr %685, i64 0, i64 %687
  %689 = load i32, ptr %1, align 4, !tbaa !10
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [4 x i32], ptr %688, i64 0, i64 %690
  %692 = load i32, ptr %691, align 4, !tbaa !10
  %693 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 1), align 2, !tbaa !20
  %694 = sext i16 %693 to i32
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %702

696:                                              ; preds = %664
  %697 = load i32, ptr %4, align 4, !tbaa !10
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %698
  %700 = load i16, ptr %699, align 2, !tbaa !20
  %701 = sext i16 %700 to i32
  br label %708

702:                                              ; preds = %664
  %703 = load i32, ptr %4, align 4, !tbaa !10
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 1), i64 0, i64 %704
  %706 = load i16, ptr %705, align 2, !tbaa !20
  %707 = sext i16 %706 to i32
  br label %708

708:                                              ; preds = %702, %696
  %709 = phi i32 [ %701, %696 ], [ %707, %702 ]
  %710 = mul nsw i32 %692, %709
  %711 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %712 = getelementptr inbounds ptr, ptr %711, i64 0
  %713 = load ptr, ptr %712, align 8, !tbaa !32
  %714 = getelementptr inbounds ptr, ptr %713, i64 1
  %715 = load ptr, ptr %714, align 8, !tbaa !49
  %716 = load i32, ptr %3, align 4, !tbaa !10
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds ptr, ptr %715, i64 %717
  %719 = load ptr, ptr %718, align 8, !tbaa !51
  %720 = load i32, ptr %2, align 4, !tbaa !10
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds ptr, ptr %719, i64 %721
  %723 = load ptr, ptr %722, align 8, !tbaa !8
  %724 = load i32, ptr %1, align 4, !tbaa !10
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, ptr %723, i64 %725
  store i32 %710, ptr %726, align 4, !tbaa !10
  br label %727

727:                                              ; preds = %708, %574
  %728 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 2
  %729 = load i32, ptr %728, align 4, !tbaa !10
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %798, label %731

731:                                              ; preds = %727
  %732 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %733 = getelementptr inbounds ptr, ptr %732, i64 0
  %734 = load ptr, ptr %733, align 8, !tbaa !32
  %735 = getelementptr inbounds ptr, ptr %734, i64 1
  %736 = load ptr, ptr %735, align 8, !tbaa !49
  %737 = load i32, ptr %3, align 4, !tbaa !10
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds ptr, ptr %736, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !51
  %741 = load i32, ptr %2, align 4, !tbaa !10
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds ptr, ptr %740, i64 %742
  %744 = load ptr, ptr %743, align 8, !tbaa !8
  %745 = load i32, ptr %1, align 4, !tbaa !10
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i32, ptr %744, i64 %746
  %748 = load i32, ptr %747, align 4, !tbaa !10
  %749 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %750 = getelementptr inbounds ptr, ptr %749, i64 1
  %751 = load ptr, ptr %750, align 8, !tbaa !32
  %752 = getelementptr inbounds ptr, ptr %751, i64 1
  %753 = load ptr, ptr %752, align 8, !tbaa !49
  %754 = load i32, ptr %3, align 4, !tbaa !10
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds ptr, ptr %753, i64 %755
  %757 = load ptr, ptr %756, align 8, !tbaa !51
  %758 = load i32, ptr %2, align 4, !tbaa !10
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds ptr, ptr %757, i64 %759
  %761 = load ptr, ptr %760, align 8, !tbaa !8
  %762 = load i32, ptr %1, align 4, !tbaa !10
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i32, ptr %761, i64 %763
  store i32 %748, ptr %764, align 4, !tbaa !10
  %765 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %766 = getelementptr inbounds ptr, ptr %765, i64 0
  %767 = load ptr, ptr %766, align 8, !tbaa !32
  %768 = getelementptr inbounds ptr, ptr %767, i64 1
  %769 = load ptr, ptr %768, align 8, !tbaa !49
  %770 = load i32, ptr %3, align 4, !tbaa !10
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds ptr, ptr %769, i64 %771
  %773 = load ptr, ptr %772, align 8, !tbaa !51
  %774 = load i32, ptr %2, align 4, !tbaa !10
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds ptr, ptr %773, i64 %775
  %777 = load ptr, ptr %776, align 8, !tbaa !8
  %778 = load i32, ptr %1, align 4, !tbaa !10
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i32, ptr %777, i64 %779
  %781 = load i32, ptr %780, align 4, !tbaa !10
  %782 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %783 = getelementptr inbounds ptr, ptr %782, i64 1
  %784 = load ptr, ptr %783, align 8, !tbaa !32
  %785 = getelementptr inbounds ptr, ptr %784, i64 1
  %786 = load ptr, ptr %785, align 8, !tbaa !49
  %787 = load i32, ptr %3, align 4, !tbaa !10
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds ptr, ptr %786, i64 %788
  %790 = load ptr, ptr %789, align 8, !tbaa !51
  %791 = load i32, ptr %2, align 4, !tbaa !10
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds ptr, ptr %790, i64 %792
  %794 = load ptr, ptr %793, align 8, !tbaa !8
  %795 = load i32, ptr %1, align 4, !tbaa !10
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds i32, ptr %794, i64 %796
  store i32 %781, ptr %797, align 4, !tbaa !10
  br label %888

798:                                              ; preds = %727
  %799 = load i32, ptr %3, align 4, !tbaa !10
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %800
  %802 = load i32, ptr %2, align 4, !tbaa !10
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds [4 x [4 x i32]], ptr %801, i64 0, i64 %803
  %805 = load i32, ptr %1, align 4, !tbaa !10
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [4 x i32], ptr %804, i64 0, i64 %806
  %808 = load i32, ptr %807, align 4, !tbaa !10
  %809 = shl i32 %808, 4
  %810 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2, !tbaa !20
  %811 = sext i16 %810 to i32
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %819

813:                                              ; preds = %798
  %814 = load i32, ptr %4, align 4, !tbaa !10
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %815
  %817 = load i16, ptr %816, align 2, !tbaa !20
  %818 = sext i16 %817 to i32
  br label %825

819:                                              ; preds = %798
  %820 = load i32, ptr %4, align 4, !tbaa !10
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 2), i64 0, i64 %821
  %823 = load i16, ptr %822, align 2, !tbaa !20
  %824 = sext i16 %823 to i32
  br label %825

825:                                              ; preds = %819, %813
  %826 = phi i32 [ %818, %813 ], [ %824, %819 ]
  %827 = sdiv i32 %809, %826
  %828 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %829 = getelementptr inbounds ptr, ptr %828, i64 1
  %830 = load ptr, ptr %829, align 8, !tbaa !32
  %831 = getelementptr inbounds ptr, ptr %830, i64 1
  %832 = load ptr, ptr %831, align 8, !tbaa !49
  %833 = load i32, ptr %3, align 4, !tbaa !10
  %834 = sext i32 %833 to i64
  %835 = getelementptr inbounds ptr, ptr %832, i64 %834
  %836 = load ptr, ptr %835, align 8, !tbaa !51
  %837 = load i32, ptr %2, align 4, !tbaa !10
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds ptr, ptr %836, i64 %838
  %840 = load ptr, ptr %839, align 8, !tbaa !8
  %841 = load i32, ptr %1, align 4, !tbaa !10
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds i32, ptr %840, i64 %842
  store i32 %827, ptr %843, align 4, !tbaa !10
  %844 = load i32, ptr %3, align 4, !tbaa !10
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %845
  %847 = load i32, ptr %2, align 4, !tbaa !10
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [4 x [4 x i32]], ptr %846, i64 0, i64 %848
  %850 = load i32, ptr %1, align 4, !tbaa !10
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds [4 x i32], ptr %849, i64 0, i64 %851
  %853 = load i32, ptr %852, align 4, !tbaa !10
  %854 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 2), align 2, !tbaa !20
  %855 = sext i16 %854 to i32
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %863

857:                                              ; preds = %825
  %858 = load i32, ptr %4, align 4, !tbaa !10
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds [16 x i16], ptr @Quant_intra_default, i64 0, i64 %859
  %861 = load i16, ptr %860, align 2, !tbaa !20
  %862 = sext i16 %861 to i32
  br label %869

863:                                              ; preds = %825
  %864 = load i32, ptr %4, align 4, !tbaa !10
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 2), i64 0, i64 %865
  %867 = load i16, ptr %866, align 2, !tbaa !20
  %868 = sext i16 %867 to i32
  br label %869

869:                                              ; preds = %863, %857
  %870 = phi i32 [ %862, %857 ], [ %868, %863 ]
  %871 = mul nsw i32 %853, %870
  %872 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %873 = getelementptr inbounds ptr, ptr %872, i64 1
  %874 = load ptr, ptr %873, align 8, !tbaa !32
  %875 = getelementptr inbounds ptr, ptr %874, i64 1
  %876 = load ptr, ptr %875, align 8, !tbaa !49
  %877 = load i32, ptr %3, align 4, !tbaa !10
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds ptr, ptr %876, i64 %878
  %880 = load ptr, ptr %879, align 8, !tbaa !51
  %881 = load i32, ptr %2, align 4, !tbaa !10
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds ptr, ptr %880, i64 %882
  %884 = load ptr, ptr %883, align 8, !tbaa !8
  %885 = load i32, ptr %1, align 4, !tbaa !10
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i32, ptr %884, i64 %886
  store i32 %871, ptr %887, align 4, !tbaa !10
  br label %888

888:                                              ; preds = %869, %731
  %889 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 3
  %890 = load i32, ptr %889, align 4, !tbaa !10
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %896

892:                                              ; preds = %888
  %893 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 3), align 2, !tbaa !20
  %894 = sext i16 %893 to i32
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %896, label %958

896:                                              ; preds = %892, %888
  %897 = load i32, ptr %3, align 4, !tbaa !10
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %898
  %900 = load i32, ptr %2, align 4, !tbaa !10
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [4 x [4 x i32]], ptr %899, i64 0, i64 %901
  %903 = load i32, ptr %1, align 4, !tbaa !10
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [4 x i32], ptr %902, i64 0, i64 %904
  %906 = load i32, ptr %905, align 4, !tbaa !10
  %907 = shl i32 %906, 4
  %908 = load i32, ptr %4, align 4, !tbaa !10
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %909
  %911 = load i16, ptr %910, align 2, !tbaa !20
  %912 = sext i16 %911 to i32
  %913 = sdiv i32 %907, %912
  %914 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %915 = getelementptr inbounds ptr, ptr %914, i64 0
  %916 = load ptr, ptr %915, align 8, !tbaa !49
  %917 = load i32, ptr %3, align 4, !tbaa !10
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds ptr, ptr %916, i64 %918
  %920 = load ptr, ptr %919, align 8, !tbaa !51
  %921 = load i32, ptr %2, align 4, !tbaa !10
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds ptr, ptr %920, i64 %922
  %924 = load ptr, ptr %923, align 8, !tbaa !8
  %925 = load i32, ptr %1, align 4, !tbaa !10
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds i32, ptr %924, i64 %926
  store i32 %913, ptr %927, align 4, !tbaa !10
  %928 = load i32, ptr %3, align 4, !tbaa !10
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %929
  %931 = load i32, ptr %2, align 4, !tbaa !10
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds [4 x [4 x i32]], ptr %930, i64 0, i64 %932
  %934 = load i32, ptr %1, align 4, !tbaa !10
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds [4 x i32], ptr %933, i64 0, i64 %935
  %937 = load i32, ptr %936, align 4, !tbaa !10
  %938 = load i32, ptr %4, align 4, !tbaa !10
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %939
  %941 = load i16, ptr %940, align 2, !tbaa !20
  %942 = sext i16 %941 to i32
  %943 = mul nsw i32 %937, %942
  %944 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %945 = getelementptr inbounds ptr, ptr %944, i64 0
  %946 = load ptr, ptr %945, align 8, !tbaa !49
  %947 = load i32, ptr %3, align 4, !tbaa !10
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds ptr, ptr %946, i64 %948
  %950 = load ptr, ptr %949, align 8, !tbaa !51
  %951 = load i32, ptr %2, align 4, !tbaa !10
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds ptr, ptr %950, i64 %952
  %954 = load ptr, ptr %953, align 8, !tbaa !8
  %955 = load i32, ptr %1, align 4, !tbaa !10
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds i32, ptr %954, i64 %956
  store i32 %943, ptr %957, align 4, !tbaa !10
  br label %1020

958:                                              ; preds = %892
  %959 = load i32, ptr %3, align 4, !tbaa !10
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %960
  %962 = load i32, ptr %2, align 4, !tbaa !10
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds [4 x [4 x i32]], ptr %961, i64 0, i64 %963
  %965 = load i32, ptr %1, align 4, !tbaa !10
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds [4 x i32], ptr %964, i64 0, i64 %966
  %968 = load i32, ptr %967, align 4, !tbaa !10
  %969 = shl i32 %968, 4
  %970 = load i32, ptr %4, align 4, !tbaa !10
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 3), i64 0, i64 %971
  %973 = load i16, ptr %972, align 2, !tbaa !20
  %974 = sext i16 %973 to i32
  %975 = sdiv i32 %969, %974
  %976 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %977 = getelementptr inbounds ptr, ptr %976, i64 0
  %978 = load ptr, ptr %977, align 8, !tbaa !49
  %979 = load i32, ptr %3, align 4, !tbaa !10
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds ptr, ptr %978, i64 %980
  %982 = load ptr, ptr %981, align 8, !tbaa !51
  %983 = load i32, ptr %2, align 4, !tbaa !10
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds ptr, ptr %982, i64 %984
  %986 = load ptr, ptr %985, align 8, !tbaa !8
  %987 = load i32, ptr %1, align 4, !tbaa !10
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds i32, ptr %986, i64 %988
  store i32 %975, ptr %989, align 4, !tbaa !10
  %990 = load i32, ptr %3, align 4, !tbaa !10
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %991
  %993 = load i32, ptr %2, align 4, !tbaa !10
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [4 x [4 x i32]], ptr %992, i64 0, i64 %994
  %996 = load i32, ptr %1, align 4, !tbaa !10
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds [4 x i32], ptr %995, i64 0, i64 %997
  %999 = load i32, ptr %998, align 4, !tbaa !10
  %1000 = load i32, ptr %4, align 4, !tbaa !10
  %1001 = sext i32 %1000 to i64
  %1002 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 3), i64 0, i64 %1001
  %1003 = load i16, ptr %1002, align 2, !tbaa !20
  %1004 = sext i16 %1003 to i32
  %1005 = mul nsw i32 %999, %1004
  %1006 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %1007 = getelementptr inbounds ptr, ptr %1006, i64 0
  %1008 = load ptr, ptr %1007, align 8, !tbaa !49
  %1009 = load i32, ptr %3, align 4, !tbaa !10
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds ptr, ptr %1008, i64 %1010
  %1012 = load ptr, ptr %1011, align 8, !tbaa !51
  %1013 = load i32, ptr %2, align 4, !tbaa !10
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds ptr, ptr %1012, i64 %1014
  %1016 = load ptr, ptr %1015, align 8, !tbaa !8
  %1017 = load i32, ptr %1, align 4, !tbaa !10
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds i32, ptr %1016, i64 %1018
  store i32 %1005, ptr %1019, align 4, !tbaa !10
  br label %1020

1020:                                             ; preds = %958, %896
  %1021 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 4
  %1022 = load i32, ptr %1021, align 4, !tbaa !10
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1087, label %1024

1024:                                             ; preds = %1020
  %1025 = load ptr, ptr @LevelScale4x4Luma, align 8, !tbaa !32
  %1026 = getelementptr inbounds ptr, ptr %1025, i64 0
  %1027 = load ptr, ptr %1026, align 8, !tbaa !49
  %1028 = load i32, ptr %3, align 4, !tbaa !10
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds ptr, ptr %1027, i64 %1029
  %1031 = load ptr, ptr %1030, align 8, !tbaa !51
  %1032 = load i32, ptr %2, align 4, !tbaa !10
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds ptr, ptr %1031, i64 %1033
  %1035 = load ptr, ptr %1034, align 8, !tbaa !8
  %1036 = load i32, ptr %1, align 4, !tbaa !10
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds i32, ptr %1035, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !10
  %1040 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %1041 = getelementptr inbounds ptr, ptr %1040, i64 0
  %1042 = load ptr, ptr %1041, align 8, !tbaa !32
  %1043 = getelementptr inbounds ptr, ptr %1042, i64 0
  %1044 = load ptr, ptr %1043, align 8, !tbaa !49
  %1045 = load i32, ptr %3, align 4, !tbaa !10
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds ptr, ptr %1044, i64 %1046
  %1048 = load ptr, ptr %1047, align 8, !tbaa !51
  %1049 = load i32, ptr %2, align 4, !tbaa !10
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds ptr, ptr %1048, i64 %1050
  %1052 = load ptr, ptr %1051, align 8, !tbaa !8
  %1053 = load i32, ptr %1, align 4, !tbaa !10
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds i32, ptr %1052, i64 %1054
  store i32 %1039, ptr %1055, align 4, !tbaa !10
  %1056 = load ptr, ptr @InvLevelScale4x4Luma, align 8, !tbaa !32
  %1057 = getelementptr inbounds ptr, ptr %1056, i64 0
  %1058 = load ptr, ptr %1057, align 8, !tbaa !49
  %1059 = load i32, ptr %3, align 4, !tbaa !10
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds ptr, ptr %1058, i64 %1060
  %1062 = load ptr, ptr %1061, align 8, !tbaa !51
  %1063 = load i32, ptr %2, align 4, !tbaa !10
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds ptr, ptr %1062, i64 %1064
  %1066 = load ptr, ptr %1065, align 8, !tbaa !8
  %1067 = load i32, ptr %1, align 4, !tbaa !10
  %1068 = sext i32 %1067 to i64
  %1069 = getelementptr inbounds i32, ptr %1066, i64 %1068
  %1070 = load i32, ptr %1069, align 4, !tbaa !10
  %1071 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %1072 = getelementptr inbounds ptr, ptr %1071, i64 0
  %1073 = load ptr, ptr %1072, align 8, !tbaa !32
  %1074 = getelementptr inbounds ptr, ptr %1073, i64 0
  %1075 = load ptr, ptr %1074, align 8, !tbaa !49
  %1076 = load i32, ptr %3, align 4, !tbaa !10
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds ptr, ptr %1075, i64 %1077
  %1079 = load ptr, ptr %1078, align 8, !tbaa !51
  %1080 = load i32, ptr %2, align 4, !tbaa !10
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds ptr, ptr %1079, i64 %1081
  %1083 = load ptr, ptr %1082, align 8, !tbaa !8
  %1084 = load i32, ptr %1, align 4, !tbaa !10
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds i32, ptr %1083, i64 %1085
  store i32 %1070, ptr %1086, align 4, !tbaa !10
  br label %1177

1087:                                             ; preds = %1020
  %1088 = load i32, ptr %3, align 4, !tbaa !10
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %1089
  %1091 = load i32, ptr %2, align 4, !tbaa !10
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds [4 x [4 x i32]], ptr %1090, i64 0, i64 %1092
  %1094 = load i32, ptr %1, align 4, !tbaa !10
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds [4 x i32], ptr %1093, i64 0, i64 %1095
  %1097 = load i32, ptr %1096, align 4, !tbaa !10
  %1098 = shl i32 %1097, 4
  %1099 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2, !tbaa !20
  %1100 = sext i16 %1099 to i32
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1102, label %1108

1102:                                             ; preds = %1087
  %1103 = load i32, ptr %4, align 4, !tbaa !10
  %1104 = sext i32 %1103 to i64
  %1105 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %1104
  %1106 = load i16, ptr %1105, align 2, !tbaa !20
  %1107 = sext i16 %1106 to i32
  br label %1114

1108:                                             ; preds = %1087
  %1109 = load i32, ptr %4, align 4, !tbaa !10
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 4), i64 0, i64 %1110
  %1112 = load i16, ptr %1111, align 2, !tbaa !20
  %1113 = sext i16 %1112 to i32
  br label %1114

1114:                                             ; preds = %1108, %1102
  %1115 = phi i32 [ %1107, %1102 ], [ %1113, %1108 ]
  %1116 = sdiv i32 %1098, %1115
  %1117 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %1118 = getelementptr inbounds ptr, ptr %1117, i64 0
  %1119 = load ptr, ptr %1118, align 8, !tbaa !32
  %1120 = getelementptr inbounds ptr, ptr %1119, i64 0
  %1121 = load ptr, ptr %1120, align 8, !tbaa !49
  %1122 = load i32, ptr %3, align 4, !tbaa !10
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds ptr, ptr %1121, i64 %1123
  %1125 = load ptr, ptr %1124, align 8, !tbaa !51
  %1126 = load i32, ptr %2, align 4, !tbaa !10
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds ptr, ptr %1125, i64 %1127
  %1129 = load ptr, ptr %1128, align 8, !tbaa !8
  %1130 = load i32, ptr %1, align 4, !tbaa !10
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds i32, ptr %1129, i64 %1131
  store i32 %1116, ptr %1132, align 4, !tbaa !10
  %1133 = load i32, ptr %3, align 4, !tbaa !10
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %1134
  %1136 = load i32, ptr %2, align 4, !tbaa !10
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [4 x [4 x i32]], ptr %1135, i64 0, i64 %1137
  %1139 = load i32, ptr %1, align 4, !tbaa !10
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [4 x i32], ptr %1138, i64 0, i64 %1140
  %1142 = load i32, ptr %1141, align 4, !tbaa !10
  %1143 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 4), align 2, !tbaa !20
  %1144 = sext i16 %1143 to i32
  %1145 = icmp ne i32 %1144, 0
  br i1 %1145, label %1146, label %1152

1146:                                             ; preds = %1114
  %1147 = load i32, ptr %4, align 4, !tbaa !10
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %1148
  %1150 = load i16, ptr %1149, align 2, !tbaa !20
  %1151 = sext i16 %1150 to i32
  br label %1158

1152:                                             ; preds = %1114
  %1153 = load i32, ptr %4, align 4, !tbaa !10
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 4), i64 0, i64 %1154
  %1156 = load i16, ptr %1155, align 2, !tbaa !20
  %1157 = sext i16 %1156 to i32
  br label %1158

1158:                                             ; preds = %1152, %1146
  %1159 = phi i32 [ %1151, %1146 ], [ %1157, %1152 ]
  %1160 = mul nsw i32 %1142, %1159
  %1161 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %1162 = getelementptr inbounds ptr, ptr %1161, i64 0
  %1163 = load ptr, ptr %1162, align 8, !tbaa !32
  %1164 = getelementptr inbounds ptr, ptr %1163, i64 0
  %1165 = load ptr, ptr %1164, align 8, !tbaa !49
  %1166 = load i32, ptr %3, align 4, !tbaa !10
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds ptr, ptr %1165, i64 %1167
  %1169 = load ptr, ptr %1168, align 8, !tbaa !51
  %1170 = load i32, ptr %2, align 4, !tbaa !10
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds ptr, ptr %1169, i64 %1171
  %1173 = load ptr, ptr %1172, align 8, !tbaa !8
  %1174 = load i32, ptr %1, align 4, !tbaa !10
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds i32, ptr %1173, i64 %1175
  store i32 %1160, ptr %1176, align 4, !tbaa !10
  br label %1177

1177:                                             ; preds = %1158, %1024
  %1178 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 5
  %1179 = load i32, ptr %1178, align 4, !tbaa !10
  %1180 = icmp ne i32 %1179, 0
  br i1 %1180, label %1248, label %1181

1181:                                             ; preds = %1177
  %1182 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %1183 = getelementptr inbounds ptr, ptr %1182, i64 0
  %1184 = load ptr, ptr %1183, align 8, !tbaa !32
  %1185 = getelementptr inbounds ptr, ptr %1184, i64 0
  %1186 = load ptr, ptr %1185, align 8, !tbaa !49
  %1187 = load i32, ptr %3, align 4, !tbaa !10
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds ptr, ptr %1186, i64 %1188
  %1190 = load ptr, ptr %1189, align 8, !tbaa !51
  %1191 = load i32, ptr %2, align 4, !tbaa !10
  %1192 = sext i32 %1191 to i64
  %1193 = getelementptr inbounds ptr, ptr %1190, i64 %1192
  %1194 = load ptr, ptr %1193, align 8, !tbaa !8
  %1195 = load i32, ptr %1, align 4, !tbaa !10
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds i32, ptr %1194, i64 %1196
  %1198 = load i32, ptr %1197, align 4, !tbaa !10
  %1199 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %1200 = getelementptr inbounds ptr, ptr %1199, i64 1
  %1201 = load ptr, ptr %1200, align 8, !tbaa !32
  %1202 = getelementptr inbounds ptr, ptr %1201, i64 0
  %1203 = load ptr, ptr %1202, align 8, !tbaa !49
  %1204 = load i32, ptr %3, align 4, !tbaa !10
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds ptr, ptr %1203, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !51
  %1208 = load i32, ptr %2, align 4, !tbaa !10
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds ptr, ptr %1207, i64 %1209
  %1211 = load ptr, ptr %1210, align 8, !tbaa !8
  %1212 = load i32, ptr %1, align 4, !tbaa !10
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds i32, ptr %1211, i64 %1213
  store i32 %1198, ptr %1214, align 4, !tbaa !10
  %1215 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %1216 = getelementptr inbounds ptr, ptr %1215, i64 0
  %1217 = load ptr, ptr %1216, align 8, !tbaa !32
  %1218 = getelementptr inbounds ptr, ptr %1217, i64 0
  %1219 = load ptr, ptr %1218, align 8, !tbaa !49
  %1220 = load i32, ptr %3, align 4, !tbaa !10
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds ptr, ptr %1219, i64 %1221
  %1223 = load ptr, ptr %1222, align 8, !tbaa !51
  %1224 = load i32, ptr %2, align 4, !tbaa !10
  %1225 = sext i32 %1224 to i64
  %1226 = getelementptr inbounds ptr, ptr %1223, i64 %1225
  %1227 = load ptr, ptr %1226, align 8, !tbaa !8
  %1228 = load i32, ptr %1, align 4, !tbaa !10
  %1229 = sext i32 %1228 to i64
  %1230 = getelementptr inbounds i32, ptr %1227, i64 %1229
  %1231 = load i32, ptr %1230, align 4, !tbaa !10
  %1232 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %1233 = getelementptr inbounds ptr, ptr %1232, i64 1
  %1234 = load ptr, ptr %1233, align 8, !tbaa !32
  %1235 = getelementptr inbounds ptr, ptr %1234, i64 0
  %1236 = load ptr, ptr %1235, align 8, !tbaa !49
  %1237 = load i32, ptr %3, align 4, !tbaa !10
  %1238 = sext i32 %1237 to i64
  %1239 = getelementptr inbounds ptr, ptr %1236, i64 %1238
  %1240 = load ptr, ptr %1239, align 8, !tbaa !51
  %1241 = load i32, ptr %2, align 4, !tbaa !10
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds ptr, ptr %1240, i64 %1242
  %1244 = load ptr, ptr %1243, align 8, !tbaa !8
  %1245 = load i32, ptr %1, align 4, !tbaa !10
  %1246 = sext i32 %1245 to i64
  %1247 = getelementptr inbounds i32, ptr %1244, i64 %1246
  store i32 %1231, ptr %1247, align 4, !tbaa !10
  br label %1338

1248:                                             ; preds = %1177
  %1249 = load i32, ptr %3, align 4, !tbaa !10
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @quant_coef, i64 0, i64 %1250
  %1252 = load i32, ptr %2, align 4, !tbaa !10
  %1253 = sext i32 %1252 to i64
  %1254 = getelementptr inbounds [4 x [4 x i32]], ptr %1251, i64 0, i64 %1253
  %1255 = load i32, ptr %1, align 4, !tbaa !10
  %1256 = sext i32 %1255 to i64
  %1257 = getelementptr inbounds [4 x i32], ptr %1254, i64 0, i64 %1256
  %1258 = load i32, ptr %1257, align 4, !tbaa !10
  %1259 = shl i32 %1258, 4
  %1260 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2, !tbaa !20
  %1261 = sext i16 %1260 to i32
  %1262 = icmp ne i32 %1261, 0
  br i1 %1262, label %1263, label %1269

1263:                                             ; preds = %1248
  %1264 = load i32, ptr %4, align 4, !tbaa !10
  %1265 = sext i32 %1264 to i64
  %1266 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %1265
  %1267 = load i16, ptr %1266, align 2, !tbaa !20
  %1268 = sext i16 %1267 to i32
  br label %1275

1269:                                             ; preds = %1248
  %1270 = load i32, ptr %4, align 4, !tbaa !10
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 5), i64 0, i64 %1271
  %1273 = load i16, ptr %1272, align 2, !tbaa !20
  %1274 = sext i16 %1273 to i32
  br label %1275

1275:                                             ; preds = %1269, %1263
  %1276 = phi i32 [ %1268, %1263 ], [ %1274, %1269 ]
  %1277 = sdiv i32 %1259, %1276
  %1278 = load ptr, ptr @LevelScale4x4Chroma, align 8, !tbaa !37
  %1279 = getelementptr inbounds ptr, ptr %1278, i64 1
  %1280 = load ptr, ptr %1279, align 8, !tbaa !32
  %1281 = getelementptr inbounds ptr, ptr %1280, i64 0
  %1282 = load ptr, ptr %1281, align 8, !tbaa !49
  %1283 = load i32, ptr %3, align 4, !tbaa !10
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds ptr, ptr %1282, i64 %1284
  %1286 = load ptr, ptr %1285, align 8, !tbaa !51
  %1287 = load i32, ptr %2, align 4, !tbaa !10
  %1288 = sext i32 %1287 to i64
  %1289 = getelementptr inbounds ptr, ptr %1286, i64 %1288
  %1290 = load ptr, ptr %1289, align 8, !tbaa !8
  %1291 = load i32, ptr %1, align 4, !tbaa !10
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds i32, ptr %1290, i64 %1292
  store i32 %1277, ptr %1293, align 4, !tbaa !10
  %1294 = load i32, ptr %3, align 4, !tbaa !10
  %1295 = sext i32 %1294 to i64
  %1296 = getelementptr inbounds [6 x [4 x [4 x i32]]], ptr @dequant_coef, i64 0, i64 %1295
  %1297 = load i32, ptr %2, align 4, !tbaa !10
  %1298 = sext i32 %1297 to i64
  %1299 = getelementptr inbounds [4 x [4 x i32]], ptr %1296, i64 0, i64 %1298
  %1300 = load i32, ptr %1, align 4, !tbaa !10
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds [4 x i32], ptr %1299, i64 0, i64 %1301
  %1303 = load i32, ptr %1302, align 4, !tbaa !10
  %1304 = load i16, ptr getelementptr inbounds ([6 x i16], ptr @UseDefaultScalingMatrix4x4Flag, i64 0, i64 5), align 2, !tbaa !20
  %1305 = sext i16 %1304 to i32
  %1306 = icmp ne i32 %1305, 0
  br i1 %1306, label %1307, label %1313

1307:                                             ; preds = %1275
  %1308 = load i32, ptr %4, align 4, !tbaa !10
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds [16 x i16], ptr @Quant_inter_default, i64 0, i64 %1309
  %1311 = load i16, ptr %1310, align 2, !tbaa !20
  %1312 = sext i16 %1311 to i32
  br label %1319

1313:                                             ; preds = %1275
  %1314 = load i32, ptr %4, align 4, !tbaa !10
  %1315 = sext i32 %1314 to i64
  %1316 = getelementptr inbounds [16 x i16], ptr getelementptr inbounds ([6 x [16 x i16]], ptr @ScalingList4x4, i64 0, i64 5), i64 0, i64 %1315
  %1317 = load i16, ptr %1316, align 2, !tbaa !20
  %1318 = sext i16 %1317 to i32
  br label %1319

1319:                                             ; preds = %1313, %1307
  %1320 = phi i32 [ %1312, %1307 ], [ %1318, %1313 ]
  %1321 = mul nsw i32 %1303, %1320
  %1322 = load ptr, ptr @InvLevelScale4x4Chroma, align 8, !tbaa !37
  %1323 = getelementptr inbounds ptr, ptr %1322, i64 1
  %1324 = load ptr, ptr %1323, align 8, !tbaa !32
  %1325 = getelementptr inbounds ptr, ptr %1324, i64 0
  %1326 = load ptr, ptr %1325, align 8, !tbaa !49
  %1327 = load i32, ptr %3, align 4, !tbaa !10
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds ptr, ptr %1326, i64 %1328
  %1330 = load ptr, ptr %1329, align 8, !tbaa !51
  %1331 = load i32, ptr %2, align 4, !tbaa !10
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds ptr, ptr %1330, i64 %1332
  %1334 = load ptr, ptr %1333, align 8, !tbaa !8
  %1335 = load i32, ptr %1, align 4, !tbaa !10
  %1336 = sext i32 %1335 to i64
  %1337 = getelementptr inbounds i32, ptr %1334, i64 %1336
  store i32 %1321, ptr %1337, align 4, !tbaa !10
  br label %1338

1338:                                             ; preds = %1319, %1181
  br label %1339

1339:                                             ; preds = %1338
  %1340 = load i32, ptr %1, align 4, !tbaa !10
  %1341 = add nsw i32 %1340, 1
  store i32 %1341, ptr %1, align 4, !tbaa !10
  br label %431, !llvm.loop !56

1342:                                             ; preds = %431
  br label %1343

1343:                                             ; preds = %1342
  %1344 = load i32, ptr %2, align 4, !tbaa !10
  %1345 = add nsw i32 %1344, 1
  store i32 %1345, ptr %2, align 4, !tbaa !10
  br label %427, !llvm.loop !57

1346:                                             ; preds = %427
  br label %1347

1347:                                             ; preds = %1346
  %1348 = load i32, ptr %3, align 4, !tbaa !10
  %1349 = add nsw i32 %1348, 1
  store i32 %1349, ptr %3, align 4, !tbaa !10
  br label %423, !llvm.loop !58

1350:                                             ; preds = %423
  br label %1351

1351:                                             ; preds = %1350, %421
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @CalculateQuant8Param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 0, ptr %6, align 4, !tbaa !10
  %7 = load ptr, ptr @active_sps, align 8, !tbaa !24
  %8 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %7, i32 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !41
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %13 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !45
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %69

17:                                               ; preds = %11, %0
  %18 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 8, i1 false)
  %19 = load ptr, ptr @active_sps, align 8, !tbaa !24
  %20 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %19, i32 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !41
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, ptr %1, align 4, !tbaa !10
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load ptr, ptr @active_sps, align 8, !tbaa !24
  %29 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %28, i32 0, i32 10
  %30 = load i32, ptr %1, align 4, !tbaa !10
  %31 = add nsw i32 %30, 6
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], ptr %29, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !10
  %35 = load i32, ptr %1, align 4, !tbaa !10
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %36
  store i32 %34, ptr %37, align 4, !tbaa !10
  br label %38

38:                                               ; preds = %27
  %39 = load i32, ptr %1, align 4, !tbaa !10
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4, !tbaa !10
  br label %24, !llvm.loop !59

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %17
  %43 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %44 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %43, i32 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !45
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %42
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, ptr %1, align 4, !tbaa !10
  %50 = icmp slt i32 %49, 2
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load ptr, ptr @active_pps, align 8, !tbaa !24
  %53 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %52, i32 0, i32 6
  %54 = load i32, ptr %1, align 4, !tbaa !10
  %55 = add nsw i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], ptr %53, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !10
  %59 = load i32, ptr %1, align 4, !tbaa !10
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !10
  %63 = or i32 %62, %58
  store i32 %63, ptr %61, align 4, !tbaa !10
  br label %64

64:                                               ; preds = %51
  %65 = load i32, ptr %1, align 4, !tbaa !10
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %1, align 4, !tbaa !10
  br label %48, !llvm.loop !60

67:                                               ; preds = %48
  br label %68

68:                                               ; preds = %67, %42
  br label %69

69:                                               ; preds = %68, %16
  %70 = load i32, ptr %6, align 4, !tbaa !10
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %195

72:                                               ; preds = %69
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %73

73:                                               ; preds = %191, %72
  %74 = load i32, ptr %3, align 4, !tbaa !10
  %75 = icmp slt i32 %74, 6
  br i1 %75, label %76, label %194

76:                                               ; preds = %73
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %77

77:                                               ; preds = %187, %76
  %78 = load i32, ptr %2, align 4, !tbaa !10
  %79 = icmp slt i32 %78, 8
  br i1 %79, label %80, label %190

80:                                               ; preds = %77
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %81

81:                                               ; preds = %183, %80
  %82 = load i32, ptr %1, align 4, !tbaa !10
  %83 = icmp slt i32 %82, 8
  br i1 %83, label %84, label %186

84:                                               ; preds = %81
  %85 = load i32, ptr %3, align 4, !tbaa !10
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %86
  %88 = load i32, ptr %2, align 4, !tbaa !10
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [8 x [8 x i32]], ptr %87, i64 0, i64 %89
  %91 = load i32, ptr %1, align 4, !tbaa !10
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i32], ptr %90, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !10
  %95 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !49
  %98 = load i32, ptr %3, align 4, !tbaa !10
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !51
  %102 = load i32, ptr %2, align 4, !tbaa !10
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !8
  %106 = load i32, ptr %1, align 4, !tbaa !10
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %105, i64 %107
  store i32 %94, ptr %108, align 4, !tbaa !10
  %109 = load i32, ptr %3, align 4, !tbaa !10
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %110
  %112 = load i32, ptr %2, align 4, !tbaa !10
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x [8 x i32]], ptr %111, i64 0, i64 %113
  %115 = load i32, ptr %1, align 4, !tbaa !10
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [8 x i32], ptr %114, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !10
  %119 = shl i32 %118, 4
  %120 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !49
  %123 = load i32, ptr %3, align 4, !tbaa !10
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !51
  %127 = load i32, ptr %2, align 4, !tbaa !10
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %126, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !8
  %131 = load i32, ptr %1, align 4, !tbaa !10
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  store i32 %119, ptr %133, align 4, !tbaa !10
  %134 = load i32, ptr %3, align 4, !tbaa !10
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %135
  %137 = load i32, ptr %2, align 4, !tbaa !10
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x [8 x i32]], ptr %136, i64 0, i64 %138
  %140 = load i32, ptr %1, align 4, !tbaa !10
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [8 x i32], ptr %139, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !10
  %144 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  %145 = getelementptr inbounds ptr, ptr %144, i64 0
  %146 = load ptr, ptr %145, align 8, !tbaa !49
  %147 = load i32, ptr %3, align 4, !tbaa !10
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %146, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !51
  %151 = load i32, ptr %2, align 4, !tbaa !10
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %150, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !8
  %155 = load i32, ptr %1, align 4, !tbaa !10
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, ptr %154, i64 %156
  store i32 %143, ptr %157, align 4, !tbaa !10
  %158 = load i32, ptr %3, align 4, !tbaa !10
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %159
  %161 = load i32, ptr %2, align 4, !tbaa !10
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x [8 x i32]], ptr %160, i64 0, i64 %162
  %164 = load i32, ptr %1, align 4, !tbaa !10
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [8 x i32], ptr %163, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !10
  %168 = shl i32 %167, 4
  %169 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  %170 = getelementptr inbounds ptr, ptr %169, i64 0
  %171 = load ptr, ptr %170, align 8, !tbaa !49
  %172 = load i32, ptr %3, align 4, !tbaa !10
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds ptr, ptr %171, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !51
  %176 = load i32, ptr %2, align 4, !tbaa !10
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds ptr, ptr %175, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !8
  %180 = load i32, ptr %1, align 4, !tbaa !10
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %179, i64 %181
  store i32 %168, ptr %182, align 4, !tbaa !10
  br label %183

183:                                              ; preds = %84
  %184 = load i32, ptr %1, align 4, !tbaa !10
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %1, align 4, !tbaa !10
  br label %81, !llvm.loop !61

186:                                              ; preds = %81
  br label %187

187:                                              ; preds = %186
  %188 = load i32, ptr %2, align 4, !tbaa !10
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr %2, align 4, !tbaa !10
  br label %77, !llvm.loop !62

190:                                              ; preds = %77
  br label %191

191:                                              ; preds = %190
  %192 = load i32, ptr %3, align 4, !tbaa !10
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %3, align 4, !tbaa !10
  br label %73, !llvm.loop !63

194:                                              ; preds = %73
  br label %488

195:                                              ; preds = %69
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %196

196:                                              ; preds = %484, %195
  %197 = load i32, ptr %3, align 4, !tbaa !10
  %198 = icmp slt i32 %197, 6
  br i1 %198, label %199, label %487

199:                                              ; preds = %196
  store i32 0, ptr %2, align 4, !tbaa !10
  br label %200

200:                                              ; preds = %480, %199
  %201 = load i32, ptr %2, align 4, !tbaa !10
  %202 = icmp slt i32 %201, 8
  br i1 %202, label %203, label %483

203:                                              ; preds = %200
  store i32 0, ptr %1, align 4, !tbaa !10
  br label %204

204:                                              ; preds = %476, %203
  %205 = load i32, ptr %1, align 4, !tbaa !10
  %206 = icmp slt i32 %205, 8
  br i1 %206, label %207, label %479

207:                                              ; preds = %204
  %208 = load i32, ptr %2, align 4, !tbaa !10
  %209 = shl i32 %208, 3
  %210 = load i32, ptr %1, align 4, !tbaa !10
  %211 = add nsw i32 %209, %210
  store i32 %211, ptr %4, align 4, !tbaa !10
  %212 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 0
  %213 = load i32, ptr %212, align 4, !tbaa !10
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %207
  %216 = load i16, ptr @UseDefaultScalingMatrix8x8Flag, align 2, !tbaa !20
  %217 = sext i16 %216 to i32
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %281

219:                                              ; preds = %215, %207
  %220 = load i32, ptr %3, align 4, !tbaa !10
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %221
  %223 = load i32, ptr %2, align 4, !tbaa !10
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x [8 x i32]], ptr %222, i64 0, i64 %224
  %226 = load i32, ptr %1, align 4, !tbaa !10
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [8 x i32], ptr %225, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !10
  %230 = shl i32 %229, 4
  %231 = load i32, ptr %4, align 4, !tbaa !10
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [64 x i16], ptr @Quant8_intra_default, i64 0, i64 %232
  %234 = load i16, ptr %233, align 2, !tbaa !20
  %235 = sext i16 %234 to i32
  %236 = sdiv i32 %230, %235
  %237 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  %238 = getelementptr inbounds ptr, ptr %237, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !49
  %240 = load i32, ptr %3, align 4, !tbaa !10
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %239, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !51
  %244 = load i32, ptr %2, align 4, !tbaa !10
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds ptr, ptr %243, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !8
  %248 = load i32, ptr %1, align 4, !tbaa !10
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %247, i64 %249
  store i32 %236, ptr %250, align 4, !tbaa !10
  %251 = load i32, ptr %3, align 4, !tbaa !10
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %252
  %254 = load i32, ptr %2, align 4, !tbaa !10
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [8 x [8 x i32]], ptr %253, i64 0, i64 %255
  %257 = load i32, ptr %1, align 4, !tbaa !10
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [8 x i32], ptr %256, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !10
  %261 = load i32, ptr %4, align 4, !tbaa !10
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [64 x i16], ptr @Quant8_intra_default, i64 0, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !20
  %265 = sext i16 %264 to i32
  %266 = mul nsw i32 %260, %265
  %267 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  %268 = getelementptr inbounds ptr, ptr %267, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !49
  %270 = load i32, ptr %3, align 4, !tbaa !10
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds ptr, ptr %269, i64 %271
  %273 = load ptr, ptr %272, align 8, !tbaa !51
  %274 = load i32, ptr %2, align 4, !tbaa !10
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds ptr, ptr %273, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !8
  %278 = load i32, ptr %1, align 4, !tbaa !10
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, ptr %277, i64 %279
  store i32 %266, ptr %280, align 4, !tbaa !10
  br label %343

281:                                              ; preds = %215
  %282 = load i32, ptr %3, align 4, !tbaa !10
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %283
  %285 = load i32, ptr %2, align 4, !tbaa !10
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [8 x [8 x i32]], ptr %284, i64 0, i64 %286
  %288 = load i32, ptr %1, align 4, !tbaa !10
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [8 x i32], ptr %287, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !10
  %292 = shl i32 %291, 4
  %293 = load i32, ptr %4, align 4, !tbaa !10
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [64 x i16], ptr @ScalingList8x8, i64 0, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !20
  %297 = sext i16 %296 to i32
  %298 = sdiv i32 %292, %297
  %299 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  %300 = getelementptr inbounds ptr, ptr %299, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !49
  %302 = load i32, ptr %3, align 4, !tbaa !10
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %301, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !51
  %306 = load i32, ptr %2, align 4, !tbaa !10
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds ptr, ptr %305, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !8
  %310 = load i32, ptr %1, align 4, !tbaa !10
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, ptr %309, i64 %311
  store i32 %298, ptr %312, align 4, !tbaa !10
  %313 = load i32, ptr %3, align 4, !tbaa !10
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %314
  %316 = load i32, ptr %2, align 4, !tbaa !10
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [8 x [8 x i32]], ptr %315, i64 0, i64 %317
  %319 = load i32, ptr %1, align 4, !tbaa !10
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [8 x i32], ptr %318, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !10
  %323 = load i32, ptr %4, align 4, !tbaa !10
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [64 x i16], ptr @ScalingList8x8, i64 0, i64 %324
  %326 = load i16, ptr %325, align 2, !tbaa !20
  %327 = sext i16 %326 to i32
  %328 = mul nsw i32 %322, %327
  %329 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  %330 = getelementptr inbounds ptr, ptr %329, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !49
  %332 = load i32, ptr %3, align 4, !tbaa !10
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds ptr, ptr %331, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !51
  %336 = load i32, ptr %2, align 4, !tbaa !10
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds ptr, ptr %335, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !8
  %340 = load i32, ptr %1, align 4, !tbaa !10
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, ptr %339, i64 %341
  store i32 %328, ptr %342, align 4, !tbaa !10
  br label %343

343:                                              ; preds = %281, %219
  %344 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %345 = load i32, ptr %344, align 4, !tbaa !10
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @UseDefaultScalingMatrix8x8Flag, i64 0, i64 1), align 2, !tbaa !20
  %349 = sext i16 %348 to i32
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %413

351:                                              ; preds = %347, %343
  %352 = load i32, ptr %3, align 4, !tbaa !10
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %353
  %355 = load i32, ptr %2, align 4, !tbaa !10
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x [8 x i32]], ptr %354, i64 0, i64 %356
  %358 = load i32, ptr %1, align 4, !tbaa !10
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x i32], ptr %357, i64 0, i64 %359
  %361 = load i32, ptr %360, align 4, !tbaa !10
  %362 = shl i32 %361, 4
  %363 = load i32, ptr %4, align 4, !tbaa !10
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [64 x i16], ptr @Quant8_inter_default, i64 0, i64 %364
  %366 = load i16, ptr %365, align 2, !tbaa !20
  %367 = sext i16 %366 to i32
  %368 = sdiv i32 %362, %367
  %369 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  %370 = getelementptr inbounds ptr, ptr %369, i64 0
  %371 = load ptr, ptr %370, align 8, !tbaa !49
  %372 = load i32, ptr %3, align 4, !tbaa !10
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds ptr, ptr %371, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !51
  %376 = load i32, ptr %2, align 4, !tbaa !10
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds ptr, ptr %375, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !8
  %380 = load i32, ptr %1, align 4, !tbaa !10
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, ptr %379, i64 %381
  store i32 %368, ptr %382, align 4, !tbaa !10
  %383 = load i32, ptr %3, align 4, !tbaa !10
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %384
  %386 = load i32, ptr %2, align 4, !tbaa !10
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [8 x [8 x i32]], ptr %385, i64 0, i64 %387
  %389 = load i32, ptr %1, align 4, !tbaa !10
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [8 x i32], ptr %388, i64 0, i64 %390
  %392 = load i32, ptr %391, align 4, !tbaa !10
  %393 = load i32, ptr %4, align 4, !tbaa !10
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [64 x i16], ptr @Quant8_inter_default, i64 0, i64 %394
  %396 = load i16, ptr %395, align 2, !tbaa !20
  %397 = sext i16 %396 to i32
  %398 = mul nsw i32 %392, %397
  %399 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  %400 = getelementptr inbounds ptr, ptr %399, i64 0
  %401 = load ptr, ptr %400, align 8, !tbaa !49
  %402 = load i32, ptr %3, align 4, !tbaa !10
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !51
  %406 = load i32, ptr %2, align 4, !tbaa !10
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds ptr, ptr %405, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !8
  %410 = load i32, ptr %1, align 4, !tbaa !10
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, ptr %409, i64 %411
  store i32 %398, ptr %412, align 4, !tbaa !10
  br label %475

413:                                              ; preds = %347
  %414 = load i32, ptr %3, align 4, !tbaa !10
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @quant_coef8, i64 0, i64 %415
  %417 = load i32, ptr %2, align 4, !tbaa !10
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [8 x [8 x i32]], ptr %416, i64 0, i64 %418
  %420 = load i32, ptr %1, align 4, !tbaa !10
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [8 x i32], ptr %419, i64 0, i64 %421
  %423 = load i32, ptr %422, align 4, !tbaa !10
  %424 = shl i32 %423, 4
  %425 = load i32, ptr %4, align 4, !tbaa !10
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds ([2 x [64 x i16]], ptr @ScalingList8x8, i64 0, i64 1), i64 0, i64 %426
  %428 = load i16, ptr %427, align 2, !tbaa !20
  %429 = sext i16 %428 to i32
  %430 = sdiv i32 %424, %429
  %431 = load ptr, ptr @LevelScale8x8Luma, align 8, !tbaa !32
  %432 = getelementptr inbounds ptr, ptr %431, i64 0
  %433 = load ptr, ptr %432, align 8, !tbaa !49
  %434 = load i32, ptr %3, align 4, !tbaa !10
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds ptr, ptr %433, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !51
  %438 = load i32, ptr %2, align 4, !tbaa !10
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds ptr, ptr %437, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !8
  %442 = load i32, ptr %1, align 4, !tbaa !10
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, ptr %441, i64 %443
  store i32 %430, ptr %444, align 4, !tbaa !10
  %445 = load i32, ptr %3, align 4, !tbaa !10
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [6 x [8 x [8 x i32]]], ptr @dequant_coef8, i64 0, i64 %446
  %448 = load i32, ptr %2, align 4, !tbaa !10
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [8 x [8 x i32]], ptr %447, i64 0, i64 %449
  %451 = load i32, ptr %1, align 4, !tbaa !10
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [8 x i32], ptr %450, i64 0, i64 %452
  %454 = load i32, ptr %453, align 4, !tbaa !10
  %455 = load i32, ptr %4, align 4, !tbaa !10
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [64 x i16], ptr getelementptr inbounds ([2 x [64 x i16]], ptr @ScalingList8x8, i64 0, i64 1), i64 0, i64 %456
  %458 = load i16, ptr %457, align 2, !tbaa !20
  %459 = sext i16 %458 to i32
  %460 = mul nsw i32 %454, %459
  %461 = load ptr, ptr @InvLevelScale8x8Luma, align 8, !tbaa !32
  %462 = getelementptr inbounds ptr, ptr %461, i64 0
  %463 = load ptr, ptr %462, align 8, !tbaa !49
  %464 = load i32, ptr %3, align 4, !tbaa !10
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %463, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !51
  %468 = load i32, ptr %2, align 4, !tbaa !10
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds ptr, ptr %467, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !8
  %472 = load i32, ptr %1, align 4, !tbaa !10
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, ptr %471, i64 %473
  store i32 %460, ptr %474, align 4, !tbaa !10
  br label %475

475:                                              ; preds = %413, %351
  br label %476

476:                                              ; preds = %475
  %477 = load i32, ptr %1, align 4, !tbaa !10
  %478 = add nsw i32 %477, 1
  store i32 %478, ptr %1, align 4, !tbaa !10
  br label %204, !llvm.loop !64

479:                                              ; preds = %204
  br label %480

480:                                              ; preds = %479
  %481 = load i32, ptr %2, align 4, !tbaa !10
  %482 = add nsw i32 %481, 1
  store i32 %482, ptr %2, align 4, !tbaa !10
  br label %200, !llvm.loop !65

483:                                              ; preds = %200
  br label %484

484:                                              ; preds = %483
  %485 = load i32, ptr %3, align 4, !tbaa !10
  %486 = add nsw i32 %485, 1
  store i32 %486, ptr %3, align 4, !tbaa !10
  br label %196, !llvm.loop !66

487:                                              ; preds = %196
  br label %488

488:                                              ; preds = %487, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 omnipotent char", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!6, !6, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 short", !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !6, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = !{!5, !5, i64 0}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = !{!29, !11, i64 5256}
!29 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !11, i64 1560, !11, i64 1564, !11, i64 1568, !11, i64 1572, !11, i64 1576, !11, i64 1580, !6, i64 1584, !11, i64 2084, !11, i64 2088, !11, i64 2092, !11, i64 2096, !11, i64 2100, !11, i64 2104, !11, i64 2108, !11, i64 2112, !11, i64 2116, !11, i64 2120, !11, i64 2124, !11, i64 2128, !11, i64 2132, !11, i64 2136, !11, i64 2140, !11, i64 2144, !11, i64 2148, !11, i64 2152, !11, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !11, i64 2928, !11, i64 2932, !11, i64 2936, !11, i64 2940, !11, i64 2944, !11, i64 2948, !11, i64 2952, !11, i64 2956, !11, i64 2960, !11, i64 2964, !11, i64 2968, !11, i64 2972, !6, i64 2976, !11, i64 4000, !11, i64 4004, !11, i64 4008, !11, i64 4012, !11, i64 4016, !11, i64 4020, !11, i64 4024, !11, i64 4028, !11, i64 4032, !11, i64 4036, !11, i64 4040, !11, i64 4044, !11, i64 4048, !11, i64 4052, !11, i64 4056, !11, i64 4060, !11, i64 4064, !11, i64 4068, !11, i64 4072, !11, i64 4076, !30, i64 4080, !11, i64 4088, !11, i64 4092, !11, i64 4096, !11, i64 4100, !11, i64 4104, !11, i64 4108, !11, i64 4112, !11, i64 4116, !11, i64 4120, !11, i64 4124, !11, i64 4128, !11, i64 4132, !11, i64 4136, !11, i64 4140, !11, i64 4144, !11, i64 4148, !11, i64 4152, !11, i64 4156, !11, i64 4160, !11, i64 4164, !11, i64 4168, !11, i64 4172, !11, i64 4176, !11, i64 4180, !11, i64 4184, !11, i64 4188, !6, i64 4192, !6, i64 4448, !11, i64 4704, !11, i64 4708, !11, i64 4712, !11, i64 4716, !11, i64 4720, !11, i64 4724, !11, i64 4728, !11, i64 4732, !11, i64 4736, !11, i64 4740, !11, i64 4744, !11, i64 4748, !11, i64 4752, !11, i64 4756, !11, i64 4760, !11, i64 4764, !11, i64 4768, !11, i64 4772, !6, i64 4776, !11, i64 5032, !11, i64 5036, !9, i64 5040, !9, i64 5048, !4, i64 5056, !9, i64 5064, !11, i64 5072, !11, i64 5076, !11, i64 5080, !11, i64 5084, !11, i64 5088, !11, i64 5092, !11, i64 5096, !11, i64 5100, !11, i64 5104, !11, i64 5108, !11, i64 5112, !11, i64 5116, !11, i64 5120, !11, i64 5124, !11, i64 5128, !11, i64 5132, !11, i64 5136, !30, i64 5144, !30, i64 5152, !30, i64 5160, !6, i64 5168, !11, i64 5208, !6, i64 5212, !11, i64 5244, !11, i64 5248, !11, i64 5252, !11, i64 5256, !11, i64 5260, !11, i64 5264, !11, i64 5268, !11, i64 5272, !11, i64 5276, !11, i64 5280, !11, i64 5284, !11, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !11, i64 5648, !11, i64 5652, !11, i64 5656, !11, i64 5660, !6, i64 5664, !6, i64 5704, !11, i64 5744, !11, i64 5748, !11, i64 5752, !11, i64 5756, !11, i64 5760, !11, i64 5764, !11, i64 5768, !11, i64 5772, !11, i64 5776, !6, i64 5780, !11, i64 5792}
!30 = !{!"double", !6, i64 0}
!31 = distinct !{!31, !13}
!32 = !{!33, !33, i64 0}
!33 = !{!"p4 int", !34, i64 0}
!34 = !{!"any p4 pointer", !35, i64 0}
!35 = !{!"any p3 pointer", !36, i64 0}
!36 = !{!"any p2 pointer", !5, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p5 int", !39, i64 0}
!39 = !{!"any p5 pointer", !34, i64 0}
!40 = !{!29, !11, i64 5208}
!41 = !{!42, !11, i64 36}
!42 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !6, i64 40, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !6, i64 108, !11, i64 1132, !11, i64 1136, !11, i64 1140, !11, i64 1144, !11, i64 1148, !11, i64 1152, !11, i64 1156, !11, i64 1160, !11, i64 1164, !11, i64 1168, !11, i64 1172, !11, i64 1176, !11, i64 1180, !43, i64 1184}
!43 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !44, i64 84, !11, i64 496, !44, i64 500, !11, i64 912, !11, i64 916, !11, i64 920, !11, i64 924, !11, i64 928, !11, i64 932, !11, i64 936, !11, i64 940, !11, i64 944}
!44 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408}
!45 = !{!46, !11, i64 20}
!46 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !6, i64 24, !11, i64 56, !11, i64 60, !11, i64 64, !6, i64 68, !6, i64 100, !6, i64 132, !11, i64 164, !11, i64 168, !11, i64 172, !4, i64 176, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !11, i64 208, !11, i64 212, !11, i64 216, !11, i64 220, !11, i64 224, !11, i64 228, !11, i64 232}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = !{!50, !50, i64 0}
!50 = !{!"p3 int", !35, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"p2 int", !36, i64 0}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
