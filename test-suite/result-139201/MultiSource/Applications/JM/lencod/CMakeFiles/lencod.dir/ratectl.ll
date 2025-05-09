; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/ratectl.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/ratectl.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@generic_RC = common dso_local global ptr null, align 8
@img = external global ptr, align 8
@input = external global ptr, align 8
@rdopt = common dso_local global ptr null, align 8
@delta_qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@QP2Qstep.QP2QSTEP = internal constant [6 x double] [double 6.250000e-01, double 6.875000e-01, double 8.125000e-01, double 8.750000e-01, double 1.000000e+00, double 1.125000e+00], align 8
@diffy = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@.str = private unnamed_addr constant [35 x i8] c"init_global_buffers: generic_alloc\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"init_global_buffers: (*prc)->MADofMB\00", align 1
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
@active_pps = common dso_local global ptr null, align 8
@active_sps = common dso_local global ptr null, align 8
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
@generic_RC_init = common dso_local global ptr null, align 8
@generic_RC_best = common dso_local global ptr null, align 8

; Function Attrs: nounwind
define dso_local void @update_rc(ptr noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i16 %1, ptr %4, align 2, !tbaa !8
  %5 = call signext i32 @calc_MAD()
  %6 = load ptr, ptr @generic_RC, align 8, !tbaa !10
  %7 = getelementptr inbounds nuw %struct.rc_generic, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load ptr, ptr @img, align 8, !tbaa !10
  %10 = getelementptr inbounds nuw %struct.ImageParameters, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !16
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %8, i64 %12
  store i32 %5, ptr %13, align 4, !tbaa !32
  %14 = load ptr, ptr @input, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw %struct.InputParameters, ptr %14, i32 0, i32 160
  %16 = load i32, ptr %15, align 8, !tbaa !33
  %17 = load ptr, ptr @img, align 8, !tbaa !10
  %18 = getelementptr inbounds nuw %struct.ImageParameters, ptr %17, i32 0, i32 120
  %19 = load i32, ptr %18, align 8, !tbaa !36
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %114

21:                                               ; preds = %2
  %22 = load ptr, ptr @generic_RC, align 8, !tbaa !10
  %23 = getelementptr inbounds nuw %struct.rc_generic, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load ptr, ptr @img, align 8, !tbaa !10
  %26 = getelementptr inbounds nuw %struct.ImageParameters, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !16
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %24, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !32
  %31 = sext i32 %30 to i64
  %32 = load ptr, ptr @generic_RC, align 8, !tbaa !10
  %33 = getelementptr inbounds nuw %struct.rc_generic, ptr %32, i32 0, i32 13
  %34 = load i64, ptr %33, align 8, !tbaa !37
  %35 = add nsw i64 %34, %31
  store i64 %35, ptr %33, align 8, !tbaa !37
  %36 = load ptr, ptr %3, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.macroblock, ptr %36, i32 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !38
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %21
  %41 = load i16, ptr %4, align 2, !tbaa !8
  %42 = sext i16 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %21
  %45 = load i16, ptr %4, align 2, !tbaa !8
  %46 = sext i16 %45 to i32
  %47 = icmp ne i32 %46, 14
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw %struct.macroblock, ptr %49, i32 0, i32 37
  store i32 1, ptr %50, align 8, !tbaa !40
  br label %66

51:                                               ; preds = %44, %40
  %52 = load ptr, ptr %3, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.macroblock, ptr %52, i32 0, i32 1
  store i32 0, ptr %53, align 4, !tbaa !41
  %54 = load ptr, ptr %3, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.macroblock, ptr %54, i32 0, i32 35
  %56 = load i32, ptr %55, align 8, !tbaa !42
  %57 = load ptr, ptr %3, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.macroblock, ptr %57, i32 0, i32 2
  store i32 %56, ptr %58, align 8, !tbaa !43
  %59 = load ptr, ptr %3, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.macroblock, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !43
  %62 = load ptr, ptr @img, align 8, !tbaa !10
  %63 = getelementptr inbounds nuw %struct.ImageParameters, ptr %62, i32 0, i32 9
  store i32 %61, ptr %63, align 4, !tbaa !44
  %64 = load ptr, ptr %3, align 8, !tbaa !3
  %65 = getelementptr inbounds nuw %struct.macroblock, ptr %64, i32 0, i32 37
  store i32 0, ptr %65, align 8, !tbaa !40
  br label %66

66:                                               ; preds = %51, %48
  %67 = load ptr, ptr @input, align 8, !tbaa !10
  %68 = getelementptr inbounds nuw %struct.InputParameters, ptr %67, i32 0, i32 122
  %69 = load i32, ptr %68, align 4, !tbaa !45
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %113

71:                                               ; preds = %66
  %72 = load ptr, ptr %3, align 8, !tbaa !3
  %73 = getelementptr inbounds nuw %struct.macroblock, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !41
  %75 = load ptr, ptr @rdopt, align 8, !tbaa !10
  %76 = getelementptr inbounds nuw %struct.RD_DATA, ptr %75, i32 0, i32 26
  store i32 %74, ptr %76, align 4, !tbaa !46
  %77 = load ptr, ptr %3, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.macroblock, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 8, !tbaa !43
  %80 = load ptr, ptr @rdopt, align 8, !tbaa !10
  %81 = getelementptr inbounds nuw %struct.RD_DATA, ptr %80, i32 0, i32 23
  store i32 %79, ptr %81, align 8, !tbaa !48
  %82 = load ptr, ptr %3, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.macroblock, ptr %82, i32 0, i32 37
  %84 = load i32, ptr %83, align 8, !tbaa !40
  %85 = load ptr, ptr @rdopt, align 8, !tbaa !10
  %86 = getelementptr inbounds nuw %struct.RD_DATA, ptr %85, i32 0, i32 27
  store i32 %84, ptr %86, align 8, !tbaa !49
  %87 = load ptr, ptr %3, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.macroblock, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !41
  %90 = load ptr, ptr %3, align 8, !tbaa !3
  %91 = getelementptr inbounds nuw %struct.macroblock, ptr %90, i32 0, i32 19
  %92 = load i32, ptr %91, align 8, !tbaa !50
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x [2 x i32]], ptr @delta_qp_mbaff, i64 0, i64 %93
  %95 = load ptr, ptr @img, align 8, !tbaa !10
  %96 = getelementptr inbounds nuw %struct.ImageParameters, ptr %95, i32 0, i32 134
  %97 = load i32, ptr %96, align 4, !tbaa !51
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [2 x i32], ptr %94, i64 0, i64 %98
  store i32 %89, ptr %99, align 4, !tbaa !32
  %100 = load ptr, ptr %3, align 8, !tbaa !3
  %101 = getelementptr inbounds nuw %struct.macroblock, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !43
  %103 = load ptr, ptr %3, align 8, !tbaa !3
  %104 = getelementptr inbounds nuw %struct.macroblock, ptr %103, i32 0, i32 19
  %105 = load i32, ptr %104, align 8, !tbaa !50
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x [2 x i32]], ptr @qp_mbaff, i64 0, i64 %106
  %108 = load ptr, ptr @img, align 8, !tbaa !10
  %109 = getelementptr inbounds nuw %struct.ImageParameters, ptr %108, i32 0, i32 134
  %110 = load i32, ptr %109, align 4, !tbaa !51
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x i32], ptr %107, i64 0, i64 %111
  store i32 %102, ptr %112, align 4, !tbaa !32
  br label %113

113:                                              ; preds = %71, %66
  br label %114

114:                                              ; preds = %113, %2
  %115 = load ptr, ptr %3, align 8, !tbaa !3
  call void @set_chroma_qp(ptr noundef %115)
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @calc_MAD() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !32
  store i32 0, ptr %1, align 4, !tbaa !32
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, ptr %1, align 4, !tbaa !32
  %6 = icmp slt i32 %5, 16
  br i1 %6, label %7, label %29

7:                                                ; preds = %4
  store i32 0, ptr %2, align 4, !tbaa !32
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, ptr %2, align 4, !tbaa !32
  %10 = icmp slt i32 %9, 16
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4, !tbaa !32
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [16 x [16 x i32]], ptr @diffy, i64 0, i64 %13
  %15 = load i32, ptr %2, align 4, !tbaa !32
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [16 x i32], ptr %14, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !32
  %19 = call signext i32 @iabs(i32 noundef signext %18)
  %20 = load i32, ptr %3, align 4, !tbaa !32
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr %3, align 4, !tbaa !32
  br label %22

22:                                               ; preds = %11
  %23 = load i32, ptr %2, align 4, !tbaa !32
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %2, align 4, !tbaa !32
  br label %8, !llvm.loop !52

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %25
  %27 = load i32, ptr %1, align 4, !tbaa !32
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %1, align 4, !tbaa !32
  br label %4, !llvm.loop !54

29:                                               ; preds = %4
  %30 = load i32, ptr %3, align 4, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret i32 %30
}

declare void @set_chroma_qp(ptr noundef) #1

; Function Attrs: nounwind
define dso_local double @QP2Qstep(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, ptr %2, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  %5 = load i32, ptr %2, align 4, !tbaa !32
  %6 = srem i32 %5, 6
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [6 x double], ptr @QP2Qstep.QP2QSTEP, i64 0, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !55
  store double %9, ptr %4, align 8, !tbaa !55
  store i32 0, ptr %3, align 4, !tbaa !32
  br label %10

10:                                               ; preds = %18, %1
  %11 = load i32, ptr %3, align 4, !tbaa !32
  %12 = load i32, ptr %2, align 4, !tbaa !32
  %13 = sdiv i32 %12, 6
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load double, ptr %4, align 8, !tbaa !55
  %17 = fmul double %16, 2.000000e+00
  store double %17, ptr %4, align 8, !tbaa !55
  br label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4, !tbaa !32
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !32
  br label %10, !llvm.loop !56

21:                                               ; preds = %10
  %22 = load double, ptr %4, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret double %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local signext i32 @Qstep2QP(double noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, ptr %3, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  store i32 0, ptr %4, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  store i32 0, ptr %5, align 4, !tbaa !32
  %7 = load double, ptr %3, align 8, !tbaa !55
  %8 = call double @QP2Qstep(i32 noundef signext 0)
  %9 = fcmp olt double %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, ptr %2, align 4
  store i32 1, ptr %6, align 4
  br label %57

11:                                               ; preds = %1
  %12 = load double, ptr %3, align 8, !tbaa !55
  %13 = call double @QP2Qstep(i32 noundef signext 51)
  %14 = fcmp ogt double %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 51, ptr %2, align 4
  store i32 1, ptr %6, align 4
  br label %57

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %22, %17
  %19 = load double, ptr %3, align 8, !tbaa !55
  %20 = call double @QP2Qstep(i32 noundef signext 5)
  %21 = fcmp ogt double %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load double, ptr %3, align 8, !tbaa !55
  %24 = fdiv double %23, 2.000000e+00
  store double %24, ptr %3, align 8, !tbaa !55
  %25 = load i32, ptr %4, align 4, !tbaa !32
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %4, align 4, !tbaa !32
  br label %18, !llvm.loop !57

27:                                               ; preds = %18
  %28 = load double, ptr %3, align 8, !tbaa !55
  %29 = fcmp ole double %28, 6.562500e-01
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store double 6.250000e-01, ptr %3, align 8, !tbaa !55
  store i32 0, ptr %5, align 4, !tbaa !32
  br label %52

31:                                               ; preds = %27
  %32 = load double, ptr %3, align 8, !tbaa !55
  %33 = fcmp ole double %32, 7.500000e-01
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store double 6.875000e-01, ptr %3, align 8, !tbaa !55
  store i32 1, ptr %5, align 4, !tbaa !32
  br label %51

35:                                               ; preds = %31
  %36 = load double, ptr %3, align 8, !tbaa !55
  %37 = fcmp ole double %36, 8.437500e-01
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store double 8.125000e-01, ptr %3, align 8, !tbaa !55
  store i32 2, ptr %5, align 4, !tbaa !32
  br label %50

39:                                               ; preds = %35
  %40 = load double, ptr %3, align 8, !tbaa !55
  %41 = fcmp ole double %40, 9.375000e-01
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store double 8.750000e-01, ptr %3, align 8, !tbaa !55
  store i32 3, ptr %5, align 4, !tbaa !32
  br label %49

43:                                               ; preds = %39
  %44 = load double, ptr %3, align 8, !tbaa !55
  %45 = fcmp ole double %44, 1.062500e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store double 1.000000e+00, ptr %3, align 8, !tbaa !55
  store i32 4, ptr %5, align 4, !tbaa !32
  br label %48

47:                                               ; preds = %43
  store double 1.125000e+00, ptr %3, align 8, !tbaa !55
  store i32 5, ptr %5, align 4, !tbaa !32
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %42
  br label %50

50:                                               ; preds = %49, %38
  br label %51

51:                                               ; preds = %50, %34
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, ptr %4, align 4, !tbaa !32
  %54 = mul nsw i32 %53, 6
  %55 = load i32, ptr %5, align 4, !tbaa !32
  %56 = add nsw i32 %54, %55
  store i32 %56, ptr %2, align 4
  store i32 1, ptr %6, align 4
  br label %57

57:                                               ; preds = %52, %15, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  %58 = load i32, ptr %2, align 4
  ret i32 %58
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iabs(i32 noundef signext %0) #3 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !32
  %3 = load i32, ptr %2, align 4, !tbaa !32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !32
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !32
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local double @ComputeFrameMAD() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  store i64 0, ptr %1, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  store i32 0, ptr %2, align 4, !tbaa !32
  br label %3

3:                                                ; preds = %20, %0
  %4 = load i32, ptr %2, align 4, !tbaa !32
  %5 = load ptr, ptr @img, align 8, !tbaa !10
  %6 = getelementptr inbounds nuw %struct.ImageParameters, ptr %5, i32 0, i32 120
  %7 = load i32, ptr %6, align 8, !tbaa !36
  %8 = icmp ult i32 %4, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  %10 = load ptr, ptr @generic_RC, align 8, !tbaa !10
  %11 = getelementptr inbounds nuw %struct.rc_generic, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = load i32, ptr %2, align 4, !tbaa !32
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds nuw i32, ptr %12, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !32
  %17 = sext i32 %16 to i64
  %18 = load i64, ptr %1, align 8, !tbaa !58
  %19 = add nsw i64 %18, %17
  store i64 %19, ptr %1, align 8, !tbaa !58
  br label %20

20:                                               ; preds = %9
  %21 = load i32, ptr %2, align 4, !tbaa !32
  %22 = add i32 %21, 1
  store i32 %22, ptr %2, align 4, !tbaa !32
  br label %3, !llvm.loop !59

23:                                               ; preds = %3
  %24 = load i64, ptr %1, align 8, !tbaa !58
  %25 = sitofp i64 %24 to double
  %26 = load ptr, ptr @img, align 8, !tbaa !10
  %27 = getelementptr inbounds nuw %struct.ImageParameters, ptr %26, i32 0, i32 120
  %28 = load i32, ptr %27, align 8, !tbaa !36
  %29 = uitofp i32 %28 to double
  %30 = fmul double 2.560000e+02, %29
  %31 = fdiv double %25, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret double %31
}

; Function Attrs: nounwind
define dso_local void @copy_rc_generic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !10
  store ptr %1, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %6 = load ptr, ptr %3, align 8, !tbaa !10
  %7 = getelementptr inbounds nuw %struct.rc_generic, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  store ptr %8, ptr %5, align 8, !tbaa !60
  %9 = load ptr, ptr %3, align 8, !tbaa !10
  %10 = load ptr, ptr %4, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %10, i64 144, i1 false)
  %11 = load ptr, ptr %5, align 8, !tbaa !60
  %12 = load ptr, ptr %3, align 8, !tbaa !10
  %13 = getelementptr inbounds nuw %struct.rc_generic, ptr %12, i32 0, i32 14
  store ptr %11, ptr %13, align 8, !tbaa !11
  %14 = load ptr, ptr %3, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw %struct.rc_generic, ptr %14, i32 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load ptr, ptr %4, align 8, !tbaa !10
  %18 = getelementptr inbounds nuw %struct.rc_generic, ptr %17, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load ptr, ptr @img, align 8, !tbaa !10
  %21 = getelementptr inbounds nuw %struct.ImageParameters, ptr %20, i32 0, i32 120
  %22 = load i32, ptr %21, align 8, !tbaa !36
  %23 = zext i32 %22 to i64
  %24 = mul i64 %23, 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %19, i64 %24, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local void @generic_alloc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !61
  %3 = call noalias ptr @malloc(i64 noundef 144) #8
  %4 = load ptr, ptr %2, align 8, !tbaa !61
  store ptr %3, ptr %4, align 8, !tbaa !10
  %5 = load ptr, ptr %2, align 8, !tbaa !61
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = icmp eq ptr null, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @no_mem_exit(ptr noundef @.str)
  br label %9

9:                                                ; preds = %8, %1
  %10 = load ptr, ptr @img, align 8, !tbaa !10
  %11 = getelementptr inbounds nuw %struct.ImageParameters, ptr %10, i32 0, i32 120
  %12 = load i32, ptr %11, align 8, !tbaa !36
  %13 = zext i32 %12 to i64
  %14 = call noalias ptr @calloc(i64 noundef %13, i64 noundef 4) #9
  %15 = load ptr, ptr %2, align 8, !tbaa !61
  %16 = load ptr, ptr %15, align 8, !tbaa !10
  %17 = getelementptr inbounds nuw %struct.rc_generic, ptr %16, i32 0, i32 14
  store ptr %14, ptr %17, align 8, !tbaa !11
  %18 = load ptr, ptr %2, align 8, !tbaa !61
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = getelementptr inbounds nuw %struct.rc_generic, ptr %19, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr null, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  call void @no_mem_exit(ptr noundef @.str.1)
  br label %24

24:                                               ; preds = %23, %9
  %25 = load ptr, ptr %2, align 8, !tbaa !61
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  %27 = getelementptr inbounds nuw %struct.rc_generic, ptr %26, i32 0, i32 2
  store i32 1, ptr %27, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare void @no_mem_exit(ptr noundef) #1

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #6

; Function Attrs: nounwind
define dso_local void @generic_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !61
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds nuw %struct.rc_generic, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp ne ptr null, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !61
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  %11 = getelementptr inbounds nuw %struct.rc_generic, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  call void @free(ptr noundef %12) #7
  %13 = load ptr, ptr %2, align 8, !tbaa !61
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds nuw %struct.rc_generic, ptr %14, i32 0, i32 14
  store ptr null, ptr %15, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %8, %1
  %17 = load ptr, ptr %2, align 8, !tbaa !61
  %18 = load ptr, ptr %17, align 8, !tbaa !10
  %19 = icmp ne ptr null, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %2, align 8, !tbaa !61
  %22 = load ptr, ptr %21, align 8, !tbaa !10
  call void @free(ptr noundef %22) #7
  %23 = load ptr, ptr %2, align 8, !tbaa !61
  store ptr null, ptr %23, align 8, !tbaa !10
  br label %24

24:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS10macroblock", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !15, i64 64}
!12 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !14, i64 56, !15, i64 64, !14, i64 72, !13, i64 80, !13, i64 84, !13, i64 88, !6, i64 92, !13, i64 112, !6, i64 116, !13, i64 136, !13, i64 140}
!13 = !{!"int", !6, i64 0}
!14 = !{!"long long", !6, i64 0}
!15 = !{!"p1 int", !5, i64 0}
!16 = !{!17, !13, i64 12}
!17 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !18, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !13, i64 100, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116, !13, i64 120, !19, i64 128, !19, i64 136, !13, i64 144, !21, i64 152, !13, i64 160, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192, !13, i64 196, !13, i64 200, !13, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !23, i64 14160, !21, i64 14168, !21, i64 14176, !21, i64 14184, !23, i64 14192, !23, i64 14200, !5, i64 14208, !5, i64 14216, !4, i64 14224, !15, i64 14232, !15, i64 14240, !13, i64 14248, !13, i64 14252, !13, i64 14256, !13, i64 14260, !6, i64 14264, !13, i64 14328, !13, i64 14332, !13, i64 14336, !13, i64 14340, !13, i64 14344, !25, i64 14352, !13, i64 14360, !13, i64 14364, !13, i64 14368, !13, i64 14372, !26, i64 14376, !26, i64 14384, !26, i64 14392, !26, i64 14400, !6, i64 14408, !13, i64 14440, !13, i64 14444, !13, i64 14448, !13, i64 14452, !13, i64 14456, !13, i64 14460, !13, i64 14464, !13, i64 14468, !6, i64 14472, !13, i64 15240, !13, i64 15244, !13, i64 15248, !13, i64 15252, !13, i64 15256, !13, i64 15260, !13, i64 15264, !13, i64 15268, !13, i64 15272, !13, i64 15276, !13, i64 15280, !13, i64 15284, !13, i64 15288, !6, i64 15292, !13, i64 15296, !13, i64 15300, !6, i64 15304, !13, i64 15312, !13, i64 15316, !13, i64 15320, !13, i64 15324, !13, i64 15328, !13, i64 15332, !13, i64 15336, !13, i64 15340, !13, i64 15344, !13, i64 15348, !13, i64 15352, !13, i64 15356, !13, i64 15360, !13, i64 15364, !13, i64 15368, !13, i64 15372, !29, i64 15376, !13, i64 15384, !13, i64 15388, !13, i64 15392, !13, i64 15396, !13, i64 15400, !13, i64 15404, !13, i64 15408, !13, i64 15412, !13, i64 15416, !13, i64 15420, !13, i64 15424, !13, i64 15428, !13, i64 15432, !13, i64 15436, !13, i64 15440, !13, i64 15444, !13, i64 15448, !13, i64 15452, !13, i64 15456, !13, i64 15460, !13, i64 15464, !13, i64 15468, !13, i64 15472, !30, i64 15480, !31, i64 15488, !21, i64 15496, !30, i64 15504, !13, i64 15512, !13, i64 15516, !13, i64 15520, !13, i64 15524, !13, i64 15528, !13, i64 15532, !13, i64 15536, !13, i64 15540, !13, i64 15544, !13, i64 15548, !6, i64 15552, !6, i64 15576, !13, i64 15584, !13, i64 15588, !9, i64 15592, !13, i64 15596, !13, i64 15600, !13, i64 15604, !13, i64 15608, !13, i64 15612}
!18 = !{!"float", !6, i64 0}
!19 = !{!"p2 omnipotent char", !20, i64 0}
!20 = !{!"any p2 pointer", !5, i64 0}
!21 = !{!"p3 int", !22, i64 0}
!22 = !{!"any p3 pointer", !20, i64 0}
!23 = !{!"p4 int", !24, i64 0}
!24 = !{!"any p4 pointer", !22, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = !{!"p6 short", !27, i64 0}
!27 = !{!"any p6 pointer", !28, i64 0}
!28 = !{!"any p5 pointer", !24, i64 0}
!29 = !{!"p1 _ZTS18DecRefPicMarking_s", !5, i64 0}
!30 = !{!"p2 double", !20, i64 0}
!31 = !{!"p3 double", !22, i64 0}
!32 = !{!13, !13, i64 0}
!33 = !{!34, !13, i64 5128}
!34 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !13, i64 264, !13, i64 268, !13, i64 272, !13, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !13, i64 1560, !13, i64 1564, !13, i64 1568, !13, i64 1572, !13, i64 1576, !13, i64 1580, !6, i64 1584, !13, i64 2084, !13, i64 2088, !13, i64 2092, !13, i64 2096, !13, i64 2100, !13, i64 2104, !13, i64 2108, !13, i64 2112, !13, i64 2116, !13, i64 2120, !13, i64 2124, !13, i64 2128, !13, i64 2132, !13, i64 2136, !13, i64 2140, !13, i64 2144, !13, i64 2148, !13, i64 2152, !13, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !13, i64 2928, !13, i64 2932, !13, i64 2936, !13, i64 2940, !13, i64 2944, !13, i64 2948, !13, i64 2952, !13, i64 2956, !13, i64 2960, !13, i64 2964, !13, i64 2968, !13, i64 2972, !6, i64 2976, !13, i64 4000, !13, i64 4004, !13, i64 4008, !13, i64 4012, !13, i64 4016, !13, i64 4020, !13, i64 4024, !13, i64 4028, !13, i64 4032, !13, i64 4036, !13, i64 4040, !13, i64 4044, !13, i64 4048, !13, i64 4052, !13, i64 4056, !13, i64 4060, !13, i64 4064, !13, i64 4068, !13, i64 4072, !13, i64 4076, !25, i64 4080, !13, i64 4088, !13, i64 4092, !13, i64 4096, !13, i64 4100, !13, i64 4104, !13, i64 4108, !13, i64 4112, !13, i64 4116, !13, i64 4120, !13, i64 4124, !13, i64 4128, !13, i64 4132, !13, i64 4136, !13, i64 4140, !13, i64 4144, !13, i64 4148, !13, i64 4152, !13, i64 4156, !13, i64 4160, !13, i64 4164, !13, i64 4168, !13, i64 4172, !13, i64 4176, !13, i64 4180, !13, i64 4184, !13, i64 4188, !6, i64 4192, !6, i64 4448, !13, i64 4704, !13, i64 4708, !13, i64 4712, !13, i64 4716, !13, i64 4720, !13, i64 4724, !13, i64 4728, !13, i64 4732, !13, i64 4736, !13, i64 4740, !13, i64 4744, !13, i64 4748, !13, i64 4752, !13, i64 4756, !13, i64 4760, !13, i64 4764, !13, i64 4768, !13, i64 4772, !6, i64 4776, !13, i64 5032, !13, i64 5036, !15, i64 5040, !15, i64 5048, !35, i64 5056, !15, i64 5064, !13, i64 5072, !13, i64 5076, !13, i64 5080, !13, i64 5084, !13, i64 5088, !13, i64 5092, !13, i64 5096, !13, i64 5100, !13, i64 5104, !13, i64 5108, !13, i64 5112, !13, i64 5116, !13, i64 5120, !13, i64 5124, !13, i64 5128, !13, i64 5132, !13, i64 5136, !25, i64 5144, !25, i64 5152, !25, i64 5160, !6, i64 5168, !13, i64 5208, !6, i64 5212, !13, i64 5244, !13, i64 5248, !13, i64 5252, !13, i64 5256, !13, i64 5260, !13, i64 5264, !13, i64 5268, !13, i64 5272, !13, i64 5276, !13, i64 5280, !13, i64 5284, !13, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !13, i64 5648, !13, i64 5652, !13, i64 5656, !13, i64 5660, !6, i64 5664, !6, i64 5704, !13, i64 5744, !13, i64 5748, !13, i64 5752, !13, i64 5756, !13, i64 5760, !13, i64 5764, !13, i64 5768, !13, i64 5772, !13, i64 5776, !6, i64 5780, !13, i64 5792}
!35 = !{!"p1 omnipotent char", !5, i64 0}
!36 = !{!17, !13, i64 15352}
!37 = !{!12, !14, i64 56}
!38 = !{!39, !13, i64 364}
!39 = !{!"macroblock", !13, i64 0, !13, i64 4, !13, i64 8, !6, i64 12, !13, i64 20, !6, i64 24, !4, i64 56, !4, i64 64, !13, i64 72, !6, i64 76, !6, i64 332, !6, i64 348, !13, i64 364, !14, i64 368, !6, i64 376, !6, i64 392, !14, i64 408, !13, i64 416, !13, i64 420, !13, i64 424, !13, i64 428, !13, i64 432, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !13, i64 456, !13, i64 460, !13, i64 464, !13, i64 468, !13, i64 472, !13, i64 476, !9, i64 480, !25, i64 488, !13, i64 496, !13, i64 500, !13, i64 504, !13, i64 508, !13, i64 512, !13, i64 516, !13, i64 520, !13, i64 524, !13, i64 528}
!40 = !{!39, !13, i64 504}
!41 = !{!39, !13, i64 4}
!42 = !{!39, !13, i64 496}
!43 = !{!39, !13, i64 8}
!44 = !{!17, !13, i64 36}
!45 = !{!34, !13, i64 4708}
!46 = !{!47, !13, i64 1740}
!47 = !{!"", !25, i64 0, !6, i64 8, !6, i64 520, !6, i64 1032, !23, i64 1544, !21, i64 1552, !13, i64 1560, !9, i64 1564, !6, i64 1568, !6, i64 1584, !19, i64 1600, !6, i64 1608, !6, i64 1624, !13, i64 1640, !14, i64 1648, !13, i64 1656, !26, i64 1664, !26, i64 1672, !6, i64 1680, !13, i64 1712, !13, i64 1716, !13, i64 1720, !13, i64 1724, !13, i64 1728, !13, i64 1732, !13, i64 1736, !13, i64 1740, !13, i64 1744}
!48 = !{!47, !13, i64 1728}
!49 = !{!47, !13, i64 1744}
!50 = !{!39, !13, i64 424}
!51 = !{!17, !13, i64 15412}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = distinct !{!54, !53}
!55 = !{!25, !25, i64 0}
!56 = distinct !{!56, !53}
!57 = distinct !{!57, !53}
!58 = !{!14, !14, i64 0}
!59 = distinct !{!59, !53}
!60 = !{!15, !15, i64 0}
!61 = !{!20, !20, i64 0}
!62 = !{!12, !13, i64 8}
