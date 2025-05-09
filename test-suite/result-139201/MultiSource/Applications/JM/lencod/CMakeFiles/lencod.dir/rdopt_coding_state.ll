; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/rdopt_coding_state.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/rdopt_coding_state.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.CSobj = type { i32, ptr, ptr, i32, ptr, ptr, [8 x i32], [2 x [4 x [4 x [2 x i32]]]], i64 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x ptr], i32, float, float, float }
%struct.macroblock = type { i32, i32, i32, [2 x i32], i32, [8 x i32], ptr, ptr, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i8], [16 x i8], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, [3 x [2 x i32]] }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [22 x i8] c"init_coding_state: cs\00", align 1
@input = external global ptr, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"init_coding_state: cs->encenv\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"init_coding_state: cs->bitstream\00", align 1
@img = external global ptr, align 8
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
define dso_local void @delete_coding_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.CSobj, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.CSobj, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  call void @free(ptr noundef %13) #5
  br label %14

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.CSobj, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.CSobj, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  call void @free(ptr noundef %22) #5
  br label %23

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %2, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.CSobj, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  call void @delete_contexts_MotionInfo(ptr noundef %26)
  %27 = load ptr, ptr %2, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.CSobj, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  call void @delete_contexts_TextureInfo(ptr noundef %29)
  %30 = load ptr, ptr %2, align 8, !tbaa !3
  call void @free(ptr noundef %30) #5
  store ptr null, ptr %2, align 8, !tbaa !3
  br label %31

31:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

declare void @delete_contexts_MotionInfo(ptr noundef) #1

declare void @delete_contexts_TextureInfo(ptr noundef) #1

; Function Attrs: nounwind
define dso_local ptr @create_coding_state() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #5
  %2 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 344) #6
  store ptr %2, ptr %1, align 8, !tbaa !3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str)
  br label %5

5:                                                ; preds = %4, %0
  %6 = load ptr, ptr @input, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.InputParameters, ptr %6, i32 0, i32 76
  %8 = load i32, ptr %7, align 8, !tbaa !14
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 3
  %12 = load ptr, ptr %1, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.CSobj, ptr %12, i32 0, i32 0
  store i32 %11, ptr %13, align 8, !tbaa !19
  %14 = load ptr, ptr @input, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.InputParameters, ptr %14, i32 0, i32 74
  %16 = load i32, ptr %15, align 8, !tbaa !20
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load ptr, ptr %1, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.CSobj, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !19
  %22 = sext i32 %21 to i64
  %23 = call noalias ptr @calloc(i64 noundef %22, i64 noundef 48) #6
  %24 = load ptr, ptr %1, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.CSobj, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !7
  %26 = icmp eq ptr %23, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  call void @no_mem_exit(ptr noundef @.str.1)
  br label %28

28:                                               ; preds = %27, %18
  br label %32

29:                                               ; preds = %5
  %30 = load ptr, ptr %1, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.CSobj, ptr %30, i32 0, i32 1
  store ptr null, ptr %31, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %29, %28
  %33 = load ptr, ptr %1, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.CSobj, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !19
  %36 = sext i32 %35 to i64
  %37 = call noalias ptr @calloc(i64 noundef %36, i64 noundef 48) #6
  %38 = load ptr, ptr %1, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.CSobj, ptr %38, i32 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !11
  %40 = icmp eq ptr %37, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  call void @no_mem_exit(ptr noundef @.str.2)
  br label %42

42:                                               ; preds = %41, %32
  %43 = load ptr, ptr @input, align 8, !tbaa !3
  %44 = getelementptr inbounds nuw %struct.InputParameters, ptr %43, i32 0, i32 74
  %45 = load i32, ptr %44, align 8, !tbaa !20
  %46 = load ptr, ptr %1, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.CSobj, ptr %46, i32 0, i32 3
  store i32 %45, ptr %47, align 8, !tbaa !21
  %48 = load ptr, ptr %1, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.CSobj, ptr %48, i32 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !21
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = call ptr @create_contexts_MotionInfo()
  %54 = load ptr, ptr %1, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.CSobj, ptr %54, i32 0, i32 4
  store ptr %53, ptr %55, align 8, !tbaa !12
  %56 = call ptr @create_contexts_TextureInfo()
  %57 = load ptr, ptr %1, align 8, !tbaa !3
  %58 = getelementptr inbounds nuw %struct.CSobj, ptr %57, i32 0, i32 5
  store ptr %56, ptr %58, align 8, !tbaa !13
  br label %64

59:                                               ; preds = %42
  %60 = load ptr, ptr %1, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.CSobj, ptr %60, i32 0, i32 4
  store ptr null, ptr %61, align 8, !tbaa !12
  %62 = load ptr, ptr %1, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.CSobj, ptr %62, i32 0, i32 5
  store ptr null, ptr %63, align 8, !tbaa !13
  br label %64

64:                                               ; preds = %59, %52
  %65 = load ptr, ptr %1, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #5
  ret ptr %65
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

declare void @no_mem_exit(ptr noundef) #1

declare ptr @create_contexts_MotionInfo() #1

declare ptr @create_contexts_TextureInfo() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nounwind
define dso_local void @store_coding_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  %8 = load ptr, ptr @img, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.ImageParameters, ptr %8, i32 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds nuw %struct.Picture, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.CSobj, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !19
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 1, %14 ], [ %18, %15 ]
  store i32 %20, ptr %4, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #5
  %21 = load ptr, ptr @img, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 60
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  store ptr %23, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5
  %24 = load ptr, ptr @img, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 61
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = load ptr, ptr @img, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %30
  store ptr %31, ptr %6, align 8, !tbaa !45
  %32 = load ptr, ptr @input, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.InputParameters, ptr %32, i32 0, i32 113
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  store i32 1, ptr %7, align 4
  br label %133

37:                                               ; preds = %19
  %38 = load ptr, ptr %2, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.CSobj, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !21
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %91

42:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !tbaa !41
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i32, ptr %3, align 4, !tbaa !41
  %45 = load i32, ptr %4, align 4, !tbaa !41
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load ptr, ptr %2, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.CSobj, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !7
  %51 = load i32, ptr %3, align 4, !tbaa !41
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.EncodingEnvironment, ptr %50, i64 %52
  %54 = load ptr, ptr %5, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.Slice, ptr %54, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = load i32, ptr %3, align 4, !tbaa !41
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.datapartition, ptr %56, i64 %58
  %60 = getelementptr inbounds nuw %struct.datapartition, ptr %59, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %53, ptr align 8 %60, i64 48, i1 false), !tbaa.struct !50
  %61 = load ptr, ptr %2, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.CSobj, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = load i32, ptr %3, align 4, !tbaa !41
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.Bitstream, ptr %63, i64 %65
  %67 = load ptr, ptr %5, align 8, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.Slice, ptr %67, i32 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !47
  %70 = load i32, ptr %3, align 4, !tbaa !41
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.datapartition, ptr %69, i64 %71
  %73 = getelementptr inbounds nuw %struct.datapartition, ptr %72, i32 0, i32 0
  %74 = load ptr, ptr %73, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %66, ptr align 8 %74, i64 48, i1 false), !tbaa.struct !56
  br label %75

75:                                               ; preds = %47
  %76 = load i32, ptr %3, align 4, !tbaa !41
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %3, align 4, !tbaa !41
  br label %43, !llvm.loop !58

78:                                               ; preds = %43
  %79 = load ptr, ptr %2, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.CSobj, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !12
  %82 = load ptr, ptr %5, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.Slice, ptr %82, i32 0, i32 7
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %81, ptr align 8 %84, i64 1504, i1 false), !tbaa.struct !61
  %85 = load ptr, ptr %2, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.CSobj, ptr %85, i32 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !13
  %88 = load ptr, ptr %5, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.Slice, ptr %88, i32 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %87, ptr align 8 %90, i64 12128, i1 false), !tbaa.struct !63
  br label %115

91:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !tbaa !41
  br label %92

92:                                               ; preds = %111, %91
  %93 = load i32, ptr %3, align 4, !tbaa !41
  %94 = load i32, ptr %4, align 4, !tbaa !41
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load ptr, ptr %2, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.CSobj, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !11
  %100 = load i32, ptr %3, align 4, !tbaa !41
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.Bitstream, ptr %99, i64 %101
  %103 = load ptr, ptr %5, align 8, !tbaa !3
  %104 = getelementptr inbounds nuw %struct.Slice, ptr %103, i32 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !47
  %106 = load i32, ptr %3, align 4, !tbaa !41
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.datapartition, ptr %105, i64 %107
  %109 = getelementptr inbounds nuw %struct.datapartition, ptr %108, i32 0, i32 0
  %110 = load ptr, ptr %109, align 8, !tbaa !53
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %102, ptr align 8 %110, i64 48, i1 false), !tbaa.struct !56
  br label %111

111:                                              ; preds = %96
  %112 = load i32, ptr %3, align 4, !tbaa !41
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %3, align 4, !tbaa !41
  br label %92, !llvm.loop !64

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114, %78
  %116 = load ptr, ptr %2, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.CSobj, ptr %116, i32 0, i32 6
  %118 = getelementptr inbounds [8 x i32], ptr %117, i64 0, i64 0
  %119 = load ptr, ptr %6, align 8, !tbaa !45
  %120 = getelementptr inbounds nuw %struct.macroblock, ptr %119, i32 0, i32 5
  %121 = getelementptr inbounds [8 x i32], ptr %120, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %118, ptr align 8 %121, i64 32, i1 false)
  %122 = load ptr, ptr %2, align 8, !tbaa !3
  %123 = getelementptr inbounds nuw %struct.CSobj, ptr %122, i32 0, i32 7
  %124 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], ptr %123, i64 0, i64 0
  %125 = load ptr, ptr %6, align 8, !tbaa !45
  %126 = getelementptr inbounds nuw %struct.macroblock, ptr %125, i32 0, i32 9
  %127 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], ptr %126, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %124, ptr align 4 %127, i64 256, i1 false)
  %128 = load ptr, ptr %6, align 8, !tbaa !45
  %129 = getelementptr inbounds nuw %struct.macroblock, ptr %128, i32 0, i32 16
  %130 = load i64, ptr %129, align 8, !tbaa !65
  %131 = load ptr, ptr %2, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct.CSobj, ptr %131, i32 0, i32 8
  store i64 %130, ptr %132, align 8, !tbaa !67
  store i32 0, ptr %7, align 4
  br label %133

133:                                              ; preds = %115, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  %134 = load i32, ptr %7, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %133, %133
  ret void

136:                                              ; preds = %133
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local void @reset_coding_state(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #5
  %8 = load ptr, ptr @img, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.ImageParameters, ptr %8, i32 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds nuw %struct.Picture, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %19

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.CSobj, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !19
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ 1, %14 ], [ %18, %15 ]
  store i32 %20, ptr %4, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #5
  %21 = load ptr, ptr @img, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 60
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  store ptr %23, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #5
  %24 = load ptr, ptr @img, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 61
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = load ptr, ptr @img, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !44
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.macroblock, ptr %26, i64 %30
  store ptr %31, ptr %6, align 8, !tbaa !45
  %32 = load ptr, ptr @input, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.InputParameters, ptr %32, i32 0, i32 113
  %34 = load i32, ptr %33, align 8, !tbaa !46
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %19
  store i32 1, ptr %7, align 4
  br label %133

37:                                               ; preds = %19
  %38 = load ptr, ptr %2, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.CSobj, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !21
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %91

42:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !tbaa !41
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i32, ptr %3, align 4, !tbaa !41
  %45 = load i32, ptr %4, align 4, !tbaa !41
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.Slice, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = load i32, ptr %3, align 4, !tbaa !41
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.datapartition, ptr %50, i64 %52
  %54 = getelementptr inbounds nuw %struct.datapartition, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %2, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.CSobj, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  %58 = load i32, ptr %3, align 4, !tbaa !41
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.EncodingEnvironment, ptr %57, i64 %59
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %54, ptr align 8 %60, i64 48, i1 false), !tbaa.struct !50
  %61 = load ptr, ptr %5, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Slice, ptr %61, i32 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = load i32, ptr %3, align 4, !tbaa !41
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.datapartition, ptr %63, i64 %65
  %67 = getelementptr inbounds nuw %struct.datapartition, ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8, !tbaa !53
  %69 = load ptr, ptr %2, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw %struct.CSobj, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = load i32, ptr %3, align 4, !tbaa !41
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.Bitstream, ptr %71, i64 %73
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %68, ptr align 8 %74, i64 48, i1 false), !tbaa.struct !56
  br label %75

75:                                               ; preds = %47
  %76 = load i32, ptr %3, align 4, !tbaa !41
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %3, align 4, !tbaa !41
  br label %43, !llvm.loop !68

78:                                               ; preds = %43
  %79 = load ptr, ptr %5, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.Slice, ptr %79, i32 0, i32 7
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = load ptr, ptr %2, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.CSobj, ptr %82, i32 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %81, ptr align 8 %84, i64 1504, i1 false), !tbaa.struct !61
  %85 = load ptr, ptr %5, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.Slice, ptr %85, i32 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !62
  %88 = load ptr, ptr %2, align 8, !tbaa !3
  %89 = getelementptr inbounds nuw %struct.CSobj, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !13
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %87, ptr align 8 %90, i64 12128, i1 false), !tbaa.struct !63
  br label %115

91:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !tbaa !41
  br label %92

92:                                               ; preds = %111, %91
  %93 = load i32, ptr %3, align 4, !tbaa !41
  %94 = load i32, ptr %4, align 4, !tbaa !41
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %92
  %97 = load ptr, ptr %5, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.Slice, ptr %97, i32 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !47
  %100 = load i32, ptr %3, align 4, !tbaa !41
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.datapartition, ptr %99, i64 %101
  %103 = getelementptr inbounds nuw %struct.datapartition, ptr %102, i32 0, i32 0
  %104 = load ptr, ptr %103, align 8, !tbaa !53
  %105 = load ptr, ptr %2, align 8, !tbaa !3
  %106 = getelementptr inbounds nuw %struct.CSobj, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  %108 = load i32, ptr %3, align 4, !tbaa !41
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.Bitstream, ptr %107, i64 %109
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %104, ptr align 8 %110, i64 48, i1 false), !tbaa.struct !56
  br label %111

111:                                              ; preds = %96
  %112 = load i32, ptr %3, align 4, !tbaa !41
  %113 = add nsw i32 %112, 1
  store i32 %113, ptr %3, align 4, !tbaa !41
  br label %92, !llvm.loop !69

114:                                              ; preds = %92
  br label %115

115:                                              ; preds = %114, %78
  %116 = load ptr, ptr %6, align 8, !tbaa !45
  %117 = getelementptr inbounds nuw %struct.macroblock, ptr %116, i32 0, i32 5
  %118 = getelementptr inbounds [8 x i32], ptr %117, i64 0, i64 0
  %119 = load ptr, ptr %2, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct.CSobj, ptr %119, i32 0, i32 6
  %121 = getelementptr inbounds [8 x i32], ptr %120, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %118, ptr align 8 %121, i64 32, i1 false)
  %122 = load ptr, ptr %6, align 8, !tbaa !45
  %123 = getelementptr inbounds nuw %struct.macroblock, ptr %122, i32 0, i32 9
  %124 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], ptr %123, i64 0, i64 0
  %125 = load ptr, ptr %2, align 8, !tbaa !3
  %126 = getelementptr inbounds nuw %struct.CSobj, ptr %125, i32 0, i32 7
  %127 = getelementptr inbounds [2 x [4 x [4 x [2 x i32]]]], ptr %126, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %124, ptr align 8 %127, i64 256, i1 false)
  %128 = load ptr, ptr %2, align 8, !tbaa !3
  %129 = getelementptr inbounds nuw %struct.CSobj, ptr %128, i32 0, i32 8
  %130 = load i64, ptr %129, align 8, !tbaa !67
  %131 = load ptr, ptr %6, align 8, !tbaa !45
  %132 = getelementptr inbounds nuw %struct.macroblock, ptr %131, i32 0, i32 16
  store i64 %130, ptr %132, align 8, !tbaa !65
  store i32 0, ptr %7, align 4
  br label %133

133:                                              ; preds = %115, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #5
  %134 = load i32, ptr %7, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %133, %133
  ret void

136:                                              ; preds = %133
  unreachable
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"", !9, i64 0, !4, i64 8, !4, i64 16, !9, i64 24, !4, i64 32, !4, i64 40, !5, i64 48, !5, i64 80, !10, i64 336}
!9 = !{!"int", !5, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = !{!8, !4, i64 16}
!12 = !{!8, !4, i64 32}
!13 = !{!8, !4, i64 40}
!14 = !{!15, !9, i64 4016}
!15 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !9, i64 1560, !9, i64 1564, !9, i64 1568, !9, i64 1572, !9, i64 1576, !9, i64 1580, !5, i64 1584, !9, i64 2084, !9, i64 2088, !9, i64 2092, !9, i64 2096, !9, i64 2100, !9, i64 2104, !9, i64 2108, !9, i64 2112, !9, i64 2116, !9, i64 2120, !9, i64 2124, !9, i64 2128, !9, i64 2132, !9, i64 2136, !9, i64 2140, !9, i64 2144, !9, i64 2148, !9, i64 2152, !9, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !9, i64 2928, !9, i64 2932, !9, i64 2936, !9, i64 2940, !9, i64 2944, !9, i64 2948, !9, i64 2952, !9, i64 2956, !9, i64 2960, !9, i64 2964, !9, i64 2968, !9, i64 2972, !5, i64 2976, !9, i64 4000, !9, i64 4004, !9, i64 4008, !9, i64 4012, !9, i64 4016, !9, i64 4020, !9, i64 4024, !9, i64 4028, !9, i64 4032, !9, i64 4036, !9, i64 4040, !9, i64 4044, !9, i64 4048, !9, i64 4052, !9, i64 4056, !9, i64 4060, !9, i64 4064, !9, i64 4068, !9, i64 4072, !9, i64 4076, !16, i64 4080, !9, i64 4088, !9, i64 4092, !9, i64 4096, !9, i64 4100, !9, i64 4104, !9, i64 4108, !9, i64 4112, !9, i64 4116, !9, i64 4120, !9, i64 4124, !9, i64 4128, !9, i64 4132, !9, i64 4136, !9, i64 4140, !9, i64 4144, !9, i64 4148, !9, i64 4152, !9, i64 4156, !9, i64 4160, !9, i64 4164, !9, i64 4168, !9, i64 4172, !9, i64 4176, !9, i64 4180, !9, i64 4184, !9, i64 4188, !5, i64 4192, !5, i64 4448, !9, i64 4704, !9, i64 4708, !9, i64 4712, !9, i64 4716, !9, i64 4720, !9, i64 4724, !9, i64 4728, !9, i64 4732, !9, i64 4736, !9, i64 4740, !9, i64 4744, !9, i64 4748, !9, i64 4752, !9, i64 4756, !9, i64 4760, !9, i64 4764, !9, i64 4768, !9, i64 4772, !5, i64 4776, !9, i64 5032, !9, i64 5036, !17, i64 5040, !17, i64 5048, !18, i64 5056, !17, i64 5064, !9, i64 5072, !9, i64 5076, !9, i64 5080, !9, i64 5084, !9, i64 5088, !9, i64 5092, !9, i64 5096, !9, i64 5100, !9, i64 5104, !9, i64 5108, !9, i64 5112, !9, i64 5116, !9, i64 5120, !9, i64 5124, !9, i64 5128, !9, i64 5132, !9, i64 5136, !16, i64 5144, !16, i64 5152, !16, i64 5160, !5, i64 5168, !9, i64 5208, !5, i64 5212, !9, i64 5244, !9, i64 5248, !9, i64 5252, !9, i64 5256, !9, i64 5260, !9, i64 5264, !9, i64 5268, !9, i64 5272, !9, i64 5276, !9, i64 5280, !9, i64 5284, !9, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !9, i64 5648, !9, i64 5652, !9, i64 5656, !9, i64 5660, !5, i64 5664, !5, i64 5704, !9, i64 5744, !9, i64 5748, !9, i64 5752, !9, i64 5756, !9, i64 5760, !9, i64 5764, !9, i64 5768, !9, i64 5772, !9, i64 5776, !5, i64 5780, !9, i64 5792}
!16 = !{!"double", !5, i64 0}
!17 = !{!"p1 int", !4, i64 0}
!18 = !{!"p1 omnipotent char", !4, i64 0}
!19 = !{!8, !9, i64 0}
!20 = !{!15, !9, i64 4008}
!21 = !{!8, !9, i64 24}
!22 = !{!23, !4, i64 14208}
!23 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !24, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !25, i64 128, !25, i64 136, !9, i64 144, !27, i64 152, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !29, i64 14160, !27, i64 14168, !27, i64 14176, !27, i64 14184, !29, i64 14192, !29, i64 14200, !4, i64 14208, !4, i64 14216, !31, i64 14224, !17, i64 14232, !17, i64 14240, !9, i64 14248, !9, i64 14252, !9, i64 14256, !9, i64 14260, !5, i64 14264, !9, i64 14328, !9, i64 14332, !9, i64 14336, !9, i64 14340, !9, i64 14344, !16, i64 14352, !9, i64 14360, !9, i64 14364, !9, i64 14368, !9, i64 14372, !32, i64 14376, !32, i64 14384, !32, i64 14392, !32, i64 14400, !5, i64 14408, !9, i64 14440, !9, i64 14444, !9, i64 14448, !9, i64 14452, !9, i64 14456, !9, i64 14460, !9, i64 14464, !9, i64 14468, !5, i64 14472, !9, i64 15240, !9, i64 15244, !9, i64 15248, !9, i64 15252, !9, i64 15256, !9, i64 15260, !9, i64 15264, !9, i64 15268, !9, i64 15272, !9, i64 15276, !9, i64 15280, !9, i64 15284, !9, i64 15288, !5, i64 15292, !9, i64 15296, !9, i64 15300, !5, i64 15304, !9, i64 15312, !9, i64 15316, !9, i64 15320, !9, i64 15324, !9, i64 15328, !9, i64 15332, !9, i64 15336, !9, i64 15340, !9, i64 15344, !9, i64 15348, !9, i64 15352, !9, i64 15356, !9, i64 15360, !9, i64 15364, !9, i64 15368, !9, i64 15372, !35, i64 15376, !9, i64 15384, !9, i64 15388, !9, i64 15392, !9, i64 15396, !9, i64 15400, !9, i64 15404, !9, i64 15408, !9, i64 15412, !9, i64 15416, !9, i64 15420, !9, i64 15424, !9, i64 15428, !9, i64 15432, !9, i64 15436, !9, i64 15440, !9, i64 15444, !9, i64 15448, !9, i64 15452, !9, i64 15456, !9, i64 15460, !9, i64 15464, !9, i64 15468, !9, i64 15472, !36, i64 15480, !37, i64 15488, !27, i64 15496, !36, i64 15504, !9, i64 15512, !9, i64 15516, !9, i64 15520, !9, i64 15524, !9, i64 15528, !9, i64 15532, !9, i64 15536, !9, i64 15540, !9, i64 15544, !9, i64 15548, !5, i64 15552, !5, i64 15576, !9, i64 15584, !9, i64 15588, !38, i64 15592, !9, i64 15596, !9, i64 15600, !9, i64 15604, !9, i64 15608, !9, i64 15612}
!24 = !{!"float", !5, i64 0}
!25 = !{!"p2 omnipotent char", !26, i64 0}
!26 = !{!"any p2 pointer", !4, i64 0}
!27 = !{!"p3 int", !28, i64 0}
!28 = !{!"any p3 pointer", !26, i64 0}
!29 = !{!"p4 int", !30, i64 0}
!30 = !{!"any p4 pointer", !28, i64 0}
!31 = !{!"p1 _ZTS10macroblock", !4, i64 0}
!32 = !{!"p6 short", !33, i64 0}
!33 = !{!"any p6 pointer", !34, i64 0}
!34 = !{!"any p5 pointer", !30, i64 0}
!35 = !{!"p1 _ZTS18DecRefPicMarking_s", !4, i64 0}
!36 = !{!"p2 double", !26, i64 0}
!37 = !{!"p3 double", !28, i64 0}
!38 = !{!"short", !5, i64 0}
!39 = !{!40, !9, i64 4}
!40 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8, !9, i64 808, !24, i64 812, !24, i64 816, !24, i64 820}
!41 = !{!9, !9, i64 0}
!42 = !{!23, !4, i64 14216}
!43 = !{!23, !31, i64 14224}
!44 = !{!23, !9, i64 12}
!45 = !{!31, !31, i64 0}
!46 = !{!15, !9, i64 4168}
!47 = !{!48, !49, i64 24}
!48 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !49, i64 24, !4, i64 32, !4, i64 40, !9, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !9, i64 80, !17, i64 88, !17, i64 96, !17, i64 104, !4, i64 112, !5, i64 120}
!49 = !{!"p1 _ZTS13datapartition", !4, i64 0}
!50 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 4, !41, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 24, i64 8, !51, i64 32, i64 8, !52, i64 40, i64 4, !41, i64 44, i64 4, !41}
!51 = !{!18, !18, i64 0}
!52 = !{!17, !17, i64 0}
!53 = !{!54, !4, i64 0}
!54 = !{!"datapartition", !4, i64 0, !55, i64 8, !55, i64 56}
!55 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !18, i64 24, !17, i64 32, !9, i64 40, !9, i64 44}
!56 = !{i64 0, i64 4, !41, i64 4, i64 4, !41, i64 8, i64 1, !57, i64 12, i64 4, !41, i64 16, i64 4, !41, i64 20, i64 1, !57, i64 21, i64 1, !57, i64 24, i64 4, !41, i64 28, i64 4, !41, i64 32, i64 8, !51, i64 40, i64 4, !41}
!57 = !{!5, !5, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!48, !4, i64 32}
!61 = !{i64 0, i64 528, !57, i64 528, i64 288, !57, i64 816, i64 320, !57, i64 1136, i64 192, !57, i64 1328, i64 64, !57, i64 1392, i64 64, !57, i64 1456, i64 48, !57}
!62 = !{!48, !4, i64 40}
!63 = !{i64 0, i64 32, !57, i64 32, i64 64, !57, i64 96, i64 192, !57, i64 288, i64 640, !57, i64 928, i64 2400, !57, i64 3328, i64 2400, !57, i64 5728, i64 800, !57, i64 6528, i64 800, !57, i64 7328, i64 2400, !57, i64 9728, i64 2400, !57}
!64 = distinct !{!64, !59}
!65 = !{!66, !10, i64 408}
!66 = !{!"macroblock", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 12, !9, i64 20, !5, i64 24, !31, i64 56, !31, i64 64, !9, i64 72, !5, i64 76, !5, i64 332, !5, i64 348, !9, i64 364, !10, i64 368, !5, i64 376, !5, i64 392, !10, i64 408, !9, i64 416, !9, i64 420, !9, i64 424, !9, i64 428, !9, i64 432, !9, i64 436, !9, i64 440, !9, i64 444, !9, i64 448, !9, i64 452, !9, i64 456, !9, i64 460, !9, i64 464, !9, i64 468, !9, i64 472, !9, i64 476, !38, i64 480, !16, i64 488, !9, i64 496, !9, i64 500, !9, i64 504, !9, i64 508, !9, i64 512, !9, i64 516, !9, i64 520, !9, i64 524, !9, i64 528}
!67 = !{!8, !10, i64 336}
!68 = distinct !{!68, !59}
!69 = distinct !{!69, !59}
