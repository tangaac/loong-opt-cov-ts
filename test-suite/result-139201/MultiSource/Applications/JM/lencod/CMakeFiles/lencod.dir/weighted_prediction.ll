; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/weighted_prediction.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/weighted_prediction.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.SubImageContainer = type { ptr, [2 x ptr] }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@img = external global ptr, align 8
@luma_log_weight_denom = common dso_local global i32 0, align 4
@chroma_log_weight_denom = common dso_local global i32 0, align 4
@wp_luma_round = common dso_local global i32 0, align 4
@wp_chroma_round = common dso_local global i32 0, align 4
@listXsize = external global [6 x i32], align 4
@wp_weight = common dso_local global ptr null, align 8
@wp_offset = common dso_local global ptr null, align 8
@imgY_org = common dso_local global ptr null, align 8
@listX = external global [6 x ptr], align 8
@ref_pic_sub = internal global %struct.SubImageContainer zeroinitializer, align 8
@active_pps = common dso_local global ptr null, align 8
@enc_picture = external global ptr, align 8
@wbp_weight = common dso_local global ptr null, align 8
@ref_qpic_sub = internal global %struct.SubImageContainer zeroinitializer, align 8
@input = external global ptr, align 8
@active_sps = common dso_local global ptr null, align 8
@color_formats = common dso_local global i32 0, align 4
@top_pic = common dso_local global ptr null, align 8
@bottom_pic = common dso_local global ptr null, align 8
@frame_pic = common dso_local global ptr null, align 8
@frame_pic_1 = common dso_local global ptr null, align 8
@frame_pic_2 = common dso_local global ptr null, align 8
@frame_pic_3 = common dso_local global ptr null, align 8
@frame_pic_si = common dso_local global ptr null, align 8
@Bit_Buffer = common dso_local global ptr null, align 8
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

; Function Attrs: nounwind
define dso_local void @estimate_weighting_factor_P_slice(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x double], align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x [32 x [3 x i32]]], align 4
  %13 = alloca [2 x [32 x [3 x i32]]], align 4
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #3
  store double 0.000000e+00, ptr %6, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %9) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %10) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  %16 = load ptr, ptr @img, align 8, !tbaa !9
  %17 = getelementptr inbounds nuw %struct.ImageParameters, ptr %16, i32 0, i32 100
  %18 = load i32, ptr %17, align 4, !tbaa !11
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load ptr, ptr @img, align 8, !tbaa !9
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 61
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = load ptr, ptr @img, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !30
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.macroblock, ptr %23, i64 %27
  %29 = getelementptr inbounds nuw %struct.macroblock, ptr %28, i32 0, i32 19
  %30 = load i32, ptr %29, align 8, !tbaa !31
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %20
  %33 = load ptr, ptr @img, align 8, !tbaa !9
  %34 = getelementptr inbounds nuw %struct.ImageParameters, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !30
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 4, i32 2
  br label %41

40:                                               ; preds = %20, %1
  br label %41

41:                                               ; preds = %40, %32
  %42 = phi i32 [ %39, %32 ], [ 0, %40 ]
  store i32 %42, ptr %11, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 768, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 768, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #3
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %43 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %44 = sub nsw i32 %43, 1
  %45 = shl i32 1, %44
  store i32 %45, ptr @wp_luma_round, align 4, !tbaa !3
  %46 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %47 = sub nsw i32 %46, 1
  %48 = shl i32 1, %47
  store i32 %48, ptr @wp_chroma_round, align 4, !tbaa !3
  %49 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %50 = shl i32 1, %49
  %51 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 0
  store i32 %50, ptr %51, align 4, !tbaa !3
  %52 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %53 = shl i32 1, %52
  %54 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 2
  store i32 %53, ptr %54, align 4, !tbaa !3
  %55 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 1
  store i32 %53, ptr %55, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %56

56:                                               ; preds = %132, %41
  %57 = load i32, ptr %3, align 4, !tbaa !3
  %58 = load i32, ptr %11, align 4, !tbaa !3
  %59 = add nsw i32 2, %58
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %135

61:                                               ; preds = %56
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %62

62:                                               ; preds = %128, %61
  %63 = load i32, ptr %4, align 4, !tbaa !3
  %64 = load i32, ptr %3, align 4, !tbaa !3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !3
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %131

69:                                               ; preds = %62
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %70

70:                                               ; preds = %124, %69
  %71 = load i32, ptr %5, align 4, !tbaa !3
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %127

73:                                               ; preds = %70
  %74 = load i32, ptr %5, align 4, !tbaa !3
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !3
  %78 = load i32, ptr %3, align 4, !tbaa !3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %79
  %81 = load i32, ptr %4, align 4, !tbaa !3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [32 x [3 x i32]], ptr %80, i64 0, i64 %82
  %84 = load i32, ptr %5, align 4, !tbaa !3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [3 x i32], ptr %83, i64 0, i64 %85
  store i32 %77, ptr %86, align 4, !tbaa !3
  %87 = load i32, ptr %5, align 4, !tbaa !3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !3
  %91 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %92 = load i32, ptr %3, align 4, !tbaa !3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !35
  %96 = load i32, ptr %4, align 4, !tbaa !3
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds ptr, ptr %95, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !37
  %100 = load i32, ptr %5, align 4, !tbaa !3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, ptr %99, i64 %101
  store i32 %90, ptr %102, align 4, !tbaa !3
  %103 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %104 = load i32, ptr %3, align 4, !tbaa !3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %103, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !35
  %108 = load i32, ptr %4, align 4, !tbaa !3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %107, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !37
  %112 = load i32, ptr %5, align 4, !tbaa !3
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %111, i64 %113
  store i32 0, ptr %114, align 4, !tbaa !3
  %115 = load i32, ptr %3, align 4, !tbaa !3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %116
  %118 = load i32, ptr %4, align 4, !tbaa !3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [32 x [3 x i32]], ptr %117, i64 0, i64 %119
  %121 = load i32, ptr %5, align 4, !tbaa !3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [3 x i32], ptr %120, i64 0, i64 %122
  store i32 0, ptr %123, align 4, !tbaa !3
  br label %124

124:                                              ; preds = %73
  %125 = load i32, ptr %5, align 4, !tbaa !3
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %5, align 4, !tbaa !3
  br label %70, !llvm.loop !38

127:                                              ; preds = %70
  br label %128

128:                                              ; preds = %127
  %129 = load i32, ptr %4, align 4, !tbaa !3
  %130 = add nsw i32 %129, 1
  store i32 %130, ptr %4, align 4, !tbaa !3
  br label %62, !llvm.loop !40

131:                                              ; preds = %62
  br label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %3, align 4, !tbaa !3
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %3, align 4, !tbaa !3
  br label %56, !llvm.loop !41

135:                                              ; preds = %56
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %136

136:                                              ; preds = %166, %135
  %137 = load i32, ptr %3, align 4, !tbaa !3
  %138 = load ptr, ptr @img, align 8, !tbaa !9
  %139 = getelementptr inbounds nuw %struct.ImageParameters, ptr %138, i32 0, i32 17
  %140 = load i32, ptr %139, align 4, !tbaa !42
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %169

142:                                              ; preds = %136
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %143

143:                                              ; preds = %162, %142
  %144 = load i32, ptr %4, align 4, !tbaa !3
  %145 = load ptr, ptr @img, align 8, !tbaa !9
  %146 = getelementptr inbounds nuw %struct.ImageParameters, ptr %145, i32 0, i32 13
  %147 = load i32, ptr %146, align 4, !tbaa !43
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %143
  %150 = load ptr, ptr @imgY_org, align 8, !tbaa !44
  %151 = load i32, ptr %3, align 4, !tbaa !3
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds ptr, ptr %150, i64 %152
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = load i32, ptr %4, align 4, !tbaa !3
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, ptr %154, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !48
  %159 = uitofp i16 %158 to double
  %160 = load double, ptr %6, align 8, !tbaa !7
  %161 = fadd double %160, %159
  store double %161, ptr %6, align 8, !tbaa !7
  br label %162

162:                                              ; preds = %149
  %163 = load i32, ptr %4, align 4, !tbaa !3
  %164 = add nsw i32 %163, 1
  store i32 %164, ptr %4, align 4, !tbaa !3
  br label %143, !llvm.loop !49

165:                                              ; preds = %143
  br label %166

166:                                              ; preds = %165
  %167 = load i32, ptr %3, align 4, !tbaa !3
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %3, align 4, !tbaa !3
  br label %136, !llvm.loop !50

169:                                              ; preds = %136
  store i32 0, ptr %14, align 4, !tbaa !3
  br label %170

170:                                              ; preds = %405, %169
  %171 = load i32, ptr %14, align 4, !tbaa !3
  %172 = load i32, ptr %11, align 4, !tbaa !3
  %173 = add nsw i32 2, %172
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %408

175:                                              ; preds = %170
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %176

176:                                              ; preds = %401, %175
  %177 = load i32, ptr %5, align 4, !tbaa !3
  %178 = load i32, ptr %14, align 4, !tbaa !3
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !3
  %182 = icmp slt i32 %177, %181
  br i1 %182, label %183, label %404

183:                                              ; preds = %176
  %184 = load i32, ptr %5, align 4, !tbaa !3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %185
  store double 0.000000e+00, ptr %186, align 8, !tbaa !7
  %187 = load i32, ptr %14, align 4, !tbaa !3
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !51
  %191 = load i32, ptr %5, align 4, !tbaa !3
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds ptr, ptr %190, i64 %192
  %194 = load ptr, ptr %193, align 8, !tbaa !53
  %195 = getelementptr inbounds nuw %struct.storable_picture, ptr %194, i32 0, i32 30
  %196 = load ptr, ptr %195, align 8, !tbaa !55
  store ptr %196, ptr @ref_pic_sub, align 8, !tbaa !63
  %197 = load ptr, ptr @ref_pic_sub, align 8, !tbaa !63
  %198 = getelementptr inbounds ptr, ptr %197, i64 0
  %199 = load ptr, ptr %198, align 8, !tbaa !65
  %200 = getelementptr inbounds ptr, ptr %199, i64 0
  %201 = load ptr, ptr %200, align 8, !tbaa !44
  store ptr %201, ptr %15, align 8, !tbaa !44
  store i32 20, ptr %4, align 4, !tbaa !3
  br label %202

202:                                              ; preds = %237, %183
  %203 = load i32, ptr %4, align 4, !tbaa !3
  %204 = load ptr, ptr @img, align 8, !tbaa !9
  %205 = getelementptr inbounds nuw %struct.ImageParameters, ptr %204, i32 0, i32 17
  %206 = load i32, ptr %205, align 4, !tbaa !42
  %207 = add nsw i32 %206, 20
  %208 = icmp slt i32 %203, %207
  br i1 %208, label %209, label %240

209:                                              ; preds = %202
  store i32 20, ptr %3, align 4, !tbaa !3
  br label %210

210:                                              ; preds = %233, %209
  %211 = load i32, ptr %3, align 4, !tbaa !3
  %212 = load ptr, ptr @img, align 8, !tbaa !9
  %213 = getelementptr inbounds nuw %struct.ImageParameters, ptr %212, i32 0, i32 13
  %214 = load i32, ptr %213, align 4, !tbaa !43
  %215 = add nsw i32 %214, 20
  %216 = icmp slt i32 %211, %215
  br i1 %216, label %217, label %236

217:                                              ; preds = %210
  %218 = load ptr, ptr %15, align 8, !tbaa !44
  %219 = load i32, ptr %4, align 4, !tbaa !3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds ptr, ptr %218, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !46
  %223 = load i32, ptr %3, align 4, !tbaa !3
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i16, ptr %222, i64 %224
  %226 = load i16, ptr %225, align 2, !tbaa !48
  %227 = uitofp i16 %226 to double
  %228 = load i32, ptr %5, align 4, !tbaa !3
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !7
  %232 = fadd double %231, %227
  store double %232, ptr %230, align 8, !tbaa !7
  br label %233

233:                                              ; preds = %217
  %234 = load i32, ptr %3, align 4, !tbaa !3
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %3, align 4, !tbaa !3
  br label %210, !llvm.loop !66

236:                                              ; preds = %210
  br label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %4, align 4, !tbaa !3
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %4, align 4, !tbaa !3
  br label %202, !llvm.loop !67

240:                                              ; preds = %202
  %241 = load i32, ptr %2, align 4, !tbaa !3
  %242 = sitofp i32 %241 to double
  %243 = fcmp oeq double %242, 0.000000e+00
  br i1 %243, label %244, label %311

244:                                              ; preds = %240
  %245 = load i32, ptr %5, align 4, !tbaa !3
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %246
  %248 = load double, ptr %247, align 8, !tbaa !7
  %249 = fcmp une double %248, 0.000000e+00
  br i1 %249, label %250, label %270

250:                                              ; preds = %244
  %251 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 0
  %252 = load i32, ptr %251, align 4, !tbaa !3
  %253 = sitofp i32 %252 to double
  %254 = load double, ptr %6, align 8, !tbaa !7
  %255 = fmul double %253, %254
  %256 = load i32, ptr %5, align 4, !tbaa !3
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %257
  %259 = load double, ptr %258, align 8, !tbaa !7
  %260 = fdiv double %255, %259
  %261 = fadd double %260, 5.000000e-01
  %262 = fptosi double %261 to i32
  %263 = load i32, ptr %14, align 4, !tbaa !3
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %264
  %266 = load i32, ptr %5, align 4, !tbaa !3
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [32 x [3 x i32]], ptr %265, i64 0, i64 %267
  %269 = getelementptr inbounds [3 x i32], ptr %268, i64 0, i64 0
  store i32 %262, ptr %269, align 4, !tbaa !3
  br label %280

270:                                              ; preds = %244
  %271 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 0
  %272 = load i32, ptr %271, align 4, !tbaa !3
  %273 = load i32, ptr %14, align 4, !tbaa !3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %274
  %276 = load i32, ptr %5, align 4, !tbaa !3
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [32 x [3 x i32]], ptr %275, i64 0, i64 %277
  %279 = getelementptr inbounds [3 x i32], ptr %278, i64 0, i64 0
  store i32 %272, ptr %279, align 4, !tbaa !3
  br label %280

280:                                              ; preds = %270, %250
  %281 = load i32, ptr %14, align 4, !tbaa !3
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %282
  %284 = load i32, ptr %5, align 4, !tbaa !3
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [32 x [3 x i32]], ptr %283, i64 0, i64 %285
  %287 = getelementptr inbounds [3 x i32], ptr %286, i64 0, i64 0
  %288 = load i32, ptr %287, align 4, !tbaa !3
  %289 = icmp slt i32 %288, -64
  br i1 %289, label %300, label %290

290:                                              ; preds = %280
  %291 = load i32, ptr %14, align 4, !tbaa !3
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %292
  %294 = load i32, ptr %5, align 4, !tbaa !3
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [32 x [3 x i32]], ptr %293, i64 0, i64 %295
  %297 = getelementptr inbounds [3 x i32], ptr %296, i64 0, i64 0
  %298 = load i32, ptr %297, align 4, !tbaa !3
  %299 = icmp sgt i32 %298, 127
  br i1 %299, label %300, label %310

300:                                              ; preds = %290, %280
  %301 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 0
  %302 = load i32, ptr %301, align 4, !tbaa !3
  %303 = load i32, ptr %14, align 4, !tbaa !3
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %304
  %306 = load i32, ptr %5, align 4, !tbaa !3
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [32 x [3 x i32]], ptr %305, i64 0, i64 %307
  %309 = getelementptr inbounds [3 x i32], ptr %308, i64 0, i64 0
  store i32 %302, ptr %309, align 4, !tbaa !3
  br label %310

310:                                              ; preds = %300, %290
  br label %382

311:                                              ; preds = %240
  %312 = load double, ptr %6, align 8, !tbaa !7
  %313 = load i32, ptr %5, align 4, !tbaa !3
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %314
  %316 = load double, ptr %315, align 8, !tbaa !7
  %317 = fsub double %312, %316
  %318 = load ptr, ptr @img, align 8, !tbaa !9
  %319 = getelementptr inbounds nuw %struct.ImageParameters, ptr %318, i32 0, i32 22
  %320 = load i32, ptr %319, align 8, !tbaa !68
  %321 = sitofp i32 %320 to double
  %322 = fdiv double %317, %321
  %323 = fadd double %322, 5.000000e-01
  %324 = fptosi double %323 to i32
  %325 = load i32, ptr %14, align 4, !tbaa !3
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %326
  %328 = load i32, ptr %5, align 4, !tbaa !3
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [32 x [3 x i32]], ptr %327, i64 0, i64 %329
  %331 = getelementptr inbounds [3 x i32], ptr %330, i64 0, i64 0
  store i32 %324, ptr %331, align 4, !tbaa !3
  %332 = load i32, ptr %14, align 4, !tbaa !3
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %333
  %335 = load i32, ptr %5, align 4, !tbaa !3
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [32 x [3 x i32]], ptr %334, i64 0, i64 %336
  %338 = getelementptr inbounds [3 x i32], ptr %337, i64 0, i64 0
  %339 = load i32, ptr %338, align 4, !tbaa !3
  %340 = icmp slt i32 %339, -128
  br i1 %340, label %341, label %342

341:                                              ; preds = %311
  br label %364

342:                                              ; preds = %311
  %343 = load i32, ptr %14, align 4, !tbaa !3
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %344
  %346 = load i32, ptr %5, align 4, !tbaa !3
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [32 x [3 x i32]], ptr %345, i64 0, i64 %347
  %349 = getelementptr inbounds [3 x i32], ptr %348, i64 0, i64 0
  %350 = load i32, ptr %349, align 4, !tbaa !3
  %351 = icmp sgt i32 %350, 127
  br i1 %351, label %352, label %353

352:                                              ; preds = %342
  br label %362

353:                                              ; preds = %342
  %354 = load i32, ptr %14, align 4, !tbaa !3
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %355
  %357 = load i32, ptr %5, align 4, !tbaa !3
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [32 x [3 x i32]], ptr %356, i64 0, i64 %358
  %360 = getelementptr inbounds [3 x i32], ptr %359, i64 0, i64 0
  %361 = load i32, ptr %360, align 4, !tbaa !3
  br label %362

362:                                              ; preds = %353, %352
  %363 = phi i32 [ 127, %352 ], [ %361, %353 ]
  br label %364

364:                                              ; preds = %362, %341
  %365 = phi i32 [ -128, %341 ], [ %363, %362 ]
  %366 = load i32, ptr %14, align 4, !tbaa !3
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %367
  %369 = load i32, ptr %5, align 4, !tbaa !3
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [32 x [3 x i32]], ptr %368, i64 0, i64 %370
  %372 = getelementptr inbounds [3 x i32], ptr %371, i64 0, i64 0
  store i32 %365, ptr %372, align 4, !tbaa !3
  %373 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 0
  %374 = load i32, ptr %373, align 4, !tbaa !3
  %375 = load i32, ptr %14, align 4, !tbaa !3
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %376
  %378 = load i32, ptr %5, align 4, !tbaa !3
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [32 x [3 x i32]], ptr %377, i64 0, i64 %379
  %381 = getelementptr inbounds [3 x i32], ptr %380, i64 0, i64 0
  store i32 %374, ptr %381, align 4, !tbaa !3
  br label %382

382:                                              ; preds = %364, %310
  %383 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 1
  %384 = load i32, ptr %383, align 4, !tbaa !3
  %385 = load i32, ptr %14, align 4, !tbaa !3
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %386
  %388 = load i32, ptr %5, align 4, !tbaa !3
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [32 x [3 x i32]], ptr %387, i64 0, i64 %389
  %391 = getelementptr inbounds [3 x i32], ptr %390, i64 0, i64 1
  store i32 %384, ptr %391, align 4, !tbaa !3
  %392 = getelementptr inbounds [3 x i32], ptr %10, i64 0, i64 2
  %393 = load i32, ptr %392, align 4, !tbaa !3
  %394 = load i32, ptr %14, align 4, !tbaa !3
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %395
  %397 = load i32, ptr %5, align 4, !tbaa !3
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [32 x [3 x i32]], ptr %396, i64 0, i64 %398
  %400 = getelementptr inbounds [3 x i32], ptr %399, i64 0, i64 2
  store i32 %393, ptr %400, align 4, !tbaa !3
  br label %401

401:                                              ; preds = %382
  %402 = load i32, ptr %5, align 4, !tbaa !3
  %403 = add nsw i32 %402, 1
  store i32 %403, ptr %5, align 4, !tbaa !3
  br label %176, !llvm.loop !69

404:                                              ; preds = %176
  br label %405

405:                                              ; preds = %404
  %406 = load i32, ptr %14, align 4, !tbaa !3
  %407 = add nsw i32 %406, 1
  store i32 %407, ptr %14, align 4, !tbaa !3
  br label %170, !llvm.loop !70

408:                                              ; preds = %170
  store i32 0, ptr %14, align 4, !tbaa !3
  br label %409

409:                                              ; preds = %479, %408
  %410 = load i32, ptr %14, align 4, !tbaa !3
  %411 = load i32, ptr %11, align 4, !tbaa !3
  %412 = add nsw i32 2, %411
  %413 = icmp slt i32 %410, %412
  br i1 %413, label %414, label %482

414:                                              ; preds = %409
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %415

415:                                              ; preds = %475, %414
  %416 = load i32, ptr %7, align 4, !tbaa !3
  %417 = load i32, ptr %14, align 4, !tbaa !3
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %418
  %420 = load i32, ptr %419, align 4, !tbaa !3
  %421 = icmp slt i32 %416, %420
  br i1 %421, label %422, label %478

422:                                              ; preds = %415
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %423

423:                                              ; preds = %471, %422
  %424 = load i32, ptr %8, align 4, !tbaa !3
  %425 = icmp slt i32 %424, 3
  br i1 %425, label %426, label %474

426:                                              ; preds = %423
  %427 = load i32, ptr %14, align 4, !tbaa !3
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %12, i64 0, i64 %428
  %430 = load i32, ptr %7, align 4, !tbaa !3
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [32 x [3 x i32]], ptr %429, i64 0, i64 %431
  %433 = load i32, ptr %8, align 4, !tbaa !3
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [3 x i32], ptr %432, i64 0, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !3
  %437 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %438 = load i32, ptr %14, align 4, !tbaa !3
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds ptr, ptr %437, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !35
  %442 = load i32, ptr %7, align 4, !tbaa !3
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds ptr, ptr %441, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !37
  %446 = load i32, ptr %8, align 4, !tbaa !3
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, ptr %445, i64 %447
  store i32 %436, ptr %448, align 4, !tbaa !3
  %449 = load i32, ptr %14, align 4, !tbaa !3
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %450
  %452 = load i32, ptr %7, align 4, !tbaa !3
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [32 x [3 x i32]], ptr %451, i64 0, i64 %453
  %455 = load i32, ptr %8, align 4, !tbaa !3
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [3 x i32], ptr %454, i64 0, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !3
  %459 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %460 = load i32, ptr %14, align 4, !tbaa !3
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds ptr, ptr %459, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !35
  %464 = load i32, ptr %7, align 4, !tbaa !3
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %463, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !37
  %468 = load i32, ptr %8, align 4, !tbaa !3
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32, ptr %467, i64 %469
  store i32 %458, ptr %470, align 4, !tbaa !3
  br label %471

471:                                              ; preds = %426
  %472 = load i32, ptr %8, align 4, !tbaa !3
  %473 = add nsw i32 %472, 1
  store i32 %473, ptr %8, align 4, !tbaa !3
  br label %423, !llvm.loop !71

474:                                              ; preds = %423
  br label %475

475:                                              ; preds = %474
  %476 = load i32, ptr %7, align 4, !tbaa !3
  %477 = add nsw i32 %476, 1
  store i32 %477, ptr %7, align 4, !tbaa !3
  br label %415, !llvm.loop !72

478:                                              ; preds = %415
  br label %479

479:                                              ; preds = %478
  %480 = load i32, ptr %14, align 4, !tbaa !3
  %481 = add nsw i32 %480, 1
  store i32 %481, ptr %14, align 4, !tbaa !3
  br label %409, !llvm.loop !73

482:                                              ; preds = %409
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 768, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 768, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @estimate_weighting_factor_B_slice() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x [32 x double]], align 8
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x [32 x [3 x i32]]], align 4
  %14 = alloca [6 x [32 x [3 x i32]]], align 4
  %15 = alloca [6 x [32 x [32 x [3 x i32]]]], align 4
  %16 = alloca [6 x [32 x [32 x [3 x i32]]]], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #3
  store double 0.000000e+00, ptr %6, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.start.p0(i64 1536, ptr %9) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  %23 = load ptr, ptr @img, align 8, !tbaa !9
  %24 = getelementptr inbounds nuw %struct.ImageParameters, ptr %23, i32 0, i32 100
  %25 = load i32, ptr %24, align 4, !tbaa !11
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %0
  %28 = load ptr, ptr @img, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 61
  %30 = load ptr, ptr %29, align 8, !tbaa !29
  %31 = load ptr, ptr @img, align 8, !tbaa !9
  %32 = getelementptr inbounds nuw %struct.ImageParameters, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !30
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.macroblock, ptr %30, i64 %34
  %36 = getelementptr inbounds nuw %struct.macroblock, ptr %35, i32 0, i32 19
  %37 = load i32, ptr %36, align 8, !tbaa !31
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load ptr, ptr @img, align 8, !tbaa !9
  %41 = getelementptr inbounds nuw %struct.ImageParameters, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !30
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 4, i32 2
  br label %48

47:                                               ; preds = %27, %0
  br label %48

48:                                               ; preds = %47, %39
  %49 = phi i32 [ %46, %39 ], [ 0, %47 ]
  store i32 %49, ptr %12, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 2304, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 2304, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 73728, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 73728, ptr %16) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %20) #3
  %50 = load ptr, ptr @active_pps, align 8, !tbaa !9
  %51 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %50, i32 0, i32 20
  %52 = load i32, ptr %51, align 4, !tbaa !74
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %56

55:                                               ; preds = %48
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %58 = sub nsw i32 %57, 1
  %59 = shl i32 1, %58
  store i32 %59, ptr @wp_luma_round, align 4, !tbaa !3
  %60 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 1, %61
  store i32 %62, ptr @wp_chroma_round, align 4, !tbaa !3
  %63 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %64 = shl i32 1, %63
  %65 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 0
  store i32 %64, ptr %65, align 4, !tbaa !3
  %66 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %67 = shl i32 1, %66
  %68 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  store i32 %67, ptr %68, align 4, !tbaa !3
  %69 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %70 = shl i32 1, %69
  %71 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 2
  store i32 %70, ptr %71, align 4, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %72

72:                                               ; preds = %148, %56
  %73 = load i32, ptr %1, align 4, !tbaa !3
  %74 = load i32, ptr %12, align 4, !tbaa !3
  %75 = add nsw i32 2, %74
  %76 = icmp slt i32 %73, %75
  br i1 %76, label %77, label %151

77:                                               ; preds = %72
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %78

78:                                               ; preds = %144, %77
  %79 = load i32, ptr %2, align 4, !tbaa !3
  %80 = load i32, ptr %1, align 4, !tbaa !3
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !3
  %84 = icmp slt i32 %79, %83
  br i1 %84, label %85, label %147

85:                                               ; preds = %78
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %86

86:                                               ; preds = %140, %85
  %87 = load i32, ptr %3, align 4, !tbaa !3
  %88 = icmp slt i32 %87, 3
  br i1 %88, label %89, label %143

89:                                               ; preds = %86
  %90 = load i32, ptr %3, align 4, !tbaa !3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !3
  %94 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %95 = load i32, ptr %1, align 4, !tbaa !3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = load i32, ptr %2, align 4, !tbaa !3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !37
  %103 = load i32, ptr %3, align 4, !tbaa !3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %102, i64 %104
  store i32 %93, ptr %105, align 4, !tbaa !3
  %106 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %107 = load i32, ptr %1, align 4, !tbaa !3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !35
  %111 = load i32, ptr %2, align 4, !tbaa !3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %110, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !37
  %115 = load i32, ptr %3, align 4, !tbaa !3
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, ptr %114, i64 %116
  store i32 0, ptr %117, align 4, !tbaa !3
  %118 = load i32, ptr %1, align 4, !tbaa !3
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %119
  %121 = load i32, ptr %2, align 4, !tbaa !3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [32 x [3 x i32]], ptr %120, i64 0, i64 %122
  %124 = load i32, ptr %3, align 4, !tbaa !3
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [3 x i32], ptr %123, i64 0, i64 %125
  store i32 0, ptr %126, align 4, !tbaa !3
  %127 = load i32, ptr %3, align 4, !tbaa !3
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !3
  %131 = load i32, ptr %1, align 4, !tbaa !3
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %132
  %134 = load i32, ptr %2, align 4, !tbaa !3
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [32 x [3 x i32]], ptr %133, i64 0, i64 %135
  %137 = load i32, ptr %3, align 4, !tbaa !3
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32], ptr %136, i64 0, i64 %138
  store i32 %130, ptr %139, align 4, !tbaa !3
  br label %140

140:                                              ; preds = %89
  %141 = load i32, ptr %3, align 4, !tbaa !3
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %3, align 4, !tbaa !3
  br label %86, !llvm.loop !76

143:                                              ; preds = %86
  br label %144

144:                                              ; preds = %143
  %145 = load i32, ptr %2, align 4, !tbaa !3
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %2, align 4, !tbaa !3
  br label %78, !llvm.loop !77

147:                                              ; preds = %78
  br label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %1, align 4, !tbaa !3
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %1, align 4, !tbaa !3
  br label %72, !llvm.loop !78

151:                                              ; preds = %72
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %152

152:                                              ; preds = %362, %151
  %153 = load i32, ptr %1, align 4, !tbaa !3
  %154 = load i32, ptr @listXsize, align 4, !tbaa !3
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %365

156:                                              ; preds = %152
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %157

157:                                              ; preds = %358, %156
  %158 = load i32, ptr %2, align 4, !tbaa !3
  %159 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %361

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #3
  %162 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @listX, i64 0, i64 1), align 8, !tbaa !51
  %163 = load i32, ptr %2, align 4, !tbaa !3
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !53
  %167 = getelementptr inbounds nuw %struct.storable_picture, ptr %166, i32 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !79
  %169 = load ptr, ptr @listX, align 8, !tbaa !51
  %170 = load i32, ptr %1, align 4, !tbaa !3
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %169, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !53
  %174 = getelementptr inbounds nuw %struct.storable_picture, ptr %173, i32 0, i32 1
  %175 = load i32, ptr %174, align 4, !tbaa !79
  %176 = sub nsw i32 %168, %175
  %177 = call signext i32 @iClip3(i32 noundef signext -128, i32 noundef signext 127, i32 noundef signext %176)
  store i32 %177, ptr %21, align 4, !tbaa !3
  %178 = load ptr, ptr @enc_picture, align 8, !tbaa !53
  %179 = getelementptr inbounds nuw %struct.storable_picture, ptr %178, i32 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !79
  %181 = load ptr, ptr @listX, align 8, !tbaa !51
  %182 = load i32, ptr %1, align 4, !tbaa !3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds ptr, ptr %181, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !53
  %186 = getelementptr inbounds nuw %struct.storable_picture, ptr %185, i32 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !79
  %188 = sub nsw i32 %180, %187
  %189 = call signext i32 @iClip3(i32 noundef signext -128, i32 noundef signext 127, i32 noundef signext %188)
  store i32 %189, ptr %22, align 4, !tbaa !3
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %190

190:                                              ; preds = %354, %161
  %191 = load i32, ptr %8, align 4, !tbaa !3
  %192 = icmp slt i32 %191, 3
  br i1 %192, label %193, label %357

193:                                              ; preds = %190
  %194 = load i32, ptr %21, align 4, !tbaa !3
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %245

196:                                              ; preds = %193
  %197 = load i32, ptr %8, align 4, !tbaa !3
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !3
  %201 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %202 = load i32, ptr %1, align 4, !tbaa !3
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %201, i64 0, i64 %203
  %205 = load i32, ptr %2, align 4, !tbaa !3
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [32 x [3 x i32]], ptr %204, i64 0, i64 %206
  %208 = load i32, ptr %8, align 4, !tbaa !3
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [3 x i32], ptr %207, i64 0, i64 %209
  store i32 %200, ptr %210, align 4, !tbaa !3
  %211 = load i32, ptr %8, align 4, !tbaa !3
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !3
  %215 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 0
  %216 = load i32, ptr %1, align 4, !tbaa !3
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %215, i64 0, i64 %217
  %219 = load i32, ptr %2, align 4, !tbaa !3
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [32 x [3 x i32]], ptr %218, i64 0, i64 %220
  %222 = load i32, ptr %8, align 4, !tbaa !3
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [3 x i32], ptr %221, i64 0, i64 %223
  store i32 %214, ptr %224, align 4, !tbaa !3
  %225 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %16, i64 0, i64 1
  %226 = load i32, ptr %1, align 4, !tbaa !3
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %225, i64 0, i64 %227
  %229 = load i32, ptr %2, align 4, !tbaa !3
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [32 x [3 x i32]], ptr %228, i64 0, i64 %230
  %232 = load i32, ptr %8, align 4, !tbaa !3
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [3 x i32], ptr %231, i64 0, i64 %233
  store i32 0, ptr %234, align 4, !tbaa !3
  %235 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %16, i64 0, i64 0
  %236 = load i32, ptr %1, align 4, !tbaa !3
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %235, i64 0, i64 %237
  %239 = load i32, ptr %2, align 4, !tbaa !3
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [32 x [3 x i32]], ptr %238, i64 0, i64 %240
  %242 = load i32, ptr %8, align 4, !tbaa !3
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x i32], ptr %241, i64 0, i64 %243
  store i32 0, ptr %244, align 4, !tbaa !3
  br label %353

245:                                              ; preds = %193
  %246 = load i32, ptr %21, align 4, !tbaa !3
  %247 = sdiv i32 %246, 2
  %248 = call signext i32 @iabs(i32 noundef signext %247)
  %249 = add nsw i32 16384, %248
  %250 = load i32, ptr %21, align 4, !tbaa !3
  %251 = sdiv i32 %249, %250
  store i32 %251, ptr %4, align 4, !tbaa !3
  %252 = load i32, ptr %4, align 4, !tbaa !3
  %253 = load i32, ptr %22, align 4, !tbaa !3
  %254 = mul nsw i32 %252, %253
  %255 = add nsw i32 %254, 32
  %256 = ashr i32 %255, 6
  %257 = call signext i32 @iClip3(i32 noundef signext -1024, i32 noundef signext 1023, i32 noundef signext %256)
  store i32 %257, ptr %5, align 4, !tbaa !3
  %258 = load i32, ptr %5, align 4, !tbaa !3
  %259 = ashr i32 %258, 2
  %260 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %261 = load i32, ptr %1, align 4, !tbaa !3
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %260, i64 0, i64 %262
  %264 = load i32, ptr %2, align 4, !tbaa !3
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [32 x [3 x i32]], ptr %263, i64 0, i64 %265
  %267 = load i32, ptr %8, align 4, !tbaa !3
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [3 x i32], ptr %266, i64 0, i64 %268
  store i32 %259, ptr %269, align 4, !tbaa !3
  %270 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %271 = load i32, ptr %1, align 4, !tbaa !3
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %270, i64 0, i64 %272
  %274 = load i32, ptr %2, align 4, !tbaa !3
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [32 x [3 x i32]], ptr %273, i64 0, i64 %275
  %277 = load i32, ptr %8, align 4, !tbaa !3
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [3 x i32], ptr %276, i64 0, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !3
  %281 = icmp slt i32 %280, -64
  br i1 %281, label %295, label %282

282:                                              ; preds = %245
  %283 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %284 = load i32, ptr %1, align 4, !tbaa !3
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %283, i64 0, i64 %285
  %287 = load i32, ptr %2, align 4, !tbaa !3
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [32 x [3 x i32]], ptr %286, i64 0, i64 %288
  %290 = load i32, ptr %8, align 4, !tbaa !3
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [3 x i32], ptr %289, i64 0, i64 %291
  %293 = load i32, ptr %292, align 4, !tbaa !3
  %294 = icmp sgt i32 %293, 128
  br i1 %294, label %295, label %310

295:                                              ; preds = %282, %245
  %296 = load i32, ptr %8, align 4, !tbaa !3
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !3
  %300 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %301 = load i32, ptr %1, align 4, !tbaa !3
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %300, i64 0, i64 %302
  %304 = load i32, ptr %2, align 4, !tbaa !3
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [32 x [3 x i32]], ptr %303, i64 0, i64 %305
  %307 = load i32, ptr %8, align 4, !tbaa !3
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [3 x i32], ptr %306, i64 0, i64 %308
  store i32 %299, ptr %309, align 4, !tbaa !3
  br label %310

310:                                              ; preds = %295, %282
  %311 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %312 = load i32, ptr %1, align 4, !tbaa !3
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %311, i64 0, i64 %313
  %315 = load i32, ptr %2, align 4, !tbaa !3
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [32 x [3 x i32]], ptr %314, i64 0, i64 %316
  %318 = load i32, ptr %8, align 4, !tbaa !3
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [3 x i32], ptr %317, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !3
  %322 = sub nsw i32 64, %321
  %323 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 0
  %324 = load i32, ptr %1, align 4, !tbaa !3
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %323, i64 0, i64 %325
  %327 = load i32, ptr %2, align 4, !tbaa !3
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [32 x [3 x i32]], ptr %326, i64 0, i64 %328
  %330 = load i32, ptr %8, align 4, !tbaa !3
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [3 x i32], ptr %329, i64 0, i64 %331
  store i32 %322, ptr %332, align 4, !tbaa !3
  %333 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %16, i64 0, i64 1
  %334 = load i32, ptr %1, align 4, !tbaa !3
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %333, i64 0, i64 %335
  %337 = load i32, ptr %2, align 4, !tbaa !3
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [32 x [3 x i32]], ptr %336, i64 0, i64 %338
  %340 = load i32, ptr %8, align 4, !tbaa !3
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [3 x i32], ptr %339, i64 0, i64 %341
  store i32 0, ptr %342, align 4, !tbaa !3
  %343 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %16, i64 0, i64 0
  %344 = load i32, ptr %1, align 4, !tbaa !3
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %343, i64 0, i64 %345
  %347 = load i32, ptr %2, align 4, !tbaa !3
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [32 x [3 x i32]], ptr %346, i64 0, i64 %348
  %350 = load i32, ptr %8, align 4, !tbaa !3
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [3 x i32], ptr %349, i64 0, i64 %351
  store i32 0, ptr %352, align 4, !tbaa !3
  br label %353

353:                                              ; preds = %310, %196
  br label %354

354:                                              ; preds = %353
  %355 = load i32, ptr %8, align 4, !tbaa !3
  %356 = add nsw i32 %355, 1
  store i32 %356, ptr %8, align 4, !tbaa !3
  br label %190, !llvm.loop !80

357:                                              ; preds = %190
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #3
  br label %358

358:                                              ; preds = %357
  %359 = load i32, ptr %2, align 4, !tbaa !3
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %2, align 4, !tbaa !3
  br label %157, !llvm.loop !81

361:                                              ; preds = %157
  br label %362

362:                                              ; preds = %361
  %363 = load i32, ptr %1, align 4, !tbaa !3
  %364 = add nsw i32 %363, 1
  store i32 %364, ptr %1, align 4, !tbaa !3
  br label %152, !llvm.loop !82

365:                                              ; preds = %152
  %366 = load ptr, ptr @active_pps, align 8, !tbaa !9
  %367 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %366, i32 0, i32 20
  %368 = load i32, ptr %367, align 4, !tbaa !74
  %369 = icmp eq i32 %368, 2
  br i1 %369, label %370, label %543

370:                                              ; preds = %365
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %371

371:                                              ; preds = %451, %370
  %372 = load i32, ptr %1, align 4, !tbaa !3
  %373 = load i32, ptr @listXsize, align 4, !tbaa !3
  %374 = icmp slt i32 %372, %373
  br i1 %374, label %375, label %454

375:                                              ; preds = %371
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %376

376:                                              ; preds = %447, %375
  %377 = load i32, ptr %2, align 4, !tbaa !3
  %378 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %379 = icmp slt i32 %377, %378
  br i1 %379, label %380, label %450

380:                                              ; preds = %376
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %381

381:                                              ; preds = %443, %380
  %382 = load i32, ptr %8, align 4, !tbaa !3
  %383 = icmp slt i32 %382, 3
  br i1 %383, label %384, label %446

384:                                              ; preds = %381
  %385 = load i32, ptr %8, align 4, !tbaa !3
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  br label %391

389:                                              ; preds = %384
  %390 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %388, %387 ], [ %390, %389 ]
  store i32 %392, ptr %10, align 4, !tbaa !3
  %393 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 1
  %394 = load i32, ptr %1, align 4, !tbaa !3
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %393, i64 0, i64 %395
  %397 = load i32, ptr %2, align 4, !tbaa !3
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [32 x [3 x i32]], ptr %396, i64 0, i64 %398
  %400 = load i32, ptr %8, align 4, !tbaa !3
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [3 x i32], ptr %399, i64 0, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !3
  %404 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %405 = getelementptr inbounds ptr, ptr %404, i64 1
  %406 = load ptr, ptr %405, align 8, !tbaa !34
  %407 = load i32, ptr %1, align 4, !tbaa !3
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds ptr, ptr %406, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !35
  %411 = load i32, ptr %2, align 4, !tbaa !3
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds ptr, ptr %410, i64 %412
  %414 = load ptr, ptr %413, align 8, !tbaa !37
  %415 = load i32, ptr %8, align 4, !tbaa !3
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, ptr %414, i64 %416
  store i32 %403, ptr %417, align 4, !tbaa !3
  %418 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %15, i64 0, i64 0
  %419 = load i32, ptr %1, align 4, !tbaa !3
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %418, i64 0, i64 %420
  %422 = load i32, ptr %2, align 4, !tbaa !3
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [32 x [3 x i32]], ptr %421, i64 0, i64 %423
  %425 = load i32, ptr %8, align 4, !tbaa !3
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [3 x i32], ptr %424, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !3
  %429 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %430 = getelementptr inbounds ptr, ptr %429, i64 0
  %431 = load ptr, ptr %430, align 8, !tbaa !34
  %432 = load i32, ptr %1, align 4, !tbaa !3
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !35
  %436 = load i32, ptr %2, align 4, !tbaa !3
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds ptr, ptr %435, i64 %437
  %439 = load ptr, ptr %438, align 8, !tbaa !37
  %440 = load i32, ptr %8, align 4, !tbaa !3
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, ptr %439, i64 %441
  store i32 %428, ptr %442, align 4, !tbaa !3
  br label %443

443:                                              ; preds = %391
  %444 = load i32, ptr %8, align 4, !tbaa !3
  %445 = add nsw i32 %444, 1
  store i32 %445, ptr %8, align 4, !tbaa !3
  br label %381, !llvm.loop !84

446:                                              ; preds = %381
  br label %447

447:                                              ; preds = %446
  %448 = load i32, ptr %2, align 4, !tbaa !3
  %449 = add nsw i32 %448, 1
  store i32 %449, ptr %2, align 4, !tbaa !3
  br label %376, !llvm.loop !85

450:                                              ; preds = %376
  br label %451

451:                                              ; preds = %450
  %452 = load i32, ptr %1, align 4, !tbaa !3
  %453 = add nsw i32 %452, 1
  store i32 %453, ptr %1, align 4, !tbaa !3
  br label %371, !llvm.loop !86

454:                                              ; preds = %371
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %455

455:                                              ; preds = %539, %454
  %456 = load i32, ptr %17, align 4, !tbaa !3
  %457 = load i32, ptr %12, align 4, !tbaa !3
  %458 = add nsw i32 2, %457
  %459 = icmp slt i32 %456, %458
  br i1 %459, label %460, label %542

460:                                              ; preds = %455
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %461

461:                                              ; preds = %535, %460
  %462 = load i32, ptr %7, align 4, !tbaa !3
  %463 = load i32, ptr %17, align 4, !tbaa !3
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %464
  %466 = load i32, ptr %465, align 4, !tbaa !3
  %467 = icmp slt i32 %462, %466
  br i1 %467, label %468, label %538

468:                                              ; preds = %461
  %469 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 0
  %470 = load i32, ptr %469, align 4, !tbaa !3
  %471 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %472 = load i32, ptr %17, align 4, !tbaa !3
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !35
  %476 = load i32, ptr %7, align 4, !tbaa !3
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds ptr, ptr %475, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !37
  %480 = getelementptr inbounds i32, ptr %479, i64 0
  store i32 %470, ptr %480, align 4, !tbaa !3
  %481 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  %482 = load i32, ptr %481, align 4, !tbaa !3
  %483 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %484 = load i32, ptr %17, align 4, !tbaa !3
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds ptr, ptr %483, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !35
  %488 = load i32, ptr %7, align 4, !tbaa !3
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds ptr, ptr %487, i64 %489
  %491 = load ptr, ptr %490, align 8, !tbaa !37
  %492 = getelementptr inbounds i32, ptr %491, i64 1
  store i32 %482, ptr %492, align 4, !tbaa !3
  %493 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 2
  %494 = load i32, ptr %493, align 4, !tbaa !3
  %495 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %496 = load i32, ptr %17, align 4, !tbaa !3
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds ptr, ptr %495, i64 %497
  %499 = load ptr, ptr %498, align 8, !tbaa !35
  %500 = load i32, ptr %7, align 4, !tbaa !3
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds ptr, ptr %499, i64 %501
  %503 = load ptr, ptr %502, align 8, !tbaa !37
  %504 = getelementptr inbounds i32, ptr %503, i64 2
  store i32 %494, ptr %504, align 4, !tbaa !3
  %505 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %506 = load i32, ptr %17, align 4, !tbaa !3
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %505, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !35
  %510 = load i32, ptr %7, align 4, !tbaa !3
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds ptr, ptr %509, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !37
  %514 = getelementptr inbounds i32, ptr %513, i64 0
  store i32 0, ptr %514, align 4, !tbaa !3
  %515 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %516 = load i32, ptr %17, align 4, !tbaa !3
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds ptr, ptr %515, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !35
  %520 = load i32, ptr %7, align 4, !tbaa !3
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds ptr, ptr %519, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !37
  %524 = getelementptr inbounds i32, ptr %523, i64 1
  store i32 0, ptr %524, align 4, !tbaa !3
  %525 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %526 = load i32, ptr %17, align 4, !tbaa !3
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds ptr, ptr %525, i64 %527
  %529 = load ptr, ptr %528, align 8, !tbaa !35
  %530 = load i32, ptr %7, align 4, !tbaa !3
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds ptr, ptr %529, i64 %531
  %533 = load ptr, ptr %532, align 8, !tbaa !37
  %534 = getelementptr inbounds i32, ptr %533, i64 2
  store i32 0, ptr %534, align 4, !tbaa !3
  br label %535

535:                                              ; preds = %468
  %536 = load i32, ptr %7, align 4, !tbaa !3
  %537 = add nsw i32 %536, 1
  store i32 %537, ptr %7, align 4, !tbaa !3
  br label %461, !llvm.loop !87

538:                                              ; preds = %461
  br label %539

539:                                              ; preds = %538
  %540 = load i32, ptr %17, align 4, !tbaa !3
  %541 = add nsw i32 %540, 1
  store i32 %541, ptr %17, align 4, !tbaa !3
  br label %455, !llvm.loop !88

542:                                              ; preds = %455
  br label %1000

543:                                              ; preds = %365
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %544

544:                                              ; preds = %574, %543
  %545 = load i32, ptr %1, align 4, !tbaa !3
  %546 = load ptr, ptr @img, align 8, !tbaa !9
  %547 = getelementptr inbounds nuw %struct.ImageParameters, ptr %546, i32 0, i32 17
  %548 = load i32, ptr %547, align 4, !tbaa !42
  %549 = icmp slt i32 %545, %548
  br i1 %549, label %550, label %577

550:                                              ; preds = %544
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %551

551:                                              ; preds = %570, %550
  %552 = load i32, ptr %2, align 4, !tbaa !3
  %553 = load ptr, ptr @img, align 8, !tbaa !9
  %554 = getelementptr inbounds nuw %struct.ImageParameters, ptr %553, i32 0, i32 13
  %555 = load i32, ptr %554, align 4, !tbaa !43
  %556 = icmp slt i32 %552, %555
  br i1 %556, label %557, label %573

557:                                              ; preds = %551
  %558 = load ptr, ptr @imgY_org, align 8, !tbaa !44
  %559 = load i32, ptr %1, align 4, !tbaa !3
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %558, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !46
  %563 = load i32, ptr %2, align 4, !tbaa !3
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i16, ptr %562, i64 %564
  %566 = load i16, ptr %565, align 2, !tbaa !48
  %567 = uitofp i16 %566 to double
  %568 = load double, ptr %6, align 8, !tbaa !7
  %569 = fadd double %568, %567
  store double %569, ptr %6, align 8, !tbaa !7
  br label %570

570:                                              ; preds = %557
  %571 = load i32, ptr %2, align 4, !tbaa !3
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr %2, align 4, !tbaa !3
  br label %551, !llvm.loop !89

573:                                              ; preds = %551
  br label %574

574:                                              ; preds = %573
  %575 = load i32, ptr %1, align 4, !tbaa !3
  %576 = add nsw i32 %575, 1
  store i32 %576, ptr %1, align 4, !tbaa !3
  br label %544, !llvm.loop !90

577:                                              ; preds = %544
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %578

578:                                              ; preds = %743, %577
  %579 = load i32, ptr %17, align 4, !tbaa !3
  %580 = load i32, ptr %12, align 4, !tbaa !3
  %581 = add nsw i32 2, %580
  %582 = icmp slt i32 %579, %581
  br i1 %582, label %583, label %746

583:                                              ; preds = %578
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %584

584:                                              ; preds = %739, %583
  %585 = load i32, ptr %3, align 4, !tbaa !3
  %586 = load i32, ptr %17, align 4, !tbaa !3
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !3
  %590 = icmp slt i32 %585, %589
  br i1 %590, label %591, label %742

591:                                              ; preds = %584
  %592 = load i32, ptr %17, align 4, !tbaa !3
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [6 x [32 x double]], ptr %9, i64 0, i64 %593
  %595 = load i32, ptr %3, align 4, !tbaa !3
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [32 x double], ptr %594, i64 0, i64 %596
  store double 0.000000e+00, ptr %597, align 8, !tbaa !7
  %598 = load i32, ptr %17, align 4, !tbaa !3
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !51
  %602 = load i32, ptr %3, align 4, !tbaa !3
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds ptr, ptr %601, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !53
  %606 = getelementptr inbounds nuw %struct.storable_picture, ptr %605, i32 0, i32 30
  %607 = load ptr, ptr %606, align 8, !tbaa !55
  store ptr %607, ptr @ref_qpic_sub, align 8, !tbaa !63
  %608 = load ptr, ptr @ref_qpic_sub, align 8, !tbaa !63
  %609 = getelementptr inbounds ptr, ptr %608, i64 0
  %610 = load ptr, ptr %609, align 8, !tbaa !65
  %611 = getelementptr inbounds ptr, ptr %610, i64 0
  %612 = load ptr, ptr %611, align 8, !tbaa !44
  store ptr %612, ptr %20, align 8, !tbaa !44
  store i32 20, ptr %2, align 4, !tbaa !3
  br label %613

613:                                              ; preds = %651, %591
  %614 = load i32, ptr %2, align 4, !tbaa !3
  %615 = load ptr, ptr @img, align 8, !tbaa !9
  %616 = getelementptr inbounds nuw %struct.ImageParameters, ptr %615, i32 0, i32 17
  %617 = load i32, ptr %616, align 4, !tbaa !42
  %618 = add nsw i32 %617, 20
  %619 = icmp slt i32 %614, %618
  br i1 %619, label %620, label %654

620:                                              ; preds = %613
  store i32 20, ptr %1, align 4, !tbaa !3
  br label %621

621:                                              ; preds = %647, %620
  %622 = load i32, ptr %1, align 4, !tbaa !3
  %623 = load ptr, ptr @img, align 8, !tbaa !9
  %624 = getelementptr inbounds nuw %struct.ImageParameters, ptr %623, i32 0, i32 13
  %625 = load i32, ptr %624, align 4, !tbaa !43
  %626 = add nsw i32 %625, 20
  %627 = icmp slt i32 %622, %626
  br i1 %627, label %628, label %650

628:                                              ; preds = %621
  %629 = load ptr, ptr %20, align 8, !tbaa !44
  %630 = load i32, ptr %2, align 4, !tbaa !3
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds ptr, ptr %629, i64 %631
  %633 = load ptr, ptr %632, align 8, !tbaa !46
  %634 = load i32, ptr %1, align 4, !tbaa !3
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i16, ptr %633, i64 %635
  %637 = load i16, ptr %636, align 2, !tbaa !48
  %638 = uitofp i16 %637 to double
  %639 = load i32, ptr %17, align 4, !tbaa !3
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [6 x [32 x double]], ptr %9, i64 0, i64 %640
  %642 = load i32, ptr %3, align 4, !tbaa !3
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds [32 x double], ptr %641, i64 0, i64 %643
  %645 = load double, ptr %644, align 8, !tbaa !7
  %646 = fadd double %645, %638
  store double %646, ptr %644, align 8, !tbaa !7
  br label %647

647:                                              ; preds = %628
  %648 = load i32, ptr %1, align 4, !tbaa !3
  %649 = add nsw i32 %648, 1
  store i32 %649, ptr %1, align 4, !tbaa !3
  br label %621, !llvm.loop !91

650:                                              ; preds = %621
  br label %651

651:                                              ; preds = %650
  %652 = load i32, ptr %2, align 4, !tbaa !3
  %653 = add nsw i32 %652, 1
  store i32 %653, ptr %2, align 4, !tbaa !3
  br label %613, !llvm.loop !92

654:                                              ; preds = %613
  %655 = load i32, ptr %17, align 4, !tbaa !3
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [6 x [32 x double]], ptr %9, i64 0, i64 %656
  %658 = load i32, ptr %3, align 4, !tbaa !3
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [32 x double], ptr %657, i64 0, i64 %659
  %661 = load double, ptr %660, align 8, !tbaa !7
  %662 = fcmp une double %661, 0.000000e+00
  br i1 %662, label %663, label %679

663:                                              ; preds = %654
  %664 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 0
  %665 = load i32, ptr %664, align 4, !tbaa !3
  %666 = sitofp i32 %665 to double
  %667 = load double, ptr %6, align 8, !tbaa !7
  %668 = fmul double %666, %667
  %669 = load i32, ptr %17, align 4, !tbaa !3
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [6 x [32 x double]], ptr %9, i64 0, i64 %670
  %672 = load i32, ptr %3, align 4, !tbaa !3
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [32 x double], ptr %671, i64 0, i64 %673
  %675 = load double, ptr %674, align 8, !tbaa !7
  %676 = fdiv double %668, %675
  %677 = fadd double %676, 5.000000e-01
  %678 = fptosi double %677 to i32
  store i32 %678, ptr %18, align 4, !tbaa !3
  br label %682

679:                                              ; preds = %654
  %680 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 0
  %681 = load i32, ptr %680, align 4, !tbaa !3
  store i32 %681, ptr %18, align 4, !tbaa !3
  br label %682

682:                                              ; preds = %679, %663
  %683 = load i32, ptr %18, align 4, !tbaa !3
  %684 = icmp slt i32 %683, -128
  br i1 %684, label %688, label %685

685:                                              ; preds = %682
  %686 = load i32, ptr %18, align 4, !tbaa !3
  %687 = icmp sgt i32 %686, 127
  br i1 %687, label %688, label %691

688:                                              ; preds = %685, %682
  %689 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 0
  %690 = load i32, ptr %689, align 4, !tbaa !3
  store i32 %690, ptr %18, align 4, !tbaa !3
  br label %691

691:                                              ; preds = %688, %685
  store i32 0, ptr %19, align 4, !tbaa !3
  %692 = load i32, ptr %18, align 4, !tbaa !3
  %693 = load i32, ptr %17, align 4, !tbaa !3
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %694
  %696 = load i32, ptr %3, align 4, !tbaa !3
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [32 x [3 x i32]], ptr %695, i64 0, i64 %697
  %699 = getelementptr inbounds [3 x i32], ptr %698, i64 0, i64 0
  store i32 %692, ptr %699, align 4, !tbaa !3
  %700 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  %701 = load i32, ptr %700, align 4, !tbaa !3
  %702 = load i32, ptr %17, align 4, !tbaa !3
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %703
  %705 = load i32, ptr %3, align 4, !tbaa !3
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds [32 x [3 x i32]], ptr %704, i64 0, i64 %706
  %708 = getelementptr inbounds [3 x i32], ptr %707, i64 0, i64 1
  store i32 %701, ptr %708, align 4, !tbaa !3
  %709 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 2
  %710 = load i32, ptr %709, align 4, !tbaa !3
  %711 = load i32, ptr %17, align 4, !tbaa !3
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %712
  %714 = load i32, ptr %3, align 4, !tbaa !3
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [32 x [3 x i32]], ptr %713, i64 0, i64 %715
  %717 = getelementptr inbounds [3 x i32], ptr %716, i64 0, i64 2
  store i32 %710, ptr %717, align 4, !tbaa !3
  %718 = load i32, ptr %17, align 4, !tbaa !3
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %719
  %721 = load i32, ptr %3, align 4, !tbaa !3
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [32 x [3 x i32]], ptr %720, i64 0, i64 %722
  %724 = getelementptr inbounds [3 x i32], ptr %723, i64 0, i64 0
  store i32 0, ptr %724, align 4, !tbaa !3
  %725 = load i32, ptr %17, align 4, !tbaa !3
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %726
  %728 = load i32, ptr %3, align 4, !tbaa !3
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [32 x [3 x i32]], ptr %727, i64 0, i64 %729
  %731 = getelementptr inbounds [3 x i32], ptr %730, i64 0, i64 1
  store i32 0, ptr %731, align 4, !tbaa !3
  %732 = load i32, ptr %17, align 4, !tbaa !3
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %733
  %735 = load i32, ptr %3, align 4, !tbaa !3
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [32 x [3 x i32]], ptr %734, i64 0, i64 %736
  %738 = getelementptr inbounds [3 x i32], ptr %737, i64 0, i64 2
  store i32 0, ptr %738, align 4, !tbaa !3
  br label %739

739:                                              ; preds = %691
  %740 = load i32, ptr %3, align 4, !tbaa !3
  %741 = add nsw i32 %740, 1
  store i32 %741, ptr %3, align 4, !tbaa !3
  br label %584, !llvm.loop !93

742:                                              ; preds = %584
  br label %743

743:                                              ; preds = %742
  %744 = load i32, ptr %17, align 4, !tbaa !3
  %745 = add nsw i32 %744, 1
  store i32 %745, ptr %17, align 4, !tbaa !3
  br label %578, !llvm.loop !94

746:                                              ; preds = %578
  %747 = load ptr, ptr @active_pps, align 8, !tbaa !9
  %748 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %747, i32 0, i32 20
  %749 = load i32, ptr %748, align 4, !tbaa !74
  %750 = icmp eq i32 %749, 1
  br i1 %750, label %751, label %826

751:                                              ; preds = %746
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %752

752:                                              ; preds = %822, %751
  %753 = load i32, ptr %17, align 4, !tbaa !3
  %754 = load i32, ptr %12, align 4, !tbaa !3
  %755 = add nsw i32 2, %754
  %756 = icmp slt i32 %753, %755
  br i1 %756, label %757, label %825

757:                                              ; preds = %752
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %758

758:                                              ; preds = %818, %757
  %759 = load i32, ptr %7, align 4, !tbaa !3
  %760 = load i32, ptr %17, align 4, !tbaa !3
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %761
  %763 = load i32, ptr %762, align 4, !tbaa !3
  %764 = icmp slt i32 %759, %763
  br i1 %764, label %765, label %821

765:                                              ; preds = %758
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %766

766:                                              ; preds = %814, %765
  %767 = load i32, ptr %8, align 4, !tbaa !3
  %768 = icmp slt i32 %767, 3
  br i1 %768, label %769, label %817

769:                                              ; preds = %766
  %770 = load i32, ptr %17, align 4, !tbaa !3
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %771
  %773 = load i32, ptr %7, align 4, !tbaa !3
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [32 x [3 x i32]], ptr %772, i64 0, i64 %774
  %776 = load i32, ptr %8, align 4, !tbaa !3
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [3 x i32], ptr %775, i64 0, i64 %777
  %779 = load i32, ptr %778, align 4, !tbaa !3
  %780 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %781 = load i32, ptr %17, align 4, !tbaa !3
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds ptr, ptr %780, i64 %782
  %784 = load ptr, ptr %783, align 8, !tbaa !35
  %785 = load i32, ptr %7, align 4, !tbaa !3
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds ptr, ptr %784, i64 %786
  %788 = load ptr, ptr %787, align 8, !tbaa !37
  %789 = load i32, ptr %8, align 4, !tbaa !3
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds i32, ptr %788, i64 %790
  store i32 %779, ptr %791, align 4, !tbaa !3
  %792 = load i32, ptr %17, align 4, !tbaa !3
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %793
  %795 = load i32, ptr %7, align 4, !tbaa !3
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds [32 x [3 x i32]], ptr %794, i64 0, i64 %796
  %798 = load i32, ptr %8, align 4, !tbaa !3
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [3 x i32], ptr %797, i64 0, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !3
  %802 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %803 = load i32, ptr %17, align 4, !tbaa !3
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds ptr, ptr %802, i64 %804
  %806 = load ptr, ptr %805, align 8, !tbaa !35
  %807 = load i32, ptr %7, align 4, !tbaa !3
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds ptr, ptr %806, i64 %808
  %810 = load ptr, ptr %809, align 8, !tbaa !37
  %811 = load i32, ptr %8, align 4, !tbaa !3
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i32, ptr %810, i64 %812
  store i32 %801, ptr %813, align 4, !tbaa !3
  br label %814

814:                                              ; preds = %769
  %815 = load i32, ptr %8, align 4, !tbaa !3
  %816 = add nsw i32 %815, 1
  store i32 %816, ptr %8, align 4, !tbaa !3
  br label %766, !llvm.loop !95

817:                                              ; preds = %766
  br label %818

818:                                              ; preds = %817
  %819 = load i32, ptr %7, align 4, !tbaa !3
  %820 = add nsw i32 %819, 1
  store i32 %820, ptr %7, align 4, !tbaa !3
  br label %758, !llvm.loop !96

821:                                              ; preds = %758
  br label %822

822:                                              ; preds = %821
  %823 = load i32, ptr %17, align 4, !tbaa !3
  %824 = add nsw i32 %823, 1
  store i32 %824, ptr %17, align 4, !tbaa !3
  br label %752, !llvm.loop !97

825:                                              ; preds = %752
  br label %915

826:                                              ; preds = %746
  store i32 0, ptr %17, align 4, !tbaa !3
  br label %827

827:                                              ; preds = %911, %826
  %828 = load i32, ptr %17, align 4, !tbaa !3
  %829 = load i32, ptr %12, align 4, !tbaa !3
  %830 = add nsw i32 2, %829
  %831 = icmp slt i32 %828, %830
  br i1 %831, label %832, label %914

832:                                              ; preds = %827
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %833

833:                                              ; preds = %907, %832
  %834 = load i32, ptr %7, align 4, !tbaa !3
  %835 = load i32, ptr %17, align 4, !tbaa !3
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %836
  %838 = load i32, ptr %837, align 4, !tbaa !3
  %839 = icmp slt i32 %834, %838
  br i1 %839, label %840, label %910

840:                                              ; preds = %833
  %841 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 0
  %842 = load i32, ptr %841, align 4, !tbaa !3
  %843 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %844 = load i32, ptr %17, align 4, !tbaa !3
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds ptr, ptr %843, i64 %845
  %847 = load ptr, ptr %846, align 8, !tbaa !35
  %848 = load i32, ptr %7, align 4, !tbaa !3
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds ptr, ptr %847, i64 %849
  %851 = load ptr, ptr %850, align 8, !tbaa !37
  %852 = getelementptr inbounds i32, ptr %851, i64 0
  store i32 %842, ptr %852, align 4, !tbaa !3
  %853 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 1
  %854 = load i32, ptr %853, align 4, !tbaa !3
  %855 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %856 = load i32, ptr %17, align 4, !tbaa !3
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds ptr, ptr %855, i64 %857
  %859 = load ptr, ptr %858, align 8, !tbaa !35
  %860 = load i32, ptr %7, align 4, !tbaa !3
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds ptr, ptr %859, i64 %861
  %863 = load ptr, ptr %862, align 8, !tbaa !37
  %864 = getelementptr inbounds i32, ptr %863, i64 1
  store i32 %854, ptr %864, align 4, !tbaa !3
  %865 = getelementptr inbounds [3 x i32], ptr %11, i64 0, i64 2
  %866 = load i32, ptr %865, align 4, !tbaa !3
  %867 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %868 = load i32, ptr %17, align 4, !tbaa !3
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds ptr, ptr %867, i64 %869
  %871 = load ptr, ptr %870, align 8, !tbaa !35
  %872 = load i32, ptr %7, align 4, !tbaa !3
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds ptr, ptr %871, i64 %873
  %875 = load ptr, ptr %874, align 8, !tbaa !37
  %876 = getelementptr inbounds i32, ptr %875, i64 2
  store i32 %866, ptr %876, align 4, !tbaa !3
  %877 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %878 = load i32, ptr %17, align 4, !tbaa !3
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds ptr, ptr %877, i64 %879
  %881 = load ptr, ptr %880, align 8, !tbaa !35
  %882 = load i32, ptr %7, align 4, !tbaa !3
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds ptr, ptr %881, i64 %883
  %885 = load ptr, ptr %884, align 8, !tbaa !37
  %886 = getelementptr inbounds i32, ptr %885, i64 0
  store i32 0, ptr %886, align 4, !tbaa !3
  %887 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %888 = load i32, ptr %17, align 4, !tbaa !3
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds ptr, ptr %887, i64 %889
  %891 = load ptr, ptr %890, align 8, !tbaa !35
  %892 = load i32, ptr %7, align 4, !tbaa !3
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds ptr, ptr %891, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !37
  %896 = getelementptr inbounds i32, ptr %895, i64 1
  store i32 0, ptr %896, align 4, !tbaa !3
  %897 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %898 = load i32, ptr %17, align 4, !tbaa !3
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds ptr, ptr %897, i64 %899
  %901 = load ptr, ptr %900, align 8, !tbaa !35
  %902 = load i32, ptr %7, align 4, !tbaa !3
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds ptr, ptr %901, i64 %903
  %905 = load ptr, ptr %904, align 8, !tbaa !37
  %906 = getelementptr inbounds i32, ptr %905, i64 2
  store i32 0, ptr %906, align 4, !tbaa !3
  br label %907

907:                                              ; preds = %840
  %908 = load i32, ptr %7, align 4, !tbaa !3
  %909 = add nsw i32 %908, 1
  store i32 %909, ptr %7, align 4, !tbaa !3
  br label %833, !llvm.loop !98

910:                                              ; preds = %833
  br label %911

911:                                              ; preds = %910
  %912 = load i32, ptr %17, align 4, !tbaa !3
  %913 = add nsw i32 %912, 1
  store i32 %913, ptr %17, align 4, !tbaa !3
  br label %827, !llvm.loop !99

914:                                              ; preds = %827
  br label %915

915:                                              ; preds = %914, %825
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %916

916:                                              ; preds = %996, %915
  %917 = load i32, ptr %1, align 4, !tbaa !3
  %918 = load i32, ptr @listXsize, align 4, !tbaa !3
  %919 = icmp slt i32 %917, %918
  br i1 %919, label %920, label %999

920:                                              ; preds = %916
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %921

921:                                              ; preds = %992, %920
  %922 = load i32, ptr %2, align 4, !tbaa !3
  %923 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %924 = icmp slt i32 %922, %923
  br i1 %924, label %925, label %995

925:                                              ; preds = %921
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %926

926:                                              ; preds = %988, %925
  %927 = load i32, ptr %8, align 4, !tbaa !3
  %928 = icmp slt i32 %927, 3
  br i1 %928, label %929, label %991

929:                                              ; preds = %926
  %930 = load i32, ptr %8, align 4, !tbaa !3
  %931 = icmp eq i32 %930, 0
  br i1 %931, label %932, label %934

932:                                              ; preds = %929
  %933 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  br label %936

934:                                              ; preds = %929
  %935 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %936

936:                                              ; preds = %934, %932
  %937 = phi i32 [ %933, %932 ], [ %935, %934 ]
  store i32 %937, ptr %10, align 4, !tbaa !3
  %938 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %939 = getelementptr inbounds ptr, ptr %938, i64 0
  %940 = load ptr, ptr %939, align 8, !tbaa !35
  %941 = load i32, ptr %1, align 4, !tbaa !3
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds ptr, ptr %940, i64 %942
  %944 = load ptr, ptr %943, align 8, !tbaa !37
  %945 = load i32, ptr %8, align 4, !tbaa !3
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds i32, ptr %944, i64 %946
  %948 = load i32, ptr %947, align 4, !tbaa !3
  %949 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %950 = getelementptr inbounds ptr, ptr %949, i64 0
  %951 = load ptr, ptr %950, align 8, !tbaa !34
  %952 = load i32, ptr %1, align 4, !tbaa !3
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds ptr, ptr %951, i64 %953
  %955 = load ptr, ptr %954, align 8, !tbaa !35
  %956 = load i32, ptr %2, align 4, !tbaa !3
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds ptr, ptr %955, i64 %957
  %959 = load ptr, ptr %958, align 8, !tbaa !37
  %960 = load i32, ptr %8, align 4, !tbaa !3
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds i32, ptr %959, i64 %961
  store i32 %948, ptr %962, align 4, !tbaa !3
  %963 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %964 = getelementptr inbounds ptr, ptr %963, i64 1
  %965 = load ptr, ptr %964, align 8, !tbaa !35
  %966 = load i32, ptr %2, align 4, !tbaa !3
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds ptr, ptr %965, i64 %967
  %969 = load ptr, ptr %968, align 8, !tbaa !37
  %970 = load i32, ptr %8, align 4, !tbaa !3
  %971 = sext i32 %970 to i64
  %972 = getelementptr inbounds i32, ptr %969, i64 %971
  %973 = load i32, ptr %972, align 4, !tbaa !3
  %974 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %975 = getelementptr inbounds ptr, ptr %974, i64 1
  %976 = load ptr, ptr %975, align 8, !tbaa !34
  %977 = load i32, ptr %1, align 4, !tbaa !3
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds ptr, ptr %976, i64 %978
  %980 = load ptr, ptr %979, align 8, !tbaa !35
  %981 = load i32, ptr %2, align 4, !tbaa !3
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds ptr, ptr %980, i64 %982
  %984 = load ptr, ptr %983, align 8, !tbaa !37
  %985 = load i32, ptr %8, align 4, !tbaa !3
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds i32, ptr %984, i64 %986
  store i32 %973, ptr %987, align 4, !tbaa !3
  br label %988

988:                                              ; preds = %936
  %989 = load i32, ptr %8, align 4, !tbaa !3
  %990 = add nsw i32 %989, 1
  store i32 %990, ptr %8, align 4, !tbaa !3
  br label %926, !llvm.loop !100

991:                                              ; preds = %926
  br label %992

992:                                              ; preds = %991
  %993 = load i32, ptr %2, align 4, !tbaa !3
  %994 = add nsw i32 %993, 1
  store i32 %994, ptr %2, align 4, !tbaa !3
  br label %921, !llvm.loop !101

995:                                              ; preds = %921
  br label %996

996:                                              ; preds = %995
  %997 = load i32, ptr %1, align 4, !tbaa !3
  %998 = add nsw i32 %997, 1
  store i32 %998, ptr %1, align 4, !tbaa !3
  br label %916, !llvm.loop !102

999:                                              ; preds = %916
  br label %1000

1000:                                             ; preds = %999, %542
  call void @llvm.lifetime.end.p0(i64 8, ptr %20) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #3
  call void @llvm.lifetime.end.p0(i64 73728, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 73728, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 2304, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 2304, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 1536, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #3
  ret void
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iClip3(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !3
  %7 = load i32, ptr %6, align 4, !tbaa !3
  %8 = load i32, ptr %4, align 4, !tbaa !3
  %9 = call signext i32 @imax(i32 noundef signext %7, i32 noundef signext %8)
  store i32 %9, ptr %6, align 4, !tbaa !3
  %10 = load i32, ptr %6, align 4, !tbaa !3
  %11 = load i32, ptr %5, align 4, !tbaa !3
  %12 = call signext i32 @imin(i32 noundef signext %10, i32 noundef signext %11)
  store i32 %12, ptr %6, align 4, !tbaa !3
  %13 = load i32, ptr %6, align 4, !tbaa !3
  ret i32 %13
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iabs(i32 noundef signext %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !3
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !3
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local signext i32 @test_wp_P_slice(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [32 x double], align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x [32 x [3 x i32]]], align 4
  %14 = alloca [2 x [32 x [3 x i32]]], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #3
  store double 0.000000e+00, ptr %6, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %9) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  %20 = load ptr, ptr @img, align 8, !tbaa !9
  %21 = getelementptr inbounds nuw %struct.ImageParameters, ptr %20, i32 0, i32 100
  %22 = load i32, ptr %21, align 4, !tbaa !11
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %1
  %25 = load ptr, ptr @img, align 8, !tbaa !9
  %26 = getelementptr inbounds nuw %struct.ImageParameters, ptr %25, i32 0, i32 61
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  %28 = load ptr, ptr @img, align 8, !tbaa !9
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !30
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.macroblock, ptr %27, i64 %31
  %33 = getelementptr inbounds nuw %struct.macroblock, ptr %32, i32 0, i32 19
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load ptr, ptr @img, align 8, !tbaa !9
  %38 = getelementptr inbounds nuw %struct.ImageParameters, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !30
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 4, i32 2
  br label %45

44:                                               ; preds = %24, %1
  br label %45

45:                                               ; preds = %44, %36
  %46 = phi i32 [ %43, %36 ], [ 0, %44 ]
  store i32 %46, ptr %12, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 768, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 768, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #3
  store i32 0, ptr %16, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #3
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %47 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %48 = sub nsw i32 %47, 1
  %49 = shl i32 1, %48
  store i32 %49, ptr @wp_luma_round, align 4, !tbaa !3
  %50 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %51 = sub nsw i32 %50, 1
  %52 = shl i32 1, %51
  store i32 %52, ptr @wp_chroma_round, align 4, !tbaa !3
  %53 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %54 = shl i32 1, %53
  store i32 %54, ptr %10, align 4, !tbaa !3
  %55 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %56 = shl i32 1, %55
  store i32 %56, ptr %11, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %57

57:                                               ; preds = %127, %45
  %58 = load i32, ptr %3, align 4, !tbaa !3
  %59 = load i32, ptr %12, align 4, !tbaa !3
  %60 = add nsw i32 2, %59
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %130

62:                                               ; preds = %57
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %63

63:                                               ; preds = %123, %62
  %64 = load i32, ptr %4, align 4, !tbaa !3
  %65 = load i32, ptr %3, align 4, !tbaa !3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !3
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %126

70:                                               ; preds = %63
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %71

71:                                               ; preds = %119, %70
  %72 = load i32, ptr %5, align 4, !tbaa !3
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %122

74:                                               ; preds = %71
  %75 = load i32, ptr %10, align 4, !tbaa !3
  %76 = load i32, ptr %3, align 4, !tbaa !3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %77
  %79 = load i32, ptr %4, align 4, !tbaa !3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [32 x [3 x i32]], ptr %78, i64 0, i64 %80
  %82 = load i32, ptr %5, align 4, !tbaa !3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x i32], ptr %81, i64 0, i64 %83
  store i32 %75, ptr %84, align 4, !tbaa !3
  %85 = load i32, ptr %10, align 4, !tbaa !3
  %86 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %87 = load i32, ptr %3, align 4, !tbaa !3
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = load i32, ptr %4, align 4, !tbaa !3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %90, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !37
  %95 = load i32, ptr %5, align 4, !tbaa !3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  store i32 %85, ptr %97, align 4, !tbaa !3
  %98 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %99 = load i32, ptr %3, align 4, !tbaa !3
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = load i32, ptr %4, align 4, !tbaa !3
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !37
  %107 = load i32, ptr %5, align 4, !tbaa !3
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, ptr %106, i64 %108
  store i32 0, ptr %109, align 4, !tbaa !3
  %110 = load i32, ptr %3, align 4, !tbaa !3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %111
  %113 = load i32, ptr %4, align 4, !tbaa !3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [32 x [3 x i32]], ptr %112, i64 0, i64 %114
  %116 = load i32, ptr %5, align 4, !tbaa !3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x i32], ptr %115, i64 0, i64 %117
  store i32 0, ptr %118, align 4, !tbaa !3
  br label %119

119:                                              ; preds = %74
  %120 = load i32, ptr %5, align 4, !tbaa !3
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %5, align 4, !tbaa !3
  br label %71, !llvm.loop !103

122:                                              ; preds = %71
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %4, align 4, !tbaa !3
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr %4, align 4, !tbaa !3
  br label %63, !llvm.loop !104

126:                                              ; preds = %63
  br label %127

127:                                              ; preds = %126
  %128 = load i32, ptr %3, align 4, !tbaa !3
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %3, align 4, !tbaa !3
  br label %57, !llvm.loop !105

130:                                              ; preds = %57
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %131

131:                                              ; preds = %161, %130
  %132 = load i32, ptr %3, align 4, !tbaa !3
  %133 = load ptr, ptr @img, align 8, !tbaa !9
  %134 = getelementptr inbounds nuw %struct.ImageParameters, ptr %133, i32 0, i32 17
  %135 = load i32, ptr %134, align 4, !tbaa !42
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %164

137:                                              ; preds = %131
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %138

138:                                              ; preds = %157, %137
  %139 = load i32, ptr %4, align 4, !tbaa !3
  %140 = load ptr, ptr @img, align 8, !tbaa !9
  %141 = getelementptr inbounds nuw %struct.ImageParameters, ptr %140, i32 0, i32 13
  %142 = load i32, ptr %141, align 4, !tbaa !43
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %160

144:                                              ; preds = %138
  %145 = load ptr, ptr @imgY_org, align 8, !tbaa !44
  %146 = load i32, ptr %3, align 4, !tbaa !3
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %145, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !46
  %150 = load i32, ptr %4, align 4, !tbaa !3
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i16, ptr %149, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !48
  %154 = uitofp i16 %153 to double
  %155 = load double, ptr %6, align 8, !tbaa !7
  %156 = fadd double %155, %154
  store double %156, ptr %6, align 8, !tbaa !7
  br label %157

157:                                              ; preds = %144
  %158 = load i32, ptr %4, align 4, !tbaa !3
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %4, align 4, !tbaa !3
  br label %138, !llvm.loop !106

160:                                              ; preds = %138
  br label %161

161:                                              ; preds = %160
  %162 = load i32, ptr %3, align 4, !tbaa !3
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %3, align 4, !tbaa !3
  br label %131, !llvm.loop !107

164:                                              ; preds = %131
  store i32 0, ptr %15, align 4, !tbaa !3
  br label %165

165:                                              ; preds = %392, %164
  %166 = load i32, ptr %15, align 4, !tbaa !3
  %167 = load i32, ptr %12, align 4, !tbaa !3
  %168 = add nsw i32 2, %167
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %395

170:                                              ; preds = %165
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %171

171:                                              ; preds = %388, %170
  %172 = load i32, ptr %5, align 4, !tbaa !3
  %173 = load i32, ptr %15, align 4, !tbaa !3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !3
  %177 = icmp slt i32 %172, %176
  br i1 %177, label %178, label %391

178:                                              ; preds = %171
  %179 = load i32, ptr %5, align 4, !tbaa !3
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %180
  store double 0.000000e+00, ptr %181, align 8, !tbaa !7
  %182 = load i32, ptr %15, align 4, !tbaa !3
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !51
  %186 = load i32, ptr %5, align 4, !tbaa !3
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %185, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !53
  %190 = getelementptr inbounds nuw %struct.storable_picture, ptr %189, i32 0, i32 30
  %191 = load ptr, ptr %190, align 8, !tbaa !55
  store ptr %191, ptr @ref_pic_sub, align 8, !tbaa !63
  %192 = load ptr, ptr @ref_pic_sub, align 8, !tbaa !63
  %193 = getelementptr inbounds ptr, ptr %192, i64 0
  %194 = load ptr, ptr %193, align 8, !tbaa !65
  %195 = getelementptr inbounds ptr, ptr %194, i64 0
  %196 = load ptr, ptr %195, align 8, !tbaa !44
  store ptr %196, ptr %17, align 8, !tbaa !44
  store i32 20, ptr %4, align 4, !tbaa !3
  br label %197

197:                                              ; preds = %232, %178
  %198 = load i32, ptr %4, align 4, !tbaa !3
  %199 = load ptr, ptr @img, align 8, !tbaa !9
  %200 = getelementptr inbounds nuw %struct.ImageParameters, ptr %199, i32 0, i32 17
  %201 = load i32, ptr %200, align 4, !tbaa !42
  %202 = add nsw i32 %201, 20
  %203 = icmp slt i32 %198, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %197
  store i32 20, ptr %3, align 4, !tbaa !3
  br label %205

205:                                              ; preds = %228, %204
  %206 = load i32, ptr %3, align 4, !tbaa !3
  %207 = load ptr, ptr @img, align 8, !tbaa !9
  %208 = getelementptr inbounds nuw %struct.ImageParameters, ptr %207, i32 0, i32 13
  %209 = load i32, ptr %208, align 4, !tbaa !43
  %210 = add nsw i32 %209, 20
  %211 = icmp slt i32 %206, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %205
  %213 = load ptr, ptr %17, align 8, !tbaa !44
  %214 = load i32, ptr %4, align 4, !tbaa !3
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds ptr, ptr %213, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !46
  %218 = load i32, ptr %3, align 4, !tbaa !3
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i16, ptr %217, i64 %219
  %221 = load i16, ptr %220, align 2, !tbaa !48
  %222 = uitofp i16 %221 to double
  %223 = load i32, ptr %5, align 4, !tbaa !3
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %224
  %226 = load double, ptr %225, align 8, !tbaa !7
  %227 = fadd double %226, %222
  store double %227, ptr %225, align 8, !tbaa !7
  br label %228

228:                                              ; preds = %212
  %229 = load i32, ptr %3, align 4, !tbaa !3
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr %3, align 4, !tbaa !3
  br label %205, !llvm.loop !108

231:                                              ; preds = %205
  br label %232

232:                                              ; preds = %231
  %233 = load i32, ptr %4, align 4, !tbaa !3
  %234 = add nsw i32 %233, 1
  store i32 %234, ptr %4, align 4, !tbaa !3
  br label %197, !llvm.loop !109

235:                                              ; preds = %197
  %236 = load i32, ptr %2, align 4, !tbaa !3
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %301

238:                                              ; preds = %235
  %239 = load i32, ptr %5, align 4, !tbaa !3
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %240
  %242 = load double, ptr %241, align 8, !tbaa !7
  %243 = fcmp une double %242, 0.000000e+00
  br i1 %243, label %244, label %263

244:                                              ; preds = %238
  %245 = load i32, ptr %10, align 4, !tbaa !3
  %246 = sitofp i32 %245 to double
  %247 = load double, ptr %6, align 8, !tbaa !7
  %248 = fmul double %246, %247
  %249 = load i32, ptr %5, align 4, !tbaa !3
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %250
  %252 = load double, ptr %251, align 8, !tbaa !7
  %253 = fdiv double %248, %252
  %254 = fadd double %253, 5.000000e-01
  %255 = fptosi double %254 to i32
  %256 = load i32, ptr %15, align 4, !tbaa !3
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %257
  %259 = load i32, ptr %5, align 4, !tbaa !3
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [32 x [3 x i32]], ptr %258, i64 0, i64 %260
  %262 = getelementptr inbounds [3 x i32], ptr %261, i64 0, i64 0
  store i32 %255, ptr %262, align 4, !tbaa !3
  br label %272

263:                                              ; preds = %238
  %264 = load i32, ptr %10, align 4, !tbaa !3
  %265 = load i32, ptr %15, align 4, !tbaa !3
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %266
  %268 = load i32, ptr %5, align 4, !tbaa !3
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [32 x [3 x i32]], ptr %267, i64 0, i64 %269
  %271 = getelementptr inbounds [3 x i32], ptr %270, i64 0, i64 0
  store i32 %264, ptr %271, align 4, !tbaa !3
  br label %272

272:                                              ; preds = %263, %244
  %273 = load i32, ptr %15, align 4, !tbaa !3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %274
  %276 = load i32, ptr %5, align 4, !tbaa !3
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [32 x [3 x i32]], ptr %275, i64 0, i64 %277
  %279 = getelementptr inbounds [3 x i32], ptr %278, i64 0, i64 0
  %280 = load i32, ptr %279, align 4, !tbaa !3
  %281 = icmp slt i32 %280, -64
  br i1 %281, label %292, label %282

282:                                              ; preds = %272
  %283 = load i32, ptr %15, align 4, !tbaa !3
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %284
  %286 = load i32, ptr %5, align 4, !tbaa !3
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [32 x [3 x i32]], ptr %285, i64 0, i64 %287
  %289 = getelementptr inbounds [3 x i32], ptr %288, i64 0, i64 0
  %290 = load i32, ptr %289, align 4, !tbaa !3
  %291 = icmp sgt i32 %290, 127
  br i1 %291, label %292, label %300

292:                                              ; preds = %282, %272
  %293 = load i32, ptr %15, align 4, !tbaa !3
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %294
  %296 = load i32, ptr %5, align 4, !tbaa !3
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [32 x [3 x i32]], ptr %295, i64 0, i64 %297
  %299 = getelementptr inbounds [3 x i32], ptr %298, i64 0, i64 0
  store i32 32, ptr %299, align 4, !tbaa !3
  br label %300

300:                                              ; preds = %292, %282
  br label %371

301:                                              ; preds = %235
  %302 = load double, ptr %6, align 8, !tbaa !7
  %303 = load i32, ptr %5, align 4, !tbaa !3
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [32 x double], ptr %9, i64 0, i64 %304
  %306 = load double, ptr %305, align 8, !tbaa !7
  %307 = fsub double %302, %306
  %308 = load ptr, ptr @img, align 8, !tbaa !9
  %309 = getelementptr inbounds nuw %struct.ImageParameters, ptr %308, i32 0, i32 22
  %310 = load i32, ptr %309, align 8, !tbaa !68
  %311 = sitofp i32 %310 to double
  %312 = fdiv double %307, %311
  %313 = fadd double %312, 5.000000e-01
  %314 = fptosi double %313 to i32
  %315 = load i32, ptr %15, align 4, !tbaa !3
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %316
  %318 = load i32, ptr %5, align 4, !tbaa !3
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [32 x [3 x i32]], ptr %317, i64 0, i64 %319
  %321 = getelementptr inbounds [3 x i32], ptr %320, i64 0, i64 0
  store i32 %314, ptr %321, align 4, !tbaa !3
  %322 = load i32, ptr %15, align 4, !tbaa !3
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %323
  %325 = load i32, ptr %5, align 4, !tbaa !3
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [32 x [3 x i32]], ptr %324, i64 0, i64 %326
  %328 = getelementptr inbounds [3 x i32], ptr %327, i64 0, i64 0
  %329 = load i32, ptr %328, align 4, !tbaa !3
  %330 = icmp slt i32 %329, -128
  br i1 %330, label %331, label %332

331:                                              ; preds = %301
  br label %354

332:                                              ; preds = %301
  %333 = load i32, ptr %15, align 4, !tbaa !3
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %334
  %336 = load i32, ptr %5, align 4, !tbaa !3
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [32 x [3 x i32]], ptr %335, i64 0, i64 %337
  %339 = getelementptr inbounds [3 x i32], ptr %338, i64 0, i64 0
  %340 = load i32, ptr %339, align 4, !tbaa !3
  %341 = icmp sgt i32 %340, 127
  br i1 %341, label %342, label %343

342:                                              ; preds = %332
  br label %352

343:                                              ; preds = %332
  %344 = load i32, ptr %15, align 4, !tbaa !3
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %345
  %347 = load i32, ptr %5, align 4, !tbaa !3
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [32 x [3 x i32]], ptr %346, i64 0, i64 %348
  %350 = getelementptr inbounds [3 x i32], ptr %349, i64 0, i64 0
  %351 = load i32, ptr %350, align 4, !tbaa !3
  br label %352

352:                                              ; preds = %343, %342
  %353 = phi i32 [ 127, %342 ], [ %351, %343 ]
  br label %354

354:                                              ; preds = %352, %331
  %355 = phi i32 [ -128, %331 ], [ %353, %352 ]
  %356 = load i32, ptr %15, align 4, !tbaa !3
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %357
  %359 = load i32, ptr %5, align 4, !tbaa !3
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [32 x [3 x i32]], ptr %358, i64 0, i64 %360
  %362 = getelementptr inbounds [3 x i32], ptr %361, i64 0, i64 0
  store i32 %355, ptr %362, align 4, !tbaa !3
  %363 = load i32, ptr %10, align 4, !tbaa !3
  %364 = load i32, ptr %15, align 4, !tbaa !3
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %365
  %367 = load i32, ptr %5, align 4, !tbaa !3
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [32 x [3 x i32]], ptr %366, i64 0, i64 %368
  %370 = getelementptr inbounds [3 x i32], ptr %369, i64 0, i64 0
  store i32 %363, ptr %370, align 4, !tbaa !3
  br label %371

371:                                              ; preds = %354, %300
  %372 = load i32, ptr %11, align 4, !tbaa !3
  %373 = load i32, ptr %15, align 4, !tbaa !3
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %374
  %376 = load i32, ptr %5, align 4, !tbaa !3
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [32 x [3 x i32]], ptr %375, i64 0, i64 %377
  %379 = getelementptr inbounds [3 x i32], ptr %378, i64 0, i64 1
  store i32 %372, ptr %379, align 4, !tbaa !3
  %380 = load i32, ptr %11, align 4, !tbaa !3
  %381 = load i32, ptr %15, align 4, !tbaa !3
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %382
  %384 = load i32, ptr %5, align 4, !tbaa !3
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [32 x [3 x i32]], ptr %383, i64 0, i64 %385
  %387 = getelementptr inbounds [3 x i32], ptr %386, i64 0, i64 2
  store i32 %380, ptr %387, align 4, !tbaa !3
  br label %388

388:                                              ; preds = %371
  %389 = load i32, ptr %5, align 4, !tbaa !3
  %390 = add nsw i32 %389, 1
  store i32 %390, ptr %5, align 4, !tbaa !3
  br label %171, !llvm.loop !110

391:                                              ; preds = %171
  br label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %15, align 4, !tbaa !3
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %15, align 4, !tbaa !3
  br label %165, !llvm.loop !111

395:                                              ; preds = %165
  store i32 0, ptr %15, align 4, !tbaa !3
  br label %396

396:                                              ; preds = %488, %395
  %397 = load i32, ptr %15, align 4, !tbaa !3
  %398 = load i32, ptr %12, align 4, !tbaa !3
  %399 = add nsw i32 2, %398
  %400 = icmp slt i32 %397, %399
  br i1 %400, label %401, label %491

401:                                              ; preds = %396
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %402

402:                                              ; preds = %480, %401
  %403 = load i32, ptr %7, align 4, !tbaa !3
  %404 = load i32, ptr %15, align 4, !tbaa !3
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !3
  %408 = icmp slt i32 %403, %407
  br i1 %408, label %409, label %483

409:                                              ; preds = %402
  store i32 0, ptr %8, align 4, !tbaa !3
  br label %410

410:                                              ; preds = %472, %409
  %411 = load i32, ptr %8, align 4, !tbaa !3
  %412 = icmp slt i32 %411, 3
  br i1 %412, label %413, label %475

413:                                              ; preds = %410
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #3
  %414 = load ptr, ptr @input, align 8, !tbaa !9
  %415 = getelementptr inbounds nuw %struct.InputParameters, ptr %414, i32 0, i32 65
  %416 = load i32, ptr %415, align 8, !tbaa !112
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %437

418:                                              ; preds = %413
  %419 = load ptr, ptr @active_sps, align 8, !tbaa !9
  %420 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %419, i32 0, i32 1
  %421 = load i32, ptr %420, align 4, !tbaa !114
  %422 = icmp ne i32 %421, 66
  br i1 %422, label %423, label %437

423:                                              ; preds = %418
  %424 = load i32, ptr %15, align 4, !tbaa !3
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %425
  %427 = load i32, ptr %7, align 4, !tbaa !3
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [32 x [3 x i32]], ptr %426, i64 0, i64 %428
  %430 = load i32, ptr %8, align 4, !tbaa !3
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [3 x i32], ptr %429, i64 0, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !3
  %434 = call signext i32 @iabs(i32 noundef signext %433)
  %435 = icmp sgt i32 %434, 2
  %436 = zext i1 %435 to i32
  br label %450

437:                                              ; preds = %418, %413
  %438 = load i32, ptr %15, align 4, !tbaa !3
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %14, i64 0, i64 %439
  %441 = load i32, ptr %7, align 4, !tbaa !3
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [32 x [3 x i32]], ptr %440, i64 0, i64 %442
  %444 = load i32, ptr %8, align 4, !tbaa !3
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [3 x i32], ptr %443, i64 0, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !3
  %448 = icmp ne i32 %447, 0
  %449 = zext i1 %448 to i32
  br label %450

450:                                              ; preds = %437, %423
  %451 = phi i32 [ %436, %423 ], [ %449, %437 ]
  store i32 %451, ptr %18, align 4, !tbaa !3
  %452 = load i32, ptr %15, align 4, !tbaa !3
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [2 x [32 x [3 x i32]]], ptr %13, i64 0, i64 %453
  %455 = load i32, ptr %7, align 4, !tbaa !3
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [32 x [3 x i32]], ptr %454, i64 0, i64 %456
  %458 = load i32, ptr %8, align 4, !tbaa !3
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [3 x i32], ptr %457, i64 0, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !3
  %462 = load i32, ptr %10, align 4, !tbaa !3
  %463 = icmp ne i32 %461, %462
  br i1 %463, label %467, label %464

464:                                              ; preds = %450
  %465 = load i32, ptr %18, align 4, !tbaa !3
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %464, %450
  store i32 1, ptr %16, align 4, !tbaa !3
  store i32 35, ptr %19, align 4
  br label %469

468:                                              ; preds = %464
  store i32 0, ptr %19, align 4
  br label %469

469:                                              ; preds = %468, %467
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #3
  %470 = load i32, ptr %19, align 4
  switch i32 %470, label %493 [
    i32 0, label %471
    i32 35, label %475
  ]

471:                                              ; preds = %469
  br label %472

472:                                              ; preds = %471
  %473 = load i32, ptr %8, align 4, !tbaa !3
  %474 = add nsw i32 %473, 1
  store i32 %474, ptr %8, align 4, !tbaa !3
  br label %410, !llvm.loop !118

475:                                              ; preds = %469, %410
  %476 = load i32, ptr %16, align 4, !tbaa !3
  %477 = icmp eq i32 %476, 1
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  br label %483

479:                                              ; preds = %475
  br label %480

480:                                              ; preds = %479
  %481 = load i32, ptr %7, align 4, !tbaa !3
  %482 = add nsw i32 %481, 1
  store i32 %482, ptr %7, align 4, !tbaa !3
  br label %402, !llvm.loop !119

483:                                              ; preds = %478, %402
  %484 = load i32, ptr %16, align 4, !tbaa !3
  %485 = icmp eq i32 %484, 1
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  br label %491

487:                                              ; preds = %483
  br label %488

488:                                              ; preds = %487
  %489 = load i32, ptr %15, align 4, !tbaa !3
  %490 = add nsw i32 %489, 1
  store i32 %490, ptr %15, align 4, !tbaa !3
  br label %396, !llvm.loop !120

491:                                              ; preds = %486, %396
  %492 = load i32, ptr %16, align 4, !tbaa !3
  store i32 1, ptr %19, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 768, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 768, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #3
  ret i32 %492

493:                                              ; preds = %469
  unreachable
}

; Function Attrs: nounwind
define dso_local signext i32 @test_wp_B_slice(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x [32 x double]], align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca [6 x [32 x [3 x i32]]], align 4
  %16 = alloca [6 x [32 x [3 x i32]]], align 4
  %17 = alloca [6 x [32 x [32 x [3 x i32]]]], align 4
  %18 = alloca [6 x [32 x [32 x [3 x i32]]]], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x i32], align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #3
  store double 0.000000e+00, ptr %8, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.start.p0(i64 1536, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #3
  %27 = load ptr, ptr @img, align 8, !tbaa !9
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 100
  %29 = load i32, ptr %28, align 4, !tbaa !11
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %1
  %32 = load ptr, ptr @img, align 8, !tbaa !9
  %33 = getelementptr inbounds nuw %struct.ImageParameters, ptr %32, i32 0, i32 61
  %34 = load ptr, ptr %33, align 8, !tbaa !29
  %35 = load ptr, ptr @img, align 8, !tbaa !9
  %36 = getelementptr inbounds nuw %struct.ImageParameters, ptr %35, i32 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !30
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.macroblock, ptr %34, i64 %38
  %40 = getelementptr inbounds nuw %struct.macroblock, ptr %39, i32 0, i32 19
  %41 = load i32, ptr %40, align 8, !tbaa !31
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %31
  %44 = load ptr, ptr @img, align 8, !tbaa !9
  %45 = getelementptr inbounds nuw %struct.ImageParameters, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !30
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 4, i32 2
  br label %52

51:                                               ; preds = %31, %1
  br label %52

52:                                               ; preds = %51, %43
  %53 = phi i32 [ %50, %43 ], [ 0, %51 ]
  store i32 %53, ptr %14, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 2304, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 2304, ptr %16) #3
  call void @llvm.lifetime.start.p0(i64 73728, ptr %17) #3
  call void @llvm.lifetime.start.p0(i64 73728, ptr %18) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #3
  store i32 0, ptr %22, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #3
  %54 = load i32, ptr %2, align 4, !tbaa !3
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 5, ptr @luma_log_weight_denom, align 4, !tbaa !3
  store i32 5, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %58

57:                                               ; preds = %52
  store i32 6, ptr @luma_log_weight_denom, align 4, !tbaa !3
  store i32 6, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  store i32 %61, ptr @wp_luma_round, align 4, !tbaa !3
  %62 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %63 = sub nsw i32 %62, 1
  %64 = shl i32 1, %63
  store i32 %64, ptr @wp_chroma_round, align 4, !tbaa !3
  %65 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  %66 = shl i32 1, %65
  %67 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 0
  store i32 %66, ptr %67, align 4, !tbaa !3
  %68 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %69 = shl i32 1, %68
  %70 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  store i32 %69, ptr %70, align 4, !tbaa !3
  %71 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  %72 = shl i32 1, %71
  %73 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  store i32 %72, ptr %73, align 4, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %74

74:                                               ; preds = %150, %58
  %75 = load i32, ptr %3, align 4, !tbaa !3
  %76 = load i32, ptr %14, align 4, !tbaa !3
  %77 = add nsw i32 2, %76
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %153

79:                                               ; preds = %74
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %80

80:                                               ; preds = %146, %79
  %81 = load i32, ptr %4, align 4, !tbaa !3
  %82 = load i32, ptr %3, align 4, !tbaa !3
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !3
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %87, label %149

87:                                               ; preds = %80
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %88

88:                                               ; preds = %142, %87
  %89 = load i32, ptr %5, align 4, !tbaa !3
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %145

91:                                               ; preds = %88
  %92 = load i32, ptr %5, align 4, !tbaa !3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !3
  %96 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %97 = load i32, ptr %3, align 4, !tbaa !3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !35
  %101 = load i32, ptr %4, align 4, !tbaa !3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !37
  %105 = load i32, ptr %5, align 4, !tbaa !3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, ptr %104, i64 %106
  store i32 %95, ptr %107, align 4, !tbaa !3
  %108 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %109 = load i32, ptr %3, align 4, !tbaa !3
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !35
  %113 = load i32, ptr %4, align 4, !tbaa !3
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !37
  %117 = load i32, ptr %5, align 4, !tbaa !3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %116, i64 %118
  store i32 0, ptr %119, align 4, !tbaa !3
  %120 = load i32, ptr %3, align 4, !tbaa !3
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %16, i64 0, i64 %121
  %123 = load i32, ptr %4, align 4, !tbaa !3
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [32 x [3 x i32]], ptr %122, i64 0, i64 %124
  %126 = load i32, ptr %5, align 4, !tbaa !3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [3 x i32], ptr %125, i64 0, i64 %127
  store i32 0, ptr %128, align 4, !tbaa !3
  %129 = load i32, ptr %5, align 4, !tbaa !3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !3
  %133 = load i32, ptr %3, align 4, !tbaa !3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %15, i64 0, i64 %134
  %136 = load i32, ptr %4, align 4, !tbaa !3
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [32 x [3 x i32]], ptr %135, i64 0, i64 %137
  %139 = load i32, ptr %5, align 4, !tbaa !3
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i32], ptr %138, i64 0, i64 %140
  store i32 %132, ptr %141, align 4, !tbaa !3
  br label %142

142:                                              ; preds = %91
  %143 = load i32, ptr %5, align 4, !tbaa !3
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr %5, align 4, !tbaa !3
  br label %88, !llvm.loop !121

145:                                              ; preds = %88
  br label %146

146:                                              ; preds = %145
  %147 = load i32, ptr %4, align 4, !tbaa !3
  %148 = add nsw i32 %147, 1
  store i32 %148, ptr %4, align 4, !tbaa !3
  br label %80, !llvm.loop !122

149:                                              ; preds = %80
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %3, align 4, !tbaa !3
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %3, align 4, !tbaa !3
  br label %74, !llvm.loop !123

153:                                              ; preds = %74
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %154

154:                                              ; preds = %360, %153
  %155 = load i32, ptr %3, align 4, !tbaa !3
  %156 = load i32, ptr @listXsize, align 4, !tbaa !3
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %363

158:                                              ; preds = %154
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %159

159:                                              ; preds = %356, %158
  %160 = load i32, ptr %4, align 4, !tbaa !3
  %161 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %359

163:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 4, ptr %24) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #3
  %164 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @listX, i64 0, i64 1), align 8, !tbaa !51
  %165 = load i32, ptr %4, align 4, !tbaa !3
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %164, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !53
  %169 = getelementptr inbounds nuw %struct.storable_picture, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !79
  %171 = load ptr, ptr @listX, align 8, !tbaa !51
  %172 = load i32, ptr %3, align 4, !tbaa !3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds ptr, ptr %171, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !53
  %176 = getelementptr inbounds nuw %struct.storable_picture, ptr %175, i32 0, i32 1
  %177 = load i32, ptr %176, align 4, !tbaa !79
  %178 = sub nsw i32 %170, %177
  %179 = call signext i32 @iClip3(i32 noundef signext -128, i32 noundef signext 127, i32 noundef signext %178)
  store i32 %179, ptr %24, align 4, !tbaa !3
  %180 = load ptr, ptr @enc_picture, align 8, !tbaa !53
  %181 = getelementptr inbounds nuw %struct.storable_picture, ptr %180, i32 0, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !79
  %183 = load ptr, ptr @listX, align 8, !tbaa !51
  %184 = load i32, ptr %3, align 4, !tbaa !3
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %183, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !53
  %188 = getelementptr inbounds nuw %struct.storable_picture, ptr %187, i32 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !79
  %190 = sub nsw i32 %182, %189
  %191 = call signext i32 @iClip3(i32 noundef signext -128, i32 noundef signext 127, i32 noundef signext %190)
  store i32 %191, ptr %25, align 4, !tbaa !3
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %192

192:                                              ; preds = %352, %163
  %193 = load i32, ptr %10, align 4, !tbaa !3
  %194 = icmp slt i32 %193, 3
  br i1 %194, label %195, label %355

195:                                              ; preds = %192
  %196 = load i32, ptr %24, align 4, !tbaa !3
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %247

198:                                              ; preds = %195
  %199 = load i32, ptr %10, align 4, !tbaa !3
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !3
  %203 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %204 = load i32, ptr %3, align 4, !tbaa !3
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %203, i64 0, i64 %205
  %207 = load i32, ptr %4, align 4, !tbaa !3
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [32 x [3 x i32]], ptr %206, i64 0, i64 %208
  %210 = load i32, ptr %10, align 4, !tbaa !3
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [3 x i32], ptr %209, i64 0, i64 %211
  store i32 %202, ptr %212, align 4, !tbaa !3
  %213 = load i32, ptr %10, align 4, !tbaa !3
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !3
  %217 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 0
  %218 = load i32, ptr %3, align 4, !tbaa !3
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %217, i64 0, i64 %219
  %221 = load i32, ptr %4, align 4, !tbaa !3
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [32 x [3 x i32]], ptr %220, i64 0, i64 %222
  %224 = load i32, ptr %10, align 4, !tbaa !3
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [3 x i32], ptr %223, i64 0, i64 %225
  store i32 %216, ptr %226, align 4, !tbaa !3
  %227 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %18, i64 0, i64 1
  %228 = load i32, ptr %3, align 4, !tbaa !3
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %227, i64 0, i64 %229
  %231 = load i32, ptr %4, align 4, !tbaa !3
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [32 x [3 x i32]], ptr %230, i64 0, i64 %232
  %234 = load i32, ptr %10, align 4, !tbaa !3
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [3 x i32], ptr %233, i64 0, i64 %235
  store i32 0, ptr %236, align 4, !tbaa !3
  %237 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %18, i64 0, i64 0
  %238 = load i32, ptr %3, align 4, !tbaa !3
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %237, i64 0, i64 %239
  %241 = load i32, ptr %4, align 4, !tbaa !3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [32 x [3 x i32]], ptr %240, i64 0, i64 %242
  %244 = load i32, ptr %10, align 4, !tbaa !3
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [3 x i32], ptr %243, i64 0, i64 %245
  store i32 0, ptr %246, align 4, !tbaa !3
  br label %351

247:                                              ; preds = %195
  %248 = load i32, ptr %24, align 4, !tbaa !3
  %249 = sdiv i32 %248, 2
  %250 = call signext i32 @iabs(i32 noundef signext %249)
  %251 = add nsw i32 16384, %250
  %252 = load i32, ptr %24, align 4, !tbaa !3
  %253 = sdiv i32 %251, %252
  store i32 %253, ptr %6, align 4, !tbaa !3
  %254 = load i32, ptr %6, align 4, !tbaa !3
  %255 = load i32, ptr %25, align 4, !tbaa !3
  %256 = mul nsw i32 %254, %255
  %257 = add nsw i32 %256, 32
  %258 = ashr i32 %257, 6
  %259 = call signext i32 @iClip3(i32 noundef signext -1024, i32 noundef signext 1023, i32 noundef signext %258)
  store i32 %259, ptr %7, align 4, !tbaa !3
  %260 = load i32, ptr %7, align 4, !tbaa !3
  %261 = ashr i32 %260, 2
  %262 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %263 = load i32, ptr %3, align 4, !tbaa !3
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %262, i64 0, i64 %264
  %266 = load i32, ptr %4, align 4, !tbaa !3
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [32 x [3 x i32]], ptr %265, i64 0, i64 %267
  %269 = load i32, ptr %10, align 4, !tbaa !3
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [3 x i32], ptr %268, i64 0, i64 %270
  store i32 %261, ptr %271, align 4, !tbaa !3
  %272 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %273 = load i32, ptr %3, align 4, !tbaa !3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %272, i64 0, i64 %274
  %276 = load i32, ptr %4, align 4, !tbaa !3
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [32 x [3 x i32]], ptr %275, i64 0, i64 %277
  %279 = load i32, ptr %10, align 4, !tbaa !3
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [3 x i32], ptr %278, i64 0, i64 %280
  %282 = load i32, ptr %281, align 4, !tbaa !3
  %283 = icmp slt i32 %282, -64
  br i1 %283, label %297, label %284

284:                                              ; preds = %247
  %285 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %286 = load i32, ptr %3, align 4, !tbaa !3
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %285, i64 0, i64 %287
  %289 = load i32, ptr %4, align 4, !tbaa !3
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [32 x [3 x i32]], ptr %288, i64 0, i64 %290
  %292 = load i32, ptr %10, align 4, !tbaa !3
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [3 x i32], ptr %291, i64 0, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !3
  %296 = icmp sgt i32 %295, 128
  br i1 %296, label %297, label %308

297:                                              ; preds = %284, %247
  %298 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %299 = load i32, ptr %3, align 4, !tbaa !3
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %298, i64 0, i64 %300
  %302 = load i32, ptr %4, align 4, !tbaa !3
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [32 x [3 x i32]], ptr %301, i64 0, i64 %303
  %305 = load i32, ptr %10, align 4, !tbaa !3
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [3 x i32], ptr %304, i64 0, i64 %306
  store i32 32, ptr %307, align 4, !tbaa !3
  br label %308

308:                                              ; preds = %297, %284
  %309 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %310 = load i32, ptr %3, align 4, !tbaa !3
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %309, i64 0, i64 %311
  %313 = load i32, ptr %4, align 4, !tbaa !3
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [32 x [3 x i32]], ptr %312, i64 0, i64 %314
  %316 = load i32, ptr %10, align 4, !tbaa !3
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [3 x i32], ptr %315, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !3
  %320 = sub nsw i32 64, %319
  %321 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 0
  %322 = load i32, ptr %3, align 4, !tbaa !3
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %321, i64 0, i64 %323
  %325 = load i32, ptr %4, align 4, !tbaa !3
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [32 x [3 x i32]], ptr %324, i64 0, i64 %326
  %328 = load i32, ptr %10, align 4, !tbaa !3
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [3 x i32], ptr %327, i64 0, i64 %329
  store i32 %320, ptr %330, align 4, !tbaa !3
  %331 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %18, i64 0, i64 1
  %332 = load i32, ptr %3, align 4, !tbaa !3
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %331, i64 0, i64 %333
  %335 = load i32, ptr %4, align 4, !tbaa !3
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [32 x [3 x i32]], ptr %334, i64 0, i64 %336
  %338 = load i32, ptr %10, align 4, !tbaa !3
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [3 x i32], ptr %337, i64 0, i64 %339
  store i32 0, ptr %340, align 4, !tbaa !3
  %341 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %18, i64 0, i64 0
  %342 = load i32, ptr %3, align 4, !tbaa !3
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %341, i64 0, i64 %343
  %345 = load i32, ptr %4, align 4, !tbaa !3
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [32 x [3 x i32]], ptr %344, i64 0, i64 %346
  %348 = load i32, ptr %10, align 4, !tbaa !3
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [3 x i32], ptr %347, i64 0, i64 %349
  store i32 0, ptr %350, align 4, !tbaa !3
  br label %351

351:                                              ; preds = %308, %198
  br label %352

352:                                              ; preds = %351
  %353 = load i32, ptr %10, align 4, !tbaa !3
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %10, align 4, !tbaa !3
  br label %192, !llvm.loop !124

355:                                              ; preds = %192
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %24) #3
  br label %356

356:                                              ; preds = %355
  %357 = load i32, ptr %4, align 4, !tbaa !3
  %358 = add nsw i32 %357, 1
  store i32 %358, ptr %4, align 4, !tbaa !3
  br label %159, !llvm.loop !125

359:                                              ; preds = %159
  br label %360

360:                                              ; preds = %359
  %361 = load i32, ptr %3, align 4, !tbaa !3
  %362 = add nsw i32 %361, 1
  store i32 %362, ptr %3, align 4, !tbaa !3
  br label %154, !llvm.loop !126

363:                                              ; preds = %154
  %364 = load i32, ptr %2, align 4, !tbaa !3
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %539

366:                                              ; preds = %363
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %367

367:                                              ; preds = %447, %366
  %368 = load i32, ptr %3, align 4, !tbaa !3
  %369 = load i32, ptr @listXsize, align 4, !tbaa !3
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %450

371:                                              ; preds = %367
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %372

372:                                              ; preds = %443, %371
  %373 = load i32, ptr %4, align 4, !tbaa !3
  %374 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %446

376:                                              ; preds = %372
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %377

377:                                              ; preds = %439, %376
  %378 = load i32, ptr %10, align 4, !tbaa !3
  %379 = icmp slt i32 %378, 3
  br i1 %379, label %380, label %442

380:                                              ; preds = %377
  %381 = load i32, ptr %10, align 4, !tbaa !3
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %380
  %384 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  br label %387

385:                                              ; preds = %380
  %386 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %387

387:                                              ; preds = %385, %383
  %388 = phi i32 [ %384, %383 ], [ %386, %385 ]
  store i32 %388, ptr %12, align 4, !tbaa !3
  %389 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 1
  %390 = load i32, ptr %3, align 4, !tbaa !3
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %389, i64 0, i64 %391
  %393 = load i32, ptr %4, align 4, !tbaa !3
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [32 x [3 x i32]], ptr %392, i64 0, i64 %394
  %396 = load i32, ptr %10, align 4, !tbaa !3
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [3 x i32], ptr %395, i64 0, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !3
  %400 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %401 = getelementptr inbounds ptr, ptr %400, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !34
  %403 = load i32, ptr %3, align 4, !tbaa !3
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds ptr, ptr %402, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !35
  %407 = load i32, ptr %4, align 4, !tbaa !3
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds ptr, ptr %406, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !37
  %411 = load i32, ptr %10, align 4, !tbaa !3
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, ptr %410, i64 %412
  store i32 %399, ptr %413, align 4, !tbaa !3
  %414 = getelementptr inbounds [6 x [32 x [32 x [3 x i32]]]], ptr %17, i64 0, i64 0
  %415 = load i32, ptr %3, align 4, !tbaa !3
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [32 x [32 x [3 x i32]]], ptr %414, i64 0, i64 %416
  %418 = load i32, ptr %4, align 4, !tbaa !3
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [32 x [3 x i32]], ptr %417, i64 0, i64 %419
  %421 = load i32, ptr %10, align 4, !tbaa !3
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [3 x i32], ptr %420, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !3
  %425 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %426 = getelementptr inbounds ptr, ptr %425, i64 0
  %427 = load ptr, ptr %426, align 8, !tbaa !34
  %428 = load i32, ptr %3, align 4, !tbaa !3
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds ptr, ptr %427, i64 %429
  %431 = load ptr, ptr %430, align 8, !tbaa !35
  %432 = load i32, ptr %4, align 4, !tbaa !3
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !37
  %436 = load i32, ptr %10, align 4, !tbaa !3
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, ptr %435, i64 %437
  store i32 %424, ptr %438, align 4, !tbaa !3
  br label %439

439:                                              ; preds = %387
  %440 = load i32, ptr %10, align 4, !tbaa !3
  %441 = add nsw i32 %440, 1
  store i32 %441, ptr %10, align 4, !tbaa !3
  br label %377, !llvm.loop !127

442:                                              ; preds = %377
  br label %443

443:                                              ; preds = %442
  %444 = load i32, ptr %4, align 4, !tbaa !3
  %445 = add nsw i32 %444, 1
  store i32 %445, ptr %4, align 4, !tbaa !3
  br label %372, !llvm.loop !128

446:                                              ; preds = %372
  br label %447

447:                                              ; preds = %446
  %448 = load i32, ptr %3, align 4, !tbaa !3
  %449 = add nsw i32 %448, 1
  store i32 %449, ptr %3, align 4, !tbaa !3
  br label %367, !llvm.loop !129

450:                                              ; preds = %367
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %451

451:                                              ; preds = %535, %450
  %452 = load i32, ptr %19, align 4, !tbaa !3
  %453 = load i32, ptr %14, align 4, !tbaa !3
  %454 = add nsw i32 2, %453
  %455 = icmp slt i32 %452, %454
  br i1 %455, label %456, label %538

456:                                              ; preds = %451
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %457

457:                                              ; preds = %531, %456
  %458 = load i32, ptr %9, align 4, !tbaa !3
  %459 = load i32, ptr %19, align 4, !tbaa !3
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !3
  %463 = icmp slt i32 %458, %462
  br i1 %463, label %464, label %534

464:                                              ; preds = %457
  %465 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 0
  %466 = load i32, ptr %465, align 4, !tbaa !3
  %467 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %468 = load i32, ptr %19, align 4, !tbaa !3
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds ptr, ptr %467, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !35
  %472 = load i32, ptr %9, align 4, !tbaa !3
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !37
  %476 = getelementptr inbounds i32, ptr %475, i64 0
  store i32 %466, ptr %476, align 4, !tbaa !3
  %477 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %478 = load i32, ptr %477, align 4, !tbaa !3
  %479 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %480 = load i32, ptr %19, align 4, !tbaa !3
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds ptr, ptr %479, i64 %481
  %483 = load ptr, ptr %482, align 8, !tbaa !35
  %484 = load i32, ptr %9, align 4, !tbaa !3
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds ptr, ptr %483, i64 %485
  %487 = load ptr, ptr %486, align 8, !tbaa !37
  %488 = getelementptr inbounds i32, ptr %487, i64 1
  store i32 %478, ptr %488, align 4, !tbaa !3
  %489 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  %490 = load i32, ptr %489, align 4, !tbaa !3
  %491 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %492 = load i32, ptr %19, align 4, !tbaa !3
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds ptr, ptr %491, i64 %493
  %495 = load ptr, ptr %494, align 8, !tbaa !35
  %496 = load i32, ptr %9, align 4, !tbaa !3
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds ptr, ptr %495, i64 %497
  %499 = load ptr, ptr %498, align 8, !tbaa !37
  %500 = getelementptr inbounds i32, ptr %499, i64 2
  store i32 %490, ptr %500, align 4, !tbaa !3
  %501 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %502 = load i32, ptr %19, align 4, !tbaa !3
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds ptr, ptr %501, i64 %503
  %505 = load ptr, ptr %504, align 8, !tbaa !35
  %506 = load i32, ptr %9, align 4, !tbaa !3
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %505, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !37
  %510 = getelementptr inbounds i32, ptr %509, i64 0
  store i32 0, ptr %510, align 4, !tbaa !3
  %511 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %512 = load i32, ptr %19, align 4, !tbaa !3
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds ptr, ptr %511, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !35
  %516 = load i32, ptr %9, align 4, !tbaa !3
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds ptr, ptr %515, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !37
  %520 = getelementptr inbounds i32, ptr %519, i64 1
  store i32 0, ptr %520, align 4, !tbaa !3
  %521 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %522 = load i32, ptr %19, align 4, !tbaa !3
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds ptr, ptr %521, i64 %523
  %525 = load ptr, ptr %524, align 8, !tbaa !35
  %526 = load i32, ptr %9, align 4, !tbaa !3
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds ptr, ptr %525, i64 %527
  %529 = load ptr, ptr %528, align 8, !tbaa !37
  %530 = getelementptr inbounds i32, ptr %529, i64 2
  store i32 0, ptr %530, align 4, !tbaa !3
  br label %531

531:                                              ; preds = %464
  %532 = load i32, ptr %9, align 4, !tbaa !3
  %533 = add nsw i32 %532, 1
  store i32 %533, ptr %9, align 4, !tbaa !3
  br label %457, !llvm.loop !130

534:                                              ; preds = %457
  br label %535

535:                                              ; preds = %534
  %536 = load i32, ptr %19, align 4, !tbaa !3
  %537 = add nsw i32 %536, 1
  store i32 %537, ptr %19, align 4, !tbaa !3
  br label %451, !llvm.loop !131

538:                                              ; preds = %451
  br label %994

539:                                              ; preds = %363
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %540

540:                                              ; preds = %570, %539
  %541 = load i32, ptr %3, align 4, !tbaa !3
  %542 = load ptr, ptr @img, align 8, !tbaa !9
  %543 = getelementptr inbounds nuw %struct.ImageParameters, ptr %542, i32 0, i32 17
  %544 = load i32, ptr %543, align 4, !tbaa !42
  %545 = icmp slt i32 %541, %544
  br i1 %545, label %546, label %573

546:                                              ; preds = %540
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %547

547:                                              ; preds = %566, %546
  %548 = load i32, ptr %4, align 4, !tbaa !3
  %549 = load ptr, ptr @img, align 8, !tbaa !9
  %550 = getelementptr inbounds nuw %struct.ImageParameters, ptr %549, i32 0, i32 13
  %551 = load i32, ptr %550, align 4, !tbaa !43
  %552 = icmp slt i32 %548, %551
  br i1 %552, label %553, label %569

553:                                              ; preds = %547
  %554 = load ptr, ptr @imgY_org, align 8, !tbaa !44
  %555 = load i32, ptr %3, align 4, !tbaa !3
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds ptr, ptr %554, i64 %556
  %558 = load ptr, ptr %557, align 8, !tbaa !46
  %559 = load i32, ptr %4, align 4, !tbaa !3
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i16, ptr %558, i64 %560
  %562 = load i16, ptr %561, align 2, !tbaa !48
  %563 = uitofp i16 %562 to double
  %564 = load double, ptr %8, align 8, !tbaa !7
  %565 = fadd double %564, %563
  store double %565, ptr %8, align 8, !tbaa !7
  br label %566

566:                                              ; preds = %553
  %567 = load i32, ptr %4, align 4, !tbaa !3
  %568 = add nsw i32 %567, 1
  store i32 %568, ptr %4, align 4, !tbaa !3
  br label %547, !llvm.loop !132

569:                                              ; preds = %547
  br label %570

570:                                              ; preds = %569
  %571 = load i32, ptr %3, align 4, !tbaa !3
  %572 = add nsw i32 %571, 1
  store i32 %572, ptr %3, align 4, !tbaa !3
  br label %540, !llvm.loop !133

573:                                              ; preds = %540
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %574

574:                                              ; preds = %739, %573
  %575 = load i32, ptr %19, align 4, !tbaa !3
  %576 = load i32, ptr %14, align 4, !tbaa !3
  %577 = add nsw i32 2, %576
  %578 = icmp slt i32 %575, %577
  br i1 %578, label %579, label %742

579:                                              ; preds = %574
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %580

580:                                              ; preds = %735, %579
  %581 = load i32, ptr %5, align 4, !tbaa !3
  %582 = load i32, ptr %19, align 4, !tbaa !3
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !3
  %586 = icmp slt i32 %581, %585
  br i1 %586, label %587, label %738

587:                                              ; preds = %580
  %588 = load i32, ptr %19, align 4, !tbaa !3
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [6 x [32 x double]], ptr %11, i64 0, i64 %589
  %591 = load i32, ptr %5, align 4, !tbaa !3
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [32 x double], ptr %590, i64 0, i64 %592
  store double 0.000000e+00, ptr %593, align 8, !tbaa !7
  %594 = load i32, ptr %19, align 4, !tbaa !3
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %595
  %597 = load ptr, ptr %596, align 8, !tbaa !51
  %598 = load i32, ptr %5, align 4, !tbaa !3
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds ptr, ptr %597, i64 %599
  %601 = load ptr, ptr %600, align 8, !tbaa !53
  %602 = getelementptr inbounds nuw %struct.storable_picture, ptr %601, i32 0, i32 30
  %603 = load ptr, ptr %602, align 8, !tbaa !55
  store ptr %603, ptr @ref_pic_sub, align 8, !tbaa !63
  %604 = load ptr, ptr @ref_pic_sub, align 8, !tbaa !63
  %605 = getelementptr inbounds ptr, ptr %604, i64 0
  %606 = load ptr, ptr %605, align 8, !tbaa !65
  %607 = getelementptr inbounds ptr, ptr %606, i64 0
  %608 = load ptr, ptr %607, align 8, !tbaa !44
  store ptr %608, ptr %23, align 8, !tbaa !44
  store i32 20, ptr %4, align 4, !tbaa !3
  br label %609

609:                                              ; preds = %647, %587
  %610 = load i32, ptr %4, align 4, !tbaa !3
  %611 = load ptr, ptr @img, align 8, !tbaa !9
  %612 = getelementptr inbounds nuw %struct.ImageParameters, ptr %611, i32 0, i32 17
  %613 = load i32, ptr %612, align 4, !tbaa !42
  %614 = add nsw i32 %613, 20
  %615 = icmp slt i32 %610, %614
  br i1 %615, label %616, label %650

616:                                              ; preds = %609
  store i32 20, ptr %3, align 4, !tbaa !3
  br label %617

617:                                              ; preds = %643, %616
  %618 = load i32, ptr %3, align 4, !tbaa !3
  %619 = load ptr, ptr @img, align 8, !tbaa !9
  %620 = getelementptr inbounds nuw %struct.ImageParameters, ptr %619, i32 0, i32 13
  %621 = load i32, ptr %620, align 4, !tbaa !43
  %622 = add nsw i32 %621, 20
  %623 = icmp slt i32 %618, %622
  br i1 %623, label %624, label %646

624:                                              ; preds = %617
  %625 = load ptr, ptr %23, align 8, !tbaa !44
  %626 = load i32, ptr %4, align 4, !tbaa !3
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds ptr, ptr %625, i64 %627
  %629 = load ptr, ptr %628, align 8, !tbaa !46
  %630 = load i32, ptr %3, align 4, !tbaa !3
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i16, ptr %629, i64 %631
  %633 = load i16, ptr %632, align 2, !tbaa !48
  %634 = uitofp i16 %633 to double
  %635 = load i32, ptr %19, align 4, !tbaa !3
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [6 x [32 x double]], ptr %11, i64 0, i64 %636
  %638 = load i32, ptr %5, align 4, !tbaa !3
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [32 x double], ptr %637, i64 0, i64 %639
  %641 = load double, ptr %640, align 8, !tbaa !7
  %642 = fadd double %641, %634
  store double %642, ptr %640, align 8, !tbaa !7
  br label %643

643:                                              ; preds = %624
  %644 = load i32, ptr %3, align 4, !tbaa !3
  %645 = add nsw i32 %644, 1
  store i32 %645, ptr %3, align 4, !tbaa !3
  br label %617, !llvm.loop !134

646:                                              ; preds = %617
  br label %647

647:                                              ; preds = %646
  %648 = load i32, ptr %4, align 4, !tbaa !3
  %649 = add nsw i32 %648, 1
  store i32 %649, ptr %4, align 4, !tbaa !3
  br label %609, !llvm.loop !135

650:                                              ; preds = %609
  %651 = load i32, ptr %19, align 4, !tbaa !3
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [6 x [32 x double]], ptr %11, i64 0, i64 %652
  %654 = load i32, ptr %5, align 4, !tbaa !3
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [32 x double], ptr %653, i64 0, i64 %655
  %657 = load double, ptr %656, align 8, !tbaa !7
  %658 = fcmp une double %657, 0.000000e+00
  br i1 %658, label %659, label %675

659:                                              ; preds = %650
  %660 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 0
  %661 = load i32, ptr %660, align 4, !tbaa !3
  %662 = sitofp i32 %661 to double
  %663 = load double, ptr %8, align 8, !tbaa !7
  %664 = fmul double %662, %663
  %665 = load i32, ptr %19, align 4, !tbaa !3
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [6 x [32 x double]], ptr %11, i64 0, i64 %666
  %668 = load i32, ptr %5, align 4, !tbaa !3
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [32 x double], ptr %667, i64 0, i64 %669
  %671 = load double, ptr %670, align 8, !tbaa !7
  %672 = fdiv double %664, %671
  %673 = fadd double %672, 5.000000e-01
  %674 = fptosi double %673 to i32
  store i32 %674, ptr %20, align 4, !tbaa !3
  br label %678

675:                                              ; preds = %650
  %676 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 0
  %677 = load i32, ptr %676, align 4, !tbaa !3
  store i32 %677, ptr %20, align 4, !tbaa !3
  br label %678

678:                                              ; preds = %675, %659
  %679 = load i32, ptr %20, align 4, !tbaa !3
  %680 = icmp slt i32 %679, -64
  br i1 %680, label %684, label %681

681:                                              ; preds = %678
  %682 = load i32, ptr %20, align 4, !tbaa !3
  %683 = icmp sgt i32 %682, 127
  br i1 %683, label %684, label %687

684:                                              ; preds = %681, %678
  %685 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 0
  %686 = load i32, ptr %685, align 4, !tbaa !3
  store i32 %686, ptr %20, align 4, !tbaa !3
  br label %687

687:                                              ; preds = %684, %681
  store i32 0, ptr %21, align 4, !tbaa !3
  %688 = load i32, ptr %20, align 4, !tbaa !3
  %689 = load i32, ptr %19, align 4, !tbaa !3
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %15, i64 0, i64 %690
  %692 = load i32, ptr %5, align 4, !tbaa !3
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [32 x [3 x i32]], ptr %691, i64 0, i64 %693
  %695 = getelementptr inbounds [3 x i32], ptr %694, i64 0, i64 0
  store i32 %688, ptr %695, align 4, !tbaa !3
  %696 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %697 = load i32, ptr %696, align 4, !tbaa !3
  %698 = load i32, ptr %19, align 4, !tbaa !3
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %15, i64 0, i64 %699
  %701 = load i32, ptr %5, align 4, !tbaa !3
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [32 x [3 x i32]], ptr %700, i64 0, i64 %702
  %704 = getelementptr inbounds [3 x i32], ptr %703, i64 0, i64 1
  store i32 %697, ptr %704, align 4, !tbaa !3
  %705 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  %706 = load i32, ptr %705, align 4, !tbaa !3
  %707 = load i32, ptr %19, align 4, !tbaa !3
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %15, i64 0, i64 %708
  %710 = load i32, ptr %5, align 4, !tbaa !3
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [32 x [3 x i32]], ptr %709, i64 0, i64 %711
  %713 = getelementptr inbounds [3 x i32], ptr %712, i64 0, i64 2
  store i32 %706, ptr %713, align 4, !tbaa !3
  %714 = load i32, ptr %19, align 4, !tbaa !3
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %16, i64 0, i64 %715
  %717 = load i32, ptr %5, align 4, !tbaa !3
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [32 x [3 x i32]], ptr %716, i64 0, i64 %718
  %720 = getelementptr inbounds [3 x i32], ptr %719, i64 0, i64 0
  store i32 0, ptr %720, align 4, !tbaa !3
  %721 = load i32, ptr %19, align 4, !tbaa !3
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %16, i64 0, i64 %722
  %724 = load i32, ptr %5, align 4, !tbaa !3
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [32 x [3 x i32]], ptr %723, i64 0, i64 %725
  %727 = getelementptr inbounds [3 x i32], ptr %726, i64 0, i64 1
  store i32 0, ptr %727, align 4, !tbaa !3
  %728 = load i32, ptr %19, align 4, !tbaa !3
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %16, i64 0, i64 %729
  %731 = load i32, ptr %5, align 4, !tbaa !3
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [32 x [3 x i32]], ptr %730, i64 0, i64 %732
  %734 = getelementptr inbounds [3 x i32], ptr %733, i64 0, i64 2
  store i32 0, ptr %734, align 4, !tbaa !3
  br label %735

735:                                              ; preds = %687
  %736 = load i32, ptr %5, align 4, !tbaa !3
  %737 = add nsw i32 %736, 1
  store i32 %737, ptr %5, align 4, !tbaa !3
  br label %580, !llvm.loop !136

738:                                              ; preds = %580
  br label %739

739:                                              ; preds = %738
  %740 = load i32, ptr %19, align 4, !tbaa !3
  %741 = add nsw i32 %740, 1
  store i32 %741, ptr %19, align 4, !tbaa !3
  br label %574, !llvm.loop !137

742:                                              ; preds = %574
  %743 = load i32, ptr %2, align 4, !tbaa !3
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %820

745:                                              ; preds = %742
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %746

746:                                              ; preds = %816, %745
  %747 = load i32, ptr %19, align 4, !tbaa !3
  %748 = load i32, ptr %14, align 4, !tbaa !3
  %749 = add nsw i32 2, %748
  %750 = icmp slt i32 %747, %749
  br i1 %750, label %751, label %819

751:                                              ; preds = %746
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %752

752:                                              ; preds = %812, %751
  %753 = load i32, ptr %9, align 4, !tbaa !3
  %754 = load i32, ptr %19, align 4, !tbaa !3
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %755
  %757 = load i32, ptr %756, align 4, !tbaa !3
  %758 = icmp slt i32 %753, %757
  br i1 %758, label %759, label %815

759:                                              ; preds = %752
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %760

760:                                              ; preds = %808, %759
  %761 = load i32, ptr %10, align 4, !tbaa !3
  %762 = icmp slt i32 %761, 3
  br i1 %762, label %763, label %811

763:                                              ; preds = %760
  %764 = load i32, ptr %19, align 4, !tbaa !3
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %15, i64 0, i64 %765
  %767 = load i32, ptr %9, align 4, !tbaa !3
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [32 x [3 x i32]], ptr %766, i64 0, i64 %768
  %770 = load i32, ptr %10, align 4, !tbaa !3
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds [3 x i32], ptr %769, i64 0, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !3
  %774 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %775 = load i32, ptr %19, align 4, !tbaa !3
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds ptr, ptr %774, i64 %776
  %778 = load ptr, ptr %777, align 8, !tbaa !35
  %779 = load i32, ptr %9, align 4, !tbaa !3
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds ptr, ptr %778, i64 %780
  %782 = load ptr, ptr %781, align 8, !tbaa !37
  %783 = load i32, ptr %10, align 4, !tbaa !3
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, ptr %782, i64 %784
  store i32 %773, ptr %785, align 4, !tbaa !3
  %786 = load i32, ptr %19, align 4, !tbaa !3
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds [6 x [32 x [3 x i32]]], ptr %16, i64 0, i64 %787
  %789 = load i32, ptr %9, align 4, !tbaa !3
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [32 x [3 x i32]], ptr %788, i64 0, i64 %790
  %792 = load i32, ptr %10, align 4, !tbaa !3
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds [3 x i32], ptr %791, i64 0, i64 %793
  %795 = load i32, ptr %794, align 4, !tbaa !3
  %796 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %797 = load i32, ptr %19, align 4, !tbaa !3
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds ptr, ptr %796, i64 %798
  %800 = load ptr, ptr %799, align 8, !tbaa !35
  %801 = load i32, ptr %9, align 4, !tbaa !3
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds ptr, ptr %800, i64 %802
  %804 = load ptr, ptr %803, align 8, !tbaa !37
  %805 = load i32, ptr %10, align 4, !tbaa !3
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds i32, ptr %804, i64 %806
  store i32 %795, ptr %807, align 4, !tbaa !3
  br label %808

808:                                              ; preds = %763
  %809 = load i32, ptr %10, align 4, !tbaa !3
  %810 = add nsw i32 %809, 1
  store i32 %810, ptr %10, align 4, !tbaa !3
  br label %760, !llvm.loop !138

811:                                              ; preds = %760
  br label %812

812:                                              ; preds = %811
  %813 = load i32, ptr %9, align 4, !tbaa !3
  %814 = add nsw i32 %813, 1
  store i32 %814, ptr %9, align 4, !tbaa !3
  br label %752, !llvm.loop !139

815:                                              ; preds = %752
  br label %816

816:                                              ; preds = %815
  %817 = load i32, ptr %19, align 4, !tbaa !3
  %818 = add nsw i32 %817, 1
  store i32 %818, ptr %19, align 4, !tbaa !3
  br label %746, !llvm.loop !140

819:                                              ; preds = %746
  br label %909

820:                                              ; preds = %742
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %821

821:                                              ; preds = %905, %820
  %822 = load i32, ptr %19, align 4, !tbaa !3
  %823 = load i32, ptr %14, align 4, !tbaa !3
  %824 = add nsw i32 2, %823
  %825 = icmp slt i32 %822, %824
  br i1 %825, label %826, label %908

826:                                              ; preds = %821
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %827

827:                                              ; preds = %901, %826
  %828 = load i32, ptr %9, align 4, !tbaa !3
  %829 = load i32, ptr %19, align 4, !tbaa !3
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %830
  %832 = load i32, ptr %831, align 4, !tbaa !3
  %833 = icmp slt i32 %828, %832
  br i1 %833, label %834, label %904

834:                                              ; preds = %827
  %835 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 0
  %836 = load i32, ptr %835, align 4, !tbaa !3
  %837 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %838 = load i32, ptr %19, align 4, !tbaa !3
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds ptr, ptr %837, i64 %839
  %841 = load ptr, ptr %840, align 8, !tbaa !35
  %842 = load i32, ptr %9, align 4, !tbaa !3
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds ptr, ptr %841, i64 %843
  %845 = load ptr, ptr %844, align 8, !tbaa !37
  %846 = getelementptr inbounds i32, ptr %845, i64 0
  store i32 %836, ptr %846, align 4, !tbaa !3
  %847 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 1
  %848 = load i32, ptr %847, align 4, !tbaa !3
  %849 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %850 = load i32, ptr %19, align 4, !tbaa !3
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds ptr, ptr %849, i64 %851
  %853 = load ptr, ptr %852, align 8, !tbaa !35
  %854 = load i32, ptr %9, align 4, !tbaa !3
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds ptr, ptr %853, i64 %855
  %857 = load ptr, ptr %856, align 8, !tbaa !37
  %858 = getelementptr inbounds i32, ptr %857, i64 1
  store i32 %848, ptr %858, align 4, !tbaa !3
  %859 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 2
  %860 = load i32, ptr %859, align 4, !tbaa !3
  %861 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %862 = load i32, ptr %19, align 4, !tbaa !3
  %863 = sext i32 %862 to i64
  %864 = getelementptr inbounds ptr, ptr %861, i64 %863
  %865 = load ptr, ptr %864, align 8, !tbaa !35
  %866 = load i32, ptr %9, align 4, !tbaa !3
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds ptr, ptr %865, i64 %867
  %869 = load ptr, ptr %868, align 8, !tbaa !37
  %870 = getelementptr inbounds i32, ptr %869, i64 2
  store i32 %860, ptr %870, align 4, !tbaa !3
  %871 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %872 = load i32, ptr %19, align 4, !tbaa !3
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds ptr, ptr %871, i64 %873
  %875 = load ptr, ptr %874, align 8, !tbaa !35
  %876 = load i32, ptr %9, align 4, !tbaa !3
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds ptr, ptr %875, i64 %877
  %879 = load ptr, ptr %878, align 8, !tbaa !37
  %880 = getelementptr inbounds i32, ptr %879, i64 0
  store i32 0, ptr %880, align 4, !tbaa !3
  %881 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %882 = load i32, ptr %19, align 4, !tbaa !3
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds ptr, ptr %881, i64 %883
  %885 = load ptr, ptr %884, align 8, !tbaa !35
  %886 = load i32, ptr %9, align 4, !tbaa !3
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds ptr, ptr %885, i64 %887
  %889 = load ptr, ptr %888, align 8, !tbaa !37
  %890 = getelementptr inbounds i32, ptr %889, i64 1
  store i32 0, ptr %890, align 4, !tbaa !3
  %891 = load ptr, ptr @wp_offset, align 8, !tbaa !34
  %892 = load i32, ptr %19, align 4, !tbaa !3
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds ptr, ptr %891, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !35
  %896 = load i32, ptr %9, align 4, !tbaa !3
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds ptr, ptr %895, i64 %897
  %899 = load ptr, ptr %898, align 8, !tbaa !37
  %900 = getelementptr inbounds i32, ptr %899, i64 2
  store i32 0, ptr %900, align 4, !tbaa !3
  br label %901

901:                                              ; preds = %834
  %902 = load i32, ptr %9, align 4, !tbaa !3
  %903 = add nsw i32 %902, 1
  store i32 %903, ptr %9, align 4, !tbaa !3
  br label %827, !llvm.loop !141

904:                                              ; preds = %827
  br label %905

905:                                              ; preds = %904
  %906 = load i32, ptr %19, align 4, !tbaa !3
  %907 = add nsw i32 %906, 1
  store i32 %907, ptr %19, align 4, !tbaa !3
  br label %821, !llvm.loop !142

908:                                              ; preds = %821
  br label %909

909:                                              ; preds = %908, %819
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %910

910:                                              ; preds = %990, %909
  %911 = load i32, ptr %3, align 4, !tbaa !3
  %912 = load i32, ptr @listXsize, align 4, !tbaa !3
  %913 = icmp slt i32 %911, %912
  br i1 %913, label %914, label %993

914:                                              ; preds = %910
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %915

915:                                              ; preds = %986, %914
  %916 = load i32, ptr %4, align 4, !tbaa !3
  %917 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %918 = icmp slt i32 %916, %917
  br i1 %918, label %919, label %989

919:                                              ; preds = %915
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %920

920:                                              ; preds = %982, %919
  %921 = load i32, ptr %10, align 4, !tbaa !3
  %922 = icmp slt i32 %921, 3
  br i1 %922, label %923, label %985

923:                                              ; preds = %920
  %924 = load i32, ptr %10, align 4, !tbaa !3
  %925 = icmp eq i32 %924, 0
  br i1 %925, label %926, label %928

926:                                              ; preds = %923
  %927 = load i32, ptr @luma_log_weight_denom, align 4, !tbaa !3
  br label %930

928:                                              ; preds = %923
  %929 = load i32, ptr @chroma_log_weight_denom, align 4, !tbaa !3
  br label %930

930:                                              ; preds = %928, %926
  %931 = phi i32 [ %927, %926 ], [ %929, %928 ]
  store i32 %931, ptr %12, align 4, !tbaa !3
  %932 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %933 = getelementptr inbounds ptr, ptr %932, i64 0
  %934 = load ptr, ptr %933, align 8, !tbaa !35
  %935 = load i32, ptr %3, align 4, !tbaa !3
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds ptr, ptr %934, i64 %936
  %938 = load ptr, ptr %937, align 8, !tbaa !37
  %939 = load i32, ptr %10, align 4, !tbaa !3
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, ptr %938, i64 %940
  %942 = load i32, ptr %941, align 4, !tbaa !3
  %943 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %944 = getelementptr inbounds ptr, ptr %943, i64 0
  %945 = load ptr, ptr %944, align 8, !tbaa !34
  %946 = load i32, ptr %3, align 4, !tbaa !3
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds ptr, ptr %945, i64 %947
  %949 = load ptr, ptr %948, align 8, !tbaa !35
  %950 = load i32, ptr %4, align 4, !tbaa !3
  %951 = sext i32 %950 to i64
  %952 = getelementptr inbounds ptr, ptr %949, i64 %951
  %953 = load ptr, ptr %952, align 8, !tbaa !37
  %954 = load i32, ptr %10, align 4, !tbaa !3
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds i32, ptr %953, i64 %955
  store i32 %942, ptr %956, align 4, !tbaa !3
  %957 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %958 = getelementptr inbounds ptr, ptr %957, i64 1
  %959 = load ptr, ptr %958, align 8, !tbaa !35
  %960 = load i32, ptr %4, align 4, !tbaa !3
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds ptr, ptr %959, i64 %961
  %963 = load ptr, ptr %962, align 8, !tbaa !37
  %964 = load i32, ptr %10, align 4, !tbaa !3
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds i32, ptr %963, i64 %965
  %967 = load i32, ptr %966, align 4, !tbaa !3
  %968 = load ptr, ptr @wbp_weight, align 8, !tbaa !83
  %969 = getelementptr inbounds ptr, ptr %968, i64 1
  %970 = load ptr, ptr %969, align 8, !tbaa !34
  %971 = load i32, ptr %3, align 4, !tbaa !3
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds ptr, ptr %970, i64 %972
  %974 = load ptr, ptr %973, align 8, !tbaa !35
  %975 = load i32, ptr %4, align 4, !tbaa !3
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds ptr, ptr %974, i64 %976
  %978 = load ptr, ptr %977, align 8, !tbaa !37
  %979 = load i32, ptr %10, align 4, !tbaa !3
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i32, ptr %978, i64 %980
  store i32 %967, ptr %981, align 4, !tbaa !3
  br label %982

982:                                              ; preds = %930
  %983 = load i32, ptr %10, align 4, !tbaa !3
  %984 = add nsw i32 %983, 1
  store i32 %984, ptr %10, align 4, !tbaa !3
  br label %920, !llvm.loop !143

985:                                              ; preds = %920
  br label %986

986:                                              ; preds = %985
  %987 = load i32, ptr %4, align 4, !tbaa !3
  %988 = add nsw i32 %987, 1
  store i32 %988, ptr %4, align 4, !tbaa !3
  br label %915, !llvm.loop !144

989:                                              ; preds = %915
  br label %990

990:                                              ; preds = %989
  %991 = load i32, ptr %3, align 4, !tbaa !3
  %992 = add nsw i32 %991, 1
  store i32 %992, ptr %3, align 4, !tbaa !3
  br label %910, !llvm.loop !145

993:                                              ; preds = %910
  br label %994

994:                                              ; preds = %993, %538
  %995 = load i32, ptr %2, align 4, !tbaa !3
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %997, label %1086

997:                                              ; preds = %994
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #3
  %998 = load ptr, ptr @input, align 8, !tbaa !9
  %999 = getelementptr inbounds nuw %struct.InputParameters, ptr %998, i32 0, i32 10
  %1000 = load i32, ptr %999, align 8, !tbaa !146
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1002, label %1004

1002:                                             ; preds = %997
  %1003 = load i32, ptr @listXsize, align 4, !tbaa !3
  br label %1010

1004:                                             ; preds = %997
  %1005 = load ptr, ptr @input, align 8, !tbaa !9
  %1006 = getelementptr inbounds nuw %struct.InputParameters, ptr %1005, i32 0, i32 10
  %1007 = load i32, ptr %1006, align 8, !tbaa !146
  %1008 = load i32, ptr @listXsize, align 4, !tbaa !3
  %1009 = call signext i32 @imin(i32 noundef signext %1007, i32 noundef signext %1008)
  br label %1010

1010:                                             ; preds = %1004, %1002
  %1011 = phi i32 [ %1003, %1002 ], [ %1009, %1004 ]
  %1012 = getelementptr inbounds [2 x i32], ptr %26, i64 0, i64 0
  store i32 %1011, ptr %1012, align 4, !tbaa !3
  %1013 = load ptr, ptr @input, align 8, !tbaa !9
  %1014 = getelementptr inbounds nuw %struct.InputParameters, ptr %1013, i32 0, i32 11
  %1015 = load i32, ptr %1014, align 4, !tbaa !147
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1019

1017:                                             ; preds = %1010
  %1018 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  br label %1025

1019:                                             ; preds = %1010
  %1020 = load ptr, ptr @input, align 8, !tbaa !9
  %1021 = getelementptr inbounds nuw %struct.InputParameters, ptr %1020, i32 0, i32 10
  %1022 = load i32, ptr %1021, align 8, !tbaa !146
  %1023 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !3
  %1024 = call signext i32 @imin(i32 noundef signext %1022, i32 noundef signext %1023)
  br label %1025

1025:                                             ; preds = %1019, %1017
  %1026 = phi i32 [ %1018, %1017 ], [ %1024, %1019 ]
  %1027 = getelementptr inbounds [2 x i32], ptr %26, i64 0, i64 1
  store i32 %1026, ptr %1027, align 4, !tbaa !3
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %1028

1028:                                             ; preds = %1082, %1025
  %1029 = load i32, ptr %19, align 4, !tbaa !3
  %1030 = load i32, ptr %14, align 4, !tbaa !3
  %1031 = add nsw i32 2, %1030
  %1032 = icmp slt i32 %1029, %1031
  br i1 %1032, label %1033, label %1085

1033:                                             ; preds = %1028
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %1034

1034:                                             ; preds = %1074, %1033
  %1035 = load i32, ptr %9, align 4, !tbaa !3
  %1036 = load i32, ptr %19, align 4, !tbaa !3
  %1037 = sext i32 %1036 to i64
  %1038 = getelementptr inbounds [2 x i32], ptr %26, i64 0, i64 %1037
  %1039 = load i32, ptr %1038, align 4, !tbaa !3
  %1040 = icmp slt i32 %1035, %1039
  br i1 %1040, label %1041, label %1077

1041:                                             ; preds = %1034
  store i32 0, ptr %10, align 4, !tbaa !3
  br label %1042

1042:                                             ; preds = %1066, %1041
  %1043 = load i32, ptr %10, align 4, !tbaa !3
  %1044 = icmp slt i32 %1043, 3
  br i1 %1044, label %1045, label %1069

1045:                                             ; preds = %1042
  %1046 = load ptr, ptr @wp_weight, align 8, !tbaa !34
  %1047 = load i32, ptr %19, align 4, !tbaa !3
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds ptr, ptr %1046, i64 %1048
  %1050 = load ptr, ptr %1049, align 8, !tbaa !35
  %1051 = load i32, ptr %9, align 4, !tbaa !3
  %1052 = sext i32 %1051 to i64
  %1053 = getelementptr inbounds ptr, ptr %1050, i64 %1052
  %1054 = load ptr, ptr %1053, align 8, !tbaa !37
  %1055 = load i32, ptr %10, align 4, !tbaa !3
  %1056 = sext i32 %1055 to i64
  %1057 = getelementptr inbounds i32, ptr %1054, i64 %1056
  %1058 = load i32, ptr %1057, align 4, !tbaa !3
  %1059 = load i32, ptr %10, align 4, !tbaa !3
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds [3 x i32], ptr %13, i64 0, i64 %1060
  %1062 = load i32, ptr %1061, align 4, !tbaa !3
  %1063 = icmp ne i32 %1058, %1062
  br i1 %1063, label %1064, label %1065

1064:                                             ; preds = %1045
  store i32 1, ptr %22, align 4, !tbaa !3
  br label %1069

1065:                                             ; preds = %1045
  br label %1066

1066:                                             ; preds = %1065
  %1067 = load i32, ptr %10, align 4, !tbaa !3
  %1068 = add nsw i32 %1067, 1
  store i32 %1068, ptr %10, align 4, !tbaa !3
  br label %1042, !llvm.loop !148

1069:                                             ; preds = %1064, %1042
  %1070 = load i32, ptr %22, align 4, !tbaa !3
  %1071 = icmp eq i32 %1070, 1
  br i1 %1071, label %1072, label %1073

1072:                                             ; preds = %1069
  br label %1077

1073:                                             ; preds = %1069
  br label %1074

1074:                                             ; preds = %1073
  %1075 = load i32, ptr %9, align 4, !tbaa !3
  %1076 = add nsw i32 %1075, 1
  store i32 %1076, ptr %9, align 4, !tbaa !3
  br label %1034, !llvm.loop !149

1077:                                             ; preds = %1072, %1034
  %1078 = load i32, ptr %22, align 4, !tbaa !3
  %1079 = icmp eq i32 %1078, 1
  br i1 %1079, label %1080, label %1081

1080:                                             ; preds = %1077
  br label %1085

1081:                                             ; preds = %1077
  br label %1082

1082:                                             ; preds = %1081
  %1083 = load i32, ptr %19, align 4, !tbaa !3
  %1084 = add nsw i32 %1083, 1
  store i32 %1084, ptr %19, align 4, !tbaa !3
  br label %1028, !llvm.loop !150

1085:                                             ; preds = %1080, %1028
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #3
  br label %1086

1086:                                             ; preds = %1085, %994
  %1087 = load i32, ptr %22, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #3
  call void @llvm.lifetime.end.p0(i64 73728, ptr %18) #3
  call void @llvm.lifetime.end.p0(i64 73728, ptr %17) #3
  call void @llvm.lifetime.end.p0(i64 2304, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 2304, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 1536, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #3
  ret i32 %1087
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imin(i32 noundef signext %0, i32 noundef signext %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !3
  %5 = load i32, ptr %3, align 4, !tbaa !3
  %6 = load i32, ptr %4, align 4, !tbaa !3
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !3
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !3
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !3
  %5 = load i32, ptr %3, align 4, !tbaa !3
  %6 = load i32, ptr %4, align 4, !tbaa !3
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !3
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !3
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !4, i64 15268}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !13, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !14, i64 128, !14, i64 136, !4, i64 144, !16, i64 152, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !18, i64 14160, !16, i64 14168, !16, i64 14176, !16, i64 14184, !18, i64 14192, !18, i64 14200, !10, i64 14208, !10, i64 14216, !20, i64 14224, !21, i64 14232, !21, i64 14240, !4, i64 14248, !4, i64 14252, !4, i64 14256, !4, i64 14260, !5, i64 14264, !4, i64 14328, !4, i64 14332, !4, i64 14336, !4, i64 14340, !4, i64 14344, !8, i64 14352, !4, i64 14360, !4, i64 14364, !4, i64 14368, !4, i64 14372, !22, i64 14376, !22, i64 14384, !22, i64 14392, !22, i64 14400, !5, i64 14408, !4, i64 14440, !4, i64 14444, !4, i64 14448, !4, i64 14452, !4, i64 14456, !4, i64 14460, !4, i64 14464, !4, i64 14468, !5, i64 14472, !4, i64 15240, !4, i64 15244, !4, i64 15248, !4, i64 15252, !4, i64 15256, !4, i64 15260, !4, i64 15264, !4, i64 15268, !4, i64 15272, !4, i64 15276, !4, i64 15280, !4, i64 15284, !4, i64 15288, !5, i64 15292, !4, i64 15296, !4, i64 15300, !5, i64 15304, !4, i64 15312, !4, i64 15316, !4, i64 15320, !4, i64 15324, !4, i64 15328, !4, i64 15332, !4, i64 15336, !4, i64 15340, !4, i64 15344, !4, i64 15348, !4, i64 15352, !4, i64 15356, !4, i64 15360, !4, i64 15364, !4, i64 15368, !4, i64 15372, !25, i64 15376, !4, i64 15384, !4, i64 15388, !4, i64 15392, !4, i64 15396, !4, i64 15400, !4, i64 15404, !4, i64 15408, !4, i64 15412, !4, i64 15416, !4, i64 15420, !4, i64 15424, !4, i64 15428, !4, i64 15432, !4, i64 15436, !4, i64 15440, !4, i64 15444, !4, i64 15448, !4, i64 15452, !4, i64 15456, !4, i64 15460, !4, i64 15464, !4, i64 15468, !4, i64 15472, !26, i64 15480, !27, i64 15488, !16, i64 15496, !26, i64 15504, !4, i64 15512, !4, i64 15516, !4, i64 15520, !4, i64 15524, !4, i64 15528, !4, i64 15532, !4, i64 15536, !4, i64 15540, !4, i64 15544, !4, i64 15548, !5, i64 15552, !5, i64 15576, !4, i64 15584, !4, i64 15588, !28, i64 15592, !4, i64 15596, !4, i64 15600, !4, i64 15604, !4, i64 15608, !4, i64 15612}
!13 = !{!"float", !5, i64 0}
!14 = !{!"p2 omnipotent char", !15, i64 0}
!15 = !{!"any p2 pointer", !10, i64 0}
!16 = !{!"p3 int", !17, i64 0}
!17 = !{!"any p3 pointer", !15, i64 0}
!18 = !{!"p4 int", !19, i64 0}
!19 = !{!"any p4 pointer", !17, i64 0}
!20 = !{!"p1 _ZTS10macroblock", !10, i64 0}
!21 = !{!"p1 int", !10, i64 0}
!22 = !{!"p6 short", !23, i64 0}
!23 = !{!"any p6 pointer", !24, i64 0}
!24 = !{!"any p5 pointer", !19, i64 0}
!25 = !{!"p1 _ZTS18DecRefPicMarking_s", !10, i64 0}
!26 = !{!"p2 double", !15, i64 0}
!27 = !{!"p3 double", !17, i64 0}
!28 = !{!"short", !5, i64 0}
!29 = !{!12, !20, i64 14224}
!30 = !{!12, !4, i64 12}
!31 = !{!32, !4, i64 424}
!32 = !{!"macroblock", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !4, i64 20, !5, i64 24, !20, i64 56, !20, i64 64, !4, i64 72, !5, i64 76, !5, i64 332, !5, i64 348, !4, i64 364, !33, i64 368, !5, i64 376, !5, i64 392, !33, i64 408, !4, i64 416, !4, i64 420, !4, i64 424, !4, i64 428, !4, i64 432, !4, i64 436, !4, i64 440, !4, i64 444, !4, i64 448, !4, i64 452, !4, i64 456, !4, i64 460, !4, i64 464, !4, i64 468, !4, i64 472, !4, i64 476, !28, i64 480, !8, i64 488, !4, i64 496, !4, i64 500, !4, i64 504, !4, i64 508, !4, i64 512, !4, i64 516, !4, i64 520, !4, i64 524, !4, i64 528}
!33 = !{!"long long", !5, i64 0}
!34 = !{!16, !16, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p2 int", !15, i64 0}
!37 = !{!21, !21, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = !{!12, !4, i64 68}
!43 = !{!12, !4, i64 52}
!44 = !{!45, !45, i64 0}
!45 = !{!"p2 short", !15, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 short", !10, i64 0}
!48 = !{!28, !28, i64 0}
!49 = distinct !{!49, !39}
!50 = distinct !{!50, !39}
!51 = !{!52, !52, i64 0}
!52 = !{!"p2 _ZTS16storable_picture", !15, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS16storable_picture", !10, i64 0}
!55 = !{!56, !57, i64 6448}
!56 = !{!"storable_picture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !4, i64 6360, !4, i64 6364, !4, i64 6368, !4, i64 6372, !4, i64 6376, !4, i64 6380, !4, i64 6384, !4, i64 6388, !4, i64 6392, !4, i64 6396, !4, i64 6400, !4, i64 6404, !4, i64 6408, !4, i64 6412, !4, i64 6416, !4, i64 6420, !4, i64 6424, !4, i64 6428, !4, i64 6432, !45, i64 6440, !57, i64 6448, !57, i64 6456, !58, i64 6464, !59, i64 6472, !60, i64 6480, !61, i64 6488, !62, i64 6496, !62, i64 6504, !57, i64 6512, !14, i64 6520, !14, i64 6528, !54, i64 6536, !54, i64 6544, !54, i64 6552, !4, i64 6560, !4, i64 6564, !4, i64 6568, !4, i64 6572, !4, i64 6576, !4, i64 6580, !4, i64 6584}
!57 = !{!"p4 short", !19, i64 0}
!58 = !{!"p5 short", !24, i64 0}
!59 = !{!"p3 short", !17, i64 0}
!60 = !{!"p1 omnipotent char", !10, i64 0}
!61 = !{!"p3 omnipotent char", !17, i64 0}
!62 = !{!"p3 long long", !17, i64 0}
!63 = !{!64, !57, i64 0}
!64 = !{!"", !57, i64 0, !5, i64 8}
!65 = !{!59, !59, i64 0}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !39}
!68 = !{!12, !4, i64 88}
!69 = distinct !{!69, !39}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = !{!75, !4, i64 196}
!75 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !4, i64 56, !4, i64 60, !4, i64 64, !5, i64 68, !5, i64 100, !5, i64 132, !4, i64 164, !4, i64 168, !4, i64 172, !60, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !4, i64 208, !4, i64 212, !4, i64 216, !4, i64 220, !4, i64 224, !4, i64 228, !4, i64 232}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = distinct !{!78, !39}
!79 = !{!56, !4, i64 4}
!80 = distinct !{!80, !39}
!81 = distinct !{!81, !39}
!82 = distinct !{!82, !39}
!83 = !{!18, !18, i64 0}
!84 = distinct !{!84, !39}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = distinct !{!87, !39}
!88 = distinct !{!88, !39}
!89 = distinct !{!89, !39}
!90 = distinct !{!90, !39}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !39}
!94 = distinct !{!94, !39}
!95 = distinct !{!95, !39}
!96 = distinct !{!96, !39}
!97 = distinct !{!97, !39}
!98 = distinct !{!98, !39}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = distinct !{!101, !39}
!102 = distinct !{!102, !39}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = distinct !{!105, !39}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39}
!112 = !{!113, !4, i64 2952}
!113 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !4, i64 1560, !4, i64 1564, !4, i64 1568, !4, i64 1572, !4, i64 1576, !4, i64 1580, !5, i64 1584, !4, i64 2084, !4, i64 2088, !4, i64 2092, !4, i64 2096, !4, i64 2100, !4, i64 2104, !4, i64 2108, !4, i64 2112, !4, i64 2116, !4, i64 2120, !4, i64 2124, !4, i64 2128, !4, i64 2132, !4, i64 2136, !4, i64 2140, !4, i64 2144, !4, i64 2148, !4, i64 2152, !4, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !4, i64 2928, !4, i64 2932, !4, i64 2936, !4, i64 2940, !4, i64 2944, !4, i64 2948, !4, i64 2952, !4, i64 2956, !4, i64 2960, !4, i64 2964, !4, i64 2968, !4, i64 2972, !5, i64 2976, !4, i64 4000, !4, i64 4004, !4, i64 4008, !4, i64 4012, !4, i64 4016, !4, i64 4020, !4, i64 4024, !4, i64 4028, !4, i64 4032, !4, i64 4036, !4, i64 4040, !4, i64 4044, !4, i64 4048, !4, i64 4052, !4, i64 4056, !4, i64 4060, !4, i64 4064, !4, i64 4068, !4, i64 4072, !4, i64 4076, !8, i64 4080, !4, i64 4088, !4, i64 4092, !4, i64 4096, !4, i64 4100, !4, i64 4104, !4, i64 4108, !4, i64 4112, !4, i64 4116, !4, i64 4120, !4, i64 4124, !4, i64 4128, !4, i64 4132, !4, i64 4136, !4, i64 4140, !4, i64 4144, !4, i64 4148, !4, i64 4152, !4, i64 4156, !4, i64 4160, !4, i64 4164, !4, i64 4168, !4, i64 4172, !4, i64 4176, !4, i64 4180, !4, i64 4184, !4, i64 4188, !5, i64 4192, !5, i64 4448, !4, i64 4704, !4, i64 4708, !4, i64 4712, !4, i64 4716, !4, i64 4720, !4, i64 4724, !4, i64 4728, !4, i64 4732, !4, i64 4736, !4, i64 4740, !4, i64 4744, !4, i64 4748, !4, i64 4752, !4, i64 4756, !4, i64 4760, !4, i64 4764, !4, i64 4768, !4, i64 4772, !5, i64 4776, !4, i64 5032, !4, i64 5036, !21, i64 5040, !21, i64 5048, !60, i64 5056, !21, i64 5064, !4, i64 5072, !4, i64 5076, !4, i64 5080, !4, i64 5084, !4, i64 5088, !4, i64 5092, !4, i64 5096, !4, i64 5100, !4, i64 5104, !4, i64 5108, !4, i64 5112, !4, i64 5116, !4, i64 5120, !4, i64 5124, !4, i64 5128, !4, i64 5132, !4, i64 5136, !8, i64 5144, !8, i64 5152, !8, i64 5160, !5, i64 5168, !4, i64 5208, !5, i64 5212, !4, i64 5244, !4, i64 5248, !4, i64 5252, !4, i64 5256, !4, i64 5260, !4, i64 5264, !4, i64 5268, !4, i64 5272, !4, i64 5276, !4, i64 5280, !4, i64 5284, !4, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !4, i64 5648, !4, i64 5652, !4, i64 5656, !4, i64 5660, !5, i64 5664, !5, i64 5704, !4, i64 5744, !4, i64 5748, !4, i64 5752, !4, i64 5756, !4, i64 5760, !4, i64 5764, !4, i64 5768, !4, i64 5772, !4, i64 5776, !5, i64 5780, !4, i64 5792}
!114 = !{!115, !4, i64 4}
!115 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !5, i64 108, !4, i64 1132, !4, i64 1136, !4, i64 1140, !4, i64 1144, !4, i64 1148, !4, i64 1152, !4, i64 1156, !4, i64 1160, !4, i64 1164, !4, i64 1168, !4, i64 1172, !4, i64 1176, !4, i64 1180, !116, i64 1184}
!116 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !117, i64 84, !4, i64 496, !117, i64 500, !4, i64 912, !4, i64 916, !4, i64 920, !4, i64 924, !4, i64 928, !4, i64 932, !4, i64 936, !4, i64 940, !4, i64 944}
!117 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !5, i64 140, !5, i64 268, !4, i64 396, !4, i64 400, !4, i64 404, !4, i64 408}
!118 = distinct !{!118, !39}
!119 = distinct !{!119, !39}
!120 = distinct !{!120, !39}
!121 = distinct !{!121, !39}
!122 = distinct !{!122, !39}
!123 = distinct !{!123, !39}
!124 = distinct !{!124, !39}
!125 = distinct !{!125, !39}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = distinct !{!128, !39}
!129 = distinct !{!129, !39}
!130 = distinct !{!130, !39}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = distinct !{!134, !39}
!135 = distinct !{!135, !39}
!136 = distinct !{!136, !39}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = distinct !{!139, !39}
!140 = distinct !{!140, !39}
!141 = distinct !{!141, !39}
!142 = distinct !{!142, !39}
!143 = distinct !{!143, !39}
!144 = distinct !{!144, !39}
!145 = distinct !{!145, !39}
!146 = !{!113, !4, i64 40}
!147 = !{!113, !4, i64 44}
!148 = distinct !{!148, !39}
!149 = distinct !{!149, !39}
!150 = distinct !{!150, !39}
