; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/rc_quadratic.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/rc_quadratic.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.rc_quadratic = type { float, float, float, double, double, double, double, double, double, i32, i32, i32, i32, double, double, double, double, double, [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], [21 x double], double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@img = external global ptr, align 8
@input = external global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"init_global_buffers: (*prc)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"rc_alloc: lprc->BUPFMAD\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"rc_alloc: lprc->BUCFMAD\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"rc_alloc: lprc->FCBUCFMAD\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"rc_alloc: lprc->FCBUPFMAD\00", align 1
@updateQP = common dso_local global ptr null, align 8
@generic_RC = common dso_local global ptr null, align 8
@stderr = external global ptr, align 8
@.str.5 = private unnamed_addr constant [73 x i8] c"\0A RCUpdateMode=3 and HierarchicalCoding == 3 are currently not supported\00", align 1
@start_frame_no_in_this_IGOP = external global i32, align 4
@gop_structure = common dso_local global ptr null, align 8
@updateRCModel.m_rgRejected = internal global [21 x i32] zeroinitializer, align 4
@updateRCModel.error = internal global [21 x double] zeroinitializer, align 8
@updateMADModel.PictureRejected = internal global [21 x i32] zeroinitializer, align 4
@updateMADModel.error = internal global [21 x double] zeroinitializer, align 8
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
@imgY_org = common dso_local global ptr null, align 8
@imgUV_org = common dso_local global ptr null, align 8
@imgY_sub_tmp = common dso_local global ptr null, align 8
@PicPos = common dso_local global ptr null, align 8
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
@me_tot_time = common dso_local global i64 0, align 8
@me_time = common dso_local global i64 0, align 8
@active_pps = common dso_local global ptr null, align 8
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
@diffy = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@delta_qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@generic_RC_init = common dso_local global ptr null, align 8
@generic_RC_best = common dso_local global ptr null, align 8
@quadratic_RC = common dso_local global ptr null, align 8
@quadratic_RC_init = common dso_local global ptr null, align 8
@quadratic_RC_best = common dso_local global ptr null, align 8

; Function Attrs: nounwind
define dso_local void @rc_alloc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #10
  %5 = load ptr, ptr @img, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw %struct.ImageParameters, ptr %5, i32 0, i32 120
  %7 = load i32, ptr %6, align 8, !tbaa !9
  %8 = load ptr, ptr @input, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.InputParameters, ptr %8, i32 0, i32 160
  %10 = load i32, ptr %9, align 8, !tbaa !28
  %11 = udiv i32 %7, %10
  store i32 %11, ptr %3, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #10
  %12 = call noalias ptr @malloc(i64 noundef 1600) #11
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  store ptr %12, ptr %13, align 8, !tbaa !8
  %14 = load ptr, ptr %2, align 8, !tbaa !3
  %15 = load ptr, ptr %14, align 8, !tbaa !8
  %16 = icmp eq ptr null, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  call void @no_mem_exit(ptr noundef @.str)
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr %2, align 8, !tbaa !3
  %20 = load ptr, ptr %19, align 8, !tbaa !8
  store ptr %20, ptr %4, align 8, !tbaa !8
  %21 = load ptr, ptr %4, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 49
  store double 1.000000e+00, ptr %22, align 8, !tbaa !32
  %23 = load ptr, ptr %4, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %23, i32 0, i32 46
  store double 1.000000e+00, ptr %24, align 8, !tbaa !36
  %25 = load ptr, ptr %4, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %25, i32 0, i32 65
  store i64 0, ptr %26, align 8, !tbaa !37
  %27 = load ptr, ptr %4, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %27, i32 0, i32 64
  store i64 0, ptr %28, align 8, !tbaa !38
  %29 = load ptr, ptr %4, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %29, i32 0, i32 68
  store i32 0, ptr %30, align 8, !tbaa !39
  %31 = load ptr, ptr %4, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %31, i32 0, i32 69
  store i32 0, ptr %32, align 4, !tbaa !40
  %33 = load ptr, ptr %4, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %33, i32 0, i32 75
  store i32 0, ptr %34, align 4, !tbaa !41
  %35 = load ptr, ptr %4, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 73
  store i32 2147483647, ptr %36, align 4, !tbaa !42
  %37 = load ptr, ptr %4, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %37, i32 0, i32 74
  store i32 2147483647, ptr %38, align 8, !tbaa !43
  %39 = load ptr, ptr %4, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %39, i32 0, i32 76
  store double 0.000000e+00, ptr %40, align 8, !tbaa !44
  %41 = load ptr, ptr %4, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %41, i32 0, i32 77
  store double 0.000000e+00, ptr %42, align 8, !tbaa !45
  %43 = load ptr, ptr @input, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.InputParameters, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !46
  %46 = load ptr, ptr %4, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 43
  store i32 %45, ptr %47, align 8, !tbaa !47
  %48 = load ptr, ptr %4, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %48, i32 0, i32 43
  %50 = load i32, ptr %49, align 8, !tbaa !47
  %51 = load ptr, ptr %4, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %51, i32 0, i32 33
  store i32 %50, ptr %52, align 8, !tbaa !48
  %53 = load ptr, ptr %4, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %53, i32 0, i32 43
  %55 = load i32, ptr %54, align 8, !tbaa !47
  %56 = load ptr, ptr %4, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 55
  store i32 %55, ptr %57, align 8, !tbaa !49
  %58 = load ptr, ptr %4, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %58, i32 0, i32 43
  %60 = load i32, ptr %59, align 8, !tbaa !47
  %61 = load ptr, ptr %4, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %61, i32 0, i32 56
  store i32 %60, ptr %62, align 4, !tbaa !50
  %63 = load ptr, ptr %4, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %63, i32 0, i32 43
  %65 = load i32, ptr %64, align 8, !tbaa !47
  %66 = load ptr, ptr %4, align 8, !tbaa !8
  %67 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %66, i32 0, i32 12
  store i32 %65, ptr %67, align 4, !tbaa !51
  %68 = load ptr, ptr %4, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %68, i32 0, i32 43
  %70 = load i32, ptr %69, align 8, !tbaa !47
  %71 = load ptr, ptr %4, align 8, !tbaa !8
  %72 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %71, i32 0, i32 11
  store i32 %70, ptr %72, align 8, !tbaa !52
  %73 = load ptr, ptr %4, align 8, !tbaa !8
  %74 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %73, i32 0, i32 9
  store i32 51, ptr %74, align 8, !tbaa !53
  %75 = load ptr, ptr @img, align 8, !tbaa !8
  %76 = getelementptr inbounds nuw %struct.ImageParameters, ptr %75, i32 0, i32 144
  %77 = load i32, ptr %76, align 4, !tbaa !54
  %78 = sub nsw i32 0, %77
  %79 = load ptr, ptr %4, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 10
  store i32 %78, ptr %80, align 4, !tbaa !55
  %81 = load i32, ptr %3, align 4, !tbaa !31
  %82 = sext i32 %81 to i64
  %83 = call noalias ptr @calloc(i64 noundef %82, i64 noundef 8) #12
  %84 = load ptr, ptr %4, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %84, i32 0, i32 59
  store ptr %83, ptr %85, align 8, !tbaa !56
  %86 = load ptr, ptr %4, align 8, !tbaa !8
  %87 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %86, i32 0, i32 59
  %88 = load ptr, ptr %87, align 8, !tbaa !56
  %89 = icmp eq ptr null, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %18
  call void @no_mem_exit(ptr noundef @.str.1)
  br label %91

91:                                               ; preds = %90, %18
  %92 = load i32, ptr %3, align 4, !tbaa !31
  %93 = sext i32 %92 to i64
  %94 = call noalias ptr @calloc(i64 noundef %93, i64 noundef 8) #12
  %95 = load ptr, ptr %4, align 8, !tbaa !8
  %96 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %95, i32 0, i32 60
  store ptr %94, ptr %96, align 8, !tbaa !57
  %97 = load ptr, ptr %4, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %97, i32 0, i32 60
  %99 = load ptr, ptr %98, align 8, !tbaa !57
  %100 = icmp eq ptr null, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  call void @no_mem_exit(ptr noundef @.str.2)
  br label %102

102:                                              ; preds = %101, %91
  %103 = load i32, ptr %3, align 4, !tbaa !31
  %104 = sext i32 %103 to i64
  %105 = call noalias ptr @calloc(i64 noundef %104, i64 noundef 8) #12
  %106 = load ptr, ptr %4, align 8, !tbaa !8
  %107 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %106, i32 0, i32 61
  store ptr %105, ptr %107, align 8, !tbaa !58
  %108 = load ptr, ptr %4, align 8, !tbaa !8
  %109 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %108, i32 0, i32 61
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  %111 = icmp eq ptr null, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  call void @no_mem_exit(ptr noundef @.str.3)
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, ptr %3, align 4, !tbaa !31
  %115 = sext i32 %114 to i64
  %116 = call noalias ptr @calloc(i64 noundef %115, i64 noundef 8) #12
  %117 = load ptr, ptr %4, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %117, i32 0, i32 62
  store ptr %116, ptr %118, align 8, !tbaa !59
  %119 = load ptr, ptr %4, align 8, !tbaa !8
  %120 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %119, i32 0, i32 62
  %121 = load ptr, ptr %120, align 8, !tbaa !59
  %122 = icmp eq ptr null, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  call void @no_mem_exit(ptr noundef @.str.4)
  br label %124

124:                                              ; preds = %123, %113
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare void @no_mem_exit(ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @copy_rc_jvt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !8
  store ptr %1, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #10
  %10 = load ptr, ptr @img, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.ImageParameters, ptr %10, i32 0, i32 120
  %12 = load i32, ptr %11, align 8, !tbaa !9
  %13 = load ptr, ptr @input, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.InputParameters, ptr %13, i32 0, i32 160
  %15 = load i32, ptr %14, align 8, !tbaa !28
  %16 = udiv i32 %12, %15
  store i32 %16, ptr %5, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #10
  %17 = load ptr, ptr %3, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %17, i32 0, i32 59
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  store ptr %19, ptr %6, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #10
  %20 = load ptr, ptr %3, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %20, i32 0, i32 60
  %22 = load ptr, ptr %21, align 8, !tbaa !57
  store ptr %22, ptr %7, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #10
  %23 = load ptr, ptr %3, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %23, i32 0, i32 62
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  store ptr %25, ptr %8, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #10
  %26 = load ptr, ptr %3, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %26, i32 0, i32 61
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  store ptr %28, ptr %9, align 8, !tbaa !60
  %29 = load ptr, ptr %3, align 8, !tbaa !8
  %30 = load ptr, ptr %4, align 8, !tbaa !8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %30, i64 1600, i1 false)
  %31 = load ptr, ptr %6, align 8, !tbaa !60
  %32 = load ptr, ptr %3, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %32, i32 0, i32 59
  store ptr %31, ptr %33, align 8, !tbaa !56
  %34 = load ptr, ptr %7, align 8, !tbaa !60
  %35 = load ptr, ptr %3, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 60
  store ptr %34, ptr %36, align 8, !tbaa !57
  %37 = load ptr, ptr %8, align 8, !tbaa !60
  %38 = load ptr, ptr %3, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 62
  store ptr %37, ptr %39, align 8, !tbaa !59
  %40 = load ptr, ptr %9, align 8, !tbaa !60
  %41 = load ptr, ptr %3, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %41, i32 0, i32 61
  store ptr %40, ptr %42, align 8, !tbaa !58
  %43 = load ptr, ptr %3, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 59
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = load ptr, ptr %4, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 59
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = load i32, ptr %5, align 4, !tbaa !31
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %48, i64 %51, i1 false)
  %52 = load ptr, ptr %3, align 8, !tbaa !8
  %53 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %52, i32 0, i32 60
  %54 = load ptr, ptr %53, align 8, !tbaa !57
  %55 = load ptr, ptr %4, align 8, !tbaa !8
  %56 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %55, i32 0, i32 60
  %57 = load ptr, ptr %56, align 8, !tbaa !57
  %58 = load i32, ptr %5, align 4, !tbaa !31
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %57, i64 %60, i1 false)
  %61 = load ptr, ptr %3, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %61, i32 0, i32 62
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  %64 = load ptr, ptr %4, align 8, !tbaa !8
  %65 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %64, i32 0, i32 62
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = load i32, ptr %5, align 4, !tbaa !31
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 %66, i64 %69, i1 false)
  %70 = load ptr, ptr %3, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %70, i32 0, i32 61
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  %73 = load ptr, ptr %4, align 8, !tbaa !8
  %74 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %73, i32 0, i32 61
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = load i32, ptr %5, align 4, !tbaa !31
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %75, i64 %78, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
define dso_local void @rc_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = load ptr, ptr %3, align 8, !tbaa !8
  %5 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %4, i32 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = icmp ne ptr null, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !3
  %10 = load ptr, ptr %9, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %10, i32 0, i32 59
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  call void @free(ptr noundef %12) #10
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  %14 = load ptr, ptr %13, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %14, i32 0, i32 59
  store ptr null, ptr %15, align 8, !tbaa !56
  br label %16

16:                                               ; preds = %8, %1
  %17 = load ptr, ptr %2, align 8, !tbaa !3
  %18 = load ptr, ptr %17, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 60
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = icmp ne ptr null, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr %2, align 8, !tbaa !3
  %24 = load ptr, ptr %23, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %24, i32 0, i32 60
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  call void @free(ptr noundef %26) #10
  %27 = load ptr, ptr %2, align 8, !tbaa !3
  %28 = load ptr, ptr %27, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %28, i32 0, i32 60
  store ptr null, ptr %29, align 8, !tbaa !57
  br label %30

30:                                               ; preds = %22, %16
  %31 = load ptr, ptr %2, align 8, !tbaa !3
  %32 = load ptr, ptr %31, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %32, i32 0, i32 61
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = icmp ne ptr null, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load ptr, ptr %2, align 8, !tbaa !3
  %38 = load ptr, ptr %37, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 61
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  call void @free(ptr noundef %40) #10
  %41 = load ptr, ptr %2, align 8, !tbaa !3
  %42 = load ptr, ptr %41, align 8, !tbaa !8
  %43 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %42, i32 0, i32 61
  store ptr null, ptr %43, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %36, %30
  %45 = load ptr, ptr %2, align 8, !tbaa !3
  %46 = load ptr, ptr %45, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 62
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp ne ptr null, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load ptr, ptr %2, align 8, !tbaa !3
  %52 = load ptr, ptr %51, align 8, !tbaa !8
  %53 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %52, i32 0, i32 62
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  call void @free(ptr noundef %54) #10
  %55 = load ptr, ptr %2, align 8, !tbaa !3
  %56 = load ptr, ptr %55, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 62
  store ptr null, ptr %57, align 8, !tbaa !59
  br label %58

58:                                               ; preds = %50, %44
  %59 = load ptr, ptr %2, align 8, !tbaa !3
  %60 = load ptr, ptr %59, align 8, !tbaa !8
  %61 = icmp ne ptr null, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load ptr, ptr %2, align 8, !tbaa !3
  %64 = load ptr, ptr %63, align 8, !tbaa !8
  call void @free(ptr noundef %64) #10
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  store ptr null, ptr %65, align 8, !tbaa !8
  br label %66

66:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @rc_init_seq(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  %9 = load ptr, ptr @input, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw %struct.InputParameters, ptr %9, i32 0, i32 162
  %11 = load i32, ptr %10, align 8, !tbaa !61
  switch i32 %11, label %16 [
    i32 0, label %12
    i32 1, label %13
    i32 2, label %14
    i32 3, label %15
  ]

12:                                               ; preds = %1
  store ptr @updateQPRC0, ptr @updateQP, align 8, !tbaa !8
  br label %17

13:                                               ; preds = %1
  store ptr @updateQPRC1, ptr @updateQP, align 8, !tbaa !8
  br label %17

14:                                               ; preds = %1
  store ptr @updateQPRC2, ptr @updateQP, align 8, !tbaa !8
  br label %17

15:                                               ; preds = %1
  store ptr @updateQPRC3, ptr @updateQP, align 8, !tbaa !8
  br label %17

16:                                               ; preds = %1
  store ptr @updateQPRC0, ptr @updateQP, align 8, !tbaa !8
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12
  %18 = load ptr, ptr %2, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 66
  store i32 0, ptr %19, align 8, !tbaa !62
  %20 = load ptr, ptr %2, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %20, i32 0, i32 67
  store i32 0, ptr %21, align 4, !tbaa !63
  %22 = load ptr, ptr @input, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw %struct.InputParameters, ptr %22, i32 0, i32 158
  %24 = load i32, ptr %23, align 8, !tbaa !64
  %25 = sitofp i32 %24 to float
  %26 = load ptr, ptr %2, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %26, i32 0, i32 0
  store float %25, ptr %27, align 8, !tbaa !65
  %28 = load ptr, ptr @img, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 12
  %30 = load float, ptr %29, align 8, !tbaa !66
  %31 = load ptr, ptr @input, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.InputParameters, ptr %31, i32 0, i32 40
  %33 = load i32, ptr %32, align 8, !tbaa !67
  %34 = add nsw i32 %33, 1
  %35 = sitofp i32 %34 to float
  %36 = fmul float %30, %35
  %37 = load ptr, ptr @input, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw %struct.InputParameters, ptr %37, i32 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = add nsw i32 %39, 1
  %41 = sitofp i32 %40 to float
  %42 = fdiv float %36, %41
  %43 = load ptr, ptr %2, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 1
  store float %42, ptr %44, align 4, !tbaa !69
  %45 = load ptr, ptr %2, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %45, i32 0, i32 0
  %47 = load float, ptr %46, align 8, !tbaa !65
  %48 = load ptr, ptr %2, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %48, i32 0, i32 2
  store float %47, ptr %49, align 8, !tbaa !70
  %50 = load ptr, ptr @input, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw %struct.InputParameters, ptr %50, i32 0, i32 160
  %52 = load i32, ptr %51, align 8, !tbaa !28
  %53 = load ptr, ptr @img, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw %struct.ImageParameters, ptr %53, i32 0, i32 120
  %55 = load i32, ptr %54, align 8, !tbaa !9
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %17
  %58 = load ptr, ptr @img, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.ImageParameters, ptr %58, i32 0, i32 120
  %60 = load i32, ptr %59, align 8, !tbaa !9
  %61 = load ptr, ptr @input, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.InputParameters, ptr %61, i32 0, i32 160
  store i32 %60, ptr %62, align 8, !tbaa !28
  br label %63

63:                                               ; preds = %57, %17
  %64 = load ptr, ptr @input, align 8, !tbaa !8
  %65 = getelementptr inbounds nuw %struct.InputParameters, ptr %64, i32 0, i32 160
  %66 = load i32, ptr %65, align 8, !tbaa !28
  %67 = load ptr, ptr @img, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw %struct.ImageParameters, ptr %67, i32 0, i32 120
  %69 = load i32, ptr %68, align 8, !tbaa !9
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load ptr, ptr @img, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.ImageParameters, ptr %72, i32 0, i32 120
  %74 = load i32, ptr %73, align 8, !tbaa !9
  %75 = load ptr, ptr @input, align 8, !tbaa !8
  %76 = getelementptr inbounds nuw %struct.InputParameters, ptr %75, i32 0, i32 160
  %77 = load i32, ptr %76, align 8, !tbaa !28
  %78 = udiv i32 %74, %77
  %79 = load ptr, ptr %2, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 44
  store i32 %78, ptr %80, align 4, !tbaa !71
  br label %81

81:                                               ; preds = %71, %63
  %82 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw %struct.rc_generic, ptr %82, i32 0, i32 15
  store i64 0, ptr %83, align 8, !tbaa !72
  %84 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw %struct.rc_generic, ptr %84, i32 0, i32 15
  %86 = load i64, ptr %85, align 8, !tbaa !72
  %87 = sitofp i64 %86 to double
  %88 = load ptr, ptr %2, align 8, !tbaa !8
  %89 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %88, i32 0, i32 5
  store double %87, ptr %89, align 8, !tbaa !74
  %90 = load ptr, ptr %2, align 8, !tbaa !8
  %91 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %90, i32 0, i32 32
  store i32 0, ptr %91, align 4, !tbaa !75
  %92 = load ptr, ptr %2, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %92, i32 0, i32 31
  store i32 0, ptr %93, align 8, !tbaa !76
  %94 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.rc_generic, ptr %94, i32 0, i32 8
  store i32 0, ptr %95, align 8, !tbaa !77
  %96 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %97 = getelementptr inbounds nuw %struct.rc_generic, ptr %96, i32 0, i32 9
  store i32 0, ptr %97, align 4, !tbaa !78
  %98 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %99 = getelementptr inbounds nuw %struct.rc_generic, ptr %98, i32 0, i32 10
  store i32 0, ptr %99, align 8, !tbaa !79
  %100 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %101 = getelementptr inbounds nuw %struct.rc_generic, ptr %100, i32 0, i32 16
  store i32 0, ptr %101, align 8, !tbaa !80
  %102 = load ptr, ptr @input, align 8, !tbaa !8
  %103 = getelementptr inbounds nuw %struct.InputParameters, ptr %102, i32 0, i32 40
  %104 = load i32, ptr %103, align 8, !tbaa !67
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %81
  %107 = load ptr, ptr %2, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 3
  store double 2.500000e-01, ptr %108, align 8, !tbaa !81
  %109 = load ptr, ptr %2, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %109, i32 0, i32 4
  store double 9.000000e-01, ptr %110, align 8, !tbaa !82
  br label %116

111:                                              ; preds = %81
  %112 = load ptr, ptr %2, align 8, !tbaa !8
  %113 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %112, i32 0, i32 3
  store double 5.000000e-01, ptr %113, align 8, !tbaa !81
  %114 = load ptr, ptr %2, align 8, !tbaa !8
  %115 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %114, i32 0, i32 4
  store double 5.000000e-01, ptr %115, align 8, !tbaa !82
  br label %116

116:                                              ; preds = %111, %106
  %117 = load ptr, ptr %2, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %117, i32 0, i32 34
  store i32 0, ptr %118, align 4, !tbaa !83
  %119 = load ptr, ptr %2, align 8, !tbaa !8
  %120 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %119, i32 0, i32 0
  %121 = load float, ptr %120, align 8, !tbaa !65
  %122 = fpext float %121 to double
  %123 = fmul double %122, 1.000000e+00
  %124 = load ptr, ptr %2, align 8, !tbaa !8
  %125 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %124, i32 0, i32 27
  store double %123, ptr %125, align 8, !tbaa !84
  %126 = load ptr, ptr %2, align 8, !tbaa !8
  %127 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %126, i32 0, i32 28
  store double 0.000000e+00, ptr %127, align 8, !tbaa !85
  %128 = load ptr, ptr %2, align 8, !tbaa !8
  %129 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %128, i32 0, i32 16
  store double 1.000000e+00, ptr %129, align 8, !tbaa !86
  %130 = load ptr, ptr %2, align 8, !tbaa !8
  %131 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %130, i32 0, i32 17
  store double 0.000000e+00, ptr %131, align 8, !tbaa !87
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %132

132:                                              ; preds = %151, %116
  %133 = load i32, ptr %8, align 4, !tbaa !31
  %134 = icmp slt i32 %133, 21
  br i1 %134, label %135, label %154

135:                                              ; preds = %132
  %136 = load ptr, ptr %2, align 8, !tbaa !8
  %137 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %136, i32 0, i32 23
  %138 = load i32, ptr %8, align 4, !tbaa !31
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [21 x double], ptr %137, i64 0, i64 %139
  store double 0.000000e+00, ptr %140, align 8, !tbaa !88
  %141 = load ptr, ptr %2, align 8, !tbaa !8
  %142 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %141, i32 0, i32 24
  %143 = load i32, ptr %8, align 4, !tbaa !31
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [21 x double], ptr %142, i64 0, i64 %144
  store double 0.000000e+00, ptr %145, align 8, !tbaa !88
  %146 = load ptr, ptr %2, align 8, !tbaa !8
  %147 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %146, i32 0, i32 18
  %148 = load i32, ptr %8, align 4, !tbaa !31
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [21 x double], ptr %147, i64 0, i64 %149
  store double 0.000000e+00, ptr %150, align 8, !tbaa !88
  br label %151

151:                                              ; preds = %135
  %152 = load i32, ptr %8, align 4, !tbaa !31
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %8, align 4, !tbaa !31
  br label %132, !llvm.loop !89

154:                                              ; preds = %132
  %155 = load ptr, ptr %2, align 8, !tbaa !8
  %156 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %155, i32 0, i32 80
  store i32 2, ptr %156, align 4, !tbaa !91
  %157 = load ptr, ptr %2, align 8, !tbaa !8
  %158 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %157, i32 0, i32 40
  store i32 0, ptr %158, align 4, !tbaa !92
  %159 = load ptr, ptr %2, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %159, i32 0, i32 42
  store i32 0, ptr %160, align 4, !tbaa !93
  %161 = load ptr, ptr %2, align 8, !tbaa !8
  %162 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %161, i32 0, i32 44
  %163 = load i32, ptr %162, align 4, !tbaa !71
  %164 = icmp sge i32 %163, 9
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 1, i32 2
  %167 = load ptr, ptr %2, align 8, !tbaa !8
  %168 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %167, i32 0, i32 51
  store i32 %166, ptr %168, align 8, !tbaa !94
  %169 = load ptr, ptr @img, align 8, !tbaa !8
  %170 = getelementptr inbounds nuw %struct.ImageParameters, ptr %169, i32 0, i32 116
  %171 = load i32, ptr %170, align 8, !tbaa !95
  %172 = load ptr, ptr %2, align 8, !tbaa !8
  %173 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %172, i32 0, i32 52
  store i32 %171, ptr %173, align 4, !tbaa !96
  %174 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_generic, ptr %174, i32 0, i32 1
  store i32 0, ptr %175, align 4, !tbaa !97
  %176 = load ptr, ptr %2, align 8, !tbaa !8
  %177 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %176, i32 0, i32 0
  %178 = load float, ptr %177, align 8, !tbaa !65
  %179 = fpext float %178 to double
  %180 = fmul double 1.000000e+00, %179
  %181 = load ptr, ptr %2, align 8, !tbaa !8
  %182 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %181, i32 0, i32 1
  %183 = load float, ptr %182, align 4, !tbaa !69
  %184 = load ptr, ptr @img, align 8, !tbaa !8
  %185 = getelementptr inbounds nuw %struct.ImageParameters, ptr %184, i32 0, i32 22
  %186 = load i32, ptr %185, align 8, !tbaa !98
  %187 = sitofp i32 %186 to float
  %188 = fmul float %183, %187
  %189 = fpext float %188 to double
  %190 = fdiv double %180, %189
  store double %190, ptr %6, align 8, !tbaa !88
  %191 = load ptr, ptr @img, align 8, !tbaa !8
  %192 = getelementptr inbounds nuw %struct.ImageParameters, ptr %191, i32 0, i32 13
  %193 = load i32, ptr %192, align 4, !tbaa !99
  %194 = icmp eq i32 %193, 176
  br i1 %194, label %195, label %196

195:                                              ; preds = %154
  store double 1.000000e-01, ptr %3, align 8, !tbaa !88
  store double 3.000000e-01, ptr %4, align 8, !tbaa !88
  store double 6.000000e-01, ptr %5, align 8, !tbaa !88
  br label %204

196:                                              ; preds = %154
  %197 = load ptr, ptr @img, align 8, !tbaa !8
  %198 = getelementptr inbounds nuw %struct.ImageParameters, ptr %197, i32 0, i32 13
  %199 = load i32, ptr %198, align 4, !tbaa !99
  %200 = icmp eq i32 %199, 352
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store double 2.000000e-01, ptr %3, align 8, !tbaa !88
  store double 6.000000e-01, ptr %4, align 8, !tbaa !88
  store double 1.200000e+00, ptr %5, align 8, !tbaa !88
  br label %203

202:                                              ; preds = %196
  store double 6.000000e-01, ptr %3, align 8, !tbaa !88
  store double 1.400000e+00, ptr %4, align 8, !tbaa !88
  store double 2.400000e+00, ptr %5, align 8, !tbaa !88
  br label %203

203:                                              ; preds = %202, %201
  br label %204

204:                                              ; preds = %203, %195
  %205 = load ptr, ptr @input, align 8, !tbaa !8
  %206 = getelementptr inbounds nuw %struct.InputParameters, ptr %205, i32 0, i32 159
  %207 = load i32, ptr %206, align 4, !tbaa !100
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %231

209:                                              ; preds = %204
  %210 = load double, ptr %6, align 8, !tbaa !88
  %211 = load double, ptr %3, align 8, !tbaa !88
  %212 = fcmp ole double %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 35, ptr %7, align 4, !tbaa !31
  br label %227

214:                                              ; preds = %209
  %215 = load double, ptr %6, align 8, !tbaa !88
  %216 = load double, ptr %4, align 8, !tbaa !88
  %217 = fcmp ole double %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 25, ptr %7, align 4, !tbaa !31
  br label %226

219:                                              ; preds = %214
  %220 = load double, ptr %6, align 8, !tbaa !88
  %221 = load double, ptr %5, align 8, !tbaa !88
  %222 = fcmp ole double %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  store i32 20, ptr %7, align 4, !tbaa !31
  br label %225

224:                                              ; preds = %219
  store i32 10, ptr %7, align 4, !tbaa !31
  br label %225

225:                                              ; preds = %224, %223
  br label %226

226:                                              ; preds = %225, %218
  br label %227

227:                                              ; preds = %226, %213
  %228 = load i32, ptr %7, align 4, !tbaa !31
  %229 = load ptr, ptr @input, align 8, !tbaa !8
  %230 = getelementptr inbounds nuw %struct.InputParameters, ptr %229, i32 0, i32 159
  store i32 %228, ptr %230, align 4, !tbaa !100
  br label %231

231:                                              ; preds = %227, %204
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #10
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @updateQPRC0(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #10
  %14 = load ptr, ptr @img, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.ImageParameters, ptr %14, i32 0, i32 132
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = load ptr, ptr @img, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw %struct.ImageParameters, ptr %17, i32 0, i32 120
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %468

21:                                               ; preds = %2
  %22 = load i32, ptr %5, align 4, !tbaa !31
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_generic, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !97
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %445

29:                                               ; preds = %24, %21
  %30 = load ptr, ptr @img, align 8, !tbaa !8
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 5
  %32 = load i32, ptr %31, align 4, !tbaa !102
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load ptr, ptr %4, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !52
  %38 = load ptr, ptr %4, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 33
  store i32 %37, ptr %39, align 8, !tbaa !48
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 33
  %42 = load i32, ptr %41, align 8, !tbaa !48
  store i32 %42, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

43:                                               ; preds = %29
  %44 = load ptr, ptr @img, align 8, !tbaa !8
  %45 = getelementptr inbounds nuw %struct.ImageParameters, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4, !tbaa !102
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %271

48:                                               ; preds = %43
  %49 = load ptr, ptr @input, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.InputParameters, ptr %49, i32 0, i32 40
  %51 = load i32, ptr %50, align 8, !tbaa !67
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %111

53:                                               ; preds = %48
  %54 = load ptr, ptr @input, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.InputParameters, ptr %54, i32 0, i32 121
  %56 = load i32, ptr %55, align 8, !tbaa !103
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr @input, align 8, !tbaa !8
  %60 = getelementptr inbounds nuw %struct.InputParameters, ptr %59, i32 0, i32 122
  %61 = load i32, ptr %60, align 4, !tbaa !104
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %53
  %64 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %64)
  br label %65

65:                                               ; preds = %63, %58
  %66 = load ptr, ptr %4, align 8, !tbaa !8
  %67 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %66, i32 0, i32 35
  %68 = load i32, ptr %67, align 8, !tbaa !105
  %69 = load ptr, ptr %4, align 8, !tbaa !8
  %70 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %69, i32 0, i32 36
  %71 = load i32, ptr %70, align 4, !tbaa !106
  %72 = call signext i32 @imin(i32 noundef signext %68, i32 noundef signext %71)
  %73 = add nsw i32 %72, 2
  %74 = load ptr, ptr %4, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %74, i32 0, i32 33
  store i32 %73, ptr %75, align 8, !tbaa !48
  %76 = load ptr, ptr %4, align 8, !tbaa !8
  %77 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %76, i32 0, i32 33
  %78 = load i32, ptr %77, align 8, !tbaa !48
  %79 = load ptr, ptr %4, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 35
  %81 = load i32, ptr %80, align 8, !tbaa !105
  %82 = load ptr, ptr %4, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %82, i32 0, i32 36
  %84 = load i32, ptr %83, align 4, !tbaa !106
  %85 = call signext i32 @imax(i32 noundef signext %81, i32 noundef signext %84)
  %86 = call signext i32 @imax(i32 noundef signext %78, i32 noundef signext %85)
  %87 = load ptr, ptr %4, align 8, !tbaa !8
  %88 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %87, i32 0, i32 33
  store i32 %86, ptr %88, align 8, !tbaa !48
  %89 = load ptr, ptr %4, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %89, i32 0, i32 33
  %91 = load i32, ptr %90, align 8, !tbaa !48
  %92 = load ptr, ptr %4, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %92, i32 0, i32 36
  %94 = load i32, ptr %93, align 4, !tbaa !106
  %95 = add nsw i32 %94, 1
  %96 = call signext i32 @imax(i32 noundef signext %91, i32 noundef signext %95)
  %97 = load ptr, ptr %4, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %97, i32 0, i32 33
  store i32 %96, ptr %98, align 8, !tbaa !48
  %99 = load ptr, ptr %4, align 8, !tbaa !8
  %100 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %99, i32 0, i32 10
  %101 = load i32, ptr %100, align 4, !tbaa !55
  %102 = load ptr, ptr %4, align 8, !tbaa !8
  %103 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %102, i32 0, i32 9
  %104 = load i32, ptr %103, align 8, !tbaa !53
  %105 = load ptr, ptr %4, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %105, i32 0, i32 33
  %107 = load i32, ptr %106, align 8, !tbaa !48
  %108 = call signext i32 @iClip3(i32 noundef signext %101, i32 noundef signext %104, i32 noundef signext %107)
  %109 = load ptr, ptr %4, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %109, i32 0, i32 33
  store i32 %108, ptr %110, align 8, !tbaa !48
  br label %267

111:                                              ; preds = %48
  %112 = load ptr, ptr %4, align 8, !tbaa !8
  %113 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %112, i32 0, i32 37
  %114 = load i32, ptr %113, align 8, !tbaa !107
  %115 = add nsw i32 %114, 1
  %116 = load ptr, ptr @input, align 8, !tbaa !8
  %117 = getelementptr inbounds nuw %struct.InputParameters, ptr %116, i32 0, i32 40
  %118 = load i32, ptr %117, align 8, !tbaa !67
  %119 = srem i32 %115, %118
  store i32 %119, ptr %7, align 4, !tbaa !31
  %120 = load i32, ptr %7, align 4, !tbaa !31
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %111
  %123 = load ptr, ptr @input, align 8, !tbaa !8
  %124 = getelementptr inbounds nuw %struct.InputParameters, ptr %123, i32 0, i32 40
  %125 = load i32, ptr %124, align 8, !tbaa !67
  store i32 %125, ptr %7, align 4, !tbaa !31
  br label %126

126:                                              ; preds = %122, %111
  %127 = load i32, ptr %7, align 4, !tbaa !31
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load ptr, ptr @input, align 8, !tbaa !8
  %131 = getelementptr inbounds nuw %struct.InputParameters, ptr %130, i32 0, i32 121
  %132 = load i32, ptr %131, align 8, !tbaa !103
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr @input, align 8, !tbaa !8
  %136 = getelementptr inbounds nuw %struct.InputParameters, ptr %135, i32 0, i32 122
  %137 = load i32, ptr %136, align 4, !tbaa !104
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %134, %129
  %140 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %140)
  br label %141

141:                                              ; preds = %139, %134
  br label %142

142:                                              ; preds = %141, %126
  %143 = load ptr, ptr %4, align 8, !tbaa !8
  %144 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %143, i32 0, i32 36
  %145 = load i32, ptr %144, align 4, !tbaa !106
  %146 = load ptr, ptr %4, align 8, !tbaa !8
  %147 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %146, i32 0, i32 35
  %148 = load i32, ptr %147, align 8, !tbaa !105
  %149 = sub nsw i32 %145, %148
  %150 = load ptr, ptr @input, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw %struct.InputParameters, ptr %150, i32 0, i32 40
  %152 = load i32, ptr %151, align 8, !tbaa !67
  %153 = mul nsw i32 -2, %152
  %154 = sub nsw i32 %153, 3
  %155 = icmp sle i32 %149, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %142
  store i32 -3, ptr %8, align 4, !tbaa !31
  br label %221

157:                                              ; preds = %142
  %158 = load ptr, ptr %4, align 8, !tbaa !8
  %159 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %158, i32 0, i32 36
  %160 = load i32, ptr %159, align 4, !tbaa !106
  %161 = load ptr, ptr %4, align 8, !tbaa !8
  %162 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %161, i32 0, i32 35
  %163 = load i32, ptr %162, align 8, !tbaa !105
  %164 = sub nsw i32 %160, %163
  %165 = load ptr, ptr @input, align 8, !tbaa !8
  %166 = getelementptr inbounds nuw %struct.InputParameters, ptr %165, i32 0, i32 40
  %167 = load i32, ptr %166, align 8, !tbaa !67
  %168 = mul nsw i32 -2, %167
  %169 = sub nsw i32 %168, 2
  %170 = icmp eq i32 %164, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %157
  store i32 -2, ptr %8, align 4, !tbaa !31
  br label %220

172:                                              ; preds = %157
  %173 = load ptr, ptr %4, align 8, !tbaa !8
  %174 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %173, i32 0, i32 36
  %175 = load i32, ptr %174, align 4, !tbaa !106
  %176 = load ptr, ptr %4, align 8, !tbaa !8
  %177 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %176, i32 0, i32 35
  %178 = load i32, ptr %177, align 8, !tbaa !105
  %179 = sub nsw i32 %175, %178
  %180 = load ptr, ptr @input, align 8, !tbaa !8
  %181 = getelementptr inbounds nuw %struct.InputParameters, ptr %180, i32 0, i32 40
  %182 = load i32, ptr %181, align 8, !tbaa !67
  %183 = mul nsw i32 -2, %182
  %184 = sub nsw i32 %183, 1
  %185 = icmp eq i32 %179, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %172
  store i32 -1, ptr %8, align 4, !tbaa !31
  br label %219

187:                                              ; preds = %172
  %188 = load ptr, ptr %4, align 8, !tbaa !8
  %189 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %188, i32 0, i32 36
  %190 = load i32, ptr %189, align 4, !tbaa !106
  %191 = load ptr, ptr %4, align 8, !tbaa !8
  %192 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %191, i32 0, i32 35
  %193 = load i32, ptr %192, align 8, !tbaa !105
  %194 = sub nsw i32 %190, %193
  %195 = load ptr, ptr @input, align 8, !tbaa !8
  %196 = getelementptr inbounds nuw %struct.InputParameters, ptr %195, i32 0, i32 40
  %197 = load i32, ptr %196, align 8, !tbaa !67
  %198 = mul nsw i32 -2, %197
  %199 = icmp eq i32 %194, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %187
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %218

201:                                              ; preds = %187
  %202 = load ptr, ptr %4, align 8, !tbaa !8
  %203 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %202, i32 0, i32 36
  %204 = load i32, ptr %203, align 4, !tbaa !106
  %205 = load ptr, ptr %4, align 8, !tbaa !8
  %206 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %205, i32 0, i32 35
  %207 = load i32, ptr %206, align 8, !tbaa !105
  %208 = sub nsw i32 %204, %207
  %209 = load ptr, ptr @input, align 8, !tbaa !8
  %210 = getelementptr inbounds nuw %struct.InputParameters, ptr %209, i32 0, i32 40
  %211 = load i32, ptr %210, align 8, !tbaa !67
  %212 = mul nsw i32 -2, %211
  %213 = add nsw i32 %212, 1
  %214 = icmp eq i32 %208, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %201
  store i32 1, ptr %8, align 4, !tbaa !31
  br label %217

216:                                              ; preds = %201
  store i32 2, ptr %8, align 4, !tbaa !31
  br label %217

217:                                              ; preds = %216, %215
  br label %218

218:                                              ; preds = %217, %200
  br label %219

219:                                              ; preds = %218, %186
  br label %220

220:                                              ; preds = %219, %171
  br label %221

221:                                              ; preds = %220, %156
  %222 = load ptr, ptr %4, align 8, !tbaa !8
  %223 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %222, i32 0, i32 35
  %224 = load i32, ptr %223, align 8, !tbaa !105
  %225 = load i32, ptr %8, align 4, !tbaa !31
  %226 = add nsw i32 %224, %225
  %227 = load ptr, ptr %4, align 8, !tbaa !8
  %228 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %227, i32 0, i32 33
  store i32 %226, ptr %228, align 8, !tbaa !48
  %229 = load i32, ptr %7, align 4, !tbaa !31
  %230 = sub nsw i32 %229, 1
  %231 = mul nsw i32 -2, %230
  %232 = load i32, ptr %7, align 4, !tbaa !31
  %233 = sub nsw i32 %232, 1
  %234 = mul nsw i32 2, %233
  %235 = load i32, ptr %7, align 4, !tbaa !31
  %236 = sub nsw i32 %235, 1
  %237 = load ptr, ptr %4, align 8, !tbaa !8
  %238 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %237, i32 0, i32 36
  %239 = load i32, ptr %238, align 4, !tbaa !106
  %240 = load ptr, ptr %4, align 8, !tbaa !8
  %241 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %240, i32 0, i32 35
  %242 = load i32, ptr %241, align 8, !tbaa !105
  %243 = sub nsw i32 %239, %242
  %244 = mul nsw i32 %236, %243
  %245 = load ptr, ptr @input, align 8, !tbaa !8
  %246 = getelementptr inbounds nuw %struct.InputParameters, ptr %245, i32 0, i32 40
  %247 = load i32, ptr %246, align 8, !tbaa !67
  %248 = sub nsw i32 %247, 1
  %249 = sdiv i32 %244, %248
  %250 = call signext i32 @iClip3(i32 noundef signext %231, i32 noundef signext %234, i32 noundef signext %249)
  %251 = load ptr, ptr %4, align 8, !tbaa !8
  %252 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %251, i32 0, i32 33
  %253 = load i32, ptr %252, align 8, !tbaa !48
  %254 = add nsw i32 %253, %250
  store i32 %254, ptr %252, align 8, !tbaa !48
  %255 = load ptr, ptr %4, align 8, !tbaa !8
  %256 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %255, i32 0, i32 10
  %257 = load i32, ptr %256, align 4, !tbaa !55
  %258 = load ptr, ptr %4, align 8, !tbaa !8
  %259 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %258, i32 0, i32 9
  %260 = load i32, ptr %259, align 8, !tbaa !53
  %261 = load ptr, ptr %4, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %261, i32 0, i32 33
  %263 = load i32, ptr %262, align 8, !tbaa !48
  %264 = call signext i32 @iClip3(i32 noundef signext %257, i32 noundef signext %260, i32 noundef signext %263)
  %265 = load ptr, ptr %4, align 8, !tbaa !8
  %266 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %265, i32 0, i32 33
  store i32 %264, ptr %266, align 8, !tbaa !48
  br label %267

267:                                              ; preds = %221, %65
  %268 = load ptr, ptr %4, align 8, !tbaa !8
  %269 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %268, i32 0, i32 33
  %270 = load i32, ptr %269, align 8, !tbaa !48
  store i32 %270, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

271:                                              ; preds = %43
  %272 = load ptr, ptr @img, align 8, !tbaa !8
  %273 = getelementptr inbounds nuw %struct.ImageParameters, ptr %272, i32 0, i32 5
  %274 = load i32, ptr %273, align 4, !tbaa !102
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %304

276:                                              ; preds = %271
  %277 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %278 = getelementptr inbounds nuw %struct.rc_generic, ptr %277, i32 0, i32 12
  %279 = load i32, ptr %278, align 8, !tbaa !108
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %304

281:                                              ; preds = %276
  %282 = load ptr, ptr @img, align 8, !tbaa !8
  %283 = getelementptr inbounds nuw %struct.ImageParameters, ptr %282, i32 0, i32 0
  %284 = load i32, ptr %283, align 8, !tbaa !109
  %285 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %286 = sub nsw i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %304

288:                                              ; preds = %281
  %289 = load ptr, ptr %4, align 8, !tbaa !8
  %290 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %289, i32 0, i32 11
  %291 = load i32, ptr %290, align 8, !tbaa !52
  %292 = load ptr, ptr %4, align 8, !tbaa !8
  %293 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %292, i32 0, i32 33
  store i32 %291, ptr %293, align 8, !tbaa !48
  %294 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %295 = getelementptr inbounds nuw %struct.rc_generic, ptr %294, i32 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !97
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %300

298:                                              ; preds = %288
  %299 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %299)
  br label %300

300:                                              ; preds = %298, %288
  %301 = load ptr, ptr %4, align 8, !tbaa !8
  %302 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %301, i32 0, i32 33
  %303 = load i32, ptr %302, align 8, !tbaa !48
  store i32 %303, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

304:                                              ; preds = %281, %276, %271
  %305 = load ptr, ptr @input, align 8, !tbaa !8
  %306 = getelementptr inbounds nuw %struct.InputParameters, ptr %305, i32 0, i32 121
  %307 = load i32, ptr %306, align 8, !tbaa !103
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %314, label %309

309:                                              ; preds = %304
  %310 = load ptr, ptr @input, align 8, !tbaa !8
  %311 = getelementptr inbounds nuw %struct.InputParameters, ptr %310, i32 0, i32 122
  %312 = load i32, ptr %311, align 4, !tbaa !104
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %309, %304
  %315 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %316 = getelementptr inbounds nuw %struct.rc_generic, ptr %315, i32 0, i32 1
  %317 = load i32, ptr %316, align 4, !tbaa !97
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %314
  %320 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlaceBU(ptr noundef %320)
  br label %321

321:                                              ; preds = %319, %314, %309
  %322 = load ptr, ptr %4, align 8, !tbaa !8
  %323 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %322, i32 0, i32 27
  %324 = load double, ptr %323, align 8, !tbaa !84
  %325 = load ptr, ptr %4, align 8, !tbaa !8
  %326 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %325, i32 0, i32 25
  store double %324, ptr %326, align 8, !tbaa !110
  %327 = load ptr, ptr %4, align 8, !tbaa !8
  %328 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %327, i32 0, i32 28
  %329 = load double, ptr %328, align 8, !tbaa !85
  %330 = load ptr, ptr %4, align 8, !tbaa !8
  %331 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %330, i32 0, i32 26
  store double %329, ptr %331, align 8, !tbaa !111
  %332 = load ptr, ptr %4, align 8, !tbaa !8
  %333 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %332, i32 0, i32 16
  %334 = load double, ptr %333, align 8, !tbaa !86
  %335 = load ptr, ptr %4, align 8, !tbaa !8
  %336 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %335, i32 0, i32 14
  store double %334, ptr %336, align 8, !tbaa !112
  %337 = load ptr, ptr %4, align 8, !tbaa !8
  %338 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %337, i32 0, i32 17
  %339 = load double, ptr %338, align 8, !tbaa !87
  %340 = load ptr, ptr %4, align 8, !tbaa !8
  %341 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %340, i32 0, i32 15
  store double %339, ptr %341, align 8, !tbaa !113
  %342 = load ptr, ptr %4, align 8, !tbaa !8
  %343 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %342, i32 0, i32 18
  %344 = getelementptr inbounds [21 x double], ptr %343, i64 0, i64 0
  %345 = load double, ptr %344, align 8, !tbaa !88
  %346 = load ptr, ptr %4, align 8, !tbaa !8
  %347 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %346, i32 0, i32 13
  store double %345, ptr %347, align 8, !tbaa !114
  %348 = load ptr, ptr %4, align 8, !tbaa !8
  %349 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %348, i32 0, i32 80
  %350 = load i32, ptr %349, align 4, !tbaa !91
  store i32 %350, ptr %10, align 4, !tbaa !31
  %351 = load ptr, ptr %4, align 8, !tbaa !8
  %352 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %351, i32 0, i32 29
  %353 = load i32, ptr %352, align 8, !tbaa !115
  store i32 %353, ptr %11, align 4, !tbaa !31
  %354 = load ptr, ptr %4, align 8, !tbaa !8
  %355 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %354, i32 0, i32 34
  %356 = load i32, ptr %355, align 4, !tbaa !83
  store i32 %356, ptr %12, align 4, !tbaa !31
  %357 = load ptr, ptr %4, align 8, !tbaa !8
  %358 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %357, i32 0, i32 14
  %359 = load double, ptr %358, align 8, !tbaa !112
  %360 = load ptr, ptr %4, align 8, !tbaa !8
  %361 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %360, i32 0, i32 13
  %362 = load double, ptr %361, align 8, !tbaa !114
  %363 = load ptr, ptr %4, align 8, !tbaa !8
  %364 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %363, i32 0, i32 15
  %365 = load double, ptr %364, align 8, !tbaa !113
  %366 = call double @llvm.fmuladd.f64(double %359, double %362, double %365)
  %367 = load ptr, ptr %4, align 8, !tbaa !8
  %368 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %367, i32 0, i32 46
  store double %366, ptr %368, align 8, !tbaa !36
  %369 = load ptr, ptr %4, align 8, !tbaa !8
  %370 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %369, i32 0, i32 68
  %371 = load i32, ptr %370, align 8, !tbaa !39
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %391

373:                                              ; preds = %321
  %374 = load i32, ptr %11, align 4, !tbaa !31
  %375 = load i32, ptr %10, align 4, !tbaa !31
  %376 = add nsw i32 %374, %375
  %377 = load ptr, ptr %4, align 8, !tbaa !8
  %378 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %377, i32 0, i32 33
  store i32 %376, ptr %378, align 8, !tbaa !48
  %379 = load ptr, ptr %4, align 8, !tbaa !8
  %380 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %379, i32 0, i32 10
  %381 = load i32, ptr %380, align 4, !tbaa !55
  %382 = load ptr, ptr %4, align 8, !tbaa !8
  %383 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %382, i32 0, i32 9
  %384 = load i32, ptr %383, align 8, !tbaa !53
  %385 = load ptr, ptr %4, align 8, !tbaa !8
  %386 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %385, i32 0, i32 33
  %387 = load i32, ptr %386, align 8, !tbaa !48
  %388 = call signext i32 @iClip3(i32 noundef signext %381, i32 noundef signext %384, i32 noundef signext %387)
  %389 = load ptr, ptr %4, align 8, !tbaa !8
  %390 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %389, i32 0, i32 33
  store i32 %388, ptr %390, align 8, !tbaa !48
  br label %434

391:                                              ; preds = %321
  %392 = load ptr, ptr %4, align 8, !tbaa !8
  %393 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %392, i32 0, i32 68
  %394 = load i32, ptr %393, align 8, !tbaa !39
  %395 = load i32, ptr %12, align 4, !tbaa !31
  %396 = sub nsw i32 %394, %395
  store i32 %396, ptr %6, align 4, !tbaa !31
  %397 = load i32, ptr %6, align 4, !tbaa !31
  %398 = load ptr, ptr %4, align 8, !tbaa !8
  %399 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %398, i32 0, i32 0
  %400 = load float, ptr %399, align 8, !tbaa !65
  %401 = load ptr, ptr %4, align 8, !tbaa !8
  %402 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %401, i32 0, i32 1
  %403 = load float, ptr %402, align 4, !tbaa !69
  %404 = fmul float 4.000000e+00, %403
  %405 = fdiv float %400, %404
  %406 = fptosi float %405 to i32
  %407 = call signext i32 @imax(i32 noundef signext %397, i32 noundef signext %406)
  store i32 %407, ptr %6, align 4, !tbaa !31
  %408 = load ptr, ptr %4, align 8, !tbaa !8
  %409 = load i32, ptr %6, align 4, !tbaa !31
  call void @updateModelQPFrame(ptr noundef %408, i32 noundef signext %409)
  %410 = load ptr, ptr %4, align 8, !tbaa !8
  %411 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %410, i32 0, i32 10
  %412 = load i32, ptr %411, align 4, !tbaa !55
  %413 = load ptr, ptr %4, align 8, !tbaa !8
  %414 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %413, i32 0, i32 9
  %415 = load i32, ptr %414, align 8, !tbaa !53
  %416 = load ptr, ptr %4, align 8, !tbaa !8
  %417 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %416, i32 0, i32 33
  %418 = load i32, ptr %417, align 8, !tbaa !48
  %419 = call signext i32 @iClip3(i32 noundef signext %412, i32 noundef signext %415, i32 noundef signext %418)
  %420 = load ptr, ptr %4, align 8, !tbaa !8
  %421 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %420, i32 0, i32 33
  store i32 %419, ptr %421, align 8, !tbaa !48
  %422 = load i32, ptr %11, align 4, !tbaa !31
  %423 = load i32, ptr %10, align 4, !tbaa !31
  %424 = sub nsw i32 %422, %423
  %425 = load i32, ptr %11, align 4, !tbaa !31
  %426 = load i32, ptr %10, align 4, !tbaa !31
  %427 = add nsw i32 %425, %426
  %428 = load ptr, ptr %4, align 8, !tbaa !8
  %429 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %428, i32 0, i32 33
  %430 = load i32, ptr %429, align 8, !tbaa !48
  %431 = call signext i32 @iClip3(i32 noundef signext %424, i32 noundef signext %427, i32 noundef signext %430)
  %432 = load ptr, ptr %4, align 8, !tbaa !8
  %433 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %432, i32 0, i32 33
  store i32 %431, ptr %433, align 8, !tbaa !48
  br label %434

434:                                              ; preds = %391, %373
  %435 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %436 = getelementptr inbounds nuw %struct.rc_generic, ptr %435, i32 0, i32 1
  %437 = load i32, ptr %436, align 4, !tbaa !97
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %440)
  br label %441

441:                                              ; preds = %439, %434
  %442 = load ptr, ptr %4, align 8, !tbaa !8
  %443 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %442, i32 0, i32 33
  %444 = load i32, ptr %443, align 8, !tbaa !48
  store i32 %444, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

445:                                              ; preds = %24
  %446 = load ptr, ptr @img, align 8, !tbaa !8
  %447 = getelementptr inbounds nuw %struct.ImageParameters, ptr %446, i32 0, i32 5
  %448 = load i32, ptr %447, align 4, !tbaa !102
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %464

450:                                              ; preds = %445
  %451 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %452 = getelementptr inbounds nuw %struct.rc_generic, ptr %451, i32 0, i32 3
  %453 = load i32, ptr %452, align 4, !tbaa !116
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %450
  %456 = load ptr, ptr @img, align 8, !tbaa !8
  %457 = getelementptr inbounds nuw %struct.ImageParameters, ptr %456, i32 0, i32 0
  %458 = load i32, ptr %457, align 8, !tbaa !109
  %459 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %460 = sub nsw i32 %458, %459
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %464

462:                                              ; preds = %455
  %463 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateBottomField(ptr noundef %463)
  br label %464

464:                                              ; preds = %462, %455, %450, %445
  %465 = load ptr, ptr %4, align 8, !tbaa !8
  %466 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %465, i32 0, i32 33
  %467 = load i32, ptr %466, align 8, !tbaa !48
  store i32 %467, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

468:                                              ; preds = %2
  %469 = load ptr, ptr @img, align 8, !tbaa !8
  %470 = getelementptr inbounds nuw %struct.ImageParameters, ptr %469, i32 0, i32 5
  %471 = load i32, ptr %470, align 4, !tbaa !102
  %472 = icmp eq i32 %471, 2
  br i1 %472, label %480, label %473

473:                                              ; preds = %468
  %474 = load ptr, ptr @img, align 8, !tbaa !8
  %475 = getelementptr inbounds nuw %struct.ImageParameters, ptr %474, i32 0, i32 0
  %476 = load i32, ptr %475, align 8, !tbaa !109
  %477 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %478 = sub nsw i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %489, label %480

480:                                              ; preds = %473, %468
  %481 = load ptr, ptr %4, align 8, !tbaa !8
  %482 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %481, i32 0, i32 11
  %483 = load i32, ptr %482, align 8, !tbaa !52
  %484 = load ptr, ptr %4, align 8, !tbaa !8
  %485 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %484, i32 0, i32 33
  store i32 %483, ptr %485, align 8, !tbaa !48
  %486 = load ptr, ptr %4, align 8, !tbaa !8
  %487 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %486, i32 0, i32 33
  %488 = load i32, ptr %487, align 8, !tbaa !48
  store i32 %488, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

489:                                              ; preds = %473
  %490 = load ptr, ptr @img, align 8, !tbaa !8
  %491 = getelementptr inbounds nuw %struct.ImageParameters, ptr %490, i32 0, i32 5
  %492 = load i32, ptr %491, align 4, !tbaa !102
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %494, label %723

494:                                              ; preds = %489
  %495 = load i32, ptr %5, align 4, !tbaa !31
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %502, label %497

497:                                              ; preds = %494
  %498 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %499 = getelementptr inbounds nuw %struct.rc_generic, ptr %498, i32 0, i32 1
  %500 = load i32, ptr %499, align 4, !tbaa !97
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %502, label %719

502:                                              ; preds = %497, %494
  %503 = load ptr, ptr @input, align 8, !tbaa !8
  %504 = getelementptr inbounds nuw %struct.InputParameters, ptr %503, i32 0, i32 40
  %505 = load i32, ptr %504, align 8, !tbaa !67
  %506 = icmp eq i32 %505, 1
  br i1 %506, label %507, label %559

507:                                              ; preds = %502
  %508 = load ptr, ptr @input, align 8, !tbaa !8
  %509 = getelementptr inbounds nuw %struct.InputParameters, ptr %508, i32 0, i32 121
  %510 = load i32, ptr %509, align 8, !tbaa !103
  %511 = icmp eq i32 %510, 2
  br i1 %511, label %517, label %512

512:                                              ; preds = %507
  %513 = load ptr, ptr @input, align 8, !tbaa !8
  %514 = getelementptr inbounds nuw %struct.InputParameters, ptr %513, i32 0, i32 122
  %515 = load i32, ptr %514, align 4, !tbaa !104
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %512, %507
  %518 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %518)
  br label %519

519:                                              ; preds = %517, %512
  %520 = load ptr, ptr %4, align 8, !tbaa !8
  %521 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %520, i32 0, i32 35
  %522 = load i32, ptr %521, align 8, !tbaa !105
  %523 = load ptr, ptr %4, align 8, !tbaa !8
  %524 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %523, i32 0, i32 36
  %525 = load i32, ptr %524, align 4, !tbaa !106
  %526 = icmp eq i32 %522, %525
  br i1 %526, label %527, label %534

527:                                              ; preds = %519
  %528 = load ptr, ptr %4, align 8, !tbaa !8
  %529 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %528, i32 0, i32 35
  %530 = load i32, ptr %529, align 8, !tbaa !105
  %531 = add nsw i32 %530, 2
  %532 = load ptr, ptr %4, align 8, !tbaa !8
  %533 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %532, i32 0, i32 33
  store i32 %531, ptr %533, align 8, !tbaa !48
  br label %546

534:                                              ; preds = %519
  %535 = load ptr, ptr %4, align 8, !tbaa !8
  %536 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %535, i32 0, i32 35
  %537 = load i32, ptr %536, align 8, !tbaa !105
  %538 = load ptr, ptr %4, align 8, !tbaa !8
  %539 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %538, i32 0, i32 36
  %540 = load i32, ptr %539, align 4, !tbaa !106
  %541 = add nsw i32 %537, %540
  %542 = sdiv i32 %541, 2
  %543 = add nsw i32 %542, 1
  %544 = load ptr, ptr %4, align 8, !tbaa !8
  %545 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %544, i32 0, i32 33
  store i32 %543, ptr %545, align 8, !tbaa !48
  br label %546

546:                                              ; preds = %534, %527
  %547 = load ptr, ptr %4, align 8, !tbaa !8
  %548 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %547, i32 0, i32 10
  %549 = load i32, ptr %548, align 4, !tbaa !55
  %550 = load ptr, ptr %4, align 8, !tbaa !8
  %551 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %550, i32 0, i32 9
  %552 = load i32, ptr %551, align 8, !tbaa !53
  %553 = load ptr, ptr %4, align 8, !tbaa !8
  %554 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %553, i32 0, i32 33
  %555 = load i32, ptr %554, align 8, !tbaa !48
  %556 = call signext i32 @iClip3(i32 noundef signext %549, i32 noundef signext %552, i32 noundef signext %555)
  %557 = load ptr, ptr %4, align 8, !tbaa !8
  %558 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %557, i32 0, i32 33
  store i32 %556, ptr %558, align 8, !tbaa !48
  br label %715

559:                                              ; preds = %502
  %560 = load ptr, ptr %4, align 8, !tbaa !8
  %561 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %560, i32 0, i32 37
  %562 = load i32, ptr %561, align 8, !tbaa !107
  %563 = add nsw i32 %562, 1
  %564 = load ptr, ptr @input, align 8, !tbaa !8
  %565 = getelementptr inbounds nuw %struct.InputParameters, ptr %564, i32 0, i32 40
  %566 = load i32, ptr %565, align 8, !tbaa !67
  %567 = srem i32 %563, %566
  store i32 %567, ptr %7, align 4, !tbaa !31
  %568 = load i32, ptr %7, align 4, !tbaa !31
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %570, label %574

570:                                              ; preds = %559
  %571 = load ptr, ptr @input, align 8, !tbaa !8
  %572 = getelementptr inbounds nuw %struct.InputParameters, ptr %571, i32 0, i32 40
  %573 = load i32, ptr %572, align 8, !tbaa !67
  store i32 %573, ptr %7, align 4, !tbaa !31
  br label %574

574:                                              ; preds = %570, %559
  %575 = load i32, ptr %7, align 4, !tbaa !31
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %577, label %590

577:                                              ; preds = %574
  %578 = load ptr, ptr @input, align 8, !tbaa !8
  %579 = getelementptr inbounds nuw %struct.InputParameters, ptr %578, i32 0, i32 121
  %580 = load i32, ptr %579, align 8, !tbaa !103
  %581 = icmp eq i32 %580, 2
  br i1 %581, label %587, label %582

582:                                              ; preds = %577
  %583 = load ptr, ptr @input, align 8, !tbaa !8
  %584 = getelementptr inbounds nuw %struct.InputParameters, ptr %583, i32 0, i32 122
  %585 = load i32, ptr %584, align 4, !tbaa !104
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %582, %577
  %588 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %588)
  br label %589

589:                                              ; preds = %587, %582
  br label %590

590:                                              ; preds = %589, %574
  %591 = load ptr, ptr %4, align 8, !tbaa !8
  %592 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %591, i32 0, i32 36
  %593 = load i32, ptr %592, align 4, !tbaa !106
  %594 = load ptr, ptr %4, align 8, !tbaa !8
  %595 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %594, i32 0, i32 35
  %596 = load i32, ptr %595, align 8, !tbaa !105
  %597 = sub nsw i32 %593, %596
  %598 = load ptr, ptr @input, align 8, !tbaa !8
  %599 = getelementptr inbounds nuw %struct.InputParameters, ptr %598, i32 0, i32 40
  %600 = load i32, ptr %599, align 8, !tbaa !67
  %601 = mul nsw i32 -2, %600
  %602 = sub nsw i32 %601, 3
  %603 = icmp sle i32 %597, %602
  br i1 %603, label %604, label %605

604:                                              ; preds = %590
  store i32 -3, ptr %8, align 4, !tbaa !31
  br label %669

605:                                              ; preds = %590
  %606 = load ptr, ptr %4, align 8, !tbaa !8
  %607 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %606, i32 0, i32 36
  %608 = load i32, ptr %607, align 4, !tbaa !106
  %609 = load ptr, ptr %4, align 8, !tbaa !8
  %610 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %609, i32 0, i32 35
  %611 = load i32, ptr %610, align 8, !tbaa !105
  %612 = sub nsw i32 %608, %611
  %613 = load ptr, ptr @input, align 8, !tbaa !8
  %614 = getelementptr inbounds nuw %struct.InputParameters, ptr %613, i32 0, i32 40
  %615 = load i32, ptr %614, align 8, !tbaa !67
  %616 = mul nsw i32 -2, %615
  %617 = sub nsw i32 %616, 2
  %618 = icmp eq i32 %612, %617
  br i1 %618, label %619, label %620

619:                                              ; preds = %605
  store i32 -2, ptr %8, align 4, !tbaa !31
  br label %668

620:                                              ; preds = %605
  %621 = load ptr, ptr %4, align 8, !tbaa !8
  %622 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %621, i32 0, i32 36
  %623 = load i32, ptr %622, align 4, !tbaa !106
  %624 = load ptr, ptr %4, align 8, !tbaa !8
  %625 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %624, i32 0, i32 35
  %626 = load i32, ptr %625, align 8, !tbaa !105
  %627 = sub nsw i32 %623, %626
  %628 = load ptr, ptr @input, align 8, !tbaa !8
  %629 = getelementptr inbounds nuw %struct.InputParameters, ptr %628, i32 0, i32 40
  %630 = load i32, ptr %629, align 8, !tbaa !67
  %631 = mul nsw i32 -2, %630
  %632 = sub nsw i32 %631, 1
  %633 = icmp eq i32 %627, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %620
  store i32 -1, ptr %8, align 4, !tbaa !31
  br label %667

635:                                              ; preds = %620
  %636 = load ptr, ptr %4, align 8, !tbaa !8
  %637 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %636, i32 0, i32 36
  %638 = load i32, ptr %637, align 4, !tbaa !106
  %639 = load ptr, ptr %4, align 8, !tbaa !8
  %640 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %639, i32 0, i32 35
  %641 = load i32, ptr %640, align 8, !tbaa !105
  %642 = sub nsw i32 %638, %641
  %643 = load ptr, ptr @input, align 8, !tbaa !8
  %644 = getelementptr inbounds nuw %struct.InputParameters, ptr %643, i32 0, i32 40
  %645 = load i32, ptr %644, align 8, !tbaa !67
  %646 = mul nsw i32 -2, %645
  %647 = icmp eq i32 %642, %646
  br i1 %647, label %648, label %649

648:                                              ; preds = %635
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %666

649:                                              ; preds = %635
  %650 = load ptr, ptr %4, align 8, !tbaa !8
  %651 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %650, i32 0, i32 36
  %652 = load i32, ptr %651, align 4, !tbaa !106
  %653 = load ptr, ptr %4, align 8, !tbaa !8
  %654 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %653, i32 0, i32 35
  %655 = load i32, ptr %654, align 8, !tbaa !105
  %656 = sub nsw i32 %652, %655
  %657 = load ptr, ptr @input, align 8, !tbaa !8
  %658 = getelementptr inbounds nuw %struct.InputParameters, ptr %657, i32 0, i32 40
  %659 = load i32, ptr %658, align 8, !tbaa !67
  %660 = mul nsw i32 -2, %659
  %661 = add nsw i32 %660, 1
  %662 = icmp eq i32 %656, %661
  br i1 %662, label %663, label %664

663:                                              ; preds = %649
  store i32 1, ptr %8, align 4, !tbaa !31
  br label %665

664:                                              ; preds = %649
  store i32 2, ptr %8, align 4, !tbaa !31
  br label %665

665:                                              ; preds = %664, %663
  br label %666

666:                                              ; preds = %665, %648
  br label %667

667:                                              ; preds = %666, %634
  br label %668

668:                                              ; preds = %667, %619
  br label %669

669:                                              ; preds = %668, %604
  %670 = load ptr, ptr %4, align 8, !tbaa !8
  %671 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %670, i32 0, i32 35
  %672 = load i32, ptr %671, align 8, !tbaa !105
  %673 = load i32, ptr %8, align 4, !tbaa !31
  %674 = add nsw i32 %672, %673
  %675 = load ptr, ptr %4, align 8, !tbaa !8
  %676 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %675, i32 0, i32 33
  store i32 %674, ptr %676, align 8, !tbaa !48
  %677 = load i32, ptr %7, align 4, !tbaa !31
  %678 = sub nsw i32 %677, 1
  %679 = mul nsw i32 -2, %678
  %680 = load i32, ptr %7, align 4, !tbaa !31
  %681 = sub nsw i32 %680, 1
  %682 = mul nsw i32 2, %681
  %683 = load i32, ptr %7, align 4, !tbaa !31
  %684 = sub nsw i32 %683, 1
  %685 = load ptr, ptr %4, align 8, !tbaa !8
  %686 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %685, i32 0, i32 36
  %687 = load i32, ptr %686, align 4, !tbaa !106
  %688 = load ptr, ptr %4, align 8, !tbaa !8
  %689 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %688, i32 0, i32 35
  %690 = load i32, ptr %689, align 8, !tbaa !105
  %691 = sub nsw i32 %687, %690
  %692 = mul nsw i32 %684, %691
  %693 = load ptr, ptr @input, align 8, !tbaa !8
  %694 = getelementptr inbounds nuw %struct.InputParameters, ptr %693, i32 0, i32 40
  %695 = load i32, ptr %694, align 8, !tbaa !67
  %696 = sub nsw i32 %695, 1
  %697 = sdiv i32 %692, %696
  %698 = call signext i32 @iClip3(i32 noundef signext %679, i32 noundef signext %682, i32 noundef signext %697)
  %699 = load ptr, ptr %4, align 8, !tbaa !8
  %700 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %699, i32 0, i32 33
  %701 = load i32, ptr %700, align 8, !tbaa !48
  %702 = add nsw i32 %701, %698
  store i32 %702, ptr %700, align 8, !tbaa !48
  %703 = load ptr, ptr %4, align 8, !tbaa !8
  %704 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %703, i32 0, i32 10
  %705 = load i32, ptr %704, align 4, !tbaa !55
  %706 = load ptr, ptr %4, align 8, !tbaa !8
  %707 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %706, i32 0, i32 9
  %708 = load i32, ptr %707, align 8, !tbaa !53
  %709 = load ptr, ptr %4, align 8, !tbaa !8
  %710 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %709, i32 0, i32 33
  %711 = load i32, ptr %710, align 8, !tbaa !48
  %712 = call signext i32 @iClip3(i32 noundef signext %705, i32 noundef signext %708, i32 noundef signext %711)
  %713 = load ptr, ptr %4, align 8, !tbaa !8
  %714 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %713, i32 0, i32 33
  store i32 %712, ptr %714, align 8, !tbaa !48
  br label %715

715:                                              ; preds = %669, %546
  %716 = load ptr, ptr %4, align 8, !tbaa !8
  %717 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %716, i32 0, i32 33
  %718 = load i32, ptr %717, align 8, !tbaa !48
  store i32 %718, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

719:                                              ; preds = %497
  %720 = load ptr, ptr %4, align 8, !tbaa !8
  %721 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %720, i32 0, i32 33
  %722 = load i32, ptr %721, align 8, !tbaa !48
  store i32 %722, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

723:                                              ; preds = %489
  %724 = load ptr, ptr @img, align 8, !tbaa !8
  %725 = getelementptr inbounds nuw %struct.ImageParameters, ptr %724, i32 0, i32 5
  %726 = load i32, ptr %725, align 4, !tbaa !102
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %728, label %875

728:                                              ; preds = %723
  %729 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %730 = getelementptr inbounds nuw %struct.rc_generic, ptr %729, i32 0, i32 10
  %731 = load i32, ptr %730, align 8, !tbaa !79
  %732 = icmp eq i32 %731, 1
  br i1 %732, label %733, label %758

733:                                              ; preds = %728
  %734 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %735 = getelementptr inbounds nuw %struct.rc_generic, ptr %734, i32 0, i32 12
  %736 = load i32, ptr %735, align 8, !tbaa !108
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %758

738:                                              ; preds = %733
  %739 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %740 = getelementptr inbounds nuw %struct.rc_generic, ptr %739, i32 0, i32 1
  %741 = load i32, ptr %740, align 4, !tbaa !97
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %753, label %743

743:                                              ; preds = %738
  %744 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %745 = getelementptr inbounds nuw %struct.rc_generic, ptr %744, i32 0, i32 1
  %746 = load i32, ptr %745, align 4, !tbaa !97
  %747 = icmp eq i32 %746, 1
  br i1 %747, label %748, label %757

748:                                              ; preds = %743
  %749 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %750 = getelementptr inbounds nuw %struct.rc_generic, ptr %749, i32 0, i32 3
  %751 = load i32, ptr %750, align 4, !tbaa !116
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %753, label %757

753:                                              ; preds = %748, %738
  %754 = load ptr, ptr %4, align 8, !tbaa !8
  %755 = load i32, ptr %5, align 4, !tbaa !31
  %756 = call signext i32 @updateFirstP(ptr noundef %754, i32 noundef signext %755)
  store i32 %756, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

757:                                              ; preds = %748, %743
  br label %874

758:                                              ; preds = %733, %728
  %759 = load ptr, ptr %4, align 8, !tbaa !8
  %760 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %759, i32 0, i32 27
  %761 = load double, ptr %760, align 8, !tbaa !84
  %762 = load ptr, ptr %4, align 8, !tbaa !8
  %763 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %762, i32 0, i32 25
  store double %761, ptr %763, align 8, !tbaa !110
  %764 = load ptr, ptr %4, align 8, !tbaa !8
  %765 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %764, i32 0, i32 28
  %766 = load double, ptr %765, align 8, !tbaa !85
  %767 = load ptr, ptr %4, align 8, !tbaa !8
  %768 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %767, i32 0, i32 26
  store double %766, ptr %768, align 8, !tbaa !111
  %769 = load ptr, ptr %4, align 8, !tbaa !8
  %770 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %769, i32 0, i32 16
  %771 = load double, ptr %770, align 8, !tbaa !86
  %772 = load ptr, ptr %4, align 8, !tbaa !8
  %773 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %772, i32 0, i32 14
  store double %771, ptr %773, align 8, !tbaa !112
  %774 = load ptr, ptr %4, align 8, !tbaa !8
  %775 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %774, i32 0, i32 17
  %776 = load double, ptr %775, align 8, !tbaa !87
  %777 = load ptr, ptr %4, align 8, !tbaa !8
  %778 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %777, i32 0, i32 15
  store double %776, ptr %778, align 8, !tbaa !113
  %779 = load ptr, ptr %4, align 8, !tbaa !8
  %780 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %779, i32 0, i32 29
  %781 = load i32, ptr %780, align 8, !tbaa !115
  store i32 %781, ptr %11, align 4, !tbaa !31
  %782 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %783 = getelementptr inbounds nuw %struct.rc_generic, ptr %782, i32 0, i32 1
  %784 = load i32, ptr %783, align 4, !tbaa !97
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %786, label %790

786:                                              ; preds = %758
  %787 = load ptr, ptr %4, align 8, !tbaa !8
  %788 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %787, i32 0, i32 44
  %789 = load i32, ptr %788, align 4, !tbaa !71
  store i32 %789, ptr %9, align 4, !tbaa !31
  br label %795

790:                                              ; preds = %758
  %791 = load ptr, ptr %4, align 8, !tbaa !8
  %792 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %791, i32 0, i32 44
  %793 = load i32, ptr %792, align 4, !tbaa !71
  %794 = ashr i32 %793, 1
  store i32 %794, ptr %9, align 4, !tbaa !31
  br label %795

795:                                              ; preds = %790, %786
  %796 = load ptr, ptr %4, align 8, !tbaa !8
  %797 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %796, i32 0, i32 39
  %798 = load i32, ptr %797, align 8, !tbaa !117
  %799 = load i32, ptr %9, align 4, !tbaa !31
  %800 = icmp eq i32 %798, %799
  br i1 %800, label %801, label %805

801:                                              ; preds = %795
  %802 = load ptr, ptr %4, align 8, !tbaa !8
  %803 = load i32, ptr %5, align 4, !tbaa !31
  %804 = call signext i32 @updateFirstBU(ptr noundef %802, i32 noundef signext %803)
  store i32 %804, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

805:                                              ; preds = %795
  %806 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %807 = getelementptr inbounds nuw %struct.rc_generic, ptr %806, i32 0, i32 6
  %808 = load i32, ptr %807, align 8, !tbaa !118
  %809 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %810 = getelementptr inbounds nuw %struct.rc_generic, ptr %809, i32 0, i32 7
  %811 = load i32, ptr %810, align 4, !tbaa !119
  %812 = add nsw i32 %808, %811
  %813 = load ptr, ptr %4, align 8, !tbaa !8
  %814 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %813, i32 0, i32 68
  %815 = load i32, ptr %814, align 8, !tbaa !39
  %816 = sub nsw i32 %815, %812
  store i32 %816, ptr %814, align 8, !tbaa !39
  %817 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %818 = getelementptr inbounds nuw %struct.rc_generic, ptr %817, i32 0, i32 6
  store i32 0, ptr %818, align 8, !tbaa !118
  %819 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %820 = getelementptr inbounds nuw %struct.rc_generic, ptr %819, i32 0, i32 7
  store i32 0, ptr %820, align 4, !tbaa !119
  %821 = load ptr, ptr %4, align 8, !tbaa !8
  %822 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %821, i32 0, i32 68
  %823 = load i32, ptr %822, align 8, !tbaa !39
  %824 = icmp slt i32 %823, 0
  br i1 %824, label %825, label %830

825:                                              ; preds = %805
  %826 = load ptr, ptr %4, align 8, !tbaa !8
  %827 = load i32, ptr %5, align 4, !tbaa !31
  %828 = load i32, ptr %11, align 4, !tbaa !31
  %829 = call signext i32 @updateNegativeTarget(ptr noundef %826, i32 noundef signext %827, i32 noundef signext %828)
  store i32 %829, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

830:                                              ; preds = %805
  %831 = load ptr, ptr %4, align 8, !tbaa !8
  call void @predictCurrPicMAD(ptr noundef %831)
  %832 = load ptr, ptr %4, align 8, !tbaa !8
  %833 = load i32, ptr %5, align 4, !tbaa !31
  %834 = load i32, ptr %11, align 4, !tbaa !31
  call void @updateModelQPBU(ptr noundef %832, i32 noundef signext %833, i32 noundef signext %834)
  %835 = load ptr, ptr %4, align 8, !tbaa !8
  %836 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %835, i32 0, i32 33
  %837 = load i32, ptr %836, align 8, !tbaa !48
  %838 = load ptr, ptr %4, align 8, !tbaa !8
  %839 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %838, i32 0, i32 38
  %840 = load i32, ptr %839, align 4, !tbaa !120
  %841 = add nsw i32 %840, %837
  store i32 %841, ptr %839, align 4, !tbaa !120
  %842 = load ptr, ptr %4, align 8, !tbaa !8
  %843 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %842, i32 0, i32 33
  %844 = load i32, ptr %843, align 8, !tbaa !48
  %845 = load ptr, ptr %4, align 8, !tbaa !8
  %846 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %845, i32 0, i32 29
  store i32 %844, ptr %846, align 8, !tbaa !115
  %847 = load ptr, ptr %4, align 8, !tbaa !8
  %848 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %847, i32 0, i32 39
  %849 = load i32, ptr %848, align 8, !tbaa !117
  %850 = add nsw i32 %849, -1
  store i32 %850, ptr %848, align 8, !tbaa !117
  %851 = load ptr, ptr %4, align 8, !tbaa !8
  %852 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %851, i32 0, i32 39
  %853 = load i32, ptr %852, align 8, !tbaa !117
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %870

855:                                              ; preds = %830
  %856 = load ptr, ptr @img, align 8, !tbaa !8
  %857 = getelementptr inbounds nuw %struct.ImageParameters, ptr %856, i32 0, i32 5
  %858 = load i32, ptr %857, align 4, !tbaa !102
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %870

860:                                              ; preds = %855
  %861 = load ptr, ptr @img, align 8, !tbaa !8
  %862 = getelementptr inbounds nuw %struct.ImageParameters, ptr %861, i32 0, i32 0
  %863 = load i32, ptr %862, align 8, !tbaa !109
  %864 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %865 = sub nsw i32 %863, %864
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %870

867:                                              ; preds = %860
  %868 = load ptr, ptr %4, align 8, !tbaa !8
  %869 = load i32, ptr %5, align 4, !tbaa !31
  call void @updateLastBU(ptr noundef %868, i32 noundef signext %869)
  br label %870

870:                                              ; preds = %867, %860, %855, %830
  %871 = load ptr, ptr %4, align 8, !tbaa !8
  %872 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %871, i32 0, i32 33
  %873 = load i32, ptr %872, align 8, !tbaa !48
  store i32 %873, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

874:                                              ; preds = %757
  br label %875

875:                                              ; preds = %874, %723
  br label %876

876:                                              ; preds = %875
  br label %877

877:                                              ; preds = %876
  br label %878

878:                                              ; preds = %877
  %879 = load ptr, ptr %4, align 8, !tbaa !8
  %880 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %879, i32 0, i32 33
  %881 = load i32, ptr %880, align 8, !tbaa !48
  store i32 %881, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %882

882:                                              ; preds = %878, %870, %825, %801, %753, %719, %715, %480, %464, %441, %300, %267, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #10
  %883 = load i32, ptr %3, align 4
  ret i32 %883
}

; Function Attrs: nounwind
define dso_local signext i32 @updateQPRC1(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #10
  %12 = load ptr, ptr @img, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw %struct.ImageParameters, ptr %12, i32 0, i32 132
  %14 = load i32, ptr %13, align 4, !tbaa !101
  %15 = load ptr, ptr @img, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.ImageParameters, ptr %15, i32 0, i32 120
  %17 = load i32, ptr %16, align 8, !tbaa !9
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %230

19:                                               ; preds = %2
  %20 = load i32, ptr %5, align 4, !tbaa !31
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw %struct.rc_generic, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !97
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %212

27:                                               ; preds = %22, %19
  %28 = load ptr, ptr @img, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !109
  %31 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %32 = sub nsw i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %4, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !52
  %38 = load ptr, ptr %4, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 33
  store i32 %37, ptr %39, align 8, !tbaa !48
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 33
  %42 = load i32, ptr %41, align 8, !tbaa !48
  store i32 %42, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

43:                                               ; preds = %27
  %44 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %45 = getelementptr inbounds nuw %struct.rc_generic, ptr %44, i32 0, i32 12
  %46 = load i32, ptr %45, align 8, !tbaa !108
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load ptr, ptr @img, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.ImageParameters, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !109
  %52 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %53 = sub nsw i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load ptr, ptr %4, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 11
  %58 = load i32, ptr %57, align 8, !tbaa !52
  %59 = load ptr, ptr %4, align 8, !tbaa !8
  %60 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %59, i32 0, i32 33
  store i32 %58, ptr %60, align 8, !tbaa !48
  %61 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.rc_generic, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !97
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %66)
  br label %67

67:                                               ; preds = %65, %55
  %68 = load ptr, ptr %4, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %68, i32 0, i32 33
  %70 = load i32, ptr %69, align 8, !tbaa !48
  store i32 %70, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

71:                                               ; preds = %48, %43
  %72 = load ptr, ptr @input, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.InputParameters, ptr %72, i32 0, i32 121
  %74 = load i32, ptr %73, align 8, !tbaa !103
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr @input, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw %struct.InputParameters, ptr %77, i32 0, i32 122
  %79 = load i32, ptr %78, align 4, !tbaa !104
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76, %71
  %82 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw %struct.rc_generic, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !97
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlaceBU(ptr noundef %87)
  br label %88

88:                                               ; preds = %86, %81, %76
  %89 = load ptr, ptr %4, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %89, i32 0, i32 27
  %91 = load double, ptr %90, align 8, !tbaa !84
  %92 = load ptr, ptr %4, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %92, i32 0, i32 25
  store double %91, ptr %93, align 8, !tbaa !110
  %94 = load ptr, ptr %4, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %94, i32 0, i32 28
  %96 = load double, ptr %95, align 8, !tbaa !85
  %97 = load ptr, ptr %4, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %97, i32 0, i32 26
  store double %96, ptr %98, align 8, !tbaa !111
  %99 = load ptr, ptr %4, align 8, !tbaa !8
  %100 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %99, i32 0, i32 16
  %101 = load double, ptr %100, align 8, !tbaa !86
  %102 = load ptr, ptr %4, align 8, !tbaa !8
  %103 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %102, i32 0, i32 14
  store double %101, ptr %103, align 8, !tbaa !112
  %104 = load ptr, ptr %4, align 8, !tbaa !8
  %105 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %104, i32 0, i32 17
  %106 = load double, ptr %105, align 8, !tbaa !87
  %107 = load ptr, ptr %4, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 15
  store double %106, ptr %108, align 8, !tbaa !113
  %109 = load ptr, ptr %4, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %109, i32 0, i32 18
  %111 = getelementptr inbounds [21 x double], ptr %110, i64 0, i64 0
  %112 = load double, ptr %111, align 8, !tbaa !88
  %113 = load ptr, ptr %4, align 8, !tbaa !8
  %114 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %113, i32 0, i32 13
  store double %112, ptr %114, align 8, !tbaa !114
  %115 = load ptr, ptr %4, align 8, !tbaa !8
  %116 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %115, i32 0, i32 80
  %117 = load i32, ptr %116, align 4, !tbaa !91
  store i32 %117, ptr %8, align 4, !tbaa !31
  %118 = load ptr, ptr %4, align 8, !tbaa !8
  %119 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %118, i32 0, i32 29
  %120 = load i32, ptr %119, align 8, !tbaa !115
  store i32 %120, ptr %9, align 4, !tbaa !31
  %121 = load ptr, ptr %4, align 8, !tbaa !8
  %122 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %121, i32 0, i32 34
  %123 = load i32, ptr %122, align 4, !tbaa !83
  store i32 %123, ptr %10, align 4, !tbaa !31
  %124 = load ptr, ptr %4, align 8, !tbaa !8
  %125 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %124, i32 0, i32 14
  %126 = load double, ptr %125, align 8, !tbaa !112
  %127 = load ptr, ptr %4, align 8, !tbaa !8
  %128 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %127, i32 0, i32 13
  %129 = load double, ptr %128, align 8, !tbaa !114
  %130 = load ptr, ptr %4, align 8, !tbaa !8
  %131 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %130, i32 0, i32 15
  %132 = load double, ptr %131, align 8, !tbaa !113
  %133 = call double @llvm.fmuladd.f64(double %126, double %129, double %132)
  %134 = load ptr, ptr %4, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %134, i32 0, i32 46
  store double %133, ptr %135, align 8, !tbaa !36
  %136 = load ptr, ptr %4, align 8, !tbaa !8
  %137 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %136, i32 0, i32 68
  %138 = load i32, ptr %137, align 8, !tbaa !39
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %88
  %141 = load i32, ptr %9, align 4, !tbaa !31
  %142 = load i32, ptr %8, align 4, !tbaa !31
  %143 = add nsw i32 %141, %142
  %144 = load ptr, ptr %4, align 8, !tbaa !8
  %145 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %144, i32 0, i32 33
  store i32 %143, ptr %145, align 8, !tbaa !48
  %146 = load ptr, ptr %4, align 8, !tbaa !8
  %147 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %146, i32 0, i32 10
  %148 = load i32, ptr %147, align 4, !tbaa !55
  %149 = load ptr, ptr %4, align 8, !tbaa !8
  %150 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %149, i32 0, i32 9
  %151 = load i32, ptr %150, align 8, !tbaa !53
  %152 = load ptr, ptr %4, align 8, !tbaa !8
  %153 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %152, i32 0, i32 33
  %154 = load i32, ptr %153, align 8, !tbaa !48
  %155 = call signext i32 @iClip3(i32 noundef signext %148, i32 noundef signext %151, i32 noundef signext %154)
  %156 = load ptr, ptr %4, align 8, !tbaa !8
  %157 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %156, i32 0, i32 33
  store i32 %155, ptr %157, align 8, !tbaa !48
  br label %201

158:                                              ; preds = %88
  %159 = load ptr, ptr %4, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %159, i32 0, i32 68
  %161 = load i32, ptr %160, align 8, !tbaa !39
  %162 = load i32, ptr %10, align 4, !tbaa !31
  %163 = sub nsw i32 %161, %162
  store i32 %163, ptr %6, align 4, !tbaa !31
  %164 = load i32, ptr %6, align 4, !tbaa !31
  %165 = load ptr, ptr %4, align 8, !tbaa !8
  %166 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %165, i32 0, i32 0
  %167 = load float, ptr %166, align 8, !tbaa !65
  %168 = load ptr, ptr %4, align 8, !tbaa !8
  %169 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %168, i32 0, i32 1
  %170 = load float, ptr %169, align 4, !tbaa !69
  %171 = fmul float 4.000000e+00, %170
  %172 = fdiv float %167, %171
  %173 = fptosi float %172 to i32
  %174 = call signext i32 @imax(i32 noundef signext %164, i32 noundef signext %173)
  store i32 %174, ptr %6, align 4, !tbaa !31
  %175 = load ptr, ptr %4, align 8, !tbaa !8
  %176 = load i32, ptr %6, align 4, !tbaa !31
  call void @updateModelQPFrame(ptr noundef %175, i32 noundef signext %176)
  %177 = load ptr, ptr %4, align 8, !tbaa !8
  %178 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %177, i32 0, i32 10
  %179 = load i32, ptr %178, align 4, !tbaa !55
  %180 = load ptr, ptr %4, align 8, !tbaa !8
  %181 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %180, i32 0, i32 9
  %182 = load i32, ptr %181, align 8, !tbaa !53
  %183 = load ptr, ptr %4, align 8, !tbaa !8
  %184 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %183, i32 0, i32 33
  %185 = load i32, ptr %184, align 8, !tbaa !48
  %186 = call signext i32 @iClip3(i32 noundef signext %179, i32 noundef signext %182, i32 noundef signext %185)
  %187 = load ptr, ptr %4, align 8, !tbaa !8
  %188 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %187, i32 0, i32 33
  store i32 %186, ptr %188, align 8, !tbaa !48
  %189 = load i32, ptr %9, align 4, !tbaa !31
  %190 = load i32, ptr %8, align 4, !tbaa !31
  %191 = sub nsw i32 %189, %190
  %192 = load i32, ptr %9, align 4, !tbaa !31
  %193 = load i32, ptr %8, align 4, !tbaa !31
  %194 = add nsw i32 %192, %193
  %195 = load ptr, ptr %4, align 8, !tbaa !8
  %196 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %195, i32 0, i32 33
  %197 = load i32, ptr %196, align 8, !tbaa !48
  %198 = call signext i32 @iClip3(i32 noundef signext %191, i32 noundef signext %194, i32 noundef signext %197)
  %199 = load ptr, ptr %4, align 8, !tbaa !8
  %200 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %199, i32 0, i32 33
  store i32 %198, ptr %200, align 8, !tbaa !48
  br label %201

201:                                              ; preds = %158, %140
  %202 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %203 = getelementptr inbounds nuw %struct.rc_generic, ptr %202, i32 0, i32 1
  %204 = load i32, ptr %203, align 4, !tbaa !97
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %207)
  br label %208

208:                                              ; preds = %206, %201
  %209 = load ptr, ptr %4, align 8, !tbaa !8
  %210 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %209, i32 0, i32 33
  %211 = load i32, ptr %210, align 8, !tbaa !48
  store i32 %211, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

212:                                              ; preds = %22
  %213 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %214 = getelementptr inbounds nuw %struct.rc_generic, ptr %213, i32 0, i32 3
  %215 = load i32, ptr %214, align 4, !tbaa !116
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load ptr, ptr @img, align 8, !tbaa !8
  %219 = getelementptr inbounds nuw %struct.ImageParameters, ptr %218, i32 0, i32 0
  %220 = load i32, ptr %219, align 8, !tbaa !109
  %221 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %222 = sub nsw i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateBottomField(ptr noundef %225)
  br label %226

226:                                              ; preds = %224, %217, %212
  %227 = load ptr, ptr %4, align 8, !tbaa !8
  %228 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %227, i32 0, i32 33
  %229 = load i32, ptr %228, align 8, !tbaa !48
  store i32 %229, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

230:                                              ; preds = %2
  %231 = load ptr, ptr @img, align 8, !tbaa !8
  %232 = getelementptr inbounds nuw %struct.ImageParameters, ptr %231, i32 0, i32 0
  %233 = load i32, ptr %232, align 8, !tbaa !109
  %234 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %235 = sub nsw i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %246, label %237

237:                                              ; preds = %230
  %238 = load ptr, ptr %4, align 8, !tbaa !8
  %239 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %238, i32 0, i32 11
  %240 = load i32, ptr %239, align 8, !tbaa !52
  %241 = load ptr, ptr %4, align 8, !tbaa !8
  %242 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %241, i32 0, i32 33
  store i32 %240, ptr %242, align 8, !tbaa !48
  %243 = load ptr, ptr %4, align 8, !tbaa !8
  %244 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %243, i32 0, i32 33
  %245 = load i32, ptr %244, align 8, !tbaa !48
  store i32 %245, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

246:                                              ; preds = %230
  %247 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %248 = getelementptr inbounds nuw %struct.rc_generic, ptr %247, i32 0, i32 10
  %249 = load i32, ptr %248, align 8, !tbaa !79
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %276

251:                                              ; preds = %246
  %252 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %253 = getelementptr inbounds nuw %struct.rc_generic, ptr %252, i32 0, i32 12
  %254 = load i32, ptr %253, align 8, !tbaa !108
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %276

256:                                              ; preds = %251
  %257 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %258 = getelementptr inbounds nuw %struct.rc_generic, ptr %257, i32 0, i32 1
  %259 = load i32, ptr %258, align 4, !tbaa !97
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %256
  %262 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %263 = getelementptr inbounds nuw %struct.rc_generic, ptr %262, i32 0, i32 1
  %264 = load i32, ptr %263, align 4, !tbaa !97
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %275

266:                                              ; preds = %261
  %267 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %268 = getelementptr inbounds nuw %struct.rc_generic, ptr %267, i32 0, i32 3
  %269 = load i32, ptr %268, align 4, !tbaa !116
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %266, %256
  %272 = load ptr, ptr %4, align 8, !tbaa !8
  %273 = load i32, ptr %5, align 4, !tbaa !31
  %274 = call signext i32 @updateFirstP(ptr noundef %272, i32 noundef signext %273)
  store i32 %274, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

275:                                              ; preds = %266, %261
  br label %387

276:                                              ; preds = %251, %246
  %277 = load ptr, ptr %4, align 8, !tbaa !8
  %278 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %277, i32 0, i32 27
  %279 = load double, ptr %278, align 8, !tbaa !84
  %280 = load ptr, ptr %4, align 8, !tbaa !8
  %281 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %280, i32 0, i32 25
  store double %279, ptr %281, align 8, !tbaa !110
  %282 = load ptr, ptr %4, align 8, !tbaa !8
  %283 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %282, i32 0, i32 28
  %284 = load double, ptr %283, align 8, !tbaa !85
  %285 = load ptr, ptr %4, align 8, !tbaa !8
  %286 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %285, i32 0, i32 26
  store double %284, ptr %286, align 8, !tbaa !111
  %287 = load ptr, ptr %4, align 8, !tbaa !8
  %288 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %287, i32 0, i32 16
  %289 = load double, ptr %288, align 8, !tbaa !86
  %290 = load ptr, ptr %4, align 8, !tbaa !8
  %291 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %290, i32 0, i32 14
  store double %289, ptr %291, align 8, !tbaa !112
  %292 = load ptr, ptr %4, align 8, !tbaa !8
  %293 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %292, i32 0, i32 17
  %294 = load double, ptr %293, align 8, !tbaa !87
  %295 = load ptr, ptr %4, align 8, !tbaa !8
  %296 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %295, i32 0, i32 15
  store double %294, ptr %296, align 8, !tbaa !113
  %297 = load ptr, ptr %4, align 8, !tbaa !8
  %298 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %297, i32 0, i32 29
  %299 = load i32, ptr %298, align 8, !tbaa !115
  store i32 %299, ptr %9, align 4, !tbaa !31
  %300 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %301 = getelementptr inbounds nuw %struct.rc_generic, ptr %300, i32 0, i32 1
  %302 = load i32, ptr %301, align 4, !tbaa !97
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %276
  %305 = load ptr, ptr %4, align 8, !tbaa !8
  %306 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %305, i32 0, i32 44
  %307 = load i32, ptr %306, align 4, !tbaa !71
  store i32 %307, ptr %7, align 4, !tbaa !31
  br label %313

308:                                              ; preds = %276
  %309 = load ptr, ptr %4, align 8, !tbaa !8
  %310 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %309, i32 0, i32 44
  %311 = load i32, ptr %310, align 4, !tbaa !71
  %312 = ashr i32 %311, 1
  store i32 %312, ptr %7, align 4, !tbaa !31
  br label %313

313:                                              ; preds = %308, %304
  %314 = load ptr, ptr %4, align 8, !tbaa !8
  %315 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %314, i32 0, i32 39
  %316 = load i32, ptr %315, align 8, !tbaa !117
  %317 = load i32, ptr %7, align 4, !tbaa !31
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %313
  %320 = load ptr, ptr %4, align 8, !tbaa !8
  %321 = load i32, ptr %5, align 4, !tbaa !31
  %322 = call signext i32 @updateFirstBU(ptr noundef %320, i32 noundef signext %321)
  store i32 %322, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

323:                                              ; preds = %313
  %324 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %325 = getelementptr inbounds nuw %struct.rc_generic, ptr %324, i32 0, i32 6
  %326 = load i32, ptr %325, align 8, !tbaa !118
  %327 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %328 = getelementptr inbounds nuw %struct.rc_generic, ptr %327, i32 0, i32 7
  %329 = load i32, ptr %328, align 4, !tbaa !119
  %330 = add nsw i32 %326, %329
  %331 = load ptr, ptr %4, align 8, !tbaa !8
  %332 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %331, i32 0, i32 68
  %333 = load i32, ptr %332, align 8, !tbaa !39
  %334 = sub nsw i32 %333, %330
  store i32 %334, ptr %332, align 8, !tbaa !39
  %335 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %336 = getelementptr inbounds nuw %struct.rc_generic, ptr %335, i32 0, i32 6
  store i32 0, ptr %336, align 8, !tbaa !118
  %337 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %338 = getelementptr inbounds nuw %struct.rc_generic, ptr %337, i32 0, i32 7
  store i32 0, ptr %338, align 4, !tbaa !119
  %339 = load ptr, ptr %4, align 8, !tbaa !8
  %340 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %339, i32 0, i32 68
  %341 = load i32, ptr %340, align 8, !tbaa !39
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %323
  %344 = load ptr, ptr %4, align 8, !tbaa !8
  %345 = load i32, ptr %5, align 4, !tbaa !31
  %346 = load i32, ptr %9, align 4, !tbaa !31
  %347 = call signext i32 @updateNegativeTarget(ptr noundef %344, i32 noundef signext %345, i32 noundef signext %346)
  store i32 %347, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

348:                                              ; preds = %323
  %349 = load ptr, ptr %4, align 8, !tbaa !8
  call void @predictCurrPicMAD(ptr noundef %349)
  %350 = load ptr, ptr %4, align 8, !tbaa !8
  %351 = load i32, ptr %5, align 4, !tbaa !31
  %352 = load i32, ptr %9, align 4, !tbaa !31
  call void @updateModelQPBU(ptr noundef %350, i32 noundef signext %351, i32 noundef signext %352)
  %353 = load ptr, ptr %4, align 8, !tbaa !8
  %354 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %353, i32 0, i32 33
  %355 = load i32, ptr %354, align 8, !tbaa !48
  %356 = load ptr, ptr %4, align 8, !tbaa !8
  %357 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %356, i32 0, i32 38
  %358 = load i32, ptr %357, align 4, !tbaa !120
  %359 = add nsw i32 %358, %355
  store i32 %359, ptr %357, align 4, !tbaa !120
  %360 = load ptr, ptr %4, align 8, !tbaa !8
  %361 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %360, i32 0, i32 33
  %362 = load i32, ptr %361, align 8, !tbaa !48
  %363 = load ptr, ptr %4, align 8, !tbaa !8
  %364 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %363, i32 0, i32 29
  store i32 %362, ptr %364, align 8, !tbaa !115
  %365 = load ptr, ptr %4, align 8, !tbaa !8
  %366 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %365, i32 0, i32 39
  %367 = load i32, ptr %366, align 8, !tbaa !117
  %368 = add nsw i32 %367, -1
  store i32 %368, ptr %366, align 8, !tbaa !117
  %369 = load ptr, ptr %4, align 8, !tbaa !8
  %370 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %369, i32 0, i32 39
  %371 = load i32, ptr %370, align 8, !tbaa !117
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %348
  %374 = load ptr, ptr @img, align 8, !tbaa !8
  %375 = getelementptr inbounds nuw %struct.ImageParameters, ptr %374, i32 0, i32 0
  %376 = load i32, ptr %375, align 8, !tbaa !109
  %377 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %378 = sub nsw i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %383

380:                                              ; preds = %373
  %381 = load ptr, ptr %4, align 8, !tbaa !8
  %382 = load i32, ptr %5, align 4, !tbaa !31
  call void @updateLastBU(ptr noundef %381, i32 noundef signext %382)
  br label %383

383:                                              ; preds = %380, %373, %348
  %384 = load ptr, ptr %4, align 8, !tbaa !8
  %385 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %384, i32 0, i32 33
  %386 = load i32, ptr %385, align 8, !tbaa !48
  store i32 %386, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

387:                                              ; preds = %275
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  %390 = load ptr, ptr %4, align 8, !tbaa !8
  %391 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %390, i32 0, i32 33
  %392 = load i32, ptr %391, align 8, !tbaa !48
  store i32 %392, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %393

393:                                              ; preds = %389, %383, %343, %319, %271, %237, %226, %208, %67, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #10
  %394 = load i32, ptr %3, align 4
  ret i32 %394
}

; Function Attrs: nounwind
define dso_local signext i32 @updateQPRC2(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #10
  %14 = load ptr, ptr @img, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.ImageParameters, ptr %14, i32 0, i32 132
  %16 = load i32, ptr %15, align 4, !tbaa !101
  %17 = load ptr, ptr @img, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw %struct.ImageParameters, ptr %17, i32 0, i32 120
  %19 = load i32, ptr %18, align 8, !tbaa !9
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %350

21:                                               ; preds = %2
  %22 = load i32, ptr %5, align 4, !tbaa !31
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_generic, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !97
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %327

29:                                               ; preds = %24, %21
  %30 = load ptr, ptr @img, align 8, !tbaa !8
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8, !tbaa !109
  %33 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %34 = sub nsw i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %4, align 8, !tbaa !8
  %38 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %37, i32 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 33
  store i32 %39, ptr %41, align 8, !tbaa !48
  %42 = load ptr, ptr %4, align 8, !tbaa !8
  %43 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %42, i32 0, i32 33
  %44 = load i32, ptr %43, align 8, !tbaa !48
  store i32 %44, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

45:                                               ; preds = %29
  %46 = load ptr, ptr @img, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.ImageParameters, ptr %46, i32 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !102
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load ptr, ptr @input, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw %struct.InputParameters, ptr %51, i32 0, i32 121
  %53 = load i32, ptr %52, align 8, !tbaa !103
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr @input, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.InputParameters, ptr %56, i32 0, i32 122
  %58 = load i32, ptr %57, align 4, !tbaa !104
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %50
  %61 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %61)
  br label %62

62:                                               ; preds = %60, %55
  %63 = load ptr, ptr %4, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %63, i32 0, i32 36
  %65 = load i32, ptr %64, align 4, !tbaa !106
  %66 = load ptr, ptr %4, align 8, !tbaa !8
  %67 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %66, i32 0, i32 33
  store i32 %65, ptr %67, align 8, !tbaa !48
  %68 = load ptr, ptr %4, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %68, i32 0, i32 33
  %70 = load i32, ptr %69, align 8, !tbaa !48
  store i32 %70, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

71:                                               ; preds = %45
  %72 = load ptr, ptr @img, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.ImageParameters, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !102
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %153

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #10
  %77 = load ptr, ptr %4, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %77, i32 0, i32 35
  %79 = load i32, ptr %78, align 8, !tbaa !105
  %80 = load ptr, ptr %4, align 8, !tbaa !8
  %81 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %80, i32 0, i32 36
  %82 = load i32, ptr %81, align 4, !tbaa !106
  %83 = call signext i32 @imax(i32 noundef signext %79, i32 noundef signext %82)
  store i32 %83, ptr %12, align 4, !tbaa !31
  %84 = load ptr, ptr @input, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw %struct.InputParameters, ptr %84, i32 0, i32 121
  %86 = load i32, ptr %85, align 8, !tbaa !103
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %93, label %88

88:                                               ; preds = %76
  %89 = load ptr, ptr @input, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.InputParameters, ptr %89, i32 0, i32 122
  %91 = load i32, ptr %90, align 4, !tbaa !104
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %76
  %94 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %94)
  br label %95

95:                                               ; preds = %93, %88
  %96 = load ptr, ptr @input, align 8, !tbaa !8
  %97 = getelementptr inbounds nuw %struct.InputParameters, ptr %96, i32 0, i32 69
  %98 = load i32, ptr %97, align 8, !tbaa !121
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %95
  %101 = load ptr, ptr @img, align 8, !tbaa !8
  %102 = getelementptr inbounds nuw %struct.ImageParameters, ptr %101, i32 0, i32 76
  %103 = load i32, ptr %102, align 4, !tbaa !122
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, ptr %12, align 4, !tbaa !31
  %107 = load ptr, ptr %4, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 33
  store i32 %106, ptr %108, align 8, !tbaa !48
  br label %127

109:                                              ; preds = %100
  %110 = load i32, ptr %12, align 4, !tbaa !31
  %111 = load ptr, ptr @img, align 8, !tbaa !8
  %112 = getelementptr inbounds nuw %struct.ImageParameters, ptr %111, i32 0, i32 173
  %113 = load i32, ptr %112, align 4, !tbaa !123
  %114 = add nsw i32 %110, %113
  %115 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %116 = load ptr, ptr @img, align 8, !tbaa !8
  %117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %116, i32 0, i32 76
  %118 = load i32, ptr %117, align 4, !tbaa !122
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.GOP_DATA, ptr %115, i64 %120
  %122 = getelementptr inbounds nuw %struct.GOP_DATA, ptr %121, i32 0, i32 4
  %123 = load i32, ptr %122, align 4, !tbaa !124
  %124 = sub nsw i32 %114, %123
  %125 = load ptr, ptr %4, align 8, !tbaa !8
  %126 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %125, i32 0, i32 33
  store i32 %124, ptr %126, align 8, !tbaa !48
  br label %127

127:                                              ; preds = %109, %105
  br label %137

128:                                              ; preds = %95
  %129 = load i32, ptr %12, align 4, !tbaa !31
  %130 = add nsw i32 %129, 2
  %131 = load ptr, ptr @img, align 8, !tbaa !8
  %132 = getelementptr inbounds nuw %struct.ImageParameters, ptr %131, i32 0, i32 122
  %133 = load i32, ptr %132, align 8, !tbaa !126
  %134 = sub nsw i32 %130, %133
  %135 = load ptr, ptr %4, align 8, !tbaa !8
  %136 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %135, i32 0, i32 33
  store i32 %134, ptr %136, align 8, !tbaa !48
  br label %137

137:                                              ; preds = %128, %127
  %138 = load ptr, ptr %4, align 8, !tbaa !8
  %139 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %138, i32 0, i32 10
  %140 = load i32, ptr %139, align 4, !tbaa !55
  %141 = load ptr, ptr %4, align 8, !tbaa !8
  %142 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %141, i32 0, i32 9
  %143 = load i32, ptr %142, align 8, !tbaa !53
  %144 = load ptr, ptr %4, align 8, !tbaa !8
  %145 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %144, i32 0, i32 33
  %146 = load i32, ptr %145, align 8, !tbaa !48
  %147 = call signext i32 @iClip3(i32 noundef signext %140, i32 noundef signext %143, i32 noundef signext %146)
  %148 = load ptr, ptr %4, align 8, !tbaa !8
  %149 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %148, i32 0, i32 33
  store i32 %147, ptr %149, align 8, !tbaa !48
  %150 = load ptr, ptr %4, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %150, i32 0, i32 33
  %152 = load i32, ptr %151, align 8, !tbaa !48
  store i32 %152, ptr %3, align 4
  store i32 1, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #10
  br label %649

153:                                              ; preds = %71
  %154 = load ptr, ptr @img, align 8, !tbaa !8
  %155 = getelementptr inbounds nuw %struct.ImageParameters, ptr %154, i32 0, i32 5
  %156 = load i32, ptr %155, align 4, !tbaa !102
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %153
  %159 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.rc_generic, ptr %159, i32 0, i32 12
  %161 = load i32, ptr %160, align 8, !tbaa !108
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %186

163:                                              ; preds = %158
  %164 = load ptr, ptr @img, align 8, !tbaa !8
  %165 = getelementptr inbounds nuw %struct.ImageParameters, ptr %164, i32 0, i32 0
  %166 = load i32, ptr %165, align 8, !tbaa !109
  %167 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %168 = sub nsw i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %163
  %171 = load ptr, ptr %4, align 8, !tbaa !8
  %172 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %171, i32 0, i32 11
  %173 = load i32, ptr %172, align 8, !tbaa !52
  %174 = load ptr, ptr %4, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %174, i32 0, i32 33
  store i32 %173, ptr %175, align 8, !tbaa !48
  %176 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %177 = getelementptr inbounds nuw %struct.rc_generic, ptr %176, i32 0, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !97
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %181)
  br label %182

182:                                              ; preds = %180, %170
  %183 = load ptr, ptr %4, align 8, !tbaa !8
  %184 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %183, i32 0, i32 33
  %185 = load i32, ptr %184, align 8, !tbaa !48
  store i32 %185, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

186:                                              ; preds = %163, %158, %153
  %187 = load ptr, ptr @input, align 8, !tbaa !8
  %188 = getelementptr inbounds nuw %struct.InputParameters, ptr %187, i32 0, i32 121
  %189 = load i32, ptr %188, align 8, !tbaa !103
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = load ptr, ptr @input, align 8, !tbaa !8
  %193 = getelementptr inbounds nuw %struct.InputParameters, ptr %192, i32 0, i32 122
  %194 = load i32, ptr %193, align 4, !tbaa !104
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %191, %186
  %197 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %198 = getelementptr inbounds nuw %struct.rc_generic, ptr %197, i32 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !97
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlaceBU(ptr noundef %202)
  br label %203

203:                                              ; preds = %201, %196, %191
  %204 = load ptr, ptr %4, align 8, !tbaa !8
  %205 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %204, i32 0, i32 27
  %206 = load double, ptr %205, align 8, !tbaa !84
  %207 = load ptr, ptr %4, align 8, !tbaa !8
  %208 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %207, i32 0, i32 25
  store double %206, ptr %208, align 8, !tbaa !110
  %209 = load ptr, ptr %4, align 8, !tbaa !8
  %210 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %209, i32 0, i32 28
  %211 = load double, ptr %210, align 8, !tbaa !85
  %212 = load ptr, ptr %4, align 8, !tbaa !8
  %213 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %212, i32 0, i32 26
  store double %211, ptr %213, align 8, !tbaa !111
  %214 = load ptr, ptr %4, align 8, !tbaa !8
  %215 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %214, i32 0, i32 16
  %216 = load double, ptr %215, align 8, !tbaa !86
  %217 = load ptr, ptr %4, align 8, !tbaa !8
  %218 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %217, i32 0, i32 14
  store double %216, ptr %218, align 8, !tbaa !112
  %219 = load ptr, ptr %4, align 8, !tbaa !8
  %220 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %219, i32 0, i32 17
  %221 = load double, ptr %220, align 8, !tbaa !87
  %222 = load ptr, ptr %4, align 8, !tbaa !8
  %223 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %222, i32 0, i32 15
  store double %221, ptr %223, align 8, !tbaa !113
  %224 = load ptr, ptr %4, align 8, !tbaa !8
  %225 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %224, i32 0, i32 18
  %226 = getelementptr inbounds [21 x double], ptr %225, i64 0, i64 0
  %227 = load double, ptr %226, align 8, !tbaa !88
  %228 = load ptr, ptr %4, align 8, !tbaa !8
  %229 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %228, i32 0, i32 13
  store double %227, ptr %229, align 8, !tbaa !114
  %230 = load ptr, ptr %4, align 8, !tbaa !8
  %231 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %230, i32 0, i32 80
  %232 = load i32, ptr %231, align 4, !tbaa !91
  store i32 %232, ptr %8, align 4, !tbaa !31
  %233 = load ptr, ptr %4, align 8, !tbaa !8
  %234 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %233, i32 0, i32 29
  %235 = load i32, ptr %234, align 8, !tbaa !115
  store i32 %235, ptr %9, align 4, !tbaa !31
  %236 = load ptr, ptr %4, align 8, !tbaa !8
  %237 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %236, i32 0, i32 34
  %238 = load i32, ptr %237, align 4, !tbaa !83
  store i32 %238, ptr %10, align 4, !tbaa !31
  %239 = load ptr, ptr %4, align 8, !tbaa !8
  %240 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %239, i32 0, i32 14
  %241 = load double, ptr %240, align 8, !tbaa !112
  %242 = load ptr, ptr %4, align 8, !tbaa !8
  %243 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %242, i32 0, i32 13
  %244 = load double, ptr %243, align 8, !tbaa !114
  %245 = load ptr, ptr %4, align 8, !tbaa !8
  %246 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %245, i32 0, i32 15
  %247 = load double, ptr %246, align 8, !tbaa !113
  %248 = call double @llvm.fmuladd.f64(double %241, double %244, double %247)
  %249 = load ptr, ptr %4, align 8, !tbaa !8
  %250 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %249, i32 0, i32 46
  store double %248, ptr %250, align 8, !tbaa !36
  %251 = load ptr, ptr %4, align 8, !tbaa !8
  %252 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %251, i32 0, i32 68
  %253 = load i32, ptr %252, align 8, !tbaa !39
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %273

255:                                              ; preds = %203
  %256 = load i32, ptr %9, align 4, !tbaa !31
  %257 = load i32, ptr %8, align 4, !tbaa !31
  %258 = add nsw i32 %256, %257
  %259 = load ptr, ptr %4, align 8, !tbaa !8
  %260 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %259, i32 0, i32 33
  store i32 %258, ptr %260, align 8, !tbaa !48
  %261 = load ptr, ptr %4, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %261, i32 0, i32 10
  %263 = load i32, ptr %262, align 4, !tbaa !55
  %264 = load ptr, ptr %4, align 8, !tbaa !8
  %265 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %264, i32 0, i32 9
  %266 = load i32, ptr %265, align 8, !tbaa !53
  %267 = load ptr, ptr %4, align 8, !tbaa !8
  %268 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %267, i32 0, i32 33
  %269 = load i32, ptr %268, align 8, !tbaa !48
  %270 = call signext i32 @iClip3(i32 noundef signext %263, i32 noundef signext %266, i32 noundef signext %269)
  %271 = load ptr, ptr %4, align 8, !tbaa !8
  %272 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %271, i32 0, i32 33
  store i32 %270, ptr %272, align 8, !tbaa !48
  br label %316

273:                                              ; preds = %203
  %274 = load ptr, ptr %4, align 8, !tbaa !8
  %275 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %274, i32 0, i32 68
  %276 = load i32, ptr %275, align 8, !tbaa !39
  %277 = load i32, ptr %10, align 4, !tbaa !31
  %278 = sub nsw i32 %276, %277
  store i32 %278, ptr %6, align 4, !tbaa !31
  %279 = load i32, ptr %6, align 4, !tbaa !31
  %280 = load ptr, ptr %4, align 8, !tbaa !8
  %281 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %280, i32 0, i32 0
  %282 = load float, ptr %281, align 8, !tbaa !65
  %283 = load ptr, ptr %4, align 8, !tbaa !8
  %284 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %283, i32 0, i32 1
  %285 = load float, ptr %284, align 4, !tbaa !69
  %286 = fmul float 4.000000e+00, %285
  %287 = fdiv float %282, %286
  %288 = fptosi float %287 to i32
  %289 = call signext i32 @imax(i32 noundef signext %279, i32 noundef signext %288)
  store i32 %289, ptr %6, align 4, !tbaa !31
  %290 = load ptr, ptr %4, align 8, !tbaa !8
  %291 = load i32, ptr %6, align 4, !tbaa !31
  call void @updateModelQPFrame(ptr noundef %290, i32 noundef signext %291)
  %292 = load ptr, ptr %4, align 8, !tbaa !8
  %293 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %292, i32 0, i32 10
  %294 = load i32, ptr %293, align 4, !tbaa !55
  %295 = load ptr, ptr %4, align 8, !tbaa !8
  %296 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %295, i32 0, i32 9
  %297 = load i32, ptr %296, align 8, !tbaa !53
  %298 = load ptr, ptr %4, align 8, !tbaa !8
  %299 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %298, i32 0, i32 33
  %300 = load i32, ptr %299, align 8, !tbaa !48
  %301 = call signext i32 @iClip3(i32 noundef signext %294, i32 noundef signext %297, i32 noundef signext %300)
  %302 = load ptr, ptr %4, align 8, !tbaa !8
  %303 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %302, i32 0, i32 33
  store i32 %301, ptr %303, align 8, !tbaa !48
  %304 = load i32, ptr %9, align 4, !tbaa !31
  %305 = load i32, ptr %8, align 4, !tbaa !31
  %306 = sub nsw i32 %304, %305
  %307 = load i32, ptr %9, align 4, !tbaa !31
  %308 = load i32, ptr %8, align 4, !tbaa !31
  %309 = add nsw i32 %307, %308
  %310 = load ptr, ptr %4, align 8, !tbaa !8
  %311 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %310, i32 0, i32 33
  %312 = load i32, ptr %311, align 8, !tbaa !48
  %313 = call signext i32 @iClip3(i32 noundef signext %306, i32 noundef signext %309, i32 noundef signext %312)
  %314 = load ptr, ptr %4, align 8, !tbaa !8
  %315 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %314, i32 0, i32 33
  store i32 %313, ptr %315, align 8, !tbaa !48
  br label %316

316:                                              ; preds = %273, %255
  %317 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %318 = getelementptr inbounds nuw %struct.rc_generic, ptr %317, i32 0, i32 1
  %319 = load i32, ptr %318, align 4, !tbaa !97
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %322)
  br label %323

323:                                              ; preds = %321, %316
  %324 = load ptr, ptr %4, align 8, !tbaa !8
  %325 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %324, i32 0, i32 33
  %326 = load i32, ptr %325, align 8, !tbaa !48
  store i32 %326, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

327:                                              ; preds = %24
  %328 = load ptr, ptr @img, align 8, !tbaa !8
  %329 = getelementptr inbounds nuw %struct.ImageParameters, ptr %328, i32 0, i32 5
  %330 = load i32, ptr %329, align 4, !tbaa !102
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %346

332:                                              ; preds = %327
  %333 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %334 = getelementptr inbounds nuw %struct.rc_generic, ptr %333, i32 0, i32 3
  %335 = load i32, ptr %334, align 4, !tbaa !116
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %346

337:                                              ; preds = %332
  %338 = load ptr, ptr @img, align 8, !tbaa !8
  %339 = getelementptr inbounds nuw %struct.ImageParameters, ptr %338, i32 0, i32 0
  %340 = load i32, ptr %339, align 8, !tbaa !109
  %341 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %342 = sub nsw i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %337
  %345 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateBottomField(ptr noundef %345)
  br label %346

346:                                              ; preds = %344, %337, %332, %327
  %347 = load ptr, ptr %4, align 8, !tbaa !8
  %348 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %347, i32 0, i32 33
  %349 = load i32, ptr %348, align 8, !tbaa !48
  store i32 %349, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

350:                                              ; preds = %2
  %351 = load ptr, ptr @img, align 8, !tbaa !8
  %352 = getelementptr inbounds nuw %struct.ImageParameters, ptr %351, i32 0, i32 0
  %353 = load i32, ptr %352, align 8, !tbaa !109
  %354 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %355 = sub nsw i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %366, label %357

357:                                              ; preds = %350
  %358 = load ptr, ptr %4, align 8, !tbaa !8
  %359 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %358, i32 0, i32 11
  %360 = load i32, ptr %359, align 8, !tbaa !52
  %361 = load ptr, ptr %4, align 8, !tbaa !8
  %362 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %361, i32 0, i32 33
  store i32 %360, ptr %362, align 8, !tbaa !48
  %363 = load ptr, ptr %4, align 8, !tbaa !8
  %364 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %363, i32 0, i32 33
  %365 = load i32, ptr %364, align 8, !tbaa !48
  store i32 %365, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

366:                                              ; preds = %350
  %367 = load ptr, ptr @img, align 8, !tbaa !8
  %368 = getelementptr inbounds nuw %struct.ImageParameters, ptr %367, i32 0, i32 5
  %369 = load i32, ptr %368, align 4, !tbaa !102
  %370 = icmp eq i32 %369, 2
  br i1 %370, label %371, label %407

371:                                              ; preds = %366
  %372 = load ptr, ptr @input, align 8, !tbaa !8
  %373 = getelementptr inbounds nuw %struct.InputParameters, ptr %372, i32 0, i32 121
  %374 = load i32, ptr %373, align 8, !tbaa !103
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %381, label %376

376:                                              ; preds = %371
  %377 = load ptr, ptr @input, align 8, !tbaa !8
  %378 = getelementptr inbounds nuw %struct.InputParameters, ptr %377, i32 0, i32 122
  %379 = load i32, ptr %378, align 4, !tbaa !104
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %376, %371
  %382 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %382)
  br label %383

383:                                              ; preds = %381, %376
  %384 = load ptr, ptr %4, align 8, !tbaa !8
  %385 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %384, i32 0, i32 35
  %386 = load i32, ptr %385, align 8, !tbaa !105
  %387 = load ptr, ptr %4, align 8, !tbaa !8
  %388 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %387, i32 0, i32 33
  store i32 %386, ptr %388, align 8, !tbaa !48
  %389 = load ptr, ptr %4, align 8, !tbaa !8
  %390 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %389, i32 0, i32 36
  %391 = load i32, ptr %390, align 4, !tbaa !106
  %392 = load ptr, ptr %4, align 8, !tbaa !8
  %393 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %392, i32 0, i32 35
  store i32 %391, ptr %393, align 8, !tbaa !105
  %394 = load ptr, ptr %4, align 8, !tbaa !8
  %395 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %394, i32 0, i32 35
  %396 = load i32, ptr %395, align 8, !tbaa !105
  %397 = load ptr, ptr %4, align 8, !tbaa !8
  %398 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %397, i32 0, i32 36
  store i32 %396, ptr %398, align 4, !tbaa !106
  %399 = load ptr, ptr %4, align 8, !tbaa !8
  %400 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %399, i32 0, i32 36
  %401 = load i32, ptr %400, align 4, !tbaa !106
  %402 = load ptr, ptr %4, align 8, !tbaa !8
  %403 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %402, i32 0, i32 43
  store i32 %401, ptr %403, align 8, !tbaa !47
  %404 = load ptr, ptr %4, align 8, !tbaa !8
  %405 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %404, i32 0, i32 33
  %406 = load i32, ptr %405, align 8, !tbaa !48
  store i32 %406, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

407:                                              ; preds = %366
  %408 = load ptr, ptr @img, align 8, !tbaa !8
  %409 = getelementptr inbounds nuw %struct.ImageParameters, ptr %408, i32 0, i32 5
  %410 = load i32, ptr %409, align 4, !tbaa !102
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %489

412:                                              ; preds = %407
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #10
  %413 = load ptr, ptr %4, align 8, !tbaa !8
  %414 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %413, i32 0, i32 35
  %415 = load i32, ptr %414, align 8, !tbaa !105
  %416 = load ptr, ptr %4, align 8, !tbaa !8
  %417 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %416, i32 0, i32 36
  %418 = load i32, ptr %417, align 4, !tbaa !106
  %419 = call signext i32 @imax(i32 noundef signext %415, i32 noundef signext %418)
  store i32 %419, ptr %13, align 4, !tbaa !31
  %420 = load ptr, ptr @input, align 8, !tbaa !8
  %421 = getelementptr inbounds nuw %struct.InputParameters, ptr %420, i32 0, i32 121
  %422 = load i32, ptr %421, align 8, !tbaa !103
  %423 = icmp eq i32 %422, 2
  br i1 %423, label %429, label %424

424:                                              ; preds = %412
  %425 = load ptr, ptr @input, align 8, !tbaa !8
  %426 = getelementptr inbounds nuw %struct.InputParameters, ptr %425, i32 0, i32 122
  %427 = load i32, ptr %426, align 4, !tbaa !104
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %424, %412
  %430 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlace(ptr noundef %430)
  br label %431

431:                                              ; preds = %429, %424
  %432 = load ptr, ptr @input, align 8, !tbaa !8
  %433 = getelementptr inbounds nuw %struct.InputParameters, ptr %432, i32 0, i32 69
  %434 = load i32, ptr %433, align 8, !tbaa !121
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %464

436:                                              ; preds = %431
  %437 = load ptr, ptr @img, align 8, !tbaa !8
  %438 = getelementptr inbounds nuw %struct.ImageParameters, ptr %437, i32 0, i32 76
  %439 = load i32, ptr %438, align 4, !tbaa !122
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %436
  %442 = load i32, ptr %13, align 4, !tbaa !31
  %443 = load ptr, ptr %4, align 8, !tbaa !8
  %444 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %443, i32 0, i32 33
  store i32 %442, ptr %444, align 8, !tbaa !48
  br label %463

445:                                              ; preds = %436
  %446 = load i32, ptr %13, align 4, !tbaa !31
  %447 = load ptr, ptr @img, align 8, !tbaa !8
  %448 = getelementptr inbounds nuw %struct.ImageParameters, ptr %447, i32 0, i32 173
  %449 = load i32, ptr %448, align 4, !tbaa !123
  %450 = add nsw i32 %446, %449
  %451 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %452 = load ptr, ptr @img, align 8, !tbaa !8
  %453 = getelementptr inbounds nuw %struct.ImageParameters, ptr %452, i32 0, i32 76
  %454 = load i32, ptr %453, align 4, !tbaa !122
  %455 = sub nsw i32 %454, 1
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.GOP_DATA, ptr %451, i64 %456
  %458 = getelementptr inbounds nuw %struct.GOP_DATA, ptr %457, i32 0, i32 4
  %459 = load i32, ptr %458, align 4, !tbaa !124
  %460 = sub nsw i32 %450, %459
  %461 = load ptr, ptr %4, align 8, !tbaa !8
  %462 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %461, i32 0, i32 33
  store i32 %460, ptr %462, align 8, !tbaa !48
  br label %463

463:                                              ; preds = %445, %441
  br label %473

464:                                              ; preds = %431
  %465 = load i32, ptr %13, align 4, !tbaa !31
  %466 = add nsw i32 %465, 2
  %467 = load ptr, ptr @img, align 8, !tbaa !8
  %468 = getelementptr inbounds nuw %struct.ImageParameters, ptr %467, i32 0, i32 122
  %469 = load i32, ptr %468, align 8, !tbaa !126
  %470 = sub nsw i32 %466, %469
  %471 = load ptr, ptr %4, align 8, !tbaa !8
  %472 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %471, i32 0, i32 33
  store i32 %470, ptr %472, align 8, !tbaa !48
  br label %473

473:                                              ; preds = %464, %463
  %474 = load ptr, ptr %4, align 8, !tbaa !8
  %475 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %474, i32 0, i32 10
  %476 = load i32, ptr %475, align 4, !tbaa !55
  %477 = load ptr, ptr %4, align 8, !tbaa !8
  %478 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %477, i32 0, i32 9
  %479 = load i32, ptr %478, align 8, !tbaa !53
  %480 = load ptr, ptr %4, align 8, !tbaa !8
  %481 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %480, i32 0, i32 33
  %482 = load i32, ptr %481, align 8, !tbaa !48
  %483 = call signext i32 @iClip3(i32 noundef signext %476, i32 noundef signext %479, i32 noundef signext %482)
  %484 = load ptr, ptr %4, align 8, !tbaa !8
  %485 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %484, i32 0, i32 33
  store i32 %483, ptr %485, align 8, !tbaa !48
  %486 = load ptr, ptr %4, align 8, !tbaa !8
  %487 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %486, i32 0, i32 33
  %488 = load i32, ptr %487, align 8, !tbaa !48
  store i32 %488, ptr %3, align 4
  store i32 1, ptr %11, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #10
  br label %649

489:                                              ; preds = %407
  %490 = load ptr, ptr @img, align 8, !tbaa !8
  %491 = getelementptr inbounds nuw %struct.ImageParameters, ptr %490, i32 0, i32 5
  %492 = load i32, ptr %491, align 4, !tbaa !102
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %641

494:                                              ; preds = %489
  %495 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %496 = getelementptr inbounds nuw %struct.rc_generic, ptr %495, i32 0, i32 10
  %497 = load i32, ptr %496, align 8, !tbaa !79
  %498 = icmp eq i32 %497, 1
  br i1 %498, label %499, label %524

499:                                              ; preds = %494
  %500 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %501 = getelementptr inbounds nuw %struct.rc_generic, ptr %500, i32 0, i32 12
  %502 = load i32, ptr %501, align 8, !tbaa !108
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %524

504:                                              ; preds = %499
  %505 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %506 = getelementptr inbounds nuw %struct.rc_generic, ptr %505, i32 0, i32 1
  %507 = load i32, ptr %506, align 4, !tbaa !97
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %519, label %509

509:                                              ; preds = %504
  %510 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %511 = getelementptr inbounds nuw %struct.rc_generic, ptr %510, i32 0, i32 1
  %512 = load i32, ptr %511, align 4, !tbaa !97
  %513 = icmp eq i32 %512, 1
  br i1 %513, label %514, label %523

514:                                              ; preds = %509
  %515 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %516 = getelementptr inbounds nuw %struct.rc_generic, ptr %515, i32 0, i32 3
  %517 = load i32, ptr %516, align 4, !tbaa !116
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %514, %504
  %520 = load ptr, ptr %4, align 8, !tbaa !8
  %521 = load i32, ptr %5, align 4, !tbaa !31
  %522 = call signext i32 @updateFirstP(ptr noundef %520, i32 noundef signext %521)
  store i32 %522, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

523:                                              ; preds = %514, %509
  br label %640

524:                                              ; preds = %499, %494
  %525 = load ptr, ptr %4, align 8, !tbaa !8
  %526 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %525, i32 0, i32 27
  %527 = load double, ptr %526, align 8, !tbaa !84
  %528 = load ptr, ptr %4, align 8, !tbaa !8
  %529 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %528, i32 0, i32 25
  store double %527, ptr %529, align 8, !tbaa !110
  %530 = load ptr, ptr %4, align 8, !tbaa !8
  %531 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %530, i32 0, i32 28
  %532 = load double, ptr %531, align 8, !tbaa !85
  %533 = load ptr, ptr %4, align 8, !tbaa !8
  %534 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %533, i32 0, i32 26
  store double %532, ptr %534, align 8, !tbaa !111
  %535 = load ptr, ptr %4, align 8, !tbaa !8
  %536 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %535, i32 0, i32 16
  %537 = load double, ptr %536, align 8, !tbaa !86
  %538 = load ptr, ptr %4, align 8, !tbaa !8
  %539 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %538, i32 0, i32 14
  store double %537, ptr %539, align 8, !tbaa !112
  %540 = load ptr, ptr %4, align 8, !tbaa !8
  %541 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %540, i32 0, i32 17
  %542 = load double, ptr %541, align 8, !tbaa !87
  %543 = load ptr, ptr %4, align 8, !tbaa !8
  %544 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %543, i32 0, i32 15
  store double %542, ptr %544, align 8, !tbaa !113
  %545 = load ptr, ptr %4, align 8, !tbaa !8
  %546 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %545, i32 0, i32 29
  %547 = load i32, ptr %546, align 8, !tbaa !115
  store i32 %547, ptr %9, align 4, !tbaa !31
  %548 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %549 = getelementptr inbounds nuw %struct.rc_generic, ptr %548, i32 0, i32 1
  %550 = load i32, ptr %549, align 4, !tbaa !97
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %556

552:                                              ; preds = %524
  %553 = load ptr, ptr %4, align 8, !tbaa !8
  %554 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %553, i32 0, i32 44
  %555 = load i32, ptr %554, align 4, !tbaa !71
  store i32 %555, ptr %7, align 4, !tbaa !31
  br label %561

556:                                              ; preds = %524
  %557 = load ptr, ptr %4, align 8, !tbaa !8
  %558 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %557, i32 0, i32 44
  %559 = load i32, ptr %558, align 4, !tbaa !71
  %560 = ashr i32 %559, 1
  store i32 %560, ptr %7, align 4, !tbaa !31
  br label %561

561:                                              ; preds = %556, %552
  %562 = load ptr, ptr %4, align 8, !tbaa !8
  %563 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %562, i32 0, i32 39
  %564 = load i32, ptr %563, align 8, !tbaa !117
  %565 = load i32, ptr %7, align 4, !tbaa !31
  %566 = icmp eq i32 %564, %565
  br i1 %566, label %567, label %571

567:                                              ; preds = %561
  %568 = load ptr, ptr %4, align 8, !tbaa !8
  %569 = load i32, ptr %5, align 4, !tbaa !31
  %570 = call signext i32 @updateFirstBU(ptr noundef %568, i32 noundef signext %569)
  store i32 %570, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

571:                                              ; preds = %561
  %572 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %573 = getelementptr inbounds nuw %struct.rc_generic, ptr %572, i32 0, i32 6
  %574 = load i32, ptr %573, align 8, !tbaa !118
  %575 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %576 = getelementptr inbounds nuw %struct.rc_generic, ptr %575, i32 0, i32 7
  %577 = load i32, ptr %576, align 4, !tbaa !119
  %578 = add nsw i32 %574, %577
  %579 = load ptr, ptr %4, align 8, !tbaa !8
  %580 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %579, i32 0, i32 68
  %581 = load i32, ptr %580, align 8, !tbaa !39
  %582 = sub nsw i32 %581, %578
  store i32 %582, ptr %580, align 8, !tbaa !39
  %583 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %584 = getelementptr inbounds nuw %struct.rc_generic, ptr %583, i32 0, i32 6
  store i32 0, ptr %584, align 8, !tbaa !118
  %585 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %586 = getelementptr inbounds nuw %struct.rc_generic, ptr %585, i32 0, i32 7
  store i32 0, ptr %586, align 4, !tbaa !119
  %587 = load ptr, ptr %4, align 8, !tbaa !8
  %588 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %587, i32 0, i32 68
  %589 = load i32, ptr %588, align 8, !tbaa !39
  %590 = icmp slt i32 %589, 0
  br i1 %590, label %591, label %596

591:                                              ; preds = %571
  %592 = load ptr, ptr %4, align 8, !tbaa !8
  %593 = load i32, ptr %5, align 4, !tbaa !31
  %594 = load i32, ptr %9, align 4, !tbaa !31
  %595 = call signext i32 @updateNegativeTarget(ptr noundef %592, i32 noundef signext %593, i32 noundef signext %594)
  store i32 %595, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

596:                                              ; preds = %571
  %597 = load ptr, ptr %4, align 8, !tbaa !8
  call void @predictCurrPicMAD(ptr noundef %597)
  %598 = load ptr, ptr %4, align 8, !tbaa !8
  %599 = load i32, ptr %5, align 4, !tbaa !31
  %600 = load i32, ptr %9, align 4, !tbaa !31
  call void @updateModelQPBU(ptr noundef %598, i32 noundef signext %599, i32 noundef signext %600)
  %601 = load ptr, ptr %4, align 8, !tbaa !8
  %602 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %601, i32 0, i32 33
  %603 = load i32, ptr %602, align 8, !tbaa !48
  %604 = load ptr, ptr %4, align 8, !tbaa !8
  %605 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %604, i32 0, i32 38
  %606 = load i32, ptr %605, align 4, !tbaa !120
  %607 = add nsw i32 %606, %603
  store i32 %607, ptr %605, align 4, !tbaa !120
  %608 = load ptr, ptr %4, align 8, !tbaa !8
  %609 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %608, i32 0, i32 33
  %610 = load i32, ptr %609, align 8, !tbaa !48
  %611 = load ptr, ptr %4, align 8, !tbaa !8
  %612 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %611, i32 0, i32 29
  store i32 %610, ptr %612, align 8, !tbaa !115
  %613 = load ptr, ptr %4, align 8, !tbaa !8
  %614 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %613, i32 0, i32 39
  %615 = load i32, ptr %614, align 8, !tbaa !117
  %616 = add nsw i32 %615, -1
  store i32 %616, ptr %614, align 8, !tbaa !117
  %617 = load ptr, ptr %4, align 8, !tbaa !8
  %618 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %617, i32 0, i32 39
  %619 = load i32, ptr %618, align 8, !tbaa !117
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %636

621:                                              ; preds = %596
  %622 = load ptr, ptr @img, align 8, !tbaa !8
  %623 = getelementptr inbounds nuw %struct.ImageParameters, ptr %622, i32 0, i32 5
  %624 = load i32, ptr %623, align 4, !tbaa !102
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %636

626:                                              ; preds = %621
  %627 = load ptr, ptr @img, align 8, !tbaa !8
  %628 = getelementptr inbounds nuw %struct.ImageParameters, ptr %627, i32 0, i32 0
  %629 = load i32, ptr %628, align 8, !tbaa !109
  %630 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %631 = sub nsw i32 %629, %630
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %636

633:                                              ; preds = %626
  %634 = load ptr, ptr %4, align 8, !tbaa !8
  %635 = load i32, ptr %5, align 4, !tbaa !31
  call void @updateLastBU(ptr noundef %634, i32 noundef signext %635)
  br label %636

636:                                              ; preds = %633, %626, %621, %596
  %637 = load ptr, ptr %4, align 8, !tbaa !8
  %638 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %637, i32 0, i32 33
  %639 = load i32, ptr %638, align 8, !tbaa !48
  store i32 %639, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

640:                                              ; preds = %523
  br label %641

641:                                              ; preds = %640, %489
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644
  %646 = load ptr, ptr %4, align 8, !tbaa !8
  %647 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %646, i32 0, i32 33
  %648 = load i32, ptr %647, align 8, !tbaa !48
  store i32 %648, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %649

649:                                              ; preds = %645, %636, %591, %567, %519, %473, %383, %357, %346, %323, %182, %137, %62, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #10
  %650 = load i32, ptr %3, align 4
  ret i32 %650
}

; Function Attrs: nounwind
define dso_local signext i32 @updateQPRC3(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #10
  %13 = load ptr, ptr @img, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.ImageParameters, ptr %13, i32 0, i32 132
  %15 = load i32, ptr %14, align 4, !tbaa !101
  %16 = load ptr, ptr @img, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw %struct.ImageParameters, ptr %16, i32 0, i32 120
  %18 = load i32, ptr %17, align 8, !tbaa !9
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr @img, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !102
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %385

25:                                               ; preds = %20, %2
  %26 = load i32, ptr %5, align 4, !tbaa !31
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.rc_generic, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !97
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %362

33:                                               ; preds = %28, %25
  %34 = load ptr, ptr @img, align 8, !tbaa !8
  %35 = getelementptr inbounds nuw %struct.ImageParameters, ptr %34, i32 0, i32 0
  %36 = load i32, ptr %35, align 8, !tbaa !109
  %37 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %38 = sub nsw i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %33
  %41 = load ptr, ptr %4, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %41, i32 0, i32 11
  %43 = load i32, ptr %42, align 8, !tbaa !52
  %44 = load ptr, ptr %4, align 8, !tbaa !8
  %45 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %44, i32 0, i32 33
  store i32 %43, ptr %45, align 8, !tbaa !48
  %46 = load ptr, ptr %4, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 33
  %48 = load i32, ptr %47, align 8, !tbaa !48
  store i32 %48, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

49:                                               ; preds = %33
  %50 = load ptr, ptr @img, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw %struct.ImageParameters, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !102
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %49
  %55 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %56 = getelementptr inbounds nuw %struct.rc_generic, ptr %55, i32 0, i32 12
  %57 = load i32, ptr %56, align 8, !tbaa !108
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54
  %60 = load ptr, ptr @img, align 8, !tbaa !8
  %61 = getelementptr inbounds nuw %struct.ImageParameters, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !109
  %63 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %64 = sub nsw i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load ptr, ptr %4, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %67, i32 0, i32 11
  %69 = load i32, ptr %68, align 8, !tbaa !52
  %70 = load ptr, ptr %4, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %70, i32 0, i32 33
  store i32 %69, ptr %71, align 8, !tbaa !48
  %72 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.rc_generic, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !97
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %77)
  br label %78

78:                                               ; preds = %76, %66
  %79 = load ptr, ptr %4, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 33
  %81 = load i32, ptr %80, align 8, !tbaa !48
  store i32 %81, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

82:                                               ; preds = %59, %54, %49
  %83 = load ptr, ptr @img, align 8, !tbaa !8
  %84 = getelementptr inbounds nuw %struct.ImageParameters, ptr %83, i32 0, i32 5
  %85 = load i32, ptr %84, align 4, !tbaa !102
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %82
  %88 = load ptr, ptr @input, align 8, !tbaa !8
  %89 = getelementptr inbounds nuw %struct.InputParameters, ptr %88, i32 0, i32 121
  %90 = load i32, ptr %89, align 8, !tbaa !103
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load ptr, ptr @input, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw %struct.InputParameters, ptr %93, i32 0, i32 122
  %95 = load i32, ptr %94, align 4, !tbaa !104
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %92, %87
  %98 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %99 = getelementptr inbounds nuw %struct.rc_generic, ptr %98, i32 0, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPInterlaceBU(ptr noundef %103)
  br label %104

104:                                              ; preds = %102, %97, %92, %82
  %105 = load ptr, ptr %4, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %105, i32 0, i32 27
  %107 = load double, ptr %106, align 8, !tbaa !84
  %108 = load ptr, ptr %4, align 8, !tbaa !8
  %109 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %108, i32 0, i32 25
  store double %107, ptr %109, align 8, !tbaa !110
  %110 = load ptr, ptr %4, align 8, !tbaa !8
  %111 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %110, i32 0, i32 28
  %112 = load double, ptr %111, align 8, !tbaa !85
  %113 = load ptr, ptr %4, align 8, !tbaa !8
  %114 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %113, i32 0, i32 26
  store double %112, ptr %114, align 8, !tbaa !111
  %115 = load ptr, ptr %4, align 8, !tbaa !8
  %116 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %115, i32 0, i32 16
  %117 = load double, ptr %116, align 8, !tbaa !86
  %118 = load ptr, ptr %4, align 8, !tbaa !8
  %119 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %118, i32 0, i32 14
  store double %117, ptr %119, align 8, !tbaa !112
  %120 = load ptr, ptr %4, align 8, !tbaa !8
  %121 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %120, i32 0, i32 17
  %122 = load double, ptr %121, align 8, !tbaa !87
  %123 = load ptr, ptr %4, align 8, !tbaa !8
  %124 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %123, i32 0, i32 15
  store double %122, ptr %124, align 8, !tbaa !113
  %125 = load ptr, ptr %4, align 8, !tbaa !8
  %126 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %125, i32 0, i32 18
  %127 = getelementptr inbounds [21 x double], ptr %126, i64 0, i64 0
  %128 = load double, ptr %127, align 8, !tbaa !88
  %129 = load ptr, ptr %4, align 8, !tbaa !8
  %130 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %129, i32 0, i32 13
  store double %128, ptr %130, align 8, !tbaa !114
  %131 = load ptr, ptr %4, align 8, !tbaa !8
  %132 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %131, i32 0, i32 80
  %133 = load i32, ptr %132, align 4, !tbaa !91
  store i32 %133, ptr %8, align 4, !tbaa !31
  %134 = load ptr, ptr %4, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %134, i32 0, i32 29
  %136 = load i32, ptr %135, align 8, !tbaa !115
  store i32 %136, ptr %9, align 4, !tbaa !31
  %137 = load ptr, ptr %4, align 8, !tbaa !8
  %138 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %137, i32 0, i32 34
  %139 = load i32, ptr %138, align 4, !tbaa !83
  store i32 %139, ptr %10, align 4, !tbaa !31
  %140 = load ptr, ptr @img, align 8, !tbaa !8
  %141 = getelementptr inbounds nuw %struct.ImageParameters, ptr %140, i32 0, i32 132
  %142 = load i32, ptr %141, align 4, !tbaa !101
  %143 = load ptr, ptr @img, align 8, !tbaa !8
  %144 = getelementptr inbounds nuw %struct.ImageParameters, ptr %143, i32 0, i32 120
  %145 = load i32, ptr %144, align 8, !tbaa !9
  %146 = icmp ult i32 %142, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %104
  %148 = load ptr, ptr @img, align 8, !tbaa !8
  %149 = getelementptr inbounds nuw %struct.ImageParameters, ptr %148, i32 0, i32 5
  %150 = load i32, ptr %149, align 4, !tbaa !102
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load ptr, ptr %4, align 8, !tbaa !8
  %154 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %153, i32 0, i32 50
  %155 = load double, ptr %154, align 8, !tbaa !127
  %156 = load ptr, ptr %4, align 8, !tbaa !8
  %157 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %156, i32 0, i32 13
  store double %155, ptr %157, align 8, !tbaa !114
  br label %158

158:                                              ; preds = %152, %147, %104
  %159 = load ptr, ptr @img, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.ImageParameters, ptr %159, i32 0, i32 5
  %161 = load i32, ptr %160, align 4, !tbaa !102
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  store i32 0, ptr %10, align 4, !tbaa !31
  br label %164

164:                                              ; preds = %163, %158
  %165 = load ptr, ptr %4, align 8, !tbaa !8
  %166 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %165, i32 0, i32 14
  %167 = load double, ptr %166, align 8, !tbaa !112
  %168 = load ptr, ptr %4, align 8, !tbaa !8
  %169 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %168, i32 0, i32 13
  %170 = load double, ptr %169, align 8, !tbaa !114
  %171 = load ptr, ptr %4, align 8, !tbaa !8
  %172 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %171, i32 0, i32 15
  %173 = load double, ptr %172, align 8, !tbaa !113
  %174 = call double @llvm.fmuladd.f64(double %167, double %170, double %173)
  %175 = load ptr, ptr %4, align 8, !tbaa !8
  %176 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %175, i32 0, i32 46
  store double %174, ptr %176, align 8, !tbaa !36
  %177 = load ptr, ptr %4, align 8, !tbaa !8
  %178 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %177, i32 0, i32 68
  %179 = load i32, ptr %178, align 8, !tbaa !39
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %164
  %182 = load i32, ptr %9, align 4, !tbaa !31
  %183 = load i32, ptr %8, align 4, !tbaa !31
  %184 = add nsw i32 %182, %183
  %185 = load ptr, ptr %4, align 8, !tbaa !8
  %186 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %185, i32 0, i32 33
  store i32 %184, ptr %186, align 8, !tbaa !48
  %187 = load ptr, ptr %4, align 8, !tbaa !8
  %188 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %187, i32 0, i32 10
  %189 = load i32, ptr %188, align 4, !tbaa !55
  %190 = load ptr, ptr %4, align 8, !tbaa !8
  %191 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %190, i32 0, i32 9
  %192 = load i32, ptr %191, align 8, !tbaa !53
  %193 = load ptr, ptr %4, align 8, !tbaa !8
  %194 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %193, i32 0, i32 33
  %195 = load i32, ptr %194, align 8, !tbaa !48
  %196 = call signext i32 @iClip3(i32 noundef signext %189, i32 noundef signext %192, i32 noundef signext %195)
  %197 = load ptr, ptr %4, align 8, !tbaa !8
  %198 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %197, i32 0, i32 33
  store i32 %196, ptr %198, align 8, !tbaa !48
  br label %279

199:                                              ; preds = %164
  %200 = load ptr, ptr @img, align 8, !tbaa !8
  %201 = getelementptr inbounds nuw %struct.ImageParameters, ptr %200, i32 0, i32 5
  %202 = load i32, ptr %201, align 4, !tbaa !102
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %199
  %205 = load ptr, ptr @img, align 8, !tbaa !8
  %206 = getelementptr inbounds nuw %struct.ImageParameters, ptr %205, i32 0, i32 132
  %207 = load i32, ptr %206, align 4, !tbaa !101
  %208 = load ptr, ptr @img, align 8, !tbaa !8
  %209 = getelementptr inbounds nuw %struct.ImageParameters, ptr %208, i32 0, i32 120
  %210 = load i32, ptr %209, align 8, !tbaa !9
  %211 = icmp ult i32 %207, %210
  br i1 %211, label %212, label %222

212:                                              ; preds = %204
  %213 = load ptr, ptr %4, align 8, !tbaa !8
  %214 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %213, i32 0, i32 68
  %215 = load i32, ptr %214, align 8, !tbaa !39
  %216 = load i32, ptr %10, align 4, !tbaa !31
  %217 = sub nsw i32 %215, %216
  %218 = load ptr, ptr %4, align 8, !tbaa !8
  %219 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %218, i32 0, i32 44
  %220 = load i32, ptr %219, align 4, !tbaa !71
  %221 = sdiv i32 %217, %220
  store i32 %221, ptr %6, align 4, !tbaa !31
  br label %228

222:                                              ; preds = %204
  %223 = load ptr, ptr %4, align 8, !tbaa !8
  %224 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %223, i32 0, i32 68
  %225 = load i32, ptr %224, align 8, !tbaa !39
  %226 = load i32, ptr %10, align 4, !tbaa !31
  %227 = sub nsw i32 %225, %226
  store i32 %227, ptr %6, align 4, !tbaa !31
  br label %228

228:                                              ; preds = %222, %212
  br label %246

229:                                              ; preds = %199
  %230 = load ptr, ptr %4, align 8, !tbaa !8
  %231 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %230, i32 0, i32 68
  %232 = load i32, ptr %231, align 8, !tbaa !39
  %233 = load i32, ptr %10, align 4, !tbaa !31
  %234 = sub nsw i32 %232, %233
  store i32 %234, ptr %6, align 4, !tbaa !31
  %235 = load i32, ptr %6, align 4, !tbaa !31
  %236 = load ptr, ptr %4, align 8, !tbaa !8
  %237 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %236, i32 0, i32 0
  %238 = load float, ptr %237, align 8, !tbaa !65
  %239 = load ptr, ptr %4, align 8, !tbaa !8
  %240 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %239, i32 0, i32 1
  %241 = load float, ptr %240, align 4, !tbaa !69
  %242 = fmul float 4.000000e+00, %241
  %243 = fdiv float %238, %242
  %244 = fptosi float %243 to i32
  %245 = call signext i32 @imax(i32 noundef signext %235, i32 noundef signext %244)
  store i32 %245, ptr %6, align 4, !tbaa !31
  br label %246

246:                                              ; preds = %229, %228
  %247 = load ptr, ptr %4, align 8, !tbaa !8
  %248 = load i32, ptr %6, align 4, !tbaa !31
  call void @updateModelQPFrame(ptr noundef %247, i32 noundef signext %248)
  %249 = load ptr, ptr %4, align 8, !tbaa !8
  %250 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %249, i32 0, i32 10
  %251 = load i32, ptr %250, align 4, !tbaa !55
  %252 = load ptr, ptr %4, align 8, !tbaa !8
  %253 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %252, i32 0, i32 9
  %254 = load i32, ptr %253, align 8, !tbaa !53
  %255 = load ptr, ptr %4, align 8, !tbaa !8
  %256 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %255, i32 0, i32 33
  %257 = load i32, ptr %256, align 8, !tbaa !48
  %258 = call signext i32 @iClip3(i32 noundef signext %251, i32 noundef signext %254, i32 noundef signext %257)
  %259 = load ptr, ptr %4, align 8, !tbaa !8
  %260 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %259, i32 0, i32 33
  store i32 %258, ptr %260, align 8, !tbaa !48
  %261 = load ptr, ptr @img, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw %struct.ImageParameters, ptr %261, i32 0, i32 5
  %263 = load i32, ptr %262, align 4, !tbaa !102
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %278

265:                                              ; preds = %246
  %266 = load i32, ptr %9, align 4, !tbaa !31
  %267 = load i32, ptr %8, align 4, !tbaa !31
  %268 = sub nsw i32 %266, %267
  %269 = load i32, ptr %9, align 4, !tbaa !31
  %270 = load i32, ptr %8, align 4, !tbaa !31
  %271 = add nsw i32 %269, %270
  %272 = load ptr, ptr %4, align 8, !tbaa !8
  %273 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %272, i32 0, i32 33
  %274 = load i32, ptr %273, align 8, !tbaa !48
  %275 = call signext i32 @iClip3(i32 noundef signext %268, i32 noundef signext %271, i32 noundef signext %274)
  %276 = load ptr, ptr %4, align 8, !tbaa !8
  %277 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %276, i32 0, i32 33
  store i32 %275, ptr %277, align 8, !tbaa !48
  br label %278

278:                                              ; preds = %265, %246
  br label %279

279:                                              ; preds = %278, %181
  %280 = load ptr, ptr @img, align 8, !tbaa !8
  %281 = getelementptr inbounds nuw %struct.ImageParameters, ptr %280, i32 0, i32 5
  %282 = load i32, ptr %281, align 4, !tbaa !102
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %279
  %285 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %286 = getelementptr inbounds nuw %struct.rc_generic, ptr %285, i32 0, i32 1
  %287 = load i32, ptr %286, align 4, !tbaa !97
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %284
  %290 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateQPNonPicAFF(ptr noundef %290)
  br label %291

291:                                              ; preds = %289, %284, %279
  %292 = load ptr, ptr @img, align 8, !tbaa !8
  %293 = getelementptr inbounds nuw %struct.ImageParameters, ptr %292, i32 0, i32 5
  %294 = load i32, ptr %293, align 4, !tbaa !102
  %295 = icmp eq i32 %294, 1
  br i1 %295, label %296, label %358

296:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #10
  %297 = load ptr, ptr %4, align 8, !tbaa !8
  %298 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %297, i32 0, i32 35
  %299 = load i32, ptr %298, align 8, !tbaa !105
  %300 = load ptr, ptr %4, align 8, !tbaa !8
  %301 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %300, i32 0, i32 36
  %302 = load i32, ptr %301, align 4, !tbaa !106
  %303 = add nsw i32 %299, %302
  %304 = ashr i32 %303, 1
  %305 = add nsw i32 %304, 1
  store i32 %305, ptr %12, align 4, !tbaa !31
  %306 = load ptr, ptr @input, align 8, !tbaa !8
  %307 = getelementptr inbounds nuw %struct.InputParameters, ptr %306, i32 0, i32 69
  %308 = load i32, ptr %307, align 8, !tbaa !121
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %329

310:                                              ; preds = %296
  %311 = load ptr, ptr @img, align 8, !tbaa !8
  %312 = getelementptr inbounds nuw %struct.ImageParameters, ptr %311, i32 0, i32 76
  %313 = load i32, ptr %312, align 4, !tbaa !122
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %329

315:                                              ; preds = %310
  %316 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %317 = load ptr, ptr @img, align 8, !tbaa !8
  %318 = getelementptr inbounds nuw %struct.ImageParameters, ptr %317, i32 0, i32 76
  %319 = load i32, ptr %318, align 4, !tbaa !122
  %320 = sub nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.GOP_DATA, ptr %316, i64 %321
  %323 = getelementptr inbounds nuw %struct.GOP_DATA, ptr %322, i32 0, i32 4
  %324 = load i32, ptr %323, align 4, !tbaa !124
  %325 = load ptr, ptr %4, align 8, !tbaa !8
  %326 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %325, i32 0, i32 33
  %327 = load i32, ptr %326, align 8, !tbaa !48
  %328 = sub nsw i32 %327, %324
  store i32 %328, ptr %326, align 8, !tbaa !48
  br label %329

329:                                              ; preds = %315, %310, %296
  %330 = load i32, ptr %12, align 4, !tbaa !31
  %331 = load ptr, ptr @input, align 8, !tbaa !8
  %332 = getelementptr inbounds nuw %struct.InputParameters, ptr %331, i32 0, i32 69
  %333 = load i32, ptr %332, align 8, !tbaa !121
  %334 = icmp ne i32 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i32 0, i32 5
  %337 = sub nsw i32 %330, %336
  %338 = load i32, ptr %12, align 4, !tbaa !31
  %339 = add nsw i32 %338, 5
  %340 = load ptr, ptr %4, align 8, !tbaa !8
  %341 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %340, i32 0, i32 33
  %342 = load i32, ptr %341, align 8, !tbaa !48
  %343 = call signext i32 @iClip3(i32 noundef signext %337, i32 noundef signext %339, i32 noundef signext %342)
  %344 = load ptr, ptr %4, align 8, !tbaa !8
  %345 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %344, i32 0, i32 33
  store i32 %343, ptr %345, align 8, !tbaa !48
  %346 = load ptr, ptr %4, align 8, !tbaa !8
  %347 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %346, i32 0, i32 10
  %348 = load i32, ptr %347, align 4, !tbaa !55
  %349 = load ptr, ptr %4, align 8, !tbaa !8
  %350 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %349, i32 0, i32 9
  %351 = load i32, ptr %350, align 8, !tbaa !53
  %352 = load ptr, ptr %4, align 8, !tbaa !8
  %353 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %352, i32 0, i32 33
  %354 = load i32, ptr %353, align 8, !tbaa !48
  %355 = call signext i32 @iClip3(i32 noundef signext %348, i32 noundef signext %351, i32 noundef signext %354)
  %356 = load ptr, ptr %4, align 8, !tbaa !8
  %357 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %356, i32 0, i32 33
  store i32 %355, ptr %357, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #10
  br label %358

358:                                              ; preds = %329, %291
  %359 = load ptr, ptr %4, align 8, !tbaa !8
  %360 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %359, i32 0, i32 33
  %361 = load i32, ptr %360, align 8, !tbaa !48
  store i32 %361, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

362:                                              ; preds = %28
  %363 = load ptr, ptr @img, align 8, !tbaa !8
  %364 = getelementptr inbounds nuw %struct.ImageParameters, ptr %363, i32 0, i32 5
  %365 = load i32, ptr %364, align 4, !tbaa !102
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %381

367:                                              ; preds = %362
  %368 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %369 = getelementptr inbounds nuw %struct.rc_generic, ptr %368, i32 0, i32 3
  %370 = load i32, ptr %369, align 4, !tbaa !116
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %381

372:                                              ; preds = %367
  %373 = load ptr, ptr @img, align 8, !tbaa !8
  %374 = getelementptr inbounds nuw %struct.ImageParameters, ptr %373, i32 0, i32 0
  %375 = load i32, ptr %374, align 8, !tbaa !109
  %376 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %377 = sub nsw i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %372
  %380 = load ptr, ptr %4, align 8, !tbaa !8
  call void @updateBottomField(ptr noundef %380)
  br label %381

381:                                              ; preds = %379, %372, %367, %362
  %382 = load ptr, ptr %4, align 8, !tbaa !8
  %383 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %382, i32 0, i32 33
  %384 = load i32, ptr %383, align 8, !tbaa !48
  store i32 %384, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

385:                                              ; preds = %20
  %386 = load ptr, ptr @img, align 8, !tbaa !8
  %387 = getelementptr inbounds nuw %struct.ImageParameters, ptr %386, i32 0, i32 0
  %388 = load i32, ptr %387, align 8, !tbaa !109
  %389 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %390 = sub nsw i32 %388, %389
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %401, label %392

392:                                              ; preds = %385
  %393 = load ptr, ptr %4, align 8, !tbaa !8
  %394 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %393, i32 0, i32 11
  %395 = load i32, ptr %394, align 8, !tbaa !52
  %396 = load ptr, ptr %4, align 8, !tbaa !8
  %397 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %396, i32 0, i32 33
  store i32 %395, ptr %397, align 8, !tbaa !48
  %398 = load ptr, ptr %4, align 8, !tbaa !8
  %399 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %398, i32 0, i32 33
  %400 = load i32, ptr %399, align 8, !tbaa !48
  store i32 %400, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

401:                                              ; preds = %385
  %402 = load ptr, ptr @img, align 8, !tbaa !8
  %403 = getelementptr inbounds nuw %struct.ImageParameters, ptr %402, i32 0, i32 5
  %404 = load i32, ptr %403, align 4, !tbaa !102
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %553

406:                                              ; preds = %401
  %407 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %408 = getelementptr inbounds nuw %struct.rc_generic, ptr %407, i32 0, i32 10
  %409 = load i32, ptr %408, align 8, !tbaa !79
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %411, label %436

411:                                              ; preds = %406
  %412 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %413 = getelementptr inbounds nuw %struct.rc_generic, ptr %412, i32 0, i32 12
  %414 = load i32, ptr %413, align 8, !tbaa !108
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %436

416:                                              ; preds = %411
  %417 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %418 = getelementptr inbounds nuw %struct.rc_generic, ptr %417, i32 0, i32 1
  %419 = load i32, ptr %418, align 4, !tbaa !97
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %431, label %421

421:                                              ; preds = %416
  %422 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %423 = getelementptr inbounds nuw %struct.rc_generic, ptr %422, i32 0, i32 1
  %424 = load i32, ptr %423, align 4, !tbaa !97
  %425 = icmp eq i32 %424, 1
  br i1 %425, label %426, label %435

426:                                              ; preds = %421
  %427 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %428 = getelementptr inbounds nuw %struct.rc_generic, ptr %427, i32 0, i32 3
  %429 = load i32, ptr %428, align 4, !tbaa !116
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %435

431:                                              ; preds = %426, %416
  %432 = load ptr, ptr %4, align 8, !tbaa !8
  %433 = load i32, ptr %5, align 4, !tbaa !31
  %434 = call signext i32 @updateFirstP(ptr noundef %432, i32 noundef signext %433)
  store i32 %434, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

435:                                              ; preds = %426, %421
  br label %552

436:                                              ; preds = %411, %406
  %437 = load ptr, ptr %4, align 8, !tbaa !8
  %438 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %437, i32 0, i32 27
  %439 = load double, ptr %438, align 8, !tbaa !84
  %440 = load ptr, ptr %4, align 8, !tbaa !8
  %441 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %440, i32 0, i32 25
  store double %439, ptr %441, align 8, !tbaa !110
  %442 = load ptr, ptr %4, align 8, !tbaa !8
  %443 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %442, i32 0, i32 28
  %444 = load double, ptr %443, align 8, !tbaa !85
  %445 = load ptr, ptr %4, align 8, !tbaa !8
  %446 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %445, i32 0, i32 26
  store double %444, ptr %446, align 8, !tbaa !111
  %447 = load ptr, ptr %4, align 8, !tbaa !8
  %448 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %447, i32 0, i32 16
  %449 = load double, ptr %448, align 8, !tbaa !86
  %450 = load ptr, ptr %4, align 8, !tbaa !8
  %451 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %450, i32 0, i32 14
  store double %449, ptr %451, align 8, !tbaa !112
  %452 = load ptr, ptr %4, align 8, !tbaa !8
  %453 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %452, i32 0, i32 17
  %454 = load double, ptr %453, align 8, !tbaa !87
  %455 = load ptr, ptr %4, align 8, !tbaa !8
  %456 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %455, i32 0, i32 15
  store double %454, ptr %456, align 8, !tbaa !113
  %457 = load ptr, ptr %4, align 8, !tbaa !8
  %458 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %457, i32 0, i32 29
  %459 = load i32, ptr %458, align 8, !tbaa !115
  store i32 %459, ptr %9, align 4, !tbaa !31
  %460 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %461 = getelementptr inbounds nuw %struct.rc_generic, ptr %460, i32 0, i32 1
  %462 = load i32, ptr %461, align 4, !tbaa !97
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %436
  %465 = load ptr, ptr %4, align 8, !tbaa !8
  %466 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %465, i32 0, i32 44
  %467 = load i32, ptr %466, align 4, !tbaa !71
  store i32 %467, ptr %7, align 4, !tbaa !31
  br label %473

468:                                              ; preds = %436
  %469 = load ptr, ptr %4, align 8, !tbaa !8
  %470 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %469, i32 0, i32 44
  %471 = load i32, ptr %470, align 4, !tbaa !71
  %472 = ashr i32 %471, 1
  store i32 %472, ptr %7, align 4, !tbaa !31
  br label %473

473:                                              ; preds = %468, %464
  %474 = load ptr, ptr %4, align 8, !tbaa !8
  %475 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %474, i32 0, i32 39
  %476 = load i32, ptr %475, align 8, !tbaa !117
  %477 = load i32, ptr %7, align 4, !tbaa !31
  %478 = icmp eq i32 %476, %477
  br i1 %478, label %479, label %483

479:                                              ; preds = %473
  %480 = load ptr, ptr %4, align 8, !tbaa !8
  %481 = load i32, ptr %5, align 4, !tbaa !31
  %482 = call signext i32 @updateFirstBU(ptr noundef %480, i32 noundef signext %481)
  store i32 %482, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

483:                                              ; preds = %473
  %484 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %485 = getelementptr inbounds nuw %struct.rc_generic, ptr %484, i32 0, i32 6
  %486 = load i32, ptr %485, align 8, !tbaa !118
  %487 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %488 = getelementptr inbounds nuw %struct.rc_generic, ptr %487, i32 0, i32 7
  %489 = load i32, ptr %488, align 4, !tbaa !119
  %490 = add nsw i32 %486, %489
  %491 = load ptr, ptr %4, align 8, !tbaa !8
  %492 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %491, i32 0, i32 68
  %493 = load i32, ptr %492, align 8, !tbaa !39
  %494 = sub nsw i32 %493, %490
  store i32 %494, ptr %492, align 8, !tbaa !39
  %495 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %496 = getelementptr inbounds nuw %struct.rc_generic, ptr %495, i32 0, i32 6
  store i32 0, ptr %496, align 8, !tbaa !118
  %497 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %498 = getelementptr inbounds nuw %struct.rc_generic, ptr %497, i32 0, i32 7
  store i32 0, ptr %498, align 4, !tbaa !119
  %499 = load ptr, ptr %4, align 8, !tbaa !8
  %500 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %499, i32 0, i32 68
  %501 = load i32, ptr %500, align 8, !tbaa !39
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %483
  %504 = load ptr, ptr %4, align 8, !tbaa !8
  %505 = load i32, ptr %5, align 4, !tbaa !31
  %506 = load i32, ptr %9, align 4, !tbaa !31
  %507 = call signext i32 @updateNegativeTarget(ptr noundef %504, i32 noundef signext %505, i32 noundef signext %506)
  store i32 %507, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

508:                                              ; preds = %483
  %509 = load ptr, ptr %4, align 8, !tbaa !8
  call void @predictCurrPicMAD(ptr noundef %509)
  %510 = load ptr, ptr %4, align 8, !tbaa !8
  %511 = load i32, ptr %5, align 4, !tbaa !31
  %512 = load i32, ptr %9, align 4, !tbaa !31
  call void @updateModelQPBU(ptr noundef %510, i32 noundef signext %511, i32 noundef signext %512)
  %513 = load ptr, ptr %4, align 8, !tbaa !8
  %514 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %513, i32 0, i32 33
  %515 = load i32, ptr %514, align 8, !tbaa !48
  %516 = load ptr, ptr %4, align 8, !tbaa !8
  %517 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %516, i32 0, i32 38
  %518 = load i32, ptr %517, align 4, !tbaa !120
  %519 = add nsw i32 %518, %515
  store i32 %519, ptr %517, align 4, !tbaa !120
  %520 = load ptr, ptr %4, align 8, !tbaa !8
  %521 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %520, i32 0, i32 33
  %522 = load i32, ptr %521, align 8, !tbaa !48
  %523 = load ptr, ptr %4, align 8, !tbaa !8
  %524 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %523, i32 0, i32 29
  store i32 %522, ptr %524, align 8, !tbaa !115
  %525 = load ptr, ptr %4, align 8, !tbaa !8
  %526 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %525, i32 0, i32 39
  %527 = load i32, ptr %526, align 8, !tbaa !117
  %528 = add nsw i32 %527, -1
  store i32 %528, ptr %526, align 8, !tbaa !117
  %529 = load ptr, ptr %4, align 8, !tbaa !8
  %530 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %529, i32 0, i32 39
  %531 = load i32, ptr %530, align 8, !tbaa !117
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %548

533:                                              ; preds = %508
  %534 = load ptr, ptr @img, align 8, !tbaa !8
  %535 = getelementptr inbounds nuw %struct.ImageParameters, ptr %534, i32 0, i32 5
  %536 = load i32, ptr %535, align 4, !tbaa !102
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %548

538:                                              ; preds = %533
  %539 = load ptr, ptr @img, align 8, !tbaa !8
  %540 = getelementptr inbounds nuw %struct.ImageParameters, ptr %539, i32 0, i32 0
  %541 = load i32, ptr %540, align 8, !tbaa !109
  %542 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %543 = sub nsw i32 %541, %542
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %538
  %546 = load ptr, ptr %4, align 8, !tbaa !8
  %547 = load i32, ptr %5, align 4, !tbaa !31
  call void @updateLastBU(ptr noundef %546, i32 noundef signext %547)
  br label %548

548:                                              ; preds = %545, %538, %533, %508
  %549 = load ptr, ptr %4, align 8, !tbaa !8
  %550 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %549, i32 0, i32 33
  %551 = load i32, ptr %550, align 8, !tbaa !48
  store i32 %551, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

552:                                              ; preds = %435
  br label %553

553:                                              ; preds = %552, %401
  br label %554

554:                                              ; preds = %553
  br label %555

555:                                              ; preds = %554
  %556 = load ptr, ptr %4, align 8, !tbaa !8
  %557 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %556, i32 0, i32 33
  %558 = load i32, ptr %557, align 8, !tbaa !48
  store i32 %558, ptr %3, align 4
  store i32 1, ptr %11, align 4
  br label %559

559:                                              ; preds = %555, %548, %503, %479, %431, %392, %381, %358, %78, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #10
  %560 = load i32, ptr %3, align 4
  ret i32 %560
}

; Function Attrs: nounwind
define dso_local void @rc_init_GOP(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
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
  %16 = alloca [5 x i32], align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  store i32 %2, ptr %6, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  store i32 0, ptr %7, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #10
  %20 = load ptr, ptr @input, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.InputParameters, ptr %20, i32 0, i32 162
  %22 = load i32, ptr %21, align 8, !tbaa !61
  switch i32 %22, label %294 [
    i32 3, label %23
  ]

23:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #10
  store i32 0, ptr %12, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #10
  store i32 0, ptr %15, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 20, ptr %16) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #10
  %24 = load ptr, ptr @input, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.InputParameters, ptr %24, i32 0, i32 40
  %26 = load i32, ptr %25, align 8, !tbaa !67
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %19, align 4, !tbaa !31
  %28 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %28, i8 0, i64 20, i1 false)
  %29 = load ptr, ptr @input, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.InputParameters, ptr %29, i32 0, i32 40
  %31 = load i32, ptr %30, align 8, !tbaa !67
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %114

33:                                               ; preds = %23
  %34 = load ptr, ptr @input, align 8, !tbaa !8
  %35 = getelementptr inbounds nuw %struct.InputParameters, ptr %34, i32 0, i32 69
  %36 = load i32, ptr %35, align 8, !tbaa !121
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %62

38:                                               ; preds = %33
  store i32 2, ptr %15, align 4, !tbaa !31
  %39 = load ptr, ptr @input, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw %struct.InputParameters, ptr %39, i32 0, i32 40
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = ashr i32 %41, 1
  %43 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 0
  store i32 %42, ptr %43, align 4, !tbaa !31
  %44 = load ptr, ptr @input, align 8, !tbaa !8
  %45 = getelementptr inbounds nuw %struct.InputParameters, ptr %44, i32 0, i32 40
  %46 = load i32, ptr %45, align 8, !tbaa !67
  %47 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 0
  %48 = load i32, ptr %47, align 4, !tbaa !31
  %49 = sub nsw i32 %46, %48
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %38
  %52 = load ptr, ptr @input, align 8, !tbaa !8
  %53 = getelementptr inbounds nuw %struct.InputParameters, ptr %52, i32 0, i32 40
  %54 = load i32, ptr %53, align 8, !tbaa !67
  %55 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 0
  %56 = load i32, ptr %55, align 4, !tbaa !31
  %57 = sub nsw i32 %54, %56
  br label %59

58:                                               ; preds = %38
  br label %59

59:                                               ; preds = %58, %51
  %60 = phi i32 [ %57, %51 ], [ 0, %58 ]
  %61 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 1
  store i32 %60, ptr %61, align 4, !tbaa !31
  br label %110

62:                                               ; preds = %33
  %63 = load ptr, ptr @input, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw %struct.InputParameters, ptr %63, i32 0, i32 69
  %65 = load i32, ptr %64, align 8, !tbaa !121
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = load i32, ptr %19, align 4, !tbaa !31
  store i32 %68, ptr %13, align 4, !tbaa !31
  br label %69

69:                                               ; preds = %72, %67
  %70 = load i32, ptr %13, align 4, !tbaa !31
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, ptr %13, align 4, !tbaa !31
  %74 = and i32 %73, 1
  %75 = load i32, ptr %12, align 4, !tbaa !31
  %76 = add nsw i32 %75, %74
  store i32 %76, ptr %12, align 4, !tbaa !31
  %77 = load i32, ptr %13, align 4, !tbaa !31
  %78 = ashr i32 %77, 1
  store i32 %78, ptr %13, align 4, !tbaa !31
  br label %69, !llvm.loop !128

79:                                               ; preds = %69
  store i32 0, ptr %15, align 4, !tbaa !31
  %80 = load i32, ptr %19, align 4, !tbaa !31
  store i32 %80, ptr %13, align 4, !tbaa !31
  br label %81

81:                                               ; preds = %84, %79
  %82 = load i32, ptr %13, align 4, !tbaa !31
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, ptr %13, align 4, !tbaa !31
  %86 = ashr i32 %85, 1
  store i32 %86, ptr %13, align 4, !tbaa !31
  %87 = load i32, ptr %15, align 4, !tbaa !31
  %88 = shl i32 1, %87
  %89 = load i32, ptr %15, align 4, !tbaa !31
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 %90
  store i32 %88, ptr %91, align 4, !tbaa !31
  %92 = load i32, ptr %15, align 4, !tbaa !31
  %93 = add nsw i32 %92, 1
  store i32 %93, ptr %15, align 4, !tbaa !31
  br label %81, !llvm.loop !129

94:                                               ; preds = %81
  br label %109

95:                                               ; preds = %62
  %96 = load ptr, ptr @input, align 8, !tbaa !8
  %97 = getelementptr inbounds nuw %struct.InputParameters, ptr %96, i32 0, i32 69
  %98 = load i32, ptr %97, align 8, !tbaa !121
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load ptr, ptr @stderr, align 8, !tbaa !130
  %102 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef @.str.5) #10
  call void @exit(i32 noundef signext 1) #13
  unreachable

103:                                              ; preds = %95
  store i32 1, ptr %15, align 4, !tbaa !31
  %104 = load ptr, ptr @input, align 8, !tbaa !8
  %105 = getelementptr inbounds nuw %struct.InputParameters, ptr %104, i32 0, i32 40
  %106 = load i32, ptr %105, align 8, !tbaa !67
  %107 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 0
  store i32 %106, ptr %107, align 4, !tbaa !31
  br label %108

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %59
  %111 = load i32, ptr %15, align 4, !tbaa !31
  %112 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %113 = getelementptr inbounds nuw %struct.rc_generic, ptr %112, i32 0, i32 20
  store i32 %111, ptr %113, align 8, !tbaa !132
  br label %130

114:                                              ; preds = %23
  store i32 0, ptr %14, align 4, !tbaa !31
  br label %115

115:                                              ; preds = %124, %114
  %116 = load i32, ptr %14, align 4, !tbaa !31
  %117 = icmp slt i32 %116, 5
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load ptr, ptr @input, align 8, !tbaa !8
  %120 = getelementptr inbounds nuw %struct.InputParameters, ptr %119, i32 0, i32 166
  %121 = load i32, ptr %14, align 4, !tbaa !31
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [5 x double], ptr %120, i64 0, i64 %122
  store double 0.000000e+00, ptr %123, align 8, !tbaa !88
  br label %124

124:                                              ; preds = %118
  %125 = load i32, ptr %14, align 4, !tbaa !31
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %14, align 4, !tbaa !31
  br label %115, !llvm.loop !133

127:                                              ; preds = %115
  %128 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %129 = getelementptr inbounds nuw %struct.rc_generic, ptr %128, i32 0, i32 20
  store i32 0, ptr %129, align 8, !tbaa !132
  br label %130

130:                                              ; preds = %127, %110
  %131 = load ptr, ptr @input, align 8, !tbaa !8
  %132 = getelementptr inbounds nuw %struct.InputParameters, ptr %131, i32 0, i32 30
  %133 = load i32, ptr %132, align 8, !tbaa !134
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  br label %140

136:                                              ; preds = %130
  %137 = load ptr, ptr @input, align 8, !tbaa !8
  %138 = getelementptr inbounds nuw %struct.InputParameters, ptr %137, i32 0, i32 30
  %139 = load i32, ptr %138, align 8, !tbaa !134
  br label %140

140:                                              ; preds = %136, %135
  %141 = phi i32 [ 1, %135 ], [ %139, %136 ]
  %142 = load i32, ptr %19, align 4, !tbaa !31
  %143 = mul nsw i32 %141, %142
  %144 = sitofp i32 %143 to double
  %145 = load ptr, ptr @input, align 8, !tbaa !8
  %146 = getelementptr inbounds nuw %struct.InputParameters, ptr %145, i32 0, i32 158
  %147 = load i32, ptr %146, align 8, !tbaa !64
  %148 = sitofp i32 %147 to double
  %149 = load ptr, ptr @input, align 8, !tbaa !8
  %150 = getelementptr inbounds nuw %struct.InputParameters, ptr %149, i32 0, i32 92
  %151 = load double, ptr %150, align 8, !tbaa !135
  %152 = fdiv double %148, %151
  %153 = fmul double %144, %152
  %154 = fptrunc double %153 to float
  store float %154, ptr %17, align 4, !tbaa !136
  store float 0.000000e+00, ptr %18, align 4, !tbaa !136
  store i32 0, ptr %14, align 4, !tbaa !31
  br label %155

155:                                              ; preds = %186, %140
  %156 = load i32, ptr %14, align 4, !tbaa !31
  %157 = load i32, ptr %15, align 4, !tbaa !31
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %189

159:                                              ; preds = %155
  %160 = load i32, ptr %14, align 4, !tbaa !31
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !31
  %164 = sitofp i32 %163 to double
  %165 = load ptr, ptr @input, align 8, !tbaa !8
  %166 = getelementptr inbounds nuw %struct.InputParameters, ptr %165, i32 0, i32 166
  %167 = load i32, ptr %14, align 4, !tbaa !31
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [5 x double], ptr %166, i64 0, i64 %168
  %170 = load double, ptr %169, align 8, !tbaa !88
  %171 = fmul double %164, %170
  %172 = fptrunc double %171 to float
  %173 = load float, ptr %18, align 4, !tbaa !136
  %174 = fadd float %173, %172
  store float %174, ptr %18, align 4, !tbaa !136
  %175 = load i32, ptr %14, align 4, !tbaa !31
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [5 x i32], ptr %16, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !31
  %179 = load i32, ptr %5, align 4, !tbaa !31
  %180 = mul nsw i32 %178, %179
  %181 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %182 = getelementptr inbounds nuw %struct.rc_generic, ptr %181, i32 0, i32 21
  %183 = load i32, ptr %14, align 4, !tbaa !31
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [5 x i32], ptr %182, i64 0, i64 %184
  store i32 %180, ptr %185, align 4, !tbaa !31
  br label %186

186:                                              ; preds = %159
  %187 = load i32, ptr %14, align 4, !tbaa !31
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %14, align 4, !tbaa !31
  br label %155, !llvm.loop !137

189:                                              ; preds = %155
  %190 = load float, ptr %18, align 4, !tbaa !136
  %191 = fadd float %190, 1.000000e+00
  store float %191, ptr %18, align 4, !tbaa !136
  %192 = load ptr, ptr @input, align 8, !tbaa !8
  %193 = getelementptr inbounds nuw %struct.InputParameters, ptr %192, i32 0, i32 30
  %194 = load i32, ptr %193, align 8, !tbaa !134
  %195 = icmp sge i32 %194, 1
  br i1 %195, label %196, label %210

196:                                              ; preds = %189
  %197 = load ptr, ptr @input, align 8, !tbaa !8
  %198 = getelementptr inbounds nuw %struct.InputParameters, ptr %197, i32 0, i32 30
  %199 = load i32, ptr %198, align 8, !tbaa !134
  %200 = sitofp i32 %199 to float
  %201 = load float, ptr %18, align 4, !tbaa !136
  %202 = fmul float %201, %200
  store float %202, ptr %18, align 4, !tbaa !136
  %203 = load ptr, ptr @input, align 8, !tbaa !8
  %204 = getelementptr inbounds nuw %struct.InputParameters, ptr %203, i32 0, i32 165
  %205 = load double, ptr %204, align 8, !tbaa !138
  %206 = fptrunc double %205 to float
  %207 = fsub float %206, 1.000000e+00
  %208 = load float, ptr %18, align 4, !tbaa !136
  %209 = fadd float %208, %207
  store float %209, ptr %18, align 4, !tbaa !136
  br label %210

210:                                              ; preds = %196, %189
  %211 = load float, ptr %17, align 4, !tbaa !136
  %212 = load float, ptr %18, align 4, !tbaa !136
  %213 = fdiv float %211, %212
  %214 = fadd float %213, 5.000000e-01
  %215 = fpext float %214 to double
  %216 = call double @llvm.floor.f64(double %215)
  %217 = fptosi double %216 to i32
  %218 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %219 = getelementptr inbounds nuw %struct.rc_generic, ptr %218, i32 0, i32 17
  store i32 %217, ptr %219, align 4, !tbaa !139
  %220 = load ptr, ptr @input, align 8, !tbaa !8
  %221 = getelementptr inbounds nuw %struct.InputParameters, ptr %220, i32 0, i32 30
  %222 = load i32, ptr %221, align 8, !tbaa !134
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %210
  %225 = load ptr, ptr @input, align 8, !tbaa !8
  %226 = getelementptr inbounds nuw %struct.InputParameters, ptr %225, i32 0, i32 165
  %227 = load double, ptr %226, align 8, !tbaa !138
  %228 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %229 = getelementptr inbounds nuw %struct.rc_generic, ptr %228, i32 0, i32 17
  %230 = load i32, ptr %229, align 4, !tbaa !139
  %231 = sitofp i32 %230 to double
  %232 = call double @llvm.fmuladd.f64(double %227, double %231, double 5.000000e-01)
  %233 = fptosi double %232 to i32
  br label %235

234:                                              ; preds = %210
  br label %235

235:                                              ; preds = %234, %224
  %236 = phi i32 [ %233, %224 ], [ 0, %234 ]
  %237 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %238 = getelementptr inbounds nuw %struct.rc_generic, ptr %237, i32 0, i32 18
  store i32 %236, ptr %238, align 8, !tbaa !140
  store i32 0, ptr %14, align 4, !tbaa !31
  br label %239

239:                                              ; preds = %262, %235
  %240 = load i32, ptr %14, align 4, !tbaa !31
  %241 = load i32, ptr %15, align 4, !tbaa !31
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %265

243:                                              ; preds = %239
  %244 = load ptr, ptr @input, align 8, !tbaa !8
  %245 = getelementptr inbounds nuw %struct.InputParameters, ptr %244, i32 0, i32 166
  %246 = load i32, ptr %14, align 4, !tbaa !31
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [5 x double], ptr %245, i64 0, i64 %247
  %249 = load double, ptr %248, align 8, !tbaa !88
  %250 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %251 = getelementptr inbounds nuw %struct.rc_generic, ptr %250, i32 0, i32 17
  %252 = load i32, ptr %251, align 4, !tbaa !139
  %253 = sitofp i32 %252 to double
  %254 = call double @llvm.fmuladd.f64(double %249, double %253, double 5.000000e-01)
  %255 = call double @llvm.floor.f64(double %254)
  %256 = fptosi double %255 to i32
  %257 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %258 = getelementptr inbounds nuw %struct.rc_generic, ptr %257, i32 0, i32 19
  %259 = load i32, ptr %14, align 4, !tbaa !31
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [5 x i32], ptr %258, i64 0, i64 %260
  store i32 %256, ptr %261, align 4, !tbaa !31
  br label %262

262:                                              ; preds = %243
  %263 = load i32, ptr %14, align 4, !tbaa !31
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %14, align 4, !tbaa !31
  br label %239, !llvm.loop !141

265:                                              ; preds = %239
  %266 = load ptr, ptr @input, align 8, !tbaa !8
  %267 = getelementptr inbounds nuw %struct.InputParameters, ptr %266, i32 0, i32 30
  %268 = load i32, ptr %267, align 8, !tbaa !134
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %265
  %271 = load ptr, ptr @input, align 8, !tbaa !8
  %272 = getelementptr inbounds nuw %struct.InputParameters, ptr %271, i32 0, i32 2
  %273 = load i32, ptr %272, align 8, !tbaa !142
  %274 = sub nsw i32 %273, 1
  %275 = load ptr, ptr @input, align 8, !tbaa !8
  %276 = getelementptr inbounds nuw %struct.InputParameters, ptr %275, i32 0, i32 30
  %277 = load i32, ptr %276, align 8, !tbaa !134
  %278 = sdiv i32 %274, %277
  br label %280

279:                                              ; preds = %265
  br label %280

280:                                              ; preds = %279, %270
  %281 = phi i32 [ %278, %270 ], [ 0, %279 ]
  %282 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %283 = getelementptr inbounds nuw %struct.rc_generic, ptr %282, i32 0, i32 23
  store i32 %281, ptr %283, align 4, !tbaa !143
  %284 = load ptr, ptr @input, align 8, !tbaa !8
  %285 = getelementptr inbounds nuw %struct.InputParameters, ptr %284, i32 0, i32 2
  %286 = load i32, ptr %285, align 8, !tbaa !142
  %287 = sub nsw i32 %286, 1
  %288 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %289 = getelementptr inbounds nuw %struct.rc_generic, ptr %288, i32 0, i32 23
  %290 = load i32, ptr %289, align 4, !tbaa !143
  %291 = sub nsw i32 %287, %290
  %292 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %293 = getelementptr inbounds nuw %struct.rc_generic, ptr %292, i32 0, i32 22
  store i32 %291, ptr %293, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #10
  br label %295

294:                                              ; preds = %3
  br label %295

295:                                              ; preds = %294, %280
  %296 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %297 = getelementptr inbounds nuw %struct.rc_generic, ptr %296, i32 0, i32 16
  %298 = load i32, ptr %297, align 8, !tbaa !80
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 1, ptr %7, align 4, !tbaa !31
  br label %301

301:                                              ; preds = %300, %295
  %302 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %303 = getelementptr inbounds nuw %struct.rc_generic, ptr %302, i32 0, i32 16
  %304 = load i32, ptr %303, align 8, !tbaa !80
  %305 = sub nsw i32 0, %304
  store i32 %305, ptr %8, align 4, !tbaa !31
  %306 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %307 = getelementptr inbounds nuw %struct.rc_generic, ptr %306, i32 0, i32 16
  %308 = load i32, ptr %307, align 8, !tbaa !80
  %309 = sitofp i32 %308 to float
  %310 = load ptr, ptr %4, align 8, !tbaa !8
  %311 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %310, i32 0, i32 0
  %312 = load float, ptr %311, align 8, !tbaa !65
  %313 = load ptr, ptr %4, align 8, !tbaa !8
  %314 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %313, i32 0, i32 1
  %315 = load float, ptr %314, align 4, !tbaa !69
  %316 = fdiv float %312, %315
  %317 = fadd float %309, %316
  %318 = fptosi float %317 to i32
  %319 = load ptr, ptr %4, align 8, !tbaa !8
  %320 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %319, i32 0, i32 75
  store i32 %318, ptr %320, align 4, !tbaa !41
  %321 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %322 = getelementptr inbounds nuw %struct.rc_generic, ptr %321, i32 0, i32 16
  %323 = load i32, ptr %322, align 8, !tbaa !80
  %324 = sitofp i32 %323 to double
  %325 = load ptr, ptr %4, align 8, !tbaa !8
  %326 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %325, i32 0, i32 0
  %327 = load float, ptr %326, align 8, !tbaa !65
  %328 = fpext float %327 to double
  %329 = call double @llvm.fmuladd.f64(double %328, double 2.048000e+00, double %324)
  %330 = fptosi double %329 to i32
  %331 = load ptr, ptr %4, align 8, !tbaa !8
  %332 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %331, i32 0, i32 73
  store i32 %330, ptr %332, align 4, !tbaa !42
  %333 = load i32, ptr %5, align 4, !tbaa !31
  %334 = add nsw i32 1, %333
  %335 = load i32, ptr %6, align 4, !tbaa !31
  %336 = add nsw i32 %334, %335
  %337 = sitofp i32 %336 to float
  %338 = load ptr, ptr %4, align 8, !tbaa !8
  %339 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %338, i32 0, i32 0
  %340 = load float, ptr %339, align 8, !tbaa !65
  %341 = fmul float %337, %340
  %342 = load ptr, ptr %4, align 8, !tbaa !8
  %343 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %342, i32 0, i32 1
  %344 = load float, ptr %343, align 4, !tbaa !69
  %345 = fdiv float %341, %344
  %346 = fpext float %345 to double
  %347 = fadd double %346, 5.000000e-01
  %348 = call double @llvm.floor.f64(double %347)
  %349 = fptosi double %348 to i32
  store i32 %349, ptr %10, align 4, !tbaa !31
  %350 = load i32, ptr %10, align 4, !tbaa !31
  %351 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %352 = getelementptr inbounds nuw %struct.rc_generic, ptr %351, i32 0, i32 16
  %353 = load i32, ptr %352, align 8, !tbaa !80
  %354 = add nsw i32 %353, %350
  store i32 %354, ptr %352, align 8, !tbaa !80
  %355 = load i32, ptr %5, align 4, !tbaa !31
  %356 = load ptr, ptr %4, align 8, !tbaa !8
  %357 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %356, i32 0, i32 70
  store i32 %355, ptr %357, align 8, !tbaa !145
  %358 = load i32, ptr %6, align 4, !tbaa !31
  %359 = load ptr, ptr %4, align 8, !tbaa !8
  %360 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %359, i32 0, i32 71
  store i32 %358, ptr %360, align 4, !tbaa !146
  %361 = load i32, ptr %8, align 4, !tbaa !31
  %362 = mul nsw i32 8, %361
  %363 = load i32, ptr %10, align 4, !tbaa !31
  %364 = sdiv i32 %362, %363
  %365 = sitofp i32 %364 to double
  %366 = fadd double %365, 5.000000e-01
  %367 = fptosi double %366 to i32
  store i32 %367, ptr %9, align 4, !tbaa !31
  %368 = load ptr, ptr %4, align 8, !tbaa !8
  %369 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %368, i32 0, i32 63
  store i32 0, ptr %369, align 8, !tbaa !147
  %370 = load ptr, ptr @input, align 8, !tbaa !8
  %371 = getelementptr inbounds nuw %struct.InputParameters, ptr %370, i32 0, i32 121
  %372 = load i32, ptr %371, align 8, !tbaa !103
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %390, label %374

374:                                              ; preds = %301
  %375 = load ptr, ptr @input, align 8, !tbaa !8
  %376 = getelementptr inbounds nuw %struct.InputParameters, ptr %375, i32 0, i32 122
  %377 = load i32, ptr %376, align 4, !tbaa !104
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %374
  %380 = load ptr, ptr @input, align 8, !tbaa !8
  %381 = getelementptr inbounds nuw %struct.InputParameters, ptr %380, i32 0, i32 160
  %382 = load i32, ptr %381, align 8, !tbaa !28
  %383 = load ptr, ptr @img, align 8, !tbaa !8
  %384 = getelementptr inbounds nuw %struct.ImageParameters, ptr %383, i32 0, i32 120
  %385 = load i32, ptr %384, align 8, !tbaa !9
  %386 = icmp eq i32 %382, %385
  br i1 %386, label %387, label %390

387:                                              ; preds = %379
  %388 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %389 = getelementptr inbounds nuw %struct.rc_generic, ptr %388, i32 0, i32 3
  store i32 0, ptr %389, align 4, !tbaa !116
  br label %393

390:                                              ; preds = %379, %374, %301
  %391 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %392 = getelementptr inbounds nuw %struct.rc_generic, ptr %391, i32 0, i32 3
  store i32 1, ptr %392, align 4, !tbaa !116
  br label %393

393:                                              ; preds = %390, %387
  %394 = load i32, ptr %5, align 4, !tbaa !31
  %395 = load ptr, ptr %4, align 8, !tbaa !8
  %396 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %395, i32 0, i32 79
  store i32 %394, ptr %396, align 8, !tbaa !148
  %397 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %398 = getelementptr inbounds nuw %struct.rc_generic, ptr %397, i32 0, i32 10
  %399 = load i32, ptr %398, align 8, !tbaa !79
  %400 = add nsw i32 %399, 1
  store i32 %400, ptr %398, align 8, !tbaa !79
  %401 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %402 = getelementptr inbounds nuw %struct.rc_generic, ptr %401, i32 0, i32 10
  %403 = load i32, ptr %402, align 8, !tbaa !79
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %447

405:                                              ; preds = %393
  %406 = load ptr, ptr @input, align 8, !tbaa !8
  %407 = getelementptr inbounds nuw %struct.InputParameters, ptr %406, i32 0, i32 159
  %408 = load i32, ptr %407, align 4, !tbaa !100
  %409 = load ptr, ptr %4, align 8, !tbaa !8
  %410 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %409, i32 0, i32 11
  store i32 %408, ptr %410, align 8, !tbaa !52
  %411 = load ptr, ptr %4, align 8, !tbaa !8
  %412 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %411, i32 0, i32 11
  %413 = load i32, ptr %412, align 8, !tbaa !52
  %414 = sub nsw i32 %413, 1
  %415 = load ptr, ptr %4, align 8, !tbaa !8
  %416 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %415, i32 0, i32 36
  store i32 %414, ptr %416, align 4, !tbaa !106
  %417 = load ptr, ptr %4, align 8, !tbaa !8
  %418 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %417, i32 0, i32 11
  %419 = load i32, ptr %418, align 8, !tbaa !52
  %420 = load ptr, ptr %4, align 8, !tbaa !8
  %421 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %420, i32 0, i32 54
  store i32 %419, ptr %421, align 4, !tbaa !149
  %422 = load ptr, ptr %4, align 8, !tbaa !8
  %423 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %422, i32 0, i32 11
  %424 = load i32, ptr %423, align 8, !tbaa !52
  %425 = load ptr, ptr %4, align 8, !tbaa !8
  %426 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %425, i32 0, i32 43
  store i32 %424, ptr %426, align 8, !tbaa !47
  %427 = load ptr, ptr %4, align 8, !tbaa !8
  %428 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %427, i32 0, i32 43
  %429 = load i32, ptr %428, align 8, !tbaa !47
  %430 = load ptr, ptr %4, align 8, !tbaa !8
  %431 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %430, i32 0, i32 33
  store i32 %429, ptr %431, align 8, !tbaa !48
  %432 = load ptr, ptr %4, align 8, !tbaa !8
  %433 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %432, i32 0, i32 43
  %434 = load i32, ptr %433, align 8, !tbaa !47
  %435 = load ptr, ptr %4, align 8, !tbaa !8
  %436 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %435, i32 0, i32 55
  store i32 %434, ptr %436, align 8, !tbaa !49
  %437 = load ptr, ptr %4, align 8, !tbaa !8
  %438 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %437, i32 0, i32 43
  %439 = load i32, ptr %438, align 8, !tbaa !47
  %440 = load ptr, ptr %4, align 8, !tbaa !8
  %441 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %440, i32 0, i32 56
  store i32 %439, ptr %441, align 4, !tbaa !50
  %442 = load ptr, ptr %4, align 8, !tbaa !8
  %443 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %442, i32 0, i32 43
  %444 = load i32, ptr %443, align 8, !tbaa !47
  %445 = load ptr, ptr %4, align 8, !tbaa !8
  %446 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %445, i32 0, i32 12
  store i32 %444, ptr %446, align 4, !tbaa !51
  br label %593

447:                                              ; preds = %393
  %448 = load ptr, ptr @input, align 8, !tbaa !8
  %449 = getelementptr inbounds nuw %struct.InputParameters, ptr %448, i32 0, i32 121
  %450 = load i32, ptr %449, align 8, !tbaa !103
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %457, label %452

452:                                              ; preds = %447
  %453 = load ptr, ptr @input, align 8, !tbaa !8
  %454 = getelementptr inbounds nuw %struct.InputParameters, ptr %453, i32 0, i32 122
  %455 = load i32, ptr %454, align 4, !tbaa !104
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %489

457:                                              ; preds = %452, %447
  %458 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %459 = getelementptr inbounds nuw %struct.rc_generic, ptr %458, i32 0, i32 2
  %460 = load i32, ptr %459, align 8, !tbaa !150
  %461 = icmp eq i32 %460, 1
  br i1 %461, label %462, label %475

462:                                              ; preds = %457
  %463 = load ptr, ptr %4, align 8, !tbaa !8
  %464 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %463, i32 0, i32 56
  %465 = load i32, ptr %464, align 4, !tbaa !50
  %466 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %467 = getelementptr inbounds nuw %struct.rc_generic, ptr %466, i32 0, i32 11
  %468 = load i32, ptr %467, align 4, !tbaa !151
  %469 = add nsw i32 %468, %465
  store i32 %469, ptr %467, align 4, !tbaa !151
  %470 = load ptr, ptr %4, align 8, !tbaa !8
  %471 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %470, i32 0, i32 56
  %472 = load i32, ptr %471, align 4, !tbaa !50
  %473 = load ptr, ptr %4, align 8, !tbaa !8
  %474 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %473, i32 0, i32 53
  store i32 %472, ptr %474, align 8, !tbaa !152
  br label %488

475:                                              ; preds = %457
  %476 = load ptr, ptr %4, align 8, !tbaa !8
  %477 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %476, i32 0, i32 55
  %478 = load i32, ptr %477, align 8, !tbaa !49
  %479 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %480 = getelementptr inbounds nuw %struct.rc_generic, ptr %479, i32 0, i32 11
  %481 = load i32, ptr %480, align 4, !tbaa !151
  %482 = add nsw i32 %481, %478
  store i32 %482, ptr %480, align 4, !tbaa !151
  %483 = load ptr, ptr %4, align 8, !tbaa !8
  %484 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %483, i32 0, i32 55
  %485 = load i32, ptr %484, align 8, !tbaa !49
  %486 = load ptr, ptr %4, align 8, !tbaa !8
  %487 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %486, i32 0, i32 53
  store i32 %485, ptr %487, align 8, !tbaa !152
  br label %488

488:                                              ; preds = %475, %462
  br label %489

489:                                              ; preds = %488, %452
  %490 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %491 = getelementptr inbounds nuw %struct.rc_generic, ptr %490, i32 0, i32 11
  %492 = load i32, ptr %491, align 4, !tbaa !151
  %493 = sitofp i32 %492 to double
  %494 = fmul double 1.000000e+00, %493
  %495 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %496 = getelementptr inbounds nuw %struct.rc_generic, ptr %495, i32 0, i32 12
  %497 = load i32, ptr %496, align 8, !tbaa !108
  %498 = sitofp i32 %497 to double
  %499 = fdiv double %494, %498
  %500 = fadd double %499, 5.000000e-01
  %501 = fptosi double %500 to i32
  %502 = load ptr, ptr %4, align 8, !tbaa !8
  %503 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %502, i32 0, i32 12
  store i32 %501, ptr %503, align 4, !tbaa !51
  %504 = load i32, ptr %5, align 4, !tbaa !31
  %505 = load i32, ptr %6, align 4, !tbaa !31
  %506 = add nsw i32 %504, %505
  %507 = add nsw i32 %506, 1
  %508 = sitofp i32 %507 to double
  %509 = fmul double 1.000000e+00, %508
  %510 = fdiv double %509, 1.500000e+01
  %511 = fadd double %510, 5.000000e-01
  %512 = fptosi double %511 to i32
  store i32 %512, ptr %11, align 4, !tbaa !31
  %513 = load i32, ptr %11, align 4, !tbaa !31
  %514 = icmp sgt i32 %513, 2
  br i1 %514, label %515, label %516

515:                                              ; preds = %489
  store i32 2, ptr %11, align 4, !tbaa !31
  br label %516

516:                                              ; preds = %515, %489
  %517 = load i32, ptr %11, align 4, !tbaa !31
  %518 = load ptr, ptr %4, align 8, !tbaa !8
  %519 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %518, i32 0, i32 12
  %520 = load i32, ptr %519, align 4, !tbaa !51
  %521 = sub nsw i32 %520, %517
  store i32 %521, ptr %519, align 4, !tbaa !51
  %522 = load ptr, ptr %4, align 8, !tbaa !8
  %523 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %522, i32 0, i32 12
  %524 = load i32, ptr %523, align 4, !tbaa !51
  %525 = load ptr, ptr %4, align 8, !tbaa !8
  %526 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %525, i32 0, i32 53
  %527 = load i32, ptr %526, align 8, !tbaa !152
  %528 = sub nsw i32 %527, 2
  %529 = icmp sgt i32 %524, %528
  br i1 %529, label %530, label %535

530:                                              ; preds = %516
  %531 = load ptr, ptr %4, align 8, !tbaa !8
  %532 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %531, i32 0, i32 12
  %533 = load i32, ptr %532, align 4, !tbaa !51
  %534 = add nsw i32 %533, -1
  store i32 %534, ptr %532, align 4, !tbaa !51
  br label %535

535:                                              ; preds = %530, %516
  %536 = load ptr, ptr %4, align 8, !tbaa !8
  %537 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %536, i32 0, i32 54
  %538 = load i32, ptr %537, align 4, !tbaa !149
  %539 = sub nsw i32 %538, 2
  %540 = load ptr, ptr %4, align 8, !tbaa !8
  %541 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %540, i32 0, i32 54
  %542 = load i32, ptr %541, align 4, !tbaa !149
  %543 = add nsw i32 %542, 2
  %544 = load ptr, ptr %4, align 8, !tbaa !8
  %545 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %544, i32 0, i32 12
  %546 = load i32, ptr %545, align 4, !tbaa !51
  %547 = call signext i32 @iClip3(i32 noundef signext %539, i32 noundef signext %543, i32 noundef signext %546)
  %548 = load ptr, ptr %4, align 8, !tbaa !8
  %549 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %548, i32 0, i32 12
  store i32 %547, ptr %549, align 4, !tbaa !51
  %550 = load ptr, ptr %4, align 8, !tbaa !8
  %551 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %550, i32 0, i32 10
  %552 = load i32, ptr %551, align 4, !tbaa !55
  %553 = load ptr, ptr %4, align 8, !tbaa !8
  %554 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %553, i32 0, i32 9
  %555 = load i32, ptr %554, align 8, !tbaa !53
  %556 = load ptr, ptr %4, align 8, !tbaa !8
  %557 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %556, i32 0, i32 12
  %558 = load i32, ptr %557, align 4, !tbaa !51
  %559 = call signext i32 @iClip3(i32 noundef signext %552, i32 noundef signext %555, i32 noundef signext %558)
  %560 = load ptr, ptr %4, align 8, !tbaa !8
  %561 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %560, i32 0, i32 12
  store i32 %559, ptr %561, align 4, !tbaa !51
  %562 = load ptr, ptr %4, align 8, !tbaa !8
  %563 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %562, i32 0, i32 12
  %564 = load i32, ptr %563, align 4, !tbaa !51
  %565 = load ptr, ptr %4, align 8, !tbaa !8
  %566 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %565, i32 0, i32 11
  store i32 %564, ptr %566, align 8, !tbaa !52
  %567 = load ptr, ptr %4, align 8, !tbaa !8
  %568 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %567, i32 0, i32 12
  %569 = load i32, ptr %568, align 4, !tbaa !51
  %570 = load ptr, ptr %4, align 8, !tbaa !8
  %571 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %570, i32 0, i32 29
  store i32 %569, ptr %571, align 8, !tbaa !115
  %572 = load ptr, ptr %4, align 8, !tbaa !8
  %573 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %572, i32 0, i32 12
  %574 = load i32, ptr %573, align 4, !tbaa !51
  %575 = load ptr, ptr %4, align 8, !tbaa !8
  %576 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %575, i32 0, i32 43
  store i32 %574, ptr %576, align 8, !tbaa !47
  %577 = load ptr, ptr %4, align 8, !tbaa !8
  %578 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %577, i32 0, i32 11
  %579 = load i32, ptr %578, align 8, !tbaa !52
  %580 = load ptr, ptr %4, align 8, !tbaa !8
  %581 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %580, i32 0, i32 54
  store i32 %579, ptr %581, align 4, !tbaa !149
  %582 = load ptr, ptr %4, align 8, !tbaa !8
  %583 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %582, i32 0, i32 36
  %584 = load i32, ptr %583, align 4, !tbaa !106
  %585 = load ptr, ptr %4, align 8, !tbaa !8
  %586 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %585, i32 0, i32 35
  store i32 %584, ptr %586, align 8, !tbaa !105
  %587 = load ptr, ptr %4, align 8, !tbaa !8
  %588 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %587, i32 0, i32 11
  %589 = load i32, ptr %588, align 8, !tbaa !52
  %590 = sub nsw i32 %589, 1
  %591 = load ptr, ptr %4, align 8, !tbaa !8
  %592 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %591, i32 0, i32 36
  store i32 %590, ptr %592, align 4, !tbaa !106
  br label %593

593:                                              ; preds = %535, %405
  %594 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %595 = getelementptr inbounds nuw %struct.rc_generic, ptr %594, i32 0, i32 11
  store i32 0, ptr %595, align 4, !tbaa !151
  %596 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %597 = getelementptr inbounds nuw %struct.rc_generic, ptr %596, i32 0, i32 12
  store i32 0, ptr %597, align 8, !tbaa !108
  %598 = load ptr, ptr %4, align 8, !tbaa !8
  %599 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %598, i32 0, i32 37
  store i32 0, ptr %599, align 8, !tbaa !107
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: inlinehint nounwind
define internal signext i32 @iClip3(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #9 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, ptr %4, align 4, !tbaa !31
  store i32 %1, ptr %5, align 4, !tbaa !31
  store i32 %2, ptr %6, align 4, !tbaa !31
  %7 = load i32, ptr %6, align 4, !tbaa !31
  %8 = load i32, ptr %4, align 4, !tbaa !31
  %9 = call signext i32 @imax(i32 noundef signext %7, i32 noundef signext %8)
  store i32 %9, ptr %6, align 4, !tbaa !31
  %10 = load i32, ptr %6, align 4, !tbaa !31
  %11 = load i32, ptr %5, align 4, !tbaa !31
  %12 = call signext i32 @imin(i32 noundef signext %10, i32 noundef signext %11)
  store i32 %12, ptr %6, align 4, !tbaa !31
  %13 = load i32, ptr %6, align 4, !tbaa !31
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local void @rc_init_pict(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3, float noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !8
  store i32 %1, ptr %7, align 4, !tbaa !31
  store i32 %2, ptr %8, align 4, !tbaa !31
  store i32 %3, ptr %9, align 4, !tbaa !31
  store float %4, ptr %10, align 4, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #10
  %16 = load ptr, ptr @input, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw %struct.InputParameters, ptr %16, i32 0, i32 122
  %18 = load i32, ptr %17, align 4, !tbaa !104
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %5
  %21 = load ptr, ptr @img, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 120
  %23 = load i32, ptr %22, align 8, !tbaa !9
  %24 = load ptr, ptr @img, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 132
  %26 = load i32, ptr %25, align 4, !tbaa !101
  %27 = udiv i32 %23, %26
  %28 = load ptr, ptr %6, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %28, i32 0, i32 44
  store i32 %27, ptr %29, align 4, !tbaa !71
  br label %30

30:                                               ; preds = %20, %5
  %31 = load ptr, ptr @img, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.ImageParameters, ptr %31, i32 0, i32 128
  store i32 0, ptr %32, align 4, !tbaa !153
  %33 = load ptr, ptr @input, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.InputParameters, ptr %33, i32 0, i32 161
  %35 = load i32, ptr %34, align 4, !tbaa !154
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_generic, ptr %38, i32 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !78
  %41 = icmp eq i32 %40, 58
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load ptr, ptr %6, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 0
  %45 = load float, ptr %44, align 8, !tbaa !65
  %46 = fpext float %45 to double
  %47 = fmul double %46, 1.500000e+00
  %48 = fptrunc double %47 to float
  store float %48, ptr %44, align 8, !tbaa !65
  br label %61

49:                                               ; preds = %37
  %50 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw %struct.rc_generic, ptr %50, i32 0, i32 9
  %52 = load i32, ptr %51, align 4, !tbaa !78
  %53 = icmp eq i32 %52, 59
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load ptr, ptr %6, align 8, !tbaa !8
  %56 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %55, i32 0, i32 0
  %57 = load float, ptr %56, align 8, !tbaa !65
  %58 = load ptr, ptr %6, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %58, i32 0, i32 2
  store float %57, ptr %59, align 8, !tbaa !70
  br label %60

60:                                               ; preds = %54, %49
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %30
  %63 = load i32, ptr %7, align 4, !tbaa !31
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %8, align 4, !tbaa !31
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %1023

68:                                               ; preds = %65, %62
  %69 = load i32, ptr %9, align 4, !tbaa !31
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %1023

71:                                               ; preds = %68
  %72 = load ptr, ptr @img, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.ImageParameters, ptr %72, i32 0, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !102
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr @input, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw %struct.InputParameters, ptr %77, i32 0, i32 162
  %79 = load i32, ptr %78, align 8, !tbaa !61
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %448

81:                                               ; preds = %76, %71
  %82 = load ptr, ptr @img, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw %struct.ImageParameters, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !109
  %85 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %86 = sub nsw i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %448

88:                                               ; preds = %81
  %89 = load ptr, ptr %6, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %89, i32 0, i32 2
  %91 = load float, ptr %90, align 8, !tbaa !70
  %92 = load ptr, ptr %6, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %92, i32 0, i32 0
  %94 = load float, ptr %93, align 8, !tbaa !65
  %95 = fcmp une float %91, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %88
  %97 = load ptr, ptr %6, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %97, i32 0, i32 0
  %99 = load float, ptr %98, align 8, !tbaa !65
  %100 = load ptr, ptr %6, align 8, !tbaa !8
  %101 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %100, i32 0, i32 2
  %102 = load float, ptr %101, align 8, !tbaa !70
  %103 = fsub float %99, %102
  %104 = load ptr, ptr %6, align 8, !tbaa !8
  %105 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %104, i32 0, i32 70
  %106 = load i32, ptr %105, align 8, !tbaa !145
  %107 = load ptr, ptr %6, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 71
  %109 = load i32, ptr %108, align 4, !tbaa !146
  %110 = add nsw i32 %106, %109
  %111 = sitofp i32 %110 to float
  %112 = fmul float %103, %111
  %113 = load ptr, ptr %6, align 8, !tbaa !8
  %114 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %113, i32 0, i32 1
  %115 = load float, ptr %114, align 4, !tbaa !69
  %116 = fdiv float %112, %115
  %117 = fpext float %116 to double
  %118 = fadd double %117, 5.000000e-01
  %119 = call double @llvm.floor.f64(double %118)
  %120 = fptosi double %119 to i32
  %121 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %122 = getelementptr inbounds nuw %struct.rc_generic, ptr %121, i32 0, i32 16
  %123 = load i32, ptr %122, align 8, !tbaa !80
  %124 = add nsw i32 %123, %120
  store i32 %124, ptr %122, align 8, !tbaa !80
  br label %125

125:                                              ; preds = %96, %88
  %126 = load ptr, ptr @img, align 8, !tbaa !8
  %127 = getelementptr inbounds nuw %struct.ImageParameters, ptr %126, i32 0, i32 132
  %128 = load i32, ptr %127, align 4, !tbaa !101
  %129 = load ptr, ptr @img, align 8, !tbaa !8
  %130 = getelementptr inbounds nuw %struct.ImageParameters, ptr %129, i32 0, i32 120
  %131 = load i32, ptr %130, align 8, !tbaa !9
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %133, label %183

133:                                              ; preds = %125
  %134 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.rc_generic, ptr %134, i32 0, i32 12
  %136 = load i32, ptr %135, align 8, !tbaa !108
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %168

138:                                              ; preds = %133
  %139 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %140 = getelementptr inbounds nuw %struct.rc_generic, ptr %139, i32 0, i32 15
  %141 = load i64, ptr %140, align 8, !tbaa !72
  %142 = sitofp i64 %141 to double
  %143 = load ptr, ptr %6, align 8, !tbaa !8
  %144 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %143, i32 0, i32 6
  store double %142, ptr %144, align 8, !tbaa !155
  %145 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %146 = getelementptr inbounds nuw %struct.rc_generic, ptr %145, i32 0, i32 15
  %147 = load i64, ptr %146, align 8, !tbaa !72
  %148 = sitofp i64 %147 to double
  %149 = load ptr, ptr %6, align 8, !tbaa !8
  %150 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %149, i32 0, i32 5
  %151 = load double, ptr %150, align 8, !tbaa !74
  %152 = fsub double %148, %151
  %153 = load ptr, ptr %6, align 8, !tbaa !8
  %154 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %153, i32 0, i32 79
  %155 = load i32, ptr %154, align 8, !tbaa !148
  %156 = sub nsw i32 %155, 1
  %157 = sitofp i32 %156 to double
  %158 = fdiv double %152, %157
  %159 = load ptr, ptr %6, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %159, i32 0, i32 78
  store double %158, ptr %160, align 8, !tbaa !156
  %161 = load ptr, ptr %6, align 8, !tbaa !8
  %162 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %161, i32 0, i32 78
  %163 = load double, ptr %162, align 8, !tbaa !156
  %164 = load ptr, ptr %6, align 8, !tbaa !8
  %165 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %164, i32 0, i32 6
  %166 = load double, ptr %165, align 8, !tbaa !155
  %167 = fsub double %166, %163
  store double %167, ptr %165, align 8, !tbaa !155
  br label %182

168:                                              ; preds = %133
  %169 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %170 = getelementptr inbounds nuw %struct.rc_generic, ptr %169, i32 0, i32 12
  %171 = load i32, ptr %170, align 8, !tbaa !108
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %181

173:                                              ; preds = %168
  %174 = load ptr, ptr %6, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %174, i32 0, i32 78
  %176 = load double, ptr %175, align 8, !tbaa !156
  %177 = load ptr, ptr %6, align 8, !tbaa !8
  %178 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %177, i32 0, i32 6
  %179 = load double, ptr %178, align 8, !tbaa !155
  %180 = fsub double %179, %176
  store double %180, ptr %178, align 8, !tbaa !155
  br label %181

181:                                              ; preds = %173, %168
  br label %182

182:                                              ; preds = %181, %138
  br label %339

183:                                              ; preds = %125
  %184 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %185 = getelementptr inbounds nuw %struct.rc_generic, ptr %184, i32 0, i32 9
  %186 = load i32, ptr %185, align 4, !tbaa !78
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %228

188:                                              ; preds = %183
  %189 = load ptr, ptr @input, align 8, !tbaa !8
  %190 = getelementptr inbounds nuw %struct.InputParameters, ptr %189, i32 0, i32 121
  %191 = load i32, ptr %190, align 8, !tbaa !103
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load ptr, ptr @input, align 8, !tbaa !8
  %195 = getelementptr inbounds nuw %struct.InputParameters, ptr %194, i32 0, i32 122
  %196 = load i32, ptr %195, align 4, !tbaa !104
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %193, %188
  %199 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %200 = getelementptr inbounds nuw %struct.rc_generic, ptr %199, i32 0, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !97
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %215

203:                                              ; preds = %198
  %204 = load ptr, ptr %6, align 8, !tbaa !8
  %205 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %204, i32 0, i32 62
  %206 = load ptr, ptr %205, align 8, !tbaa !59
  %207 = load ptr, ptr %6, align 8, !tbaa !8
  %208 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %207, i32 0, i32 61
  %209 = load ptr, ptr %208, align 8, !tbaa !58
  %210 = load ptr, ptr %6, align 8, !tbaa !8
  %211 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %210, i32 0, i32 44
  %212 = load i32, ptr %211, align 4, !tbaa !71
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %206, ptr align 1 %209, i64 %214, i1 false)
  br label %227

215:                                              ; preds = %198, %193
  %216 = load ptr, ptr %6, align 8, !tbaa !8
  %217 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %216, i32 0, i32 59
  %218 = load ptr, ptr %217, align 8, !tbaa !56
  %219 = load ptr, ptr %6, align 8, !tbaa !8
  %220 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %219, i32 0, i32 60
  %221 = load ptr, ptr %220, align 8, !tbaa !57
  %222 = load ptr, ptr %6, align 8, !tbaa !8
  %223 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %222, i32 0, i32 44
  %224 = load i32, ptr %223, align 4, !tbaa !71
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %218, ptr align 1 %221, i64 %226, i1 false)
  br label %227

227:                                              ; preds = %215, %203
  br label %228

228:                                              ; preds = %227, %183
  %229 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %230 = getelementptr inbounds nuw %struct.rc_generic, ptr %229, i32 0, i32 10
  %231 = load i32, ptr %230, align 8, !tbaa !79
  %232 = icmp eq i32 %231, 1
  br i1 %232, label %233, label %283

233:                                              ; preds = %228
  %234 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %235 = getelementptr inbounds nuw %struct.rc_generic, ptr %234, i32 0, i32 12
  %236 = load i32, ptr %235, align 8, !tbaa !108
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %268

238:                                              ; preds = %233
  %239 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %240 = getelementptr inbounds nuw %struct.rc_generic, ptr %239, i32 0, i32 15
  %241 = load i64, ptr %240, align 8, !tbaa !72
  %242 = sitofp i64 %241 to double
  %243 = load ptr, ptr %6, align 8, !tbaa !8
  %244 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %243, i32 0, i32 6
  store double %242, ptr %244, align 8, !tbaa !155
  %245 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %246 = getelementptr inbounds nuw %struct.rc_generic, ptr %245, i32 0, i32 15
  %247 = load i64, ptr %246, align 8, !tbaa !72
  %248 = sitofp i64 %247 to double
  %249 = load ptr, ptr %6, align 8, !tbaa !8
  %250 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %249, i32 0, i32 5
  %251 = load double, ptr %250, align 8, !tbaa !74
  %252 = fsub double %248, %251
  %253 = load ptr, ptr %6, align 8, !tbaa !8
  %254 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %253, i32 0, i32 79
  %255 = load i32, ptr %254, align 8, !tbaa !148
  %256 = sub nsw i32 %255, 1
  %257 = sitofp i32 %256 to double
  %258 = fdiv double %252, %257
  %259 = load ptr, ptr %6, align 8, !tbaa !8
  %260 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %259, i32 0, i32 78
  store double %258, ptr %260, align 8, !tbaa !156
  %261 = load ptr, ptr %6, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %261, i32 0, i32 78
  %263 = load double, ptr %262, align 8, !tbaa !156
  %264 = load ptr, ptr %6, align 8, !tbaa !8
  %265 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %264, i32 0, i32 6
  %266 = load double, ptr %265, align 8, !tbaa !155
  %267 = fsub double %266, %263
  store double %267, ptr %265, align 8, !tbaa !155
  br label %282

268:                                              ; preds = %233
  %269 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %270 = getelementptr inbounds nuw %struct.rc_generic, ptr %269, i32 0, i32 12
  %271 = load i32, ptr %270, align 8, !tbaa !108
  %272 = icmp sgt i32 %271, 1
  br i1 %272, label %273, label %281

273:                                              ; preds = %268
  %274 = load ptr, ptr %6, align 8, !tbaa !8
  %275 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %274, i32 0, i32 78
  %276 = load double, ptr %275, align 8, !tbaa !156
  %277 = load ptr, ptr %6, align 8, !tbaa !8
  %278 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %277, i32 0, i32 6
  %279 = load double, ptr %278, align 8, !tbaa !155
  %280 = fsub double %279, %276
  store double %280, ptr %278, align 8, !tbaa !155
  br label %281

281:                                              ; preds = %273, %268
  br label %282

282:                                              ; preds = %281, %238
  br label %338

283:                                              ; preds = %228
  %284 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %285 = getelementptr inbounds nuw %struct.rc_generic, ptr %284, i32 0, i32 10
  %286 = load i32, ptr %285, align 8, !tbaa !79
  %287 = icmp sgt i32 %286, 1
  br i1 %287, label %288, label %337

288:                                              ; preds = %283
  %289 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %290 = getelementptr inbounds nuw %struct.rc_generic, ptr %289, i32 0, i32 12
  %291 = load i32, ptr %290, align 8, !tbaa !108
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %322

293:                                              ; preds = %288
  %294 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %295 = getelementptr inbounds nuw %struct.rc_generic, ptr %294, i32 0, i32 15
  %296 = load i64, ptr %295, align 8, !tbaa !72
  %297 = sitofp i64 %296 to double
  %298 = load ptr, ptr %6, align 8, !tbaa !8
  %299 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %298, i32 0, i32 6
  store double %297, ptr %299, align 8, !tbaa !155
  %300 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %301 = getelementptr inbounds nuw %struct.rc_generic, ptr %300, i32 0, i32 15
  %302 = load i64, ptr %301, align 8, !tbaa !72
  %303 = sitofp i64 %302 to double
  %304 = load ptr, ptr %6, align 8, !tbaa !8
  %305 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %304, i32 0, i32 5
  %306 = load double, ptr %305, align 8, !tbaa !74
  %307 = fsub double %303, %306
  %308 = load ptr, ptr %6, align 8, !tbaa !8
  %309 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %308, i32 0, i32 79
  %310 = load i32, ptr %309, align 8, !tbaa !148
  %311 = sitofp i32 %310 to double
  %312 = fdiv double %307, %311
  %313 = load ptr, ptr %6, align 8, !tbaa !8
  %314 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %313, i32 0, i32 78
  store double %312, ptr %314, align 8, !tbaa !156
  %315 = load ptr, ptr %6, align 8, !tbaa !8
  %316 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %315, i32 0, i32 78
  %317 = load double, ptr %316, align 8, !tbaa !156
  %318 = load ptr, ptr %6, align 8, !tbaa !8
  %319 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %318, i32 0, i32 6
  %320 = load double, ptr %319, align 8, !tbaa !155
  %321 = fsub double %320, %317
  store double %321, ptr %319, align 8, !tbaa !155
  br label %336

322:                                              ; preds = %288
  %323 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %324 = getelementptr inbounds nuw %struct.rc_generic, ptr %323, i32 0, i32 12
  %325 = load i32, ptr %324, align 8, !tbaa !108
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %335

327:                                              ; preds = %322
  %328 = load ptr, ptr %6, align 8, !tbaa !8
  %329 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %328, i32 0, i32 78
  %330 = load double, ptr %329, align 8, !tbaa !156
  %331 = load ptr, ptr %6, align 8, !tbaa !8
  %332 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %331, i32 0, i32 6
  %333 = load double, ptr %332, align 8, !tbaa !155
  %334 = fsub double %333, %330
  store double %334, ptr %332, align 8, !tbaa !155
  br label %335

335:                                              ; preds = %327, %322
  br label %336

336:                                              ; preds = %335, %293
  br label %337

337:                                              ; preds = %336, %283
  br label %338

338:                                              ; preds = %337, %282
  br label %339

339:                                              ; preds = %338, %182
  %340 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %341 = getelementptr inbounds nuw %struct.rc_generic, ptr %340, i32 0, i32 9
  %342 = load i32, ptr %341, align 4, !tbaa !78
  %343 = icmp eq i32 %342, 1
  br i1 %343, label %344, label %350

344:                                              ; preds = %339
  %345 = load ptr, ptr %6, align 8, !tbaa !8
  %346 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %345, i32 0, i32 76
  %347 = load double, ptr %346, align 8, !tbaa !44
  %348 = load ptr, ptr %6, align 8, !tbaa !8
  %349 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %348, i32 0, i32 7
  store double %347, ptr %349, align 8, !tbaa !157
  br label %350

350:                                              ; preds = %344, %339
  %351 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %352 = getelementptr inbounds nuw %struct.rc_generic, ptr %351, i32 0, i32 9
  %353 = load i32, ptr %352, align 4, !tbaa !78
  %354 = icmp slt i32 %353, 8
  br i1 %354, label %355, label %380

355:                                              ; preds = %350
  %356 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %357 = getelementptr inbounds nuw %struct.rc_generic, ptr %356, i32 0, i32 9
  %358 = load i32, ptr %357, align 4, !tbaa !78
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %360, label %380

360:                                              ; preds = %355
  %361 = load ptr, ptr %6, align 8, !tbaa !8
  %362 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %361, i32 0, i32 7
  %363 = load double, ptr %362, align 8, !tbaa !157
  %364 = load ptr, ptr %6, align 8, !tbaa !8
  %365 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %364, i32 0, i32 76
  %366 = load double, ptr %365, align 8, !tbaa !44
  %367 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %368 = getelementptr inbounds nuw %struct.rc_generic, ptr %367, i32 0, i32 9
  %369 = load i32, ptr %368, align 4, !tbaa !78
  %370 = sub nsw i32 %369, 1
  %371 = sitofp i32 %370 to double
  %372 = call double @llvm.fmuladd.f64(double %366, double %371, double %363)
  %373 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %374 = getelementptr inbounds nuw %struct.rc_generic, ptr %373, i32 0, i32 9
  %375 = load i32, ptr %374, align 4, !tbaa !78
  %376 = sitofp i32 %375 to double
  %377 = fdiv double %372, %376
  %378 = load ptr, ptr %6, align 8, !tbaa !8
  %379 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %378, i32 0, i32 7
  store double %377, ptr %379, align 8, !tbaa !157
  br label %397

380:                                              ; preds = %355, %350
  %381 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %382 = getelementptr inbounds nuw %struct.rc_generic, ptr %381, i32 0, i32 9
  %383 = load i32, ptr %382, align 4, !tbaa !78
  %384 = icmp sgt i32 %383, 1
  br i1 %384, label %385, label %396

385:                                              ; preds = %380
  %386 = load ptr, ptr %6, align 8, !tbaa !8
  %387 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %386, i32 0, i32 76
  %388 = load double, ptr %387, align 8, !tbaa !44
  %389 = load ptr, ptr %6, align 8, !tbaa !8
  %390 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %389, i32 0, i32 7
  %391 = load double, ptr %390, align 8, !tbaa !157
  %392 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %391, double %388)
  %393 = fdiv double %392, 8.000000e+00
  %394 = load ptr, ptr %6, align 8, !tbaa !8
  %395 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %394, i32 0, i32 7
  store double %393, ptr %395, align 8, !tbaa !157
  br label %396

396:                                              ; preds = %385, %380
  br label %397

397:                                              ; preds = %396, %360
  %398 = load ptr, ptr @input, align 8, !tbaa !8
  %399 = getelementptr inbounds nuw %struct.InputParameters, ptr %398, i32 0, i32 40
  %400 = load i32, ptr %399, align 8, !tbaa !67
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %447

402:                                              ; preds = %397
  %403 = load ptr, ptr %6, align 8, !tbaa !8
  %404 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %403, i32 0, i32 7
  %405 = load double, ptr %404, align 8, !tbaa !157
  %406 = load ptr, ptr @input, align 8, !tbaa !8
  %407 = getelementptr inbounds nuw %struct.InputParameters, ptr %406, i32 0, i32 40
  %408 = load i32, ptr %407, align 8, !tbaa !67
  %409 = add nsw i32 %408, 1
  %410 = sitofp i32 %409 to double
  %411 = fmul double %405, %410
  %412 = load ptr, ptr %6, align 8, !tbaa !8
  %413 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %412, i32 0, i32 0
  %414 = load float, ptr %413, align 8, !tbaa !65
  %415 = fpext float %414 to double
  %416 = fmul double %411, %415
  %417 = load ptr, ptr %6, align 8, !tbaa !8
  %418 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %417, i32 0, i32 1
  %419 = load float, ptr %418, align 4, !tbaa !69
  %420 = fpext float %419 to double
  %421 = load ptr, ptr %6, align 8, !tbaa !8
  %422 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %421, i32 0, i32 7
  %423 = load double, ptr %422, align 8, !tbaa !157
  %424 = load ptr, ptr %6, align 8, !tbaa !8
  %425 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %424, i32 0, i32 8
  %426 = load double, ptr %425, align 8, !tbaa !158
  %427 = load ptr, ptr @input, align 8, !tbaa !8
  %428 = getelementptr inbounds nuw %struct.InputParameters, ptr %427, i32 0, i32 40
  %429 = load i32, ptr %428, align 8, !tbaa !67
  %430 = sitofp i32 %429 to double
  %431 = call double @llvm.fmuladd.f64(double %426, double %430, double %423)
  %432 = fmul double %420, %431
  %433 = fdiv double %416, %432
  %434 = load ptr, ptr %6, align 8, !tbaa !8
  %435 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %434, i32 0, i32 0
  %436 = load float, ptr %435, align 8, !tbaa !65
  %437 = load ptr, ptr %6, align 8, !tbaa !8
  %438 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %437, i32 0, i32 1
  %439 = load float, ptr %438, align 4, !tbaa !69
  %440 = fdiv float %436, %439
  %441 = fpext float %440 to double
  %442 = fsub double %433, %441
  %443 = load ptr, ptr %6, align 8, !tbaa !8
  %444 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %443, i32 0, i32 6
  %445 = load double, ptr %444, align 8, !tbaa !155
  %446 = fadd double %445, %442
  store double %446, ptr %444, align 8, !tbaa !155
  br label %447

447:                                              ; preds = %402, %397
  br label %556

448:                                              ; preds = %81, %76
  %449 = load ptr, ptr @img, align 8, !tbaa !8
  %450 = getelementptr inbounds nuw %struct.ImageParameters, ptr %449, i32 0, i32 5
  %451 = load i32, ptr %450, align 4, !tbaa !102
  %452 = icmp eq i32 %451, 1
  br i1 %452, label %453, label %555

453:                                              ; preds = %448
  %454 = load ptr, ptr %6, align 8, !tbaa !8
  %455 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %454, i32 0, i32 2
  %456 = load float, ptr %455, align 8, !tbaa !70
  %457 = load ptr, ptr %6, align 8, !tbaa !8
  %458 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %457, i32 0, i32 0
  %459 = load float, ptr %458, align 8, !tbaa !65
  %460 = fcmp une float %456, %459
  br i1 %460, label %461, label %490

461:                                              ; preds = %453
  %462 = load ptr, ptr %6, align 8, !tbaa !8
  %463 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %462, i32 0, i32 0
  %464 = load float, ptr %463, align 8, !tbaa !65
  %465 = load ptr, ptr %6, align 8, !tbaa !8
  %466 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %465, i32 0, i32 2
  %467 = load float, ptr %466, align 8, !tbaa !70
  %468 = fsub float %464, %467
  %469 = load ptr, ptr %6, align 8, !tbaa !8
  %470 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %469, i32 0, i32 70
  %471 = load i32, ptr %470, align 8, !tbaa !145
  %472 = load ptr, ptr %6, align 8, !tbaa !8
  %473 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %472, i32 0, i32 71
  %474 = load i32, ptr %473, align 4, !tbaa !146
  %475 = add nsw i32 %471, %474
  %476 = sitofp i32 %475 to float
  %477 = fmul float %468, %476
  %478 = load ptr, ptr %6, align 8, !tbaa !8
  %479 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %478, i32 0, i32 1
  %480 = load float, ptr %479, align 4, !tbaa !69
  %481 = fdiv float %477, %480
  %482 = fpext float %481 to double
  %483 = fadd double %482, 5.000000e-01
  %484 = call double @llvm.floor.f64(double %483)
  %485 = fptosi double %484 to i32
  %486 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %487 = getelementptr inbounds nuw %struct.rc_generic, ptr %486, i32 0, i32 16
  %488 = load i32, ptr %487, align 8, !tbaa !80
  %489 = add nsw i32 %488, %485
  store i32 %489, ptr %487, align 8, !tbaa !80
  br label %490

490:                                              ; preds = %461, %453
  %491 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %492 = getelementptr inbounds nuw %struct.rc_generic, ptr %491, i32 0, i32 9
  %493 = load i32, ptr %492, align 4, !tbaa !78
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %495, label %511

495:                                              ; preds = %490
  %496 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %497 = getelementptr inbounds nuw %struct.rc_generic, ptr %496, i32 0, i32 8
  %498 = load i32, ptr %497, align 8, !tbaa !77
  %499 = icmp eq i32 %498, 1
  br i1 %499, label %500, label %511

500:                                              ; preds = %495
  %501 = load ptr, ptr %6, align 8, !tbaa !8
  %502 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %501, i32 0, i32 76
  %503 = load double, ptr %502, align 8, !tbaa !44
  %504 = load ptr, ptr %6, align 8, !tbaa !8
  %505 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %504, i32 0, i32 7
  store double %503, ptr %505, align 8, !tbaa !157
  %506 = load ptr, ptr %6, align 8, !tbaa !8
  %507 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %506, i32 0, i32 77
  %508 = load double, ptr %507, align 8, !tbaa !45
  %509 = load ptr, ptr %6, align 8, !tbaa !8
  %510 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %509, i32 0, i32 8
  store double %508, ptr %510, align 8, !tbaa !158
  br label %554

511:                                              ; preds = %495, %490
  %512 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %513 = getelementptr inbounds nuw %struct.rc_generic, ptr %512, i32 0, i32 8
  %514 = load i32, ptr %513, align 8, !tbaa !77
  %515 = icmp sgt i32 %514, 1
  br i1 %515, label %516, label %553

516:                                              ; preds = %511
  %517 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %518 = getelementptr inbounds nuw %struct.rc_generic, ptr %517, i32 0, i32 8
  %519 = load i32, ptr %518, align 8, !tbaa !77
  %520 = icmp slt i32 %519, 8
  br i1 %520, label %521, label %541

521:                                              ; preds = %516
  %522 = load ptr, ptr %6, align 8, !tbaa !8
  %523 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %522, i32 0, i32 8
  %524 = load double, ptr %523, align 8, !tbaa !158
  %525 = load ptr, ptr %6, align 8, !tbaa !8
  %526 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %525, i32 0, i32 77
  %527 = load double, ptr %526, align 8, !tbaa !45
  %528 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %529 = getelementptr inbounds nuw %struct.rc_generic, ptr %528, i32 0, i32 8
  %530 = load i32, ptr %529, align 8, !tbaa !77
  %531 = sub nsw i32 %530, 1
  %532 = sitofp i32 %531 to double
  %533 = call double @llvm.fmuladd.f64(double %527, double %532, double %524)
  %534 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %535 = getelementptr inbounds nuw %struct.rc_generic, ptr %534, i32 0, i32 8
  %536 = load i32, ptr %535, align 8, !tbaa !77
  %537 = sitofp i32 %536 to double
  %538 = fdiv double %533, %537
  %539 = load ptr, ptr %6, align 8, !tbaa !8
  %540 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %539, i32 0, i32 8
  store double %538, ptr %540, align 8, !tbaa !158
  br label %552

541:                                              ; preds = %516
  %542 = load ptr, ptr %6, align 8, !tbaa !8
  %543 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %542, i32 0, i32 77
  %544 = load double, ptr %543, align 8, !tbaa !45
  %545 = load ptr, ptr %6, align 8, !tbaa !8
  %546 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %545, i32 0, i32 8
  %547 = load double, ptr %546, align 8, !tbaa !158
  %548 = call double @llvm.fmuladd.f64(double 7.000000e+00, double %547, double %544)
  %549 = fdiv double %548, 8.000000e+00
  %550 = load ptr, ptr %6, align 8, !tbaa !8
  %551 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %550, i32 0, i32 8
  store double %549, ptr %551, align 8, !tbaa !158
  br label %552

552:                                              ; preds = %541, %521
  br label %553

553:                                              ; preds = %552, %511
  br label %554

554:                                              ; preds = %553, %500
  br label %555

555:                                              ; preds = %554, %448
  br label %556

556:                                              ; preds = %555, %447
  %557 = load ptr, ptr @img, align 8, !tbaa !8
  %558 = getelementptr inbounds nuw %struct.ImageParameters, ptr %557, i32 0, i32 5
  %559 = load i32, ptr %558, align 4, !tbaa !102
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %571, label %561

561:                                              ; preds = %556
  %562 = load ptr, ptr @input, align 8, !tbaa !8
  %563 = getelementptr inbounds nuw %struct.InputParameters, ptr %562, i32 0, i32 162
  %564 = load i32, ptr %563, align 8, !tbaa !61
  %565 = icmp eq i32 %564, 1
  br i1 %565, label %571, label %566

566:                                              ; preds = %561
  %567 = load ptr, ptr @input, align 8, !tbaa !8
  %568 = getelementptr inbounds nuw %struct.InputParameters, ptr %567, i32 0, i32 162
  %569 = load i32, ptr %568, align 8, !tbaa !61
  %570 = icmp eq i32 %569, 3
  br i1 %570, label %571, label %1022

571:                                              ; preds = %566, %561, %556
  %572 = load ptr, ptr @img, align 8, !tbaa !8
  %573 = getelementptr inbounds nuw %struct.ImageParameters, ptr %572, i32 0, i32 0
  %574 = load i32, ptr %573, align 8, !tbaa !109
  %575 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %576 = sub nsw i32 %574, %575
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %1022

578:                                              ; preds = %571
  %579 = load ptr, ptr @img, align 8, !tbaa !8
  %580 = getelementptr inbounds nuw %struct.ImageParameters, ptr %579, i32 0, i32 132
  %581 = load i32, ptr %580, align 4, !tbaa !101
  %582 = load ptr, ptr @img, align 8, !tbaa !8
  %583 = getelementptr inbounds nuw %struct.ImageParameters, ptr %582, i32 0, i32 120
  %584 = load i32, ptr %583, align 8, !tbaa !9
  %585 = icmp eq i32 %581, %584
  br i1 %585, label %591, label %586

586:                                              ; preds = %578
  %587 = load ptr, ptr @input, align 8, !tbaa !8
  %588 = getelementptr inbounds nuw %struct.InputParameters, ptr %587, i32 0, i32 162
  %589 = load i32, ptr %588, align 8, !tbaa !61
  %590 = icmp eq i32 %589, 3
  br i1 %590, label %591, label %865

591:                                              ; preds = %586, %578
  %592 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %593 = getelementptr inbounds nuw %struct.rc_generic, ptr %592, i32 0, i32 9
  %594 = load i32, ptr %593, align 4, !tbaa !78
  %595 = icmp sgt i32 %594, 0
  br i1 %595, label %596, label %864

596:                                              ; preds = %591
  %597 = load ptr, ptr @input, align 8, !tbaa !8
  %598 = getelementptr inbounds nuw %struct.InputParameters, ptr %597, i32 0, i32 162
  %599 = load i32, ptr %598, align 8, !tbaa !61
  %600 = icmp eq i32 %599, 3
  br i1 %600, label %601, label %790

601:                                              ; preds = %596
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #10
  %602 = load ptr, ptr @img, align 8, !tbaa !8
  %603 = getelementptr inbounds nuw %struct.ImageParameters, ptr %602, i32 0, i32 5
  %604 = load i32, ptr %603, align 4, !tbaa !102
  %605 = icmp eq i32 %604, 1
  br i1 %605, label %606, label %626

606:                                              ; preds = %601
  %607 = load ptr, ptr @input, align 8, !tbaa !8
  %608 = getelementptr inbounds nuw %struct.InputParameters, ptr %607, i32 0, i32 69
  %609 = load i32, ptr %608, align 8, !tbaa !121
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %626

611:                                              ; preds = %606
  %612 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %613 = getelementptr inbounds nuw %struct.rc_generic, ptr %612, i32 0, i32 20
  %614 = load i32, ptr %613, align 8, !tbaa !132
  %615 = sub nsw i32 %614, 1
  %616 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %617 = load ptr, ptr @img, align 8, !tbaa !8
  %618 = getelementptr inbounds nuw %struct.ImageParameters, ptr %617, i32 0, i32 76
  %619 = load i32, ptr %618, align 4, !tbaa !122
  %620 = sub nsw i32 %619, 1
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.GOP_DATA, ptr %616, i64 %621
  %623 = getelementptr inbounds nuw %struct.GOP_DATA, ptr %622, i32 0, i32 4
  %624 = load i32, ptr %623, align 4, !tbaa !124
  %625 = sub nsw i32 %615, %624
  br label %627

626:                                              ; preds = %606, %601
  br label %627

627:                                              ; preds = %626, %611
  %628 = phi i32 [ %625, %611 ], [ 0, %626 ]
  store i32 %628, ptr %12, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #10
  %629 = load ptr, ptr @img, align 8, !tbaa !8
  %630 = getelementptr inbounds nuw %struct.ImageParameters, ptr %629, i32 0, i32 5
  %631 = load i32, ptr %630, align 4, !tbaa !102
  %632 = icmp eq i32 %631, 1
  br i1 %632, label %633, label %640

633:                                              ; preds = %627
  %634 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %635 = getelementptr inbounds nuw %struct.rc_generic, ptr %634, i32 0, i32 19
  %636 = load i32, ptr %12, align 4, !tbaa !31
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [5 x i32], ptr %635, i64 0, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !31
  br label %655

640:                                              ; preds = %627
  %641 = load ptr, ptr @img, align 8, !tbaa !8
  %642 = getelementptr inbounds nuw %struct.ImageParameters, ptr %641, i32 0, i32 5
  %643 = load i32, ptr %642, align 4, !tbaa !102
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %640
  %646 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %647 = getelementptr inbounds nuw %struct.rc_generic, ptr %646, i32 0, i32 17
  %648 = load i32, ptr %647, align 4, !tbaa !139
  br label %653

649:                                              ; preds = %640
  %650 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %651 = getelementptr inbounds nuw %struct.rc_generic, ptr %650, i32 0, i32 18
  %652 = load i32, ptr %651, align 8, !tbaa !140
  br label %653

653:                                              ; preds = %649, %645
  %654 = phi i32 [ %648, %645 ], [ %652, %649 ]
  br label %655

655:                                              ; preds = %653, %633
  %656 = phi i32 [ %639, %633 ], [ %654, %653 ]
  store i32 %656, ptr %13, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #10
  %657 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %658 = getelementptr inbounds nuw %struct.rc_generic, ptr %657, i32 0, i32 23
  %659 = load i32, ptr %658, align 4, !tbaa !143
  %660 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %661 = getelementptr inbounds nuw %struct.rc_generic, ptr %660, i32 0, i32 18
  %662 = load i32, ptr %661, align 8, !tbaa !140
  %663 = mul nsw i32 %659, %662
  %664 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %665 = getelementptr inbounds nuw %struct.rc_generic, ptr %664, i32 0, i32 22
  %666 = load i32, ptr %665, align 8, !tbaa !144
  %667 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %668 = getelementptr inbounds nuw %struct.rc_generic, ptr %667, i32 0, i32 17
  %669 = load i32, ptr %668, align 4, !tbaa !139
  %670 = mul nsw i32 %666, %669
  %671 = add nsw i32 %663, %670
  store i32 %671, ptr %15, align 4, !tbaa !31
  %672 = load ptr, ptr @input, align 8, !tbaa !8
  %673 = getelementptr inbounds nuw %struct.InputParameters, ptr %672, i32 0, i32 69
  %674 = load i32, ptr %673, align 8, !tbaa !121
  %675 = icmp ne i32 %674, 0
  br i1 %675, label %676, label %703

676:                                              ; preds = %655
  store i32 0, ptr %14, align 4, !tbaa !31
  br label %677

677:                                              ; preds = %699, %676
  %678 = load i32, ptr %14, align 4, !tbaa !31
  %679 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %680 = getelementptr inbounds nuw %struct.rc_generic, ptr %679, i32 0, i32 20
  %681 = load i32, ptr %680, align 8, !tbaa !132
  %682 = icmp slt i32 %678, %681
  br i1 %682, label %683, label %702

683:                                              ; preds = %677
  %684 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %685 = getelementptr inbounds nuw %struct.rc_generic, ptr %684, i32 0, i32 21
  %686 = load i32, ptr %14, align 4, !tbaa !31
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [5 x i32], ptr %685, i64 0, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !31
  %690 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %691 = getelementptr inbounds nuw %struct.rc_generic, ptr %690, i32 0, i32 19
  %692 = load i32, ptr %14, align 4, !tbaa !31
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [5 x i32], ptr %691, i64 0, i64 %693
  %695 = load i32, ptr %694, align 4, !tbaa !31
  %696 = mul nsw i32 %689, %695
  %697 = load i32, ptr %15, align 4, !tbaa !31
  %698 = add nsw i32 %697, %696
  store i32 %698, ptr %15, align 4, !tbaa !31
  br label %699

699:                                              ; preds = %683
  %700 = load i32, ptr %14, align 4, !tbaa !31
  %701 = add nsw i32 %700, 1
  store i32 %701, ptr %14, align 4, !tbaa !31
  br label %677, !llvm.loop !159

702:                                              ; preds = %677
  br label %715

703:                                              ; preds = %655
  %704 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %705 = getelementptr inbounds nuw %struct.rc_generic, ptr %704, i32 0, i32 21
  %706 = getelementptr inbounds [5 x i32], ptr %705, i64 0, i64 0
  %707 = load i32, ptr %706, align 4, !tbaa !31
  %708 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %709 = getelementptr inbounds nuw %struct.rc_generic, ptr %708, i32 0, i32 19
  %710 = getelementptr inbounds [5 x i32], ptr %709, i64 0, i64 0
  %711 = load i32, ptr %710, align 4, !tbaa !31
  %712 = mul nsw i32 %707, %711
  %713 = load i32, ptr %15, align 4, !tbaa !31
  %714 = add nsw i32 %713, %712
  store i32 %714, ptr %15, align 4, !tbaa !31
  br label %715

715:                                              ; preds = %703, %702
  %716 = load i32, ptr %13, align 4, !tbaa !31
  %717 = sitofp i32 %716 to double
  %718 = fmul double 1.000000e+00, %717
  %719 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %720 = getelementptr inbounds nuw %struct.rc_generic, ptr %719, i32 0, i32 16
  %721 = load i32, ptr %720, align 8, !tbaa !80
  %722 = sitofp i32 %721 to double
  %723 = fmul double %718, %722
  %724 = fptrunc double %723 to float
  %725 = load i32, ptr %15, align 4, !tbaa !31
  %726 = sitofp i32 %725 to float
  %727 = fdiv float %724, %726
  %728 = fadd float %727, 5.000000e-01
  %729 = fpext float %728 to double
  %730 = call double @llvm.floor.f64(double %729)
  %731 = fptosi double %730 to i32
  %732 = load ptr, ptr %6, align 8, !tbaa !8
  %733 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %732, i32 0, i32 68
  store i32 %731, ptr %733, align 8, !tbaa !39
  %734 = load i32, ptr %13, align 4, !tbaa !31
  %735 = sitofp i32 %734 to double
  %736 = load ptr, ptr %6, align 8, !tbaa !8
  %737 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %736, i32 0, i32 3
  %738 = load double, ptr %737, align 8, !tbaa !81
  %739 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %740 = getelementptr inbounds nuw %struct.rc_generic, ptr %739, i32 0, i32 15
  %741 = load i64, ptr %740, align 8, !tbaa !72
  %742 = sitofp i64 %741 to double
  %743 = load ptr, ptr %6, align 8, !tbaa !8
  %744 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %743, i32 0, i32 6
  %745 = load double, ptr %744, align 8, !tbaa !155
  %746 = fsub double %742, %745
  %747 = fneg double %738
  %748 = call double @llvm.fmuladd.f64(double %747, double %746, double %735)
  %749 = fadd double %748, 5.000000e-01
  %750 = call double @llvm.floor.f64(double %749)
  %751 = fptosi double %750 to i32
  %752 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %751)
  store i32 %752, ptr %11, align 4, !tbaa !31
  %753 = load ptr, ptr @img, align 8, !tbaa !8
  %754 = getelementptr inbounds nuw %struct.ImageParameters, ptr %753, i32 0, i32 5
  %755 = load i32, ptr %754, align 4, !tbaa !102
  switch i32 %755, label %788 [
    i32 1, label %756
    i32 2, label %771
    i32 0, label %787
  ]

756:                                              ; preds = %715
  %757 = load ptr, ptr %6, align 8, !tbaa !8
  %758 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %757, i32 0, i32 68
  %759 = load i32, ptr %758, align 8, !tbaa !39
  %760 = sitofp i32 %759 to float
  %761 = fpext float %760 to double
  %762 = load ptr, ptr @input, align 8, !tbaa !8
  %763 = getelementptr inbounds nuw %struct.InputParameters, ptr %762, i32 0, i32 164
  %764 = load double, ptr %763, align 8, !tbaa !160
  %765 = fdiv double %761, %764
  %766 = fadd double %765, 5.000000e-01
  %767 = call double @llvm.floor.f64(double %766)
  %768 = fptosi double %767 to i32
  %769 = load ptr, ptr %6, align 8, !tbaa !8
  %770 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %769, i32 0, i32 68
  store i32 %768, ptr %770, align 8, !tbaa !39
  br label %789

771:                                              ; preds = %715
  %772 = load ptr, ptr %6, align 8, !tbaa !8
  %773 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %772, i32 0, i32 68
  %774 = load i32, ptr %773, align 8, !tbaa !39
  %775 = sitofp i32 %774 to float
  %776 = fpext float %775 to double
  %777 = load ptr, ptr @input, align 8, !tbaa !8
  %778 = getelementptr inbounds nuw %struct.InputParameters, ptr %777, i32 0, i32 163
  %779 = load double, ptr %778, align 8, !tbaa !161
  %780 = fmul double %779, 4.000000e+00
  %781 = fdiv double %776, %780
  %782 = fadd double %781, 5.000000e-01
  %783 = call double @llvm.floor.f64(double %782)
  %784 = fptosi double %783 to i32
  %785 = load ptr, ptr %6, align 8, !tbaa !8
  %786 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %785, i32 0, i32 68
  store i32 %784, ptr %786, align 8, !tbaa !39
  br label %789

787:                                              ; preds = %715
  br label %788

788:                                              ; preds = %715, %787
  br label %789

789:                                              ; preds = %788, %771, %756
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #10
  br label %863

790:                                              ; preds = %596
  %791 = load ptr, ptr %6, align 8, !tbaa !8
  %792 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %791, i32 0, i32 76
  %793 = load double, ptr %792, align 8, !tbaa !44
  %794 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %795 = getelementptr inbounds nuw %struct.rc_generic, ptr %794, i32 0, i32 16
  %796 = load i32, ptr %795, align 8, !tbaa !80
  %797 = sitofp i32 %796 to double
  %798 = fmul double %793, %797
  %799 = load ptr, ptr %6, align 8, !tbaa !8
  %800 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %799, i32 0, i32 70
  %801 = load i32, ptr %800, align 8, !tbaa !145
  %802 = sitofp i32 %801 to double
  %803 = load ptr, ptr %6, align 8, !tbaa !8
  %804 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %803, i32 0, i32 76
  %805 = load double, ptr %804, align 8, !tbaa !44
  %806 = load ptr, ptr %6, align 8, !tbaa !8
  %807 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %806, i32 0, i32 71
  %808 = load i32, ptr %807, align 4, !tbaa !146
  %809 = sitofp i32 %808 to double
  %810 = load ptr, ptr %6, align 8, !tbaa !8
  %811 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %810, i32 0, i32 77
  %812 = load double, ptr %811, align 8, !tbaa !45
  %813 = fmul double %809, %812
  %814 = call double @llvm.fmuladd.f64(double %802, double %805, double %813)
  %815 = fdiv double %798, %814
  %816 = fadd double %815, 5.000000e-01
  %817 = call double @llvm.floor.f64(double %816)
  %818 = fptosi double %817 to i32
  %819 = load ptr, ptr %6, align 8, !tbaa !8
  %820 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %819, i32 0, i32 68
  store i32 %818, ptr %820, align 8, !tbaa !39
  %821 = load ptr, ptr %6, align 8, !tbaa !8
  %822 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %821, i32 0, i32 0
  %823 = load float, ptr %822, align 8, !tbaa !65
  %824 = load ptr, ptr %6, align 8, !tbaa !8
  %825 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %824, i32 0, i32 1
  %826 = load float, ptr %825, align 4, !tbaa !69
  %827 = fdiv float %823, %826
  %828 = fpext float %827 to double
  %829 = load ptr, ptr %6, align 8, !tbaa !8
  %830 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %829, i32 0, i32 3
  %831 = load double, ptr %830, align 8, !tbaa !81
  %832 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %833 = getelementptr inbounds nuw %struct.rc_generic, ptr %832, i32 0, i32 15
  %834 = load i64, ptr %833, align 8, !tbaa !72
  %835 = sitofp i64 %834 to double
  %836 = load ptr, ptr %6, align 8, !tbaa !8
  %837 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %836, i32 0, i32 6
  %838 = load double, ptr %837, align 8, !tbaa !155
  %839 = fsub double %835, %838
  %840 = fneg double %831
  %841 = call double @llvm.fmuladd.f64(double %840, double %839, double %828)
  %842 = fadd double %841, 5.000000e-01
  %843 = call double @llvm.floor.f64(double %842)
  %844 = fptosi double %843 to i32
  %845 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %844)
  store i32 %845, ptr %11, align 4, !tbaa !31
  %846 = load ptr, ptr %6, align 8, !tbaa !8
  %847 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %846, i32 0, i32 4
  %848 = load double, ptr %847, align 8, !tbaa !82
  %849 = load ptr, ptr %6, align 8, !tbaa !8
  %850 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %849, i32 0, i32 68
  %851 = load i32, ptr %850, align 8, !tbaa !39
  %852 = load i32, ptr %11, align 4, !tbaa !31
  %853 = sub nsw i32 %851, %852
  %854 = sitofp i32 %853 to double
  %855 = load i32, ptr %11, align 4, !tbaa !31
  %856 = sitofp i32 %855 to double
  %857 = call double @llvm.fmuladd.f64(double %848, double %854, double %856)
  %858 = fadd double %857, 5.000000e-01
  %859 = call double @llvm.floor.f64(double %858)
  %860 = fptosi double %859 to i32
  %861 = load ptr, ptr %6, align 8, !tbaa !8
  %862 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %861, i32 0, i32 68
  store i32 %860, ptr %862, align 8, !tbaa !39
  br label %863

863:                                              ; preds = %790, %789
  br label %864

864:                                              ; preds = %863, %591
  br label %954

865:                                              ; preds = %586
  %866 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %867 = getelementptr inbounds nuw %struct.rc_generic, ptr %866, i32 0, i32 10
  %868 = load i32, ptr %867, align 8, !tbaa !79
  %869 = icmp eq i32 %868, 1
  br i1 %869, label %870, label %875

870:                                              ; preds = %865
  %871 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %872 = getelementptr inbounds nuw %struct.rc_generic, ptr %871, i32 0, i32 9
  %873 = load i32, ptr %872, align 4, !tbaa !78
  %874 = icmp sgt i32 %873, 0
  br i1 %874, label %880, label %875

875:                                              ; preds = %870, %865
  %876 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %877 = getelementptr inbounds nuw %struct.rc_generic, ptr %876, i32 0, i32 10
  %878 = load i32, ptr %877, align 8, !tbaa !79
  %879 = icmp sgt i32 %878, 1
  br i1 %879, label %880, label %953

880:                                              ; preds = %875, %870
  %881 = load ptr, ptr %6, align 8, !tbaa !8
  %882 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %881, i32 0, i32 76
  %883 = load double, ptr %882, align 8, !tbaa !44
  %884 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %885 = getelementptr inbounds nuw %struct.rc_generic, ptr %884, i32 0, i32 16
  %886 = load i32, ptr %885, align 8, !tbaa !80
  %887 = sitofp i32 %886 to double
  %888 = fmul double %883, %887
  %889 = load ptr, ptr %6, align 8, !tbaa !8
  %890 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %889, i32 0, i32 70
  %891 = load i32, ptr %890, align 8, !tbaa !145
  %892 = sitofp i32 %891 to double
  %893 = load ptr, ptr %6, align 8, !tbaa !8
  %894 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %893, i32 0, i32 76
  %895 = load double, ptr %894, align 8, !tbaa !44
  %896 = load ptr, ptr %6, align 8, !tbaa !8
  %897 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %896, i32 0, i32 71
  %898 = load i32, ptr %897, align 4, !tbaa !146
  %899 = sitofp i32 %898 to double
  %900 = load ptr, ptr %6, align 8, !tbaa !8
  %901 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %900, i32 0, i32 77
  %902 = load double, ptr %901, align 8, !tbaa !45
  %903 = fmul double %899, %902
  %904 = call double @llvm.fmuladd.f64(double %892, double %895, double %903)
  %905 = fdiv double %888, %904
  %906 = fadd double %905, 5.000000e-01
  %907 = call double @llvm.floor.f64(double %906)
  %908 = fptosi double %907 to i32
  %909 = load ptr, ptr %6, align 8, !tbaa !8
  %910 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %909, i32 0, i32 68
  store i32 %908, ptr %910, align 8, !tbaa !39
  %911 = load ptr, ptr %6, align 8, !tbaa !8
  %912 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %911, i32 0, i32 0
  %913 = load float, ptr %912, align 8, !tbaa !65
  %914 = load ptr, ptr %6, align 8, !tbaa !8
  %915 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %914, i32 0, i32 1
  %916 = load float, ptr %915, align 4, !tbaa !69
  %917 = fdiv float %913, %916
  %918 = fpext float %917 to double
  %919 = load ptr, ptr %6, align 8, !tbaa !8
  %920 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %919, i32 0, i32 3
  %921 = load double, ptr %920, align 8, !tbaa !81
  %922 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %923 = getelementptr inbounds nuw %struct.rc_generic, ptr %922, i32 0, i32 15
  %924 = load i64, ptr %923, align 8, !tbaa !72
  %925 = sitofp i64 %924 to double
  %926 = load ptr, ptr %6, align 8, !tbaa !8
  %927 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %926, i32 0, i32 6
  %928 = load double, ptr %927, align 8, !tbaa !155
  %929 = fsub double %925, %928
  %930 = fneg double %921
  %931 = call double @llvm.fmuladd.f64(double %930, double %929, double %918)
  %932 = fadd double %931, 5.000000e-01
  %933 = call double @llvm.floor.f64(double %932)
  %934 = fptosi double %933 to i32
  %935 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %934)
  store i32 %935, ptr %11, align 4, !tbaa !31
  %936 = load ptr, ptr %6, align 8, !tbaa !8
  %937 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %936, i32 0, i32 4
  %938 = load double, ptr %937, align 8, !tbaa !82
  %939 = load ptr, ptr %6, align 8, !tbaa !8
  %940 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %939, i32 0, i32 68
  %941 = load i32, ptr %940, align 8, !tbaa !39
  %942 = load i32, ptr %11, align 4, !tbaa !31
  %943 = sub nsw i32 %941, %942
  %944 = sitofp i32 %943 to double
  %945 = load i32, ptr %11, align 4, !tbaa !31
  %946 = sitofp i32 %945 to double
  %947 = call double @llvm.fmuladd.f64(double %938, double %944, double %946)
  %948 = fadd double %947, 5.000000e-01
  %949 = call double @llvm.floor.f64(double %948)
  %950 = fptosi double %949 to i32
  %951 = load ptr, ptr %6, align 8, !tbaa !8
  %952 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %951, i32 0, i32 68
  store i32 %950, ptr %952, align 8, !tbaa !39
  br label %953

953:                                              ; preds = %880, %875
  br label %954

954:                                              ; preds = %953, %864
  %955 = load float, ptr %10, align 4, !tbaa !136
  %956 = load ptr, ptr %6, align 8, !tbaa !8
  %957 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %956, i32 0, i32 68
  %958 = load i32, ptr %957, align 8, !tbaa !39
  %959 = sitofp i32 %958 to float
  %960 = fmul float %955, %959
  %961 = fptosi float %960 to i32
  %962 = load ptr, ptr %6, align 8, !tbaa !8
  %963 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %962, i32 0, i32 68
  store i32 %961, ptr %963, align 8, !tbaa !39
  %964 = load ptr, ptr @input, align 8, !tbaa !8
  %965 = getelementptr inbounds nuw %struct.InputParameters, ptr %964, i32 0, i32 40
  %966 = load i32, ptr %965, align 8, !tbaa !67
  %967 = sitofp i32 %966 to double
  %968 = call double @llvm.fmuladd.f64(double -0.000000e+00, double %967, double 1.000000e+00)
  %969 = load ptr, ptr %6, align 8, !tbaa !8
  %970 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %969, i32 0, i32 68
  %971 = load i32, ptr %970, align 8, !tbaa !39
  %972 = sitofp i32 %971 to double
  %973 = fmul double %968, %972
  %974 = fptosi double %973 to i32
  %975 = load ptr, ptr %6, align 8, !tbaa !8
  %976 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %975, i32 0, i32 68
  store i32 %974, ptr %976, align 8, !tbaa !39
  %977 = load ptr, ptr @input, align 8, !tbaa !8
  %978 = getelementptr inbounds nuw %struct.InputParameters, ptr %977, i32 0, i32 162
  %979 = load i32, ptr %978, align 8, !tbaa !61
  %980 = icmp ne i32 %979, 3
  br i1 %980, label %986, label %981

981:                                              ; preds = %954
  %982 = load ptr, ptr @img, align 8, !tbaa !8
  %983 = getelementptr inbounds nuw %struct.ImageParameters, ptr %982, i32 0, i32 5
  %984 = load i32, ptr %983, align 4, !tbaa !102
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %999

986:                                              ; preds = %981, %954
  %987 = load ptr, ptr %6, align 8, !tbaa !8
  %988 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %987, i32 0, i32 75
  %989 = load i32, ptr %988, align 4, !tbaa !41
  %990 = load ptr, ptr %6, align 8, !tbaa !8
  %991 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %990, i32 0, i32 74
  %992 = load i32, ptr %991, align 8, !tbaa !43
  %993 = load ptr, ptr %6, align 8, !tbaa !8
  %994 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %993, i32 0, i32 68
  %995 = load i32, ptr %994, align 8, !tbaa !39
  %996 = call signext i32 @iClip3(i32 noundef signext %989, i32 noundef signext %992, i32 noundef signext %995)
  %997 = load ptr, ptr %6, align 8, !tbaa !8
  %998 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %997, i32 0, i32 68
  store i32 %996, ptr %998, align 8, !tbaa !39
  br label %999

999:                                              ; preds = %986, %981
  %1000 = load i32, ptr %8, align 4, !tbaa !31
  %1001 = icmp ne i32 %1000, 0
  br i1 %1001, label %1015, label %1002

1002:                                             ; preds = %999
  %1003 = load i32, ptr %7, align 4, !tbaa !31
  %1004 = icmp ne i32 %1003, 0
  br i1 %1004, label %1005, label %1021

1005:                                             ; preds = %1002
  %1006 = load ptr, ptr @input, align 8, !tbaa !8
  %1007 = getelementptr inbounds nuw %struct.InputParameters, ptr %1006, i32 0, i32 121
  %1008 = load i32, ptr %1007, align 8, !tbaa !103
  %1009 = icmp eq i32 %1008, 2
  br i1 %1009, label %1015, label %1010

1010:                                             ; preds = %1005
  %1011 = load ptr, ptr @input, align 8, !tbaa !8
  %1012 = getelementptr inbounds nuw %struct.InputParameters, ptr %1011, i32 0, i32 122
  %1013 = load i32, ptr %1012, align 4, !tbaa !104
  %1014 = icmp ne i32 %1013, 0
  br i1 %1014, label %1015, label %1021

1015:                                             ; preds = %1010, %1005, %999
  %1016 = load ptr, ptr %6, align 8, !tbaa !8
  %1017 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1016, i32 0, i32 68
  %1018 = load i32, ptr %1017, align 8, !tbaa !39
  %1019 = load ptr, ptr %6, align 8, !tbaa !8
  %1020 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1019, i32 0, i32 69
  store i32 %1018, ptr %1020, align 4, !tbaa !40
  br label %1021

1021:                                             ; preds = %1015, %1010, %1002
  br label %1022

1022:                                             ; preds = %1021, %571, %566
  br label %1023

1023:                                             ; preds = %1022, %68, %65
  %1024 = load i32, ptr %7, align 4, !tbaa !31
  %1025 = icmp ne i32 %1024, 0
  br i1 %1025, label %1029, label %1026

1026:                                             ; preds = %1023
  %1027 = load i32, ptr %8, align 4, !tbaa !31
  %1028 = icmp ne i32 %1027, 0
  br i1 %1028, label %1029, label %1069

1029:                                             ; preds = %1026, %1023
  %1030 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1031 = getelementptr inbounds nuw %struct.rc_generic, ptr %1030, i32 0, i32 4
  store i32 0, ptr %1031, align 8, !tbaa !162
  %1032 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1033 = getelementptr inbounds nuw %struct.rc_generic, ptr %1032, i32 0, i32 5
  store i32 0, ptr %1033, align 4, !tbaa !163
  %1034 = load ptr, ptr @img, align 8, !tbaa !8
  %1035 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1034, i32 0, i32 132
  %1036 = load i32, ptr %1035, align 4, !tbaa !101
  %1037 = load ptr, ptr @img, align 8, !tbaa !8
  %1038 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1037, i32 0, i32 120
  %1039 = load i32, ptr %1038, align 8, !tbaa !9
  %1040 = icmp ult i32 %1036, %1039
  br i1 %1040, label %1041, label %1068

1041:                                             ; preds = %1029
  %1042 = load ptr, ptr %6, align 8, !tbaa !8
  %1043 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1042, i32 0, i32 38
  store i32 0, ptr %1043, align 4, !tbaa !120
  %1044 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1045 = getelementptr inbounds nuw %struct.rc_generic, ptr %1044, i32 0, i32 6
  store i32 0, ptr %1045, align 8, !tbaa !118
  %1046 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1047 = getelementptr inbounds nuw %struct.rc_generic, ptr %1046, i32 0, i32 7
  store i32 0, ptr %1047, align 4, !tbaa !119
  %1048 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1049 = getelementptr inbounds nuw %struct.rc_generic, ptr %1048, i32 0, i32 13
  store i64 0, ptr %1049, align 8, !tbaa !164
  %1050 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1051 = getelementptr inbounds nuw %struct.rc_generic, ptr %1050, i32 0, i32 1
  %1052 = load i32, ptr %1051, align 4, !tbaa !97
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1060

1054:                                             ; preds = %1041
  %1055 = load ptr, ptr %6, align 8, !tbaa !8
  %1056 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1055, i32 0, i32 44
  %1057 = load i32, ptr %1056, align 4, !tbaa !71
  %1058 = load ptr, ptr %6, align 8, !tbaa !8
  %1059 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1058, i32 0, i32 39
  store i32 %1057, ptr %1059, align 8, !tbaa !117
  br label %1067

1060:                                             ; preds = %1041
  %1061 = load ptr, ptr %6, align 8, !tbaa !8
  %1062 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1061, i32 0, i32 44
  %1063 = load i32, ptr %1062, align 4, !tbaa !71
  %1064 = ashr i32 %1063, 1
  %1065 = load ptr, ptr %6, align 8, !tbaa !8
  %1066 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1065, i32 0, i32 39
  store i32 %1064, ptr %1066, align 8, !tbaa !117
  br label %1067

1067:                                             ; preds = %1060, %1054
  br label %1068

1068:                                             ; preds = %1067, %1029
  br label %1069

1069:                                             ; preds = %1068, %1026
  %1070 = load ptr, ptr @img, align 8, !tbaa !8
  %1071 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1070, i32 0, i32 5
  %1072 = load i32, ptr %1071, align 4, !tbaa !102
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1079, label %1074

1074:                                             ; preds = %1069
  %1075 = load ptr, ptr @input, align 8, !tbaa !8
  %1076 = getelementptr inbounds nuw %struct.InputParameters, ptr %1075, i32 0, i32 162
  %1077 = load i32, ptr %1076, align 8, !tbaa !61
  %1078 = icmp eq i32 %1077, 1
  br i1 %1078, label %1079, label %1136

1079:                                             ; preds = %1074, %1069
  %1080 = load ptr, ptr @img, align 8, !tbaa !8
  %1081 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1080, i32 0, i32 132
  %1082 = load i32, ptr %1081, align 4, !tbaa !101
  %1083 = load ptr, ptr @img, align 8, !tbaa !8
  %1084 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1083, i32 0, i32 120
  %1085 = load i32, ptr %1084, align 8, !tbaa !9
  %1086 = icmp ult i32 %1082, %1085
  br i1 %1086, label %1087, label %1136

1087:                                             ; preds = %1079
  %1088 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1089 = getelementptr inbounds nuw %struct.rc_generic, ptr %1088, i32 0, i32 1
  %1090 = load i32, ptr %1089, align 4, !tbaa !97
  %1091 = icmp eq i32 %1090, 1
  br i1 %1091, label %1092, label %1136

1092:                                             ; preds = %1087
  %1093 = load ptr, ptr @img, align 8, !tbaa !8
  %1094 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1093, i32 0, i32 0
  %1095 = load i32, ptr %1094, align 8, !tbaa !109
  %1096 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %1097 = sub nsw i32 %1095, %1096
  %1098 = icmp ne i32 %1097, 0
  br i1 %1098, label %1099, label %1136

1099:                                             ; preds = %1092
  %1100 = load i32, ptr %8, align 4, !tbaa !31
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1102, label %1113

1102:                                             ; preds = %1099
  %1103 = load ptr, ptr %6, align 8, !tbaa !8
  %1104 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1103, i32 0, i32 72
  store i32 0, ptr %1104, align 8, !tbaa !165
  %1105 = load ptr, ptr %6, align 8, !tbaa !8
  %1106 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1105, i32 0, i32 69
  %1107 = load i32, ptr %1106, align 4, !tbaa !40
  %1108 = sitofp i32 %1107 to double
  %1109 = fmul double %1108, 6.000000e-01
  %1110 = fptosi double %1109 to i32
  %1111 = load ptr, ptr %6, align 8, !tbaa !8
  %1112 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1111, i32 0, i32 68
  store i32 %1110, ptr %1112, align 8, !tbaa !39
  br label %1135

1113:                                             ; preds = %1099
  %1114 = load ptr, ptr %6, align 8, !tbaa !8
  %1115 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1114, i32 0, i32 69
  %1116 = load i32, ptr %1115, align 4, !tbaa !40
  %1117 = load ptr, ptr %6, align 8, !tbaa !8
  %1118 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1117, i32 0, i32 72
  %1119 = load i32, ptr %1118, align 8, !tbaa !165
  %1120 = sub nsw i32 %1116, %1119
  %1121 = load ptr, ptr %6, align 8, !tbaa !8
  %1122 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1121, i32 0, i32 68
  store i32 %1120, ptr %1122, align 8, !tbaa !39
  %1123 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1124 = getelementptr inbounds nuw %struct.rc_generic, ptr %1123, i32 0, i32 6
  store i32 0, ptr %1124, align 8, !tbaa !118
  %1125 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1126 = getelementptr inbounds nuw %struct.rc_generic, ptr %1125, i32 0, i32 7
  store i32 0, ptr %1126, align 4, !tbaa !119
  %1127 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %1128 = getelementptr inbounds nuw %struct.rc_generic, ptr %1127, i32 0, i32 13
  store i64 0, ptr %1128, align 8, !tbaa !164
  %1129 = load ptr, ptr %6, align 8, !tbaa !8
  %1130 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1129, i32 0, i32 44
  %1131 = load i32, ptr %1130, align 4, !tbaa !71
  %1132 = ashr i32 %1131, 1
  %1133 = load ptr, ptr %6, align 8, !tbaa !8
  %1134 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %1133, i32 0, i32 39
  store i32 %1132, ptr %1134, align 8, !tbaa !117
  br label %1135

1135:                                             ; preds = %1113, %1102
  br label %1136

1136:                                             ; preds = %1135, %1092, %1087, %1079, %1074
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #10
  ret void
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #9 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !31
  store i32 %1, ptr %4, align 4, !tbaa !31
  %5 = load i32, ptr %3, align 4, !tbaa !31
  %6 = load i32, ptr %4, align 4, !tbaa !31
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !31
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !31
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local void @rc_update_pict(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #10
  %6 = load i32, ptr %4, align 4, !tbaa !31
  %7 = load ptr, ptr %3, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %7, i32 0, i32 0
  %9 = load float, ptr %8, align 8, !tbaa !65
  %10 = load ptr, ptr %3, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %10, i32 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !69
  %13 = fdiv float %9, %12
  %14 = fadd float %13, 5.000000e-01
  %15 = fpext float %14 to double
  %16 = call double @llvm.floor.f64(double %15)
  %17 = fptosi double %16 to i32
  %18 = sub nsw i32 %6, %17
  store i32 %18, ptr %5, align 4, !tbaa !31
  %19 = load i32, ptr %4, align 4, !tbaa !31
  %20 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.rc_generic, ptr %20, i32 0, i32 16
  %22 = load i32, ptr %21, align 8, !tbaa !80
  %23 = sub nsw i32 %22, %19
  store i32 %23, ptr %21, align 8, !tbaa !80
  %24 = load i32, ptr %5, align 4, !tbaa !31
  %25 = sext i32 %24 to i64
  %26 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.rc_generic, ptr %26, i32 0, i32 15
  %28 = load i64, ptr %27, align 8, !tbaa !72
  %29 = add nsw i64 %28, %25
  store i64 %29, ptr %27, align 8, !tbaa !72
  %30 = load i32, ptr %5, align 4, !tbaa !31
  %31 = load ptr, ptr %3, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %31, i32 0, i32 75
  %33 = load i32, ptr %32, align 4, !tbaa !41
  %34 = sub nsw i32 %33, %30
  store i32 %34, ptr %32, align 4, !tbaa !41
  %35 = load i32, ptr %5, align 4, !tbaa !31
  %36 = load ptr, ptr %3, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %36, i32 0, i32 73
  %38 = load i32, ptr %37, align 4, !tbaa !42
  %39 = sub nsw i32 %38, %35
  store i32 %39, ptr %37, align 4, !tbaa !42
  %40 = load ptr, ptr %3, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 73
  %42 = load i32, ptr %41, align 4, !tbaa !42
  %43 = sitofp i32 %42 to float
  %44 = fmul float 0x3FECCCCCC0000000, %43
  %45 = fptosi float %44 to i32
  %46 = load ptr, ptr %3, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 74
  store i32 %45, ptr %47, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #10
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @updateComplexity(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !31
  store i32 %2, ptr %7, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #10
  %10 = load ptr, ptr @img, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.ImageParameters, ptr %10, i32 0, i32 132
  %12 = load i32, ptr %11, align 4, !tbaa !101
  %13 = load ptr, ptr @img, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.ImageParameters, ptr %13, i32 0, i32 120
  %15 = load i32, ptr %14, align 8, !tbaa !9
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, ptr %7, align 4, !tbaa !31
  %19 = load ptr, ptr %5, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %19, i32 0, i32 33
  %21 = load i32, ptr %20, align 8, !tbaa !48
  %22 = mul nsw i32 %18, %21
  %23 = sitofp i32 %22 to double
  %24 = fadd double %23, 5.000000e-01
  %25 = call double @llvm.floor.f64(double %24)
  %26 = fptosi double %25 to i32
  store i32 %26, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %80

27:                                               ; preds = %3
  %28 = load i32, ptr %6, align 4, !tbaa !31
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %27
  %31 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.rc_generic, ptr %31, i32 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !116
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw %struct.rc_generic, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !97
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %45, label %40

40:                                               ; preds = %35, %30
  %41 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw %struct.rc_generic, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !97
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40, %35
  %46 = load ptr, ptr %5, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 38
  %48 = load i32, ptr %47, align 4, !tbaa !120
  %49 = sitofp i32 %48 to double
  %50 = load ptr, ptr %5, align 8, !tbaa !8
  %51 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %50, i32 0, i32 44
  %52 = load i32, ptr %51, align 4, !tbaa !71
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %49, %53
  store double %54, ptr %8, align 8, !tbaa !88
  %55 = load i32, ptr %7, align 4, !tbaa !31
  %56 = sitofp i32 %55 to double
  %57 = load double, ptr %8, align 8, !tbaa !88
  %58 = call double @llvm.fmuladd.f64(double %56, double %57, double 5.000000e-01)
  %59 = call double @llvm.floor.f64(double %58)
  %60 = fptosi double %59 to i32
  store i32 %60, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %80

61:                                               ; preds = %40
  br label %78

62:                                               ; preds = %27
  %63 = load ptr, ptr @img, align 8, !tbaa !8
  %64 = getelementptr inbounds nuw %struct.ImageParameters, ptr %63, i32 0, i32 5
  %65 = load i32, ptr %64, align 4, !tbaa !102
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, ptr %7, align 4, !tbaa !31
  %69 = load ptr, ptr %5, align 8, !tbaa !8
  %70 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %69, i32 0, i32 33
  %71 = load i32, ptr %70, align 8, !tbaa !48
  %72 = mul nsw i32 %68, %71
  %73 = sitofp i32 %72 to double
  %74 = fadd double %73, 5.000000e-01
  %75 = call double @llvm.floor.f64(double %74)
  %76 = fptosi double %75 to i32
  store i32 %76, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %80

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78
  store i32 0, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %80

80:                                               ; preds = %79, %67, %45, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #10
  %81 = load i32, ptr %4, align 4
  ret i32 %81
}

; Function Attrs: nounwind
define dso_local void @updatePparams(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  %5 = load i32, ptr %4, align 4, !tbaa !31
  %6 = load ptr, ptr %3, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %6, i32 0, i32 66
  store i32 %5, ptr %7, align 8, !tbaa !62
  %8 = load ptr, ptr %3, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 70
  %10 = load i32, ptr %9, align 8, !tbaa !145
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %9, align 8, !tbaa !145
  %12 = load ptr, ptr %3, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %12, i32 0, i32 66
  %14 = load i32, ptr %13, align 8, !tbaa !62
  %15 = sitofp i32 %14 to double
  %16 = load ptr, ptr %3, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %16, i32 0, i32 76
  store double %15, ptr %17, align 8, !tbaa !44
  %18 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_generic, ptr %18, i32 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !162
  %21 = load ptr, ptr %3, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 30
  store i32 %20, ptr %22, align 4, !tbaa !166
  %23 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw %struct.rc_generic, ptr %23, i32 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !78
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 4, !tbaa !78
  %27 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw %struct.rc_generic, ptr %27, i32 0, i32 12
  %29 = load i32, ptr %28, align 8, !tbaa !108
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %28, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateBparams(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  %5 = load i32, ptr %4, align 4, !tbaa !31
  %6 = load ptr, ptr %3, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %6, i32 0, i32 67
  store i32 %5, ptr %7, align 4, !tbaa !63
  %8 = load ptr, ptr %3, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 71
  %10 = load i32, ptr %9, align 4, !tbaa !146
  %11 = add nsw i32 %10, -1
  store i32 %11, ptr %9, align 4, !tbaa !146
  %12 = load ptr, ptr %3, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %12, i32 0, i32 67
  %14 = load i32, ptr %13, align 4, !tbaa !63
  %15 = sitofp i32 %14 to float
  %16 = fdiv float %15, 0x3FF5D14E40000000
  %17 = fpext float %16 to double
  %18 = load ptr, ptr %3, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 77
  store double %17, ptr %19, align 8, !tbaa !45
  %20 = load ptr, ptr %3, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %20, i32 0, i32 37
  %22 = load i32, ptr %21, align 8, !tbaa !107
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %21, align 8, !tbaa !107
  %24 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_generic, ptr %24, i32 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !77
  ret void
}

; Function Attrs: nounwind
define dso_local void @rc_update_pict_frame(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #10
  store i32 0, ptr %5, align 4, !tbaa !31
  %6 = load ptr, ptr @input, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw %struct.InputParameters, ptr %6, i32 0, i32 162
  %8 = load i32, ptr %7, align 8, !tbaa !61
  switch i32 %8, label %10 [
    i32 0, label %9
    i32 2, label %9
    i32 1, label %66
    i32 3, label %99
  ]

9:                                                ; preds = %2, %2
  br label %10

10:                                               ; preds = %2, %9
  %11 = load ptr, ptr %3, align 8, !tbaa !8
  %12 = load ptr, ptr @img, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw %struct.ImageParameters, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !102
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load ptr, ptr @img, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw %struct.ImageParameters, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8, !tbaa !109
  %20 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %21 = sub nsw i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %10
  %24 = phi i1 [ false, %10 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load i32, ptr %4, align 4, !tbaa !31
  %27 = call signext i32 @updateComplexity(ptr noundef %11, i32 noundef signext %25, i32 noundef signext %26)
  store i32 %27, ptr %5, align 4, !tbaa !31
  %28 = load ptr, ptr @img, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !102
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %23
  %33 = load ptr, ptr @img, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.ImageParameters, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !109
  %36 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %37 = sub nsw i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_generic, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !116
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw %struct.rc_generic, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !97
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44, %39
  %50 = load ptr, ptr %3, align 8, !tbaa !8
  %51 = load i32, ptr %5, align 4, !tbaa !31
  call void @updatePparams(ptr noundef %50, i32 noundef signext %51)
  br label %55

52:                                               ; preds = %44
  %53 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw %struct.rc_generic, ptr %53, i32 0, i32 3
  store i32 0, ptr %54, align 4, !tbaa !116
  br label %55

55:                                               ; preds = %52, %49
  br label %65

56:                                               ; preds = %32, %23
  %57 = load ptr, ptr @img, align 8, !tbaa !8
  %58 = getelementptr inbounds nuw %struct.ImageParameters, ptr %57, i32 0, i32 5
  %59 = load i32, ptr %58, align 4, !tbaa !102
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load ptr, ptr %3, align 8, !tbaa !8
  %63 = load i32, ptr %5, align 4, !tbaa !31
  call void @updateBparams(ptr noundef %62, i32 noundef signext %63)
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %55
  br label %204

66:                                               ; preds = %2
  %67 = load ptr, ptr %3, align 8, !tbaa !8
  %68 = load ptr, ptr @img, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.ImageParameters, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !109
  %71 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %72 = sub nsw i32 %70, %71
  %73 = load i32, ptr %4, align 4, !tbaa !31
  %74 = call signext i32 @updateComplexity(ptr noundef %67, i32 noundef signext %72, i32 noundef signext %73)
  store i32 %74, ptr %5, align 4, !tbaa !31
  %75 = load ptr, ptr @img, align 8, !tbaa !8
  %76 = getelementptr inbounds nuw %struct.ImageParameters, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8, !tbaa !109
  %78 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %79 = sub nsw i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %66
  %82 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw %struct.rc_generic, ptr %82, i32 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !116
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %88 = getelementptr inbounds nuw %struct.rc_generic, ptr %87, i32 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !97
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86, %81
  %92 = load ptr, ptr %3, align 8, !tbaa !8
  %93 = load i32, ptr %5, align 4, !tbaa !31
  call void @updatePparams(ptr noundef %92, i32 noundef signext %93)
  br label %97

94:                                               ; preds = %86
  %95 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %96 = getelementptr inbounds nuw %struct.rc_generic, ptr %95, i32 0, i32 3
  store i32 0, ptr %96, align 4, !tbaa !116
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %66
  br label %204

99:                                               ; preds = %2
  %100 = load ptr, ptr %3, align 8, !tbaa !8
  %101 = load ptr, ptr @img, align 8, !tbaa !8
  %102 = getelementptr inbounds nuw %struct.ImageParameters, ptr %101, i32 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load ptr, ptr @img, align 8, !tbaa !8
  %107 = getelementptr inbounds nuw %struct.ImageParameters, ptr %106, i32 0, i32 0
  %108 = load i32, ptr %107, align 8, !tbaa !109
  %109 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %110 = sub nsw i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %105, %99
  %113 = phi i1 [ false, %99 ], [ %111, %105 ]
  %114 = zext i1 %113 to i32
  %115 = load i32, ptr %4, align 4, !tbaa !31
  %116 = call signext i32 @updateComplexity(ptr noundef %100, i32 noundef signext %114, i32 noundef signext %115)
  store i32 %116, ptr %5, align 4, !tbaa !31
  %117 = load ptr, ptr @img, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.ImageParameters, ptr %117, i32 0, i32 5
  %119 = load i32, ptr %118, align 4, !tbaa !102
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %133

121:                                              ; preds = %112
  %122 = load ptr, ptr @img, align 8, !tbaa !8
  %123 = getelementptr inbounds nuw %struct.ImageParameters, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !109
  %125 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %126 = sub nsw i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %121
  %129 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %130 = getelementptr inbounds nuw %struct.rc_generic, ptr %129, i32 0, i32 23
  %131 = load i32, ptr %130, align 4, !tbaa !143
  %132 = add nsw i32 %131, -1
  store i32 %132, ptr %130, align 4, !tbaa !143
  br label %133

133:                                              ; preds = %128, %121, %112
  %134 = load ptr, ptr @img, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.ImageParameters, ptr %134, i32 0, i32 5
  %136 = load i32, ptr %135, align 4, !tbaa !102
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %133
  %139 = load ptr, ptr @img, align 8, !tbaa !8
  %140 = getelementptr inbounds nuw %struct.ImageParameters, ptr %139, i32 0, i32 0
  %141 = load i32, ptr %140, align 8, !tbaa !109
  %142 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %143 = sub nsw i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %166

145:                                              ; preds = %138
  %146 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %147 = getelementptr inbounds nuw %struct.rc_generic, ptr %146, i32 0, i32 3
  %148 = load i32, ptr %147, align 4, !tbaa !116
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %152 = getelementptr inbounds nuw %struct.rc_generic, ptr %151, i32 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !97
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150, %145
  %156 = load ptr, ptr %3, align 8, !tbaa !8
  %157 = load i32, ptr %5, align 4, !tbaa !31
  call void @updatePparams(ptr noundef %156, i32 noundef signext %157)
  %158 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %159 = getelementptr inbounds nuw %struct.rc_generic, ptr %158, i32 0, i32 22
  %160 = load i32, ptr %159, align 8, !tbaa !144
  %161 = add nsw i32 %160, -1
  store i32 %161, ptr %159, align 8, !tbaa !144
  br label %165

162:                                              ; preds = %150
  %163 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %164 = getelementptr inbounds nuw %struct.rc_generic, ptr %163, i32 0, i32 3
  store i32 0, ptr %164, align 4, !tbaa !116
  br label %165

165:                                              ; preds = %162, %155
  br label %203

166:                                              ; preds = %138, %133
  %167 = load ptr, ptr @img, align 8, !tbaa !8
  %168 = getelementptr inbounds nuw %struct.ImageParameters, ptr %167, i32 0, i32 5
  %169 = load i32, ptr %168, align 4, !tbaa !102
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %202

171:                                              ; preds = %166
  %172 = load ptr, ptr %3, align 8, !tbaa !8
  %173 = load i32, ptr %5, align 4, !tbaa !31
  call void @updateBparams(ptr noundef %172, i32 noundef signext %173)
  %174 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_generic, ptr %174, i32 0, i32 21
  %176 = load ptr, ptr @input, align 8, !tbaa !8
  %177 = getelementptr inbounds nuw %struct.InputParameters, ptr %176, i32 0, i32 69
  %178 = load i32, ptr %177, align 8, !tbaa !121
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %171
  %181 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %182 = getelementptr inbounds nuw %struct.rc_generic, ptr %181, i32 0, i32 20
  %183 = load i32, ptr %182, align 8, !tbaa !132
  %184 = sub nsw i32 %183, 1
  %185 = load ptr, ptr @gop_structure, align 8, !tbaa !8
  %186 = load ptr, ptr @img, align 8, !tbaa !8
  %187 = getelementptr inbounds nuw %struct.ImageParameters, ptr %186, i32 0, i32 76
  %188 = load i32, ptr %187, align 4, !tbaa !122
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.GOP_DATA, ptr %185, i64 %190
  %192 = getelementptr inbounds nuw %struct.GOP_DATA, ptr %191, i32 0, i32 4
  %193 = load i32, ptr %192, align 4, !tbaa !124
  %194 = sub nsw i32 %184, %193
  br label %196

195:                                              ; preds = %171
  br label %196

196:                                              ; preds = %195, %180
  %197 = phi i32 [ %194, %180 ], [ 0, %195 ]
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [5 x i32], ptr %175, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !31
  %201 = add nsw i32 %200, -1
  store i32 %201, ptr %199, align 4, !tbaa !31
  br label %202

202:                                              ; preds = %196, %166
  br label %203

203:                                              ; preds = %202, %165
  br label %204

204:                                              ; preds = %203, %98, %65
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #10
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateRCModel(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #10
  store double 0.000000e+00, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  %9 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw %struct.rc_generic, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %10, align 4, !tbaa !78
  store i32 %11, ptr %7, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  store i32 0, ptr %8, align 4, !tbaa !31
  %12 = load ptr, ptr @img, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw %struct.ImageParameters, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !102
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load ptr, ptr @input, align 8, !tbaa !8
  %18 = getelementptr inbounds nuw %struct.InputParameters, ptr %17, i32 0, i32 162
  %19 = load i32, ptr %18, align 8, !tbaa !61
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %520

21:                                               ; preds = %16, %1
  %22 = load ptr, ptr @img, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw %struct.ImageParameters, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !109
  %25 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %26 = sub nsw i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %520

28:                                               ; preds = %21
  %29 = load ptr, ptr @img, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.ImageParameters, ptr %29, i32 0, i32 132
  %31 = load i32, ptr %30, align 4, !tbaa !101
  %32 = load ptr, ptr @img, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw %struct.ImageParameters, ptr %32, i32 0, i32 120
  %34 = load i32, ptr %33, align 8, !tbaa !9
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = call double @ComputeFrameMAD()
  %38 = load ptr, ptr %2, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 46
  store double %37, ptr %39, align 8, !tbaa !36
  %40 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_generic, ptr %40, i32 0, i32 9
  %42 = load i32, ptr %41, align 4, !tbaa !78
  store i32 %42, ptr %7, align 4, !tbaa !31
  br label %211

43:                                               ; preds = %28
  %44 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %45 = getelementptr inbounds nuw %struct.rc_generic, ptr %44, i32 0, i32 13
  %46 = load i64, ptr %45, align 8, !tbaa !164
  %47 = ashr i64 %46, 8
  %48 = load ptr, ptr @img, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw %struct.ImageParameters, ptr %48, i32 0, i32 132
  %50 = load i32, ptr %49, align 4, !tbaa !101
  %51 = zext i32 %50 to i64
  %52 = sdiv i64 %47, %51
  %53 = sitofp i64 %52 to double
  %54 = load ptr, ptr %2, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %54, i32 0, i32 46
  store double %53, ptr %55, align 8, !tbaa !36
  %56 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_generic, ptr %56, i32 0, i32 13
  store i64 0, ptr %57, align 8, !tbaa !164
  %58 = load ptr, ptr %2, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %58, i32 0, i32 44
  %60 = load i32, ptr %59, align 4, !tbaa !71
  %61 = load ptr, ptr %2, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %61, i32 0, i32 39
  %63 = load i32, ptr %62, align 8, !tbaa !117
  %64 = sub nsw i32 %60, %63
  %65 = load ptr, ptr %2, align 8, !tbaa !8
  %66 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %65, i32 0, i32 45
  store i32 %64, ptr %66, align 8, !tbaa !167
  %67 = load ptr, ptr %2, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %67, i32 0, i32 45
  %69 = load i32, ptr %68, align 8, !tbaa !167
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %131

71:                                               ; preds = %43
  %72 = load ptr, ptr %2, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %72, i32 0, i32 40
  %74 = load i32, ptr %73, align 4, !tbaa !92
  %75 = load ptr, ptr %2, align 8, !tbaa !8
  %76 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %75, i32 0, i32 45
  %77 = load i32, ptr %76, align 8, !tbaa !167
  %78 = sub nsw i32 %77, 1
  %79 = mul nsw i32 %74, %78
  %80 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %81 = getelementptr inbounds nuw %struct.rc_generic, ptr %80, i32 0, i32 6
  %82 = load i32, ptr %81, align 8, !tbaa !118
  %83 = add nsw i32 %79, %82
  %84 = sitofp i32 %83 to double
  %85 = load ptr, ptr %2, align 8, !tbaa !8
  %86 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %85, i32 0, i32 45
  %87 = load i32, ptr %86, align 8, !tbaa !167
  %88 = sitofp i32 %87 to double
  %89 = fdiv double %84, %88
  %90 = fadd double %89, 5.000000e-01
  %91 = fptosi double %90 to i32
  %92 = load ptr, ptr %2, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %92, i32 0, i32 40
  store i32 %91, ptr %93, align 4, !tbaa !92
  %94 = load ptr, ptr %2, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %94, i32 0, i32 42
  %96 = load i32, ptr %95, align 4, !tbaa !93
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %71
  %99 = load ptr, ptr %2, align 8, !tbaa !8
  %100 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %99, i32 0, i32 40
  %101 = load i32, ptr %100, align 4, !tbaa !92
  %102 = load ptr, ptr %2, align 8, !tbaa !8
  %103 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %102, i32 0, i32 41
  store i32 %101, ptr %103, align 8, !tbaa !168
  br label %130

104:                                              ; preds = %71
  %105 = load ptr, ptr %2, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %105, i32 0, i32 40
  %107 = load i32, ptr %106, align 4, !tbaa !92
  %108 = load ptr, ptr %2, align 8, !tbaa !8
  %109 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %108, i32 0, i32 45
  %110 = load i32, ptr %109, align 8, !tbaa !167
  %111 = mul nsw i32 %107, %110
  %112 = load ptr, ptr %2, align 8, !tbaa !8
  %113 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %112, i32 0, i32 42
  %114 = load i32, ptr %113, align 4, !tbaa !93
  %115 = load ptr, ptr %2, align 8, !tbaa !8
  %116 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %115, i32 0, i32 39
  %117 = load i32, ptr %116, align 8, !tbaa !117
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %111, %118
  %120 = sitofp i32 %119 to double
  %121 = load ptr, ptr %2, align 8, !tbaa !8
  %122 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %121, i32 0, i32 44
  %123 = load i32, ptr %122, align 4, !tbaa !71
  %124 = sitofp i32 %123 to double
  %125 = fdiv double %120, %124
  %126 = fadd double %125, 5.000000e-01
  %127 = fptosi double %126 to i32
  %128 = load ptr, ptr %2, align 8, !tbaa !8
  %129 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %128, i32 0, i32 41
  store i32 %127, ptr %129, align 8, !tbaa !168
  br label %130

130:                                              ; preds = %104, %98
  br label %131

131:                                              ; preds = %130, %43
  %132 = load ptr, ptr @input, align 8, !tbaa !8
  %133 = getelementptr inbounds nuw %struct.InputParameters, ptr %132, i32 0, i32 121
  %134 = load i32, ptr %133, align 8, !tbaa !103
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %141, label %136

136:                                              ; preds = %131
  %137 = load ptr, ptr @input, align 8, !tbaa !8
  %138 = getelementptr inbounds nuw %struct.InputParameters, ptr %137, i32 0, i32 122
  %139 = load i32, ptr %138, align 4, !tbaa !104
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %136, %131
  %142 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %143 = getelementptr inbounds nuw %struct.rc_generic, ptr %142, i32 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !97
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = load ptr, ptr %2, align 8, !tbaa !8
  %148 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %147, i32 0, i32 46
  %149 = load double, ptr %148, align 8, !tbaa !36
  %150 = load ptr, ptr %2, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %150, i32 0, i32 61
  %152 = load ptr, ptr %151, align 8, !tbaa !58
  %153 = load ptr, ptr %2, align 8, !tbaa !8
  %154 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %153, i32 0, i32 44
  %155 = load i32, ptr %154, align 4, !tbaa !71
  %156 = sub nsw i32 %155, 1
  %157 = load ptr, ptr %2, align 8, !tbaa !8
  %158 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %157, i32 0, i32 39
  %159 = load i32, ptr %158, align 8, !tbaa !117
  %160 = sub nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds double, ptr %152, i64 %161
  store double %149, ptr %162, align 8, !tbaa !88
  br label %180

163:                                              ; preds = %141, %136
  %164 = load ptr, ptr %2, align 8, !tbaa !8
  %165 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %164, i32 0, i32 46
  %166 = load double, ptr %165, align 8, !tbaa !36
  %167 = load ptr, ptr %2, align 8, !tbaa !8
  %168 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %167, i32 0, i32 60
  %169 = load ptr, ptr %168, align 8, !tbaa !57
  %170 = load ptr, ptr %2, align 8, !tbaa !8
  %171 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %170, i32 0, i32 44
  %172 = load i32, ptr %171, align 4, !tbaa !71
  %173 = sub nsw i32 %172, 1
  %174 = load ptr, ptr %2, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %174, i32 0, i32 39
  %176 = load i32, ptr %175, align 8, !tbaa !117
  %177 = sub nsw i32 %173, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %169, i64 %178
  store double %166, ptr %179, align 8, !tbaa !88
  br label %180

180:                                              ; preds = %163, %146
  %181 = load ptr, ptr %2, align 8, !tbaa !8
  %182 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %181, i32 0, i32 39
  %183 = load i32, ptr %182, align 8, !tbaa !117
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %197

185:                                              ; preds = %180
  %186 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %187 = getelementptr inbounds nuw %struct.rc_generic, ptr %186, i32 0, i32 9
  %188 = load i32, ptr %187, align 4, !tbaa !78
  %189 = load ptr, ptr %2, align 8, !tbaa !8
  %190 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %189, i32 0, i32 44
  %191 = load i32, ptr %190, align 4, !tbaa !71
  %192 = mul nsw i32 %188, %191
  %193 = load ptr, ptr %2, align 8, !tbaa !8
  %194 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %193, i32 0, i32 45
  %195 = load i32, ptr %194, align 8, !tbaa !167
  %196 = add nsw i32 %192, %195
  store i32 %196, ptr %7, align 4, !tbaa !31
  br label %210

197:                                              ; preds = %180
  %198 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %199 = getelementptr inbounds nuw %struct.rc_generic, ptr %198, i32 0, i32 9
  %200 = load i32, ptr %199, align 4, !tbaa !78
  %201 = sub nsw i32 %200, 1
  %202 = load ptr, ptr %2, align 8, !tbaa !8
  %203 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %202, i32 0, i32 44
  %204 = load i32, ptr %203, align 4, !tbaa !71
  %205 = mul nsw i32 %201, %204
  %206 = load ptr, ptr %2, align 8, !tbaa !8
  %207 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %206, i32 0, i32 45
  %208 = load i32, ptr %207, align 8, !tbaa !167
  %209 = add nsw i32 %205, %208
  store i32 %209, ptr %7, align 4, !tbaa !31
  br label %210

210:                                              ; preds = %197, %185
  br label %211

211:                                              ; preds = %210, %36
  %212 = load i32, ptr %7, align 4, !tbaa !31
  %213 = icmp sgt i32 %212, 1
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 1, ptr %8, align 4, !tbaa !31
  br label %215

215:                                              ; preds = %214, %211
  %216 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %217 = getelementptr inbounds nuw %struct.rc_generic, ptr %216, i32 0, i32 4
  %218 = load i32, ptr %217, align 8, !tbaa !162
  %219 = load ptr, ptr %2, align 8, !tbaa !8
  %220 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %219, i32 0, i32 34
  store i32 %218, ptr %220, align 4, !tbaa !83
  store i32 19, ptr %4, align 4, !tbaa !31
  br label %221

221:                                              ; preds = %271, %215
  %222 = load i32, ptr %4, align 4, !tbaa !31
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %274

224:                                              ; preds = %221
  %225 = load ptr, ptr %2, align 8, !tbaa !8
  %226 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %225, i32 0, i32 23
  %227 = load i32, ptr %4, align 4, !tbaa !31
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [21 x double], ptr %226, i64 0, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !88
  %232 = load ptr, ptr %2, align 8, !tbaa !8
  %233 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %232, i32 0, i32 23
  %234 = load i32, ptr %4, align 4, !tbaa !31
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [21 x double], ptr %233, i64 0, i64 %235
  store double %231, ptr %236, align 8, !tbaa !88
  %237 = load ptr, ptr %2, align 8, !tbaa !8
  %238 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %237, i32 0, i32 23
  %239 = load i32, ptr %4, align 4, !tbaa !31
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [21 x double], ptr %238, i64 0, i64 %240
  %242 = load double, ptr %241, align 8, !tbaa !88
  %243 = load ptr, ptr %2, align 8, !tbaa !8
  %244 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %243, i32 0, i32 21
  %245 = load i32, ptr %4, align 4, !tbaa !31
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [21 x double], ptr %244, i64 0, i64 %246
  store double %242, ptr %247, align 8, !tbaa !88
  %248 = load ptr, ptr %2, align 8, !tbaa !8
  %249 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %248, i32 0, i32 24
  %250 = load i32, ptr %4, align 4, !tbaa !31
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [21 x double], ptr %249, i64 0, i64 %252
  %254 = load double, ptr %253, align 8, !tbaa !88
  %255 = load ptr, ptr %2, align 8, !tbaa !8
  %256 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %255, i32 0, i32 24
  %257 = load i32, ptr %4, align 4, !tbaa !31
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [21 x double], ptr %256, i64 0, i64 %258
  store double %254, ptr %259, align 8, !tbaa !88
  %260 = load ptr, ptr %2, align 8, !tbaa !8
  %261 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %260, i32 0, i32 24
  %262 = load i32, ptr %4, align 4, !tbaa !31
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [21 x double], ptr %261, i64 0, i64 %263
  %265 = load double, ptr %264, align 8, !tbaa !88
  %266 = load ptr, ptr %2, align 8, !tbaa !8
  %267 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %266, i32 0, i32 22
  %268 = load i32, ptr %4, align 4, !tbaa !31
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [21 x double], ptr %267, i64 0, i64 %269
  store double %265, ptr %270, align 8, !tbaa !88
  br label %271

271:                                              ; preds = %224
  %272 = load i32, ptr %4, align 4, !tbaa !31
  %273 = add nsw i32 %272, -1
  store i32 %273, ptr %4, align 4, !tbaa !31
  br label %221, !llvm.loop !169

274:                                              ; preds = %221
  %275 = load ptr, ptr %2, align 8, !tbaa !8
  %276 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %275, i32 0, i32 33
  %277 = load i32, ptr %276, align 8, !tbaa !48
  %278 = call double @QP2Qstep(i32 noundef signext %277)
  %279 = load ptr, ptr %2, align 8, !tbaa !8
  %280 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %279, i32 0, i32 23
  %281 = getelementptr inbounds [21 x double], ptr %280, i64 0, i64 0
  store double %278, ptr %281, align 8, !tbaa !88
  %282 = load ptr, ptr @img, align 8, !tbaa !8
  %283 = getelementptr inbounds nuw %struct.ImageParameters, ptr %282, i32 0, i32 132
  %284 = load i32, ptr %283, align 4, !tbaa !101
  %285 = load ptr, ptr @img, align 8, !tbaa !8
  %286 = getelementptr inbounds nuw %struct.ImageParameters, ptr %285, i32 0, i32 120
  %287 = load i32, ptr %286, align 8, !tbaa !9
  %288 = icmp eq i32 %284, %287
  br i1 %288, label %289, label %302

289:                                              ; preds = %274
  %290 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %291 = getelementptr inbounds nuw %struct.rc_generic, ptr %290, i32 0, i32 5
  %292 = load i32, ptr %291, align 4, !tbaa !163
  %293 = sitofp i32 %292 to double
  %294 = fmul double %293, 1.000000e+00
  %295 = load ptr, ptr %2, align 8, !tbaa !8
  %296 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %295, i32 0, i32 46
  %297 = load double, ptr %296, align 8, !tbaa !36
  %298 = fdiv double %294, %297
  %299 = load ptr, ptr %2, align 8, !tbaa !8
  %300 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %299, i32 0, i32 24
  %301 = getelementptr inbounds [21 x double], ptr %300, i64 0, i64 0
  store double %298, ptr %301, align 8, !tbaa !88
  br label %315

302:                                              ; preds = %274
  %303 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %304 = getelementptr inbounds nuw %struct.rc_generic, ptr %303, i32 0, i32 7
  %305 = load i32, ptr %304, align 4, !tbaa !119
  %306 = sitofp i32 %305 to double
  %307 = fmul double %306, 1.000000e+00
  %308 = load ptr, ptr %2, align 8, !tbaa !8
  %309 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %308, i32 0, i32 46
  %310 = load double, ptr %309, align 8, !tbaa !36
  %311 = fdiv double %307, %310
  %312 = load ptr, ptr %2, align 8, !tbaa !8
  %313 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %312, i32 0, i32 24
  %314 = getelementptr inbounds [21 x double], ptr %313, i64 0, i64 0
  store double %311, ptr %314, align 8, !tbaa !88
  br label %315

315:                                              ; preds = %302, %289
  %316 = load ptr, ptr %2, align 8, !tbaa !8
  %317 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %316, i32 0, i32 23
  %318 = getelementptr inbounds [21 x double], ptr %317, i64 0, i64 0
  %319 = load double, ptr %318, align 8, !tbaa !88
  %320 = load ptr, ptr %2, align 8, !tbaa !8
  %321 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %320, i32 0, i32 21
  %322 = getelementptr inbounds [21 x double], ptr %321, i64 0, i64 0
  store double %319, ptr %322, align 8, !tbaa !88
  %323 = load ptr, ptr %2, align 8, !tbaa !8
  %324 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %323, i32 0, i32 24
  %325 = getelementptr inbounds [21 x double], ptr %324, i64 0, i64 0
  %326 = load double, ptr %325, align 8, !tbaa !88
  %327 = load ptr, ptr %2, align 8, !tbaa !8
  %328 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %327, i32 0, i32 22
  %329 = getelementptr inbounds [21 x double], ptr %328, i64 0, i64 0
  store double %326, ptr %329, align 8, !tbaa !88
  %330 = load ptr, ptr %2, align 8, !tbaa !8
  %331 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %330, i32 0, i32 27
  %332 = load double, ptr %331, align 8, !tbaa !84
  %333 = load ptr, ptr %2, align 8, !tbaa !8
  %334 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %333, i32 0, i32 25
  store double %332, ptr %334, align 8, !tbaa !110
  %335 = load ptr, ptr %2, align 8, !tbaa !8
  %336 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %335, i32 0, i32 28
  %337 = load double, ptr %336, align 8, !tbaa !85
  %338 = load ptr, ptr %2, align 8, !tbaa !8
  %339 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %338, i32 0, i32 26
  store double %337, ptr %339, align 8, !tbaa !111
  %340 = load ptr, ptr %2, align 8, !tbaa !8
  %341 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %340, i32 0, i32 46
  %342 = load double, ptr %341, align 8, !tbaa !36
  %343 = load ptr, ptr %2, align 8, !tbaa !8
  %344 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %343, i32 0, i32 49
  %345 = load double, ptr %344, align 8, !tbaa !32
  %346 = fcmp ogt double %342, %345
  br i1 %346, label %347, label %357

347:                                              ; preds = %315
  %348 = load ptr, ptr %2, align 8, !tbaa !8
  %349 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %348, i32 0, i32 49
  %350 = load double, ptr %349, align 8, !tbaa !32
  %351 = load ptr, ptr %2, align 8, !tbaa !8
  %352 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %351, i32 0, i32 46
  %353 = load double, ptr %352, align 8, !tbaa !36
  %354 = fdiv double %350, %353
  %355 = fmul double %354, 2.000000e+01
  %356 = fptosi double %355 to i32
  br label %367

357:                                              ; preds = %315
  %358 = load ptr, ptr %2, align 8, !tbaa !8
  %359 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %358, i32 0, i32 46
  %360 = load double, ptr %359, align 8, !tbaa !36
  %361 = load ptr, ptr %2, align 8, !tbaa !8
  %362 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %361, i32 0, i32 49
  %363 = load double, ptr %362, align 8, !tbaa !32
  %364 = fdiv double %360, %363
  %365 = fmul double %364, 2.000000e+01
  %366 = fptosi double %365 to i32
  br label %367

367:                                              ; preds = %357, %347
  %368 = phi i32 [ %356, %347 ], [ %366, %357 ]
  store i32 %368, ptr %3, align 4, !tbaa !31
  %369 = load i32, ptr %7, align 4, !tbaa !31
  %370 = load i32, ptr %3, align 4, !tbaa !31
  %371 = call signext i32 @iClip3(i32 noundef signext 1, i32 noundef signext %369, i32 noundef signext %370)
  store i32 %371, ptr %3, align 4, !tbaa !31
  %372 = load i32, ptr %3, align 4, !tbaa !31
  %373 = load ptr, ptr %2, align 8, !tbaa !8
  %374 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %373, i32 0, i32 32
  %375 = load i32, ptr %374, align 4, !tbaa !75
  %376 = add nsw i32 %375, 1
  %377 = call signext i32 @imin(i32 noundef signext %372, i32 noundef signext %376)
  store i32 %377, ptr %3, align 4, !tbaa !31
  %378 = load i32, ptr %3, align 4, !tbaa !31
  %379 = call signext i32 @imin(i32 noundef signext %378, i32 noundef signext 20)
  store i32 %379, ptr %3, align 4, !tbaa !31
  %380 = load i32, ptr %3, align 4, !tbaa !31
  %381 = load ptr, ptr %2, align 8, !tbaa !8
  %382 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %381, i32 0, i32 32
  store i32 %380, ptr %382, align 4, !tbaa !75
  store i32 0, ptr %4, align 4, !tbaa !31
  br label %383

383:                                              ; preds = %390, %367
  %384 = load i32, ptr %4, align 4, !tbaa !31
  %385 = icmp slt i32 %384, 20
  br i1 %385, label %386, label %393

386:                                              ; preds = %383
  %387 = load i32, ptr %4, align 4, !tbaa !31
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [21 x i32], ptr @updateRCModel.m_rgRejected, i64 0, i64 %388
  store i32 0, ptr %389, align 4, !tbaa !31
  br label %390

390:                                              ; preds = %386
  %391 = load i32, ptr %4, align 4, !tbaa !31
  %392 = add nsw i32 %391, 1
  store i32 %392, ptr %4, align 4, !tbaa !31
  br label %383, !llvm.loop !170

393:                                              ; preds = %383
  %394 = load ptr, ptr %2, align 8, !tbaa !8
  %395 = load i32, ptr %3, align 4, !tbaa !31
  call void @RCModelEstimator(ptr noundef %394, i32 noundef signext %395, ptr noundef @updateRCModel.m_rgRejected)
  %396 = load ptr, ptr %2, align 8, !tbaa !8
  %397 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %396, i32 0, i32 32
  %398 = load i32, ptr %397, align 4, !tbaa !75
  store i32 %398, ptr %3, align 4, !tbaa !31
  store i32 0, ptr %4, align 4, !tbaa !31
  br label %399

399:                                              ; preds = %452, %393
  %400 = load i32, ptr %4, align 4, !tbaa !31
  %401 = load i32, ptr %3, align 4, !tbaa !31
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %455

403:                                              ; preds = %399
  %404 = load ptr, ptr %2, align 8, !tbaa !8
  %405 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %404, i32 0, i32 25
  %406 = load double, ptr %405, align 8, !tbaa !110
  %407 = load ptr, ptr %2, align 8, !tbaa !8
  %408 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %407, i32 0, i32 21
  %409 = load i32, ptr %4, align 4, !tbaa !31
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [21 x double], ptr %408, i64 0, i64 %410
  %412 = load double, ptr %411, align 8, !tbaa !88
  %413 = fdiv double %406, %412
  %414 = load ptr, ptr %2, align 8, !tbaa !8
  %415 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %414, i32 0, i32 26
  %416 = load double, ptr %415, align 8, !tbaa !111
  %417 = load ptr, ptr %2, align 8, !tbaa !8
  %418 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %417, i32 0, i32 21
  %419 = load i32, ptr %4, align 4, !tbaa !31
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [21 x double], ptr %418, i64 0, i64 %420
  %422 = load double, ptr %421, align 8, !tbaa !88
  %423 = load ptr, ptr %2, align 8, !tbaa !8
  %424 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %423, i32 0, i32 21
  %425 = load i32, ptr %4, align 4, !tbaa !31
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [21 x double], ptr %424, i64 0, i64 %426
  %428 = load double, ptr %427, align 8, !tbaa !88
  %429 = fmul double %422, %428
  %430 = fdiv double %416, %429
  %431 = fadd double %413, %430
  %432 = load ptr, ptr %2, align 8, !tbaa !8
  %433 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %432, i32 0, i32 22
  %434 = load i32, ptr %4, align 4, !tbaa !31
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [21 x double], ptr %433, i64 0, i64 %435
  %437 = load double, ptr %436, align 8, !tbaa !88
  %438 = fsub double %431, %437
  %439 = load i32, ptr %4, align 4, !tbaa !31
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [21 x double], ptr @updateRCModel.error, i64 0, i64 %440
  store double %438, ptr %441, align 8, !tbaa !88
  %442 = load i32, ptr %4, align 4, !tbaa !31
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [21 x double], ptr @updateRCModel.error, i64 0, i64 %443
  %445 = load double, ptr %444, align 8, !tbaa !88
  %446 = load i32, ptr %4, align 4, !tbaa !31
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [21 x double], ptr @updateRCModel.error, i64 0, i64 %447
  %449 = load double, ptr %448, align 8, !tbaa !88
  %450 = load double, ptr %5, align 8, !tbaa !88
  %451 = call double @llvm.fmuladd.f64(double %445, double %449, double %450)
  store double %451, ptr %5, align 8, !tbaa !88
  br label %452

452:                                              ; preds = %403
  %453 = load i32, ptr %4, align 4, !tbaa !31
  %454 = add nsw i32 %453, 1
  store i32 %454, ptr %4, align 4, !tbaa !31
  br label %399, !llvm.loop !171

455:                                              ; preds = %399
  %456 = load i32, ptr %3, align 4, !tbaa !31
  %457 = icmp eq i32 %456, 2
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  br label %465

459:                                              ; preds = %455
  %460 = load double, ptr %5, align 8, !tbaa !88
  %461 = load i32, ptr %3, align 4, !tbaa !31
  %462 = sitofp i32 %461 to double
  %463 = fdiv double %460, %462
  %464 = call double @sqrt(double noundef %463) #10, !tbaa !31
  br label %465

465:                                              ; preds = %459, %458
  %466 = phi double [ 0.000000e+00, %458 ], [ %464, %459 ]
  store double %466, ptr %6, align 8, !tbaa !88
  store i32 0, ptr %4, align 4, !tbaa !31
  br label %467

467:                                              ; preds = %484, %465
  %468 = load i32, ptr %4, align 4, !tbaa !31
  %469 = load i32, ptr %3, align 4, !tbaa !31
  %470 = icmp slt i32 %468, %469
  br i1 %470, label %471, label %487

471:                                              ; preds = %467
  %472 = load i32, ptr %4, align 4, !tbaa !31
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [21 x double], ptr @updateRCModel.error, i64 0, i64 %473
  %475 = load double, ptr %474, align 8, !tbaa !88
  %476 = call double @llvm.fabs.f64(double %475)
  %477 = load double, ptr %6, align 8, !tbaa !88
  %478 = fcmp ogt double %476, %477
  br i1 %478, label %479, label %483

479:                                              ; preds = %471
  %480 = load i32, ptr %4, align 4, !tbaa !31
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [21 x i32], ptr @updateRCModel.m_rgRejected, i64 0, i64 %481
  store i32 1, ptr %482, align 4, !tbaa !31
  br label %483

483:                                              ; preds = %479, %471
  br label %484

484:                                              ; preds = %483
  %485 = load i32, ptr %4, align 4, !tbaa !31
  %486 = add nsw i32 %485, 1
  store i32 %486, ptr %4, align 4, !tbaa !31
  br label %467, !llvm.loop !172

487:                                              ; preds = %467
  store i32 0, ptr @updateRCModel.m_rgRejected, align 4, !tbaa !31
  %488 = load ptr, ptr %2, align 8, !tbaa !8
  %489 = load i32, ptr %3, align 4, !tbaa !31
  call void @RCModelEstimator(ptr noundef %488, i32 noundef signext %489, ptr noundef @updateRCModel.m_rgRejected)
  %490 = load i32, ptr %8, align 4, !tbaa !31
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %487
  %493 = load ptr, ptr %2, align 8, !tbaa !8
  call void @updateMADModel(ptr noundef %493)
  br label %519

494:                                              ; preds = %487
  %495 = load ptr, ptr @img, align 8, !tbaa !8
  %496 = getelementptr inbounds nuw %struct.ImageParameters, ptr %495, i32 0, i32 5
  %497 = load i32, ptr %496, align 4, !tbaa !102
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %504, label %499

499:                                              ; preds = %494
  %500 = load ptr, ptr @input, align 8, !tbaa !8
  %501 = getelementptr inbounds nuw %struct.InputParameters, ptr %500, i32 0, i32 162
  %502 = load i32, ptr %501, align 8, !tbaa !61
  %503 = icmp eq i32 %502, 1
  br i1 %503, label %504, label %518

504:                                              ; preds = %499, %494
  %505 = load ptr, ptr @img, align 8, !tbaa !8
  %506 = getelementptr inbounds nuw %struct.ImageParameters, ptr %505, i32 0, i32 0
  %507 = load i32, ptr %506, align 8, !tbaa !109
  %508 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %509 = sub nsw i32 %507, %508
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %518

511:                                              ; preds = %504
  %512 = load ptr, ptr %2, align 8, !tbaa !8
  %513 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %512, i32 0, i32 46
  %514 = load double, ptr %513, align 8, !tbaa !36
  %515 = load ptr, ptr %2, align 8, !tbaa !8
  %516 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %515, i32 0, i32 18
  %517 = getelementptr inbounds [21 x double], ptr %516, i64 0, i64 0
  store double %514, ptr %517, align 8, !tbaa !88
  br label %518

518:                                              ; preds = %511, %504, %499
  br label %519

519:                                              ; preds = %518, %492
  br label %520

520:                                              ; preds = %519, %21, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #10
  ret void
}

declare double @ComputeFrameMAD() #3

declare double @QP2Qstep(i32 noundef signext) #3

; Function Attrs: inlinehint nounwind
define internal signext i32 @imin(i32 noundef signext %0, i32 noundef signext %1) #9 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !31
  store i32 %1, ptr %4, align 4, !tbaa !31
  %5 = load i32, ptr %3, align 4, !tbaa !31
  %6 = load i32, ptr %4, align 4, !tbaa !31
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !31
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !31
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local void @RCModelEstimator(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  store ptr %2, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  %18 = load i32, ptr %5, align 4, !tbaa !31
  store i32 %18, ptr %7, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #10
  store double 0.000000e+00, ptr %9, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #10
  store double 0.000000e+00, ptr %10, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #10
  store double 0.000000e+00, ptr %11, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #10
  store double 0.000000e+00, ptr %12, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #10
  store double 0.000000e+00, ptr %13, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #10
  store double 0.000000e+00, ptr %14, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #10
  store double 0.000000e+00, ptr %15, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #10
  store i32 0, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, ptr %8, align 4, !tbaa !31
  %21 = load i32, ptr %5, align 4, !tbaa !31
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load ptr, ptr %6, align 8, !tbaa !8
  %25 = load i32, ptr %8, align 4, !tbaa !31
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !31
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, ptr %7, align 4, !tbaa !31
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %7, align 4, !tbaa !31
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %8, align 4, !tbaa !31
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %8, align 4, !tbaa !31
  br label %19, !llvm.loop !173

37:                                               ; preds = %19
  %38 = load ptr, ptr %4, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 26
  store double 0.000000e+00, ptr %39, align 8, !tbaa !111
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 25
  store double 0.000000e+00, ptr %41, align 8, !tbaa !110
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %42

42:                                               ; preds = %61, %37
  %43 = load i32, ptr %8, align 4, !tbaa !31
  %44 = load i32, ptr %5, align 4, !tbaa !31
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 8, !tbaa !8
  %48 = load i32, ptr %8, align 4, !tbaa !31
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %47, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !31
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %4, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %54, i32 0, i32 21
  %56 = load i32, ptr %8, align 4, !tbaa !31
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [21 x double], ptr %55, i64 0, i64 %57
  %59 = load double, ptr %58, align 8, !tbaa !88
  store double %59, ptr %9, align 8, !tbaa !88
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %8, align 4, !tbaa !31
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %8, align 4, !tbaa !31
  br label %42, !llvm.loop !174

64:                                               ; preds = %42
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, ptr %8, align 4, !tbaa !31
  %67 = load i32, ptr %5, align 4, !tbaa !31
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load ptr, ptr %4, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %70, i32 0, i32 21
  %72 = load i32, ptr %8, align 4, !tbaa !31
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [21 x double], ptr %71, i64 0, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !88
  %76 = load double, ptr %9, align 8, !tbaa !88
  %77 = fcmp une double %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load ptr, ptr %6, align 8, !tbaa !8
  %80 = load i32, ptr %8, align 4, !tbaa !31
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %79, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !31
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  store i32 1, ptr %17, align 4, !tbaa !31
  br label %86

86:                                               ; preds = %85, %78, %69
  %87 = load ptr, ptr %6, align 8, !tbaa !8
  %88 = load i32, ptr %8, align 4, !tbaa !31
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %87, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !31
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %4, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %94, i32 0, i32 21
  %96 = load i32, ptr %8, align 4, !tbaa !31
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [21 x double], ptr %95, i64 0, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !88
  %100 = load ptr, ptr %4, align 8, !tbaa !8
  %101 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %100, i32 0, i32 22
  %102 = load i32, ptr %8, align 4, !tbaa !31
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [21 x double], ptr %101, i64 0, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !88
  %106 = fmul double %99, %105
  %107 = load i32, ptr %7, align 4, !tbaa !31
  %108 = sitofp i32 %107 to double
  %109 = fdiv double %106, %108
  %110 = load ptr, ptr %4, align 8, !tbaa !8
  %111 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %110, i32 0, i32 25
  %112 = load double, ptr %111, align 8, !tbaa !110
  %113 = fadd double %112, %109
  store double %113, ptr %111, align 8, !tbaa !110
  br label %114

114:                                              ; preds = %93, %86
  br label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %8, align 4, !tbaa !31
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %8, align 4, !tbaa !31
  br label %65, !llvm.loop !175

118:                                              ; preds = %65
  %119 = load i32, ptr %7, align 4, !tbaa !31
  %120 = icmp sge i32 %119, 1
  br i1 %120, label %121, label %234

121:                                              ; preds = %118
  %122 = load i32, ptr %17, align 4, !tbaa !31
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %234

124:                                              ; preds = %121
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %125

125:                                              ; preds = %188, %124
  %126 = load i32, ptr %8, align 4, !tbaa !31
  %127 = load i32, ptr %5, align 4, !tbaa !31
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %191

129:                                              ; preds = %125
  %130 = load ptr, ptr %6, align 8, !tbaa !8
  %131 = load i32, ptr %8, align 4, !tbaa !31
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !31
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %187, label %136

136:                                              ; preds = %129
  %137 = load double, ptr %10, align 8, !tbaa !88
  %138 = fadd double %137, 1.000000e+00
  store double %138, ptr %10, align 8, !tbaa !88
  %139 = load ptr, ptr %4, align 8, !tbaa !8
  %140 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %139, i32 0, i32 21
  %141 = load i32, ptr %8, align 4, !tbaa !31
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [21 x double], ptr %140, i64 0, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !88
  %145 = fdiv double 1.000000e+00, %144
  %146 = load double, ptr %11, align 8, !tbaa !88
  %147 = fadd double %146, %145
  store double %147, ptr %11, align 8, !tbaa !88
  %148 = load double, ptr %11, align 8, !tbaa !88
  store double %148, ptr %12, align 8, !tbaa !88
  %149 = load ptr, ptr %4, align 8, !tbaa !8
  %150 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %149, i32 0, i32 21
  %151 = load i32, ptr %8, align 4, !tbaa !31
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [21 x double], ptr %150, i64 0, i64 %152
  %154 = load double, ptr %153, align 8, !tbaa !88
  %155 = load ptr, ptr %4, align 8, !tbaa !8
  %156 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %155, i32 0, i32 21
  %157 = load i32, ptr %8, align 4, !tbaa !31
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [21 x double], ptr %156, i64 0, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !88
  %161 = fmul double %154, %160
  %162 = fdiv double 1.000000e+00, %161
  %163 = load double, ptr %13, align 8, !tbaa !88
  %164 = fadd double %163, %162
  store double %164, ptr %13, align 8, !tbaa !88
  %165 = load ptr, ptr %4, align 8, !tbaa !8
  %166 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %165, i32 0, i32 21
  %167 = load i32, ptr %8, align 4, !tbaa !31
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [21 x double], ptr %166, i64 0, i64 %168
  %170 = load double, ptr %169, align 8, !tbaa !88
  %171 = load ptr, ptr %4, align 8, !tbaa !8
  %172 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %171, i32 0, i32 22
  %173 = load i32, ptr %8, align 4, !tbaa !31
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [21 x double], ptr %172, i64 0, i64 %174
  %176 = load double, ptr %175, align 8, !tbaa !88
  %177 = load double, ptr %14, align 8, !tbaa !88
  %178 = call double @llvm.fmuladd.f64(double %170, double %176, double %177)
  store double %178, ptr %14, align 8, !tbaa !88
  %179 = load ptr, ptr %4, align 8, !tbaa !8
  %180 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %179, i32 0, i32 22
  %181 = load i32, ptr %8, align 4, !tbaa !31
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [21 x double], ptr %180, i64 0, i64 %182
  %184 = load double, ptr %183, align 8, !tbaa !88
  %185 = load double, ptr %15, align 8, !tbaa !88
  %186 = fadd double %185, %184
  store double %186, ptr %15, align 8, !tbaa !88
  br label %187

187:                                              ; preds = %136, %129
  br label %188

188:                                              ; preds = %187
  %189 = load i32, ptr %8, align 4, !tbaa !31
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %8, align 4, !tbaa !31
  br label %125, !llvm.loop !176

191:                                              ; preds = %125
  %192 = load double, ptr %10, align 8, !tbaa !88
  %193 = load double, ptr %13, align 8, !tbaa !88
  %194 = load double, ptr %11, align 8, !tbaa !88
  %195 = load double, ptr %12, align 8, !tbaa !88
  %196 = fmul double %194, %195
  %197 = fneg double %196
  %198 = call double @llvm.fmuladd.f64(double %192, double %193, double %197)
  store double %198, ptr %16, align 8, !tbaa !88
  %199 = load double, ptr %16, align 8, !tbaa !88
  %200 = call double @llvm.fabs.f64(double %199)
  %201 = fcmp ogt double %200, 0x3EB0C6F7A0B5ED8D
  br i1 %201, label %202, label %225

202:                                              ; preds = %191
  %203 = load double, ptr %14, align 8, !tbaa !88
  %204 = load double, ptr %13, align 8, !tbaa !88
  %205 = load double, ptr %15, align 8, !tbaa !88
  %206 = load double, ptr %11, align 8, !tbaa !88
  %207 = fmul double %205, %206
  %208 = fneg double %207
  %209 = call double @llvm.fmuladd.f64(double %203, double %204, double %208)
  %210 = load double, ptr %16, align 8, !tbaa !88
  %211 = fdiv double %209, %210
  %212 = load ptr, ptr %4, align 8, !tbaa !8
  %213 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %212, i32 0, i32 25
  store double %211, ptr %213, align 8, !tbaa !110
  %214 = load double, ptr %15, align 8, !tbaa !88
  %215 = load double, ptr %10, align 8, !tbaa !88
  %216 = load double, ptr %14, align 8, !tbaa !88
  %217 = load double, ptr %12, align 8, !tbaa !88
  %218 = fmul double %216, %217
  %219 = fneg double %218
  %220 = call double @llvm.fmuladd.f64(double %214, double %215, double %219)
  %221 = load double, ptr %16, align 8, !tbaa !88
  %222 = fdiv double %220, %221
  %223 = load ptr, ptr %4, align 8, !tbaa !8
  %224 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %223, i32 0, i32 26
  store double %222, ptr %224, align 8, !tbaa !111
  br label %233

225:                                              ; preds = %191
  %226 = load double, ptr %14, align 8, !tbaa !88
  %227 = load double, ptr %10, align 8, !tbaa !88
  %228 = fdiv double %226, %227
  %229 = load ptr, ptr %4, align 8, !tbaa !8
  %230 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %229, i32 0, i32 25
  store double %228, ptr %230, align 8, !tbaa !110
  %231 = load ptr, ptr %4, align 8, !tbaa !8
  %232 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %231, i32 0, i32 26
  store double 0.000000e+00, ptr %232, align 8, !tbaa !111
  br label %233

233:                                              ; preds = %225, %202
  br label %234

234:                                              ; preds = %233, %121, %118
  %235 = load ptr, ptr @img, align 8, !tbaa !8
  %236 = getelementptr inbounds nuw %struct.ImageParameters, ptr %235, i32 0, i32 5
  %237 = load i32, ptr %236, align 4, !tbaa !102
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr @input, align 8, !tbaa !8
  %241 = getelementptr inbounds nuw %struct.InputParameters, ptr %240, i32 0, i32 162
  %242 = load i32, ptr %241, align 8, !tbaa !61
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %262

244:                                              ; preds = %239, %234
  %245 = load ptr, ptr @img, align 8, !tbaa !8
  %246 = getelementptr inbounds nuw %struct.ImageParameters, ptr %245, i32 0, i32 0
  %247 = load i32, ptr %246, align 8, !tbaa !109
  %248 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %249 = sub nsw i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %262

251:                                              ; preds = %244
  %252 = load ptr, ptr %4, align 8, !tbaa !8
  %253 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %252, i32 0, i32 25
  %254 = load double, ptr %253, align 8, !tbaa !110
  %255 = load ptr, ptr %4, align 8, !tbaa !8
  %256 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %255, i32 0, i32 27
  store double %254, ptr %256, align 8, !tbaa !84
  %257 = load ptr, ptr %4, align 8, !tbaa !8
  %258 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %257, i32 0, i32 26
  %259 = load double, ptr %258, align 8, !tbaa !111
  %260 = load ptr, ptr %4, align 8, !tbaa !8
  %261 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %260, i32 0, i32 28
  store double %259, ptr %261, align 8, !tbaa !85
  br label %262

262:                                              ; preds = %251, %244, %239
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nounwind
define dso_local void @updateMADModel(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #10
  store double 0.000000e+00, ptr %5, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  %8 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_generic, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !78
  store i32 %10, ptr %7, align 4, !tbaa !31
  %11 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw %struct.rc_generic, ptr %11, i32 0, i32 9
  %13 = load i32, ptr %12, align 4, !tbaa !78
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %329

15:                                               ; preds = %1
  %16 = load ptr, ptr @img, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw %struct.ImageParameters, ptr %16, i32 0, i32 132
  %18 = load i32, ptr %17, align 4, !tbaa !101
  %19 = load ptr, ptr @img, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw %struct.ImageParameters, ptr %19, i32 0, i32 120
  %21 = load i32, ptr %20, align 8, !tbaa !9
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_generic, ptr %24, i32 0, i32 9
  %26 = load i32, ptr %25, align 4, !tbaa !78
  store i32 %26, ptr %7, align 4, !tbaa !31
  br label %39

27:                                               ; preds = %15
  %28 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_generic, ptr %28, i32 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !78
  %31 = load ptr, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %31, i32 0, i32 44
  %33 = load i32, ptr %32, align 4, !tbaa !71
  %34 = mul nsw i32 %30, %33
  %35 = load ptr, ptr %2, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 45
  %37 = load i32, ptr %36, align 8, !tbaa !167
  %38 = add nsw i32 %34, %37
  store i32 %38, ptr %7, align 4, !tbaa !31
  br label %39

39:                                               ; preds = %27, %23
  store i32 19, ptr %4, align 4, !tbaa !31
  br label %40

40:                                               ; preds = %79, %39
  %41 = load i32, ptr %4, align 4, !tbaa !31
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %82

43:                                               ; preds = %40
  %44 = load ptr, ptr %2, align 8, !tbaa !8
  %45 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %44, i32 0, i32 18
  %46 = load i32, ptr %4, align 4, !tbaa !31
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [21 x double], ptr %45, i64 0, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !88
  %51 = load ptr, ptr %2, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %51, i32 0, i32 18
  %53 = load i32, ptr %4, align 4, !tbaa !31
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [21 x double], ptr %52, i64 0, i64 %54
  store double %50, ptr %55, align 8, !tbaa !88
  %56 = load ptr, ptr %2, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 18
  %58 = load i32, ptr %4, align 4, !tbaa !31
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [21 x double], ptr %57, i64 0, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !88
  %62 = load ptr, ptr %2, align 8, !tbaa !8
  %63 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %62, i32 0, i32 19
  %64 = load i32, ptr %4, align 4, !tbaa !31
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [21 x double], ptr %63, i64 0, i64 %65
  store double %61, ptr %66, align 8, !tbaa !88
  %67 = load ptr, ptr %2, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %67, i32 0, i32 20
  %69 = load i32, ptr %4, align 4, !tbaa !31
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [21 x double], ptr %68, i64 0, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !88
  %74 = load ptr, ptr %2, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %74, i32 0, i32 20
  %76 = load i32, ptr %4, align 4, !tbaa !31
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [21 x double], ptr %75, i64 0, i64 %77
  store double %73, ptr %78, align 8, !tbaa !88
  br label %79

79:                                               ; preds = %43
  %80 = load i32, ptr %4, align 4, !tbaa !31
  %81 = add nsw i32 %80, -1
  store i32 %81, ptr %4, align 4, !tbaa !31
  br label %40, !llvm.loop !177

82:                                               ; preds = %40
  %83 = load ptr, ptr %2, align 8, !tbaa !8
  %84 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %83, i32 0, i32 46
  %85 = load double, ptr %84, align 8, !tbaa !36
  %86 = load ptr, ptr %2, align 8, !tbaa !8
  %87 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %86, i32 0, i32 18
  %88 = getelementptr inbounds [21 x double], ptr %87, i64 0, i64 0
  store double %85, ptr %88, align 8, !tbaa !88
  %89 = load ptr, ptr %2, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %89, i32 0, i32 18
  %91 = getelementptr inbounds [21 x double], ptr %90, i64 0, i64 0
  %92 = load double, ptr %91, align 8, !tbaa !88
  %93 = load ptr, ptr %2, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %93, i32 0, i32 19
  %95 = getelementptr inbounds [21 x double], ptr %94, i64 0, i64 0
  store double %92, ptr %95, align 8, !tbaa !88
  %96 = load ptr, ptr @img, align 8, !tbaa !8
  %97 = getelementptr inbounds nuw %struct.ImageParameters, ptr %96, i32 0, i32 132
  %98 = load i32, ptr %97, align 4, !tbaa !101
  %99 = load ptr, ptr @img, align 8, !tbaa !8
  %100 = getelementptr inbounds nuw %struct.ImageParameters, ptr %99, i32 0, i32 120
  %101 = load i32, ptr %100, align 8, !tbaa !9
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %82
  %104 = load ptr, ptr %2, align 8, !tbaa !8
  %105 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %104, i32 0, i32 19
  %106 = getelementptr inbounds [21 x double], ptr %105, i64 0, i64 1
  %107 = load double, ptr %106, align 8, !tbaa !88
  %108 = load ptr, ptr %2, align 8, !tbaa !8
  %109 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %108, i32 0, i32 20
  %110 = getelementptr inbounds [21 x double], ptr %109, i64 0, i64 0
  store double %107, ptr %110, align 8, !tbaa !88
  br label %163

111:                                              ; preds = %82
  %112 = load ptr, ptr @input, align 8, !tbaa !8
  %113 = getelementptr inbounds nuw %struct.InputParameters, ptr %112, i32 0, i32 121
  %114 = load i32, ptr %113, align 8, !tbaa !103
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr @input, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.InputParameters, ptr %117, i32 0, i32 122
  %119 = load i32, ptr %118, align 4, !tbaa !104
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %144

121:                                              ; preds = %116, %111
  %122 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %123 = getelementptr inbounds nuw %struct.rc_generic, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !97
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %144

126:                                              ; preds = %121
  %127 = load ptr, ptr %2, align 8, !tbaa !8
  %128 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %127, i32 0, i32 62
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = load ptr, ptr %2, align 8, !tbaa !8
  %131 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %130, i32 0, i32 44
  %132 = load i32, ptr %131, align 4, !tbaa !71
  %133 = sub nsw i32 %132, 1
  %134 = load ptr, ptr %2, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %134, i32 0, i32 39
  %136 = load i32, ptr %135, align 8, !tbaa !117
  %137 = sub nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds double, ptr %129, i64 %138
  %140 = load double, ptr %139, align 8, !tbaa !88
  %141 = load ptr, ptr %2, align 8, !tbaa !8
  %142 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %141, i32 0, i32 20
  %143 = getelementptr inbounds [21 x double], ptr %142, i64 0, i64 0
  store double %140, ptr %143, align 8, !tbaa !88
  br label %162

144:                                              ; preds = %121, %116
  %145 = load ptr, ptr %2, align 8, !tbaa !8
  %146 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %145, i32 0, i32 59
  %147 = load ptr, ptr %146, align 8, !tbaa !56
  %148 = load ptr, ptr %2, align 8, !tbaa !8
  %149 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %148, i32 0, i32 44
  %150 = load i32, ptr %149, align 4, !tbaa !71
  %151 = sub nsw i32 %150, 1
  %152 = load ptr, ptr %2, align 8, !tbaa !8
  %153 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %152, i32 0, i32 39
  %154 = load i32, ptr %153, align 8, !tbaa !117
  %155 = sub nsw i32 %151, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds double, ptr %147, i64 %156
  %158 = load double, ptr %157, align 8, !tbaa !88
  %159 = load ptr, ptr %2, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %159, i32 0, i32 20
  %161 = getelementptr inbounds [21 x double], ptr %160, i64 0, i64 0
  store double %158, ptr %161, align 8, !tbaa !88
  br label %162

162:                                              ; preds = %144, %126
  br label %163

163:                                              ; preds = %162, %103
  %164 = load ptr, ptr %2, align 8, !tbaa !8
  %165 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %164, i32 0, i32 16
  %166 = load double, ptr %165, align 8, !tbaa !86
  %167 = load ptr, ptr %2, align 8, !tbaa !8
  %168 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %167, i32 0, i32 14
  store double %166, ptr %168, align 8, !tbaa !112
  %169 = load ptr, ptr %2, align 8, !tbaa !8
  %170 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %169, i32 0, i32 17
  %171 = load double, ptr %170, align 8, !tbaa !87
  %172 = load ptr, ptr %2, align 8, !tbaa !8
  %173 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %172, i32 0, i32 15
  store double %171, ptr %173, align 8, !tbaa !113
  %174 = load ptr, ptr %2, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %174, i32 0, i32 46
  %176 = load double, ptr %175, align 8, !tbaa !36
  %177 = load ptr, ptr %2, align 8, !tbaa !8
  %178 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %177, i32 0, i32 49
  %179 = load double, ptr %178, align 8, !tbaa !32
  %180 = fcmp ogt double %176, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %163
  %182 = load ptr, ptr %2, align 8, !tbaa !8
  %183 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %182, i32 0, i32 49
  %184 = load double, ptr %183, align 8, !tbaa !32
  %185 = fmul double 2.000000e+01, %184
  %186 = load ptr, ptr %2, align 8, !tbaa !8
  %187 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %186, i32 0, i32 46
  %188 = load double, ptr %187, align 8, !tbaa !36
  %189 = fdiv double %185, %188
  %190 = fptosi double %189 to i32
  br label %201

191:                                              ; preds = %163
  %192 = load ptr, ptr %2, align 8, !tbaa !8
  %193 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %192, i32 0, i32 46
  %194 = load double, ptr %193, align 8, !tbaa !36
  %195 = fmul double 2.000000e+01, %194
  %196 = load ptr, ptr %2, align 8, !tbaa !8
  %197 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %196, i32 0, i32 49
  %198 = load double, ptr %197, align 8, !tbaa !32
  %199 = fdiv double %195, %198
  %200 = fptosi double %199 to i32
  br label %201

201:                                              ; preds = %191, %181
  %202 = phi i32 [ %190, %181 ], [ %200, %191 ]
  store i32 %202, ptr %3, align 4, !tbaa !31
  %203 = load i32, ptr %7, align 4, !tbaa !31
  %204 = sub nsw i32 %203, 1
  %205 = load i32, ptr %3, align 4, !tbaa !31
  %206 = call signext i32 @iClip3(i32 noundef signext 1, i32 noundef signext %204, i32 noundef signext %205)
  store i32 %206, ptr %3, align 4, !tbaa !31
  %207 = load i32, ptr %3, align 4, !tbaa !31
  %208 = load ptr, ptr %2, align 8, !tbaa !8
  %209 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %208, i32 0, i32 31
  %210 = load i32, ptr %209, align 8, !tbaa !76
  %211 = add nsw i32 %210, 1
  %212 = call signext i32 @imin(i32 noundef signext 20, i32 noundef signext %211)
  %213 = call signext i32 @imin(i32 noundef signext %207, i32 noundef signext %212)
  store i32 %213, ptr %3, align 4, !tbaa !31
  %214 = load i32, ptr %3, align 4, !tbaa !31
  %215 = load ptr, ptr %2, align 8, !tbaa !8
  %216 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %215, i32 0, i32 31
  store i32 %214, ptr %216, align 8, !tbaa !76
  store i32 0, ptr %4, align 4, !tbaa !31
  br label %217

217:                                              ; preds = %224, %201
  %218 = load i32, ptr %4, align 4, !tbaa !31
  %219 = icmp slt i32 %218, 20
  br i1 %219, label %220, label %227

220:                                              ; preds = %217
  %221 = load i32, ptr %4, align 4, !tbaa !31
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [21 x i32], ptr @updateMADModel.PictureRejected, i64 0, i64 %222
  store i32 0, ptr %223, align 4, !tbaa !31
  br label %224

224:                                              ; preds = %220
  %225 = load i32, ptr %4, align 4, !tbaa !31
  %226 = add nsw i32 %225, 1
  store i32 %226, ptr %4, align 4, !tbaa !31
  br label %217, !llvm.loop !178

227:                                              ; preds = %217
  %228 = load ptr, ptr @img, align 8, !tbaa !8
  %229 = getelementptr inbounds nuw %struct.ImageParameters, ptr %228, i32 0, i32 5
  %230 = load i32, ptr %229, align 4, !tbaa !102
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %237, label %232

232:                                              ; preds = %227
  %233 = load ptr, ptr @input, align 8, !tbaa !8
  %234 = getelementptr inbounds nuw %struct.InputParameters, ptr %233, i32 0, i32 162
  %235 = load i32, ptr %234, align 8, !tbaa !61
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %250

237:                                              ; preds = %232, %227
  %238 = load ptr, ptr @img, align 8, !tbaa !8
  %239 = getelementptr inbounds nuw %struct.ImageParameters, ptr %238, i32 0, i32 0
  %240 = load i32, ptr %239, align 8, !tbaa !109
  %241 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %242 = sub nsw i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %237
  %245 = load ptr, ptr %2, align 8, !tbaa !8
  %246 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %245, i32 0, i32 46
  %247 = load double, ptr %246, align 8, !tbaa !36
  %248 = load ptr, ptr %2, align 8, !tbaa !8
  %249 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %248, i32 0, i32 49
  store double %247, ptr %249, align 8, !tbaa !32
  br label %250

250:                                              ; preds = %244, %237, %232
  %251 = load ptr, ptr %2, align 8, !tbaa !8
  %252 = load i32, ptr %3, align 4, !tbaa !31
  call void @MADModelEstimator(ptr noundef %251, i32 noundef signext %252, ptr noundef @updateMADModel.PictureRejected)
  store i32 0, ptr %4, align 4, !tbaa !31
  br label %253

253:                                              ; preds = %291, %250
  %254 = load i32, ptr %4, align 4, !tbaa !31
  %255 = load i32, ptr %3, align 4, !tbaa !31
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %294

257:                                              ; preds = %253
  %258 = load ptr, ptr %2, align 8, !tbaa !8
  %259 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %258, i32 0, i32 14
  %260 = load double, ptr %259, align 8, !tbaa !112
  %261 = load ptr, ptr %2, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %261, i32 0, i32 20
  %263 = load i32, ptr %4, align 4, !tbaa !31
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [21 x double], ptr %262, i64 0, i64 %264
  %266 = load double, ptr %265, align 8, !tbaa !88
  %267 = load ptr, ptr %2, align 8, !tbaa !8
  %268 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %267, i32 0, i32 15
  %269 = load double, ptr %268, align 8, !tbaa !113
  %270 = call double @llvm.fmuladd.f64(double %260, double %266, double %269)
  %271 = load ptr, ptr %2, align 8, !tbaa !8
  %272 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %271, i32 0, i32 19
  %273 = load i32, ptr %4, align 4, !tbaa !31
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [21 x double], ptr %272, i64 0, i64 %274
  %276 = load double, ptr %275, align 8, !tbaa !88
  %277 = fsub double %270, %276
  %278 = load i32, ptr %4, align 4, !tbaa !31
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [21 x double], ptr @updateMADModel.error, i64 0, i64 %279
  store double %277, ptr %280, align 8, !tbaa !88
  %281 = load i32, ptr %4, align 4, !tbaa !31
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [21 x double], ptr @updateMADModel.error, i64 0, i64 %282
  %284 = load double, ptr %283, align 8, !tbaa !88
  %285 = load i32, ptr %4, align 4, !tbaa !31
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [21 x double], ptr @updateMADModel.error, i64 0, i64 %286
  %288 = load double, ptr %287, align 8, !tbaa !88
  %289 = load double, ptr %5, align 8, !tbaa !88
  %290 = call double @llvm.fmuladd.f64(double %284, double %288, double %289)
  store double %290, ptr %5, align 8, !tbaa !88
  br label %291

291:                                              ; preds = %257
  %292 = load i32, ptr %4, align 4, !tbaa !31
  %293 = add nsw i32 %292, 1
  store i32 %293, ptr %4, align 4, !tbaa !31
  br label %253, !llvm.loop !179

294:                                              ; preds = %253
  %295 = load i32, ptr %3, align 4, !tbaa !31
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  br label %304

298:                                              ; preds = %294
  %299 = load double, ptr %5, align 8, !tbaa !88
  %300 = load i32, ptr %3, align 4, !tbaa !31
  %301 = sitofp i32 %300 to double
  %302 = fdiv double %299, %301
  %303 = call double @sqrt(double noundef %302) #10, !tbaa !31
  br label %304

304:                                              ; preds = %298, %297
  %305 = phi double [ 0.000000e+00, %297 ], [ %303, %298 ]
  store double %305, ptr %6, align 8, !tbaa !88
  store i32 0, ptr %4, align 4, !tbaa !31
  br label %306

306:                                              ; preds = %323, %304
  %307 = load i32, ptr %4, align 4, !tbaa !31
  %308 = load i32, ptr %3, align 4, !tbaa !31
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %326

310:                                              ; preds = %306
  %311 = load i32, ptr %4, align 4, !tbaa !31
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [21 x double], ptr @updateMADModel.error, i64 0, i64 %312
  %314 = load double, ptr %313, align 8, !tbaa !88
  %315 = call double @llvm.fabs.f64(double %314)
  %316 = load double, ptr %6, align 8, !tbaa !88
  %317 = fcmp ogt double %315, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %310
  %319 = load i32, ptr %4, align 4, !tbaa !31
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [21 x i32], ptr @updateMADModel.PictureRejected, i64 0, i64 %320
  store i32 1, ptr %321, align 4, !tbaa !31
  br label %322

322:                                              ; preds = %318, %310
  br label %323

323:                                              ; preds = %322
  %324 = load i32, ptr %4, align 4, !tbaa !31
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %4, align 4, !tbaa !31
  br label %306, !llvm.loop !180

326:                                              ; preds = %306
  store i32 0, ptr @updateMADModel.PictureRejected, align 4, !tbaa !31
  %327 = load ptr, ptr %2, align 8, !tbaa !8
  %328 = load i32, ptr %3, align 4, !tbaa !31
  call void @MADModelEstimator(ptr noundef %327, i32 noundef signext %328, ptr noundef @updateMADModel.PictureRejected)
  br label %329

329:                                              ; preds = %326, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #10
  ret void
}

; Function Attrs: nounwind
define dso_local void @MADModelEstimator(ptr noundef %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  store ptr %2, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  %18 = load i32, ptr %5, align 4, !tbaa !31
  store i32 %18, ptr %7, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #10
  store double 0.000000e+00, ptr %9, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #10
  store double 0.000000e+00, ptr %10, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #10
  store double 0.000000e+00, ptr %11, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #10
  store double 0.000000e+00, ptr %12, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #10
  store double 0.000000e+00, ptr %13, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #10
  store double 0.000000e+00, ptr %14, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #10
  store double 0.000000e+00, ptr %15, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #10
  store i32 0, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, ptr %8, align 4, !tbaa !31
  %21 = load i32, ptr %5, align 4, !tbaa !31
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load ptr, ptr %6, align 8, !tbaa !8
  %25 = load i32, ptr %8, align 4, !tbaa !31
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !31
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, ptr %7, align 4, !tbaa !31
  %32 = add nsw i32 %31, -1
  store i32 %32, ptr %7, align 4, !tbaa !31
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, ptr %8, align 4, !tbaa !31
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %8, align 4, !tbaa !31
  br label %19, !llvm.loop !181

37:                                               ; preds = %19
  %38 = load ptr, ptr %4, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 15
  store double 0.000000e+00, ptr %39, align 8, !tbaa !113
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 14
  store double 0.000000e+00, ptr %41, align 8, !tbaa !112
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %42

42:                                               ; preds = %61, %37
  %43 = load i32, ptr %8, align 4, !tbaa !31
  %44 = load i32, ptr %5, align 4, !tbaa !31
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load ptr, ptr %6, align 8, !tbaa !8
  %48 = load i32, ptr %8, align 4, !tbaa !31
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %47, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !31
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr %4, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %54, i32 0, i32 19
  %56 = load i32, ptr %8, align 4, !tbaa !31
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [21 x double], ptr %55, i64 0, i64 %57
  %59 = load double, ptr %58, align 8, !tbaa !88
  store double %59, ptr %9, align 8, !tbaa !88
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %8, align 4, !tbaa !31
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %8, align 4, !tbaa !31
  br label %42, !llvm.loop !182

64:                                               ; preds = %42
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %65

65:                                               ; preds = %115, %64
  %66 = load i32, ptr %8, align 4, !tbaa !31
  %67 = load i32, ptr %5, align 4, !tbaa !31
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %118

69:                                               ; preds = %65
  %70 = load ptr, ptr %4, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %70, i32 0, i32 19
  %72 = load i32, ptr %8, align 4, !tbaa !31
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [21 x double], ptr %71, i64 0, i64 %73
  %75 = load double, ptr %74, align 8, !tbaa !88
  %76 = load double, ptr %9, align 8, !tbaa !88
  %77 = fcmp une double %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load ptr, ptr %6, align 8, !tbaa !8
  %80 = load i32, ptr %8, align 4, !tbaa !31
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, ptr %79, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !31
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  store i32 1, ptr %17, align 4, !tbaa !31
  br label %86

86:                                               ; preds = %85, %78, %69
  %87 = load ptr, ptr %6, align 8, !tbaa !8
  %88 = load i32, ptr %8, align 4, !tbaa !31
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %87, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !31
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %86
  %94 = load ptr, ptr %4, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %94, i32 0, i32 19
  %96 = load i32, ptr %8, align 4, !tbaa !31
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [21 x double], ptr %95, i64 0, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !88
  %100 = load ptr, ptr %4, align 8, !tbaa !8
  %101 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %100, i32 0, i32 20
  %102 = load i32, ptr %8, align 4, !tbaa !31
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [21 x double], ptr %101, i64 0, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !88
  %106 = load i32, ptr %7, align 4, !tbaa !31
  %107 = sitofp i32 %106 to double
  %108 = fmul double %105, %107
  %109 = fdiv double %99, %108
  %110 = load ptr, ptr %4, align 8, !tbaa !8
  %111 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %110, i32 0, i32 14
  %112 = load double, ptr %111, align 8, !tbaa !112
  %113 = fadd double %112, %109
  store double %113, ptr %111, align 8, !tbaa !112
  br label %114

114:                                              ; preds = %93, %86
  br label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %8, align 4, !tbaa !31
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %8, align 4, !tbaa !31
  br label %65, !llvm.loop !183

118:                                              ; preds = %65
  %119 = load i32, ptr %7, align 4, !tbaa !31
  %120 = icmp sge i32 %119, 1
  br i1 %120, label %121, label %231

121:                                              ; preds = %118
  %122 = load i32, ptr %17, align 4, !tbaa !31
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %231

124:                                              ; preds = %121
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %125

125:                                              ; preds = %185, %124
  %126 = load i32, ptr %8, align 4, !tbaa !31
  %127 = load i32, ptr %5, align 4, !tbaa !31
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %188

129:                                              ; preds = %125
  %130 = load ptr, ptr %6, align 8, !tbaa !8
  %131 = load i32, ptr %8, align 4, !tbaa !31
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !31
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %184, label %136

136:                                              ; preds = %129
  %137 = load double, ptr %10, align 8, !tbaa !88
  %138 = fadd double %137, 1.000000e+00
  store double %138, ptr %10, align 8, !tbaa !88
  %139 = load ptr, ptr %4, align 8, !tbaa !8
  %140 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %139, i32 0, i32 20
  %141 = load i32, ptr %8, align 4, !tbaa !31
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [21 x double], ptr %140, i64 0, i64 %142
  %144 = load double, ptr %143, align 8, !tbaa !88
  %145 = load double, ptr %11, align 8, !tbaa !88
  %146 = fadd double %145, %144
  store double %146, ptr %11, align 8, !tbaa !88
  %147 = load double, ptr %11, align 8, !tbaa !88
  store double %147, ptr %12, align 8, !tbaa !88
  %148 = load ptr, ptr %4, align 8, !tbaa !8
  %149 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %148, i32 0, i32 20
  %150 = load i32, ptr %8, align 4, !tbaa !31
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [21 x double], ptr %149, i64 0, i64 %151
  %153 = load double, ptr %152, align 8, !tbaa !88
  %154 = load ptr, ptr %4, align 8, !tbaa !8
  %155 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %154, i32 0, i32 20
  %156 = load i32, ptr %8, align 4, !tbaa !31
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [21 x double], ptr %155, i64 0, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !88
  %160 = load double, ptr %13, align 8, !tbaa !88
  %161 = call double @llvm.fmuladd.f64(double %153, double %159, double %160)
  store double %161, ptr %13, align 8, !tbaa !88
  %162 = load ptr, ptr %4, align 8, !tbaa !8
  %163 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %162, i32 0, i32 19
  %164 = load i32, ptr %8, align 4, !tbaa !31
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [21 x double], ptr %163, i64 0, i64 %165
  %167 = load double, ptr %166, align 8, !tbaa !88
  %168 = load double, ptr %14, align 8, !tbaa !88
  %169 = fadd double %168, %167
  store double %169, ptr %14, align 8, !tbaa !88
  %170 = load ptr, ptr %4, align 8, !tbaa !8
  %171 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %170, i32 0, i32 19
  %172 = load i32, ptr %8, align 4, !tbaa !31
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [21 x double], ptr %171, i64 0, i64 %173
  %175 = load double, ptr %174, align 8, !tbaa !88
  %176 = load ptr, ptr %4, align 8, !tbaa !8
  %177 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %176, i32 0, i32 20
  %178 = load i32, ptr %8, align 4, !tbaa !31
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [21 x double], ptr %177, i64 0, i64 %179
  %181 = load double, ptr %180, align 8, !tbaa !88
  %182 = load double, ptr %15, align 8, !tbaa !88
  %183 = call double @llvm.fmuladd.f64(double %175, double %181, double %182)
  store double %183, ptr %15, align 8, !tbaa !88
  br label %184

184:                                              ; preds = %136, %129
  br label %185

185:                                              ; preds = %184
  %186 = load i32, ptr %8, align 4, !tbaa !31
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %8, align 4, !tbaa !31
  br label %125, !llvm.loop !184

188:                                              ; preds = %125
  %189 = load double, ptr %10, align 8, !tbaa !88
  %190 = load double, ptr %13, align 8, !tbaa !88
  %191 = load double, ptr %11, align 8, !tbaa !88
  %192 = load double, ptr %12, align 8, !tbaa !88
  %193 = fmul double %191, %192
  %194 = fneg double %193
  %195 = call double @llvm.fmuladd.f64(double %189, double %190, double %194)
  store double %195, ptr %16, align 8, !tbaa !88
  %196 = load double, ptr %16, align 8, !tbaa !88
  %197 = call double @llvm.fabs.f64(double %196)
  %198 = fcmp ogt double %197, 0x3EB0C6F7A0B5ED8D
  br i1 %198, label %199, label %222

199:                                              ; preds = %188
  %200 = load double, ptr %14, align 8, !tbaa !88
  %201 = load double, ptr %13, align 8, !tbaa !88
  %202 = load double, ptr %15, align 8, !tbaa !88
  %203 = load double, ptr %11, align 8, !tbaa !88
  %204 = fmul double %202, %203
  %205 = fneg double %204
  %206 = call double @llvm.fmuladd.f64(double %200, double %201, double %205)
  %207 = load double, ptr %16, align 8, !tbaa !88
  %208 = fdiv double %206, %207
  %209 = load ptr, ptr %4, align 8, !tbaa !8
  %210 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %209, i32 0, i32 15
  store double %208, ptr %210, align 8, !tbaa !113
  %211 = load double, ptr %15, align 8, !tbaa !88
  %212 = load double, ptr %10, align 8, !tbaa !88
  %213 = load double, ptr %14, align 8, !tbaa !88
  %214 = load double, ptr %12, align 8, !tbaa !88
  %215 = fmul double %213, %214
  %216 = fneg double %215
  %217 = call double @llvm.fmuladd.f64(double %211, double %212, double %216)
  %218 = load double, ptr %16, align 8, !tbaa !88
  %219 = fdiv double %217, %218
  %220 = load ptr, ptr %4, align 8, !tbaa !8
  %221 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %220, i32 0, i32 14
  store double %219, ptr %221, align 8, !tbaa !112
  br label %230

222:                                              ; preds = %188
  %223 = load double, ptr %14, align 8, !tbaa !88
  %224 = load double, ptr %11, align 8, !tbaa !88
  %225 = fdiv double %223, %224
  %226 = load ptr, ptr %4, align 8, !tbaa !8
  %227 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %226, i32 0, i32 14
  store double %225, ptr %227, align 8, !tbaa !112
  %228 = load ptr, ptr %4, align 8, !tbaa !8
  %229 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %228, i32 0, i32 15
  store double 0.000000e+00, ptr %229, align 8, !tbaa !113
  br label %230

230:                                              ; preds = %222, %199
  br label %231

231:                                              ; preds = %230, %121, %118
  %232 = load ptr, ptr @img, align 8, !tbaa !8
  %233 = getelementptr inbounds nuw %struct.ImageParameters, ptr %232, i32 0, i32 5
  %234 = load i32, ptr %233, align 4, !tbaa !102
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load ptr, ptr @input, align 8, !tbaa !8
  %238 = getelementptr inbounds nuw %struct.InputParameters, ptr %237, i32 0, i32 162
  %239 = load i32, ptr %238, align 8, !tbaa !61
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %259

241:                                              ; preds = %236, %231
  %242 = load ptr, ptr @img, align 8, !tbaa !8
  %243 = getelementptr inbounds nuw %struct.ImageParameters, ptr %242, i32 0, i32 0
  %244 = load i32, ptr %243, align 8, !tbaa !109
  %245 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !31
  %246 = sub nsw i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %241
  %249 = load ptr, ptr %4, align 8, !tbaa !8
  %250 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %249, i32 0, i32 14
  %251 = load double, ptr %250, align 8, !tbaa !112
  %252 = load ptr, ptr %4, align 8, !tbaa !8
  %253 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %252, i32 0, i32 16
  store double %251, ptr %253, align 8, !tbaa !86
  %254 = load ptr, ptr %4, align 8, !tbaa !8
  %255 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %254, i32 0, i32 15
  %256 = load double, ptr %255, align 8, !tbaa !113
  %257 = load ptr, ptr %4, align 8, !tbaa !8
  %258 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %257, i32 0, i32 17
  store double %256, ptr %258, align 8, !tbaa !87
  br label %259

259:                                              ; preds = %248, %241, %236
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateQPInterlace(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw %struct.rc_generic, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !97
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %1
  %8 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_generic, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !150
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %13, i32 0, i32 36
  %15 = load i32, ptr %14, align 4, !tbaa !106
  %16 = load ptr, ptr %2, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %16, i32 0, i32 35
  store i32 %15, ptr %17, align 8, !tbaa !105
  %18 = load ptr, ptr %2, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 56
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = load ptr, ptr %2, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 36
  store i32 %20, ptr %22, align 4, !tbaa !106
  br label %34

23:                                               ; preds = %7
  %24 = load ptr, ptr %2, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %24, i32 0, i32 36
  %26 = load i32, ptr %25, align 4, !tbaa !106
  %27 = load ptr, ptr %2, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %27, i32 0, i32 35
  store i32 %26, ptr %28, align 8, !tbaa !105
  %29 = load ptr, ptr %2, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %29, i32 0, i32 55
  %31 = load i32, ptr %30, align 8, !tbaa !49
  %32 = load ptr, ptr %2, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %32, i32 0, i32 36
  store i32 %31, ptr %33, align 4, !tbaa !106
  br label %34

34:                                               ; preds = %23, %12
  br label %35

35:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateQPNonPicAFF(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr @active_sps, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %3, i32 0, i32 25
  %5 = load i32, ptr %4, align 4, !tbaa !185
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 33
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw %struct.rc_generic, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !151
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %12, align 4, !tbaa !151
  %15 = load ptr, ptr %2, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %15, i32 0, i32 36
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = load ptr, ptr %2, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 35
  store i32 %17, ptr %19, align 8, !tbaa !105
  %20 = load ptr, ptr %2, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %20, i32 0, i32 33
  %22 = load i32, ptr %21, align 8, !tbaa !48
  %23 = load ptr, ptr %2, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %23, i32 0, i32 36
  store i32 %22, ptr %24, align 4, !tbaa !106
  %25 = load ptr, ptr %2, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %25, i32 0, i32 33
  %27 = load i32, ptr %26, align 8, !tbaa !48
  %28 = load ptr, ptr %2, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %28, i32 0, i32 29
  store i32 %27, ptr %29, align 8, !tbaa !115
  br label %36

30:                                               ; preds = %1
  %31 = load ptr, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %31, i32 0, i32 33
  %33 = load i32, ptr %32, align 8, !tbaa !48
  %34 = load ptr, ptr %2, align 8, !tbaa !8
  %35 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %34, i32 0, i32 56
  store i32 %33, ptr %35, align 4, !tbaa !50
  br label %36

36:                                               ; preds = %30, %7
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateQPInterlaceBU(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw %struct.rc_generic, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !150
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 56
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw %struct.rc_generic, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !151
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %12, align 4, !tbaa !151
  %15 = load ptr, ptr %2, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %15, i32 0, i32 56
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = load ptr, ptr %2, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 29
  store i32 %17, ptr %19, align 8, !tbaa !115
  br label %33

20:                                               ; preds = %1
  %21 = load ptr, ptr %2, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 55
  %23 = load i32, ptr %22, align 8, !tbaa !49
  %24 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_generic, ptr %24, i32 0, i32 11
  %26 = load i32, ptr %25, align 4, !tbaa !151
  %27 = add nsw i32 %26, %23
  store i32 %27, ptr %25, align 4, !tbaa !151
  %28 = load ptr, ptr %2, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %28, i32 0, i32 55
  %30 = load i32, ptr %29, align 8, !tbaa !49
  %31 = load ptr, ptr %2, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %31, i32 0, i32 29
  store i32 %30, ptr %32, align 8, !tbaa !115
  br label %33

33:                                               ; preds = %20, %7
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateModelQPFrame(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #10
  %7 = load ptr, ptr %3, align 8, !tbaa !8
  %8 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %7, i32 0, i32 46
  %9 = load double, ptr %8, align 8, !tbaa !36
  %10 = load ptr, ptr %3, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %10, i32 0, i32 25
  %12 = load double, ptr %11, align 8, !tbaa !110
  %13 = fmul double %9, %12
  %14 = load ptr, ptr %3, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %14, i32 0, i32 46
  %16 = load double, ptr %15, align 8, !tbaa !36
  %17 = fmul double %13, %16
  %18 = load ptr, ptr %3, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 25
  %20 = load double, ptr %19, align 8, !tbaa !110
  %21 = load ptr, ptr %3, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 26
  %23 = load double, ptr %22, align 8, !tbaa !111
  %24 = fmul double 4.000000e+00, %23
  %25 = load ptr, ptr %3, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %25, i32 0, i32 46
  %27 = load double, ptr %26, align 8, !tbaa !36
  %28 = fmul double %24, %27
  %29 = load i32, ptr %4, align 4, !tbaa !31
  %30 = sitofp i32 %29 to double
  %31 = fmul double %28, %30
  %32 = call double @llvm.fmuladd.f64(double %17, double %20, double %31)
  store double %32, ptr %5, align 8, !tbaa !88
  %33 = load ptr, ptr %3, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %33, i32 0, i32 26
  %35 = load double, ptr %34, align 8, !tbaa !111
  %36 = fcmp oeq double %35, 0.000000e+00
  br i1 %36, label %52, label %37

37:                                               ; preds = %2
  %38 = load double, ptr %5, align 8, !tbaa !88
  %39 = fcmp olt double %38, 0.000000e+00
  br i1 %39, label %52, label %40

40:                                               ; preds = %37
  %41 = load double, ptr %5, align 8, !tbaa !88
  %42 = call double @sqrt(double noundef %41) #10, !tbaa !31
  %43 = load ptr, ptr %3, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 25
  %45 = load double, ptr %44, align 8, !tbaa !110
  %46 = load ptr, ptr %3, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 46
  %48 = load double, ptr %47, align 8, !tbaa !36
  %49 = fneg double %45
  %50 = call double @llvm.fmuladd.f64(double %49, double %48, double %42)
  %51 = fcmp ole double %50, 0.000000e+00
  br i1 %51, label %52, label %65

52:                                               ; preds = %40, %37, %2
  %53 = load ptr, ptr %3, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %53, i32 0, i32 25
  %55 = load double, ptr %54, align 8, !tbaa !110
  %56 = load ptr, ptr %3, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 46
  %58 = load double, ptr %57, align 8, !tbaa !36
  %59 = fmul double %55, %58
  %60 = load i32, ptr %4, align 4, !tbaa !31
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %59, %61
  %63 = fptrunc double %62 to float
  %64 = fpext float %63 to double
  store double %64, ptr %6, align 8, !tbaa !88
  br label %87

65:                                               ; preds = %40
  %66 = load ptr, ptr %3, align 8, !tbaa !8
  %67 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %66, i32 0, i32 26
  %68 = load double, ptr %67, align 8, !tbaa !111
  %69 = fmul double 2.000000e+00, %68
  %70 = load ptr, ptr %3, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %70, i32 0, i32 46
  %72 = load double, ptr %71, align 8, !tbaa !36
  %73 = fmul double %69, %72
  %74 = load double, ptr %5, align 8, !tbaa !88
  %75 = call double @sqrt(double noundef %74) #10, !tbaa !31
  %76 = load ptr, ptr %3, align 8, !tbaa !8
  %77 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %76, i32 0, i32 25
  %78 = load double, ptr %77, align 8, !tbaa !110
  %79 = load ptr, ptr %3, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 46
  %81 = load double, ptr %80, align 8, !tbaa !36
  %82 = fneg double %78
  %83 = call double @llvm.fmuladd.f64(double %82, double %81, double %75)
  %84 = fdiv double %73, %83
  %85 = fptrunc double %84 to float
  %86 = fpext float %85 to double
  store double %86, ptr %6, align 8, !tbaa !88
  br label %87

87:                                               ; preds = %65, %52
  %88 = load double, ptr %6, align 8, !tbaa !88
  %89 = call signext i32 @Qstep2QP(double noundef %88)
  %90 = load ptr, ptr %3, align 8, !tbaa !8
  %91 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %90, i32 0, i32 33
  store i32 %89, ptr %91, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #10
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateBottomField(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  %3 = load ptr, ptr @input, align 8, !tbaa !8
  %4 = getelementptr inbounds nuw %struct.InputParameters, ptr %3, i32 0, i32 121
  %5 = load i32, ptr %4, align 8, !tbaa !103
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 33
  %10 = load i32, ptr %9, align 8, !tbaa !48
  %11 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw %struct.rc_generic, ptr %11, i32 0, i32 11
  %13 = load i32, ptr %12, align 4, !tbaa !151
  %14 = add nsw i32 %13, %10
  store i32 %14, ptr %12, align 4, !tbaa !151
  %15 = load ptr, ptr %2, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %15, i32 0, i32 36
  %17 = load i32, ptr %16, align 4, !tbaa !106
  %18 = add nsw i32 %17, 1
  %19 = load ptr, ptr %2, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %19, i32 0, i32 35
  store i32 %18, ptr %20, align 8, !tbaa !105
  %21 = load ptr, ptr %2, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 33
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = load ptr, ptr %2, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %24, i32 0, i32 36
  store i32 %23, ptr %25, align 4, !tbaa !106
  %26 = load ptr, ptr %2, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %26, i32 0, i32 33
  %28 = load i32, ptr %27, align 8, !tbaa !48
  %29 = load ptr, ptr %2, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %29, i32 0, i32 29
  store i32 %28, ptr %30, align 8, !tbaa !115
  br label %37

31:                                               ; preds = %1
  %32 = load ptr, ptr %2, align 8, !tbaa !8
  %33 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %32, i32 0, i32 33
  %34 = load i32, ptr %33, align 8, !tbaa !48
  %35 = load ptr, ptr %2, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 55
  store i32 %34, ptr %36, align 8, !tbaa !49
  br label %37

37:                                               ; preds = %31, %7
  ret void
}

; Function Attrs: nounwind
define dso_local signext i32 @updateFirstP(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  %5 = load ptr, ptr %3, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %5, i32 0, i32 11
  %7 = load i32, ptr %6, align 8, !tbaa !52
  %8 = load ptr, ptr %3, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 33
  store i32 %7, ptr %9, align 8, !tbaa !48
  %10 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.rc_generic, ptr %10, i32 0, i32 6
  store i32 0, ptr %11, align 8, !tbaa !118
  %12 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw %struct.rc_generic, ptr %12, i32 0, i32 7
  store i32 0, ptr %13, align 4, !tbaa !119
  %14 = load ptr, ptr %3, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %14, i32 0, i32 39
  %16 = load i32, ptr %15, align 8, !tbaa !117
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr %15, align 8, !tbaa !117
  %18 = load i32, ptr %4, align 4, !tbaa !31
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %103, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %3, align 8, !tbaa !8
  %22 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %21, i32 0, i32 39
  %23 = load i32, ptr %22, align 8, !tbaa !117
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %20
  %26 = load ptr, ptr @active_sps, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %26, i32 0, i32 25
  %28 = load i32, ptr %27, align 4, !tbaa !185
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr @input, align 8, !tbaa !8
  %32 = getelementptr inbounds nuw %struct.InputParameters, ptr %31, i32 0, i32 121
  %33 = load i32, ptr %32, align 8, !tbaa !103
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %63

35:                                               ; preds = %30, %25
  %36 = load ptr, ptr %3, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %36, i32 0, i32 33
  %38 = load i32, ptr %37, align 8, !tbaa !48
  %39 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw %struct.rc_generic, ptr %39, i32 0, i32 11
  %41 = load i32, ptr %40, align 4, !tbaa !151
  %42 = add nsw i32 %41, %38
  store i32 %42, ptr %40, align 4, !tbaa !151
  %43 = load ptr, ptr %3, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 36
  %45 = load i32, ptr %44, align 4, !tbaa !106
  %46 = load ptr, ptr %3, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 35
  store i32 %45, ptr %47, align 8, !tbaa !105
  %48 = load ptr, ptr %3, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %48, i32 0, i32 33
  %50 = load i32, ptr %49, align 8, !tbaa !48
  %51 = load ptr, ptr %3, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %51, i32 0, i32 36
  store i32 %50, ptr %52, align 4, !tbaa !106
  %53 = load ptr, ptr %3, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %53, i32 0, i32 33
  %55 = load i32, ptr %54, align 8, !tbaa !48
  %56 = load ptr, ptr %3, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 43
  store i32 %55, ptr %57, align 8, !tbaa !47
  %58 = load ptr, ptr %3, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %58, i32 0, i32 41
  %60 = load i32, ptr %59, align 8, !tbaa !168
  %61 = load ptr, ptr %3, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %61, i32 0, i32 42
  store i32 %60, ptr %62, align 4, !tbaa !93
  br label %102

63:                                               ; preds = %30
  %64 = load ptr, ptr @input, align 8, !tbaa !8
  %65 = getelementptr inbounds nuw %struct.InputParameters, ptr %64, i32 0, i32 121
  %66 = load i32, ptr %65, align 8, !tbaa !103
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr @input, align 8, !tbaa !8
  %70 = getelementptr inbounds nuw %struct.InputParameters, ptr %69, i32 0, i32 122
  %71 = load i32, ptr %70, align 4, !tbaa !104
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %68, %63
  %74 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw %struct.rc_generic, ptr %74, i32 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !97
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load ptr, ptr %3, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 33
  %81 = load i32, ptr %80, align 8, !tbaa !48
  %82 = load ptr, ptr %3, align 8, !tbaa !8
  %83 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %82, i32 0, i32 56
  store i32 %81, ptr %83, align 4, !tbaa !50
  %84 = load ptr, ptr %3, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %84, i32 0, i32 41
  %86 = load i32, ptr %85, align 8, !tbaa !168
  %87 = load ptr, ptr %3, align 8, !tbaa !8
  %88 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %87, i32 0, i32 57
  store i32 %86, ptr %88, align 8, !tbaa !189
  br label %100

89:                                               ; preds = %73
  %90 = load ptr, ptr %3, align 8, !tbaa !8
  %91 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %90, i32 0, i32 33
  %92 = load i32, ptr %91, align 8, !tbaa !48
  %93 = load ptr, ptr %3, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %93, i32 0, i32 55
  store i32 %92, ptr %94, align 8, !tbaa !49
  %95 = load ptr, ptr %3, align 8, !tbaa !8
  %96 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %95, i32 0, i32 41
  %97 = load i32, ptr %96, align 8, !tbaa !168
  %98 = load ptr, ptr %3, align 8, !tbaa !8
  %99 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %98, i32 0, i32 58
  store i32 %97, ptr %99, align 4, !tbaa !190
  br label %100

100:                                              ; preds = %89, %78
  br label %101

101:                                              ; preds = %100, %68
  br label %102

102:                                              ; preds = %101, %35
  br label %103

103:                                              ; preds = %102, %20, %2
  %104 = load ptr, ptr %3, align 8, !tbaa !8
  %105 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %104, i32 0, i32 33
  %106 = load i32, ptr %105, align 8, !tbaa !48
  %107 = load ptr, ptr %3, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 29
  store i32 %106, ptr %108, align 8, !tbaa !115
  %109 = load ptr, ptr %3, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %109, i32 0, i32 33
  %111 = load i32, ptr %110, align 8, !tbaa !48
  %112 = load ptr, ptr %3, align 8, !tbaa !8
  %113 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %112, i32 0, i32 38
  %114 = load i32, ptr %113, align 4, !tbaa !120
  %115 = add nsw i32 %114, %111
  store i32 %115, ptr %113, align 4, !tbaa !120
  %116 = load ptr, ptr %3, align 8, !tbaa !8
  %117 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %116, i32 0, i32 33
  %118 = load i32, ptr %117, align 8, !tbaa !48
  ret i32 %118
}

; Function Attrs: nounwind
define dso_local signext i32 @updateFirstBU(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  %5 = load ptr, ptr @input, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw %struct.InputParameters, ptr %5, i32 0, i32 121
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @input, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.InputParameters, ptr %10, i32 0, i32 122
  %12 = load i32, ptr %11, align 4, !tbaa !104
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %73

14:                                               ; preds = %9, %2
  %15 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.rc_generic, ptr %15, i32 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !97
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %14
  %20 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.rc_generic, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !150
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_generic, ptr %25, i32 0, i32 12
  %27 = load i32, ptr %26, align 8, !tbaa !108
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !tbaa !8
  %31 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %30, i32 0, i32 56
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.rc_generic, ptr %33, i32 0, i32 11
  %35 = load i32, ptr %34, align 4, !tbaa !151
  %36 = add nsw i32 %35, %32
  store i32 %36, ptr %34, align 4, !tbaa !151
  br label %37

37:                                               ; preds = %29, %24
  %38 = load ptr, ptr %3, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 56
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = load ptr, ptr %3, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %41, i32 0, i32 43
  store i32 %40, ptr %42, align 8, !tbaa !47
  %43 = load ptr, ptr %3, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 57
  %45 = load i32, ptr %44, align 8, !tbaa !189
  %46 = load ptr, ptr %3, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 42
  store i32 %45, ptr %47, align 4, !tbaa !93
  br label %72

48:                                               ; preds = %19
  %49 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.rc_generic, ptr %49, i32 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !108
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load ptr, ptr %3, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %54, i32 0, i32 55
  %56 = load i32, ptr %55, align 8, !tbaa !49
  %57 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %58 = getelementptr inbounds nuw %struct.rc_generic, ptr %57, i32 0, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !151
  %60 = add nsw i32 %59, %56
  store i32 %60, ptr %58, align 4, !tbaa !151
  br label %61

61:                                               ; preds = %53, %48
  %62 = load ptr, ptr %3, align 8, !tbaa !8
  %63 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %62, i32 0, i32 55
  %64 = load i32, ptr %63, align 8, !tbaa !49
  %65 = load ptr, ptr %3, align 8, !tbaa !8
  %66 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %65, i32 0, i32 43
  store i32 %64, ptr %66, align 8, !tbaa !47
  %67 = load ptr, ptr %3, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %67, i32 0, i32 58
  %69 = load i32, ptr %68, align 4, !tbaa !190
  %70 = load ptr, ptr %3, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %70, i32 0, i32 42
  store i32 %69, ptr %71, align 4, !tbaa !93
  br label %72

72:                                               ; preds = %61, %37
  br label %73

73:                                               ; preds = %72, %14, %9
  %74 = load ptr, ptr %3, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %74, i32 0, i32 68
  %76 = load i32, ptr %75, align 8, !tbaa !39
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %73
  %79 = load ptr, ptr %3, align 8, !tbaa !8
  %80 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %79, i32 0, i32 43
  %81 = load i32, ptr %80, align 8, !tbaa !47
  %82 = add nsw i32 %81, 2
  %83 = load ptr, ptr %3, align 8, !tbaa !8
  %84 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %83, i32 0, i32 33
  store i32 %82, ptr %84, align 8, !tbaa !48
  %85 = load ptr, ptr %3, align 8, !tbaa !8
  %86 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %85, i32 0, i32 33
  %87 = load i32, ptr %86, align 8, !tbaa !48
  %88 = load ptr, ptr %3, align 8, !tbaa !8
  %89 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %88, i32 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !53
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %78
  %93 = load ptr, ptr %3, align 8, !tbaa !8
  %94 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %93, i32 0, i32 9
  %95 = load i32, ptr %94, align 8, !tbaa !53
  %96 = load ptr, ptr %3, align 8, !tbaa !8
  %97 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %96, i32 0, i32 33
  store i32 %95, ptr %97, align 8, !tbaa !48
  br label %98

98:                                               ; preds = %92, %78
  %99 = load i32, ptr %4, align 4, !tbaa !31
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %103 = getelementptr inbounds nuw %struct.rc_generic, ptr %102, i32 0, i32 1
  %104 = load i32, ptr %103, align 4, !tbaa !97
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %98
  %107 = load ptr, ptr %3, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 63
  store i32 1, ptr %108, align 8, !tbaa !147
  br label %109

109:                                              ; preds = %106, %101
  br label %116

110:                                              ; preds = %73
  %111 = load ptr, ptr %3, align 8, !tbaa !8
  %112 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %111, i32 0, i32 43
  %113 = load i32, ptr %112, align 8, !tbaa !47
  %114 = load ptr, ptr %3, align 8, !tbaa !8
  %115 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %114, i32 0, i32 33
  store i32 %113, ptr %115, align 8, !tbaa !48
  br label %116

116:                                              ; preds = %110, %109
  %117 = load ptr, ptr %3, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %117, i32 0, i32 33
  %119 = load i32, ptr %118, align 8, !tbaa !48
  %120 = load ptr, ptr %3, align 8, !tbaa !8
  %121 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %120, i32 0, i32 38
  %122 = load i32, ptr %121, align 4, !tbaa !120
  %123 = add nsw i32 %122, %119
  store i32 %123, ptr %121, align 4, !tbaa !120
  %124 = load ptr, ptr %3, align 8, !tbaa !8
  %125 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %124, i32 0, i32 39
  %126 = load i32, ptr %125, align 8, !tbaa !117
  %127 = add nsw i32 %126, -1
  store i32 %127, ptr %125, align 8, !tbaa !117
  %128 = load ptr, ptr %3, align 8, !tbaa !8
  %129 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %128, i32 0, i32 43
  %130 = load i32, ptr %129, align 8, !tbaa !47
  %131 = load ptr, ptr %3, align 8, !tbaa !8
  %132 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %131, i32 0, i32 29
  store i32 %130, ptr %132, align 8, !tbaa !115
  %133 = load ptr, ptr %3, align 8, !tbaa !8
  %134 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %133, i32 0, i32 33
  %135 = load i32, ptr %134, align 8, !tbaa !48
  ret i32 %135
}

; Function Attrs: nounwind
define dso_local signext i32 @updateNegativeTarget(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  store i32 %2, ptr %6, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #10
  %8 = load ptr, ptr %4, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %8, i32 0, i32 63
  %10 = load i32, ptr %9, align 8, !tbaa !147
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, ptr %6, align 4, !tbaa !31
  %14 = add nsw i32 %13, 2
  %15 = load ptr, ptr %4, align 8, !tbaa !8
  %16 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %15, i32 0, i32 33
  store i32 %14, ptr %16, align 8, !tbaa !48
  br label %25

17:                                               ; preds = %3
  %18 = load i32, ptr %6, align 4, !tbaa !31
  %19 = load ptr, ptr %4, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %19, i32 0, i32 51
  %21 = load i32, ptr %20, align 8, !tbaa !94
  %22 = add nsw i32 %18, %21
  %23 = load ptr, ptr %4, align 8, !tbaa !8
  %24 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %23, i32 0, i32 33
  store i32 %22, ptr %24, align 8, !tbaa !48
  br label %25

25:                                               ; preds = %17, %12
  %26 = load ptr, ptr %4, align 8, !tbaa !8
  %27 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %26, i32 0, i32 33
  %28 = load i32, ptr %27, align 8, !tbaa !48
  %29 = load ptr, ptr %4, align 8, !tbaa !8
  %30 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %29, i32 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !53
  %32 = call signext i32 @imin(i32 noundef signext %28, i32 noundef signext %31)
  %33 = load ptr, ptr %4, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %33, i32 0, i32 33
  store i32 %32, ptr %34, align 8, !tbaa !48
  %35 = load ptr, ptr @input, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.InputParameters, ptr %35, i32 0, i32 160
  %37 = load i32, ptr %36, align 8, !tbaa !28
  %38 = load ptr, ptr %4, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %38, i32 0, i32 52
  %40 = load i32, ptr %39, align 4, !tbaa !96
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %25
  %43 = load ptr, ptr %4, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 33
  %45 = load i32, ptr %44, align 8, !tbaa !48
  %46 = load ptr, ptr %4, align 8, !tbaa !8
  %47 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %46, i32 0, i32 43
  %48 = load i32, ptr %47, align 8, !tbaa !47
  %49 = add nsw i32 %48, 6
  %50 = call signext i32 @imin(i32 noundef signext %45, i32 noundef signext %49)
  %51 = load ptr, ptr %4, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %51, i32 0, i32 33
  store i32 %50, ptr %52, align 8, !tbaa !48
  br label %64

53:                                               ; preds = %25
  %54 = load ptr, ptr %4, align 8, !tbaa !8
  %55 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %54, i32 0, i32 33
  %56 = load i32, ptr %55, align 8, !tbaa !48
  %57 = load ptr, ptr %4, align 8, !tbaa !8
  %58 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %57, i32 0, i32 43
  %59 = load i32, ptr %58, align 8, !tbaa !47
  %60 = add nsw i32 %59, 3
  %61 = call signext i32 @imin(i32 noundef signext %56, i32 noundef signext %60)
  %62 = load ptr, ptr %4, align 8, !tbaa !8
  %63 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %62, i32 0, i32 33
  store i32 %61, ptr %63, align 8, !tbaa !48
  br label %64

64:                                               ; preds = %53, %42
  %65 = load ptr, ptr %4, align 8, !tbaa !8
  %66 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %65, i32 0, i32 33
  %67 = load i32, ptr %66, align 8, !tbaa !48
  %68 = load ptr, ptr %4, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %68, i32 0, i32 38
  %70 = load i32, ptr %69, align 4, !tbaa !120
  %71 = add nsw i32 %70, %67
  store i32 %71, ptr %69, align 4, !tbaa !120
  %72 = load ptr, ptr %4, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %72, i32 0, i32 39
  %74 = load i32, ptr %73, align 8, !tbaa !117
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %73, align 8, !tbaa !117
  %76 = load ptr, ptr %4, align 8, !tbaa !8
  %77 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %76, i32 0, i32 39
  %78 = load i32, ptr %77, align 8, !tbaa !117
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %246

80:                                               ; preds = %64
  %81 = load i32, ptr %5, align 4, !tbaa !31
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw %struct.rc_generic, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !97
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %245

88:                                               ; preds = %83, %80
  %89 = load ptr, ptr @active_sps, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %89, i32 0, i32 25
  %91 = load i32, ptr %90, align 4, !tbaa !185
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr @input, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.InputParameters, ptr %94, i32 0, i32 121
  %96 = load i32, ptr %95, align 8, !tbaa !103
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %187

98:                                               ; preds = %93, %88
  %99 = load ptr, ptr %4, align 8, !tbaa !8
  %100 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %99, i32 0, i32 38
  %101 = load i32, ptr %100, align 4, !tbaa !120
  %102 = sitofp i32 %101 to double
  %103 = load ptr, ptr %4, align 8, !tbaa !8
  %104 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %103, i32 0, i32 44
  %105 = load i32, ptr %104, align 4, !tbaa !71
  %106 = sitofp i32 %105 to double
  %107 = fdiv double %102, %106
  %108 = fadd double %107, 5.000000e-01
  %109 = fptosi double %108 to i32
  store i32 %109, ptr %7, align 4, !tbaa !31
  %110 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %111 = getelementptr inbounds nuw %struct.rc_generic, ptr %110, i32 0, i32 12
  %112 = load i32, ptr %111, align 8, !tbaa !108
  %113 = load ptr, ptr @input, align 8, !tbaa !8
  %114 = getelementptr inbounds nuw %struct.InputParameters, ptr %113, i32 0, i32 30
  %115 = load i32, ptr %114, align 8, !tbaa !134
  %116 = sub nsw i32 %115, 2
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %98
  %119 = load i32, ptr %7, align 4, !tbaa !31
  %120 = load ptr, ptr %4, align 8, !tbaa !8
  %121 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %120, i32 0, i32 53
  store i32 %119, ptr %121, align 8, !tbaa !152
  br label %122

122:                                              ; preds = %118, %98
  %123 = load i32, ptr %7, align 4, !tbaa !31
  %124 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %125 = getelementptr inbounds nuw %struct.rc_generic, ptr %124, i32 0, i32 11
  %126 = load i32, ptr %125, align 4, !tbaa !151
  %127 = add nsw i32 %126, %123
  store i32 %127, ptr %125, align 4, !tbaa !151
  %128 = load ptr, ptr %4, align 8, !tbaa !8
  %129 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %128, i32 0, i32 63
  %130 = load i32, ptr %129, align 8, !tbaa !147
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %142

132:                                              ; preds = %122
  %133 = load ptr, ptr %4, align 8, !tbaa !8
  %134 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %133, i32 0, i32 36
  %135 = load i32, ptr %134, align 4, !tbaa !106
  %136 = add nsw i32 %135, 1
  %137 = load ptr, ptr %4, align 8, !tbaa !8
  %138 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %137, i32 0, i32 35
  store i32 %136, ptr %138, align 8, !tbaa !105
  %139 = load i32, ptr %7, align 4, !tbaa !31
  %140 = load ptr, ptr %4, align 8, !tbaa !8
  %141 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %140, i32 0, i32 36
  store i32 %139, ptr %141, align 4, !tbaa !106
  br label %178

142:                                              ; preds = %122
  %143 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %144 = getelementptr inbounds nuw %struct.rc_generic, ptr %143, i32 0, i32 12
  %145 = load i32, ptr %144, align 8, !tbaa !108
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %142
  %148 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %149 = getelementptr inbounds nuw %struct.rc_generic, ptr %148, i32 0, i32 10
  %150 = load i32, ptr %149, align 8, !tbaa !79
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %161

152:                                              ; preds = %147
  %153 = load ptr, ptr %4, align 8, !tbaa !8
  %154 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %153, i32 0, i32 36
  %155 = load i32, ptr %154, align 4, !tbaa !106
  %156 = load ptr, ptr %4, align 8, !tbaa !8
  %157 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %156, i32 0, i32 35
  store i32 %155, ptr %157, align 8, !tbaa !105
  %158 = load i32, ptr %7, align 4, !tbaa !31
  %159 = load ptr, ptr %4, align 8, !tbaa !8
  %160 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %159, i32 0, i32 36
  store i32 %158, ptr %160, align 4, !tbaa !106
  br label %177

161:                                              ; preds = %147, %142
  %162 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %163 = getelementptr inbounds nuw %struct.rc_generic, ptr %162, i32 0, i32 12
  %164 = load i32, ptr %163, align 8, !tbaa !108
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %161
  %167 = load ptr, ptr %4, align 8, !tbaa !8
  %168 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %167, i32 0, i32 36
  %169 = load i32, ptr %168, align 4, !tbaa !106
  %170 = add nsw i32 %169, 1
  %171 = load ptr, ptr %4, align 8, !tbaa !8
  %172 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %171, i32 0, i32 35
  store i32 %170, ptr %172, align 8, !tbaa !105
  %173 = load i32, ptr %7, align 4, !tbaa !31
  %174 = load ptr, ptr %4, align 8, !tbaa !8
  %175 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %174, i32 0, i32 36
  store i32 %173, ptr %175, align 4, !tbaa !106
  br label %176

176:                                              ; preds = %166, %161
  br label %177

177:                                              ; preds = %176, %152
  br label %178

178:                                              ; preds = %177, %132
  %179 = load i32, ptr %7, align 4, !tbaa !31
  %180 = load ptr, ptr %4, align 8, !tbaa !8
  %181 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %180, i32 0, i32 43
  store i32 %179, ptr %181, align 8, !tbaa !47
  %182 = load ptr, ptr %4, align 8, !tbaa !8
  %183 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %182, i32 0, i32 41
  %184 = load i32, ptr %183, align 8, !tbaa !168
  %185 = load ptr, ptr %4, align 8, !tbaa !8
  %186 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %185, i32 0, i32 42
  store i32 %184, ptr %186, align 4, !tbaa !93
  br label %244

187:                                              ; preds = %93
  %188 = load ptr, ptr @input, align 8, !tbaa !8
  %189 = getelementptr inbounds nuw %struct.InputParameters, ptr %188, i32 0, i32 121
  %190 = load i32, ptr %189, align 8, !tbaa !103
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = load ptr, ptr @input, align 8, !tbaa !8
  %194 = getelementptr inbounds nuw %struct.InputParameters, ptr %193, i32 0, i32 122
  %195 = load i32, ptr %194, align 4, !tbaa !104
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %243

197:                                              ; preds = %192, %187
  %198 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %199 = getelementptr inbounds nuw %struct.rc_generic, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !97
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %222

202:                                              ; preds = %197
  %203 = load ptr, ptr %4, align 8, !tbaa !8
  %204 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %203, i32 0, i32 38
  %205 = load i32, ptr %204, align 4, !tbaa !120
  %206 = sitofp i32 %205 to double
  %207 = load ptr, ptr %4, align 8, !tbaa !8
  %208 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %207, i32 0, i32 44
  %209 = load i32, ptr %208, align 4, !tbaa !71
  %210 = sitofp i32 %209 to double
  %211 = fdiv double %206, %210
  %212 = fadd double %211, 5.000000e-01
  %213 = fptosi double %212 to i32
  store i32 %213, ptr %7, align 4, !tbaa !31
  %214 = load i32, ptr %7, align 4, !tbaa !31
  %215 = load ptr, ptr %4, align 8, !tbaa !8
  %216 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %215, i32 0, i32 56
  store i32 %214, ptr %216, align 4, !tbaa !50
  %217 = load ptr, ptr %4, align 8, !tbaa !8
  %218 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %217, i32 0, i32 41
  %219 = load i32, ptr %218, align 8, !tbaa !168
  %220 = load ptr, ptr %4, align 8, !tbaa !8
  %221 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %220, i32 0, i32 57
  store i32 %219, ptr %221, align 8, !tbaa !189
  br label %242

222:                                              ; preds = %197
  %223 = load ptr, ptr %4, align 8, !tbaa !8
  %224 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %223, i32 0, i32 38
  %225 = load i32, ptr %224, align 4, !tbaa !120
  %226 = sitofp i32 %225 to double
  %227 = load ptr, ptr %4, align 8, !tbaa !8
  %228 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %227, i32 0, i32 44
  %229 = load i32, ptr %228, align 4, !tbaa !71
  %230 = sitofp i32 %229 to double
  %231 = fdiv double %226, %230
  %232 = fadd double %231, 5.000000e-01
  %233 = fptosi double %232 to i32
  store i32 %233, ptr %7, align 4, !tbaa !31
  %234 = load i32, ptr %7, align 4, !tbaa !31
  %235 = load ptr, ptr %4, align 8, !tbaa !8
  %236 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %235, i32 0, i32 55
  store i32 %234, ptr %236, align 8, !tbaa !49
  %237 = load ptr, ptr %4, align 8, !tbaa !8
  %238 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %237, i32 0, i32 41
  %239 = load i32, ptr %238, align 8, !tbaa !168
  %240 = load ptr, ptr %4, align 8, !tbaa !8
  %241 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %240, i32 0, i32 58
  store i32 %239, ptr %241, align 4, !tbaa !190
  br label %242

242:                                              ; preds = %222, %202
  br label %243

243:                                              ; preds = %242, %192
  br label %244

244:                                              ; preds = %243, %178
  br label %245

245:                                              ; preds = %244, %83
  br label %246

246:                                              ; preds = %245, %64
  %247 = load ptr, ptr %4, align 8, !tbaa !8
  %248 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %247, i32 0, i32 63
  %249 = load i32, ptr %248, align 8, !tbaa !147
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = load ptr, ptr %4, align 8, !tbaa !8
  %253 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %252, i32 0, i32 43
  %254 = load i32, ptr %253, align 8, !tbaa !47
  %255 = load ptr, ptr %4, align 8, !tbaa !8
  %256 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %255, i32 0, i32 29
  store i32 %254, ptr %256, align 8, !tbaa !115
  br label %263

257:                                              ; preds = %246
  %258 = load ptr, ptr %4, align 8, !tbaa !8
  %259 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %258, i32 0, i32 33
  %260 = load i32, ptr %259, align 8, !tbaa !48
  %261 = load ptr, ptr %4, align 8, !tbaa !8
  %262 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %261, i32 0, i32 29
  store i32 %260, ptr %262, align 8, !tbaa !115
  br label %263

263:                                              ; preds = %257, %251
  %264 = load ptr, ptr %4, align 8, !tbaa !8
  %265 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %264, i32 0, i32 33
  %266 = load i32, ptr %265, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #10
  ret i32 %266
}

; Function Attrs: nounwind
define dso_local void @predictCurrPicMAD(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #10
  %4 = load ptr, ptr @input, align 8, !tbaa !8
  %5 = getelementptr inbounds nuw %struct.InputParameters, ptr %4, i32 0, i32 121
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @input, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw %struct.InputParameters, ptr %9, i32 0, i32 122
  %11 = load i32, ptr %10, align 4, !tbaa !104
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %88

13:                                               ; preds = %8, %1
  %14 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.rc_generic, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !97
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %88

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %19, i32 0, i32 14
  %21 = load double, ptr %20, align 8, !tbaa !112
  %22 = load ptr, ptr %2, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %22, i32 0, i32 62
  %24 = load ptr, ptr %23, align 8, !tbaa !59
  %25 = load ptr, ptr %2, align 8, !tbaa !8
  %26 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %25, i32 0, i32 44
  %27 = load i32, ptr %26, align 4, !tbaa !71
  %28 = load ptr, ptr %2, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %28, i32 0, i32 39
  %30 = load i32, ptr %29, align 8, !tbaa !117
  %31 = sub nsw i32 %27, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, ptr %24, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !88
  %35 = load ptr, ptr %2, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %35, i32 0, i32 15
  %37 = load double, ptr %36, align 8, !tbaa !113
  %38 = call double @llvm.fmuladd.f64(double %21, double %34, double %37)
  %39 = load ptr, ptr %2, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %39, i32 0, i32 46
  store double %38, ptr %40, align 8, !tbaa !36
  %41 = load ptr, ptr %2, align 8, !tbaa !8
  %42 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %41, i32 0, i32 48
  store double 0.000000e+00, ptr %42, align 8, !tbaa !191
  %43 = load ptr, ptr %2, align 8, !tbaa !8
  %44 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %43, i32 0, i32 44
  %45 = load i32, ptr %44, align 4, !tbaa !71
  %46 = sub nsw i32 %45, 1
  store i32 %46, ptr %3, align 4, !tbaa !31
  br label %47

47:                                               ; preds = %84, %18
  %48 = load i32, ptr %3, align 4, !tbaa !31
  %49 = load ptr, ptr %2, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %49, i32 0, i32 44
  %51 = load i32, ptr %50, align 4, !tbaa !71
  %52 = load ptr, ptr %2, align 8, !tbaa !8
  %53 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %52, i32 0, i32 39
  %54 = load i32, ptr %53, align 8, !tbaa !117
  %55 = sub nsw i32 %51, %54
  %56 = icmp sge i32 %48, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %47
  %58 = load ptr, ptr %2, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %58, i32 0, i32 14
  %60 = load double, ptr %59, align 8, !tbaa !112
  %61 = load ptr, ptr %2, align 8, !tbaa !8
  %62 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %61, i32 0, i32 62
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  %64 = load i32, ptr %3, align 4, !tbaa !31
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds double, ptr %63, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !88
  %68 = load ptr, ptr %2, align 8, !tbaa !8
  %69 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %68, i32 0, i32 15
  %70 = load double, ptr %69, align 8, !tbaa !113
  %71 = call double @llvm.fmuladd.f64(double %60, double %67, double %70)
  %72 = load ptr, ptr %2, align 8, !tbaa !8
  %73 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %72, i32 0, i32 47
  store double %71, ptr %73, align 8, !tbaa !192
  %74 = load ptr, ptr %2, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %74, i32 0, i32 47
  %76 = load double, ptr %75, align 8, !tbaa !192
  %77 = load ptr, ptr %2, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %77, i32 0, i32 47
  %79 = load double, ptr %78, align 8, !tbaa !192
  %80 = load ptr, ptr %2, align 8, !tbaa !8
  %81 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %80, i32 0, i32 48
  %82 = load double, ptr %81, align 8, !tbaa !191
  %83 = call double @llvm.fmuladd.f64(double %76, double %79, double %82)
  store double %83, ptr %81, align 8, !tbaa !191
  br label %84

84:                                               ; preds = %57
  %85 = load i32, ptr %3, align 4, !tbaa !31
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %3, align 4, !tbaa !31
  br label %47, !llvm.loop !193

87:                                               ; preds = %47
  br label %158

88:                                               ; preds = %13, %8
  %89 = load ptr, ptr %2, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %89, i32 0, i32 14
  %91 = load double, ptr %90, align 8, !tbaa !112
  %92 = load ptr, ptr %2, align 8, !tbaa !8
  %93 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %92, i32 0, i32 59
  %94 = load ptr, ptr %93, align 8, !tbaa !56
  %95 = load ptr, ptr %2, align 8, !tbaa !8
  %96 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %95, i32 0, i32 44
  %97 = load i32, ptr %96, align 4, !tbaa !71
  %98 = load ptr, ptr %2, align 8, !tbaa !8
  %99 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %98, i32 0, i32 39
  %100 = load i32, ptr %99, align 8, !tbaa !117
  %101 = sub nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds double, ptr %94, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !88
  %105 = load ptr, ptr %2, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %105, i32 0, i32 15
  %107 = load double, ptr %106, align 8, !tbaa !113
  %108 = call double @llvm.fmuladd.f64(double %91, double %104, double %107)
  %109 = load ptr, ptr %2, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %109, i32 0, i32 46
  store double %108, ptr %110, align 8, !tbaa !36
  %111 = load ptr, ptr %2, align 8, !tbaa !8
  %112 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %111, i32 0, i32 48
  store double 0.000000e+00, ptr %112, align 8, !tbaa !191
  %113 = load ptr, ptr %2, align 8, !tbaa !8
  %114 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %113, i32 0, i32 44
  %115 = load i32, ptr %114, align 4, !tbaa !71
  %116 = sub nsw i32 %115, 1
  store i32 %116, ptr %3, align 4, !tbaa !31
  br label %117

117:                                              ; preds = %154, %88
  %118 = load i32, ptr %3, align 4, !tbaa !31
  %119 = load ptr, ptr %2, align 8, !tbaa !8
  %120 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %119, i32 0, i32 44
  %121 = load i32, ptr %120, align 4, !tbaa !71
  %122 = load ptr, ptr %2, align 8, !tbaa !8
  %123 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %122, i32 0, i32 39
  %124 = load i32, ptr %123, align 8, !tbaa !117
  %125 = sub nsw i32 %121, %124
  %126 = icmp sge i32 %118, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %117
  %128 = load ptr, ptr %2, align 8, !tbaa !8
  %129 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %128, i32 0, i32 14
  %130 = load double, ptr %129, align 8, !tbaa !112
  %131 = load ptr, ptr %2, align 8, !tbaa !8
  %132 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %131, i32 0, i32 59
  %133 = load ptr, ptr %132, align 8, !tbaa !56
  %134 = load i32, ptr %3, align 4, !tbaa !31
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, ptr %133, i64 %135
  %137 = load double, ptr %136, align 8, !tbaa !88
  %138 = load ptr, ptr %2, align 8, !tbaa !8
  %139 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %138, i32 0, i32 15
  %140 = load double, ptr %139, align 8, !tbaa !113
  %141 = call double @llvm.fmuladd.f64(double %130, double %137, double %140)
  %142 = load ptr, ptr %2, align 8, !tbaa !8
  %143 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %142, i32 0, i32 47
  store double %141, ptr %143, align 8, !tbaa !192
  %144 = load ptr, ptr %2, align 8, !tbaa !8
  %145 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %144, i32 0, i32 47
  %146 = load double, ptr %145, align 8, !tbaa !192
  %147 = load ptr, ptr %2, align 8, !tbaa !8
  %148 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %147, i32 0, i32 47
  %149 = load double, ptr %148, align 8, !tbaa !192
  %150 = load ptr, ptr %2, align 8, !tbaa !8
  %151 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %150, i32 0, i32 48
  %152 = load double, ptr %151, align 8, !tbaa !191
  %153 = call double @llvm.fmuladd.f64(double %146, double %149, double %152)
  store double %153, ptr %151, align 8, !tbaa !191
  br label %154

154:                                              ; preds = %127
  %155 = load i32, ptr %3, align 4, !tbaa !31
  %156 = add nsw i32 %155, -1
  store i32 %156, ptr %3, align 4, !tbaa !31
  br label %117, !llvm.loop !194

157:                                              ; preds = %117
  br label %158

158:                                              ; preds = %157, %87
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #10
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateModelQPBU(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !31
  store i32 %2, ptr %6, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #10
  %10 = load ptr, ptr %4, align 8, !tbaa !8
  %11 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %10, i32 0, i32 68
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = sitofp i32 %12 to double
  %14 = load ptr, ptr %4, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %14, i32 0, i32 46
  %16 = load double, ptr %15, align 8, !tbaa !36
  %17 = fmul double %13, %16
  %18 = load ptr, ptr %4, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %18, i32 0, i32 46
  %20 = load double, ptr %19, align 8, !tbaa !36
  %21 = fmul double %17, %20
  %22 = load ptr, ptr %4, align 8, !tbaa !8
  %23 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %22, i32 0, i32 48
  %24 = load double, ptr %23, align 8, !tbaa !191
  %25 = fdiv double %21, %24
  %26 = fptosi double %25 to i32
  store i32 %26, ptr %9, align 4, !tbaa !31
  %27 = load ptr, ptr %4, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %27, i32 0, i32 41
  %29 = load i32, ptr %28, align 8, !tbaa !168
  %30 = load i32, ptr %9, align 4, !tbaa !31
  %31 = sub nsw i32 %30, %29
  store i32 %31, ptr %9, align 4, !tbaa !31
  %32 = load i32, ptr %9, align 4, !tbaa !31
  %33 = load ptr, ptr %4, align 8, !tbaa !8
  %34 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %33, i32 0, i32 0
  %35 = load float, ptr %34, align 8, !tbaa !65
  %36 = load ptr, ptr %4, align 8, !tbaa !8
  %37 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %36, i32 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !69
  %39 = fmul float 4.000000e+00, %38
  %40 = load ptr, ptr %4, align 8, !tbaa !8
  %41 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %40, i32 0, i32 44
  %42 = load i32, ptr %41, align 4, !tbaa !71
  %43 = sitofp i32 %42 to float
  %44 = fmul float %39, %43
  %45 = fdiv float %35, %44
  %46 = fptosi float %45 to i32
  %47 = call signext i32 @imax(i32 noundef signext %32, i32 noundef signext %46)
  store i32 %47, ptr %9, align 4, !tbaa !31
  %48 = load ptr, ptr %4, align 8, !tbaa !8
  %49 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %48, i32 0, i32 46
  %50 = load double, ptr %49, align 8, !tbaa !36
  %51 = load ptr, ptr %4, align 8, !tbaa !8
  %52 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %51, i32 0, i32 46
  %53 = load double, ptr %52, align 8, !tbaa !36
  %54 = fmul double %50, %53
  %55 = load ptr, ptr %4, align 8, !tbaa !8
  %56 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %55, i32 0, i32 25
  %57 = load double, ptr %56, align 8, !tbaa !110
  %58 = fmul double %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !8
  %60 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %59, i32 0, i32 25
  %61 = load double, ptr %60, align 8, !tbaa !110
  %62 = load ptr, ptr %4, align 8, !tbaa !8
  %63 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %62, i32 0, i32 26
  %64 = load double, ptr %63, align 8, !tbaa !111
  %65 = fmul double 4.000000e+00, %64
  %66 = load ptr, ptr %4, align 8, !tbaa !8
  %67 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %66, i32 0, i32 46
  %68 = load double, ptr %67, align 8, !tbaa !36
  %69 = fmul double %65, %68
  %70 = load i32, ptr %9, align 4, !tbaa !31
  %71 = sitofp i32 %70 to double
  %72 = fmul double %69, %71
  %73 = call double @llvm.fmuladd.f64(double %58, double %61, double %72)
  store double %73, ptr %7, align 8, !tbaa !88
  %74 = load ptr, ptr %4, align 8, !tbaa !8
  %75 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %74, i32 0, i32 26
  %76 = load double, ptr %75, align 8, !tbaa !111
  %77 = fcmp oeq double %76, 0.000000e+00
  br i1 %77, label %93, label %78

78:                                               ; preds = %3
  %79 = load double, ptr %7, align 8, !tbaa !88
  %80 = fcmp olt double %79, 0.000000e+00
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  %82 = load double, ptr %7, align 8, !tbaa !88
  %83 = call double @sqrt(double noundef %82) #10, !tbaa !31
  %84 = load ptr, ptr %4, align 8, !tbaa !8
  %85 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %84, i32 0, i32 25
  %86 = load double, ptr %85, align 8, !tbaa !110
  %87 = load ptr, ptr %4, align 8, !tbaa !8
  %88 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %87, i32 0, i32 46
  %89 = load double, ptr %88, align 8, !tbaa !36
  %90 = fneg double %86
  %91 = call double @llvm.fmuladd.f64(double %90, double %89, double %83)
  %92 = fcmp ole double %91, 0.000000e+00
  br i1 %92, label %93, label %106

93:                                               ; preds = %81, %78, %3
  %94 = load ptr, ptr %4, align 8, !tbaa !8
  %95 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %94, i32 0, i32 25
  %96 = load double, ptr %95, align 8, !tbaa !110
  %97 = load ptr, ptr %4, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %97, i32 0, i32 46
  %99 = load double, ptr %98, align 8, !tbaa !36
  %100 = fmul double %96, %99
  %101 = load i32, ptr %9, align 4, !tbaa !31
  %102 = sitofp i32 %101 to double
  %103 = fdiv double %100, %102
  %104 = fptrunc double %103 to float
  %105 = fpext float %104 to double
  store double %105, ptr %8, align 8, !tbaa !88
  br label %128

106:                                              ; preds = %81
  %107 = load ptr, ptr %4, align 8, !tbaa !8
  %108 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %107, i32 0, i32 26
  %109 = load double, ptr %108, align 8, !tbaa !111
  %110 = fmul double 2.000000e+00, %109
  %111 = load ptr, ptr %4, align 8, !tbaa !8
  %112 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %111, i32 0, i32 46
  %113 = load double, ptr %112, align 8, !tbaa !36
  %114 = fmul double %110, %113
  %115 = load double, ptr %7, align 8, !tbaa !88
  %116 = call double @sqrt(double noundef %115) #10, !tbaa !31
  %117 = load ptr, ptr %4, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %117, i32 0, i32 25
  %119 = load double, ptr %118, align 8, !tbaa !110
  %120 = load ptr, ptr %4, align 8, !tbaa !8
  %121 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %120, i32 0, i32 46
  %122 = load double, ptr %121, align 8, !tbaa !36
  %123 = fneg double %119
  %124 = call double @llvm.fmuladd.f64(double %123, double %122, double %116)
  %125 = fdiv double %114, %124
  %126 = fptrunc double %125 to float
  %127 = fpext float %126 to double
  store double %127, ptr %8, align 8, !tbaa !88
  br label %128

128:                                              ; preds = %106, %93
  %129 = load double, ptr %8, align 8, !tbaa !88
  %130 = call signext i32 @Qstep2QP(double noundef %129)
  %131 = load ptr, ptr %4, align 8, !tbaa !8
  %132 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %131, i32 0, i32 33
  store i32 %130, ptr %132, align 8, !tbaa !48
  %133 = load i32, ptr %6, align 4, !tbaa !31
  %134 = load ptr, ptr %4, align 8, !tbaa !8
  %135 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %134, i32 0, i32 51
  %136 = load i32, ptr %135, align 8, !tbaa !94
  %137 = add nsw i32 %133, %136
  %138 = load ptr, ptr %4, align 8, !tbaa !8
  %139 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %138, i32 0, i32 33
  %140 = load i32, ptr %139, align 8, !tbaa !48
  %141 = call signext i32 @imin(i32 noundef signext %137, i32 noundef signext %140)
  %142 = load ptr, ptr %4, align 8, !tbaa !8
  %143 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %142, i32 0, i32 33
  store i32 %141, ptr %143, align 8, !tbaa !48
  %144 = load ptr, ptr @input, align 8, !tbaa !8
  %145 = getelementptr inbounds nuw %struct.InputParameters, ptr %144, i32 0, i32 160
  %146 = load i32, ptr %145, align 8, !tbaa !28
  %147 = load ptr, ptr %4, align 8, !tbaa !8
  %148 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %147, i32 0, i32 52
  %149 = load i32, ptr %148, align 4, !tbaa !96
  %150 = icmp uge i32 %146, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %128
  %152 = load ptr, ptr %4, align 8, !tbaa !8
  %153 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %152, i32 0, i32 43
  %154 = load i32, ptr %153, align 8, !tbaa !47
  %155 = add nsw i32 %154, 6
  %156 = load ptr, ptr %4, align 8, !tbaa !8
  %157 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %156, i32 0, i32 33
  %158 = load i32, ptr %157, align 8, !tbaa !48
  %159 = call signext i32 @imin(i32 noundef signext %155, i32 noundef signext %158)
  %160 = load ptr, ptr %4, align 8, !tbaa !8
  %161 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %160, i32 0, i32 33
  store i32 %159, ptr %161, align 8, !tbaa !48
  br label %173

162:                                              ; preds = %128
  %163 = load ptr, ptr %4, align 8, !tbaa !8
  %164 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %163, i32 0, i32 43
  %165 = load i32, ptr %164, align 8, !tbaa !47
  %166 = add nsw i32 %165, 3
  %167 = load ptr, ptr %4, align 8, !tbaa !8
  %168 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %167, i32 0, i32 33
  %169 = load i32, ptr %168, align 8, !tbaa !48
  %170 = call signext i32 @imin(i32 noundef signext %166, i32 noundef signext %169)
  %171 = load ptr, ptr %4, align 8, !tbaa !8
  %172 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %171, i32 0, i32 33
  store i32 %170, ptr %172, align 8, !tbaa !48
  br label %173

173:                                              ; preds = %162, %151
  %174 = load i32, ptr %6, align 4, !tbaa !31
  %175 = load ptr, ptr %4, align 8, !tbaa !8
  %176 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %175, i32 0, i32 51
  %177 = load i32, ptr %176, align 8, !tbaa !94
  %178 = sub nsw i32 %174, %177
  %179 = load ptr, ptr %4, align 8, !tbaa !8
  %180 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %179, i32 0, i32 9
  %181 = load i32, ptr %180, align 8, !tbaa !53
  %182 = load ptr, ptr %4, align 8, !tbaa !8
  %183 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %182, i32 0, i32 33
  %184 = load i32, ptr %183, align 8, !tbaa !48
  %185 = call signext i32 @iClip3(i32 noundef signext %178, i32 noundef signext %181, i32 noundef signext %184)
  %186 = load ptr, ptr %4, align 8, !tbaa !8
  %187 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %186, i32 0, i32 33
  store i32 %185, ptr %187, align 8, !tbaa !48
  %188 = load ptr, ptr @input, align 8, !tbaa !8
  %189 = getelementptr inbounds nuw %struct.InputParameters, ptr %188, i32 0, i32 160
  %190 = load i32, ptr %189, align 8, !tbaa !28
  %191 = load ptr, ptr %4, align 8, !tbaa !8
  %192 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %191, i32 0, i32 52
  %193 = load i32, ptr %192, align 4, !tbaa !96
  %194 = icmp uge i32 %190, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %173
  %196 = load ptr, ptr %4, align 8, !tbaa !8
  %197 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %196, i32 0, i32 43
  %198 = load i32, ptr %197, align 8, !tbaa !47
  %199 = sub nsw i32 %198, 6
  %200 = load ptr, ptr %4, align 8, !tbaa !8
  %201 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %200, i32 0, i32 33
  %202 = load i32, ptr %201, align 8, !tbaa !48
  %203 = call signext i32 @imax(i32 noundef signext %199, i32 noundef signext %202)
  %204 = load ptr, ptr %4, align 8, !tbaa !8
  %205 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %204, i32 0, i32 33
  store i32 %203, ptr %205, align 8, !tbaa !48
  br label %217

206:                                              ; preds = %173
  %207 = load ptr, ptr %4, align 8, !tbaa !8
  %208 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %207, i32 0, i32 43
  %209 = load i32, ptr %208, align 8, !tbaa !47
  %210 = sub nsw i32 %209, 3
  %211 = load ptr, ptr %4, align 8, !tbaa !8
  %212 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %211, i32 0, i32 33
  %213 = load i32, ptr %212, align 8, !tbaa !48
  %214 = call signext i32 @imax(i32 noundef signext %210, i32 noundef signext %213)
  %215 = load ptr, ptr %4, align 8, !tbaa !8
  %216 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %215, i32 0, i32 33
  store i32 %214, ptr %216, align 8, !tbaa !48
  br label %217

217:                                              ; preds = %206, %195
  %218 = load ptr, ptr %4, align 8, !tbaa !8
  %219 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %218, i32 0, i32 10
  %220 = load i32, ptr %219, align 4, !tbaa !55
  %221 = load ptr, ptr %4, align 8, !tbaa !8
  %222 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %221, i32 0, i32 33
  %223 = load i32, ptr %222, align 8, !tbaa !48
  %224 = call signext i32 @imax(i32 noundef signext %220, i32 noundef signext %223)
  %225 = load ptr, ptr %4, align 8, !tbaa !8
  %226 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %225, i32 0, i32 33
  store i32 %224, ptr %226, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #10
  ret void
}

; Function Attrs: nounwind
define dso_local void @updateLastBU(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store i32 %1, ptr %4, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #10
  %6 = load i32, ptr %4, align 4, !tbaa !31
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw %struct.rc_generic, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !97
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %127

13:                                               ; preds = %8, %2
  %14 = load ptr, ptr @active_sps, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %14, i32 0, i32 25
  %16 = load i32, ptr %15, align 4, !tbaa !185
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @input, align 8, !tbaa !8
  %20 = getelementptr inbounds nuw %struct.InputParameters, ptr %19, i32 0, i32 121
  %21 = load i32, ptr %20, align 8, !tbaa !103
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %69

23:                                               ; preds = %18, %13
  %24 = load ptr, ptr %3, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %24, i32 0, i32 38
  %26 = load i32, ptr %25, align 4, !tbaa !120
  %27 = sitofp i32 %26 to double
  %28 = load ptr, ptr %3, align 8, !tbaa !8
  %29 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %28, i32 0, i32 44
  %30 = load i32, ptr %29, align 4, !tbaa !71
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %27, %31
  %33 = fadd double %32, 5.000000e-01
  %34 = fptosi double %33 to i32
  store i32 %34, ptr %5, align 4, !tbaa !31
  %35 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.rc_generic, ptr %35, i32 0, i32 12
  %37 = load i32, ptr %36, align 8, !tbaa !108
  %38 = load ptr, ptr @input, align 8, !tbaa !8
  %39 = getelementptr inbounds nuw %struct.InputParameters, ptr %38, i32 0, i32 30
  %40 = load i32, ptr %39, align 8, !tbaa !134
  %41 = sub nsw i32 %40, 2
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %23
  %44 = load i32, ptr %5, align 4, !tbaa !31
  %45 = load ptr, ptr %3, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %45, i32 0, i32 53
  store i32 %44, ptr %46, align 8, !tbaa !152
  br label %47

47:                                               ; preds = %43, %23
  %48 = load i32, ptr %5, align 4, !tbaa !31
  %49 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.rc_generic, ptr %49, i32 0, i32 11
  %51 = load i32, ptr %50, align 4, !tbaa !151
  %52 = add nsw i32 %51, %48
  store i32 %52, ptr %50, align 4, !tbaa !151
  %53 = load ptr, ptr %3, align 8, !tbaa !8
  %54 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %53, i32 0, i32 36
  %55 = load i32, ptr %54, align 4, !tbaa !106
  %56 = load ptr, ptr %3, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %56, i32 0, i32 35
  store i32 %55, ptr %57, align 8, !tbaa !105
  %58 = load i32, ptr %5, align 4, !tbaa !31
  %59 = load ptr, ptr %3, align 8, !tbaa !8
  %60 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %59, i32 0, i32 36
  store i32 %58, ptr %60, align 4, !tbaa !106
  %61 = load i32, ptr %5, align 4, !tbaa !31
  %62 = load ptr, ptr %3, align 8, !tbaa !8
  %63 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %62, i32 0, i32 43
  store i32 %61, ptr %63, align 8, !tbaa !47
  %64 = load ptr, ptr %3, align 8, !tbaa !8
  %65 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %64, i32 0, i32 41
  %66 = load i32, ptr %65, align 8, !tbaa !168
  %67 = load ptr, ptr %3, align 8, !tbaa !8
  %68 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %67, i32 0, i32 42
  store i32 %66, ptr %68, align 4, !tbaa !93
  br label %126

69:                                               ; preds = %18
  %70 = load ptr, ptr @input, align 8, !tbaa !8
  %71 = getelementptr inbounds nuw %struct.InputParameters, ptr %70, i32 0, i32 121
  %72 = load i32, ptr %71, align 8, !tbaa !103
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load ptr, ptr @input, align 8, !tbaa !8
  %76 = getelementptr inbounds nuw %struct.InputParameters, ptr %75, i32 0, i32 122
  %77 = load i32, ptr %76, align 4, !tbaa !104
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %74, %69
  %80 = load ptr, ptr @generic_RC, align 8, !tbaa !8
  %81 = getelementptr inbounds nuw %struct.rc_generic, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !97
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %79
  %85 = load ptr, ptr %3, align 8, !tbaa !8
  %86 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %85, i32 0, i32 38
  %87 = load i32, ptr %86, align 4, !tbaa !120
  %88 = sitofp i32 %87 to double
  %89 = load ptr, ptr %3, align 8, !tbaa !8
  %90 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %89, i32 0, i32 44
  %91 = load i32, ptr %90, align 4, !tbaa !71
  %92 = sitofp i32 %91 to double
  %93 = fdiv double %88, %92
  %94 = fadd double %93, 5.000000e-01
  %95 = fptosi double %94 to i32
  store i32 %95, ptr %5, align 4, !tbaa !31
  %96 = load i32, ptr %5, align 4, !tbaa !31
  %97 = load ptr, ptr %3, align 8, !tbaa !8
  %98 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %97, i32 0, i32 56
  store i32 %96, ptr %98, align 4, !tbaa !50
  %99 = load ptr, ptr %3, align 8, !tbaa !8
  %100 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %99, i32 0, i32 41
  %101 = load i32, ptr %100, align 8, !tbaa !168
  %102 = load ptr, ptr %3, align 8, !tbaa !8
  %103 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %102, i32 0, i32 57
  store i32 %101, ptr %103, align 8, !tbaa !189
  br label %124

104:                                              ; preds = %79
  %105 = load ptr, ptr %3, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %105, i32 0, i32 38
  %107 = load i32, ptr %106, align 4, !tbaa !120
  %108 = sitofp i32 %107 to double
  %109 = load ptr, ptr %3, align 8, !tbaa !8
  %110 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %109, i32 0, i32 44
  %111 = load i32, ptr %110, align 4, !tbaa !71
  %112 = sitofp i32 %111 to double
  %113 = fdiv double %108, %112
  %114 = fadd double %113, 5.000000e-01
  %115 = fptosi double %114 to i32
  store i32 %115, ptr %5, align 4, !tbaa !31
  %116 = load i32, ptr %5, align 4, !tbaa !31
  %117 = load ptr, ptr %3, align 8, !tbaa !8
  %118 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %117, i32 0, i32 55
  store i32 %116, ptr %118, align 8, !tbaa !49
  %119 = load ptr, ptr %3, align 8, !tbaa !8
  %120 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %119, i32 0, i32 41
  %121 = load i32, ptr %120, align 8, !tbaa !168
  %122 = load ptr, ptr %3, align 8, !tbaa !8
  %123 = getelementptr inbounds nuw %struct.rc_quadratic, ptr %122, i32 0, i32 58
  store i32 %121, ptr %123, align 4, !tbaa !190
  br label %124

124:                                              ; preds = %104, %84
  br label %125

125:                                              ; preds = %124, %74
  br label %126

126:                                              ; preds = %125, %47
  br label %127

127:                                              ; preds = %126, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #10
  ret void
}

declare signext i32 @Qstep2QP(double noundef) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any p2 pointer", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !11, i64 15352}
!10 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !12, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !13, i64 128, !13, i64 136, !11, i64 144, !14, i64 152, !11, i64 160, !11, i64 164, !11, i64 168, !11, i64 172, !11, i64 176, !11, i64 180, !11, i64 184, !11, i64 188, !11, i64 192, !11, i64 196, !11, i64 200, !11, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !16, i64 14160, !14, i64 14168, !14, i64 14176, !14, i64 14184, !16, i64 14192, !16, i64 14200, !5, i64 14208, !5, i64 14216, !18, i64 14224, !19, i64 14232, !19, i64 14240, !11, i64 14248, !11, i64 14252, !11, i64 14256, !11, i64 14260, !6, i64 14264, !11, i64 14328, !11, i64 14332, !11, i64 14336, !11, i64 14340, !11, i64 14344, !20, i64 14352, !11, i64 14360, !11, i64 14364, !11, i64 14368, !11, i64 14372, !21, i64 14376, !21, i64 14384, !21, i64 14392, !21, i64 14400, !6, i64 14408, !11, i64 14440, !11, i64 14444, !11, i64 14448, !11, i64 14452, !11, i64 14456, !11, i64 14460, !11, i64 14464, !11, i64 14468, !6, i64 14472, !11, i64 15240, !11, i64 15244, !11, i64 15248, !11, i64 15252, !11, i64 15256, !11, i64 15260, !11, i64 15264, !11, i64 15268, !11, i64 15272, !11, i64 15276, !11, i64 15280, !11, i64 15284, !11, i64 15288, !6, i64 15292, !11, i64 15296, !11, i64 15300, !6, i64 15304, !11, i64 15312, !11, i64 15316, !11, i64 15320, !11, i64 15324, !11, i64 15328, !11, i64 15332, !11, i64 15336, !11, i64 15340, !11, i64 15344, !11, i64 15348, !11, i64 15352, !11, i64 15356, !11, i64 15360, !11, i64 15364, !11, i64 15368, !11, i64 15372, !24, i64 15376, !11, i64 15384, !11, i64 15388, !11, i64 15392, !11, i64 15396, !11, i64 15400, !11, i64 15404, !11, i64 15408, !11, i64 15412, !11, i64 15416, !11, i64 15420, !11, i64 15424, !11, i64 15428, !11, i64 15432, !11, i64 15436, !11, i64 15440, !11, i64 15444, !11, i64 15448, !11, i64 15452, !11, i64 15456, !11, i64 15460, !11, i64 15464, !11, i64 15468, !11, i64 15472, !25, i64 15480, !26, i64 15488, !14, i64 15496, !25, i64 15504, !11, i64 15512, !11, i64 15516, !11, i64 15520, !11, i64 15524, !11, i64 15528, !11, i64 15532, !11, i64 15536, !11, i64 15540, !11, i64 15544, !11, i64 15548, !6, i64 15552, !6, i64 15576, !11, i64 15584, !11, i64 15588, !27, i64 15592, !11, i64 15596, !11, i64 15600, !11, i64 15604, !11, i64 15608, !11, i64 15612}
!11 = !{!"int", !6, i64 0}
!12 = !{!"float", !6, i64 0}
!13 = !{!"p2 omnipotent char", !4, i64 0}
!14 = !{!"p3 int", !15, i64 0}
!15 = !{!"any p3 pointer", !4, i64 0}
!16 = !{!"p4 int", !17, i64 0}
!17 = !{!"any p4 pointer", !15, i64 0}
!18 = !{!"p1 _ZTS10macroblock", !5, i64 0}
!19 = !{!"p1 int", !5, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = !{!"p6 short", !22, i64 0}
!22 = !{!"any p6 pointer", !23, i64 0}
!23 = !{!"any p5 pointer", !17, i64 0}
!24 = !{!"p1 _ZTS18DecRefPicMarking_s", !5, i64 0}
!25 = !{!"p2 double", !4, i64 0}
!26 = !{!"p3 double", !15, i64 0}
!27 = !{!"short", !6, i64 0}
!28 = !{!29, !11, i64 5128}
!29 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !11, i64 264, !11, i64 268, !11, i64 272, !11, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !11, i64 1560, !11, i64 1564, !11, i64 1568, !11, i64 1572, !11, i64 1576, !11, i64 1580, !6, i64 1584, !11, i64 2084, !11, i64 2088, !11, i64 2092, !11, i64 2096, !11, i64 2100, !11, i64 2104, !11, i64 2108, !11, i64 2112, !11, i64 2116, !11, i64 2120, !11, i64 2124, !11, i64 2128, !11, i64 2132, !11, i64 2136, !11, i64 2140, !11, i64 2144, !11, i64 2148, !11, i64 2152, !11, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !11, i64 2928, !11, i64 2932, !11, i64 2936, !11, i64 2940, !11, i64 2944, !11, i64 2948, !11, i64 2952, !11, i64 2956, !11, i64 2960, !11, i64 2964, !11, i64 2968, !11, i64 2972, !6, i64 2976, !11, i64 4000, !11, i64 4004, !11, i64 4008, !11, i64 4012, !11, i64 4016, !11, i64 4020, !11, i64 4024, !11, i64 4028, !11, i64 4032, !11, i64 4036, !11, i64 4040, !11, i64 4044, !11, i64 4048, !11, i64 4052, !11, i64 4056, !11, i64 4060, !11, i64 4064, !11, i64 4068, !11, i64 4072, !11, i64 4076, !20, i64 4080, !11, i64 4088, !11, i64 4092, !11, i64 4096, !11, i64 4100, !11, i64 4104, !11, i64 4108, !11, i64 4112, !11, i64 4116, !11, i64 4120, !11, i64 4124, !11, i64 4128, !11, i64 4132, !11, i64 4136, !11, i64 4140, !11, i64 4144, !11, i64 4148, !11, i64 4152, !11, i64 4156, !11, i64 4160, !11, i64 4164, !11, i64 4168, !11, i64 4172, !11, i64 4176, !11, i64 4180, !11, i64 4184, !11, i64 4188, !6, i64 4192, !6, i64 4448, !11, i64 4704, !11, i64 4708, !11, i64 4712, !11, i64 4716, !11, i64 4720, !11, i64 4724, !11, i64 4728, !11, i64 4732, !11, i64 4736, !11, i64 4740, !11, i64 4744, !11, i64 4748, !11, i64 4752, !11, i64 4756, !11, i64 4760, !11, i64 4764, !11, i64 4768, !11, i64 4772, !6, i64 4776, !11, i64 5032, !11, i64 5036, !19, i64 5040, !19, i64 5048, !30, i64 5056, !19, i64 5064, !11, i64 5072, !11, i64 5076, !11, i64 5080, !11, i64 5084, !11, i64 5088, !11, i64 5092, !11, i64 5096, !11, i64 5100, !11, i64 5104, !11, i64 5108, !11, i64 5112, !11, i64 5116, !11, i64 5120, !11, i64 5124, !11, i64 5128, !11, i64 5132, !11, i64 5136, !20, i64 5144, !20, i64 5152, !20, i64 5160, !6, i64 5168, !11, i64 5208, !6, i64 5212, !11, i64 5244, !11, i64 5248, !11, i64 5252, !11, i64 5256, !11, i64 5260, !11, i64 5264, !11, i64 5268, !11, i64 5272, !11, i64 5276, !11, i64 5280, !11, i64 5284, !11, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !11, i64 5648, !11, i64 5652, !11, i64 5656, !11, i64 5660, !6, i64 5664, !6, i64 5704, !11, i64 5744, !11, i64 5748, !11, i64 5752, !11, i64 5756, !11, i64 5760, !11, i64 5764, !11, i64 5768, !11, i64 5772, !11, i64 5776, !6, i64 5780, !11, i64 5792}
!30 = !{!"p1 omnipotent char", !5, i64 0}
!31 = !{!11, !11, i64 0}
!32 = !{!33, !20, i64 1424}
!33 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !20, i64 80, !20, i64 88, !20, i64 96, !20, i64 104, !20, i64 112, !6, i64 120, !6, i64 288, !6, i64 456, !6, i64 624, !6, i64 792, !6, i64 960, !6, i64 1128, !20, i64 1296, !20, i64 1304, !20, i64 1312, !20, i64 1320, !11, i64 1328, !11, i64 1332, !11, i64 1336, !11, i64 1340, !11, i64 1344, !11, i64 1348, !11, i64 1352, !11, i64 1356, !11, i64 1360, !11, i64 1364, !11, i64 1368, !11, i64 1372, !11, i64 1376, !11, i64 1380, !11, i64 1384, !11, i64 1388, !11, i64 1392, !20, i64 1400, !20, i64 1408, !20, i64 1416, !20, i64 1424, !20, i64 1432, !11, i64 1440, !11, i64 1444, !11, i64 1448, !11, i64 1452, !11, i64 1456, !11, i64 1460, !11, i64 1464, !11, i64 1468, !34, i64 1472, !34, i64 1480, !34, i64 1488, !34, i64 1496, !11, i64 1504, !35, i64 1512, !35, i64 1520, !11, i64 1528, !11, i64 1532, !11, i64 1536, !11, i64 1540, !11, i64 1544, !11, i64 1548, !11, i64 1552, !11, i64 1556, !11, i64 1560, !11, i64 1564, !20, i64 1568, !20, i64 1576, !20, i64 1584, !11, i64 1592, !11, i64 1596}
!34 = !{!"p1 double", !5, i64 0}
!35 = !{!"long long", !6, i64 0}
!36 = !{!33, !20, i64 1400}
!37 = !{!33, !35, i64 1520}
!38 = !{!33, !35, i64 1512}
!39 = !{!33, !11, i64 1536}
!40 = !{!33, !11, i64 1540}
!41 = !{!33, !11, i64 1564}
!42 = !{!33, !11, i64 1556}
!43 = !{!33, !11, i64 1560}
!44 = !{!33, !20, i64 1568}
!45 = !{!33, !20, i64 1576}
!46 = !{!29, !11, i64 12}
!47 = !{!33, !11, i64 1384}
!48 = !{!33, !11, i64 1344}
!49 = !{!33, !11, i64 1456}
!50 = !{!33, !11, i64 1460}
!51 = !{!33, !11, i64 76}
!52 = !{!33, !11, i64 72}
!53 = !{!33, !11, i64 64}
!54 = !{!10, !11, i64 15452}
!55 = !{!33, !11, i64 68}
!56 = !{!33, !34, i64 1472}
!57 = !{!33, !34, i64 1480}
!58 = !{!33, !34, i64 1488}
!59 = !{!33, !34, i64 1496}
!60 = !{!34, !34, i64 0}
!61 = !{!29, !11, i64 5136}
!62 = !{!33, !11, i64 1528}
!63 = !{!33, !11, i64 1532}
!64 = !{!29, !11, i64 5120}
!65 = !{!33, !12, i64 0}
!66 = !{!10, !12, i64 48}
!67 = !{!29, !11, i64 2096}
!68 = !{!29, !11, i64 20}
!69 = !{!33, !12, i64 4}
!70 = !{!33, !12, i64 8}
!71 = !{!33, !11, i64 1388}
!72 = !{!73, !35, i64 72}
!73 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !35, i64 56, !19, i64 64, !35, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !6, i64 92, !11, i64 112, !6, i64 116, !11, i64 136, !11, i64 140}
!74 = !{!33, !20, i64 32}
!75 = !{!33, !11, i64 1340}
!76 = !{!33, !11, i64 1336}
!77 = !{!73, !11, i64 32}
!78 = !{!73, !11, i64 36}
!79 = !{!73, !11, i64 40}
!80 = !{!73, !11, i64 80}
!81 = !{!33, !20, i64 16}
!82 = !{!33, !20, i64 24}
!83 = !{!33, !11, i64 1348}
!84 = !{!33, !20, i64 1312}
!85 = !{!33, !20, i64 1320}
!86 = !{!33, !20, i64 104}
!87 = !{!33, !20, i64 112}
!88 = !{!20, !20, i64 0}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!33, !11, i64 1596}
!92 = !{!33, !11, i64 1372}
!93 = !{!33, !11, i64 1380}
!94 = !{!33, !11, i64 1440}
!95 = !{!10, !11, i64 15336}
!96 = !{!33, !11, i64 1444}
!97 = !{!73, !11, i64 4}
!98 = !{!10, !11, i64 88}
!99 = !{!10, !11, i64 52}
!100 = !{!29, !11, i64 5124}
!101 = !{!10, !11, i64 15404}
!102 = !{!10, !11, i64 20}
!103 = !{!29, !11, i64 4704}
!104 = !{!29, !11, i64 4708}
!105 = !{!33, !11, i64 1352}
!106 = !{!33, !11, i64 1356}
!107 = !{!33, !11, i64 1360}
!108 = !{!73, !11, i64 48}
!109 = !{!10, !11, i64 0}
!110 = !{!33, !20, i64 1296}
!111 = !{!33, !20, i64 1304}
!112 = !{!33, !20, i64 88}
!113 = !{!33, !20, i64 96}
!114 = !{!33, !20, i64 80}
!115 = !{!33, !11, i64 1328}
!116 = !{!73, !11, i64 12}
!117 = !{!33, !11, i64 1368}
!118 = !{!73, !11, i64 24}
!119 = !{!73, !11, i64 28}
!120 = !{!33, !11, i64 1364}
!121 = !{!29, !11, i64 2968}
!122 = !{!10, !11, i64 14364}
!123 = !{!10, !11, i64 15612}
!124 = !{!125, !11, i64 16}
!125 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!126 = !{!10, !11, i64 15360}
!127 = !{!33, !20, i64 1432}
!128 = distinct !{!128, !90}
!129 = distinct !{!129, !90}
!130 = !{!131, !131, i64 0}
!131 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!132 = !{!73, !11, i64 112}
!133 = distinct !{!133, !90}
!134 = !{!29, !11, i64 1560}
!135 = !{!29, !20, i64 4080}
!136 = !{!12, !12, i64 0}
!137 = distinct !{!137, !90}
!138 = !{!29, !20, i64 5160}
!139 = !{!73, !11, i64 84}
!140 = !{!73, !11, i64 88}
!141 = distinct !{!141, !90}
!142 = !{!29, !11, i64 8}
!143 = !{!73, !11, i64 140}
!144 = !{!73, !11, i64 136}
!145 = !{!33, !11, i64 1544}
!146 = !{!33, !11, i64 1548}
!147 = !{!33, !11, i64 1504}
!148 = !{!33, !11, i64 1592}
!149 = !{!33, !11, i64 1452}
!150 = !{!73, !11, i64 8}
!151 = !{!73, !11, i64 44}
!152 = !{!33, !11, i64 1448}
!153 = !{!10, !11, i64 15388}
!154 = !{!29, !11, i64 5132}
!155 = !{!33, !20, i64 40}
!156 = !{!33, !20, i64 1584}
!157 = !{!33, !20, i64 48}
!158 = !{!33, !20, i64 56}
!159 = distinct !{!159, !90}
!160 = !{!29, !20, i64 5152}
!161 = !{!29, !20, i64 5144}
!162 = !{!73, !11, i64 16}
!163 = !{!73, !11, i64 20}
!164 = !{!73, !35, i64 56}
!165 = !{!33, !11, i64 1552}
!166 = !{!33, !11, i64 1332}
!167 = !{!33, !11, i64 1392}
!168 = !{!33, !11, i64 1376}
!169 = distinct !{!169, !90}
!170 = distinct !{!170, !90}
!171 = distinct !{!171, !90}
!172 = distinct !{!172, !90}
!173 = distinct !{!173, !90}
!174 = distinct !{!174, !90}
!175 = distinct !{!175, !90}
!176 = distinct !{!176, !90}
!177 = distinct !{!177, !90}
!178 = distinct !{!178, !90}
!179 = distinct !{!179, !90}
!180 = distinct !{!180, !90}
!181 = distinct !{!181, !90}
!182 = distinct !{!182, !90}
!183 = distinct !{!183, !90}
!184 = distinct !{!184, !90}
!185 = !{!186, !11, i64 1148}
!186 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !6, i64 40, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !6, i64 108, !11, i64 1132, !11, i64 1136, !11, i64 1140, !11, i64 1144, !11, i64 1148, !11, i64 1152, !11, i64 1156, !11, i64 1160, !11, i64 1164, !11, i64 1168, !11, i64 1172, !11, i64 1176, !11, i64 1180, !187, i64 1184}
!187 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !188, i64 84, !11, i64 496, !188, i64 500, !11, i64 912, !11, i64 916, !11, i64 920, !11, i64 924, !11, i64 928, !11, i64 932, !11, i64 936, !11, i64 940, !11, i64 944}
!188 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !6, i64 12, !6, i64 140, !6, i64 268, !11, i64 396, !11, i64 400, !11, i64 404, !11, i64 408}
!189 = !{!33, !11, i64 1464}
!190 = !{!33, !11, i64 1468}
!191 = !{!33, !20, i64 1416}
!192 = !{!33, !20, i64 1408}
!193 = distinct !{!193, !90}
!194 = distinct !{!194, !90}
