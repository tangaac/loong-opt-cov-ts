; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/slice.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/slice.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, [3 x [2 x i32]] }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.Picture = type { i32, i32, [100 x ptr], i32, float, float, float }
%struct.datapartition = type { ptr, %struct.EncodingEnvironment, %struct.EncodingEnvironment }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, ptr, ptr, i32, i32 }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, i32 }
%struct.StatParameters = type { i32, i32, float, float, i64, i64, i32, i32, i32, [5 x [2 x i32]], [5 x [15 x i32]], [5 x [15 x i32]], [4 x i32], i32, ptr, ptr, i64, i64, i64, float, float, float, [5 x [15 x i64]], [5 x [15 x i64]], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], [5 x i64], i32, i32, ptr, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t }
%struct.vui_seq_parameters_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.rc_generic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.GOP_DATA = type { i32, i32, i32, i32, i32, i32 }

@img = external global ptr, align 8
@input = external global ptr, align 8
@terminate_slice.MbWidthC = internal global [4 x i32] [i32 0, i32 8, i32 8, i32 16], align 4
@terminate_slice.MbHeightC = internal global [4 x i32] [i32 0, i32 8, i32 16, i32 16], align 4
@stats = external global ptr, align 8
@active_sps = common dso_local global ptr null, align 8
@.str = private unnamed_addr constant [28 x i8] c"CABAC stuffing words = %6d\0A\00", align 1
@Bytes_After_Header = common dso_local global i32 0, align 4
@generic_RC = common dso_local global ptr null, align 8
@rddata_top_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rdopt = common dso_local global ptr null, align 8
@encode_one_macroblock = common dso_local global ptr null, align 8
@errortext = common dso_local global [300 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Error encoding first MB with specified parameter, bits of current MB may be too big\00", align 1
@quadratic_RC_init = common dso_local global ptr null, align 8
@quadratic_RC = common dso_local global ptr null, align 8
@generic_RC_init = common dso_local global ptr null, align 8
@rddata_bot_frame_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@quadratic_RC_best = common dso_local global ptr null, align 8
@generic_RC_best = common dso_local global ptr null, align 8
@rddata_top_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@rddata_bot_field_mb = common dso_local global %struct.RD_DATA zeroinitializer, align 8
@MBPairIsField = common dso_local global i32 0, align 4
@log2_max_frame_num_minus4 = common dso_local global i32 0, align 4
@dpb = external global %struct.decoded_picture_buffer, align 8
@enc_picture = external global ptr, align 8
@gop_structure = common dso_local global ptr null, align 8
@QP2QUANT = external constant [40 x i32], align 4
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
@log2_max_pic_order_cnt_lsb_minus4 = common dso_local global i32 0, align 4
@me_tot_time = common dso_local global i64 0, align 8
@me_time = common dso_local global i64 0, align 8
@active_pps = common dso_local global ptr null, align 8
@dsr_new_search_range = common dso_local global i32 0, align 4
@mb_adaptive = common dso_local global i32 0, align 4
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
@p_stat = common dso_local global ptr null, align 8
@p_log = common dso_local global ptr null, align 8
@p_trace = common dso_local global ptr null, align 8
@p_in = common dso_local global i32 0, align 4
@p_dec = common dso_local global i32 0, align 4
@mb16x16_cost_frame = common dso_local global ptr null, align 8
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
@diffy = common dso_local global [16 x [16 x i32]] zeroinitializer, align 4
@qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@delta_qp_mbaff = common dso_local global [2 x [2 x i32]] zeroinitializer, align 4
@updateQP = common dso_local global ptr null, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"Too many slices per picture, increase MAXSLICEPERPICTURE in global.h.\00", align 1
@listXsize = external global [6 x i32], align 4
@listX = external global [6 x ptr], align 8
@enc_frame_picture2 = external global ptr, align 8
@Co_located = external global ptr, align 8
@EPZSCo_located = external global ptr, align 8
@writeMB_typeInfo = external global ptr, align 8
@writeIntraPredMode = external global ptr, align 8
@writeB8_typeInfo = external global ptr, align 8
@writeRefFrame = external global [6 x ptr], align 8
@writeMVD = external global ptr, align 8
@writeCBP = external global ptr, align 8
@writeDquant = external global ptr, align 8
@writeCIPredMode = external global ptr, align 8
@writeFieldModeInfo = external global ptr, align 8
@writeMB_transform_size = external global ptr, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"malloc_slice: slice structure\00", align 1
@assignSE2partition_NoDP = external global [18 x i32], align 4
@assignSE2partition = external global [2 x ptr], align 8
@assignSE2partition_DP = external global [18 x i32], align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"malloc_slice: partArr\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"malloc_slice: Bitstream\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"malloc_slice: StreamBuffer\00", align 1

; Function Attrs: nounwind
define dso_local void @init_ref_pic_list_reordering() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #6
  %2 = load ptr, ptr @img, align 8, !tbaa !3
  %3 = getelementptr inbounds nuw %struct.ImageParameters, ptr %2, i32 0, i32 60
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  store ptr %4, ptr %1, align 8, !tbaa !3
  %5 = load ptr, ptr %1, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.Slice, ptr %5, i32 0, i32 9
  store i32 0, ptr %6, align 8, !tbaa !27
  %7 = load ptr, ptr %1, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.Slice, ptr %7, i32 0, i32 13
  store i32 0, ptr %8, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @start_slice() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #6
  %7 = load ptr, ptr @img, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.ImageParameters, ptr %7, i32 0, i32 60
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  store ptr %9, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6
  store i32 0, ptr %4, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %10 = load ptr, ptr @input, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.InputParameters, ptr %10, i32 0, i32 76
  %12 = load i32, ptr %11, align 8, !tbaa !32
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 3
  store i32 %15, ptr %6, align 4, !tbaa !31
  %16 = load ptr, ptr @img, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.ImageParameters, ptr %16, i32 0, i32 59
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = getelementptr inbounds nuw %struct.Picture, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !36
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  store i32 1, ptr %6, align 4, !tbaa !31
  br label %23

23:                                               ; preds = %22, %0
  %24 = load ptr, ptr @img, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 64
  %26 = load i32, ptr %25, align 8, !tbaa !38
  call void @RTPUpdateTimestamp(i32 noundef signext %26)
  store i32 0, ptr %5, align 4, !tbaa !31
  br label %27

27:                                               ; preds = %86, %23
  %28 = load i32, ptr %5, align 4, !tbaa !31
  %29 = load i32, ptr %6, align 4, !tbaa !31
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.Slice, ptr %32, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !39
  %35 = load i32, ptr %5, align 4, !tbaa !31
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.datapartition, ptr %34, i64 %36
  %38 = getelementptr inbounds nuw %struct.datapartition, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  store ptr %39, ptr %3, align 8, !tbaa !3
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.Bitstream, ptr %40, i32 0, i32 10
  store i32 0, ptr %41, align 8, !tbaa !43
  %42 = load i32, ptr %5, align 4, !tbaa !31
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %31
  %45 = call signext i32 @SliceHeader(i32 noundef signext 0)
  %46 = load i32, ptr %4, align 4, !tbaa !31
  %47 = add nsw i32 %46, %45
  store i32 %47, ptr %4, align 4, !tbaa !31
  br label %53

48:                                               ; preds = %31
  %49 = load i32, ptr %5, align 4, !tbaa !31
  %50 = call signext i32 @Partition_BC_Header(i32 noundef signext %49)
  %51 = load i32, ptr %4, align 4, !tbaa !31
  %52 = add nsw i32 %51, %50
  store i32 %52, ptr %4, align 4, !tbaa !31
  br label %53

53:                                               ; preds = %48, %44
  %54 = load ptr, ptr @input, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.InputParameters, ptr %54, i32 0, i32 74
  %56 = load i32, ptr %55, align 8, !tbaa !45
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load ptr, ptr %2, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.Slice, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = load i32, ptr %5, align 4, !tbaa !31
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.datapartition, ptr %61, i64 %63
  %65 = getelementptr inbounds nuw %struct.datapartition, ptr %64, i32 0, i32 1
  store ptr %65, ptr %1, align 8, !tbaa !3
  %66 = load ptr, ptr %3, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.Bitstream, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !46
  %69 = icmp ne i32 %68, 8
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load ptr, ptr %3, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.Bitstream, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !46
  %74 = load i32, ptr %4, align 4, !tbaa !31
  %75 = add nsw i32 %74, %73
  store i32 %75, ptr %4, align 4, !tbaa !31
  br label %76

76:                                               ; preds = %70, %58
  %77 = load ptr, ptr %3, align 8, !tbaa !3
  call void @writeVlcByteAlign(ptr noundef %77)
  %78 = load ptr, ptr %1, align 8, !tbaa !3
  %79 = load ptr, ptr %3, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.Bitstream, ptr %79, i32 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !47
  %82 = load ptr, ptr %3, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.Bitstream, ptr %82, i32 0, i32 0
  call void @arienco_start_encoding(ptr noundef %78, ptr noundef %81, ptr noundef %83)
  call void @cabac_new_slice()
  br label %85

84:                                               ; preds = %53
  call void @CAVLC_init()
  br label %85

85:                                               ; preds = %84, %76
  br label %86

86:                                               ; preds = %85
  %87 = load i32, ptr %5, align 4, !tbaa !31
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %5, align 4, !tbaa !31
  br label %27, !llvm.loop !48

89:                                               ; preds = %27
  %90 = load ptr, ptr @input, align 8, !tbaa !3
  %91 = getelementptr inbounds nuw %struct.InputParameters, ptr %90, i32 0, i32 74
  %92 = load i32, ptr %91, align 8, !tbaa !45
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  call void @init_contexts()
  br label %95

95:                                               ; preds = %94, %89
  %96 = load i32, ptr %4, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #6
  ret i32 %96
}

declare void @RTPUpdateTimestamp(i32 noundef signext) #2

declare signext i32 @SliceHeader(...) #2

declare signext i32 @Partition_BC_Header(...) #2

declare void @writeVlcByteAlign(ptr noundef) #2

declare void @arienco_start_encoding(ptr noundef, ptr noundef, ptr noundef) #2

declare void @cabac_new_slice() #2

declare void @CAVLC_init() #2

declare void @init_contexts() #2

; Function Attrs: nounwind
define dso_local signext i32 @terminate_slice(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  %12 = load ptr, ptr @img, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.ImageParameters, ptr %12, i32 0, i32 60
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  store ptr %14, ptr %5, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  store i32 0, ptr %9, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  store i32 0, ptr %10, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  %15 = load ptr, ptr @input, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.InputParameters, ptr %15, i32 0, i32 74
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  call void @write_terminating_bit(i16 noundef signext 1)
  br label %20

20:                                               ; preds = %19, %1
  store i32 0, ptr %7, align 4, !tbaa !31
  br label %21

21:                                               ; preds = %180, %20
  %22 = load i32, ptr %7, align 4, !tbaa !31
  %23 = load ptr, ptr %5, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.Slice, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !50
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %183

27:                                               ; preds = %21
  %28 = load ptr, ptr %5, align 8, !tbaa !3
  %29 = getelementptr inbounds nuw %struct.Slice, ptr %28, i32 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = load i32, ptr %7, align 4, !tbaa !31
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.datapartition, ptr %30, i64 %32
  %34 = getelementptr inbounds nuw %struct.datapartition, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  store ptr %35, ptr %4, align 8, !tbaa !3
  %36 = load ptr, ptr @input, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.InputParameters, ptr %36, i32 0, i32 74
  %38 = load i32, ptr %37, align 8, !tbaa !45
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %27
  %41 = load ptr, ptr %4, align 8, !tbaa !3
  call void @SODBtoRBSP(ptr noundef %41)
  %42 = load ptr, ptr %4, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.Bitstream, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !51
  store i32 %44, ptr %8, align 4, !tbaa !31
  %45 = load ptr, ptr %4, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.Bitstream, ptr %45, i32 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !47
  %48 = load ptr, ptr %4, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.Bitstream, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8, !tbaa !51
  %51 = call signext i32 @RBSPtoEBSP(ptr noundef %47, i32 noundef signext 0, i32 noundef signext %50, i32 noundef signext 0)
  %52 = load ptr, ptr %4, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.Bitstream, ptr %52, i32 0, i32 0
  store i32 %51, ptr %53, align 8, !tbaa !51
  %54 = load ptr, ptr %4, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.Bitstream, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !51
  %57 = load i32, ptr %8, align 4, !tbaa !31
  %58 = sub nsw i32 %56, %57
  %59 = mul nsw i32 %58, 8
  %60 = load ptr, ptr @stats, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.StatParameters, ptr %60, i32 0, i32 33
  %62 = load ptr, ptr %61, align 8, !tbaa !52
  %63 = load i32, ptr %62, align 4, !tbaa !31
  %64 = add nsw i32 %63, %59
  store i32 %64, ptr %62, align 4, !tbaa !31
  br label %179

65:                                               ; preds = %27
  %66 = load ptr, ptr %5, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.Slice, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !39
  %69 = load i32, ptr %7, align 4, !tbaa !31
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.datapartition, ptr %68, i64 %70
  %72 = getelementptr inbounds nuw %struct.datapartition, ptr %71, i32 0, i32 1
  store ptr %72, ptr %6, align 8, !tbaa !3
  %73 = load ptr, ptr %6, align 8, !tbaa !3
  call void @arienco_done_encoding(ptr noundef %73)
  %74 = load ptr, ptr %6, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.EncodingEnvironment, ptr %74, i32 0, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !55
  %77 = load ptr, ptr %4, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.Bitstream, ptr %77, i32 0, i32 1
  store i32 %76, ptr %78, align 4, !tbaa !46
  %79 = load ptr, ptr %4, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.Bitstream, ptr %79, i32 0, i32 2
  store i8 0, ptr %80, align 8, !tbaa !56
  %81 = load ptr, ptr %4, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.Bitstream, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !51
  store i32 %83, ptr %3, align 4, !tbaa !31
  %84 = load ptr, ptr %4, align 8, !tbaa !3
  %85 = getelementptr inbounds nuw %struct.Bitstream, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 8, !tbaa !51
  %87 = load ptr, ptr @img, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.ImageParameters, ptr %87, i32 0, i32 170
  %89 = load i32, ptr %88, align 8, !tbaa !57
  %90 = add nsw i32 %89, %86
  store i32 %90, ptr %88, align 8, !tbaa !57
  %91 = load ptr, ptr %4, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.Bitstream, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !51
  store i32 %93, ptr %8, align 4, !tbaa !31
  %94 = load i32, ptr %2, align 4, !tbaa !31
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %65
  %97 = load i32, ptr %7, align 4, !tbaa !31
  %98 = load ptr, ptr %5, align 8, !tbaa !3
  %99 = getelementptr inbounds nuw %struct.Slice, ptr %98, i32 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !50
  %101 = sub nsw i32 %100, 1
  %102 = icmp eq i32 %97, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %96
  %104 = load ptr, ptr @img, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.ImageParameters, ptr %104, i32 0, i32 142
  %106 = load i32, ptr %105, align 4, !tbaa !58
  %107 = mul nsw i32 256, %106
  %108 = load ptr, ptr @active_sps, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %108, i32 0, i32 8
  %110 = load i32, ptr %109, align 4, !tbaa !59
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds nuw [4 x i32], ptr @terminate_slice.MbWidthC, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !31
  %114 = mul nsw i32 2, %113
  %115 = load ptr, ptr @active_sps, align 8, !tbaa !3
  %116 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %115, i32 0, i32 8
  %117 = load i32, ptr %116, align 4, !tbaa !59
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw [4 x i32], ptr @terminate_slice.MbHeightC, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !31
  %121 = mul nsw i32 %114, %120
  %122 = load ptr, ptr @img, align 8, !tbaa !3
  %123 = getelementptr inbounds nuw %struct.ImageParameters, ptr %122, i32 0, i32 143
  %124 = load i32, ptr %123, align 8, !tbaa !63
  %125 = mul nsw i32 %121, %124
  %126 = add nsw i32 %107, %125
  store i32 %126, ptr %11, align 4, !tbaa !31
  %127 = call signext i32 @get_pic_bin_count()
  %128 = mul nsw i32 96, %127
  %129 = load i32, ptr %11, align 4, !tbaa !31
  %130 = load ptr, ptr @img, align 8, !tbaa !3
  %131 = getelementptr inbounds nuw %struct.ImageParameters, ptr %130, i32 0, i32 119
  %132 = load i32, ptr %131, align 4, !tbaa !64
  %133 = mul nsw i32 %129, %132
  %134 = mul nsw i32 %133, 3
  %135 = sub nsw i32 %128, %134
  %136 = add nsw i32 %135, 1023
  %137 = sdiv i32 %136, 1024
  store i32 %137, ptr %9, align 4, !tbaa !31
  %138 = load i32, ptr %9, align 4, !tbaa !31
  %139 = load ptr, ptr @img, align 8, !tbaa !3
  %140 = getelementptr inbounds nuw %struct.ImageParameters, ptr %139, i32 0, i32 170
  %141 = load i32, ptr %140, align 8, !tbaa !57
  %142 = icmp sgt i32 %138, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %103
  %144 = load i32, ptr %9, align 4, !tbaa !31
  %145 = load ptr, ptr @img, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.ImageParameters, ptr %145, i32 0, i32 170
  %147 = load i32, ptr %146, align 8, !tbaa !57
  %148 = sub nsw i32 %144, %147
  store i32 %148, ptr %10, align 4, !tbaa !31
  %149 = load i32, ptr %10, align 4, !tbaa !31
  %150 = sdiv i32 %149, 3
  %151 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef signext %150)
  br label %152

152:                                              ; preds = %143, %103
  br label %153

153:                                              ; preds = %152, %96, %65
  %154 = load ptr, ptr %4, align 8, !tbaa !3
  %155 = getelementptr inbounds nuw %struct.Bitstream, ptr %154, i32 0, i32 9
  %156 = load ptr, ptr %155, align 8, !tbaa !47
  %157 = load ptr, ptr %4, align 8, !tbaa !3
  %158 = getelementptr inbounds nuw %struct.Bitstream, ptr %157, i32 0, i32 0
  %159 = load i32, ptr %158, align 8, !tbaa !51
  %160 = load ptr, ptr %4, align 8, !tbaa !3
  %161 = getelementptr inbounds nuw %struct.Bitstream, ptr %160, i32 0, i32 0
  %162 = load i32, ptr %161, align 8, !tbaa !51
  %163 = load i32, ptr %10, align 4, !tbaa !31
  %164 = add nsw i32 %162, %163
  %165 = call signext i32 @RBSPtoEBSP(ptr noundef %156, i32 noundef signext 0, i32 noundef signext %159, i32 noundef signext %164)
  %166 = load ptr, ptr %4, align 8, !tbaa !3
  %167 = getelementptr inbounds nuw %struct.Bitstream, ptr %166, i32 0, i32 0
  store i32 %165, ptr %167, align 8, !tbaa !51
  %168 = load ptr, ptr %4, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.Bitstream, ptr %168, i32 0, i32 0
  %170 = load i32, ptr %169, align 8, !tbaa !51
  %171 = load i32, ptr %8, align 4, !tbaa !31
  %172 = sub nsw i32 %170, %171
  %173 = mul nsw i32 %172, 8
  %174 = load ptr, ptr @stats, align 8, !tbaa !3
  %175 = getelementptr inbounds nuw %struct.StatParameters, ptr %174, i32 0, i32 33
  %176 = load ptr, ptr %175, align 8, !tbaa !52
  %177 = load i32, ptr %176, align 4, !tbaa !31
  %178 = add nsw i32 %177, %173
  store i32 %178, ptr %176, align 4, !tbaa !31
  br label %179

179:                                              ; preds = %153, %40
  br label %180

180:                                              ; preds = %179
  %181 = load i32, ptr %7, align 4, !tbaa !31
  %182 = add nsw i32 %181, 1
  store i32 %182, ptr %7, align 4, !tbaa !31
  br label %21, !llvm.loop !65

183:                                              ; preds = %21
  %184 = load ptr, ptr @input, align 8, !tbaa !3
  %185 = getelementptr inbounds nuw %struct.InputParameters, ptr %184, i32 0, i32 74
  %186 = load i32, ptr %185, align 8, !tbaa !45
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  call void @store_contexts()
  br label %189

189:                                              ; preds = %188, %183
  %190 = load ptr, ptr @img, align 8, !tbaa !3
  %191 = getelementptr inbounds nuw %struct.ImageParameters, ptr %190, i32 0, i32 5
  %192 = load i32, ptr %191, align 4, !tbaa !66
  %193 = icmp ne i32 %192, 2
  br i1 %193, label %199, label %194

194:                                              ; preds = %189
  %195 = load ptr, ptr @img, align 8, !tbaa !3
  %196 = getelementptr inbounds nuw %struct.ImageParameters, ptr %195, i32 0, i32 5
  %197 = load i32, ptr %196, align 4, !tbaa !66
  %198 = icmp ne i32 %197, 4
  br i1 %198, label %199, label %201

199:                                              ; preds = %194, %189
  %200 = load ptr, ptr %5, align 8, !tbaa !3
  call void @free_ref_pic_list_reordering_buffer(ptr noundef %200)
  br label %201

201:                                              ; preds = %199, %194
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret i32 0
}

declare void @write_terminating_bit(i16 noundef signext) #2

declare void @SODBtoRBSP(ptr noundef) #2

declare signext i32 @RBSPtoEBSP(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #2

declare void @arienco_done_encoding(ptr noundef) #2

declare signext i32 @get_pic_bin_count() #2

declare signext i32 @printf(ptr noundef, ...) #2

declare void @store_contexts() #2

declare void @free_ref_pic_list_reordering_buffer(ptr noundef) #2

; Function Attrs: nounwind
define dso_local signext i32 @encode_one_slice(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, ptr %4, align 4, !tbaa !31
  store ptr %1, ptr %5, align 8, !tbaa !3
  store i32 %2, ptr %6, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  store i32 0, ptr %7, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  store i32 0, ptr %10, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #6
  store double 0x7FEFFFFFFFFFFFFF, ptr %12, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #6
  store double 0x7FEFFFFFFFFFFFFF, ptr %13, align 8, !tbaa !67
  %14 = load ptr, ptr @img, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.ImageParameters, ptr %14, i32 0, i32 33
  store i32 0, ptr %15, align 8, !tbaa !68
  %16 = load i32, ptr %4, align 4, !tbaa !31
  %17 = call signext i32 @FmoGetFirstMacroblockInSlice(i32 noundef signext %16)
  store i32 %17, ptr %11, align 4, !tbaa !31
  %18 = load i32, ptr %11, align 4, !tbaa !31
  call void @init_slice(i32 noundef signext %18)
  %19 = load ptr, ptr @img, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.ImageParameters, ptr %19, i32 0, i32 60
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = getelementptr inbounds nuw %struct.Slice, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.datapartition, ptr %23, i64 0
  %25 = getelementptr inbounds nuw %struct.datapartition, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds nuw %struct.Bitstream, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !51
  store i32 %28, ptr @Bytes_After_Header, align 4, !tbaa !31
  call void @SetLagrangianMultipliers()
  %29 = load ptr, ptr @input, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.InputParameters, ptr %29, i32 0, i32 74
  %31 = load i32, ptr %30, align 8, !tbaa !45
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  call void @SetCtxModelNumber()
  br label %34

34:                                               ; preds = %33, %3
  %35 = load ptr, ptr @input, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.InputParameters, ptr %35, i32 0, i32 113
  %37 = load i32, ptr %36, align 8, !tbaa !69
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load ptr, ptr @input, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.InputParameters, ptr %40, i32 0, i32 128
  %42 = load i32, ptr %41, align 4, !tbaa !70
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load ptr, ptr @img, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !66
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr @img, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.ImageParameters, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !66
  %53 = icmp eq i32 %52, 3
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i1 [ true, %44 ], [ %53, %49 ]
  br label %56

56:                                               ; preds = %54, %39, %34
  %57 = phi i1 [ false, %39 ], [ false, %34 ], [ %55, %54 ]
  %58 = zext i1 %57 to i32
  %59 = trunc i32 %58 to i16
  %60 = load ptr, ptr @img, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.ImageParameters, ptr %60, i32 0, i32 168
  store i16 %59, ptr %61, align 8, !tbaa !71
  %62 = call signext i32 @start_slice()
  store i32 %62, ptr %9, align 4, !tbaa !31
  %63 = load ptr, ptr @input, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.InputParameters, ptr %63, i32 0, i32 157
  %65 = load i32, ptr %64, align 4, !tbaa !72
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %56
  %68 = load i32, ptr %9, align 4, !tbaa !31
  %69 = load ptr, ptr @generic_RC, align 8, !tbaa !3
  %70 = getelementptr inbounds nuw %struct.rc_generic, ptr %69, i32 0, i32 4
  %71 = load i32, ptr %70, align 8, !tbaa !73
  %72 = add nsw i32 %71, %68
  store i32 %72, ptr %70, align 8, !tbaa !73
  %73 = load ptr, ptr @img, align 8, !tbaa !3
  %74 = getelementptr inbounds nuw %struct.ImageParameters, ptr %73, i32 0, i32 132
  %75 = load i32, ptr %74, align 4, !tbaa !75
  %76 = load ptr, ptr @img, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.ImageParameters, ptr %76, i32 0, i32 120
  %78 = load i32, ptr %77, align 8, !tbaa !76
  %79 = icmp ult i32 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load i32, ptr %9, align 4, !tbaa !31
  %82 = load ptr, ptr @generic_RC, align 8, !tbaa !3
  %83 = getelementptr inbounds nuw %struct.rc_generic, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 8, !tbaa !77
  %85 = add nsw i32 %84, %81
  store i32 %85, ptr %83, align 8, !tbaa !77
  br label %86

86:                                               ; preds = %80, %67
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i32, ptr %9, align 4, !tbaa !31
  %89 = load ptr, ptr @stats, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.StatParameters, ptr %89, i32 0, i32 6
  %91 = load i32, ptr %90, align 8, !tbaa !78
  %92 = add nsw i32 %91, %88
  store i32 %92, ptr %90, align 8, !tbaa !78
  %93 = load i32, ptr %9, align 4, !tbaa !31
  %94 = sext i32 %93 to i64
  %95 = load ptr, ptr @stats, align 8, !tbaa !3
  %96 = getelementptr inbounds nuw %struct.StatParameters, ptr %95, i32 0, i32 26
  %97 = load ptr, ptr @img, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.ImageParameters, ptr %97, i32 0, i32 5
  %99 = load i32, ptr %98, align 4, !tbaa !66
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [5 x i64], ptr %96, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !79
  %103 = add nsw i64 %102, %94
  store i64 %103, ptr %101, align 8, !tbaa !79
  br label %104

104:                                              ; preds = %592, %87
  %105 = load i32, ptr %7, align 4, !tbaa !31
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %593

107:                                              ; preds = %104
  %108 = load ptr, ptr @img, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.ImageParameters, ptr %108, i32 0, i32 98
  %110 = load i32, ptr %109, align 4, !tbaa !80
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %107
  %113 = load ptr, ptr @input, align 8, !tbaa !3
  %114 = getelementptr inbounds nuw %struct.InputParameters, ptr %113, i32 0, i32 186
  %115 = load i32, ptr %114, align 8, !tbaa !81
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load ptr, ptr @img, align 8, !tbaa !3
  %119 = getelementptr inbounds nuw %struct.ImageParameters, ptr %118, i32 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !82
  %121 = load ptr, ptr @input, align 8, !tbaa !3
  %122 = getelementptr inbounds nuw %struct.InputParameters, ptr %121, i32 0, i32 186
  %123 = load i32, ptr %122, align 8, !tbaa !81
  %124 = srem i32 %120, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  call void @CalculateOffsetParam()
  %127 = load ptr, ptr @input, align 8, !tbaa !3
  %128 = getelementptr inbounds nuw %struct.InputParameters, ptr %127, i32 0, i32 153
  %129 = load i32, ptr %128, align 4, !tbaa !83
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  call void @CalculateOffset8Param()
  br label %132

132:                                              ; preds = %131, %126
  br label %133

133:                                              ; preds = %132, %117, %112, %107
  %134 = load ptr, ptr @img, align 8, !tbaa !3
  %135 = getelementptr inbounds nuw %struct.ImageParameters, ptr %134, i32 0, i32 100
  %136 = load i32, ptr %135, align 4, !tbaa !84
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %167, label %138

138:                                              ; preds = %133
  store i32 0, ptr %8, align 4, !tbaa !31
  store ptr @rddata_top_frame_mb, ptr @rdopt, align 8, !tbaa !3
  %139 = load i32, ptr %11, align 4, !tbaa !31
  call void @start_macroblock(i32 noundef signext %139, i32 noundef signext 0)
  %140 = load ptr, ptr @encode_one_macroblock, align 8, !tbaa !3
  call void %140()
  call void @write_one_macroblock(i32 noundef signext 1)
  call void @terminate_macroblock(ptr noundef %7, ptr noundef %8)
  %141 = load i32, ptr %8, align 4, !tbaa !31
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i32, ptr %11, align 4, !tbaa !31
  %145 = call signext i32 @FmoGetNextMBNr(i32 noundef signext %144)
  store i32 %145, ptr %11, align 4, !tbaa !31
  %146 = load i32, ptr %11, align 4, !tbaa !31
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  store i32 1, ptr %7, align 4, !tbaa !31
  br label %149

149:                                              ; preds = %148, %143
  %150 = load i32, ptr %10, align 4, !tbaa !31
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %10, align 4, !tbaa !31
  call void @proceed2nextMacroblock()
  br label %166

152:                                              ; preds = %138
  %153 = load ptr, ptr @img, align 8, !tbaa !3
  %154 = getelementptr inbounds nuw %struct.ImageParameters, ptr %153, i32 0, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !82
  %156 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %155)
  %157 = load ptr, ptr @img, align 8, !tbaa !3
  %158 = getelementptr inbounds nuw %struct.ImageParameters, ptr %157, i32 0, i32 3
  store i32 %156, ptr %158, align 4, !tbaa !82
  %159 = load ptr, ptr @img, align 8, !tbaa !3
  %160 = getelementptr inbounds nuw %struct.ImageParameters, ptr %159, i32 0, i32 3
  %161 = load i32, ptr %160, align 4, !tbaa !82
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %165

163:                                              ; preds = %152
  %164 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.1) #6
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %165

165:                                              ; preds = %163, %152
  br label %166

166:                                              ; preds = %165, %149
  br label %592

167:                                              ; preds = %133
  %168 = load ptr, ptr @img, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.ImageParameters, ptr %168, i32 0, i32 133
  store i32 0, ptr %169, align 8, !tbaa !85
  %170 = load ptr, ptr @input, align 8, !tbaa !3
  %171 = getelementptr inbounds nuw %struct.InputParameters, ptr %170, i32 0, i32 122
  %172 = load i32, ptr %171, align 4, !tbaa !86
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %179, label %174

174:                                              ; preds = %167
  %175 = load ptr, ptr @input, align 8, !tbaa !3
  %176 = getelementptr inbounds nuw %struct.InputParameters, ptr %175, i32 0, i32 122
  %177 = load i32, ptr %176, align 4, !tbaa !86
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %285

179:                                              ; preds = %174, %167
  store i32 0, ptr %8, align 4, !tbaa !31
  %180 = load ptr, ptr @img, align 8, !tbaa !3
  %181 = getelementptr inbounds nuw %struct.ImageParameters, ptr %180, i32 0, i32 90
  store i32 0, ptr %181, align 8, !tbaa !87
  %182 = load ptr, ptr @img, align 8, !tbaa !3
  %183 = getelementptr inbounds nuw %struct.ImageParameters, ptr %182, i32 0, i32 91
  store i32 0, ptr %183, align 4, !tbaa !88
  %184 = load ptr, ptr @img, align 8, !tbaa !3
  %185 = getelementptr inbounds nuw %struct.ImageParameters, ptr %184, i32 0, i32 133
  store i32 0, ptr %185, align 8, !tbaa !85
  %186 = load ptr, ptr @img, align 8, !tbaa !3
  %187 = getelementptr inbounds nuw %struct.ImageParameters, ptr %186, i32 0, i32 134
  store i32 0, ptr %187, align 4, !tbaa !89
  %188 = load ptr, ptr @input, align 8, !tbaa !3
  %189 = getelementptr inbounds nuw %struct.InputParameters, ptr %188, i32 0, i32 157
  %190 = load i32, ptr %189, align 4, !tbaa !72
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %179
  %193 = load ptr, ptr @input, align 8, !tbaa !3
  %194 = getelementptr inbounds nuw %struct.InputParameters, ptr %193, i32 0, i32 122
  %195 = load i32, ptr %194, align 4, !tbaa !86
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %214

197:                                              ; preds = %192
  %198 = load ptr, ptr @img, align 8, !tbaa !3
  %199 = getelementptr inbounds nuw %struct.ImageParameters, ptr %198, i32 0, i32 128
  %200 = load i32, ptr %199, align 4, !tbaa !90
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %214

202:                                              ; preds = %197
  %203 = load ptr, ptr @img, align 8, !tbaa !3
  %204 = getelementptr inbounds nuw %struct.ImageParameters, ptr %203, i32 0, i32 128
  %205 = load i32, ptr %204, align 4, !tbaa !90
  %206 = load ptr, ptr @img, align 8, !tbaa !3
  %207 = getelementptr inbounds nuw %struct.ImageParameters, ptr %206, i32 0, i32 132
  %208 = load i32, ptr %207, align 4, !tbaa !75
  %209 = urem i32 %205, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load ptr, ptr @quadratic_RC_init, align 8, !tbaa !3
  %213 = load ptr, ptr @quadratic_RC, align 8, !tbaa !3
  call void @copy_rc_jvt(ptr noundef %212, ptr noundef %213)
  br label %214

214:                                              ; preds = %211, %202, %197, %192, %179
  %215 = load ptr, ptr @input, align 8, !tbaa !3
  %216 = getelementptr inbounds nuw %struct.InputParameters, ptr %215, i32 0, i32 157
  %217 = load i32, ptr %216, align 4, !tbaa !72
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = load ptr, ptr @input, align 8, !tbaa !3
  %221 = getelementptr inbounds nuw %struct.InputParameters, ptr %220, i32 0, i32 122
  %222 = load i32, ptr %221, align 4, !tbaa !86
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load ptr, ptr @generic_RC_init, align 8, !tbaa !3
  %226 = load ptr, ptr @generic_RC, align 8, !tbaa !3
  call void @copy_rc_generic(ptr noundef %225, ptr noundef %226)
  br label %227

227:                                              ; preds = %224, %219, %214
  %228 = load i32, ptr %11, align 4, !tbaa !31
  call void @start_macroblock(i32 noundef signext %228, i32 noundef signext 0)
  store ptr @rddata_top_frame_mb, ptr @rdopt, align 8, !tbaa !3
  %229 = load ptr, ptr @encode_one_macroblock, align 8, !tbaa !3
  call void %229()
  %230 = load ptr, ptr @rdopt, align 8, !tbaa !3
  %231 = getelementptr inbounds nuw %struct.RD_DATA, ptr %230, i32 0, i32 0
  %232 = load double, ptr %231, align 8, !tbaa !91
  store double %232, ptr %12, align 8, !tbaa !67
  %233 = load ptr, ptr @img, align 8, !tbaa !3
  %234 = getelementptr inbounds nuw %struct.ImageParameters, ptr %233, i32 0, i32 134
  store i32 1, ptr %234, align 4, !tbaa !89
  %235 = load ptr, ptr @img, align 8, !tbaa !3
  %236 = getelementptr inbounds nuw %struct.ImageParameters, ptr %235, i32 0, i32 90
  store i32 0, ptr %236, align 8, !tbaa !87
  %237 = load i32, ptr %11, align 4, !tbaa !31
  %238 = add nsw i32 %237, 1
  call void @start_macroblock(i32 noundef signext %238, i32 noundef signext 0)
  store ptr @rddata_bot_frame_mb, ptr @rdopt, align 8, !tbaa !3
  %239 = load ptr, ptr @encode_one_macroblock, align 8, !tbaa !3
  call void %239()
  %240 = load ptr, ptr @input, align 8, !tbaa !3
  %241 = getelementptr inbounds nuw %struct.InputParameters, ptr %240, i32 0, i32 157
  %242 = load i32, ptr %241, align 4, !tbaa !72
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %266

244:                                              ; preds = %227
  %245 = load ptr, ptr @input, align 8, !tbaa !3
  %246 = getelementptr inbounds nuw %struct.InputParameters, ptr %245, i32 0, i32 122
  %247 = load i32, ptr %246, align 4, !tbaa !86
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %266

249:                                              ; preds = %244
  %250 = load ptr, ptr @img, align 8, !tbaa !3
  %251 = getelementptr inbounds nuw %struct.ImageParameters, ptr %250, i32 0, i32 128
  %252 = load i32, ptr %251, align 4, !tbaa !90
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %266

254:                                              ; preds = %249
  %255 = load ptr, ptr @img, align 8, !tbaa !3
  %256 = getelementptr inbounds nuw %struct.ImageParameters, ptr %255, i32 0, i32 128
  %257 = load i32, ptr %256, align 4, !tbaa !90
  %258 = load ptr, ptr @img, align 8, !tbaa !3
  %259 = getelementptr inbounds nuw %struct.ImageParameters, ptr %258, i32 0, i32 132
  %260 = load i32, ptr %259, align 4, !tbaa !75
  %261 = urem i32 %257, %260
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %254
  %264 = load ptr, ptr @quadratic_RC_best, align 8, !tbaa !3
  %265 = load ptr, ptr @quadratic_RC, align 8, !tbaa !3
  call void @copy_rc_jvt(ptr noundef %264, ptr noundef %265)
  br label %266

266:                                              ; preds = %263, %254, %249, %244, %227
  %267 = load ptr, ptr @input, align 8, !tbaa !3
  %268 = getelementptr inbounds nuw %struct.InputParameters, ptr %267, i32 0, i32 157
  %269 = load i32, ptr %268, align 4, !tbaa !72
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %266
  %272 = load ptr, ptr @input, align 8, !tbaa !3
  %273 = getelementptr inbounds nuw %struct.InputParameters, ptr %272, i32 0, i32 122
  %274 = load i32, ptr %273, align 4, !tbaa !86
  %275 = icmp eq i32 %274, 2
  br i1 %275, label %276, label %279

276:                                              ; preds = %271
  %277 = load ptr, ptr @generic_RC_best, align 8, !tbaa !3
  %278 = load ptr, ptr @generic_RC, align 8, !tbaa !3
  call void @copy_rc_generic(ptr noundef %277, ptr noundef %278)
  br label %279

279:                                              ; preds = %276, %271, %266
  %280 = load ptr, ptr @rdopt, align 8, !tbaa !3
  %281 = getelementptr inbounds nuw %struct.RD_DATA, ptr %280, i32 0, i32 0
  %282 = load double, ptr %281, align 8, !tbaa !91
  %283 = load double, ptr %12, align 8, !tbaa !67
  %284 = fadd double %283, %282
  store double %284, ptr %12, align 8, !tbaa !67
  br label %285

285:                                              ; preds = %279, %174
  %286 = load ptr, ptr @input, align 8, !tbaa !3
  %287 = getelementptr inbounds nuw %struct.InputParameters, ptr %286, i32 0, i32 122
  %288 = load i32, ptr %287, align 4, !tbaa !86
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %295, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr @input, align 8, !tbaa !3
  %292 = getelementptr inbounds nuw %struct.InputParameters, ptr %291, i32 0, i32 122
  %293 = load i32, ptr %292, align 4, !tbaa !86
  %294 = icmp eq i32 %293, 1
  br i1 %294, label %295, label %375

295:                                              ; preds = %290, %285
  %296 = load ptr, ptr @img, align 8, !tbaa !3
  %297 = getelementptr inbounds nuw %struct.ImageParameters, ptr %296, i32 0, i32 134
  store i32 0, ptr %297, align 4, !tbaa !89
  %298 = load ptr, ptr @img, align 8, !tbaa !3
  %299 = getelementptr inbounds nuw %struct.ImageParameters, ptr %298, i32 0, i32 90
  store i32 1, ptr %299, align 8, !tbaa !87
  %300 = load ptr, ptr @img, align 8, !tbaa !3
  %301 = getelementptr inbounds nuw %struct.ImageParameters, ptr %300, i32 0, i32 91
  store i32 1, ptr %301, align 4, !tbaa !88
  %302 = load ptr, ptr @img, align 8, !tbaa !3
  %303 = getelementptr inbounds nuw %struct.ImageParameters, ptr %302, i32 0, i32 93
  %304 = load i32, ptr %303, align 8, !tbaa !93
  %305 = shl i32 %304, 1
  store i32 %305, ptr %303, align 8, !tbaa !93
  %306 = load ptr, ptr @input, align 8, !tbaa !3
  %307 = getelementptr inbounds nuw %struct.InputParameters, ptr %306, i32 0, i32 8
  %308 = load i32, ptr %307, align 8, !tbaa !94
  %309 = shl i32 %308, 1
  store i32 %309, ptr %307, align 8, !tbaa !94
  %310 = load ptr, ptr @img, align 8, !tbaa !3
  %311 = getelementptr inbounds nuw %struct.ImageParameters, ptr %310, i32 0, i32 88
  %312 = load i32, ptr %311, align 8, !tbaa !95
  %313 = shl i32 %312, 1
  store i32 %313, ptr %311, align 8, !tbaa !95
  %314 = load ptr, ptr @img, align 8, !tbaa !3
  %315 = getelementptr inbounds nuw %struct.ImageParameters, ptr %314, i32 0, i32 88
  %316 = load i32, ptr %315, align 8, !tbaa !95
  %317 = add nsw i32 %316, 1
  store i32 %317, ptr %315, align 8, !tbaa !95
  %318 = load ptr, ptr @input, align 8, !tbaa !3
  %319 = getelementptr inbounds nuw %struct.InputParameters, ptr %318, i32 0, i32 157
  %320 = load i32, ptr %319, align 4, !tbaa !72
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %344

322:                                              ; preds = %295
  %323 = load ptr, ptr @input, align 8, !tbaa !3
  %324 = getelementptr inbounds nuw %struct.InputParameters, ptr %323, i32 0, i32 122
  %325 = load i32, ptr %324, align 4, !tbaa !86
  %326 = icmp eq i32 %325, 2
  br i1 %326, label %327, label %344

327:                                              ; preds = %322
  %328 = load ptr, ptr @img, align 8, !tbaa !3
  %329 = getelementptr inbounds nuw %struct.ImageParameters, ptr %328, i32 0, i32 128
  %330 = load i32, ptr %329, align 4, !tbaa !90
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %344

332:                                              ; preds = %327
  %333 = load ptr, ptr @img, align 8, !tbaa !3
  %334 = getelementptr inbounds nuw %struct.ImageParameters, ptr %333, i32 0, i32 128
  %335 = load i32, ptr %334, align 4, !tbaa !90
  %336 = load ptr, ptr @img, align 8, !tbaa !3
  %337 = getelementptr inbounds nuw %struct.ImageParameters, ptr %336, i32 0, i32 132
  %338 = load i32, ptr %337, align 4, !tbaa !75
  %339 = urem i32 %335, %338
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %332
  %342 = load ptr, ptr @quadratic_RC, align 8, !tbaa !3
  %343 = load ptr, ptr @quadratic_RC_init, align 8, !tbaa !3
  call void @copy_rc_jvt(ptr noundef %342, ptr noundef %343)
  br label %344

344:                                              ; preds = %341, %332, %327, %322, %295
  %345 = load ptr, ptr @input, align 8, !tbaa !3
  %346 = getelementptr inbounds nuw %struct.InputParameters, ptr %345, i32 0, i32 157
  %347 = load i32, ptr %346, align 4, !tbaa !72
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %344
  %350 = load ptr, ptr @input, align 8, !tbaa !3
  %351 = getelementptr inbounds nuw %struct.InputParameters, ptr %350, i32 0, i32 122
  %352 = load i32, ptr %351, align 4, !tbaa !86
  %353 = icmp eq i32 %352, 2
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load ptr, ptr @generic_RC, align 8, !tbaa !3
  %356 = load ptr, ptr @generic_RC_init, align 8, !tbaa !3
  call void @copy_rc_generic(ptr noundef %355, ptr noundef %356)
  br label %357

357:                                              ; preds = %354, %349, %344
  %358 = load i32, ptr %11, align 4, !tbaa !31
  call void @start_macroblock(i32 noundef signext %358, i32 noundef signext 1)
  store ptr @rddata_top_field_mb, ptr @rdopt, align 8, !tbaa !3
  %359 = load ptr, ptr @encode_one_macroblock, align 8, !tbaa !3
  call void %359()
  %360 = load ptr, ptr @rdopt, align 8, !tbaa !3
  %361 = getelementptr inbounds nuw %struct.RD_DATA, ptr %360, i32 0, i32 0
  %362 = load double, ptr %361, align 8, !tbaa !91
  store double %362, ptr %13, align 8, !tbaa !67
  %363 = load ptr, ptr @img, align 8, !tbaa !3
  %364 = getelementptr inbounds nuw %struct.ImageParameters, ptr %363, i32 0, i32 134
  store i32 1, ptr %364, align 4, !tbaa !89
  %365 = load ptr, ptr @img, align 8, !tbaa !3
  %366 = getelementptr inbounds nuw %struct.ImageParameters, ptr %365, i32 0, i32 91
  store i32 0, ptr %366, align 4, !tbaa !88
  %367 = load i32, ptr %11, align 4, !tbaa !31
  %368 = add nsw i32 %367, 1
  call void @start_macroblock(i32 noundef signext %368, i32 noundef signext 1)
  store ptr @rddata_bot_field_mb, ptr @rdopt, align 8, !tbaa !3
  %369 = load ptr, ptr @encode_one_macroblock, align 8, !tbaa !3
  call void %369()
  %370 = load ptr, ptr @rdopt, align 8, !tbaa !3
  %371 = getelementptr inbounds nuw %struct.RD_DATA, ptr %370, i32 0, i32 0
  %372 = load double, ptr %371, align 8, !tbaa !91
  %373 = load double, ptr %13, align 8, !tbaa !67
  %374 = fadd double %373, %372
  store double %374, ptr %13, align 8, !tbaa !67
  br label %375

375:                                              ; preds = %357, %290
  %376 = load ptr, ptr @img, align 8, !tbaa !3
  %377 = getelementptr inbounds nuw %struct.ImageParameters, ptr %376, i32 0, i32 135
  store i32 0, ptr %377, align 8, !tbaa !96
  %378 = load ptr, ptr @input, align 8, !tbaa !3
  %379 = getelementptr inbounds nuw %struct.InputParameters, ptr %378, i32 0, i32 122
  %380 = load i32, ptr %379, align 4, !tbaa !86
  %381 = icmp eq i32 %380, 2
  br i1 %381, label %382, label %386

382:                                              ; preds = %375
  %383 = load double, ptr %12, align 8, !tbaa !67
  %384 = load double, ptr %13, align 8, !tbaa !67
  %385 = fcmp olt double %383, %384
  br i1 %385, label %391, label %386

386:                                              ; preds = %382, %375
  %387 = load ptr, ptr @input, align 8, !tbaa !3
  %388 = getelementptr inbounds nuw %struct.InputParameters, ptr %387, i32 0, i32 122
  %389 = load i32, ptr %388, align 4, !tbaa !86
  %390 = icmp eq i32 %389, 3
  br i1 %390, label %391, label %458

391:                                              ; preds = %386, %382
  %392 = load ptr, ptr @img, align 8, !tbaa !3
  %393 = getelementptr inbounds nuw %struct.ImageParameters, ptr %392, i32 0, i32 90
  store i32 0, ptr %393, align 8, !tbaa !87
  store i32 0, ptr @MBPairIsField, align 4, !tbaa !31
  %394 = load ptr, ptr @input, align 8, !tbaa !3
  %395 = getelementptr inbounds nuw %struct.InputParameters, ptr %394, i32 0, i32 122
  %396 = load i32, ptr %395, align 4, !tbaa !86
  %397 = icmp ne i32 %396, 3
  br i1 %397, label %398, label %415

398:                                              ; preds = %391
  %399 = load ptr, ptr @img, align 8, !tbaa !3
  %400 = getelementptr inbounds nuw %struct.ImageParameters, ptr %399, i32 0, i32 93
  %401 = load i32, ptr %400, align 8, !tbaa !93
  %402 = ashr i32 %401, 1
  store i32 %402, ptr %400, align 8, !tbaa !93
  %403 = load ptr, ptr @input, align 8, !tbaa !3
  %404 = getelementptr inbounds nuw %struct.InputParameters, ptr %403, i32 0, i32 8
  %405 = load i32, ptr %404, align 8, !tbaa !94
  %406 = ashr i32 %405, 1
  store i32 %406, ptr %404, align 8, !tbaa !94
  %407 = load ptr, ptr @img, align 8, !tbaa !3
  %408 = getelementptr inbounds nuw %struct.ImageParameters, ptr %407, i32 0, i32 88
  %409 = load i32, ptr %408, align 8, !tbaa !95
  %410 = sub nsw i32 %409, 1
  store i32 %410, ptr %408, align 8, !tbaa !95
  %411 = load ptr, ptr @img, align 8, !tbaa !3
  %412 = getelementptr inbounds nuw %struct.ImageParameters, ptr %411, i32 0, i32 88
  %413 = load i32, ptr %412, align 8, !tbaa !95
  %414 = ashr i32 %413, 1
  store i32 %414, ptr %412, align 8, !tbaa !95
  br label %415

415:                                              ; preds = %398, %391
  %416 = load ptr, ptr @input, align 8, !tbaa !3
  %417 = getelementptr inbounds nuw %struct.InputParameters, ptr %416, i32 0, i32 157
  %418 = load i32, ptr %417, align 4, !tbaa !72
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %442

420:                                              ; preds = %415
  %421 = load ptr, ptr @input, align 8, !tbaa !3
  %422 = getelementptr inbounds nuw %struct.InputParameters, ptr %421, i32 0, i32 122
  %423 = load i32, ptr %422, align 4, !tbaa !86
  %424 = icmp eq i32 %423, 2
  br i1 %424, label %425, label %442

425:                                              ; preds = %420
  %426 = load ptr, ptr @img, align 8, !tbaa !3
  %427 = getelementptr inbounds nuw %struct.ImageParameters, ptr %426, i32 0, i32 128
  %428 = load i32, ptr %427, align 4, !tbaa !90
  %429 = icmp sgt i32 %428, 0
  br i1 %429, label %430, label %442

430:                                              ; preds = %425
  %431 = load ptr, ptr @img, align 8, !tbaa !3
  %432 = getelementptr inbounds nuw %struct.ImageParameters, ptr %431, i32 0, i32 128
  %433 = load i32, ptr %432, align 4, !tbaa !90
  %434 = load ptr, ptr @img, align 8, !tbaa !3
  %435 = getelementptr inbounds nuw %struct.ImageParameters, ptr %434, i32 0, i32 132
  %436 = load i32, ptr %435, align 4, !tbaa !75
  %437 = urem i32 %433, %436
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %442

439:                                              ; preds = %430
  %440 = load ptr, ptr @quadratic_RC, align 8, !tbaa !3
  %441 = load ptr, ptr @quadratic_RC_best, align 8, !tbaa !3
  call void @copy_rc_jvt(ptr noundef %440, ptr noundef %441)
  br label %442

442:                                              ; preds = %439, %430, %425, %420, %415
  %443 = load ptr, ptr @input, align 8, !tbaa !3
  %444 = getelementptr inbounds nuw %struct.InputParameters, ptr %443, i32 0, i32 157
  %445 = load i32, ptr %444, align 4, !tbaa !72
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %455

447:                                              ; preds = %442
  %448 = load ptr, ptr @input, align 8, !tbaa !3
  %449 = getelementptr inbounds nuw %struct.InputParameters, ptr %448, i32 0, i32 122
  %450 = load i32, ptr %449, align 4, !tbaa !86
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %452, label %455

452:                                              ; preds = %447
  %453 = load ptr, ptr @generic_RC, align 8, !tbaa !3
  %454 = load ptr, ptr @generic_RC_best, align 8, !tbaa !3
  call void @copy_rc_generic(ptr noundef %453, ptr noundef %454)
  br label %455

455:                                              ; preds = %452, %447, %442
  %456 = load ptr, ptr @img, align 8, !tbaa !3
  %457 = getelementptr inbounds nuw %struct.ImageParameters, ptr %456, i32 0, i32 135
  store i32 1, ptr %457, align 8, !tbaa !96
  br label %461

458:                                              ; preds = %386
  %459 = load ptr, ptr @img, align 8, !tbaa !3
  %460 = getelementptr inbounds nuw %struct.ImageParameters, ptr %459, i32 0, i32 90
  store i32 1, ptr %460, align 8, !tbaa !87
  store i32 1, ptr @MBPairIsField, align 4, !tbaa !31
  br label %461

461:                                              ; preds = %458, %455
  %462 = load ptr, ptr @img, align 8, !tbaa !3
  %463 = getelementptr inbounds nuw %struct.ImageParameters, ptr %462, i32 0, i32 133
  store i32 1, ptr %463, align 8, !tbaa !85
  %464 = load i32, ptr @MBPairIsField, align 4, !tbaa !31
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %469

466:                                              ; preds = %461
  %467 = load ptr, ptr @img, align 8, !tbaa !3
  %468 = getelementptr inbounds nuw %struct.ImageParameters, ptr %467, i32 0, i32 91
  store i32 1, ptr %468, align 4, !tbaa !88
  br label %472

469:                                              ; preds = %461
  %470 = load ptr, ptr @img, align 8, !tbaa !3
  %471 = getelementptr inbounds nuw %struct.ImageParameters, ptr %470, i32 0, i32 91
  store i32 0, ptr %471, align 4, !tbaa !88
  br label %472

472:                                              ; preds = %469, %466
  %473 = load ptr, ptr @img, align 8, !tbaa !3
  %474 = getelementptr inbounds nuw %struct.ImageParameters, ptr %473, i32 0, i32 134
  store i32 0, ptr %474, align 4, !tbaa !89
  %475 = load i32, ptr %11, align 4, !tbaa !31
  %476 = load ptr, ptr @img, align 8, !tbaa !3
  %477 = getelementptr inbounds nuw %struct.ImageParameters, ptr %476, i32 0, i32 90
  %478 = load i32, ptr %477, align 8, !tbaa !87
  call void @start_macroblock(i32 noundef signext %475, i32 noundef signext %478)
  %479 = load ptr, ptr @img, align 8, !tbaa !3
  %480 = getelementptr inbounds nuw %struct.ImageParameters, ptr %479, i32 0, i32 90
  %481 = load i32, ptr %480, align 8, !tbaa !87
  %482 = icmp ne i32 %481, 0
  %483 = zext i1 %482 to i64
  %484 = select i1 %482, ptr @rddata_top_field_mb, ptr @rddata_top_frame_mb
  store ptr %484, ptr @rdopt, align 8, !tbaa !3
  call void @copy_rdopt_data(i32 noundef signext 0)
  call void @write_one_macroblock(i32 noundef signext 1)
  call void @terminate_macroblock(ptr noundef %7, ptr noundef %8)
  %485 = load i32, ptr %8, align 4, !tbaa !31
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %487, label %542

487:                                              ; preds = %472
  %488 = load i32, ptr %11, align 4, !tbaa !31
  %489 = call signext i32 @FmoGetNextMBNr(i32 noundef signext %488)
  store i32 %489, ptr %11, align 4, !tbaa !31
  %490 = load i32, ptr %11, align 4, !tbaa !31
  %491 = icmp eq i32 %490, -1
  br i1 %491, label %492, label %493

492:                                              ; preds = %487
  store i32 1, ptr %7, align 4, !tbaa !31
  br label %493

493:                                              ; preds = %492, %487
  %494 = load i32, ptr %10, align 4, !tbaa !31
  %495 = add nsw i32 %494, 1
  store i32 %495, ptr %10, align 4, !tbaa !31
  call void @proceed2nextMacroblock()
  %496 = load ptr, ptr @img, align 8, !tbaa !3
  %497 = getelementptr inbounds nuw %struct.ImageParameters, ptr %496, i32 0, i32 134
  store i32 1, ptr %497, align 4, !tbaa !89
  %498 = load ptr, ptr @img, align 8, !tbaa !3
  %499 = getelementptr inbounds nuw %struct.ImageParameters, ptr %498, i32 0, i32 91
  store i32 0, ptr %499, align 4, !tbaa !88
  %500 = load i32, ptr %11, align 4, !tbaa !31
  %501 = load ptr, ptr @img, align 8, !tbaa !3
  %502 = getelementptr inbounds nuw %struct.ImageParameters, ptr %501, i32 0, i32 90
  %503 = load i32, ptr %502, align 8, !tbaa !87
  call void @start_macroblock(i32 noundef signext %500, i32 noundef signext %503)
  %504 = load ptr, ptr @img, align 8, !tbaa !3
  %505 = getelementptr inbounds nuw %struct.ImageParameters, ptr %504, i32 0, i32 90
  %506 = load i32, ptr %505, align 8, !tbaa !87
  %507 = icmp ne i32 %506, 0
  %508 = zext i1 %507 to i64
  %509 = select i1 %507, ptr @rddata_bot_field_mb, ptr @rddata_bot_frame_mb
  store ptr %509, ptr @rdopt, align 8, !tbaa !3
  call void @copy_rdopt_data(i32 noundef signext 1)
  call void @write_one_macroblock(i32 noundef signext 0)
  call void @terminate_macroblock(ptr noundef %7, ptr noundef %8)
  %510 = load i32, ptr %8, align 4, !tbaa !31
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %521

512:                                              ; preds = %493
  %513 = load i32, ptr %11, align 4, !tbaa !31
  %514 = call signext i32 @FmoGetNextMBNr(i32 noundef signext %513)
  store i32 %514, ptr %11, align 4, !tbaa !31
  %515 = load i32, ptr %11, align 4, !tbaa !31
  %516 = icmp eq i32 %515, -1
  br i1 %516, label %517, label %518

517:                                              ; preds = %512
  store i32 1, ptr %7, align 4, !tbaa !31
  br label %518

518:                                              ; preds = %517, %512
  %519 = load i32, ptr %10, align 4, !tbaa !31
  %520 = add nsw i32 %519, 1
  store i32 %520, ptr %10, align 4, !tbaa !31
  call void @proceed2nextMacroblock()
  br label %541

521:                                              ; preds = %493
  %522 = load ptr, ptr @img, align 8, !tbaa !3
  %523 = getelementptr inbounds nuw %struct.ImageParameters, ptr %522, i32 0, i32 3
  %524 = load i32, ptr %523, align 4, !tbaa !82
  %525 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %524)
  %526 = load ptr, ptr @img, align 8, !tbaa !3
  %527 = getelementptr inbounds nuw %struct.ImageParameters, ptr %526, i32 0, i32 3
  store i32 %525, ptr %527, align 4, !tbaa !82
  %528 = load ptr, ptr @img, align 8, !tbaa !3
  %529 = getelementptr inbounds nuw %struct.ImageParameters, ptr %528, i32 0, i32 3
  %530 = load i32, ptr %529, align 4, !tbaa !82
  %531 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %530)
  %532 = load ptr, ptr @img, align 8, !tbaa !3
  %533 = getelementptr inbounds nuw %struct.ImageParameters, ptr %532, i32 0, i32 3
  store i32 %531, ptr %533, align 4, !tbaa !82
  %534 = load ptr, ptr @img, align 8, !tbaa !3
  %535 = getelementptr inbounds nuw %struct.ImageParameters, ptr %534, i32 0, i32 3
  %536 = load i32, ptr %535, align 4, !tbaa !82
  %537 = icmp eq i32 %536, -1
  br i1 %537, label %538, label %540

538:                                              ; preds = %521
  %539 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.1) #6
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %540

540:                                              ; preds = %538, %521
  br label %541

541:                                              ; preds = %540, %518
  br label %556

542:                                              ; preds = %472
  %543 = load ptr, ptr @img, align 8, !tbaa !3
  %544 = getelementptr inbounds nuw %struct.ImageParameters, ptr %543, i32 0, i32 3
  %545 = load i32, ptr %544, align 4, !tbaa !82
  %546 = call signext i32 @FmoGetPreviousMBNr(i32 noundef signext %545)
  %547 = load ptr, ptr @img, align 8, !tbaa !3
  %548 = getelementptr inbounds nuw %struct.ImageParameters, ptr %547, i32 0, i32 3
  store i32 %546, ptr %548, align 4, !tbaa !82
  %549 = load ptr, ptr @img, align 8, !tbaa !3
  %550 = getelementptr inbounds nuw %struct.ImageParameters, ptr %549, i32 0, i32 3
  %551 = load i32, ptr %550, align 4, !tbaa !82
  %552 = icmp eq i32 %551, -1
  br i1 %552, label %553, label %555

553:                                              ; preds = %542
  %554 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.1) #6
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %555

555:                                              ; preds = %553, %542
  br label %556

556:                                              ; preds = %555, %541
  %557 = load i32, ptr @MBPairIsField, align 4, !tbaa !31
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %576

559:                                              ; preds = %556
  %560 = load ptr, ptr @img, align 8, !tbaa !3
  %561 = getelementptr inbounds nuw %struct.ImageParameters, ptr %560, i32 0, i32 93
  %562 = load i32, ptr %561, align 8, !tbaa !93
  %563 = ashr i32 %562, 1
  store i32 %563, ptr %561, align 8, !tbaa !93
  %564 = load ptr, ptr @input, align 8, !tbaa !3
  %565 = getelementptr inbounds nuw %struct.InputParameters, ptr %564, i32 0, i32 8
  %566 = load i32, ptr %565, align 8, !tbaa !94
  %567 = ashr i32 %566, 1
  store i32 %567, ptr %565, align 8, !tbaa !94
  %568 = load ptr, ptr @img, align 8, !tbaa !3
  %569 = getelementptr inbounds nuw %struct.ImageParameters, ptr %568, i32 0, i32 88
  %570 = load i32, ptr %569, align 8, !tbaa !95
  %571 = sub nsw i32 %570, 1
  store i32 %571, ptr %569, align 8, !tbaa !95
  %572 = load ptr, ptr @img, align 8, !tbaa !3
  %573 = getelementptr inbounds nuw %struct.ImageParameters, ptr %572, i32 0, i32 88
  %574 = load i32, ptr %573, align 8, !tbaa !95
  %575 = ashr i32 %574, 1
  store i32 %575, ptr %573, align 8, !tbaa !95
  br label %576

576:                                              ; preds = %559, %556
  %577 = load ptr, ptr @img, align 8, !tbaa !3
  %578 = getelementptr inbounds nuw %struct.ImageParameters, ptr %577, i32 0, i32 91
  store i32 0, ptr %578, align 4, !tbaa !88
  %579 = load ptr, ptr @img, align 8, !tbaa !3
  %580 = getelementptr inbounds nuw %struct.ImageParameters, ptr %579, i32 0, i32 90
  store i32 0, ptr %580, align 8, !tbaa !87
  %581 = load i32, ptr %7, align 4, !tbaa !31
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %591, label %583

583:                                              ; preds = %576
  %584 = load i32, ptr %11, align 4, !tbaa !31
  %585 = load i32, ptr %11, align 4, !tbaa !31
  %586 = call signext i32 @FmoMB2SliceGroup(i32 noundef signext %585)
  %587 = call signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext %586)
  %588 = icmp eq i32 %584, %587
  br i1 %588, label %589, label %590

589:                                              ; preds = %583
  store i32 1, ptr %7, align 4, !tbaa !31
  br label %590

590:                                              ; preds = %589, %583
  br label %591

591:                                              ; preds = %590, %576
  br label %592

592:                                              ; preds = %591, %166
  br label %104, !llvm.loop !97

593:                                              ; preds = %104
  %594 = load i32, ptr %10, align 4, !tbaa !31
  %595 = load i32, ptr %6, align 4, !tbaa !31
  %596 = add nsw i32 %594, %595
  %597 = load ptr, ptr @img, align 8, !tbaa !3
  %598 = getelementptr inbounds nuw %struct.ImageParameters, ptr %597, i32 0, i32 119
  %599 = load i32, ptr %598, align 4, !tbaa !64
  %600 = icmp sge i32 %596, %599
  %601 = zext i1 %600 to i32
  %602 = call signext i32 @terminate_slice(i32 noundef signext %601)
  %603 = load i32, ptr %10, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  ret i32 %603
}

declare signext i32 @FmoGetFirstMacroblockInSlice(i32 noundef signext) #2

; Function Attrs: nounwind
define internal void @init_slice(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #6
  %10 = load ptr, ptr @img, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.ImageParameters, ptr %10, i32 0, i32 59
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  store ptr %12, ptr %4, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #6
  %13 = load i32, ptr %2, align 4, !tbaa !31
  %14 = load ptr, ptr @img, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.ImageParameters, ptr %14, i32 0, i32 3
  store i32 %13, ptr %15, align 4, !tbaa !82
  %16 = load ptr, ptr %4, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.Picture, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !98
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 8, !tbaa !98
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.Picture, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !98
  %23 = icmp sge i32 %22, 100
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  call void @error(ptr noundef @.str.2, i32 noundef signext -1)
  br label %25

25:                                               ; preds = %24, %1
  %26 = call ptr @malloc_slice()
  %27 = load ptr, ptr %4, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.Picture, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %4, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.Picture, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8, !tbaa !98
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x ptr], ptr %28, i64 0, i64 %33
  store ptr %26, ptr %34, align 8, !tbaa !3
  %35 = load ptr, ptr %4, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.Picture, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %4, align 8, !tbaa !3
  %38 = getelementptr inbounds nuw %struct.Picture, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8, !tbaa !98
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x ptr], ptr %36, i64 0, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !3
  store ptr %43, ptr %7, align 8, !tbaa !3
  %44 = load ptr, ptr %7, align 8, !tbaa !3
  %45 = load ptr, ptr @img, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 60
  store ptr %44, ptr %46, align 8, !tbaa !7
  %47 = load ptr, ptr @img, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.ImageParameters, ptr %47, i32 0, i32 64
  %49 = load i32, ptr %48, align 8, !tbaa !38
  %50 = srem i32 %49, 256
  %51 = load ptr, ptr %7, align 8, !tbaa !3
  %52 = getelementptr inbounds nuw %struct.Slice, ptr %51, i32 0, i32 0
  store i32 %50, ptr %52, align 8, !tbaa !99
  %53 = load ptr, ptr @img, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw %struct.ImageParameters, ptr %53, i32 0, i32 9
  %55 = load i32, ptr %54, align 4, !tbaa !100
  %56 = load ptr, ptr %7, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.Slice, ptr %56, i32 0, i32 1
  store i32 %55, ptr %57, align 4, !tbaa !101
  %58 = load i32, ptr %2, align 4, !tbaa !31
  %59 = load ptr, ptr %7, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.Slice, ptr %59, i32 0, i32 3
  store i32 %58, ptr %60, align 4, !tbaa !102
  %61 = load ptr, ptr %7, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.Slice, ptr %61, i32 0, i32 17
  store ptr @dummy_slice_too_big, ptr %62, align 8, !tbaa !103
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %63

63:                                               ; preds = %85, %25
  %64 = load i32, ptr %3, align 4, !tbaa !31
  %65 = load ptr, ptr %7, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.Slice, ptr %65, i32 0, i32 4
  %67 = load i32, ptr %66, align 8, !tbaa !50
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %88

69:                                               ; preds = %63
  %70 = load ptr, ptr %7, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.Slice, ptr %70, i32 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !39
  %73 = load i32, ptr %3, align 4, !tbaa !31
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.datapartition, ptr %72, i64 %74
  store ptr %75, ptr %5, align 8, !tbaa !104
  %76 = load ptr, ptr %5, align 8, !tbaa !104
  %77 = getelementptr inbounds nuw %struct.datapartition, ptr %76, i32 0, i32 0
  %78 = load ptr, ptr %77, align 8, !tbaa !40
  store ptr %78, ptr %6, align 8, !tbaa !3
  %79 = load ptr, ptr %6, align 8, !tbaa !3
  %80 = getelementptr inbounds nuw %struct.Bitstream, ptr %79, i32 0, i32 1
  store i32 8, ptr %80, align 4, !tbaa !46
  %81 = load ptr, ptr %6, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.Bitstream, ptr %81, i32 0, i32 0
  store i32 0, ptr %82, align 8, !tbaa !51
  %83 = load ptr, ptr %6, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.Bitstream, ptr %83, i32 0, i32 2
  store i8 0, ptr %84, align 8, !tbaa !56
  br label %85

85:                                               ; preds = %69
  %86 = load i32, ptr %3, align 4, !tbaa !31
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %3, align 4, !tbaa !31
  br label %63, !llvm.loop !105

88:                                               ; preds = %63
  %89 = load ptr, ptr @active_pps, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %89, i32 0, i32 17
  %91 = load i32, ptr %90, align 8, !tbaa !106
  %92 = add nsw i32 %91, 1
  %93 = load ptr, ptr @img, align 8, !tbaa !3
  %94 = getelementptr inbounds nuw %struct.ImageParameters, ptr %93, i32 0, i32 88
  store i32 %92, ptr %94, align 8, !tbaa !95
  %95 = load ptr, ptr @active_pps, align 8, !tbaa !3
  %96 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %95, i32 0, i32 18
  %97 = load i32, ptr %96, align 4, !tbaa !108
  %98 = add nsw i32 %97, 1
  %99 = load ptr, ptr @img, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.ImageParameters, ptr %99, i32 0, i32 89
  store i32 %98, ptr %100, align 4, !tbaa !109
  %101 = load ptr, ptr @input, align 8, !tbaa !3
  %102 = getelementptr inbounds nuw %struct.InputParameters, ptr %101, i32 0, i32 149
  %103 = load i32, ptr %102, align 4, !tbaa !110
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %88
  %106 = load i32, ptr @redundant_coding, align 4, !tbaa !31
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @img, align 8, !tbaa !3
  %110 = getelementptr inbounds nuw %struct.ImageParameters, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 8, !tbaa !111
  %112 = load ptr, ptr @input, align 8, !tbaa !3
  %113 = getelementptr inbounds nuw %struct.InputParameters, ptr %112, i32 0, i32 196
  %114 = load i32, ptr %113, align 8, !tbaa !112
  %115 = call signext i32 @imin(i32 noundef signext %111, i32 noundef signext %114)
  %116 = load ptr, ptr @img, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %116, i32 0, i32 88
  store i32 %115, ptr %117, align 8, !tbaa !95
  br label %121

118:                                              ; preds = %105
  %119 = load ptr, ptr @img, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct.ImageParameters, ptr %119, i32 0, i32 88
  store i32 1, ptr %120, align 8, !tbaa !95
  br label %121

121:                                              ; preds = %118, %108
  br label %122

122:                                              ; preds = %121, %88
  %123 = load ptr, ptr @img, align 8, !tbaa !3
  %124 = getelementptr inbounds nuw %struct.ImageParameters, ptr %123, i32 0, i32 5
  %125 = load i32, ptr %124, align 4, !tbaa !66
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr @img, align 8, !tbaa !3
  %129 = getelementptr inbounds nuw %struct.ImageParameters, ptr %128, i32 0, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !66
  %131 = icmp eq i32 %130, 3
  br i1 %131, label %132, label %154

132:                                              ; preds = %127, %122
  %133 = load ptr, ptr @input, align 8, !tbaa !3
  %134 = getelementptr inbounds nuw %struct.InputParameters, ptr %133, i32 0, i32 9
  %135 = load i32, ptr %134, align 4, !tbaa !113
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %132
  %138 = load ptr, ptr @img, align 8, !tbaa !3
  %139 = getelementptr inbounds nuw %struct.ImageParameters, ptr %138, i32 0, i32 88
  %140 = load i32, ptr %139, align 8, !tbaa !95
  %141 = load ptr, ptr @input, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.InputParameters, ptr %141, i32 0, i32 9
  %143 = load i32, ptr %142, align 4, !tbaa !113
  %144 = load ptr, ptr @img, align 8, !tbaa !3
  %145 = getelementptr inbounds nuw %struct.ImageParameters, ptr %144, i32 0, i32 6
  %146 = load i32, ptr %145, align 8, !tbaa !114
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = add nsw i32 %148, 1
  %150 = mul nsw i32 %143, %149
  %151 = call signext i32 @imin(i32 noundef signext %140, i32 noundef signext %150)
  %152 = load ptr, ptr @img, align 8, !tbaa !3
  %153 = getelementptr inbounds nuw %struct.ImageParameters, ptr %152, i32 0, i32 88
  store i32 %151, ptr %153, align 8, !tbaa !95
  br label %154

154:                                              ; preds = %137, %132, %127
  %155 = load ptr, ptr @img, align 8, !tbaa !3
  %156 = getelementptr inbounds nuw %struct.ImageParameters, ptr %155, i32 0, i32 5
  %157 = load i32, ptr %156, align 4, !tbaa !66
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %204

159:                                              ; preds = %154
  %160 = load ptr, ptr @input, align 8, !tbaa !3
  %161 = getelementptr inbounds nuw %struct.InputParameters, ptr %160, i32 0, i32 10
  %162 = load i32, ptr %161, align 8, !tbaa !115
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %159
  %165 = load ptr, ptr @img, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw %struct.ImageParameters, ptr %165, i32 0, i32 88
  %167 = load i32, ptr %166, align 8, !tbaa !95
  %168 = load ptr, ptr @input, align 8, !tbaa !3
  %169 = getelementptr inbounds nuw %struct.InputParameters, ptr %168, i32 0, i32 10
  %170 = load i32, ptr %169, align 8, !tbaa !115
  %171 = load ptr, ptr @img, align 8, !tbaa !3
  %172 = getelementptr inbounds nuw %struct.ImageParameters, ptr %171, i32 0, i32 6
  %173 = load i32, ptr %172, align 8, !tbaa !114
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = add nsw i32 %175, 1
  %177 = mul nsw i32 %170, %176
  %178 = call signext i32 @imin(i32 noundef signext %167, i32 noundef signext %177)
  %179 = load ptr, ptr @img, align 8, !tbaa !3
  %180 = getelementptr inbounds nuw %struct.ImageParameters, ptr %179, i32 0, i32 88
  store i32 %178, ptr %180, align 8, !tbaa !95
  br label %181

181:                                              ; preds = %164, %159
  %182 = load ptr, ptr @input, align 8, !tbaa !3
  %183 = getelementptr inbounds nuw %struct.InputParameters, ptr %182, i32 0, i32 11
  %184 = load i32, ptr %183, align 4, !tbaa !116
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = load ptr, ptr @img, align 8, !tbaa !3
  %188 = getelementptr inbounds nuw %struct.ImageParameters, ptr %187, i32 0, i32 89
  %189 = load i32, ptr %188, align 4, !tbaa !109
  %190 = load ptr, ptr @input, align 8, !tbaa !3
  %191 = getelementptr inbounds nuw %struct.InputParameters, ptr %190, i32 0, i32 11
  %192 = load i32, ptr %191, align 4, !tbaa !116
  %193 = load ptr, ptr @img, align 8, !tbaa !3
  %194 = getelementptr inbounds nuw %struct.ImageParameters, ptr %193, i32 0, i32 6
  %195 = load i32, ptr %194, align 8, !tbaa !114
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = add nsw i32 %197, 1
  %199 = mul nsw i32 %192, %198
  %200 = call signext i32 @imin(i32 noundef signext %189, i32 noundef signext %199)
  %201 = load ptr, ptr @img, align 8, !tbaa !3
  %202 = getelementptr inbounds nuw %struct.ImageParameters, ptr %201, i32 0, i32 89
  store i32 %200, ptr %202, align 4, !tbaa !109
  br label %203

203:                                              ; preds = %186, %181
  br label %204

204:                                              ; preds = %203, %154
  %205 = load ptr, ptr @img, align 8, !tbaa !3
  %206 = getelementptr inbounds nuw %struct.ImageParameters, ptr %205, i32 0, i32 5
  %207 = load i32, ptr %206, align 4, !tbaa !66
  %208 = load ptr, ptr @img, align 8, !tbaa !3
  %209 = getelementptr inbounds nuw %struct.ImageParameters, ptr %208, i32 0, i32 6
  %210 = load i32, ptr %209, align 8, !tbaa !114
  call void @init_lists(i32 noundef signext %207, i32 noundef signext %210)
  %211 = load i32, ptr @listXsize, align 4, !tbaa !31
  %212 = load ptr, ptr @img, align 8, !tbaa !3
  %213 = getelementptr inbounds nuw %struct.ImageParameters, ptr %212, i32 0, i32 88
  store i32 %211, ptr %213, align 8, !tbaa !95
  %214 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !31
  %215 = load ptr, ptr @img, align 8, !tbaa !3
  %216 = getelementptr inbounds nuw %struct.ImageParameters, ptr %215, i32 0, i32 89
  store i32 %214, ptr %216, align 4, !tbaa !109
  %217 = load ptr, ptr @img, align 8, !tbaa !3
  %218 = getelementptr inbounds nuw %struct.ImageParameters, ptr %217, i32 0, i32 122
  %219 = load i32, ptr %218, align 8, !tbaa !117
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %204
  %222 = load ptr, ptr @input, align 8, !tbaa !3
  %223 = getelementptr inbounds nuw %struct.InputParameters, ptr %222, i32 0, i32 73
  %224 = load i32, ptr %223, align 4, !tbaa !118
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  %227 = load i32, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 5), align 8, !tbaa !119
  %228 = load ptr, ptr @active_sps, align 8, !tbaa !3
  %229 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %228, i32 0, i32 21
  %230 = load i32, ptr %229, align 4, !tbaa !123
  %231 = icmp eq i32 %227, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load ptr, ptr @img, align 8, !tbaa !3
  %234 = getelementptr inbounds nuw %struct.ImageParameters, ptr %233, i32 0, i32 115
  %235 = load i32, ptr %234, align 4, !tbaa !124
  call void @poc_based_ref_management(i32 noundef signext %235)
  br label %236

236:                                              ; preds = %232, %226, %221, %204
  %237 = load ptr, ptr @input, align 8, !tbaa !3
  %238 = getelementptr inbounds nuw %struct.InputParameters, ptr %237, i32 0, i32 31
  %239 = load i32, ptr %238, align 4, !tbaa !125
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %310

241:                                              ; preds = %236
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %242

242:                                              ; preds = %272, %241
  %243 = load i32, ptr %3, align 4, !tbaa !31
  %244 = load i32, ptr @listXsize, align 4, !tbaa !31
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %242
  %247 = load ptr, ptr @listX, align 8, !tbaa !126
  %248 = load i32, ptr %3, align 4, !tbaa !31
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds ptr, ptr %247, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !128
  %252 = getelementptr inbounds nuw %struct.storable_picture, ptr %251, i32 0, i32 1
  %253 = load i32, ptr %252, align 4, !tbaa !130
  %254 = load ptr, ptr @img, align 8, !tbaa !3
  %255 = getelementptr inbounds nuw %struct.ImageParameters, ptr %254, i32 0, i32 169
  %256 = load i32, ptr %255, align 4, !tbaa !138
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %271

258:                                              ; preds = %246
  %259 = load ptr, ptr @img, align 8, !tbaa !3
  %260 = getelementptr inbounds nuw %struct.ImageParameters, ptr %259, i32 0, i32 114
  %261 = load i32, ptr %260, align 8, !tbaa !139
  %262 = load ptr, ptr @img, align 8, !tbaa !3
  %263 = getelementptr inbounds nuw %struct.ImageParameters, ptr %262, i32 0, i32 169
  %264 = load i32, ptr %263, align 4, !tbaa !138
  %265 = icmp sgt i32 %261, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %258
  %267 = load i32, ptr %3, align 4, !tbaa !31
  %268 = call signext i32 @imax(i32 noundef signext 1, i32 noundef signext %267)
  %269 = load ptr, ptr @img, align 8, !tbaa !3
  %270 = getelementptr inbounds nuw %struct.ImageParameters, ptr %269, i32 0, i32 88
  store i32 %268, ptr %270, align 8, !tbaa !95
  store i32 %268, ptr @listXsize, align 4, !tbaa !31
  br label %275

271:                                              ; preds = %258, %246
  br label %272

272:                                              ; preds = %271
  %273 = load i32, ptr %3, align 4, !tbaa !31
  %274 = add nsw i32 %273, 1
  store i32 %274, ptr %3, align 4, !tbaa !31
  br label %242, !llvm.loop !140

275:                                              ; preds = %266, %242
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %276

276:                                              ; preds = %306, %275
  %277 = load i32, ptr %3, align 4, !tbaa !31
  %278 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !31
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %309

280:                                              ; preds = %276
  %281 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @listX, i64 0, i64 1), align 8, !tbaa !126
  %282 = load i32, ptr %3, align 4, !tbaa !31
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds ptr, ptr %281, i64 %283
  %285 = load ptr, ptr %284, align 8, !tbaa !128
  %286 = getelementptr inbounds nuw %struct.storable_picture, ptr %285, i32 0, i32 1
  %287 = load i32, ptr %286, align 4, !tbaa !130
  %288 = load ptr, ptr @img, align 8, !tbaa !3
  %289 = getelementptr inbounds nuw %struct.ImageParameters, ptr %288, i32 0, i32 169
  %290 = load i32, ptr %289, align 4, !tbaa !138
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %305

292:                                              ; preds = %280
  %293 = load ptr, ptr @img, align 8, !tbaa !3
  %294 = getelementptr inbounds nuw %struct.ImageParameters, ptr %293, i32 0, i32 114
  %295 = load i32, ptr %294, align 8, !tbaa !139
  %296 = load ptr, ptr @img, align 8, !tbaa !3
  %297 = getelementptr inbounds nuw %struct.ImageParameters, ptr %296, i32 0, i32 169
  %298 = load i32, ptr %297, align 4, !tbaa !138
  %299 = icmp sgt i32 %295, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %292
  %301 = load i32, ptr %3, align 4, !tbaa !31
  %302 = call signext i32 @imax(i32 noundef signext 1, i32 noundef signext %301)
  %303 = load ptr, ptr @img, align 8, !tbaa !3
  %304 = getelementptr inbounds nuw %struct.ImageParameters, ptr %303, i32 0, i32 89
  store i32 %302, ptr %304, align 4, !tbaa !109
  store i32 %302, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !31
  br label %309

305:                                              ; preds = %292, %280
  br label %306

306:                                              ; preds = %305
  %307 = load i32, ptr %3, align 4, !tbaa !31
  %308 = add nsw i32 %307, 1
  store i32 %308, ptr %3, align 4, !tbaa !31
  br label %276, !llvm.loop !141

309:                                              ; preds = %300, %276
  br label %310

310:                                              ; preds = %309, %236
  call void @init_ref_pic_list_reordering()
  %311 = load ptr, ptr @img, align 8, !tbaa !3
  %312 = getelementptr inbounds nuw %struct.ImageParameters, ptr %311, i32 0, i32 5
  %313 = load i32, ptr %312, align 4, !tbaa !66
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %472

315:                                              ; preds = %310
  %316 = load ptr, ptr @input, align 8, !tbaa !3
  %317 = getelementptr inbounds nuw %struct.InputParameters, ptr %316, i32 0, i32 72
  %318 = load i32, ptr %317, align 8, !tbaa !142
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %472

320:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  %321 = load ptr, ptr %7, align 8, !tbaa !3
  call void @alloc_ref_pic_list_reordering_buffer(ptr noundef %321)
  %322 = load ptr, ptr @img, align 8, !tbaa !3
  %323 = getelementptr inbounds nuw %struct.ImageParameters, ptr %322, i32 0, i32 5
  %324 = load i32, ptr %323, align 4, !tbaa !66
  %325 = icmp ne i32 %324, 2
  br i1 %325, label %326, label %398

326:                                              ; preds = %320
  %327 = load ptr, ptr @img, align 8, !tbaa !3
  %328 = getelementptr inbounds nuw %struct.ImageParameters, ptr %327, i32 0, i32 5
  %329 = load i32, ptr %328, align 4, !tbaa !66
  %330 = icmp ne i32 %329, 4
  br i1 %330, label %331, label %398

331:                                              ; preds = %326
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %332

332:                                              ; preds = %358, %331
  %333 = load i32, ptr %8, align 4, !tbaa !31
  %334 = load ptr, ptr @img, align 8, !tbaa !3
  %335 = getelementptr inbounds nuw %struct.ImageParameters, ptr %334, i32 0, i32 88
  %336 = load i32, ptr %335, align 8, !tbaa !95
  %337 = add nsw i32 %336, 1
  %338 = icmp slt i32 %333, %337
  br i1 %338, label %339, label %361

339:                                              ; preds = %332
  %340 = load ptr, ptr %7, align 8, !tbaa !3
  %341 = getelementptr inbounds nuw %struct.Slice, ptr %340, i32 0, i32 10
  %342 = load ptr, ptr %341, align 8, !tbaa !143
  %343 = load i32, ptr %8, align 4, !tbaa !31
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, ptr %342, i64 %344
  store i32 3, ptr %345, align 4, !tbaa !31
  %346 = load ptr, ptr %7, align 8, !tbaa !3
  %347 = getelementptr inbounds nuw %struct.Slice, ptr %346, i32 0, i32 11
  %348 = load ptr, ptr %347, align 8, !tbaa !144
  %349 = load i32, ptr %8, align 4, !tbaa !31
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, ptr %348, i64 %350
  store i32 0, ptr %351, align 4, !tbaa !31
  %352 = load ptr, ptr %7, align 8, !tbaa !3
  %353 = getelementptr inbounds nuw %struct.Slice, ptr %352, i32 0, i32 12
  %354 = load ptr, ptr %353, align 8, !tbaa !145
  %355 = load i32, ptr %8, align 4, !tbaa !31
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, ptr %354, i64 %356
  store i32 0, ptr %357, align 4, !tbaa !31
  br label %358

358:                                              ; preds = %339
  %359 = load i32, ptr %8, align 4, !tbaa !31
  %360 = add nsw i32 %359, 1
  store i32 %360, ptr %8, align 4, !tbaa !31
  br label %332, !llvm.loop !146

361:                                              ; preds = %332
  %362 = load ptr, ptr @img, align 8, !tbaa !3
  %363 = getelementptr inbounds nuw %struct.ImageParameters, ptr %362, i32 0, i32 5
  %364 = load i32, ptr %363, align 4, !tbaa !66
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %366, label %397

366:                                              ; preds = %361
  store i32 0, ptr %8, align 4, !tbaa !31
  br label %367

367:                                              ; preds = %393, %366
  %368 = load i32, ptr %8, align 4, !tbaa !31
  %369 = load ptr, ptr @img, align 8, !tbaa !3
  %370 = getelementptr inbounds nuw %struct.ImageParameters, ptr %369, i32 0, i32 89
  %371 = load i32, ptr %370, align 4, !tbaa !109
  %372 = add nsw i32 %371, 1
  %373 = icmp slt i32 %368, %372
  br i1 %373, label %374, label %396

374:                                              ; preds = %367
  %375 = load ptr, ptr %7, align 8, !tbaa !3
  %376 = getelementptr inbounds nuw %struct.Slice, ptr %375, i32 0, i32 14
  %377 = load ptr, ptr %376, align 8, !tbaa !147
  %378 = load i32, ptr %8, align 4, !tbaa !31
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, ptr %377, i64 %379
  store i32 3, ptr %380, align 4, !tbaa !31
  %381 = load ptr, ptr %7, align 8, !tbaa !3
  %382 = getelementptr inbounds nuw %struct.Slice, ptr %381, i32 0, i32 15
  %383 = load ptr, ptr %382, align 8, !tbaa !148
  %384 = load i32, ptr %8, align 4, !tbaa !31
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %383, i64 %385
  store i32 0, ptr %386, align 4, !tbaa !31
  %387 = load ptr, ptr %7, align 8, !tbaa !3
  %388 = getelementptr inbounds nuw %struct.Slice, ptr %387, i32 0, i32 16
  %389 = load ptr, ptr %388, align 8, !tbaa !149
  %390 = load i32, ptr %8, align 4, !tbaa !31
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, ptr %389, i64 %391
  store i32 0, ptr %392, align 4, !tbaa !31
  br label %393

393:                                              ; preds = %374
  %394 = load i32, ptr %8, align 4, !tbaa !31
  %395 = add nsw i32 %394, 1
  store i32 %395, ptr %8, align 4, !tbaa !31
  br label %367, !llvm.loop !150

396:                                              ; preds = %367
  br label %397

397:                                              ; preds = %396, %361
  br label %398

398:                                              ; preds = %397, %326, %320
  %399 = load ptr, ptr @img, align 8, !tbaa !3
  %400 = getelementptr inbounds nuw %struct.ImageParameters, ptr %399, i32 0, i32 5
  %401 = load i32, ptr %400, align 4, !tbaa !66
  %402 = icmp ne i32 %401, 2
  br i1 %402, label %403, label %471

403:                                              ; preds = %398
  %404 = load ptr, ptr @img, align 8, !tbaa !3
  %405 = getelementptr inbounds nuw %struct.ImageParameters, ptr %404, i32 0, i32 5
  %406 = load i32, ptr %405, align 4, !tbaa !66
  %407 = icmp ne i32 %406, 4
  br i1 %407, label %408, label %471

408:                                              ; preds = %403
  %409 = load ptr, ptr @img, align 8, !tbaa !3
  %410 = getelementptr inbounds nuw %struct.ImageParameters, ptr %409, i32 0, i32 88
  %411 = load i32, ptr %410, align 8, !tbaa !95
  store i32 %411, ptr %9, align 4, !tbaa !31
  %412 = load ptr, ptr @listX, align 8, !tbaa !126
  %413 = load i32, ptr %9, align 4, !tbaa !31
  %414 = load ptr, ptr %7, align 8, !tbaa !3
  %415 = getelementptr inbounds nuw %struct.Slice, ptr %414, i32 0, i32 10
  %416 = load ptr, ptr %415, align 8, !tbaa !143
  %417 = load ptr, ptr %7, align 8, !tbaa !3
  %418 = getelementptr inbounds nuw %struct.Slice, ptr %417, i32 0, i32 11
  %419 = load ptr, ptr %418, align 8, !tbaa !144
  %420 = load ptr, ptr %7, align 8, !tbaa !3
  %421 = getelementptr inbounds nuw %struct.Slice, ptr %420, i32 0, i32 12
  %422 = load ptr, ptr %421, align 8, !tbaa !145
  call void @poc_ref_pic_reorder(ptr noundef %412, i32 noundef signext %413, ptr noundef %416, ptr noundef %419, ptr noundef %422, i32 noundef signext 0)
  %423 = load ptr, ptr @listX, align 8, !tbaa !126
  %424 = load ptr, ptr @img, align 8, !tbaa !3
  %425 = getelementptr inbounds nuw %struct.ImageParameters, ptr %424, i32 0, i32 88
  %426 = load i32, ptr %425, align 8, !tbaa !95
  %427 = sub nsw i32 %426, 1
  %428 = load ptr, ptr %7, align 8, !tbaa !3
  %429 = getelementptr inbounds nuw %struct.Slice, ptr %428, i32 0, i32 10
  %430 = load ptr, ptr %429, align 8, !tbaa !143
  %431 = load ptr, ptr %7, align 8, !tbaa !3
  %432 = getelementptr inbounds nuw %struct.Slice, ptr %431, i32 0, i32 11
  %433 = load ptr, ptr %432, align 8, !tbaa !144
  %434 = load ptr, ptr %7, align 8, !tbaa !3
  %435 = getelementptr inbounds nuw %struct.Slice, ptr %434, i32 0, i32 12
  %436 = load ptr, ptr %435, align 8, !tbaa !145
  call void @reorder_ref_pic_list(ptr noundef %423, ptr noundef @listXsize, i32 noundef signext %427, ptr noundef %430, ptr noundef %433, ptr noundef %436)
  %437 = load ptr, ptr @img, align 8, !tbaa !3
  %438 = getelementptr inbounds nuw %struct.ImageParameters, ptr %437, i32 0, i32 5
  %439 = load i32, ptr %438, align 4, !tbaa !66
  %440 = icmp eq i32 %439, 1
  br i1 %440, label %441, label %470

441:                                              ; preds = %408
  %442 = load ptr, ptr @img, align 8, !tbaa !3
  %443 = getelementptr inbounds nuw %struct.ImageParameters, ptr %442, i32 0, i32 89
  %444 = load i32, ptr %443, align 4, !tbaa !109
  store i32 %444, ptr %9, align 4, !tbaa !31
  %445 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @listX, i64 0, i64 1), align 8, !tbaa !126
  %446 = load i32, ptr %9, align 4, !tbaa !31
  %447 = load ptr, ptr %7, align 8, !tbaa !3
  %448 = getelementptr inbounds nuw %struct.Slice, ptr %447, i32 0, i32 14
  %449 = load ptr, ptr %448, align 8, !tbaa !147
  %450 = load ptr, ptr %7, align 8, !tbaa !3
  %451 = getelementptr inbounds nuw %struct.Slice, ptr %450, i32 0, i32 15
  %452 = load ptr, ptr %451, align 8, !tbaa !148
  %453 = load ptr, ptr %7, align 8, !tbaa !3
  %454 = getelementptr inbounds nuw %struct.Slice, ptr %453, i32 0, i32 16
  %455 = load ptr, ptr %454, align 8, !tbaa !149
  call void @poc_ref_pic_reorder(ptr noundef %445, i32 noundef signext %446, ptr noundef %449, ptr noundef %452, ptr noundef %455, i32 noundef signext 1)
  %456 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @listX, i64 0, i64 1), align 8, !tbaa !126
  %457 = load ptr, ptr @img, align 8, !tbaa !3
  %458 = getelementptr inbounds nuw %struct.ImageParameters, ptr %457, i32 0, i32 89
  %459 = load i32, ptr %458, align 4, !tbaa !109
  %460 = sub nsw i32 %459, 1
  %461 = load ptr, ptr %7, align 8, !tbaa !3
  %462 = getelementptr inbounds nuw %struct.Slice, ptr %461, i32 0, i32 14
  %463 = load ptr, ptr %462, align 8, !tbaa !147
  %464 = load ptr, ptr %7, align 8, !tbaa !3
  %465 = getelementptr inbounds nuw %struct.Slice, ptr %464, i32 0, i32 15
  %466 = load ptr, ptr %465, align 8, !tbaa !148
  %467 = load ptr, ptr %7, align 8, !tbaa !3
  %468 = getelementptr inbounds nuw %struct.Slice, ptr %467, i32 0, i32 16
  %469 = load ptr, ptr %468, align 8, !tbaa !149
  call void @reorder_ref_pic_list(ptr noundef %456, ptr noundef getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), i32 noundef signext %460, ptr noundef %463, ptr noundef %466, ptr noundef %469)
  br label %470

470:                                              ; preds = %441, %408
  br label %471

471:                                              ; preds = %470, %403, %398
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  br label %472

472:                                              ; preds = %471, %315, %310
  %473 = load ptr, ptr @img, align 8, !tbaa !3
  %474 = getelementptr inbounds nuw %struct.ImageParameters, ptr %473, i32 0, i32 6
  %475 = load i32, ptr %474, align 8, !tbaa !114
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %472
  call void @init_mbaff_lists()
  br label %478

478:                                              ; preds = %477, %472
  %479 = load ptr, ptr @img, align 8, !tbaa !3
  %480 = getelementptr inbounds nuw %struct.ImageParameters, ptr %479, i32 0, i32 5
  %481 = load i32, ptr %480, align 4, !tbaa !66
  %482 = icmp ne i32 %481, 2
  br i1 %482, label %483, label %529

483:                                              ; preds = %478
  %484 = load ptr, ptr @active_pps, align 8, !tbaa !3
  %485 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %484, i32 0, i32 19
  %486 = load i32, ptr %485, align 8, !tbaa !151
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %498, label %488

488:                                              ; preds = %483
  %489 = load ptr, ptr @active_pps, align 8, !tbaa !3
  %490 = getelementptr inbounds nuw %struct.pic_parameter_set_rbsp_t, ptr %489, i32 0, i32 20
  %491 = load i32, ptr %490, align 4, !tbaa !152
  %492 = icmp ugt i32 %491, 0
  br i1 %492, label %493, label %529

493:                                              ; preds = %488
  %494 = load ptr, ptr @img, align 8, !tbaa !3
  %495 = getelementptr inbounds nuw %struct.ImageParameters, ptr %494, i32 0, i32 5
  %496 = load i32, ptr %495, align 4, !tbaa !66
  %497 = icmp eq i32 %496, 1
  br i1 %497, label %498, label %529

498:                                              ; preds = %493, %483
  %499 = load ptr, ptr @img, align 8, !tbaa !3
  %500 = getelementptr inbounds nuw %struct.ImageParameters, ptr %499, i32 0, i32 5
  %501 = load i32, ptr %500, align 4, !tbaa !66
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %498
  %504 = load ptr, ptr @img, align 8, !tbaa !3
  %505 = getelementptr inbounds nuw %struct.ImageParameters, ptr %504, i32 0, i32 5
  %506 = load i32, ptr %505, align 4, !tbaa !66
  %507 = icmp eq i32 %506, 3
  br i1 %507, label %508, label %527

508:                                              ; preds = %503, %498
  %509 = load ptr, ptr @input, align 8, !tbaa !3
  %510 = getelementptr inbounds nuw %struct.InputParameters, ptr %509, i32 0, i32 34
  %511 = load i32, ptr %510, align 8, !tbaa !153
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %525

513:                                              ; preds = %508
  %514 = load ptr, ptr @input, align 8, !tbaa !3
  %515 = getelementptr inbounds nuw %struct.InputParameters, ptr %514, i32 0, i32 62
  %516 = load i32, ptr %515, align 4, !tbaa !154
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %525

518:                                              ; preds = %513
  %519 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %520 = load ptr, ptr @enc_frame_picture2, align 8, !tbaa !128
  %521 = icmp eq ptr %519, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %518
  call void @estimate_weighting_factor_P_slice(i32 noundef signext 0)
  br label %524

523:                                              ; preds = %518
  call void @estimate_weighting_factor_P_slice(i32 noundef signext 1)
  br label %524

524:                                              ; preds = %523, %522
  br label %526

525:                                              ; preds = %513, %508
  call void @estimate_weighting_factor_P_slice(i32 noundef signext 0)
  br label %526

526:                                              ; preds = %525, %524
  br label %528

527:                                              ; preds = %503
  call void @estimate_weighting_factor_B_slice()
  br label %528

528:                                              ; preds = %527, %526
  br label %529

529:                                              ; preds = %528, %493, %488, %478
  call void @set_ref_pic_num()
  %530 = load ptr, ptr @img, align 8, !tbaa !3
  %531 = getelementptr inbounds nuw %struct.ImageParameters, ptr %530, i32 0, i32 5
  %532 = load i32, ptr %531, align 4, !tbaa !66
  %533 = icmp eq i32 %532, 1
  br i1 %533, label %534, label %536

534:                                              ; preds = %529
  %535 = load ptr, ptr @Co_located, align 8, !tbaa !155
  call void @compute_colocated(ptr noundef %535, ptr noundef @listX)
  br label %536

536:                                              ; preds = %534, %529
  %537 = load ptr, ptr @img, align 8, !tbaa !3
  %538 = getelementptr inbounds nuw %struct.ImageParameters, ptr %537, i32 0, i32 5
  %539 = load i32, ptr %538, align 4, !tbaa !66
  %540 = icmp ne i32 %539, 2
  br i1 %540, label %541, label %548

541:                                              ; preds = %536
  %542 = load ptr, ptr @input, align 8, !tbaa !3
  %543 = getelementptr inbounds nuw %struct.InputParameters, ptr %542, i32 0, i32 169
  %544 = load i32, ptr %543, align 4, !tbaa !157
  %545 = icmp eq i32 %544, 3
  br i1 %545, label %546, label %548

546:                                              ; preds = %541
  %547 = load ptr, ptr @EPZSCo_located, align 8, !tbaa !3
  call void @EPZSSliceInit(ptr noundef %547, ptr noundef @listX)
  br label %548

548:                                              ; preds = %546, %541, %536
  %549 = load ptr, ptr @input, align 8, !tbaa !3
  %550 = getelementptr inbounds nuw %struct.InputParameters, ptr %549, i32 0, i32 74
  %551 = load i32, ptr %550, align 8, !tbaa !45
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %553, label %583

553:                                              ; preds = %548
  store ptr @writeSE_UVLC, ptr @writeMB_typeInfo, align 8, !tbaa !3
  store ptr @writeIntraPredMode_CAVLC, ptr @writeIntraPredMode, align 8, !tbaa !3
  store ptr @writeSE_UVLC, ptr @writeB8_typeInfo, align 8, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %554

554:                                              ; preds = %579, %553
  %555 = load i32, ptr %3, align 4, !tbaa !31
  %556 = icmp slt i32 %555, 6
  br i1 %556, label %557, label %582

557:                                              ; preds = %554
  %558 = load i32, ptr %3, align 4, !tbaa !31
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !31
  switch i32 %561, label %574 [
    i32 0, label %562
    i32 1, label %566
    i32 2, label %570
  ]

562:                                              ; preds = %557
  %563 = load i32, ptr %3, align 4, !tbaa !31
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %564
  store ptr null, ptr %565, align 8, !tbaa !3
  br label %578

566:                                              ; preds = %557
  %567 = load i32, ptr %3, align 4, !tbaa !31
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %568
  store ptr @writeSE_Dummy, ptr %569, align 8, !tbaa !3
  br label %578

570:                                              ; preds = %557
  %571 = load i32, ptr %3, align 4, !tbaa !31
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %572
  store ptr @writeSE_invFlag, ptr %573, align 8, !tbaa !3
  br label %578

574:                                              ; preds = %557
  %575 = load i32, ptr %3, align 4, !tbaa !31
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %576
  store ptr @writeSE_UVLC, ptr %577, align 8, !tbaa !3
  br label %578

578:                                              ; preds = %574, %570, %566, %562
  br label %579

579:                                              ; preds = %578
  %580 = load i32, ptr %3, align 4, !tbaa !31
  %581 = add nsw i32 %580, 1
  store i32 %581, ptr %3, align 4, !tbaa !31
  br label %554, !llvm.loop !158

582:                                              ; preds = %554
  store ptr @writeSE_SVLC, ptr @writeMVD, align 8, !tbaa !3
  store ptr @writeCBP_VLC, ptr @writeCBP, align 8, !tbaa !3
  store ptr @writeSE_SVLC, ptr @writeDquant, align 8, !tbaa !3
  store ptr @writeSE_UVLC, ptr @writeCIPredMode, align 8, !tbaa !3
  store ptr @writeSE_Flag, ptr @writeFieldModeInfo, align 8, !tbaa !3
  store ptr @writeSE_Flag, ptr @writeMB_transform_size, align 8, !tbaa !3
  br label %609

583:                                              ; preds = %548
  store ptr @writeMB_typeInfo_CABAC, ptr @writeMB_typeInfo, align 8, !tbaa !3
  store ptr @writeIntraPredMode_CABAC, ptr @writeIntraPredMode, align 8, !tbaa !3
  store ptr @writeB8_typeInfo_CABAC, ptr @writeB8_typeInfo, align 8, !tbaa !3
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %584

584:                                              ; preds = %605, %583
  %585 = load i32, ptr %3, align 4, !tbaa !31
  %586 = icmp slt i32 %585, 6
  br i1 %586, label %587, label %608

587:                                              ; preds = %584
  %588 = load i32, ptr %3, align 4, !tbaa !31
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !31
  switch i32 %591, label %600 [
    i32 0, label %592
    i32 1, label %596
  ]

592:                                              ; preds = %587
  %593 = load i32, ptr %3, align 4, !tbaa !31
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %594
  store ptr null, ptr %595, align 8, !tbaa !3
  br label %596

596:                                              ; preds = %587, %592
  %597 = load i32, ptr %3, align 4, !tbaa !31
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %598
  store ptr @writeSE_Dummy, ptr %599, align 8, !tbaa !3
  br label %604

600:                                              ; preds = %587
  %601 = load i32, ptr %3, align 4, !tbaa !31
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds [6 x ptr], ptr @writeRefFrame, i64 0, i64 %602
  store ptr @writeRefFrame_CABAC, ptr %603, align 8, !tbaa !3
  br label %604

604:                                              ; preds = %600, %596
  br label %605

605:                                              ; preds = %604
  %606 = load i32, ptr %3, align 4, !tbaa !31
  %607 = add nsw i32 %606, 1
  store i32 %607, ptr %3, align 4, !tbaa !31
  br label %584, !llvm.loop !159

608:                                              ; preds = %584
  store ptr @writeMVD_CABAC, ptr @writeMVD, align 8, !tbaa !3
  store ptr @writeCBP_CABAC, ptr @writeCBP, align 8, !tbaa !3
  store ptr @writeDquant_CABAC, ptr @writeDquant, align 8, !tbaa !3
  store ptr @writeCIPredMode_CABAC, ptr @writeCIPredMode, align 8, !tbaa !3
  store ptr @writeFieldModeInfo_CABAC, ptr @writeFieldModeInfo, align 8, !tbaa !3
  store ptr @writeMB_transform_size_CABAC, ptr @writeMB_transform_size, align 8, !tbaa !3
  br label %609

609:                                              ; preds = %608, %582
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret void
}

declare void @SetCtxModelNumber() #2

declare void @CalculateOffsetParam() #2

declare void @CalculateOffset8Param() #2

declare void @start_macroblock(i32 noundef signext, i32 noundef signext) #2

declare void @write_one_macroblock(i32 noundef signext) #2

declare void @terminate_macroblock(ptr noundef, ptr noundef) #2

declare signext i32 @FmoGetNextMBNr(i32 noundef signext) #2

declare void @proceed2nextMacroblock() #2

declare signext i32 @FmoGetPreviousMBNr(i32 noundef signext) #2

; Function Attrs: nounwind
declare signext i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

declare void @error(ptr noundef, i32 noundef signext) #2

declare void @copy_rc_jvt(ptr noundef, ptr noundef) #2

declare void @copy_rc_generic(ptr noundef, ptr noundef) #2

declare void @copy_rdopt_data(i32 noundef signext) #2

declare signext i32 @FmoGetLastCodedMBOfSliceGroup(i32 noundef signext) #2

declare signext i32 @FmoMB2SliceGroup(i32 noundef signext) #2

; Function Attrs: nounwind
define dso_local void @free_slice_list(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %4

4:                                                ; preds = %22, %1
  %5 = load i32, ptr %3, align 4, !tbaa !31
  %6 = load ptr, ptr %2, align 8, !tbaa !3
  %7 = getelementptr inbounds nuw %struct.Picture, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.Picture, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %3, align 4, !tbaa !31
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100 x ptr], ptr %12, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !3
  call void @free_slice(ptr noundef %16)
  %17 = load ptr, ptr %2, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.Picture, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %3, align 4, !tbaa !31
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100 x ptr], ptr %18, i64 0, i64 %20
  store ptr null, ptr %21, align 8, !tbaa !3
  br label %22

22:                                               ; preds = %10
  %23 = load i32, ptr %3, align 4, !tbaa !31
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %3, align 4, !tbaa !31
  br label %4, !llvm.loop !160

25:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret void
}

; Function Attrs: nounwind
define internal void @free_slice(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #6
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = icmp ne ptr %5, null
  br i1 %6, label %7, label %73

7:                                                ; preds = %1
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %8

8:                                                ; preds = %47, %7
  %9 = load i32, ptr %3, align 4, !tbaa !31
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.Slice, ptr %10, i32 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = load ptr, ptr %2, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.Slice, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = load i32, ptr %3, align 4, !tbaa !31
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.datapartition, ptr %17, i64 %19
  store ptr %20, ptr %4, align 8, !tbaa !104
  %21 = load ptr, ptr %4, align 8, !tbaa !104
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %14
  %24 = load ptr, ptr %4, align 8, !tbaa !104
  %25 = getelementptr inbounds nuw %struct.datapartition, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds nuw %struct.Bitstream, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load ptr, ptr %4, align 8, !tbaa !104
  %32 = getelementptr inbounds nuw %struct.datapartition, ptr %31, i32 0, i32 0
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = getelementptr inbounds nuw %struct.Bitstream, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  call void @free(ptr noundef %35) #6
  br label %36

36:                                               ; preds = %30, %23
  %37 = load ptr, ptr %4, align 8, !tbaa !104
  %38 = getelementptr inbounds nuw %struct.datapartition, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = icmp ne ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load ptr, ptr %4, align 8, !tbaa !104
  %43 = getelementptr inbounds nuw %struct.datapartition, ptr %42, i32 0, i32 0
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  call void @free(ptr noundef %44) #6
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %14
  br label %47

47:                                               ; preds = %46
  %48 = load i32, ptr %3, align 4, !tbaa !31
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %3, align 4, !tbaa !31
  br label %8, !llvm.loop !161

50:                                               ; preds = %8
  %51 = load ptr, ptr %2, align 8, !tbaa !3
  %52 = getelementptr inbounds nuw %struct.Slice, ptr %51, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !39
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load ptr, ptr %2, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.Slice, ptr %56, i32 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !39
  call void @free(ptr noundef %58) #6
  br label %59

59:                                               ; preds = %55, %50
  %60 = load ptr, ptr @input, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.InputParameters, ptr %60, i32 0, i32 74
  %62 = load i32, ptr %61, align 8, !tbaa !45
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.Slice, ptr %65, i32 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !162
  call void @delete_contexts_MotionInfo(ptr noundef %67)
  %68 = load ptr, ptr %2, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.Slice, ptr %68, i32 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !163
  call void @delete_contexts_TextureInfo(ptr noundef %70)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load ptr, ptr %2, align 8, !tbaa !3
  call void @free(ptr noundef %72) #6
  br label %73

73:                                               ; preds = %71, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret void
}

; Function Attrs: nounwind
define dso_local void @poc_ref_pic_reorder(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef signext %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [32 x i32], align 4
  %19 = alloca [32 x i32], align 4
  %20 = alloca [32 x i32], align 4
  %21 = alloca [32 x i32], align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [32 x i32], align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store ptr %0, ptr %7, align 8, !tbaa !126
  store i32 %1, ptr %8, align 4, !tbaa !31
  store ptr %2, ptr %9, align 8, !tbaa !164
  store ptr %3, ptr %10, align 8, !tbaa !164
  store ptr %4, ptr %11, align 8, !tbaa !164
  store i32 %5, ptr %12, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr %18) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr %19) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr %20) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr %21) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #6
  call void @llvm.lifetime.start.p0(i64 128, ptr %24) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %26) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %28) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #6
  %30 = load i32, ptr @log2_max_frame_num_minus4, align 4, !tbaa !31
  %31 = add i32 %30, 4
  %32 = shl i32 1, %31
  store i32 %32, ptr %29, align 4, !tbaa !31
  %33 = load ptr, ptr @img, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.ImageParameters, ptr %33, i32 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !114
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %6
  %38 = load i32, ptr %29, align 4, !tbaa !31
  store i32 %38, ptr %28, align 4, !tbaa !31
  %39 = load ptr, ptr @img, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.ImageParameters, ptr %39, i32 0, i32 115
  %41 = load i32, ptr %40, align 4, !tbaa !124
  store i32 %41, ptr %16, align 4, !tbaa !31
  br label %50

42:                                               ; preds = %6
  %43 = load i32, ptr %29, align 4, !tbaa !31
  %44 = mul nsw i32 2, %43
  store i32 %44, ptr %28, align 4, !tbaa !31
  %45 = load ptr, ptr @img, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.ImageParameters, ptr %45, i32 0, i32 115
  %47 = load i32, ptr %46, align 4, !tbaa !124
  %48 = mul i32 2, %47
  %49 = add i32 %48, 1
  store i32 %49, ptr %16, align 4, !tbaa !31
  br label %50

50:                                               ; preds = %42, %37
  %51 = load i32, ptr %16, align 4, !tbaa !31
  store i32 %51, ptr %17, align 4, !tbaa !31
  store i32 0, ptr %13, align 4, !tbaa !31
  br label %52

52:                                               ; preds = %67, %50
  %53 = load i32, ptr %13, align 4, !tbaa !31
  %54 = load i32, ptr %8, align 4, !tbaa !31
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load ptr, ptr %7, align 8, !tbaa !126
  %58 = load i32, ptr %13, align 4, !tbaa !31
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw ptr, ptr %57, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !128
  %62 = getelementptr inbounds nuw %struct.storable_picture, ptr %61, i32 0, i32 11
  %63 = load i32, ptr %62, align 4, !tbaa !165
  %64 = load i32, ptr %13, align 4, !tbaa !31
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds nuw [32 x i32], ptr %18, i64 0, i64 %65
  store i32 %63, ptr %66, align 4, !tbaa !31
  br label %67

67:                                               ; preds = %56
  %68 = load i32, ptr %13, align 4, !tbaa !31
  %69 = add i32 %68, 1
  store i32 %69, ptr %13, align 4, !tbaa !31
  br label %52, !llvm.loop !166

70:                                               ; preds = %52
  store i32 0, ptr %13, align 4, !tbaa !31
  br label %71

71:                                               ; preds = %179, %70
  %72 = load i32, ptr %13, align 4, !tbaa !31
  %73 = load i32, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 5), align 8, !tbaa !119
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %182

75:                                               ; preds = %71
  %76 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %77 = load i32, ptr %13, align 4, !tbaa !31
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds nuw ptr, ptr %76, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !168
  %81 = getelementptr inbounds nuw %struct.frame_store, ptr %80, i32 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !169
  %83 = getelementptr inbounds nuw %struct.storable_picture, ptr %82, i32 0, i32 11
  %84 = load i32, ptr %83, align 4, !tbaa !165
  %85 = load i32, ptr %13, align 4, !tbaa !31
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %86
  store i32 %84, ptr %87, align 4, !tbaa !31
  %88 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %89 = load i32, ptr %13, align 4, !tbaa !31
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds nuw ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !168
  %93 = getelementptr inbounds nuw %struct.frame_store, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !171
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %178

96:                                               ; preds = %75
  %97 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %98 = load i32, ptr %13, align 4, !tbaa !31
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds nuw ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !168
  %102 = getelementptr inbounds nuw %struct.frame_store, ptr %101, i32 0, i32 10
  %103 = load ptr, ptr %102, align 8, !tbaa !169
  %104 = getelementptr inbounds nuw %struct.storable_picture, ptr %103, i32 0, i32 15
  %105 = load i32, ptr %104, align 4, !tbaa !172
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %178

107:                                              ; preds = %96
  %108 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %109 = load i32, ptr %13, align 4, !tbaa !31
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds nuw ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !168
  %113 = getelementptr inbounds nuw %struct.frame_store, ptr %112, i32 0, i32 10
  %114 = load ptr, ptr %113, align 8, !tbaa !169
  %115 = getelementptr inbounds nuw %struct.storable_picture, ptr %114, i32 0, i32 14
  %116 = load i32, ptr %115, align 8, !tbaa !173
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %178, label %118

118:                                              ; preds = %107
  %119 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %120 = load i32, ptr %13, align 4, !tbaa !31
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds nuw ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !168
  %124 = getelementptr inbounds nuw %struct.frame_store, ptr %123, i32 0, i32 10
  %125 = load ptr, ptr %124, align 8, !tbaa !169
  %126 = getelementptr inbounds nuw %struct.storable_picture, ptr %125, i32 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !130
  %128 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %129 = getelementptr inbounds nuw %struct.storable_picture, ptr %128, i32 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !130
  %131 = sub nsw i32 %127, %130
  %132 = call signext i32 @iabs(i32 noundef signext %131)
  store i32 %132, ptr %27, align 4, !tbaa !31
  %133 = load i32, ptr %27, align 4, !tbaa !31
  %134 = load i32, ptr %13, align 4, !tbaa !31
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %135
  store i32 %133, ptr %136, align 4, !tbaa !31
  %137 = load i32, ptr %12, align 4, !tbaa !31
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %118
  %140 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %141 = getelementptr inbounds nuw %struct.storable_picture, ptr %140, i32 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !130
  %143 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %144 = load i32, ptr %13, align 4, !tbaa !31
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds nuw ptr, ptr %143, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !168
  %148 = getelementptr inbounds nuw %struct.frame_store, ptr %147, i32 0, i32 10
  %149 = load ptr, ptr %148, align 8, !tbaa !169
  %150 = getelementptr inbounds nuw %struct.storable_picture, ptr %149, i32 0, i32 1
  %151 = load i32, ptr %150, align 4, !tbaa !130
  %152 = icmp slt i32 %142, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 -1
  %155 = load i32, ptr %13, align 4, !tbaa !31
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %156
  store i32 %154, ptr %157, align 4, !tbaa !31
  br label %177

158:                                              ; preds = %118
  %159 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %160 = getelementptr inbounds nuw %struct.storable_picture, ptr %159, i32 0, i32 1
  %161 = load i32, ptr %160, align 4, !tbaa !130
  %162 = load ptr, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 1), align 8, !tbaa !167
  %163 = load i32, ptr %13, align 4, !tbaa !31
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds nuw ptr, ptr %162, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !168
  %167 = getelementptr inbounds nuw %struct.frame_store, ptr %166, i32 0, i32 10
  %168 = load ptr, ptr %167, align 8, !tbaa !169
  %169 = getelementptr inbounds nuw %struct.storable_picture, ptr %168, i32 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !130
  %171 = icmp sgt i32 %161, %170
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 -1
  %174 = load i32, ptr %13, align 4, !tbaa !31
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %175
  store i32 %173, ptr %176, align 4, !tbaa !31
  br label %177

177:                                              ; preds = %158, %139
  br label %178

178:                                              ; preds = %177, %107, %96, %75
  br label %179

179:                                              ; preds = %178
  %180 = load i32, ptr %13, align 4, !tbaa !31
  %181 = add i32 %180, 1
  store i32 %181, ptr %13, align 4, !tbaa !31
  br label %71, !llvm.loop !174

182:                                              ; preds = %71
  store i32 0, ptr %13, align 4, !tbaa !31
  br label %183

183:                                              ; preds = %276, %182
  %184 = load i32, ptr %13, align 4, !tbaa !31
  %185 = load i32, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 5), align 8, !tbaa !119
  %186 = sub i32 %185, 1
  %187 = icmp ult i32 %184, %186
  br i1 %187, label %188, label %279

188:                                              ; preds = %183
  %189 = load i32, ptr %13, align 4, !tbaa !31
  %190 = add i32 %189, 1
  store i32 %190, ptr %14, align 4, !tbaa !31
  br label %191

191:                                              ; preds = %272, %188
  %192 = load i32, ptr %14, align 4, !tbaa !31
  %193 = load i32, ptr getelementptr inbounds nuw (%struct.decoded_picture_buffer, ptr @dpb, i32 0, i32 5), align 8, !tbaa !119
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %275

195:                                              ; preds = %191
  %196 = load i32, ptr %13, align 4, !tbaa !31
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !31
  %200 = load i32, ptr %14, align 4, !tbaa !31
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !31
  %204 = icmp sgt i32 %199, %203
  br i1 %204, label %225, label %205

205:                                              ; preds = %195
  %206 = load i32, ptr %13, align 4, !tbaa !31
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !31
  %210 = load i32, ptr %14, align 4, !tbaa !31
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !31
  %214 = icmp eq i32 %209, %213
  br i1 %214, label %215, label %271

215:                                              ; preds = %205
  %216 = load i32, ptr %14, align 4, !tbaa !31
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !31
  %220 = load i32, ptr %13, align 4, !tbaa !31
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !31
  %224 = icmp sgt i32 %219, %223
  br i1 %224, label %225, label %271

225:                                              ; preds = %215, %195
  %226 = load i32, ptr %13, align 4, !tbaa !31
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %227
  %229 = load i32, ptr %228, align 4, !tbaa !31
  store i32 %229, ptr %25, align 4, !tbaa !31
  %230 = load i32, ptr %14, align 4, !tbaa !31
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !31
  %234 = load i32, ptr %13, align 4, !tbaa !31
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %235
  store i32 %233, ptr %236, align 4, !tbaa !31
  %237 = load i32, ptr %25, align 4, !tbaa !31
  %238 = load i32, ptr %14, align 4, !tbaa !31
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds nuw [32 x i32], ptr %24, i64 0, i64 %239
  store i32 %237, ptr %240, align 4, !tbaa !31
  %241 = load i32, ptr %13, align 4, !tbaa !31
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !31
  store i32 %244, ptr %25, align 4, !tbaa !31
  %245 = load i32, ptr %14, align 4, !tbaa !31
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !31
  %249 = load i32, ptr %13, align 4, !tbaa !31
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %250
  store i32 %248, ptr %251, align 4, !tbaa !31
  %252 = load i32, ptr %25, align 4, !tbaa !31
  %253 = load i32, ptr %14, align 4, !tbaa !31
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %254
  store i32 %252, ptr %255, align 4, !tbaa !31
  %256 = load i32, ptr %13, align 4, !tbaa !31
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !31
  store i32 %259, ptr %25, align 4, !tbaa !31
  %260 = load i32, ptr %14, align 4, !tbaa !31
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %261
  %263 = load i32, ptr %262, align 4, !tbaa !31
  %264 = load i32, ptr %13, align 4, !tbaa !31
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %265
  store i32 %263, ptr %266, align 4, !tbaa !31
  %267 = load i32, ptr %25, align 4, !tbaa !31
  %268 = load i32, ptr %14, align 4, !tbaa !31
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds nuw [32 x i32], ptr %21, i64 0, i64 %269
  store i32 %267, ptr %270, align 4, !tbaa !31
  br label %271

271:                                              ; preds = %225, %215, %205
  br label %272

272:                                              ; preds = %271
  %273 = load i32, ptr %14, align 4, !tbaa !31
  %274 = add i32 %273, 1
  store i32 %274, ptr %14, align 4, !tbaa !31
  br label %191, !llvm.loop !175

275:                                              ; preds = %191
  br label %276

276:                                              ; preds = %275
  %277 = load i32, ptr %13, align 4, !tbaa !31
  %278 = add i32 %277, 1
  store i32 %278, ptr %13, align 4, !tbaa !31
  br label %183, !llvm.loop !176

279:                                              ; preds = %183
  store i32 1, ptr %23, align 4, !tbaa !31
  store i32 0, ptr %13, align 4, !tbaa !31
  br label %280

280:                                              ; preds = %296, %279
  %281 = load i32, ptr %13, align 4, !tbaa !31
  %282 = load i32, ptr %8, align 4, !tbaa !31
  %283 = icmp ult i32 %281, %282
  br i1 %283, label %284, label %299

284:                                              ; preds = %280
  %285 = load i32, ptr %13, align 4, !tbaa !31
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds nuw [32 x i32], ptr %18, i64 0, i64 %286
  %288 = load i32, ptr %287, align 4, !tbaa !31
  %289 = load i32, ptr %13, align 4, !tbaa !31
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !31
  %293 = icmp ne i32 %288, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %284
  store i32 0, ptr %23, align 4, !tbaa !31
  br label %295

295:                                              ; preds = %294, %284
  br label %296

296:                                              ; preds = %295
  %297 = load i32, ptr %13, align 4, !tbaa !31
  %298 = add i32 %297, 1
  store i32 %298, ptr %13, align 4, !tbaa !31
  br label %280, !llvm.loop !177

299:                                              ; preds = %280
  %300 = load i32, ptr %23, align 4, !tbaa !31
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %478

302:                                              ; preds = %299
  store i32 0, ptr %13, align 4, !tbaa !31
  br label %303

303:                                              ; preds = %441, %302
  %304 = load i32, ptr %13, align 4, !tbaa !31
  %305 = load i32, ptr %8, align 4, !tbaa !31
  %306 = icmp ult i32 %304, %305
  br i1 %306, label %307, label %444

307:                                              ; preds = %303
  %308 = load i32, ptr %13, align 4, !tbaa !31
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !31
  %312 = load i32, ptr %17, align 4, !tbaa !31
  %313 = sub nsw i32 %311, %312
  store i32 %313, ptr %26, align 4, !tbaa !31
  %314 = load i32, ptr %26, align 4, !tbaa !31
  %315 = icmp sle i32 %314, 0
  br i1 %315, label %316, label %342

316:                                              ; preds = %307
  %317 = load ptr, ptr %9, align 8, !tbaa !164
  %318 = load i32, ptr %13, align 4, !tbaa !31
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds nuw i32, ptr %317, i64 %319
  store i32 0, ptr %320, align 4, !tbaa !31
  %321 = load i32, ptr %26, align 4, !tbaa !31
  %322 = call signext i32 @iabs(i32 noundef signext %321)
  %323 = sub nsw i32 %322, 1
  %324 = load ptr, ptr %10, align 8, !tbaa !164
  %325 = load i32, ptr %13, align 4, !tbaa !31
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds nuw i32, ptr %324, i64 %326
  store i32 %323, ptr %327, align 4, !tbaa !31
  %328 = load ptr, ptr %10, align 8, !tbaa !164
  %329 = load i32, ptr %13, align 4, !tbaa !31
  %330 = zext i32 %329 to i64
  %331 = getelementptr inbounds nuw i32, ptr %328, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !31
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %316
  %335 = load i32, ptr %28, align 4, !tbaa !31
  %336 = sub nsw i32 %335, 1
  %337 = load ptr, ptr %10, align 8, !tbaa !164
  %338 = load i32, ptr %13, align 4, !tbaa !31
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds nuw i32, ptr %337, i64 %339
  store i32 %336, ptr %340, align 4, !tbaa !31
  br label %341

341:                                              ; preds = %334, %316
  br label %354

342:                                              ; preds = %307
  %343 = load ptr, ptr %9, align 8, !tbaa !164
  %344 = load i32, ptr %13, align 4, !tbaa !31
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds nuw i32, ptr %343, i64 %345
  store i32 1, ptr %346, align 4, !tbaa !31
  %347 = load i32, ptr %26, align 4, !tbaa !31
  %348 = call signext i32 @iabs(i32 noundef signext %347)
  %349 = sub nsw i32 %348, 1
  %350 = load ptr, ptr %10, align 8, !tbaa !164
  %351 = load i32, ptr %13, align 4, !tbaa !31
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds nuw i32, ptr %350, i64 %352
  store i32 %349, ptr %353, align 4, !tbaa !31
  br label %354

354:                                              ; preds = %342, %341
  %355 = load i32, ptr %13, align 4, !tbaa !31
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !31
  store i32 %358, ptr %17, align 4, !tbaa !31
  %359 = load i32, ptr %13, align 4, !tbaa !31
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !31
  %363 = load i32, ptr %13, align 4, !tbaa !31
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds nuw [32 x i32], ptr %20, i64 0, i64 %364
  store i32 %362, ptr %365, align 4, !tbaa !31
  %366 = load i32, ptr %13, align 4, !tbaa !31
  store i32 %366, ptr %15, align 4, !tbaa !31
  %367 = load i32, ptr %13, align 4, !tbaa !31
  store i32 %367, ptr %14, align 4, !tbaa !31
  br label %368

368:                                              ; preds = %393, %354
  %369 = load i32, ptr %14, align 4, !tbaa !31
  %370 = load i32, ptr %8, align 4, !tbaa !31
  %371 = icmp ult i32 %369, %370
  br i1 %371, label %372, label %396

372:                                              ; preds = %368
  %373 = load i32, ptr %14, align 4, !tbaa !31
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds nuw [32 x i32], ptr %18, i64 0, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !31
  %377 = load i32, ptr %13, align 4, !tbaa !31
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !31
  %381 = icmp ne i32 %376, %380
  br i1 %381, label %382, label %392

382:                                              ; preds = %372
  %383 = load i32, ptr %15, align 4, !tbaa !31
  %384 = add i32 %383, 1
  store i32 %384, ptr %15, align 4, !tbaa !31
  %385 = load i32, ptr %14, align 4, !tbaa !31
  %386 = zext i32 %385 to i64
  %387 = getelementptr inbounds nuw [32 x i32], ptr %18, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !31
  %389 = load i32, ptr %15, align 4, !tbaa !31
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds nuw [32 x i32], ptr %20, i64 0, i64 %390
  store i32 %388, ptr %391, align 4, !tbaa !31
  br label %392

392:                                              ; preds = %382, %372
  br label %393

393:                                              ; preds = %392
  %394 = load i32, ptr %14, align 4, !tbaa !31
  %395 = add i32 %394, 1
  store i32 %395, ptr %14, align 4, !tbaa !31
  br label %368, !llvm.loop !178

396:                                              ; preds = %368
  store i32 1, ptr %22, align 4, !tbaa !31
  %397 = load i32, ptr %13, align 4, !tbaa !31
  %398 = add i32 %397, 1
  store i32 %398, ptr %14, align 4, !tbaa !31
  br label %399

399:                                              ; preds = %415, %396
  %400 = load i32, ptr %14, align 4, !tbaa !31
  %401 = load i32, ptr %8, align 4, !tbaa !31
  %402 = icmp ult i32 %400, %401
  br i1 %402, label %403, label %418

403:                                              ; preds = %399
  %404 = load i32, ptr %14, align 4, !tbaa !31
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw [32 x i32], ptr %20, i64 0, i64 %405
  %407 = load i32, ptr %406, align 4, !tbaa !31
  %408 = load i32, ptr %14, align 4, !tbaa !31
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds nuw [32 x i32], ptr %19, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !31
  %412 = icmp ne i32 %407, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %403
  store i32 0, ptr %22, align 4, !tbaa !31
  br label %418

414:                                              ; preds = %403
  br label %415

415:                                              ; preds = %414
  %416 = load i32, ptr %14, align 4, !tbaa !31
  %417 = add i32 %416, 1
  store i32 %417, ptr %14, align 4, !tbaa !31
  br label %399, !llvm.loop !179

418:                                              ; preds = %413, %399
  %419 = load i32, ptr %22, align 4, !tbaa !31
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %424

421:                                              ; preds = %418
  %422 = load i32, ptr %13, align 4, !tbaa !31
  %423 = add i32 %422, 1
  store i32 %423, ptr %13, align 4, !tbaa !31
  br label %444

424:                                              ; preds = %418
  store i32 0, ptr %14, align 4, !tbaa !31
  br label %425

425:                                              ; preds = %437, %424
  %426 = load i32, ptr %14, align 4, !tbaa !31
  %427 = load i32, ptr %8, align 4, !tbaa !31
  %428 = icmp ult i32 %426, %427
  br i1 %428, label %429, label %440

429:                                              ; preds = %425
  %430 = load i32, ptr %14, align 4, !tbaa !31
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds nuw [32 x i32], ptr %20, i64 0, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !31
  %434 = load i32, ptr %14, align 4, !tbaa !31
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds nuw [32 x i32], ptr %18, i64 0, i64 %435
  store i32 %433, ptr %436, align 4, !tbaa !31
  br label %437

437:                                              ; preds = %429
  %438 = load i32, ptr %14, align 4, !tbaa !31
  %439 = add i32 %438, 1
  store i32 %439, ptr %14, align 4, !tbaa !31
  br label %425, !llvm.loop !180

440:                                              ; preds = %425
  br label %441

441:                                              ; preds = %440
  %442 = load i32, ptr %13, align 4, !tbaa !31
  %443 = add i32 %442, 1
  store i32 %443, ptr %13, align 4, !tbaa !31
  br label %303, !llvm.loop !181

444:                                              ; preds = %421, %303
  %445 = load ptr, ptr %9, align 8, !tbaa !164
  %446 = load i32, ptr %13, align 4, !tbaa !31
  %447 = zext i32 %446 to i64
  %448 = getelementptr inbounds nuw i32, ptr %445, i64 %447
  store i32 3, ptr %448, align 4, !tbaa !31
  store i32 0, ptr %14, align 4, !tbaa !31
  br label %449

449:                                              ; preds = %461, %444
  %450 = load i32, ptr %14, align 4, !tbaa !31
  %451 = load i32, ptr %8, align 4, !tbaa !31
  %452 = icmp ult i32 %450, %451
  br i1 %452, label %453, label %464

453:                                              ; preds = %449
  %454 = load i32, ptr %14, align 4, !tbaa !31
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds nuw [32 x i32], ptr %20, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !31
  %458 = load i32, ptr %14, align 4, !tbaa !31
  %459 = zext i32 %458 to i64
  %460 = getelementptr inbounds nuw [32 x i32], ptr %18, i64 0, i64 %459
  store i32 %457, ptr %460, align 4, !tbaa !31
  br label %461

461:                                              ; preds = %453
  %462 = load i32, ptr %14, align 4, !tbaa !31
  %463 = add i32 %462, 1
  store i32 %463, ptr %14, align 4, !tbaa !31
  br label %449, !llvm.loop !182

464:                                              ; preds = %449
  %465 = load i32, ptr %12, align 4, !tbaa !31
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %464
  %468 = load ptr, ptr @img, align 8, !tbaa !3
  %469 = getelementptr inbounds nuw %struct.ImageParameters, ptr %468, i32 0, i32 60
  %470 = load ptr, ptr %469, align 8, !tbaa !7
  %471 = getelementptr inbounds nuw %struct.Slice, ptr %470, i32 0, i32 9
  store i32 1, ptr %471, align 8, !tbaa !27
  br label %477

472:                                              ; preds = %464
  %473 = load ptr, ptr @img, align 8, !tbaa !3
  %474 = getelementptr inbounds nuw %struct.ImageParameters, ptr %473, i32 0, i32 60
  %475 = load ptr, ptr %474, align 8, !tbaa !7
  %476 = getelementptr inbounds nuw %struct.Slice, ptr %475, i32 0, i32 13
  store i32 1, ptr %476, align 8, !tbaa !30
  br label %477

477:                                              ; preds = %472, %467
  br label %478

478:                                              ; preds = %477, %299
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %28) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %26) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr %24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr %21) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr %20) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr %19) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr %18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  ret void
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iabs(i32 noundef signext %0) #3 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !31
  %3 = load i32, ptr %2, align 4, !tbaa !31
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !31
  %7 = sub nsw i32 0, %6
  br label %10

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !31
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi i32 [ %7, %5 ], [ %9, %8 ]
  ret i32 %11
}

; Function Attrs: nounwind
define dso_local void @SetLagrangianMultipliers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  %8 = load ptr, ptr @input, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.InputParameters, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !183
  %11 = sitofp i32 %10 to double
  %12 = fmul double 5.000000e-02, %11
  %13 = call double @dClip3(double noundef 0.000000e+00, double noundef 5.000000e-01, double noundef %12)
  %14 = fsub double 1.000000e+00, %13
  store double %14, ptr %5, align 8, !tbaa !67
  %15 = load ptr, ptr @input, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.InputParameters, ptr %15, i32 0, i32 113
  %17 = load i32, ptr %16, align 8, !tbaa !69
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %1049

19:                                               ; preds = %0
  store i32 0, ptr %2, align 4, !tbaa !31
  br label %20

20:                                               ; preds = %1045, %19
  %21 = load i32, ptr %2, align 4, !tbaa !31
  %22 = icmp slt i32 %21, 5
  br i1 %22, label %23, label %1048

23:                                               ; preds = %20
  %24 = load ptr, ptr @img, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.ImageParameters, ptr %24, i32 0, i32 144
  %26 = load i32, ptr %25, align 4, !tbaa !184
  %27 = sub nsw i32 0, %26
  store i32 %27, ptr %1, align 4, !tbaa !31
  br label %28

28:                                               ; preds = %1041, %23
  %29 = load i32, ptr %1, align 4, !tbaa !31
  %30 = icmp slt i32 %29, 52
  br i1 %30, label %31, label %1044

31:                                               ; preds = %28
  %32 = load i32, ptr %1, align 4, !tbaa !31
  %33 = sitofp i32 %32 to double
  %34 = load ptr, ptr @img, align 8, !tbaa !3
  %35 = getelementptr inbounds nuw %struct.ImageParameters, ptr %34, i32 0, i32 144
  %36 = load i32, ptr %35, align 4, !tbaa !184
  %37 = sitofp i32 %36 to double
  %38 = fadd double %33, %37
  %39 = fsub double %38, 1.200000e+01
  store double %39, ptr %4, align 8, !tbaa !67
  %40 = load ptr, ptr @input, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.InputParameters, ptr %40, i32 0, i32 180
  %42 = load i32, ptr %41, align 8, !tbaa !185
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %319

44:                                               ; preds = %31
  %45 = load ptr, ptr @input, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.InputParameters, ptr %45, i32 0, i32 181
  %47 = load i32, ptr %2, align 4, !tbaa !31
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [6 x double], ptr %46, i64 0, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !67
  %51 = load double, ptr %4, align 8, !tbaa !67
  %52 = fdiv double %51, 3.000000e+00
  %53 = call double @pow(double noundef 2.000000e+00, double noundef %52) #6, !tbaa !31
  %54 = fmul double %50, %53
  %55 = load ptr, ptr @img, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.ImageParameters, ptr %55, i32 0, i32 150
  %57 = load ptr, ptr %56, align 8, !tbaa !186
  %58 = load i32, ptr %2, align 4, !tbaa !31
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !187
  %62 = load i32, ptr %1, align 4, !tbaa !31
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, ptr %61, i64 %63
  store double %54, ptr %64, align 8, !tbaa !67
  %65 = load ptr, ptr @input, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.InputParameters, ptr %65, i32 0, i32 199
  %67 = getelementptr inbounds [3 x i32], ptr %66, i64 0, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !31
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %76

70:                                               ; preds = %44
  %71 = load ptr, ptr @input, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.InputParameters, ptr %71, i32 0, i32 199
  %73 = getelementptr inbounds [3 x i32], ptr %72, i64 0, i64 2
  %74 = load i32, ptr %73, align 4, !tbaa !31
  %75 = icmp eq i32 %74, 2
  br label %76

76:                                               ; preds = %70, %44
  %77 = phi i1 [ false, %44 ], [ %75, %70 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, double 1.000000e+00, double 0x3FEE666666666666
  %80 = load ptr, ptr @img, align 8, !tbaa !3
  %81 = getelementptr inbounds nuw %struct.ImageParameters, ptr %80, i32 0, i32 150
  %82 = load ptr, ptr %81, align 8, !tbaa !186
  %83 = load i32, ptr %2, align 4, !tbaa !31
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %82, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !187
  %87 = load i32, ptr %1, align 4, !tbaa !31
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, ptr %86, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !67
  %91 = fmul double %79, %90
  %92 = load ptr, ptr @img, align 8, !tbaa !3
  %93 = getelementptr inbounds nuw %struct.ImageParameters, ptr %92, i32 0, i32 150
  %94 = load ptr, ptr %93, align 8, !tbaa !186
  %95 = load i32, ptr %2, align 4, !tbaa !31
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !187
  %99 = load i32, ptr %1, align 4, !tbaa !31
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, ptr %98, i64 %100
  store double %91, ptr %101, align 8, !tbaa !67
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %102

102:                                              ; preds = %185, %76
  %103 = load i32, ptr %3, align 4, !tbaa !31
  %104 = icmp sle i32 %103, 2
  br i1 %104, label %105, label %188

105:                                              ; preds = %102
  %106 = load ptr, ptr @input, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw %struct.InputParameters, ptr %106, i32 0, i32 199
  %108 = load i32, ptr %3, align 4, !tbaa !31
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i32], ptr %107, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !31
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %125

113:                                              ; preds = %105
  %114 = load ptr, ptr @img, align 8, !tbaa !3
  %115 = getelementptr inbounds nuw %struct.ImageParameters, ptr %114, i32 0, i32 150
  %116 = load ptr, ptr %115, align 8, !tbaa !186
  %117 = load i32, ptr %2, align 4, !tbaa !31
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !187
  %121 = load i32, ptr %1, align 4, !tbaa !31
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, ptr %120, i64 %122
  %124 = load double, ptr %123, align 8, !tbaa !67
  br label %138

125:                                              ; preds = %105
  %126 = load ptr, ptr @img, align 8, !tbaa !3
  %127 = getelementptr inbounds nuw %struct.ImageParameters, ptr %126, i32 0, i32 150
  %128 = load ptr, ptr %127, align 8, !tbaa !186
  %129 = load i32, ptr %2, align 4, !tbaa !31
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %128, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !187
  %133 = load i32, ptr %1, align 4, !tbaa !31
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds double, ptr %132, i64 %134
  %136 = load double, ptr %135, align 8, !tbaa !67
  %137 = call double @sqrt(double noundef %136) #6, !tbaa !31
  br label %138

138:                                              ; preds = %125, %113
  %139 = phi double [ %124, %113 ], [ %137, %125 ]
  %140 = load ptr, ptr @img, align 8, !tbaa !3
  %141 = getelementptr inbounds nuw %struct.ImageParameters, ptr %140, i32 0, i32 151
  %142 = load ptr, ptr %141, align 8, !tbaa !189
  %143 = load i32, ptr %2, align 4, !tbaa !31
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !190
  %147 = load i32, ptr %1, align 4, !tbaa !31
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds ptr, ptr %146, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !187
  %151 = load i32, ptr %3, align 4, !tbaa !31
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds double, ptr %150, i64 %152
  store double %139, ptr %153, align 8, !tbaa !67
  %154 = load ptr, ptr @img, align 8, !tbaa !3
  %155 = getelementptr inbounds nuw %struct.ImageParameters, ptr %154, i32 0, i32 151
  %156 = load ptr, ptr %155, align 8, !tbaa !189
  %157 = load i32, ptr %2, align 4, !tbaa !31
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !190
  %161 = load i32, ptr %1, align 4, !tbaa !31
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !187
  %165 = load i32, ptr %3, align 4, !tbaa !31
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, ptr %164, i64 %166
  %168 = load double, ptr %167, align 8, !tbaa !67
  %169 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %168, double 5.000000e-01)
  %170 = fptosi double %169 to i32
  %171 = load ptr, ptr @img, align 8, !tbaa !3
  %172 = getelementptr inbounds nuw %struct.ImageParameters, ptr %171, i32 0, i32 152
  %173 = load ptr, ptr %172, align 8, !tbaa !191
  %174 = load i32, ptr %2, align 4, !tbaa !31
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds ptr, ptr %173, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !192
  %178 = load i32, ptr %1, align 4, !tbaa !31
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds ptr, ptr %177, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !164
  %182 = load i32, ptr %3, align 4, !tbaa !31
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, ptr %181, i64 %183
  store i32 %170, ptr %184, align 4, !tbaa !31
  br label %185

185:                                              ; preds = %138
  %186 = load i32, ptr %3, align 4, !tbaa !31
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %3, align 4, !tbaa !31
  br label %102, !llvm.loop !194

188:                                              ; preds = %102
  %189 = load i32, ptr %2, align 4, !tbaa !31
  %190 = icmp eq i32 %189, 1
  br i1 %190, label %191, label %318

191:                                              ; preds = %188
  %192 = load ptr, ptr @input, align 8, !tbaa !3
  %193 = getelementptr inbounds nuw %struct.InputParameters, ptr %192, i32 0, i32 181
  %194 = getelementptr inbounds [6 x double], ptr %193, i64 0, i64 5
  %195 = load double, ptr %194, align 8, !tbaa !67
  %196 = load double, ptr %4, align 8, !tbaa !67
  %197 = fdiv double %196, 3.000000e+00
  %198 = call double @pow(double noundef 2.000000e+00, double noundef %197) #6, !tbaa !31
  %199 = fmul double %195, %198
  %200 = load ptr, ptr @img, align 8, !tbaa !3
  %201 = getelementptr inbounds nuw %struct.ImageParameters, ptr %200, i32 0, i32 150
  %202 = load ptr, ptr %201, align 8, !tbaa !186
  %203 = getelementptr inbounds ptr, ptr %202, i64 5
  %204 = load ptr, ptr %203, align 8, !tbaa !187
  %205 = load i32, ptr %1, align 4, !tbaa !31
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, ptr %204, i64 %206
  store double %199, ptr %207, align 8, !tbaa !67
  %208 = load ptr, ptr @input, align 8, !tbaa !3
  %209 = getelementptr inbounds nuw %struct.InputParameters, ptr %208, i32 0, i32 199
  %210 = getelementptr inbounds [3 x i32], ptr %209, i64 0, i64 1
  %211 = load i32, ptr %210, align 4, !tbaa !31
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %219

213:                                              ; preds = %191
  %214 = load ptr, ptr @input, align 8, !tbaa !3
  %215 = getelementptr inbounds nuw %struct.InputParameters, ptr %214, i32 0, i32 199
  %216 = getelementptr inbounds [3 x i32], ptr %215, i64 0, i64 2
  %217 = load i32, ptr %216, align 4, !tbaa !31
  %218 = icmp eq i32 %217, 2
  br label %219

219:                                              ; preds = %213, %191
  %220 = phi i1 [ false, %191 ], [ %218, %213 ]
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, double 1.000000e+00, double 0x3FEE666666666666
  %223 = load ptr, ptr @img, align 8, !tbaa !3
  %224 = getelementptr inbounds nuw %struct.ImageParameters, ptr %223, i32 0, i32 150
  %225 = load ptr, ptr %224, align 8, !tbaa !186
  %226 = getelementptr inbounds ptr, ptr %225, i64 5
  %227 = load ptr, ptr %226, align 8, !tbaa !187
  %228 = load i32, ptr %1, align 4, !tbaa !31
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds double, ptr %227, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !67
  %232 = fmul double %222, %231
  %233 = load ptr, ptr @img, align 8, !tbaa !3
  %234 = getelementptr inbounds nuw %struct.ImageParameters, ptr %233, i32 0, i32 150
  %235 = load ptr, ptr %234, align 8, !tbaa !186
  %236 = getelementptr inbounds ptr, ptr %235, i64 5
  %237 = load ptr, ptr %236, align 8, !tbaa !187
  %238 = load i32, ptr %1, align 4, !tbaa !31
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds double, ptr %237, i64 %239
  store double %232, ptr %240, align 8, !tbaa !67
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %241

241:                                              ; preds = %314, %219
  %242 = load i32, ptr %3, align 4, !tbaa !31
  %243 = icmp sle i32 %242, 2
  br i1 %243, label %244, label %317

244:                                              ; preds = %241
  %245 = load ptr, ptr @input, align 8, !tbaa !3
  %246 = getelementptr inbounds nuw %struct.InputParameters, ptr %245, i32 0, i32 199
  %247 = load i32, ptr %3, align 4, !tbaa !31
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [3 x i32], ptr %246, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !31
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %262

252:                                              ; preds = %244
  %253 = load ptr, ptr @img, align 8, !tbaa !3
  %254 = getelementptr inbounds nuw %struct.ImageParameters, ptr %253, i32 0, i32 150
  %255 = load ptr, ptr %254, align 8, !tbaa !186
  %256 = getelementptr inbounds ptr, ptr %255, i64 5
  %257 = load ptr, ptr %256, align 8, !tbaa !187
  %258 = load i32, ptr %1, align 4, !tbaa !31
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds double, ptr %257, i64 %259
  %261 = load double, ptr %260, align 8, !tbaa !67
  br label %273

262:                                              ; preds = %244
  %263 = load ptr, ptr @img, align 8, !tbaa !3
  %264 = getelementptr inbounds nuw %struct.ImageParameters, ptr %263, i32 0, i32 150
  %265 = load ptr, ptr %264, align 8, !tbaa !186
  %266 = getelementptr inbounds ptr, ptr %265, i64 5
  %267 = load ptr, ptr %266, align 8, !tbaa !187
  %268 = load i32, ptr %1, align 4, !tbaa !31
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds double, ptr %267, i64 %269
  %271 = load double, ptr %270, align 8, !tbaa !67
  %272 = call double @sqrt(double noundef %271) #6, !tbaa !31
  br label %273

273:                                              ; preds = %262, %252
  %274 = phi double [ %261, %252 ], [ %272, %262 ]
  %275 = load ptr, ptr @img, align 8, !tbaa !3
  %276 = getelementptr inbounds nuw %struct.ImageParameters, ptr %275, i32 0, i32 151
  %277 = load ptr, ptr %276, align 8, !tbaa !189
  %278 = getelementptr inbounds ptr, ptr %277, i64 5
  %279 = load ptr, ptr %278, align 8, !tbaa !190
  %280 = load i32, ptr %1, align 4, !tbaa !31
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds ptr, ptr %279, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !187
  %284 = load i32, ptr %3, align 4, !tbaa !31
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, ptr %283, i64 %285
  store double %274, ptr %286, align 8, !tbaa !67
  %287 = load ptr, ptr @img, align 8, !tbaa !3
  %288 = getelementptr inbounds nuw %struct.ImageParameters, ptr %287, i32 0, i32 151
  %289 = load ptr, ptr %288, align 8, !tbaa !189
  %290 = getelementptr inbounds ptr, ptr %289, i64 5
  %291 = load ptr, ptr %290, align 8, !tbaa !190
  %292 = load i32, ptr %1, align 4, !tbaa !31
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds ptr, ptr %291, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !187
  %296 = load i32, ptr %3, align 4, !tbaa !31
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, ptr %295, i64 %297
  %299 = load double, ptr %298, align 8, !tbaa !67
  %300 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %299, double 5.000000e-01)
  %301 = fptosi double %300 to i32
  %302 = load ptr, ptr @img, align 8, !tbaa !3
  %303 = getelementptr inbounds nuw %struct.ImageParameters, ptr %302, i32 0, i32 152
  %304 = load ptr, ptr %303, align 8, !tbaa !191
  %305 = getelementptr inbounds ptr, ptr %304, i64 5
  %306 = load ptr, ptr %305, align 8, !tbaa !192
  %307 = load i32, ptr %1, align 4, !tbaa !31
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %306, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !164
  %311 = load i32, ptr %3, align 4, !tbaa !31
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, ptr %310, i64 %312
  store i32 %301, ptr %313, align 4, !tbaa !31
  br label %314

314:                                              ; preds = %273
  %315 = load i32, ptr %3, align 4, !tbaa !31
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %3, align 4, !tbaa !31
  br label %241, !llvm.loop !195

317:                                              ; preds = %241
  br label %318

318:                                              ; preds = %317, %188
  br label %1040

319:                                              ; preds = %31
  %320 = load ptr, ptr @input, align 8, !tbaa !3
  %321 = getelementptr inbounds nuw %struct.InputParameters, ptr %320, i32 0, i32 180
  %322 = load i32, ptr %321, align 8, !tbaa !185
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %324, label %591

324:                                              ; preds = %319
  %325 = load ptr, ptr @input, align 8, !tbaa !3
  %326 = getelementptr inbounds nuw %struct.InputParameters, ptr %325, i32 0, i32 182
  %327 = load i32, ptr %2, align 4, !tbaa !31
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [6 x double], ptr %326, i64 0, i64 %328
  %330 = load double, ptr %329, align 8, !tbaa !67
  %331 = load ptr, ptr @img, align 8, !tbaa !3
  %332 = getelementptr inbounds nuw %struct.ImageParameters, ptr %331, i32 0, i32 150
  %333 = load ptr, ptr %332, align 8, !tbaa !186
  %334 = load i32, ptr %2, align 4, !tbaa !31
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds ptr, ptr %333, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !187
  %338 = load i32, ptr %1, align 4, !tbaa !31
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds double, ptr %337, i64 %339
  store double %330, ptr %340, align 8, !tbaa !67
  %341 = load ptr, ptr @input, align 8, !tbaa !3
  %342 = getelementptr inbounds nuw %struct.InputParameters, ptr %341, i32 0, i32 199
  %343 = getelementptr inbounds [3 x i32], ptr %342, i64 0, i64 1
  %344 = load i32, ptr %343, align 4, !tbaa !31
  %345 = icmp eq i32 %344, 2
  br i1 %345, label %346, label %352

346:                                              ; preds = %324
  %347 = load ptr, ptr @input, align 8, !tbaa !3
  %348 = getelementptr inbounds nuw %struct.InputParameters, ptr %347, i32 0, i32 199
  %349 = getelementptr inbounds [3 x i32], ptr %348, i64 0, i64 2
  %350 = load i32, ptr %349, align 4, !tbaa !31
  %351 = icmp eq i32 %350, 2
  br label %352

352:                                              ; preds = %346, %324
  %353 = phi i1 [ false, %324 ], [ %351, %346 ]
  %354 = zext i1 %353 to i64
  %355 = select i1 %353, double 1.000000e+00, double 0x3FEE666666666666
  %356 = load ptr, ptr @img, align 8, !tbaa !3
  %357 = getelementptr inbounds nuw %struct.ImageParameters, ptr %356, i32 0, i32 150
  %358 = load ptr, ptr %357, align 8, !tbaa !186
  %359 = load i32, ptr %2, align 4, !tbaa !31
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds ptr, ptr %358, i64 %360
  %362 = load ptr, ptr %361, align 8, !tbaa !187
  %363 = load i32, ptr %1, align 4, !tbaa !31
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds double, ptr %362, i64 %364
  %366 = load double, ptr %365, align 8, !tbaa !67
  %367 = fmul double %355, %366
  %368 = load ptr, ptr @img, align 8, !tbaa !3
  %369 = getelementptr inbounds nuw %struct.ImageParameters, ptr %368, i32 0, i32 150
  %370 = load ptr, ptr %369, align 8, !tbaa !186
  %371 = load i32, ptr %2, align 4, !tbaa !31
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds ptr, ptr %370, i64 %372
  %374 = load ptr, ptr %373, align 8, !tbaa !187
  %375 = load i32, ptr %1, align 4, !tbaa !31
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds double, ptr %374, i64 %376
  store double %367, ptr %377, align 8, !tbaa !67
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %378

378:                                              ; preds = %461, %352
  %379 = load i32, ptr %3, align 4, !tbaa !31
  %380 = icmp sle i32 %379, 2
  br i1 %380, label %381, label %464

381:                                              ; preds = %378
  %382 = load ptr, ptr @input, align 8, !tbaa !3
  %383 = getelementptr inbounds nuw %struct.InputParameters, ptr %382, i32 0, i32 199
  %384 = load i32, ptr %3, align 4, !tbaa !31
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [3 x i32], ptr %383, i64 0, i64 %385
  %387 = load i32, ptr %386, align 4, !tbaa !31
  %388 = icmp eq i32 %387, 1
  br i1 %388, label %389, label %401

389:                                              ; preds = %381
  %390 = load ptr, ptr @img, align 8, !tbaa !3
  %391 = getelementptr inbounds nuw %struct.ImageParameters, ptr %390, i32 0, i32 150
  %392 = load ptr, ptr %391, align 8, !tbaa !186
  %393 = load i32, ptr %2, align 4, !tbaa !31
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds ptr, ptr %392, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !187
  %397 = load i32, ptr %1, align 4, !tbaa !31
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds double, ptr %396, i64 %398
  %400 = load double, ptr %399, align 8, !tbaa !67
  br label %414

401:                                              ; preds = %381
  %402 = load ptr, ptr @img, align 8, !tbaa !3
  %403 = getelementptr inbounds nuw %struct.ImageParameters, ptr %402, i32 0, i32 150
  %404 = load ptr, ptr %403, align 8, !tbaa !186
  %405 = load i32, ptr %2, align 4, !tbaa !31
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds ptr, ptr %404, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !187
  %409 = load i32, ptr %1, align 4, !tbaa !31
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds double, ptr %408, i64 %410
  %412 = load double, ptr %411, align 8, !tbaa !67
  %413 = call double @sqrt(double noundef %412) #6, !tbaa !31
  br label %414

414:                                              ; preds = %401, %389
  %415 = phi double [ %400, %389 ], [ %413, %401 ]
  %416 = load ptr, ptr @img, align 8, !tbaa !3
  %417 = getelementptr inbounds nuw %struct.ImageParameters, ptr %416, i32 0, i32 151
  %418 = load ptr, ptr %417, align 8, !tbaa !189
  %419 = load i32, ptr %2, align 4, !tbaa !31
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds ptr, ptr %418, i64 %420
  %422 = load ptr, ptr %421, align 8, !tbaa !190
  %423 = load i32, ptr %1, align 4, !tbaa !31
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds ptr, ptr %422, i64 %424
  %426 = load ptr, ptr %425, align 8, !tbaa !187
  %427 = load i32, ptr %3, align 4, !tbaa !31
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds double, ptr %426, i64 %428
  store double %415, ptr %429, align 8, !tbaa !67
  %430 = load ptr, ptr @img, align 8, !tbaa !3
  %431 = getelementptr inbounds nuw %struct.ImageParameters, ptr %430, i32 0, i32 151
  %432 = load ptr, ptr %431, align 8, !tbaa !189
  %433 = load i32, ptr %2, align 4, !tbaa !31
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds ptr, ptr %432, i64 %434
  %436 = load ptr, ptr %435, align 8, !tbaa !190
  %437 = load i32, ptr %1, align 4, !tbaa !31
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds ptr, ptr %436, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !187
  %441 = load i32, ptr %3, align 4, !tbaa !31
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds double, ptr %440, i64 %442
  %444 = load double, ptr %443, align 8, !tbaa !67
  %445 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %444, double 5.000000e-01)
  %446 = fptosi double %445 to i32
  %447 = load ptr, ptr @img, align 8, !tbaa !3
  %448 = getelementptr inbounds nuw %struct.ImageParameters, ptr %447, i32 0, i32 152
  %449 = load ptr, ptr %448, align 8, !tbaa !191
  %450 = load i32, ptr %2, align 4, !tbaa !31
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds ptr, ptr %449, i64 %451
  %453 = load ptr, ptr %452, align 8, !tbaa !192
  %454 = load i32, ptr %1, align 4, !tbaa !31
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds ptr, ptr %453, i64 %455
  %457 = load ptr, ptr %456, align 8, !tbaa !164
  %458 = load i32, ptr %3, align 4, !tbaa !31
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, ptr %457, i64 %459
  store i32 %446, ptr %460, align 4, !tbaa !31
  br label %461

461:                                              ; preds = %414
  %462 = load i32, ptr %3, align 4, !tbaa !31
  %463 = add nsw i32 %462, 1
  store i32 %463, ptr %3, align 4, !tbaa !31
  br label %378, !llvm.loop !196

464:                                              ; preds = %378
  %465 = load i32, ptr %2, align 4, !tbaa !31
  %466 = icmp eq i32 %465, 1
  br i1 %466, label %467, label %590

467:                                              ; preds = %464
  %468 = load ptr, ptr @input, align 8, !tbaa !3
  %469 = getelementptr inbounds nuw %struct.InputParameters, ptr %468, i32 0, i32 182
  %470 = getelementptr inbounds [6 x double], ptr %469, i64 0, i64 5
  %471 = load double, ptr %470, align 8, !tbaa !67
  %472 = load ptr, ptr @img, align 8, !tbaa !3
  %473 = getelementptr inbounds nuw %struct.ImageParameters, ptr %472, i32 0, i32 150
  %474 = load ptr, ptr %473, align 8, !tbaa !186
  %475 = getelementptr inbounds ptr, ptr %474, i64 5
  %476 = load ptr, ptr %475, align 8, !tbaa !187
  %477 = load i32, ptr %1, align 4, !tbaa !31
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds double, ptr %476, i64 %478
  store double %471, ptr %479, align 8, !tbaa !67
  %480 = load ptr, ptr @input, align 8, !tbaa !3
  %481 = getelementptr inbounds nuw %struct.InputParameters, ptr %480, i32 0, i32 199
  %482 = getelementptr inbounds [3 x i32], ptr %481, i64 0, i64 1
  %483 = load i32, ptr %482, align 4, !tbaa !31
  %484 = icmp eq i32 %483, 2
  br i1 %484, label %485, label %491

485:                                              ; preds = %467
  %486 = load ptr, ptr @input, align 8, !tbaa !3
  %487 = getelementptr inbounds nuw %struct.InputParameters, ptr %486, i32 0, i32 199
  %488 = getelementptr inbounds [3 x i32], ptr %487, i64 0, i64 2
  %489 = load i32, ptr %488, align 4, !tbaa !31
  %490 = icmp eq i32 %489, 2
  br label %491

491:                                              ; preds = %485, %467
  %492 = phi i1 [ false, %467 ], [ %490, %485 ]
  %493 = zext i1 %492 to i64
  %494 = select i1 %492, double 1.000000e+00, double 0x3FEE666666666666
  %495 = load ptr, ptr @img, align 8, !tbaa !3
  %496 = getelementptr inbounds nuw %struct.ImageParameters, ptr %495, i32 0, i32 150
  %497 = load ptr, ptr %496, align 8, !tbaa !186
  %498 = getelementptr inbounds ptr, ptr %497, i64 5
  %499 = load ptr, ptr %498, align 8, !tbaa !187
  %500 = load i32, ptr %1, align 4, !tbaa !31
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds double, ptr %499, i64 %501
  %503 = load double, ptr %502, align 8, !tbaa !67
  %504 = fmul double %494, %503
  %505 = load ptr, ptr @img, align 8, !tbaa !3
  %506 = getelementptr inbounds nuw %struct.ImageParameters, ptr %505, i32 0, i32 150
  %507 = load ptr, ptr %506, align 8, !tbaa !186
  %508 = getelementptr inbounds ptr, ptr %507, i64 5
  %509 = load ptr, ptr %508, align 8, !tbaa !187
  %510 = load i32, ptr %1, align 4, !tbaa !31
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds double, ptr %509, i64 %511
  store double %504, ptr %512, align 8, !tbaa !67
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %513

513:                                              ; preds = %586, %491
  %514 = load i32, ptr %3, align 4, !tbaa !31
  %515 = icmp sle i32 %514, 2
  br i1 %515, label %516, label %589

516:                                              ; preds = %513
  %517 = load ptr, ptr @input, align 8, !tbaa !3
  %518 = getelementptr inbounds nuw %struct.InputParameters, ptr %517, i32 0, i32 199
  %519 = load i32, ptr %3, align 4, !tbaa !31
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [3 x i32], ptr %518, i64 0, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !31
  %523 = icmp eq i32 %522, 1
  br i1 %523, label %524, label %534

524:                                              ; preds = %516
  %525 = load ptr, ptr @img, align 8, !tbaa !3
  %526 = getelementptr inbounds nuw %struct.ImageParameters, ptr %525, i32 0, i32 150
  %527 = load ptr, ptr %526, align 8, !tbaa !186
  %528 = getelementptr inbounds ptr, ptr %527, i64 5
  %529 = load ptr, ptr %528, align 8, !tbaa !187
  %530 = load i32, ptr %1, align 4, !tbaa !31
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds double, ptr %529, i64 %531
  %533 = load double, ptr %532, align 8, !tbaa !67
  br label %545

534:                                              ; preds = %516
  %535 = load ptr, ptr @img, align 8, !tbaa !3
  %536 = getelementptr inbounds nuw %struct.ImageParameters, ptr %535, i32 0, i32 150
  %537 = load ptr, ptr %536, align 8, !tbaa !186
  %538 = getelementptr inbounds ptr, ptr %537, i64 5
  %539 = load ptr, ptr %538, align 8, !tbaa !187
  %540 = load i32, ptr %1, align 4, !tbaa !31
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds double, ptr %539, i64 %541
  %543 = load double, ptr %542, align 8, !tbaa !67
  %544 = call double @sqrt(double noundef %543) #6, !tbaa !31
  br label %545

545:                                              ; preds = %534, %524
  %546 = phi double [ %533, %524 ], [ %544, %534 ]
  %547 = load ptr, ptr @img, align 8, !tbaa !3
  %548 = getelementptr inbounds nuw %struct.ImageParameters, ptr %547, i32 0, i32 151
  %549 = load ptr, ptr %548, align 8, !tbaa !189
  %550 = getelementptr inbounds ptr, ptr %549, i64 5
  %551 = load ptr, ptr %550, align 8, !tbaa !190
  %552 = load i32, ptr %1, align 4, !tbaa !31
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds ptr, ptr %551, i64 %553
  %555 = load ptr, ptr %554, align 8, !tbaa !187
  %556 = load i32, ptr %3, align 4, !tbaa !31
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds double, ptr %555, i64 %557
  store double %546, ptr %558, align 8, !tbaa !67
  %559 = load ptr, ptr @img, align 8, !tbaa !3
  %560 = getelementptr inbounds nuw %struct.ImageParameters, ptr %559, i32 0, i32 151
  %561 = load ptr, ptr %560, align 8, !tbaa !189
  %562 = getelementptr inbounds ptr, ptr %561, i64 5
  %563 = load ptr, ptr %562, align 8, !tbaa !190
  %564 = load i32, ptr %1, align 4, !tbaa !31
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds ptr, ptr %563, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !187
  %568 = load i32, ptr %3, align 4, !tbaa !31
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds double, ptr %567, i64 %569
  %571 = load double, ptr %570, align 8, !tbaa !67
  %572 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %571, double 5.000000e-01)
  %573 = fptosi double %572 to i32
  %574 = load ptr, ptr @img, align 8, !tbaa !3
  %575 = getelementptr inbounds nuw %struct.ImageParameters, ptr %574, i32 0, i32 152
  %576 = load ptr, ptr %575, align 8, !tbaa !191
  %577 = getelementptr inbounds ptr, ptr %576, i64 5
  %578 = load ptr, ptr %577, align 8, !tbaa !192
  %579 = load i32, ptr %1, align 4, !tbaa !31
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds ptr, ptr %578, i64 %580
  %582 = load ptr, ptr %581, align 8, !tbaa !164
  %583 = load i32, ptr %3, align 4, !tbaa !31
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, ptr %582, i64 %584
  store i32 %573, ptr %585, align 4, !tbaa !31
  br label %586

586:                                              ; preds = %545
  %587 = load i32, ptr %3, align 4, !tbaa !31
  %588 = add nsw i32 %587, 1
  store i32 %588, ptr %3, align 4, !tbaa !31
  br label %513, !llvm.loop !197

589:                                              ; preds = %513
  br label %590

590:                                              ; preds = %589, %464
  br label %1039

591:                                              ; preds = %319
  %592 = load ptr, ptr @input, align 8, !tbaa !3
  %593 = getelementptr inbounds nuw %struct.InputParameters, ptr %592, i32 0, i32 40
  %594 = load i32, ptr %593, align 8, !tbaa !198
  %595 = icmp sgt i32 %594, 0
  br i1 %595, label %596, label %630

596:                                              ; preds = %591
  %597 = load double, ptr %4, align 8, !tbaa !67
  %598 = fdiv double %597, 3.000000e+00
  %599 = call double @pow(double noundef 2.000000e+00, double noundef %598) #6, !tbaa !31
  %600 = fmul double 6.800000e-01, %599
  %601 = load i32, ptr %2, align 4, !tbaa !31
  %602 = icmp eq i32 %601, 1
  br i1 %602, label %603, label %607

603:                                              ; preds = %596
  %604 = load double, ptr %4, align 8, !tbaa !67
  %605 = fdiv double %604, 6.000000e+00
  %606 = call double @dClip3(double noundef 2.000000e+00, double noundef 4.000000e+00, double noundef %605)
  br label %617

607:                                              ; preds = %596
  %608 = load i32, ptr %2, align 4, !tbaa !31
  %609 = icmp eq i32 %608, 3
  br i1 %609, label %610, label %614

610:                                              ; preds = %607
  %611 = load double, ptr %4, align 8, !tbaa !67
  %612 = fdiv double %611, 1.200000e+01
  %613 = call double @dClip3(double noundef 1.400000e+00, double noundef 3.000000e+00, double noundef %612)
  br label %615

614:                                              ; preds = %607
  br label %615

615:                                              ; preds = %614, %610
  %616 = phi double [ %613, %610 ], [ 1.000000e+00, %614 ]
  br label %617

617:                                              ; preds = %615, %603
  %618 = phi double [ %606, %603 ], [ %616, %615 ]
  %619 = fmul double %600, %618
  %620 = load ptr, ptr @img, align 8, !tbaa !3
  %621 = getelementptr inbounds nuw %struct.ImageParameters, ptr %620, i32 0, i32 150
  %622 = load ptr, ptr %621, align 8, !tbaa !186
  %623 = load i32, ptr %2, align 4, !tbaa !31
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds ptr, ptr %622, i64 %624
  %626 = load ptr, ptr %625, align 8, !tbaa !187
  %627 = load i32, ptr %1, align 4, !tbaa !31
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds double, ptr %626, i64 %628
  store double %619, ptr %629, align 8, !tbaa !67
  br label %661

630:                                              ; preds = %591
  %631 = load double, ptr %4, align 8, !tbaa !67
  %632 = fdiv double %631, 3.000000e+00
  %633 = call double @pow(double noundef 2.000000e+00, double noundef %632) #6, !tbaa !31
  %634 = fmul double 8.500000e-01, %633
  %635 = load i32, ptr %2, align 4, !tbaa !31
  %636 = icmp eq i32 %635, 1
  br i1 %636, label %637, label %638

637:                                              ; preds = %630
  br label %648

638:                                              ; preds = %630
  %639 = load i32, ptr %2, align 4, !tbaa !31
  %640 = icmp eq i32 %639, 3
  br i1 %640, label %641, label %645

641:                                              ; preds = %638
  %642 = load double, ptr %4, align 8, !tbaa !67
  %643 = fdiv double %642, 1.200000e+01
  %644 = call double @dClip3(double noundef 1.400000e+00, double noundef 3.000000e+00, double noundef %643)
  br label %646

645:                                              ; preds = %638
  br label %646

646:                                              ; preds = %645, %641
  %647 = phi double [ %644, %641 ], [ 1.000000e+00, %645 ]
  br label %648

648:                                              ; preds = %646, %637
  %649 = phi double [ 4.000000e+00, %637 ], [ %647, %646 ]
  %650 = fmul double %634, %649
  %651 = load ptr, ptr @img, align 8, !tbaa !3
  %652 = getelementptr inbounds nuw %struct.ImageParameters, ptr %651, i32 0, i32 150
  %653 = load ptr, ptr %652, align 8, !tbaa !186
  %654 = load i32, ptr %2, align 4, !tbaa !31
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds ptr, ptr %653, i64 %655
  %657 = load ptr, ptr %656, align 8, !tbaa !187
  %658 = load i32, ptr %1, align 4, !tbaa !31
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds double, ptr %657, i64 %659
  store double %650, ptr %660, align 8, !tbaa !67
  br label %661

661:                                              ; preds = %648, %617
  %662 = load ptr, ptr @input, align 8, !tbaa !3
  %663 = getelementptr inbounds nuw %struct.InputParameters, ptr %662, i32 0, i32 199
  %664 = getelementptr inbounds [3 x i32], ptr %663, i64 0, i64 1
  %665 = load i32, ptr %664, align 4, !tbaa !31
  %666 = icmp eq i32 %665, 2
  br i1 %666, label %667, label %673

667:                                              ; preds = %661
  %668 = load ptr, ptr @input, align 8, !tbaa !3
  %669 = getelementptr inbounds nuw %struct.InputParameters, ptr %668, i32 0, i32 199
  %670 = getelementptr inbounds [3 x i32], ptr %669, i64 0, i64 2
  %671 = load i32, ptr %670, align 4, !tbaa !31
  %672 = icmp eq i32 %671, 2
  br label %673

673:                                              ; preds = %667, %661
  %674 = phi i1 [ false, %661 ], [ %672, %667 ]
  %675 = zext i1 %674 to i64
  %676 = select i1 %674, double 1.000000e+00, double 0x3FEE666666666666
  %677 = load ptr, ptr @img, align 8, !tbaa !3
  %678 = getelementptr inbounds nuw %struct.ImageParameters, ptr %677, i32 0, i32 150
  %679 = load ptr, ptr %678, align 8, !tbaa !186
  %680 = load i32, ptr %2, align 4, !tbaa !31
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds ptr, ptr %679, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !187
  %684 = load i32, ptr %1, align 4, !tbaa !31
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds double, ptr %683, i64 %685
  %687 = load double, ptr %686, align 8, !tbaa !67
  %688 = fmul double %676, %687
  %689 = load ptr, ptr @img, align 8, !tbaa !3
  %690 = getelementptr inbounds nuw %struct.ImageParameters, ptr %689, i32 0, i32 150
  %691 = load ptr, ptr %690, align 8, !tbaa !186
  %692 = load i32, ptr %2, align 4, !tbaa !31
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds ptr, ptr %691, i64 %693
  %695 = load ptr, ptr %694, align 8, !tbaa !187
  %696 = load i32, ptr %1, align 4, !tbaa !31
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds double, ptr %695, i64 %697
  store double %688, ptr %698, align 8, !tbaa !67
  %699 = load i32, ptr %2, align 4, !tbaa !31
  %700 = icmp eq i32 %699, 1
  br i1 %700, label %701, label %711

701:                                              ; preds = %673
  %702 = load ptr, ptr @input, align 8, !tbaa !3
  %703 = getelementptr inbounds nuw %struct.InputParameters, ptr %702, i32 0, i32 68
  %704 = load i32, ptr %703, align 4, !tbaa !199
  %705 = icmp eq i32 %704, 2
  br i1 %705, label %706, label %711

706:                                              ; preds = %701
  %707 = load ptr, ptr @img, align 8, !tbaa !3
  %708 = getelementptr inbounds nuw %struct.ImageParameters, ptr %707, i32 0, i32 76
  %709 = load i32, ptr %708, align 4, !tbaa !200
  %710 = icmp eq i32 %709, 0
  br label %711

711:                                              ; preds = %706, %701, %673
  %712 = phi i1 [ false, %701 ], [ false, %673 ], [ %710, %706 ]
  %713 = zext i1 %712 to i64
  %714 = select i1 %712, double 5.000000e-01, double 1.000000e+00
  %715 = load ptr, ptr @img, align 8, !tbaa !3
  %716 = getelementptr inbounds nuw %struct.ImageParameters, ptr %715, i32 0, i32 150
  %717 = load ptr, ptr %716, align 8, !tbaa !186
  %718 = load i32, ptr %2, align 4, !tbaa !31
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds ptr, ptr %717, i64 %719
  %721 = load ptr, ptr %720, align 8, !tbaa !187
  %722 = load i32, ptr %1, align 4, !tbaa !31
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds double, ptr %721, i64 %723
  %725 = load double, ptr %724, align 8, !tbaa !67
  %726 = fmul double %714, %725
  %727 = load ptr, ptr @img, align 8, !tbaa !3
  %728 = getelementptr inbounds nuw %struct.ImageParameters, ptr %727, i32 0, i32 150
  %729 = load ptr, ptr %728, align 8, !tbaa !186
  %730 = load i32, ptr %2, align 4, !tbaa !31
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds ptr, ptr %729, i64 %731
  %733 = load ptr, ptr %732, align 8, !tbaa !187
  %734 = load i32, ptr %1, align 4, !tbaa !31
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds double, ptr %733, i64 %735
  store double %726, ptr %736, align 8, !tbaa !67
  %737 = load i32, ptr %2, align 4, !tbaa !31
  %738 = icmp eq i32 %737, 1
  br i1 %738, label %739, label %887

739:                                              ; preds = %711
  %740 = load ptr, ptr @img, align 8, !tbaa !3
  %741 = getelementptr inbounds nuw %struct.ImageParameters, ptr %740, i32 0, i32 150
  %742 = load ptr, ptr %741, align 8, !tbaa !186
  %743 = load i32, ptr %2, align 4, !tbaa !31
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds ptr, ptr %742, i64 %744
  %746 = load ptr, ptr %745, align 8, !tbaa !187
  %747 = load i32, ptr %1, align 4, !tbaa !31
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds double, ptr %746, i64 %748
  %750 = load double, ptr %749, align 8, !tbaa !67
  %751 = load ptr, ptr @img, align 8, !tbaa !3
  %752 = getelementptr inbounds nuw %struct.ImageParameters, ptr %751, i32 0, i32 150
  %753 = load ptr, ptr %752, align 8, !tbaa !186
  %754 = getelementptr inbounds ptr, ptr %753, i64 5
  %755 = load ptr, ptr %754, align 8, !tbaa !187
  %756 = load i32, ptr %1, align 4, !tbaa !31
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds double, ptr %755, i64 %757
  store double %750, ptr %758, align 8, !tbaa !67
  %759 = load ptr, ptr @input, align 8, !tbaa !3
  %760 = getelementptr inbounds nuw %struct.InputParameters, ptr %759, i32 0, i32 69
  %761 = load i32, ptr %760, align 8, !tbaa !201
  %762 = icmp eq i32 %761, 2
  br i1 %762, label %763, label %787

763:                                              ; preds = %739
  %764 = load ptr, ptr @gop_structure, align 8, !tbaa !3
  %765 = load ptr, ptr @img, align 8, !tbaa !3
  %766 = getelementptr inbounds nuw %struct.ImageParameters, ptr %765, i32 0, i32 76
  %767 = load i32, ptr %766, align 4, !tbaa !200
  %768 = sub nsw i32 %767, 1
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.GOP_DATA, ptr %764, i64 %769
  %771 = getelementptr inbounds nuw %struct.GOP_DATA, ptr %770, i32 0, i32 4
  %772 = load i32, ptr %771, align 4, !tbaa !202
  %773 = sitofp i32 %772 to double
  %774 = fmul double 2.000000e-01, %773
  %775 = call double @dmin(double noundef 4.000000e-01, double noundef %774)
  %776 = fsub double 1.000000e+00, %775
  %777 = load ptr, ptr @img, align 8, !tbaa !3
  %778 = getelementptr inbounds nuw %struct.ImageParameters, ptr %777, i32 0, i32 150
  %779 = load ptr, ptr %778, align 8, !tbaa !186
  %780 = getelementptr inbounds ptr, ptr %779, i64 5
  %781 = load ptr, ptr %780, align 8, !tbaa !187
  %782 = load i32, ptr %1, align 4, !tbaa !31
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds double, ptr %781, i64 %783
  %785 = load double, ptr %784, align 8, !tbaa !67
  %786 = fmul double %785, %776
  store double %786, ptr %784, align 8, !tbaa !67
  br label %798

787:                                              ; preds = %739
  %788 = load ptr, ptr @img, align 8, !tbaa !3
  %789 = getelementptr inbounds nuw %struct.ImageParameters, ptr %788, i32 0, i32 150
  %790 = load ptr, ptr %789, align 8, !tbaa !186
  %791 = getelementptr inbounds ptr, ptr %790, i64 5
  %792 = load ptr, ptr %791, align 8, !tbaa !187
  %793 = load i32, ptr %1, align 4, !tbaa !31
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds double, ptr %792, i64 %794
  %796 = load double, ptr %795, align 8, !tbaa !67
  %797 = fmul double %796, 8.000000e-01
  store double %797, ptr %795, align 8, !tbaa !67
  br label %798

798:                                              ; preds = %787, %763
  %799 = load double, ptr %5, align 8, !tbaa !67
  %800 = load ptr, ptr @img, align 8, !tbaa !3
  %801 = getelementptr inbounds nuw %struct.ImageParameters, ptr %800, i32 0, i32 150
  %802 = load ptr, ptr %801, align 8, !tbaa !186
  %803 = getelementptr inbounds ptr, ptr %802, i64 5
  %804 = load ptr, ptr %803, align 8, !tbaa !187
  %805 = load i32, ptr %1, align 4, !tbaa !31
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds double, ptr %804, i64 %806
  %808 = load double, ptr %807, align 8, !tbaa !67
  %809 = fmul double %808, %799
  store double %809, ptr %807, align 8, !tbaa !67
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %810

810:                                              ; preds = %883, %798
  %811 = load i32, ptr %3, align 4, !tbaa !31
  %812 = icmp sle i32 %811, 2
  br i1 %812, label %813, label %886

813:                                              ; preds = %810
  %814 = load ptr, ptr @input, align 8, !tbaa !3
  %815 = getelementptr inbounds nuw %struct.InputParameters, ptr %814, i32 0, i32 199
  %816 = load i32, ptr %3, align 4, !tbaa !31
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [3 x i32], ptr %815, i64 0, i64 %817
  %819 = load i32, ptr %818, align 4, !tbaa !31
  %820 = icmp eq i32 %819, 1
  br i1 %820, label %821, label %831

821:                                              ; preds = %813
  %822 = load ptr, ptr @img, align 8, !tbaa !3
  %823 = getelementptr inbounds nuw %struct.ImageParameters, ptr %822, i32 0, i32 150
  %824 = load ptr, ptr %823, align 8, !tbaa !186
  %825 = getelementptr inbounds ptr, ptr %824, i64 5
  %826 = load ptr, ptr %825, align 8, !tbaa !187
  %827 = load i32, ptr %1, align 4, !tbaa !31
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds double, ptr %826, i64 %828
  %830 = load double, ptr %829, align 8, !tbaa !67
  br label %842

831:                                              ; preds = %813
  %832 = load ptr, ptr @img, align 8, !tbaa !3
  %833 = getelementptr inbounds nuw %struct.ImageParameters, ptr %832, i32 0, i32 150
  %834 = load ptr, ptr %833, align 8, !tbaa !186
  %835 = getelementptr inbounds ptr, ptr %834, i64 5
  %836 = load ptr, ptr %835, align 8, !tbaa !187
  %837 = load i32, ptr %1, align 4, !tbaa !31
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds double, ptr %836, i64 %838
  %840 = load double, ptr %839, align 8, !tbaa !67
  %841 = call double @sqrt(double noundef %840) #6, !tbaa !31
  br label %842

842:                                              ; preds = %831, %821
  %843 = phi double [ %830, %821 ], [ %841, %831 ]
  %844 = load ptr, ptr @img, align 8, !tbaa !3
  %845 = getelementptr inbounds nuw %struct.ImageParameters, ptr %844, i32 0, i32 151
  %846 = load ptr, ptr %845, align 8, !tbaa !189
  %847 = getelementptr inbounds ptr, ptr %846, i64 5
  %848 = load ptr, ptr %847, align 8, !tbaa !190
  %849 = load i32, ptr %1, align 4, !tbaa !31
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds ptr, ptr %848, i64 %850
  %852 = load ptr, ptr %851, align 8, !tbaa !187
  %853 = load i32, ptr %3, align 4, !tbaa !31
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds double, ptr %852, i64 %854
  store double %843, ptr %855, align 8, !tbaa !67
  %856 = load ptr, ptr @img, align 8, !tbaa !3
  %857 = getelementptr inbounds nuw %struct.ImageParameters, ptr %856, i32 0, i32 151
  %858 = load ptr, ptr %857, align 8, !tbaa !189
  %859 = getelementptr inbounds ptr, ptr %858, i64 5
  %860 = load ptr, ptr %859, align 8, !tbaa !190
  %861 = load i32, ptr %1, align 4, !tbaa !31
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds ptr, ptr %860, i64 %862
  %864 = load ptr, ptr %863, align 8, !tbaa !187
  %865 = load i32, ptr %3, align 4, !tbaa !31
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds double, ptr %864, i64 %866
  %868 = load double, ptr %867, align 8, !tbaa !67
  %869 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %868, double 5.000000e-01)
  %870 = fptosi double %869 to i32
  %871 = load ptr, ptr @img, align 8, !tbaa !3
  %872 = getelementptr inbounds nuw %struct.ImageParameters, ptr %871, i32 0, i32 152
  %873 = load ptr, ptr %872, align 8, !tbaa !191
  %874 = getelementptr inbounds ptr, ptr %873, i64 5
  %875 = load ptr, ptr %874, align 8, !tbaa !192
  %876 = load i32, ptr %1, align 4, !tbaa !31
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds ptr, ptr %875, i64 %877
  %879 = load ptr, ptr %878, align 8, !tbaa !164
  %880 = load i32, ptr %3, align 4, !tbaa !31
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds i32, ptr %879, i64 %881
  store i32 %870, ptr %882, align 4, !tbaa !31
  br label %883

883:                                              ; preds = %842
  %884 = load i32, ptr %3, align 4, !tbaa !31
  %885 = add nsw i32 %884, 1
  store i32 %885, ptr %3, align 4, !tbaa !31
  br label %810, !llvm.loop !204

886:                                              ; preds = %810
  br label %901

887:                                              ; preds = %711
  %888 = load double, ptr %5, align 8, !tbaa !67
  %889 = load ptr, ptr @img, align 8, !tbaa !3
  %890 = getelementptr inbounds nuw %struct.ImageParameters, ptr %889, i32 0, i32 150
  %891 = load ptr, ptr %890, align 8, !tbaa !186
  %892 = load i32, ptr %2, align 4, !tbaa !31
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds ptr, ptr %891, i64 %893
  %895 = load ptr, ptr %894, align 8, !tbaa !187
  %896 = load i32, ptr %1, align 4, !tbaa !31
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds double, ptr %895, i64 %897
  %899 = load double, ptr %898, align 8, !tbaa !67
  %900 = fmul double %899, %888
  store double %900, ptr %898, align 8, !tbaa !67
  br label %901

901:                                              ; preds = %887, %886
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %902

902:                                              ; preds = %985, %901
  %903 = load i32, ptr %3, align 4, !tbaa !31
  %904 = icmp sle i32 %903, 2
  br i1 %904, label %905, label %988

905:                                              ; preds = %902
  %906 = load ptr, ptr @input, align 8, !tbaa !3
  %907 = getelementptr inbounds nuw %struct.InputParameters, ptr %906, i32 0, i32 199
  %908 = load i32, ptr %3, align 4, !tbaa !31
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [3 x i32], ptr %907, i64 0, i64 %909
  %911 = load i32, ptr %910, align 4, !tbaa !31
  %912 = icmp eq i32 %911, 1
  br i1 %912, label %913, label %925

913:                                              ; preds = %905
  %914 = load ptr, ptr @img, align 8, !tbaa !3
  %915 = getelementptr inbounds nuw %struct.ImageParameters, ptr %914, i32 0, i32 150
  %916 = load ptr, ptr %915, align 8, !tbaa !186
  %917 = load i32, ptr %2, align 4, !tbaa !31
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds ptr, ptr %916, i64 %918
  %920 = load ptr, ptr %919, align 8, !tbaa !187
  %921 = load i32, ptr %1, align 4, !tbaa !31
  %922 = sext i32 %921 to i64
  %923 = getelementptr inbounds double, ptr %920, i64 %922
  %924 = load double, ptr %923, align 8, !tbaa !67
  br label %938

925:                                              ; preds = %905
  %926 = load ptr, ptr @img, align 8, !tbaa !3
  %927 = getelementptr inbounds nuw %struct.ImageParameters, ptr %926, i32 0, i32 150
  %928 = load ptr, ptr %927, align 8, !tbaa !186
  %929 = load i32, ptr %2, align 4, !tbaa !31
  %930 = sext i32 %929 to i64
  %931 = getelementptr inbounds ptr, ptr %928, i64 %930
  %932 = load ptr, ptr %931, align 8, !tbaa !187
  %933 = load i32, ptr %1, align 4, !tbaa !31
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds double, ptr %932, i64 %934
  %936 = load double, ptr %935, align 8, !tbaa !67
  %937 = call double @sqrt(double noundef %936) #6, !tbaa !31
  br label %938

938:                                              ; preds = %925, %913
  %939 = phi double [ %924, %913 ], [ %937, %925 ]
  %940 = load ptr, ptr @img, align 8, !tbaa !3
  %941 = getelementptr inbounds nuw %struct.ImageParameters, ptr %940, i32 0, i32 151
  %942 = load ptr, ptr %941, align 8, !tbaa !189
  %943 = load i32, ptr %2, align 4, !tbaa !31
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds ptr, ptr %942, i64 %944
  %946 = load ptr, ptr %945, align 8, !tbaa !190
  %947 = load i32, ptr %1, align 4, !tbaa !31
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds ptr, ptr %946, i64 %948
  %950 = load ptr, ptr %949, align 8, !tbaa !187
  %951 = load i32, ptr %3, align 4, !tbaa !31
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds double, ptr %950, i64 %952
  store double %939, ptr %953, align 8, !tbaa !67
  %954 = load ptr, ptr @img, align 8, !tbaa !3
  %955 = getelementptr inbounds nuw %struct.ImageParameters, ptr %954, i32 0, i32 151
  %956 = load ptr, ptr %955, align 8, !tbaa !189
  %957 = load i32, ptr %2, align 4, !tbaa !31
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds ptr, ptr %956, i64 %958
  %960 = load ptr, ptr %959, align 8, !tbaa !190
  %961 = load i32, ptr %1, align 4, !tbaa !31
  %962 = sext i32 %961 to i64
  %963 = getelementptr inbounds ptr, ptr %960, i64 %962
  %964 = load ptr, ptr %963, align 8, !tbaa !187
  %965 = load i32, ptr %3, align 4, !tbaa !31
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds double, ptr %964, i64 %966
  %968 = load double, ptr %967, align 8, !tbaa !67
  %969 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %968, double 5.000000e-01)
  %970 = fptosi double %969 to i32
  %971 = load ptr, ptr @img, align 8, !tbaa !3
  %972 = getelementptr inbounds nuw %struct.ImageParameters, ptr %971, i32 0, i32 152
  %973 = load ptr, ptr %972, align 8, !tbaa !191
  %974 = load i32, ptr %2, align 4, !tbaa !31
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds ptr, ptr %973, i64 %975
  %977 = load ptr, ptr %976, align 8, !tbaa !192
  %978 = load i32, ptr %1, align 4, !tbaa !31
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds ptr, ptr %977, i64 %979
  %981 = load ptr, ptr %980, align 8, !tbaa !164
  %982 = load i32, ptr %3, align 4, !tbaa !31
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds i32, ptr %981, i64 %983
  store i32 %970, ptr %984, align 4, !tbaa !31
  br label %985

985:                                              ; preds = %938
  %986 = load i32, ptr %3, align 4, !tbaa !31
  %987 = add nsw i32 %986, 1
  store i32 %987, ptr %3, align 4, !tbaa !31
  br label %902, !llvm.loop !205

988:                                              ; preds = %902
  %989 = load ptr, ptr @input, align 8, !tbaa !3
  %990 = getelementptr inbounds nuw %struct.InputParameters, ptr %989, i32 0, i32 114
  %991 = load i32, ptr %990, align 4, !tbaa !206
  %992 = icmp eq i32 %991, 1
  br i1 %992, label %993, label %1038

993:                                              ; preds = %988
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %994 = load i32, ptr %1, align 4, !tbaa !31
  %995 = icmp sge i32 %994, 32
  br i1 %995, label %996, label %1005

996:                                              ; preds = %993
  %997 = load ptr, ptr @input, align 8, !tbaa !3
  %998 = getelementptr inbounds nuw %struct.InputParameters, ptr %997, i32 0, i32 157
  %999 = load i32, ptr %998, align 4, !tbaa !72
  %1000 = icmp ne i32 %999, 0
  br i1 %1000, label %1005, label %1001

1001:                                             ; preds = %996
  %1002 = load i32, ptr %1, align 4, !tbaa !31
  %1003 = sub nsw i32 %1002, 4
  %1004 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %1003)
  br label %1009

1005:                                             ; preds = %996, %993
  %1006 = load i32, ptr %1, align 4, !tbaa !31
  %1007 = sub nsw i32 %1006, 6
  %1008 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %1007)
  br label %1009

1009:                                             ; preds = %1005, %1001
  %1010 = phi i32 [ %1004, %1001 ], [ %1008, %1005 ]
  store i32 %1010, ptr %6, align 4, !tbaa !31
  %1011 = load ptr, ptr @img, align 8, !tbaa !3
  %1012 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1011, i32 0, i32 151
  %1013 = load ptr, ptr %1012, align 8, !tbaa !189
  %1014 = load i32, ptr %2, align 4, !tbaa !31
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds ptr, ptr %1013, i64 %1015
  %1017 = load ptr, ptr %1016, align 8, !tbaa !190
  %1018 = load i32, ptr %6, align 4, !tbaa !31
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds ptr, ptr %1017, i64 %1019
  %1021 = load ptr, ptr %1020, align 8, !tbaa !187
  %1022 = getelementptr inbounds double, ptr %1021, i64 2
  %1023 = load double, ptr %1022, align 8, !tbaa !67
  %1024 = fadd double %1023, 1.000000e+00
  %1025 = call double @log(double noundef %1024) #6, !tbaa !31
  %1026 = call double @log(double noundef 2.000000e+00) #6, !tbaa !31
  %1027 = fdiv double %1025, %1026
  %1028 = load ptr, ptr @img, align 8, !tbaa !3
  %1029 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1028, i32 0, i32 153
  %1030 = load ptr, ptr %1029, align 8, !tbaa !207
  %1031 = load i32, ptr %2, align 4, !tbaa !31
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds ptr, ptr %1030, i64 %1032
  %1034 = load ptr, ptr %1033, align 8, !tbaa !187
  %1035 = load i32, ptr %1, align 4, !tbaa !31
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds double, ptr %1034, i64 %1036
  store double %1027, ptr %1037, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  br label %1038

1038:                                             ; preds = %1009, %988
  br label %1039

1039:                                             ; preds = %1038, %590
  br label %1040

1040:                                             ; preds = %1039, %318
  br label %1041

1041:                                             ; preds = %1040
  %1042 = load i32, ptr %1, align 4, !tbaa !31
  %1043 = add nsw i32 %1042, 1
  store i32 %1043, ptr %1, align 4, !tbaa !31
  br label %28, !llvm.loop !208

1044:                                             ; preds = %28
  br label %1045

1045:                                             ; preds = %1044
  %1046 = load i32, ptr %2, align 4, !tbaa !31
  %1047 = add nsw i32 %1046, 1
  store i32 %1047, ptr %2, align 4, !tbaa !31
  br label %20, !llvm.loop !209

1048:                                             ; preds = %20
  br label %1243

1049:                                             ; preds = %0
  store i32 0, ptr %2, align 4, !tbaa !31
  br label %1050

1050:                                             ; preds = %1239, %1049
  %1051 = load i32, ptr %2, align 4, !tbaa !31
  %1052 = icmp slt i32 %1051, 6
  br i1 %1052, label %1053, label %1242

1053:                                             ; preds = %1050
  %1054 = load ptr, ptr @img, align 8, !tbaa !3
  %1055 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1054, i32 0, i32 144
  %1056 = load i32, ptr %1055, align 4, !tbaa !184
  %1057 = sub nsw i32 0, %1056
  store i32 %1057, ptr %1, align 4, !tbaa !31
  br label %1058

1058:                                             ; preds = %1235, %1053
  %1059 = load i32, ptr %1, align 4, !tbaa !31
  %1060 = icmp slt i32 %1059, 52
  br i1 %1060, label %1061, label %1238

1061:                                             ; preds = %1058
  %1062 = load i32, ptr %1, align 4, !tbaa !31
  %1063 = sub nsw i32 %1062, 12
  %1064 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %1063)
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds [40 x i32], ptr @QP2QUANT, i64 0, i64 %1065
  %1067 = load i32, ptr %1066, align 4, !tbaa !31
  %1068 = sitofp i32 %1067 to double
  %1069 = load ptr, ptr @img, align 8, !tbaa !3
  %1070 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1069, i32 0, i32 150
  %1071 = load ptr, ptr %1070, align 8, !tbaa !186
  %1072 = load i32, ptr %2, align 4, !tbaa !31
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds ptr, ptr %1071, i64 %1073
  %1075 = load ptr, ptr %1074, align 8, !tbaa !187
  %1076 = load i32, ptr %1, align 4, !tbaa !31
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds double, ptr %1075, i64 %1077
  store double %1068, ptr %1078, align 8, !tbaa !67
  store i32 0, ptr %3, align 4, !tbaa !31
  br label %1079

1079:                                             ; preds = %1181, %1061
  %1080 = load i32, ptr %3, align 4, !tbaa !31
  %1081 = icmp sle i32 %1080, 2
  br i1 %1081, label %1082, label %1184

1082:                                             ; preds = %1079
  %1083 = load ptr, ptr @img, align 8, !tbaa !3
  %1084 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1083, i32 0, i32 150
  %1085 = load ptr, ptr %1084, align 8, !tbaa !186
  %1086 = load i32, ptr %2, align 4, !tbaa !31
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds ptr, ptr %1085, i64 %1087
  %1089 = load ptr, ptr %1088, align 8, !tbaa !187
  %1090 = load i32, ptr %1, align 4, !tbaa !31
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds double, ptr %1089, i64 %1091
  %1093 = load double, ptr %1092, align 8, !tbaa !67
  %1094 = load ptr, ptr @img, align 8, !tbaa !3
  %1095 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1094, i32 0, i32 151
  %1096 = load ptr, ptr %1095, align 8, !tbaa !189
  %1097 = load i32, ptr %2, align 4, !tbaa !31
  %1098 = sext i32 %1097 to i64
  %1099 = getelementptr inbounds ptr, ptr %1096, i64 %1098
  %1100 = load ptr, ptr %1099, align 8, !tbaa !190
  %1101 = load i32, ptr %1, align 4, !tbaa !31
  %1102 = sext i32 %1101 to i64
  %1103 = getelementptr inbounds ptr, ptr %1100, i64 %1102
  %1104 = load ptr, ptr %1103, align 8, !tbaa !187
  %1105 = load i32, ptr %3, align 4, !tbaa !31
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds double, ptr %1104, i64 %1106
  store double %1093, ptr %1107, align 8, !tbaa !67
  %1108 = load ptr, ptr @input, align 8, !tbaa !3
  %1109 = getelementptr inbounds nuw %struct.InputParameters, ptr %1108, i32 0, i32 199
  %1110 = load i32, ptr %3, align 4, !tbaa !31
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds [3 x i32], ptr %1109, i64 0, i64 %1111
  %1113 = load i32, ptr %1112, align 4, !tbaa !31
  %1114 = icmp eq i32 %1113, 1
  br i1 %1114, label %1115, label %1131

1115:                                             ; preds = %1082
  %1116 = load ptr, ptr @img, align 8, !tbaa !3
  %1117 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1116, i32 0, i32 151
  %1118 = load ptr, ptr %1117, align 8, !tbaa !189
  %1119 = load i32, ptr %2, align 4, !tbaa !31
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds ptr, ptr %1118, i64 %1120
  %1122 = load ptr, ptr %1121, align 8, !tbaa !190
  %1123 = load i32, ptr %1, align 4, !tbaa !31
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds ptr, ptr %1122, i64 %1124
  %1126 = load ptr, ptr %1125, align 8, !tbaa !187
  %1127 = load i32, ptr %3, align 4, !tbaa !31
  %1128 = sext i32 %1127 to i64
  %1129 = getelementptr inbounds double, ptr %1126, i64 %1128
  %1130 = load double, ptr %1129, align 8, !tbaa !67
  br label %1132

1131:                                             ; preds = %1082
  br label %1132

1132:                                             ; preds = %1131, %1115
  %1133 = phi double [ %1130, %1115 ], [ 1.000000e+00, %1131 ]
  %1134 = load ptr, ptr @img, align 8, !tbaa !3
  %1135 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1134, i32 0, i32 151
  %1136 = load ptr, ptr %1135, align 8, !tbaa !189
  %1137 = load i32, ptr %2, align 4, !tbaa !31
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds ptr, ptr %1136, i64 %1138
  %1140 = load ptr, ptr %1139, align 8, !tbaa !190
  %1141 = load i32, ptr %1, align 4, !tbaa !31
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds ptr, ptr %1140, i64 %1142
  %1144 = load ptr, ptr %1143, align 8, !tbaa !187
  %1145 = load i32, ptr %3, align 4, !tbaa !31
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds double, ptr %1144, i64 %1146
  %1148 = load double, ptr %1147, align 8, !tbaa !67
  %1149 = fmul double %1148, %1133
  store double %1149, ptr %1147, align 8, !tbaa !67
  %1150 = load ptr, ptr @img, align 8, !tbaa !3
  %1151 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1150, i32 0, i32 151
  %1152 = load ptr, ptr %1151, align 8, !tbaa !189
  %1153 = load i32, ptr %2, align 4, !tbaa !31
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds ptr, ptr %1152, i64 %1154
  %1156 = load ptr, ptr %1155, align 8, !tbaa !190
  %1157 = load i32, ptr %1, align 4, !tbaa !31
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds ptr, ptr %1156, i64 %1158
  %1160 = load ptr, ptr %1159, align 8, !tbaa !187
  %1161 = load i32, ptr %3, align 4, !tbaa !31
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds double, ptr %1160, i64 %1162
  %1164 = load double, ptr %1163, align 8, !tbaa !67
  %1165 = call double @llvm.fmuladd.f64(double 6.553600e+04, double %1164, double 5.000000e-01)
  %1166 = fptosi double %1165 to i32
  %1167 = load ptr, ptr @img, align 8, !tbaa !3
  %1168 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1167, i32 0, i32 152
  %1169 = load ptr, ptr %1168, align 8, !tbaa !191
  %1170 = load i32, ptr %2, align 4, !tbaa !31
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds ptr, ptr %1169, i64 %1171
  %1173 = load ptr, ptr %1172, align 8, !tbaa !192
  %1174 = load i32, ptr %1, align 4, !tbaa !31
  %1175 = sext i32 %1174 to i64
  %1176 = getelementptr inbounds ptr, ptr %1173, i64 %1175
  %1177 = load ptr, ptr %1176, align 8, !tbaa !164
  %1178 = load i32, ptr %3, align 4, !tbaa !31
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds i32, ptr %1177, i64 %1179
  store i32 %1166, ptr %1180, align 4, !tbaa !31
  br label %1181

1181:                                             ; preds = %1132
  %1182 = load i32, ptr %3, align 4, !tbaa !31
  %1183 = add nsw i32 %1182, 1
  store i32 %1183, ptr %3, align 4, !tbaa !31
  br label %1079, !llvm.loop !210

1184:                                             ; preds = %1079
  %1185 = load ptr, ptr @input, align 8, !tbaa !3
  %1186 = getelementptr inbounds nuw %struct.InputParameters, ptr %1185, i32 0, i32 114
  %1187 = load i32, ptr %1186, align 4, !tbaa !206
  %1188 = icmp eq i32 %1187, 1
  br i1 %1188, label %1189, label %1234

1189:                                             ; preds = %1184
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  %1190 = load i32, ptr %1, align 4, !tbaa !31
  %1191 = icmp sge i32 %1190, 32
  br i1 %1191, label %1192, label %1201

1192:                                             ; preds = %1189
  %1193 = load ptr, ptr @input, align 8, !tbaa !3
  %1194 = getelementptr inbounds nuw %struct.InputParameters, ptr %1193, i32 0, i32 157
  %1195 = load i32, ptr %1194, align 4, !tbaa !72
  %1196 = icmp ne i32 %1195, 0
  br i1 %1196, label %1201, label %1197

1197:                                             ; preds = %1192
  %1198 = load i32, ptr %1, align 4, !tbaa !31
  %1199 = sub nsw i32 %1198, 4
  %1200 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %1199)
  br label %1205

1201:                                             ; preds = %1192, %1189
  %1202 = load i32, ptr %1, align 4, !tbaa !31
  %1203 = sub nsw i32 %1202, 6
  %1204 = call signext i32 @imax(i32 noundef signext 0, i32 noundef signext %1203)
  br label %1205

1205:                                             ; preds = %1201, %1197
  %1206 = phi i32 [ %1200, %1197 ], [ %1204, %1201 ]
  store i32 %1206, ptr %7, align 4, !tbaa !31
  %1207 = load ptr, ptr @img, align 8, !tbaa !3
  %1208 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1207, i32 0, i32 151
  %1209 = load ptr, ptr %1208, align 8, !tbaa !189
  %1210 = load i32, ptr %2, align 4, !tbaa !31
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds ptr, ptr %1209, i64 %1211
  %1213 = load ptr, ptr %1212, align 8, !tbaa !190
  %1214 = load i32, ptr %7, align 4, !tbaa !31
  %1215 = sext i32 %1214 to i64
  %1216 = getelementptr inbounds ptr, ptr %1213, i64 %1215
  %1217 = load ptr, ptr %1216, align 8, !tbaa !187
  %1218 = getelementptr inbounds double, ptr %1217, i64 2
  %1219 = load double, ptr %1218, align 8, !tbaa !67
  %1220 = fadd double %1219, 1.000000e+00
  %1221 = call double @log(double noundef %1220) #6, !tbaa !31
  %1222 = call double @log(double noundef 2.000000e+00) #6, !tbaa !31
  %1223 = fdiv double %1221, %1222
  %1224 = load ptr, ptr @img, align 8, !tbaa !3
  %1225 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1224, i32 0, i32 153
  %1226 = load ptr, ptr %1225, align 8, !tbaa !207
  %1227 = load i32, ptr %2, align 4, !tbaa !31
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds ptr, ptr %1226, i64 %1228
  %1230 = load ptr, ptr %1229, align 8, !tbaa !187
  %1231 = load i32, ptr %1, align 4, !tbaa !31
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds double, ptr %1230, i64 %1232
  store double %1223, ptr %1233, align 8, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  br label %1234

1234:                                             ; preds = %1205, %1184
  br label %1235

1235:                                             ; preds = %1234
  %1236 = load i32, ptr %1, align 4, !tbaa !31
  %1237 = add nsw i32 %1236, 1
  store i32 %1237, ptr %1, align 4, !tbaa !31
  br label %1058, !llvm.loop !211

1238:                                             ; preds = %1058
  br label %1239

1239:                                             ; preds = %1238
  %1240 = load i32, ptr %2, align 4, !tbaa !31
  %1241 = add nsw i32 %1240, 1
  store i32 %1241, ptr %2, align 4, !tbaa !31
  br label %1050, !llvm.loop !212

1242:                                             ; preds = %1050
  br label %1243

1243:                                             ; preds = %1242, %1048
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

; Function Attrs: inlinehint nounwind
define internal double @dClip3(double noundef %0, double noundef %1, double noundef %2) #3 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store double %0, ptr %4, align 8, !tbaa !67
  store double %1, ptr %5, align 8, !tbaa !67
  store double %2, ptr %6, align 8, !tbaa !67
  %7 = load double, ptr %6, align 8, !tbaa !67
  %8 = load double, ptr %4, align 8, !tbaa !67
  %9 = call double @dmax(double noundef %7, double noundef %8)
  store double %9, ptr %6, align 8, !tbaa !67
  %10 = load double, ptr %6, align 8, !tbaa !67
  %11 = load double, ptr %5, align 8, !tbaa !67
  %12 = call double @dmin(double noundef %10, double noundef %11)
  store double %12, ptr %6, align 8, !tbaa !67
  %13 = load double, ptr %6, align 8, !tbaa !67
  ret double %13
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #0

; Function Attrs: nounwind
declare double @sqrt(double noundef) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: inlinehint nounwind
define internal double @dmin(double noundef %0, double noundef %1) #3 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8, !tbaa !67
  store double %1, ptr %4, align 8, !tbaa !67
  %5 = load double, ptr %3, align 8, !tbaa !67
  %6 = load double, ptr %4, align 8, !tbaa !67
  %7 = fcmp olt double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, ptr %3, align 8, !tbaa !67
  br label %12

10:                                               ; preds = %2
  %11 = load double, ptr %4, align 8, !tbaa !67
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #3 {
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
declare double @log(double noundef) #0

declare signext i32 @dummy_slice_too_big(i32 noundef signext) #2

; Function Attrs: inlinehint nounwind
define internal signext i32 @imin(i32 noundef signext %0, i32 noundef signext %1) #3 {
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

declare void @init_lists(i32 noundef signext, i32 noundef signext) #2

declare void @poc_based_ref_management(i32 noundef signext) #2

declare void @alloc_ref_pic_list_reordering_buffer(ptr noundef) #2

declare void @reorder_ref_pic_list(ptr noundef, ptr noundef, i32 noundef signext, ptr noundef, ptr noundef, ptr noundef) #2

declare void @init_mbaff_lists() #2

declare void @estimate_weighting_factor_P_slice(i32 noundef signext) #2

declare void @estimate_weighting_factor_B_slice() #2

declare void @compute_colocated(ptr noundef, ptr noundef) #2

declare void @EPZSSliceInit(ptr noundef, ptr noundef) #2

declare void @writeSE_UVLC(ptr noundef, ptr noundef) #2

declare void @writeIntraPredMode_CAVLC(ptr noundef, ptr noundef) #2

declare void @writeSE_Dummy(ptr noundef, ptr noundef) #2

declare void @writeSE_invFlag(ptr noundef, ptr noundef) #2

declare void @writeSE_SVLC(ptr noundef, ptr noundef) #2

declare void @writeCBP_VLC(ptr noundef, ptr noundef) #2

declare void @writeSE_Flag(ptr noundef, ptr noundef) #2

declare void @writeMB_typeInfo_CABAC(ptr noundef, ptr noundef) #2

declare void @writeIntraPredMode_CABAC(ptr noundef, ptr noundef) #2

declare void @writeB8_typeInfo_CABAC(ptr noundef, ptr noundef) #2

declare void @writeRefFrame_CABAC(ptr noundef, ptr noundef) #2

declare void @writeMVD_CABAC(ptr noundef, ptr noundef) #2

declare void @writeCBP_CABAC(ptr noundef, ptr noundef) #2

declare void @writeDquant_CABAC(ptr noundef, ptr noundef) #2

declare void @writeCIPredMode_CABAC(ptr noundef, ptr noundef) #2

declare void @writeFieldModeInfo_CABAC(ptr noundef, ptr noundef) #2

declare void @writeMB_transform_size_CABAC(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
define internal ptr @malloc_slice() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6
  %5 = load ptr, ptr @input, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.InputParameters, ptr %5, i32 0, i32 21
  %7 = load i32, ptr %6, align 8, !tbaa !213
  switch i32 %7, label %29 [
    i32 2, label %8
    i32 1, label %13
  ]

8:                                                ; preds = %0
  %9 = load ptr, ptr @input, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.InputParameters, ptr %9, i32 0, i32 22
  %11 = load i32, ptr %10, align 4, !tbaa !214
  %12 = mul nsw i32 2, %11
  store i32 %12, ptr %4, align 4, !tbaa !31
  br label %45

13:                                               ; preds = %0
  %14 = load ptr, ptr @input, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.InputParameters, ptr %14, i32 0, i32 22
  %16 = load i32, ptr %15, align 4, !tbaa !214
  %17 = load ptr, ptr @img, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.ImageParameters, ptr %17, i32 0, i32 142
  %19 = load i32, ptr %18, align 4, !tbaa !58
  %20 = mul nsw i32 256, %19
  %21 = add nsw i32 128, %20
  %22 = load ptr, ptr @img, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.ImageParameters, ptr %22, i32 0, i32 143
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = mul nsw i32 512, %24
  %26 = add nsw i32 %21, %25
  %27 = mul nsw i32 %16, %26
  %28 = add nsw i32 500, %27
  store i32 %28, ptr %4, align 4, !tbaa !31
  br label %45

29:                                               ; preds = %0
  %30 = load ptr, ptr @img, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.ImageParameters, ptr %30, i32 0, i32 120
  %32 = load i32, ptr %31, align 8, !tbaa !76
  %33 = load ptr, ptr @img, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.ImageParameters, ptr %33, i32 0, i32 142
  %35 = load i32, ptr %34, align 4, !tbaa !58
  %36 = mul nsw i32 256, %35
  %37 = add nsw i32 128, %36
  %38 = load ptr, ptr @img, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.ImageParameters, ptr %38, i32 0, i32 143
  %40 = load i32, ptr %39, align 8, !tbaa !63
  %41 = mul nsw i32 512, %40
  %42 = add nsw i32 %37, %41
  %43 = mul i32 %32, %42
  %44 = add i32 500, %43
  store i32 %44, ptr %4, align 4, !tbaa !31
  br label %45

45:                                               ; preds = %29, %13, %8
  %46 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 144) #7
  store ptr %46, ptr %3, align 8, !tbaa !3
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @no_mem_exit(ptr noundef @.str.3)
  br label %49

49:                                               ; preds = %48, %45
  %50 = load ptr, ptr @input, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.InputParameters, ptr %50, i32 0, i32 74
  %52 = load i32, ptr %51, align 8, !tbaa !45
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = call ptr @create_contexts_MotionInfo()
  %56 = load ptr, ptr %3, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.Slice, ptr %56, i32 0, i32 7
  store ptr %55, ptr %57, align 8, !tbaa !162
  %58 = call ptr @create_contexts_TextureInfo()
  %59 = load ptr, ptr %3, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.Slice, ptr %59, i32 0, i32 8
  store ptr %58, ptr %60, align 8, !tbaa !163
  br label %61

61:                                               ; preds = %54, %49
  %62 = load ptr, ptr @input, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.InputParameters, ptr %62, i32 0, i32 76
  %64 = load i32, ptr %63, align 8, !tbaa !32
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 1, i32 3
  %68 = load ptr, ptr %3, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.Slice, ptr %68, i32 0, i32 4
  store i32 %67, ptr %69, align 8, !tbaa !50
  %70 = load ptr, ptr @img, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.ImageParameters, ptr %70, i32 0, i32 59
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = getelementptr inbounds nuw %struct.Picture, ptr %72, i32 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !36
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load ptr, ptr %3, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.Slice, ptr %77, i32 0, i32 4
  store i32 1, ptr %78, align 8, !tbaa !50
  br label %79

79:                                               ; preds = %76, %61
  store ptr @assignSE2partition_NoDP, ptr @assignSE2partition, align 8, !tbaa !164
  %80 = load ptr, ptr @img, align 8, !tbaa !3
  %81 = getelementptr inbounds nuw %struct.ImageParameters, ptr %80, i32 0, i32 59
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = getelementptr inbounds nuw %struct.Picture, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !36
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %79
  %87 = load ptr, ptr @input, align 8, !tbaa !3
  %88 = getelementptr inbounds nuw %struct.InputParameters, ptr %87, i32 0, i32 76
  %89 = load i32, ptr %88, align 8, !tbaa !32
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store ptr @assignSE2partition_DP, ptr getelementptr inbounds ([2 x ptr], ptr @assignSE2partition, i64 0, i64 1), align 8, !tbaa !164
  br label %93

92:                                               ; preds = %86, %79
  store ptr @assignSE2partition_NoDP, ptr getelementptr inbounds ([2 x ptr], ptr @assignSE2partition, i64 0, i64 1), align 8, !tbaa !164
  br label %93

93:                                               ; preds = %92, %91
  %94 = load ptr, ptr %3, align 8, !tbaa !3
  %95 = getelementptr inbounds nuw %struct.Slice, ptr %94, i32 0, i32 5
  store i32 0, ptr %95, align 4, !tbaa !215
  %96 = load ptr, ptr %3, align 8, !tbaa !3
  %97 = getelementptr inbounds nuw %struct.Slice, ptr %96, i32 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !50
  %99 = sext i32 %98 to i64
  %100 = call noalias ptr @calloc(i64 noundef %99, i64 noundef 104) #7
  %101 = load ptr, ptr %3, align 8, !tbaa !3
  %102 = getelementptr inbounds nuw %struct.Slice, ptr %101, i32 0, i32 6
  store ptr %100, ptr %102, align 8, !tbaa !39
  %103 = icmp eq ptr %100, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  call void @no_mem_exit(ptr noundef @.str.4)
  br label %105

105:                                              ; preds = %104, %93
  store i32 0, ptr %1, align 4, !tbaa !31
  br label %106

106:                                              ; preds = %135, %105
  %107 = load i32, ptr %1, align 4, !tbaa !31
  %108 = load ptr, ptr %3, align 8, !tbaa !3
  %109 = getelementptr inbounds nuw %struct.Slice, ptr %108, i32 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !50
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load ptr, ptr %3, align 8, !tbaa !3
  %114 = getelementptr inbounds nuw %struct.Slice, ptr %113, i32 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !39
  %116 = load i32, ptr %1, align 4, !tbaa !31
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.datapartition, ptr %115, i64 %117
  store ptr %118, ptr %2, align 8, !tbaa !104
  %119 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 48) #7
  %120 = load ptr, ptr %2, align 8, !tbaa !104
  %121 = getelementptr inbounds nuw %struct.datapartition, ptr %120, i32 0, i32 0
  store ptr %119, ptr %121, align 8, !tbaa !40
  %122 = icmp eq ptr %119, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  call void @no_mem_exit(ptr noundef @.str.5)
  br label %124

124:                                              ; preds = %123, %112
  %125 = load i32, ptr %4, align 4, !tbaa !31
  %126 = sext i32 %125 to i64
  %127 = call noalias ptr @calloc(i64 noundef %126, i64 noundef 1) #7
  %128 = load ptr, ptr %2, align 8, !tbaa !104
  %129 = getelementptr inbounds nuw %struct.datapartition, ptr %128, i32 0, i32 0
  %130 = load ptr, ptr %129, align 8, !tbaa !40
  %131 = getelementptr inbounds nuw %struct.Bitstream, ptr %130, i32 0, i32 9
  store ptr %127, ptr %131, align 8, !tbaa !47
  %132 = icmp eq ptr %127, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  call void @no_mem_exit(ptr noundef @.str.6)
  br label %134

134:                                              ; preds = %133, %124
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %1, align 4, !tbaa !31
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %1, align 4, !tbaa !31
  br label %106, !llvm.loop !216

138:                                              ; preds = %106
  %139 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret ptr %139
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #5

declare void @no_mem_exit(ptr noundef) #2

declare ptr @create_contexts_MotionInfo() #2

declare ptr @create_contexts_TextureInfo() #2

; Function Attrs: nounwind
define internal void @set_ref_pic_num() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #6
  store i32 0, ptr %1, align 4, !tbaa !31
  br label %4

4:                                                ; preds = %66, %0
  %5 = load i32, ptr %1, align 4, !tbaa !31
  %6 = load i32, ptr @listXsize, align 4, !tbaa !31
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %69

8:                                                ; preds = %4
  %9 = load ptr, ptr @listX, align 8, !tbaa !126
  %10 = load i32, ptr %1, align 4, !tbaa !31
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !128
  store ptr %13, ptr %3, align 8, !tbaa !128
  %14 = load ptr, ptr %3, align 8, !tbaa !128
  %15 = getelementptr inbounds nuw %struct.storable_picture, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !130
  %17 = mul nsw i32 %16, 2
  %18 = load ptr, ptr %3, align 8, !tbaa !128
  %19 = getelementptr inbounds nuw %struct.storable_picture, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !217
  %21 = icmp eq i32 %20, 2
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  %24 = add nsw i32 %17, %23
  %25 = sext i32 %24 to i64
  %26 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %27 = getelementptr inbounds nuw %struct.storable_picture, ptr %26, i32 0, i32 6
  %28 = getelementptr inbounds [6 x [33 x i64]], ptr %27, i64 0, i64 0
  %29 = load i32, ptr %1, align 4, !tbaa !31
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [33 x i64], ptr %28, i64 0, i64 %30
  store i64 %25, ptr %31, align 8, !tbaa !79
  %32 = load ptr, ptr %3, align 8, !tbaa !128
  %33 = getelementptr inbounds nuw %struct.storable_picture, ptr %32, i32 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !218
  %35 = mul nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %38 = getelementptr inbounds nuw %struct.storable_picture, ptr %37, i32 0, i32 7
  %39 = getelementptr inbounds [6 x [33 x i64]], ptr %38, i64 0, i64 0
  %40 = load i32, ptr %1, align 4, !tbaa !31
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [33 x i64], ptr %39, i64 0, i64 %41
  store i64 %36, ptr %42, align 8, !tbaa !79
  %43 = load ptr, ptr %3, align 8, !tbaa !128
  %44 = getelementptr inbounds nuw %struct.storable_picture, ptr %43, i32 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !219
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %49 = getelementptr inbounds nuw %struct.storable_picture, ptr %48, i32 0, i32 8
  %50 = getelementptr inbounds [6 x [33 x i64]], ptr %49, i64 0, i64 0
  %51 = load i32, ptr %1, align 4, !tbaa !31
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [33 x i64], ptr %50, i64 0, i64 %52
  store i64 %47, ptr %53, align 8, !tbaa !79
  %54 = load ptr, ptr %3, align 8, !tbaa !128
  %55 = getelementptr inbounds nuw %struct.storable_picture, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !220
  %57 = mul nsw i32 %56, 2
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %61 = getelementptr inbounds nuw %struct.storable_picture, ptr %60, i32 0, i32 9
  %62 = getelementptr inbounds [6 x [33 x i64]], ptr %61, i64 0, i64 0
  %63 = load i32, ptr %1, align 4, !tbaa !31
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [33 x i64], ptr %62, i64 0, i64 %64
  store i64 %59, ptr %65, align 8, !tbaa !79
  br label %66

66:                                               ; preds = %8
  %67 = load i32, ptr %1, align 4, !tbaa !31
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %1, align 4, !tbaa !31
  br label %4, !llvm.loop !221

69:                                               ; preds = %4
  store i32 0, ptr %1, align 4, !tbaa !31
  br label %70

70:                                               ; preds = %132, %69
  %71 = load i32, ptr %1, align 4, !tbaa !31
  %72 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @listXsize, i64 0, i64 1), align 4, !tbaa !31
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %135

74:                                               ; preds = %70
  %75 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @listX, i64 0, i64 1), align 8, !tbaa !126
  %76 = load i32, ptr %1, align 4, !tbaa !31
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %75, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !128
  store ptr %79, ptr %3, align 8, !tbaa !128
  %80 = load ptr, ptr %3, align 8, !tbaa !128
  %81 = getelementptr inbounds nuw %struct.storable_picture, ptr %80, i32 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !130
  %83 = mul nsw i32 %82, 2
  %84 = load ptr, ptr %3, align 8, !tbaa !128
  %85 = getelementptr inbounds nuw %struct.storable_picture, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 8, !tbaa !217
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  %90 = add nsw i32 %83, %89
  %91 = sext i32 %90 to i64
  %92 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %93 = getelementptr inbounds nuw %struct.storable_picture, ptr %92, i32 0, i32 6
  %94 = getelementptr inbounds [6 x [33 x i64]], ptr %93, i64 0, i64 1
  %95 = load i32, ptr %1, align 4, !tbaa !31
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [33 x i64], ptr %94, i64 0, i64 %96
  store i64 %91, ptr %97, align 8, !tbaa !79
  %98 = load ptr, ptr %3, align 8, !tbaa !128
  %99 = getelementptr inbounds nuw %struct.storable_picture, ptr %98, i32 0, i32 4
  %100 = load i32, ptr %99, align 8, !tbaa !218
  %101 = mul nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %104 = getelementptr inbounds nuw %struct.storable_picture, ptr %103, i32 0, i32 7
  %105 = getelementptr inbounds [6 x [33 x i64]], ptr %104, i64 0, i64 1
  %106 = load i32, ptr %1, align 4, !tbaa !31
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [33 x i64], ptr %105, i64 0, i64 %107
  store i64 %102, ptr %108, align 8, !tbaa !79
  %109 = load ptr, ptr %3, align 8, !tbaa !128
  %110 = getelementptr inbounds nuw %struct.storable_picture, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !219
  %112 = mul nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %115 = getelementptr inbounds nuw %struct.storable_picture, ptr %114, i32 0, i32 8
  %116 = getelementptr inbounds [6 x [33 x i64]], ptr %115, i64 0, i64 1
  %117 = load i32, ptr %1, align 4, !tbaa !31
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [33 x i64], ptr %116, i64 0, i64 %118
  store i64 %113, ptr %119, align 8, !tbaa !79
  %120 = load ptr, ptr %3, align 8, !tbaa !128
  %121 = getelementptr inbounds nuw %struct.storable_picture, ptr %120, i32 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !220
  %123 = mul nsw i32 %122, 2
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %127 = getelementptr inbounds nuw %struct.storable_picture, ptr %126, i32 0, i32 9
  %128 = getelementptr inbounds [6 x [33 x i64]], ptr %127, i64 0, i64 1
  %129 = load i32, ptr %1, align 4, !tbaa !31
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [33 x i64], ptr %128, i64 0, i64 %130
  store i64 %125, ptr %131, align 8, !tbaa !79
  br label %132

132:                                              ; preds = %74
  %133 = load i32, ptr %1, align 4, !tbaa !31
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %1, align 4, !tbaa !31
  br label %70, !llvm.loop !222

135:                                              ; preds = %70
  %136 = load ptr, ptr @active_sps, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.seq_parameter_set_rbsp_t, ptr %136, i32 0, i32 25
  %138 = load i32, ptr %137, align 4, !tbaa !223
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %234, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr @img, align 8, !tbaa !3
  %142 = getelementptr inbounds nuw %struct.ImageParameters, ptr %141, i32 0, i32 6
  %143 = load i32, ptr %142, align 8, !tbaa !114
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %234

145:                                              ; preds = %140
  store i32 2, ptr %2, align 4, !tbaa !31
  br label %146

146:                                              ; preds = %230, %145
  %147 = load i32, ptr %2, align 4, !tbaa !31
  %148 = icmp slt i32 %147, 6
  br i1 %148, label %149, label %233

149:                                              ; preds = %146
  store i32 0, ptr %1, align 4, !tbaa !31
  br label %150

150:                                              ; preds = %226, %149
  %151 = load i32, ptr %1, align 4, !tbaa !31
  %152 = load i32, ptr %2, align 4, !tbaa !31
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [6 x i32], ptr @listXsize, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !31
  %156 = icmp slt i32 %151, %155
  br i1 %156, label %157, label %229

157:                                              ; preds = %150
  %158 = load i32, ptr %2, align 4, !tbaa !31
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [6 x ptr], ptr @listX, i64 0, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !126
  %162 = load i32, ptr %1, align 4, !tbaa !31
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %161, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !128
  store ptr %165, ptr %3, align 8, !tbaa !128
  %166 = load ptr, ptr %3, align 8, !tbaa !128
  %167 = getelementptr inbounds nuw %struct.storable_picture, ptr %166, i32 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !130
  %169 = mul nsw i32 %168, 2
  %170 = load ptr, ptr %3, align 8, !tbaa !128
  %171 = getelementptr inbounds nuw %struct.storable_picture, ptr %170, i32 0, i32 0
  %172 = load i32, ptr %171, align 8, !tbaa !217
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  %176 = add nsw i32 %169, %175
  %177 = sext i32 %176 to i64
  %178 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %179 = getelementptr inbounds nuw %struct.storable_picture, ptr %178, i32 0, i32 6
  %180 = load i32, ptr %2, align 4, !tbaa !31
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [6 x [33 x i64]], ptr %179, i64 0, i64 %181
  %183 = load i32, ptr %1, align 4, !tbaa !31
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [33 x i64], ptr %182, i64 0, i64 %184
  store i64 %177, ptr %185, align 8, !tbaa !79
  %186 = load ptr, ptr %3, align 8, !tbaa !128
  %187 = getelementptr inbounds nuw %struct.storable_picture, ptr %186, i32 0, i32 4
  %188 = load i32, ptr %187, align 8, !tbaa !218
  %189 = mul nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %192 = getelementptr inbounds nuw %struct.storable_picture, ptr %191, i32 0, i32 7
  %193 = load i32, ptr %2, align 4, !tbaa !31
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [6 x [33 x i64]], ptr %192, i64 0, i64 %194
  %196 = load i32, ptr %1, align 4, !tbaa !31
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [33 x i64], ptr %195, i64 0, i64 %197
  store i64 %190, ptr %198, align 8, !tbaa !79
  %199 = load ptr, ptr %3, align 8, !tbaa !128
  %200 = getelementptr inbounds nuw %struct.storable_picture, ptr %199, i32 0, i32 2
  %201 = load i32, ptr %200, align 8, !tbaa !219
  %202 = mul nsw i32 %201, 2
  %203 = sext i32 %202 to i64
  %204 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %205 = getelementptr inbounds nuw %struct.storable_picture, ptr %204, i32 0, i32 8
  %206 = load i32, ptr %2, align 4, !tbaa !31
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [6 x [33 x i64]], ptr %205, i64 0, i64 %207
  %209 = load i32, ptr %1, align 4, !tbaa !31
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [33 x i64], ptr %208, i64 0, i64 %210
  store i64 %203, ptr %211, align 8, !tbaa !79
  %212 = load ptr, ptr %3, align 8, !tbaa !128
  %213 = getelementptr inbounds nuw %struct.storable_picture, ptr %212, i32 0, i32 3
  %214 = load i32, ptr %213, align 4, !tbaa !220
  %215 = mul nsw i32 %214, 2
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = load ptr, ptr @enc_picture, align 8, !tbaa !128
  %219 = getelementptr inbounds nuw %struct.storable_picture, ptr %218, i32 0, i32 9
  %220 = load i32, ptr %2, align 4, !tbaa !31
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [6 x [33 x i64]], ptr %219, i64 0, i64 %221
  %223 = load i32, ptr %1, align 4, !tbaa !31
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [33 x i64], ptr %222, i64 0, i64 %224
  store i64 %217, ptr %225, align 8, !tbaa !79
  br label %226

226:                                              ; preds = %157
  %227 = load i32, ptr %1, align 4, !tbaa !31
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %1, align 4, !tbaa !31
  br label %150, !llvm.loop !224

229:                                              ; preds = %150
  br label %230

230:                                              ; preds = %229
  %231 = load i32, ptr %2, align 4, !tbaa !31
  %232 = add nsw i32 %231, 1
  store i32 %232, ptr %2, align 4, !tbaa !31
  br label %146, !llvm.loop !225

233:                                              ; preds = %146
  br label %234

234:                                              ; preds = %233, %140, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

declare void @delete_contexts_MotionInfo(ptr noundef) #2

declare void @delete_contexts_TextureInfo(ptr noundef) #2

; Function Attrs: inlinehint nounwind
define internal double @dmax(double noundef %0, double noundef %1) #3 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, ptr %3, align 8, !tbaa !67
  store double %1, ptr %4, align 8, !tbaa !67
  %5 = load double, ptr %3, align 8, !tbaa !67
  %6 = load double, ptr %4, align 8, !tbaa !67
  %7 = fcmp ogt double %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load double, ptr %3, align 8, !tbaa !67
  br label %12

10:                                               ; preds = %2
  %11 = load double, ptr %4, align 8, !tbaa !67
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi double [ %9, %8 ], [ %11, %10 ]
  ret double %13
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 14216}
!8 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !10, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !11, i64 128, !11, i64 136, !9, i64 144, !13, i64 152, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !15, i64 14160, !13, i64 14168, !13, i64 14176, !13, i64 14184, !15, i64 14192, !15, i64 14200, !4, i64 14208, !4, i64 14216, !17, i64 14224, !18, i64 14232, !18, i64 14240, !9, i64 14248, !9, i64 14252, !9, i64 14256, !9, i64 14260, !5, i64 14264, !9, i64 14328, !9, i64 14332, !9, i64 14336, !9, i64 14340, !9, i64 14344, !19, i64 14352, !9, i64 14360, !9, i64 14364, !9, i64 14368, !9, i64 14372, !20, i64 14376, !20, i64 14384, !20, i64 14392, !20, i64 14400, !5, i64 14408, !9, i64 14440, !9, i64 14444, !9, i64 14448, !9, i64 14452, !9, i64 14456, !9, i64 14460, !9, i64 14464, !9, i64 14468, !5, i64 14472, !9, i64 15240, !9, i64 15244, !9, i64 15248, !9, i64 15252, !9, i64 15256, !9, i64 15260, !9, i64 15264, !9, i64 15268, !9, i64 15272, !9, i64 15276, !9, i64 15280, !9, i64 15284, !9, i64 15288, !5, i64 15292, !9, i64 15296, !9, i64 15300, !5, i64 15304, !9, i64 15312, !9, i64 15316, !9, i64 15320, !9, i64 15324, !9, i64 15328, !9, i64 15332, !9, i64 15336, !9, i64 15340, !9, i64 15344, !9, i64 15348, !9, i64 15352, !9, i64 15356, !9, i64 15360, !9, i64 15364, !9, i64 15368, !9, i64 15372, !23, i64 15376, !9, i64 15384, !9, i64 15388, !9, i64 15392, !9, i64 15396, !9, i64 15400, !9, i64 15404, !9, i64 15408, !9, i64 15412, !9, i64 15416, !9, i64 15420, !9, i64 15424, !9, i64 15428, !9, i64 15432, !9, i64 15436, !9, i64 15440, !9, i64 15444, !9, i64 15448, !9, i64 15452, !9, i64 15456, !9, i64 15460, !9, i64 15464, !9, i64 15468, !9, i64 15472, !24, i64 15480, !25, i64 15488, !13, i64 15496, !24, i64 15504, !9, i64 15512, !9, i64 15516, !9, i64 15520, !9, i64 15524, !9, i64 15528, !9, i64 15532, !9, i64 15536, !9, i64 15540, !9, i64 15544, !9, i64 15548, !5, i64 15552, !5, i64 15576, !9, i64 15584, !9, i64 15588, !26, i64 15592, !9, i64 15596, !9, i64 15600, !9, i64 15604, !9, i64 15608, !9, i64 15612}
!9 = !{!"int", !5, i64 0}
!10 = !{!"float", !5, i64 0}
!11 = !{!"p2 omnipotent char", !12, i64 0}
!12 = !{!"any p2 pointer", !4, i64 0}
!13 = !{!"p3 int", !14, i64 0}
!14 = !{!"any p3 pointer", !12, i64 0}
!15 = !{!"p4 int", !16, i64 0}
!16 = !{!"any p4 pointer", !14, i64 0}
!17 = !{!"p1 _ZTS10macroblock", !4, i64 0}
!18 = !{!"p1 int", !4, i64 0}
!19 = !{!"double", !5, i64 0}
!20 = !{!"p6 short", !21, i64 0}
!21 = !{!"any p6 pointer", !22, i64 0}
!22 = !{!"any p5 pointer", !16, i64 0}
!23 = !{!"p1 _ZTS18DecRefPicMarking_s", !4, i64 0}
!24 = !{!"p2 double", !12, i64 0}
!25 = !{!"p3 double", !14, i64 0}
!26 = !{!"short", !5, i64 0}
!27 = !{!28, !9, i64 48}
!28 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !29, i64 24, !4, i64 32, !4, i64 40, !9, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !9, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !4, i64 112, !5, i64 120}
!29 = !{!"p1 _ZTS13datapartition", !4, i64 0}
!30 = !{!28, !9, i64 80}
!31 = !{!9, !9, i64 0}
!32 = !{!33, !9, i64 4016}
!33 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !9, i64 1560, !9, i64 1564, !9, i64 1568, !9, i64 1572, !9, i64 1576, !9, i64 1580, !5, i64 1584, !9, i64 2084, !9, i64 2088, !9, i64 2092, !9, i64 2096, !9, i64 2100, !9, i64 2104, !9, i64 2108, !9, i64 2112, !9, i64 2116, !9, i64 2120, !9, i64 2124, !9, i64 2128, !9, i64 2132, !9, i64 2136, !9, i64 2140, !9, i64 2144, !9, i64 2148, !9, i64 2152, !9, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !9, i64 2928, !9, i64 2932, !9, i64 2936, !9, i64 2940, !9, i64 2944, !9, i64 2948, !9, i64 2952, !9, i64 2956, !9, i64 2960, !9, i64 2964, !9, i64 2968, !9, i64 2972, !5, i64 2976, !9, i64 4000, !9, i64 4004, !9, i64 4008, !9, i64 4012, !9, i64 4016, !9, i64 4020, !9, i64 4024, !9, i64 4028, !9, i64 4032, !9, i64 4036, !9, i64 4040, !9, i64 4044, !9, i64 4048, !9, i64 4052, !9, i64 4056, !9, i64 4060, !9, i64 4064, !9, i64 4068, !9, i64 4072, !9, i64 4076, !19, i64 4080, !9, i64 4088, !9, i64 4092, !9, i64 4096, !9, i64 4100, !9, i64 4104, !9, i64 4108, !9, i64 4112, !9, i64 4116, !9, i64 4120, !9, i64 4124, !9, i64 4128, !9, i64 4132, !9, i64 4136, !9, i64 4140, !9, i64 4144, !9, i64 4148, !9, i64 4152, !9, i64 4156, !9, i64 4160, !9, i64 4164, !9, i64 4168, !9, i64 4172, !9, i64 4176, !9, i64 4180, !9, i64 4184, !9, i64 4188, !5, i64 4192, !5, i64 4448, !9, i64 4704, !9, i64 4708, !9, i64 4712, !9, i64 4716, !9, i64 4720, !9, i64 4724, !9, i64 4728, !9, i64 4732, !9, i64 4736, !9, i64 4740, !9, i64 4744, !9, i64 4748, !9, i64 4752, !9, i64 4756, !9, i64 4760, !9, i64 4764, !9, i64 4768, !9, i64 4772, !5, i64 4776, !9, i64 5032, !9, i64 5036, !18, i64 5040, !18, i64 5048, !34, i64 5056, !18, i64 5064, !9, i64 5072, !9, i64 5076, !9, i64 5080, !9, i64 5084, !9, i64 5088, !9, i64 5092, !9, i64 5096, !9, i64 5100, !9, i64 5104, !9, i64 5108, !9, i64 5112, !9, i64 5116, !9, i64 5120, !9, i64 5124, !9, i64 5128, !9, i64 5132, !9, i64 5136, !19, i64 5144, !19, i64 5152, !19, i64 5160, !5, i64 5168, !9, i64 5208, !5, i64 5212, !9, i64 5244, !9, i64 5248, !9, i64 5252, !9, i64 5256, !9, i64 5260, !9, i64 5264, !9, i64 5268, !9, i64 5272, !9, i64 5276, !9, i64 5280, !9, i64 5284, !9, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !9, i64 5648, !9, i64 5652, !9, i64 5656, !9, i64 5660, !5, i64 5664, !5, i64 5704, !9, i64 5744, !9, i64 5748, !9, i64 5752, !9, i64 5756, !9, i64 5760, !9, i64 5764, !9, i64 5768, !9, i64 5772, !9, i64 5776, !5, i64 5780, !9, i64 5792}
!34 = !{!"p1 omnipotent char", !4, i64 0}
!35 = !{!8, !4, i64 14208}
!36 = !{!37, !9, i64 4}
!37 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8, !9, i64 808, !10, i64 812, !10, i64 816, !10, i64 820}
!38 = !{!8, !9, i64 14248}
!39 = !{!28, !29, i64 24}
!40 = !{!41, !4, i64 0}
!41 = !{!"datapartition", !4, i64 0, !42, i64 8, !42, i64 56}
!42 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !34, i64 24, !18, i64 32, !9, i64 40, !9, i64 44}
!43 = !{!44, !9, i64 40}
!44 = !{!"", !9, i64 0, !9, i64 4, !5, i64 8, !9, i64 12, !9, i64 16, !5, i64 20, !5, i64 21, !9, i64 24, !9, i64 28, !34, i64 32, !9, i64 40}
!45 = !{!33, !9, i64 4008}
!46 = !{!44, !9, i64 4}
!47 = !{!44, !34, i64 32}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!28, !9, i64 16}
!51 = !{!44, !9, i64 0}
!52 = !{!53, !18, i64 2248}
!53 = !{!"", !9, i64 0, !9, i64 4, !10, i64 8, !10, i64 12, !54, i64 16, !54, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !5, i64 44, !5, i64 84, !5, i64 384, !5, i64 684, !9, i64 700, !18, i64 704, !18, i64 712, !54, i64 720, !54, i64 728, !54, i64 736, !10, i64 744, !10, i64 748, !10, i64 752, !5, i64 760, !5, i64 1360, !5, i64 1960, !5, i64 2000, !5, i64 2040, !5, i64 2080, !5, i64 2120, !5, i64 2160, !5, i64 2200, !9, i64 2240, !9, i64 2244, !18, i64 2248, !9, i64 2256, !9, i64 2260}
!54 = !{!"long long", !5, i64 0}
!55 = !{!42, !9, i64 12}
!56 = !{!44, !5, i64 8}
!57 = !{!8, !9, i64 15600}
!58 = !{!8, !9, i64 15444}
!59 = !{!60, !9, i64 32}
!60 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !5, i64 40, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !5, i64 108, !9, i64 1132, !9, i64 1136, !9, i64 1140, !9, i64 1144, !9, i64 1148, !9, i64 1152, !9, i64 1156, !9, i64 1160, !9, i64 1164, !9, i64 1168, !9, i64 1172, !9, i64 1176, !9, i64 1180, !61, i64 1184}
!61 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !62, i64 84, !9, i64 496, !62, i64 500, !9, i64 912, !9, i64 916, !9, i64 920, !9, i64 924, !9, i64 928, !9, i64 932, !9, i64 936, !9, i64 940, !9, i64 944}
!62 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !5, i64 12, !5, i64 140, !5, i64 268, !9, i64 396, !9, i64 400, !9, i64 404, !9, i64 408}
!63 = !{!8, !9, i64 15448}
!64 = !{!8, !9, i64 15348}
!65 = distinct !{!65, !49}
!66 = !{!8, !9, i64 20}
!67 = !{!19, !19, i64 0}
!68 = !{!8, !9, i64 144}
!69 = !{!33, !9, i64 4168}
!70 = !{!33, !9, i64 4732}
!71 = !{!8, !26, i64 15592}
!72 = !{!33, !9, i64 5116}
!73 = !{!74, !9, i64 16}
!74 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !54, i64 56, !18, i64 64, !54, i64 72, !9, i64 80, !9, i64 84, !9, i64 88, !5, i64 92, !9, i64 112, !5, i64 116, !9, i64 136, !9, i64 140}
!75 = !{!8, !9, i64 15404}
!76 = !{!8, !9, i64 15352}
!77 = !{!74, !9, i64 24}
!78 = !{!53, !9, i64 32}
!79 = !{!54, !54, i64 0}
!80 = !{!8, !9, i64 15260}
!81 = !{!33, !9, i64 5656}
!82 = !{!8, !9, i64 12}
!83 = !{!33, !9, i64 5100}
!84 = !{!8, !9, i64 15268}
!85 = !{!8, !9, i64 15408}
!86 = !{!33, !9, i64 4708}
!87 = !{!8, !9, i64 14464}
!88 = !{!8, !9, i64 14468}
!89 = !{!8, !9, i64 15412}
!90 = !{!8, !9, i64 15388}
!91 = !{!92, !19, i64 0}
!92 = !{!"", !19, i64 0, !5, i64 8, !5, i64 520, !5, i64 1032, !15, i64 1544, !13, i64 1552, !9, i64 1560, !26, i64 1564, !5, i64 1568, !5, i64 1584, !11, i64 1600, !5, i64 1608, !5, i64 1624, !9, i64 1640, !54, i64 1648, !9, i64 1656, !20, i64 1664, !20, i64 1672, !5, i64 1680, !9, i64 1712, !9, i64 1716, !9, i64 1720, !9, i64 1724, !9, i64 1728, !9, i64 1732, !9, i64 1736, !9, i64 1740, !9, i64 1744}
!93 = !{!8, !9, i64 15240}
!94 = !{!33, !9, i64 32}
!95 = !{!8, !9, i64 14456}
!96 = !{!8, !9, i64 15416}
!97 = distinct !{!97, !49}
!98 = !{!37, !9, i64 0}
!99 = !{!28, !9, i64 0}
!100 = !{!8, !9, i64 36}
!101 = !{!28, !9, i64 4}
!102 = !{!28, !9, i64 12}
!103 = !{!28, !4, i64 112}
!104 = !{!29, !29, i64 0}
!105 = distinct !{!105, !49}
!106 = !{!107, !9, i64 184}
!107 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !5, i64 24, !9, i64 56, !9, i64 60, !9, i64 64, !5, i64 68, !5, i64 100, !5, i64 132, !9, i64 164, !9, i64 168, !9, i64 172, !34, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232}
!108 = !{!107, !9, i64 188}
!109 = !{!8, !9, i64 14460}
!110 = !{!33, !9, i64 5084}
!111 = !{!8, !9, i64 0}
!112 = !{!33, !9, i64 5768}
!113 = !{!33, !9, i64 36}
!114 = !{!8, !9, i64 24}
!115 = !{!33, !9, i64 40}
!116 = !{!33, !9, i64 44}
!117 = !{!8, !9, i64 15360}
!118 = !{!33, !9, i64 4004}
!119 = !{!120, !9, i64 32}
!120 = !{!"decoded_picture_buffer", !121, i64 0, !121, i64 8, !121, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !122, i64 56}
!121 = !{!"p2 _ZTS11frame_store", !12, i64 0}
!122 = !{!"p1 _ZTS11frame_store", !4, i64 0}
!123 = !{!60, !9, i64 1132}
!124 = !{!8, !9, i64 15332}
!125 = !{!33, !9, i64 1564}
!126 = !{!127, !127, i64 0}
!127 = !{!"p2 _ZTS16storable_picture", !12, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"p1 _ZTS16storable_picture", !4, i64 0}
!130 = !{!131, !9, i64 4}
!131 = !{!"storable_picture", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !5, i64 24, !5, i64 1608, !5, i64 3192, !5, i64 4776, !9, i64 6360, !9, i64 6364, !9, i64 6368, !9, i64 6372, !9, i64 6376, !9, i64 6380, !9, i64 6384, !9, i64 6388, !9, i64 6392, !9, i64 6396, !9, i64 6400, !9, i64 6404, !9, i64 6408, !9, i64 6412, !9, i64 6416, !9, i64 6420, !9, i64 6424, !9, i64 6428, !9, i64 6432, !132, i64 6440, !133, i64 6448, !133, i64 6456, !134, i64 6464, !135, i64 6472, !34, i64 6480, !136, i64 6488, !137, i64 6496, !137, i64 6504, !133, i64 6512, !11, i64 6520, !11, i64 6528, !129, i64 6536, !129, i64 6544, !129, i64 6552, !9, i64 6560, !9, i64 6564, !9, i64 6568, !9, i64 6572, !9, i64 6576, !9, i64 6580, !9, i64 6584}
!132 = !{!"p2 short", !12, i64 0}
!133 = !{!"p4 short", !16, i64 0}
!134 = !{!"p5 short", !22, i64 0}
!135 = !{!"p3 short", !14, i64 0}
!136 = !{!"p3 omnipotent char", !14, i64 0}
!137 = !{!"p3 long long", !14, i64 0}
!138 = !{!8, !9, i64 15596}
!139 = !{!8, !9, i64 15328}
!140 = distinct !{!140, !49}
!141 = distinct !{!141, !49}
!142 = !{!33, !9, i64 4000}
!143 = !{!28, !18, i64 56}
!144 = !{!28, !18, i64 64}
!145 = !{!28, !18, i64 72}
!146 = distinct !{!146, !49}
!147 = !{!28, !18, i64 88}
!148 = !{!28, !18, i64 96}
!149 = !{!28, !18, i64 104}
!150 = distinct !{!150, !49}
!151 = !{!107, !9, i64 192}
!152 = !{!107, !9, i64 196}
!153 = !{!33, !9, i64 1576}
!154 = !{!33, !9, i64 2940}
!155 = !{!156, !156, i64 0}
!156 = !{!"p1 _ZTS16colocated_params", !4, i64 0}
!157 = !{!33, !9, i64 5244}
!158 = distinct !{!158, !49}
!159 = distinct !{!159, !49}
!160 = distinct !{!160, !49}
!161 = distinct !{!161, !49}
!162 = !{!28, !4, i64 32}
!163 = !{!28, !4, i64 40}
!164 = !{!18, !18, i64 0}
!165 = !{!131, !9, i64 6364}
!166 = distinct !{!166, !49}
!167 = !{!120, !121, i64 8}
!168 = !{!122, !122, i64 0}
!169 = !{!170, !129, i64 40}
!170 = !{!"frame_store", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !129, i64 40, !129, i64 48, !129, i64 56}
!171 = !{!170, !9, i64 0}
!172 = !{!131, !9, i64 6380}
!173 = !{!131, !9, i64 6376}
!174 = distinct !{!174, !49}
!175 = distinct !{!175, !49}
!176 = distinct !{!176, !49}
!177 = distinct !{!177, !49}
!178 = distinct !{!178, !49}
!179 = distinct !{!179, !49}
!180 = distinct !{!180, !49}
!181 = distinct !{!181, !49}
!182 = distinct !{!182, !49}
!183 = !{!33, !9, i64 20}
!184 = !{!8, !9, i64 15452}
!185 = !{!33, !9, i64 5288}
!186 = !{!8, !24, i64 15480}
!187 = !{!188, !188, i64 0}
!188 = !{!"p1 double", !4, i64 0}
!189 = !{!8, !25, i64 15488}
!190 = !{!24, !24, i64 0}
!191 = !{!8, !13, i64 15496}
!192 = !{!193, !193, i64 0}
!193 = !{!"p2 int", !12, i64 0}
!194 = distinct !{!194, !49}
!195 = distinct !{!195, !49}
!196 = distinct !{!196, !49}
!197 = distinct !{!197, !49}
!198 = !{!33, !9, i64 2096}
!199 = !{!33, !9, i64 2964}
!200 = !{!8, !9, i64 14364}
!201 = !{!33, !9, i64 2968}
!202 = !{!203, !9, i64 16}
!203 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!204 = distinct !{!204, !49}
!205 = distinct !{!205, !49}
!206 = !{!33, !9, i64 4172}
!207 = !{!8, !24, i64 15504}
!208 = distinct !{!208, !49}
!209 = distinct !{!209, !49}
!210 = distinct !{!210, !49}
!211 = distinct !{!211, !49}
!212 = distinct !{!212, !49}
!213 = !{!33, !9, i64 264}
!214 = !{!33, !9, i64 268}
!215 = !{!28, !9, i64 20}
!216 = distinct !{!216, !49}
!217 = !{!131, !9, i64 0}
!218 = !{!131, !9, i64 16}
!219 = !{!131, !9, i64 8}
!220 = !{!131, !9, i64 12}
!221 = distinct !{!221, !49}
!222 = distinct !{!222, !49}
!223 = !{!60, !9, i64 1148}
!224 = distinct !{!224, !49}
!225 = distinct !{!225, !49}
