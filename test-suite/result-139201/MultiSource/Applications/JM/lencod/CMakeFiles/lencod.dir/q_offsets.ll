; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/q_offsets.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/q_offsets.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }

@offset4x4_check = dso_local global [6 x i32] zeroinitializer, align 4
@offset8x8_check = dso_local global [2 x i32] zeroinitializer, align 4
@OffsetBits = dso_local constant i32 11, align 4
@input = external global ptr, align 8
@LevelOffset4x4Luma = common dso_local global ptr null, align 8
@LevelOffset4x4Chroma = common dso_local global ptr null, align 8
@LevelOffset8x8Luma = common dso_local global ptr null, align 8
@OffsetList4x4input = common dso_local global ptr null, align 8
@OffsetList8x8input = common dso_local global ptr null, align 8
@OffsetList4x4 = common dso_local global ptr null, align 8
@OffsetList8x8 = common dso_local global ptr null, align 8
@OffsetType4x4 = internal constant [15 x [24 x i8]] [[24 x i8] c"INTRA4X4_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTRA\00\00", [24 x i8] c"INTRA4X4_CHROMAV_INTRA\00\00", [24 x i8] c"INTRA4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERP\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERP\00", [24 x i8] c"INTRA4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTRA4X4_CHROMAU_INTERB\00", [24 x i8] c"INTRA4X4_CHROMAV_INTERB\00", [24 x i8] c"INTER4X4_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERP\00", [24 x i8] c"INTER4X4_CHROMAV_INTERP\00", [24 x i8] c"INTER4X4_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER4X4_CHROMAU_INTERB\00", [24 x i8] c"INTER4X4_CHROMAV_INTERB\00"], align 1
@OffsetType8x8 = internal constant [5 x [24 x i8]] [[24 x i8] c"INTRA8X8_LUMA_INTRA\00\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTRA8X8_LUMA_INTERB\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERP\00\00\00\00", [24 x i8] c"INTER8X8_LUMA_INTERB\00\00\00\00"], align 1
@errortext = common dso_local global [300 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [67 x i8] c" Parsing error in config file: Parameter Name '%s' not recognized.\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c" Parsing error in config file: '=' expected as the second token in each item.\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c" Parsing error: Expected numerical value for Parameter of %s, found '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Parsing Quantization Offset Matrix file %s \00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"\0AError: %s\0AProceeding with default values for all matrices.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Offset_intra_default_intra = internal constant [16 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 2
@Offset_intra_default_chroma = internal constant [16 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 2
@Offset_intra_default_inter = internal constant [16 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 2
@Offset_inter_default = internal constant [16 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 2
@Offset8_intra_default_intra = internal constant [64 x i16] [i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682, i16 682], align 2
@Offset8_intra_default_inter = internal constant [64 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 2
@Offset8_inter_default = internal constant [64 x i16] [i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342, i16 342], align 2
@img = external global ptr, align 8
@qp_per_matrix = external global ptr, align 8
@AdaptRndWeight = common dso_local global i32 0, align 4
@AdaptRndCrWeight = common dso_local global i32 0, align 4
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
define dso_local void @allocate_QOffsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  %4 = load ptr, ptr @input, align 8, !tbaa !3
  %5 = getelementptr inbounds nuw %struct.InputParameters, ptr %4, i32 0, i32 172
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = mul nsw i32 6, %6
  %8 = add nsw i32 3, %7
  %9 = sub nsw i32 %8, 0
  %10 = sdiv i32 %9, 6
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6
  %12 = load ptr, ptr @input, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.InputParameters, ptr %12, i32 0, i32 173
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = mul nsw i32 6, %14
  %16 = add nsw i32 3, %15
  %17 = sub nsw i32 %16, 0
  %18 = sdiv i32 %17, 6
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  %20 = load i32, ptr %1, align 4, !tbaa !13
  %21 = load i32, ptr %2, align 4, !tbaa !13
  %22 = call signext i32 @imax(i32 noundef signext %20, i32 noundef signext %21)
  store i32 %22, ptr %3, align 4, !tbaa !13
  %23 = load i32, ptr %3, align 4, !tbaa !13
  %24 = call signext i32 @get_mem4Dint(ptr noundef @LevelOffset4x4Luma, i32 noundef signext 2, i32 noundef signext %23, i32 noundef signext 4, i32 noundef signext 4)
  %25 = load i32, ptr %3, align 4, !tbaa !13
  %26 = call signext i32 @get_mem5Dint(ptr noundef @LevelOffset4x4Chroma, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext %25, i32 noundef signext 4, i32 noundef signext 4)
  %27 = load i32, ptr %3, align 4, !tbaa !13
  %28 = call signext i32 @get_mem4Dint(ptr noundef @LevelOffset8x8Luma, i32 noundef signext 2, i32 noundef signext %27, i32 noundef signext 8, i32 noundef signext 8)
  %29 = call signext i32 @get_mem2Dshort(ptr noundef @OffsetList4x4input, i32 noundef signext 15, i32 noundef signext 16)
  %30 = call signext i32 @get_mem2Dshort(ptr noundef @OffsetList8x8input, i32 noundef signext 5, i32 noundef signext 64)
  %31 = call signext i32 @get_mem2Dshort(ptr noundef @OffsetList4x4, i32 noundef signext 15, i32 noundef signext 16)
  %32 = call signext i32 @get_mem2Dshort(ptr noundef @OffsetList8x8, i32 noundef signext 5, i32 noundef signext 64)
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !13
  store i32 %1, ptr %4, align 4, !tbaa !13
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load i32, ptr %4, align 4, !tbaa !13
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !13
  br label %12

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !tbaa !13
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

declare signext i32 @get_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare signext i32 @get_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare signext i32 @get_mem2Dshort(ptr noundef, i32 noundef signext, i32 noundef signext) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @free_QOffsets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  %4 = load ptr, ptr @input, align 8, !tbaa !3
  %5 = getelementptr inbounds nuw %struct.InputParameters, ptr %4, i32 0, i32 172
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = mul nsw i32 6, %6
  %8 = add nsw i32 3, %7
  %9 = sub nsw i32 %8, 0
  %10 = sdiv i32 %9, 6
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %1, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6
  %12 = load ptr, ptr @input, align 8, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.InputParameters, ptr %12, i32 0, i32 173
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = mul nsw i32 6, %14
  %16 = add nsw i32 3, %15
  %17 = sub nsw i32 %16, 0
  %18 = sdiv i32 %17, 6
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %2, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  %20 = load i32, ptr %1, align 4, !tbaa !13
  %21 = load i32, ptr %2, align 4, !tbaa !13
  %22 = call signext i32 @imax(i32 noundef signext %20, i32 noundef signext %21)
  store i32 %22, ptr %3, align 4, !tbaa !13
  %23 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !15
  %24 = load i32, ptr %3, align 4, !tbaa !13
  call void @free_mem4Dint(ptr noundef %23, i32 noundef signext 2, i32 noundef signext %24)
  %25 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %26 = load i32, ptr %3, align 4, !tbaa !13
  call void @free_mem5Dint(ptr noundef %25, i32 noundef signext 2, i32 noundef signext 2, i32 noundef signext %26)
  %27 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !15
  %28 = load i32, ptr %3, align 4, !tbaa !13
  call void @free_mem4Dint(ptr noundef %27, i32 noundef signext 2, i32 noundef signext %28)
  %29 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  call void @free_mem2Dshort(ptr noundef %29)
  %30 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  call void @free_mem2Dshort(ptr noundef %30)
  %31 = load ptr, ptr @OffsetList8x8input, align 8, !tbaa !23
  call void @free_mem2Dshort(ptr noundef %31)
  %32 = load ptr, ptr @OffsetList4x4input, align 8, !tbaa !23
  call void @free_mem2Dshort(ptr noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

declare void @free_mem4Dint(ptr noundef, i32 noundef signext, i32 noundef signext) #3

declare void @free_mem5Dint(ptr noundef, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare void @free_mem2Dshort(ptr noundef) #3

; Function Attrs: nounwind
define dso_local signext i32 @CheckOffsetParameterName(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !25
  store ptr %1, ptr %5, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  store i32 0, ptr %6, align 4, !tbaa !13
  %8 = load ptr, ptr %5, align 8, !tbaa !26
  store i32 0, ptr %8, align 4, !tbaa !13
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, ptr %6, align 4, !tbaa !13
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [15 x [24 x i8]], ptr @OffsetType4x4, i64 0, i64 %11
  %13 = getelementptr inbounds [24 x i8], ptr %12, i64 0, i64 0
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, ptr %6, align 4, !tbaa !13
  %17 = icmp slt i32 %16, 15
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi i1 [ false, %9 ], [ %17, %15 ]
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = load i32, ptr %6, align 4, !tbaa !13
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [15 x [24 x i8]], ptr @OffsetType4x4, i64 0, i64 %22
  %24 = getelementptr inbounds [24 x i8], ptr %23, i64 0, i64 0
  %25 = load ptr, ptr %4, align 8, !tbaa !25
  %26 = call signext i32 @strcmp(ptr noundef %24, ptr noundef %25) #7
  %27 = icmp eq i32 0, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, ptr %6, align 4, !tbaa !13
  store i32 %29, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %62

30:                                               ; preds = %20
  %31 = load i32, ptr %6, align 4, !tbaa !13
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %6, align 4, !tbaa !13
  br label %33

33:                                               ; preds = %30
  br label %9, !llvm.loop !27

34:                                               ; preds = %18
  store i32 0, ptr %6, align 4, !tbaa !13
  %35 = load ptr, ptr %5, align 8, !tbaa !26
  store i32 1, ptr %35, align 4, !tbaa !13
  br label %36

36:                                               ; preds = %60, %34
  %37 = load i32, ptr %6, align 4, !tbaa !13
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [5 x [24 x i8]], ptr @OffsetType8x8, i64 0, i64 %38
  %40 = getelementptr inbounds [24 x i8], ptr %39, i64 0, i64 0
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, ptr %6, align 4, !tbaa !13
  %44 = icmp slt i32 %43, 5
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi i1 [ false, %36 ], [ %44, %42 ]
  br i1 %46, label %47, label %61

47:                                               ; preds = %45
  %48 = load i32, ptr %6, align 4, !tbaa !13
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x [24 x i8]], ptr @OffsetType8x8, i64 0, i64 %49
  %51 = getelementptr inbounds [24 x i8], ptr %50, i64 0, i64 0
  %52 = load ptr, ptr %4, align 8, !tbaa !25
  %53 = call signext i32 @strcmp(ptr noundef %51, ptr noundef %52) #7
  %54 = icmp eq i32 0, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, ptr %6, align 4, !tbaa !13
  store i32 %56, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %62

57:                                               ; preds = %47
  %58 = load i32, ptr %6, align 4, !tbaa !13
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %6, align 4, !tbaa !13
  br label %60

60:                                               ; preds = %57
  br label %36, !llvm.loop !29

61:                                               ; preds = %45
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %62

62:                                               ; preds = %61, %55, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  %63 = load i32, ptr %3, align 4
  ret i32 %63
}

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
define dso_local void @ParseQOffsetMatrix(ptr noundef %0, i32 noundef signext %1) #0 {
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
  store ptr %0, ptr %3, align 8, !tbaa !25
  store i32 %1, ptr %4, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8000, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  store i32 0, ptr %7, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  store i32 0, ptr %8, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  store i32 0, ptr %9, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #6
  %19 = load ptr, ptr %3, align 8, !tbaa !25
  store ptr %19, ptr %10, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #6
  %20 = load ptr, ptr %3, align 8, !tbaa !25
  %21 = load i32, ptr %4, align 4, !tbaa !13
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  store ptr %23, ptr %11, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #6
  br label %24

24:                                               ; preds = %99, %2
  %25 = load ptr, ptr %10, align 8, !tbaa !25
  %26 = load ptr, ptr %11, align 8, !tbaa !25
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8, !tbaa !25
  %30 = load i8, ptr %29, align 1, !tbaa !30
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
  %33 = load ptr, ptr %10, align 8, !tbaa !25
  %34 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %34, ptr %10, align 8, !tbaa !25
  br label %99

35:                                               ; preds = %28
  %36 = load ptr, ptr %10, align 8, !tbaa !25
  store i8 0, ptr %36, align 1, !tbaa !30
  br label %37

37:                                               ; preds = %48, %35
  %38 = load ptr, ptr %10, align 8, !tbaa !25
  %39 = load i8, ptr %38, align 1, !tbaa !30
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load ptr, ptr %10, align 8, !tbaa !25
  %44 = load ptr, ptr %11, align 8, !tbaa !25
  %45 = icmp ult ptr %43, %44
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i1 [ false, %37 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load ptr, ptr %10, align 8, !tbaa !25
  %50 = getelementptr inbounds nuw i8, ptr %49, i32 1
  store ptr %50, ptr %10, align 8, !tbaa !25
  br label %37, !llvm.loop !31

51:                                               ; preds = %46
  store i32 0, ptr %8, align 4, !tbaa !13
  store i32 0, ptr %9, align 4, !tbaa !13
  br label %99

52:                                               ; preds = %28
  store i32 0, ptr %9, align 4, !tbaa !13
  store i32 0, ptr %8, align 4, !tbaa !13
  %53 = load ptr, ptr %10, align 8, !tbaa !25
  %54 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %54, ptr %10, align 8, !tbaa !25
  store i8 0, ptr %53, align 1, !tbaa !30
  br label %99

55:                                               ; preds = %28, %28
  %56 = load i32, ptr %8, align 4, !tbaa !13
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load ptr, ptr %10, align 8, !tbaa !25
  %60 = getelementptr inbounds nuw i8, ptr %59, i32 1
  store ptr %60, ptr %10, align 8, !tbaa !25
  br label %64

61:                                               ; preds = %55
  %62 = load ptr, ptr %10, align 8, !tbaa !25
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %63, ptr %10, align 8, !tbaa !25
  store i8 0, ptr %62, align 1, !tbaa !30
  store i32 0, ptr %9, align 4, !tbaa !13
  br label %64

64:                                               ; preds = %61, %58
  br label %99

65:                                               ; preds = %28
  %66 = load ptr, ptr %10, align 8, !tbaa !25
  %67 = getelementptr inbounds nuw i8, ptr %66, i32 1
  store ptr %67, ptr %10, align 8, !tbaa !25
  store i8 0, ptr %66, align 1, !tbaa !30
  %68 = load i32, ptr %8, align 4, !tbaa !13
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %10, align 8, !tbaa !25
  %72 = load i32, ptr %7, align 4, !tbaa !13
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %7, align 4, !tbaa !13
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %74
  store ptr %71, ptr %75, align 8, !tbaa !25
  %76 = load i32, ptr %9, align 4, !tbaa !13
  %77 = xor i32 %76, -1
  store i32 %77, ptr %9, align 4, !tbaa !13
  br label %79

78:                                               ; preds = %65
  store i32 0, ptr %9, align 4, !tbaa !13
  br label %79

79:                                               ; preds = %78, %70
  %80 = load i32, ptr %8, align 4, !tbaa !13
  %81 = xor i32 %80, -1
  store i32 %81, ptr %8, align 4, !tbaa !13
  br label %99

82:                                               ; preds = %28
  %83 = load ptr, ptr %10, align 8, !tbaa !25
  %84 = getelementptr inbounds nuw i8, ptr %83, i32 1
  store ptr %84, ptr %10, align 8, !tbaa !25
  store i32 0, ptr %9, align 4, !tbaa !13
  br label %99

85:                                               ; preds = %28
  %86 = load i32, ptr %9, align 4, !tbaa !13
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %10, align 8, !tbaa !25
  %90 = load i32, ptr %7, align 4, !tbaa !13
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %7, align 4, !tbaa !13
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %92
  store ptr %89, ptr %93, align 8, !tbaa !25
  %94 = load i32, ptr %9, align 4, !tbaa !13
  %95 = xor i32 %94, -1
  store i32 %95, ptr %9, align 4, !tbaa !13
  br label %96

96:                                               ; preds = %88, %85
  %97 = load ptr, ptr %10, align 8, !tbaa !25
  %98 = getelementptr inbounds nuw i8, ptr %97, i32 1
  store ptr %98, ptr %10, align 8, !tbaa !25
  br label %99

99:                                               ; preds = %96, %82, %79, %64, %52, %51, %32
  br label %24, !llvm.loop !32

100:                                              ; preds = %24
  %101 = load i32, ptr %7, align 4, !tbaa !13
  %102 = add nsw i32 %101, -1
  store i32 %102, ptr %7, align 4, !tbaa !13
  store i32 0, ptr %13, align 4, !tbaa !13
  br label %103

103:                                              ; preds = %205, %100
  %104 = load i32, ptr %13, align 4, !tbaa !13
  %105 = load i32, ptr %7, align 4, !tbaa !13
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %209

107:                                              ; preds = %103
  store i32 0, ptr %17, align 4, !tbaa !13
  %108 = load i32, ptr %13, align 4, !tbaa !13
  %109 = load i32, ptr %17, align 4, !tbaa !13
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !25
  %114 = call signext i32 @CheckOffsetParameterName(ptr noundef %113, ptr noundef %16)
  store i32 %114, ptr %6, align 4, !tbaa !13
  %115 = icmp sgt i32 0, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %107
  %117 = load i32, ptr %13, align 4, !tbaa !13
  %118 = load i32, ptr %17, align 4, !tbaa !13
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !25
  %123 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str, ptr noundef %122) #6
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %124

124:                                              ; preds = %116, %107
  %125 = load i32, ptr %17, align 4, !tbaa !13
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %17, align 4, !tbaa !13
  %127 = load i32, ptr %13, align 4, !tbaa !13
  %128 = load i32, ptr %17, align 4, !tbaa !13
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !25
  %133 = call signext i32 @strcmp(ptr noundef @.str.1, ptr noundef %132) #7
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %124
  %136 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.2) #6
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %137

137:                                              ; preds = %135, %124
  %138 = load i32, ptr %17, align 4, !tbaa !13
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %17, align 4, !tbaa !13
  %140 = load i32, ptr %16, align 4, !tbaa !13
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %137
  store i32 16, ptr %15, align 4, !tbaa !13
  %143 = load ptr, ptr @OffsetList4x4input, align 8, !tbaa !23
  %144 = load i32, ptr %6, align 4, !tbaa !13
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %143, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !33
  store ptr %147, ptr %18, align 8, !tbaa !33
  %148 = load i32, ptr %6, align 4, !tbaa !13
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [6 x i32], ptr @offset4x4_check, i64 0, i64 %149
  store i32 1, ptr %150, align 4, !tbaa !13
  br label %160

151:                                              ; preds = %137
  store i32 64, ptr %15, align 4, !tbaa !13
  %152 = load ptr, ptr @OffsetList8x8input, align 8, !tbaa !23
  %153 = load i32, ptr %6, align 4, !tbaa !13
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %152, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !33
  store ptr %156, ptr %18, align 8, !tbaa !33
  %157 = load i32, ptr %6, align 4, !tbaa !13
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], ptr @offset8x8_check, i64 0, i64 %158
  store i32 1, ptr %159, align 4, !tbaa !13
  br label %160

160:                                              ; preds = %151, %142
  store i32 0, ptr %14, align 4, !tbaa !13
  br label %161

161:                                              ; preds = %197, %160
  %162 = load i32, ptr %14, align 4, !tbaa !13
  %163 = load i32, ptr %15, align 4, !tbaa !13
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %200

165:                                              ; preds = %161
  %166 = load i32, ptr %13, align 4, !tbaa !13
  %167 = load i32, ptr %17, align 4, !tbaa !13
  %168 = add nsw i32 %166, %167
  %169 = load i32, ptr %14, align 4, !tbaa !13
  %170 = add nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !25
  %174 = call signext i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %173, ptr noundef @.str.3, ptr noundef %12) #6
  %175 = icmp ne i32 1, %174
  br i1 %175, label %176, label %190

176:                                              ; preds = %165
  %177 = load i32, ptr %13, align 4, !tbaa !13
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !25
  %181 = load i32, ptr %13, align 4, !tbaa !13
  %182 = load i32, ptr %17, align 4, !tbaa !13
  %183 = add nsw i32 %181, %182
  %184 = load i32, ptr %14, align 4, !tbaa !13
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [1000 x ptr], ptr %5, i64 0, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !25
  %189 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef @errortext, i64 noundef 300, ptr noundef @.str.4, ptr noundef %180, ptr noundef %188) #6
  call void @error(ptr noundef @errortext, i32 noundef signext 300)
  br label %190

190:                                              ; preds = %176, %165
  %191 = load i32, ptr %12, align 4, !tbaa !13
  %192 = trunc i32 %191 to i16
  %193 = load ptr, ptr %18, align 8, !tbaa !33
  %194 = load i32, ptr %14, align 4, !tbaa !13
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, ptr %193, i64 %195
  store i16 %192, ptr %196, align 2, !tbaa !35
  br label %197

197:                                              ; preds = %190
  %198 = load i32, ptr %14, align 4, !tbaa !13
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %14, align 4, !tbaa !13
  br label %161, !llvm.loop !37

200:                                              ; preds = %161
  %201 = load i32, ptr %14, align 4, !tbaa !13
  %202 = load i32, ptr %17, align 4, !tbaa !13
  %203 = add nsw i32 %202, %201
  store i32 %203, ptr %17, align 4, !tbaa !13
  %204 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %205

205:                                              ; preds = %200
  %206 = load i32, ptr %17, align 4, !tbaa !13
  %207 = load i32, ptr %13, align 4, !tbaa !13
  %208 = add nsw i32 %207, %206
  store i32 %208, ptr %13, align 4, !tbaa !13
  br label %103, !llvm.loop !38

209:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 8000, ptr %5) #6
  ret void
}

; Function Attrs: nounwind
declare signext i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

declare void @error(ptr noundef, i32 noundef signext) #3

; Function Attrs: nounwind
declare signext i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #0

declare signext i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
define dso_local void @Init_QOffsetMatrix() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #6
  call void @allocate_QOffsets()
  %2 = load ptr, ptr @input, align 8, !tbaa !3
  %3 = getelementptr inbounds nuw %struct.InputParameters, ptr %2, i32 0, i32 184
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %0
  %7 = load ptr, ptr @input, align 8, !tbaa !3
  %8 = getelementptr inbounds nuw %struct.InputParameters, ptr %7, i32 0, i32 183
  %9 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0
  %10 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %9)
  %11 = load ptr, ptr @input, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.InputParameters, ptr %11, i32 0, i32 183
  %13 = getelementptr inbounds [256 x i8], ptr %12, i64 0, i64 0
  %14 = call ptr @GetConfigFileContent(ptr noundef %13, i32 noundef signext 0)
  store ptr %14, ptr %1, align 8, !tbaa !25
  %15 = load ptr, ptr %1, align 8, !tbaa !25
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load ptr, ptr %1, align 8, !tbaa !25
  %19 = load ptr, ptr %1, align 8, !tbaa !25
  %20 = call i64 @strlen(ptr noundef %19) #7
  %21 = trunc i64 %20 to i32
  call void @ParseQOffsetMatrix(ptr noundef %18, i32 noundef signext %21)
  br label %26

22:                                               ; preds = %6
  %23 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef @errortext)
  %24 = load ptr, ptr @input, align 8, !tbaa !3
  %25 = getelementptr inbounds nuw %struct.InputParameters, ptr %24, i32 0, i32 184
  store i32 0, ptr %25, align 8, !tbaa !39
  br label %26

26:                                               ; preds = %22, %17
  %27 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %28 = load ptr, ptr %1, align 8, !tbaa !25
  call void @free(ptr noundef %28) #6
  br label %29

29:                                               ; preds = %26, %0
  call void @InitOffsetParam()
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #6
  ret void
}

declare ptr @GetConfigFileContent(ptr noundef, i32 noundef signext) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @InitOffsetParam() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  %2 = load ptr, ptr @input, align 8, !tbaa !3
  %3 = getelementptr inbounds nuw %struct.InputParameters, ptr %2, i32 0, i32 184
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %8 = getelementptr inbounds ptr, ptr %7, i64 0
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = getelementptr inbounds i16, ptr %9, i64 0
  %11 = load ptr, ptr @OffsetList4x4input, align 8, !tbaa !23
  %12 = getelementptr inbounds ptr, ptr %11, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds i16, ptr %13, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %10, ptr align 2 %14, i64 480, i1 false)
  %15 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %16 = getelementptr inbounds ptr, ptr %15, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds i16, ptr %17, i64 0
  %19 = load ptr, ptr @OffsetList8x8input, align 8, !tbaa !23
  %20 = getelementptr inbounds ptr, ptr %19, i64 0
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds i16, ptr %21, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %22, i64 640, i1 false)
  br label %90

23:                                               ; preds = %0
  %24 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %25 = getelementptr inbounds ptr, ptr %24, i64 0
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = getelementptr inbounds i16, ptr %26, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr align 2 @Offset_intra_default_intra, i64 32, i1 false)
  store i32 1, ptr %1, align 4, !tbaa !13
  br label %28

28:                                               ; preds = %38, %23
  %29 = load i32, ptr %1, align 4, !tbaa !13
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %33 = load i32, ptr %1, align 4, !tbaa !13
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !33
  %37 = getelementptr inbounds i16, ptr %36, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %37, ptr align 2 @Offset_intra_default_chroma, i64 32, i1 false)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, ptr %1, align 4, !tbaa !13
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %1, align 4, !tbaa !13
  br label %28, !llvm.loop !40

41:                                               ; preds = %28
  store i32 3, ptr %1, align 4, !tbaa !13
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, ptr %1, align 4, !tbaa !13
  %44 = icmp slt i32 %43, 9
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %47 = load i32, ptr %1, align 4, !tbaa !13
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !33
  %51 = getelementptr inbounds i16, ptr %50, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %51, ptr align 2 @Offset_intra_default_inter, i64 32, i1 false)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, ptr %1, align 4, !tbaa !13
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %1, align 4, !tbaa !13
  br label %42, !llvm.loop !41

55:                                               ; preds = %42
  store i32 9, ptr %1, align 4, !tbaa !13
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, ptr %1, align 4, !tbaa !13
  %58 = icmp slt i32 %57, 15
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %61 = load i32, ptr %1, align 4, !tbaa !13
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !33
  %65 = getelementptr inbounds i16, ptr %64, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %65, ptr align 2 @Offset_inter_default, i64 32, i1 false)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, ptr %1, align 4, !tbaa !13
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %1, align 4, !tbaa !13
  br label %56, !llvm.loop !42

69:                                               ; preds = %56
  %70 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %71 = getelementptr inbounds ptr, ptr %70, i64 0
  %72 = load ptr, ptr %71, align 8, !tbaa !33
  %73 = getelementptr inbounds i16, ptr %72, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %73, ptr align 2 @Offset8_intra_default_intra, i64 128, i1 false)
  %74 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %75 = getelementptr inbounds ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !33
  %77 = getelementptr inbounds i16, ptr %76, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %77, ptr align 2 @Offset8_intra_default_inter, i64 128, i1 false)
  %78 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %79 = getelementptr inbounds ptr, ptr %78, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !33
  %81 = getelementptr inbounds i16, ptr %80, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %81, ptr align 2 @Offset8_intra_default_inter, i64 128, i1 false)
  %82 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8, !tbaa !33
  %85 = getelementptr inbounds i16, ptr %84, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %85, ptr align 2 @Offset8_inter_default, i64 128, i1 false)
  %86 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %87 = getelementptr inbounds ptr, ptr %86, i64 4
  %88 = load ptr, ptr %87, align 8, !tbaa !33
  %89 = getelementptr inbounds i16, ptr %88, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %89, ptr align 2 @Offset8_inter_default, i64 128, i1 false)
  br label %90

90:                                               ; preds = %69, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
define dso_local void @CalculateOffsetParam() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %9 = load ptr, ptr @img, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.ImageParameters, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  br label %26

14:                                               ; preds = %0
  %15 = load ptr, ptr @img, align 8, !tbaa !3
  %16 = getelementptr inbounds nuw %struct.ImageParameters, ptr %15, i32 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !43
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load ptr, ptr @img, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.ImageParameters, ptr %21, i32 0, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !43
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 0, %19 ], [ %23, %20 ]
  br label %26

26:                                               ; preds = %24, %13
  %27 = phi i32 [ 2, %13 ], [ %25, %24 ]
  store i32 %27, ptr %6, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  %28 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !26
  %29 = load ptr, ptr @img, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.ImageParameters, ptr %29, i32 0, i32 144
  %31 = load i32, ptr %30, align 4, !tbaa !54
  %32 = add nsw i32 51, %31
  %33 = sub nsw i32 %32, 0
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %28, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !13
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr %7, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  %38 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !26
  %39 = load ptr, ptr @img, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.ImageParameters, ptr %39, i32 0, i32 145
  %41 = load i32, ptr %40, align 8, !tbaa !55
  %42 = add nsw i32 51, %41
  %43 = sub nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %38, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !13
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %8, align 4, !tbaa !13
  %48 = load ptr, ptr @input, align 8, !tbaa !3
  %49 = getelementptr inbounds nuw %struct.InputParameters, ptr %48, i32 0, i32 188
  %50 = load ptr, ptr @img, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.ImageParameters, ptr %50, i32 0, i32 122
  %52 = load i32, ptr %51, align 8, !tbaa !56
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [2 x [5 x i32]], ptr %49, i64 0, i64 %55
  %57 = load i32, ptr %6, align 4, !tbaa !13
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x i32], ptr %56, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !13
  store i32 %60, ptr @AdaptRndWeight, align 4, !tbaa !13
  %61 = load ptr, ptr @input, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.InputParameters, ptr %61, i32 0, i32 189
  %63 = load ptr, ptr @img, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.ImageParameters, ptr %63, i32 0, i32 122
  %65 = load i32, ptr %64, align 8, !tbaa !56
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x [5 x i32]], ptr %62, i64 0, i64 %68
  %70 = load i32, ptr %6, align 4, !tbaa !13
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x i32], ptr %69, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !13
  store i32 %73, ptr @AdaptRndCrWeight, align 4, !tbaa !13
  store i32 0, ptr %3, align 4, !tbaa !13
  br label %74

74:                                               ; preds = %499, %26
  %75 = load i32, ptr %3, align 4, !tbaa !13
  %76 = load i32, ptr %7, align 4, !tbaa !13
  %77 = load i32, ptr %8, align 4, !tbaa !13
  %78 = call signext i32 @imax(i32 noundef signext %76, i32 noundef signext %77)
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %502

80:                                               ; preds = %74
  %81 = load i32, ptr %3, align 4, !tbaa !13
  %82 = add nsw i32 15, %81
  %83 = sub nsw i32 %82, 11
  store i32 %83, ptr %5, align 4, !tbaa !13
  store i32 0, ptr %2, align 4, !tbaa !13
  br label %84

84:                                               ; preds = %495, %80
  %85 = load i32, ptr %2, align 4, !tbaa !13
  %86 = icmp slt i32 %85, 4
  br i1 %86, label %87, label %498

87:                                               ; preds = %84
  store i32 0, ptr %1, align 4, !tbaa !13
  br label %88

88:                                               ; preds = %491, %87
  %89 = load i32, ptr %1, align 4, !tbaa !13
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %494

91:                                               ; preds = %88
  %92 = load i32, ptr %2, align 4, !tbaa !13
  %93 = shl i32 %92, 2
  %94 = load i32, ptr %1, align 4, !tbaa !13
  %95 = add nsw i32 %93, %94
  store i32 %95, ptr %4, align 4, !tbaa !13
  %96 = load i32, ptr %6, align 4, !tbaa !13
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %175

98:                                               ; preds = %91
  %99 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %100 = getelementptr inbounds ptr, ptr %99, i64 0
  %101 = load ptr, ptr %100, align 8, !tbaa !33
  %102 = load i32, ptr %4, align 4, !tbaa !13
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, ptr %101, i64 %103
  %105 = load i16, ptr %104, align 2, !tbaa !35
  %106 = sext i16 %105 to i32
  %107 = load i32, ptr %5, align 4, !tbaa !13
  %108 = shl i32 %106, %107
  %109 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !15
  %110 = getelementptr inbounds ptr, ptr %109, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !57
  %112 = load i32, ptr %3, align 4, !tbaa !13
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %111, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !58
  %116 = load i32, ptr %2, align 4, !tbaa !13
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %115, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !26
  %120 = load i32, ptr %1, align 4, !tbaa !13
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, ptr %119, i64 %121
  store i32 %108, ptr %122, align 4, !tbaa !13
  %123 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %124 = getelementptr inbounds ptr, ptr %123, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !33
  %126 = load i32, ptr %4, align 4, !tbaa !13
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, ptr %125, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !35
  %130 = sext i16 %129 to i32
  %131 = load i32, ptr %5, align 4, !tbaa !13
  %132 = shl i32 %130, %131
  %133 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %134 = getelementptr inbounds ptr, ptr %133, i64 0
  %135 = load ptr, ptr %134, align 8, !tbaa !15
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !57
  %138 = load i32, ptr %3, align 4, !tbaa !13
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %137, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !58
  %142 = load i32, ptr %2, align 4, !tbaa !13
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %141, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !26
  %146 = load i32, ptr %1, align 4, !tbaa !13
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, ptr %145, i64 %147
  store i32 %132, ptr %148, align 4, !tbaa !13
  %149 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8, !tbaa !33
  %152 = load i32, ptr %4, align 4, !tbaa !13
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, ptr %151, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !35
  %156 = sext i16 %155 to i32
  %157 = load i32, ptr %5, align 4, !tbaa !13
  %158 = shl i32 %156, %157
  %159 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %160 = getelementptr inbounds ptr, ptr %159, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !15
  %162 = getelementptr inbounds ptr, ptr %161, i64 1
  %163 = load ptr, ptr %162, align 8, !tbaa !57
  %164 = load i32, ptr %3, align 4, !tbaa !13
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds ptr, ptr %163, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !58
  %168 = load i32, ptr %2, align 4, !tbaa !13
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds ptr, ptr %167, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !26
  %172 = load i32, ptr %1, align 4, !tbaa !13
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, ptr %171, i64 %173
  store i32 %158, ptr %174, align 4, !tbaa !13
  br label %333

175:                                              ; preds = %91
  %176 = load i32, ptr %6, align 4, !tbaa !13
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %255

178:                                              ; preds = %175
  %179 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %180 = getelementptr inbounds ptr, ptr %179, i64 6
  %181 = load ptr, ptr %180, align 8, !tbaa !33
  %182 = load i32, ptr %4, align 4, !tbaa !13
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, ptr %181, i64 %183
  %185 = load i16, ptr %184, align 2, !tbaa !35
  %186 = sext i16 %185 to i32
  %187 = load i32, ptr %5, align 4, !tbaa !13
  %188 = shl i32 %186, %187
  %189 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !15
  %190 = getelementptr inbounds ptr, ptr %189, i64 1
  %191 = load ptr, ptr %190, align 8, !tbaa !57
  %192 = load i32, ptr %3, align 4, !tbaa !13
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %191, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !58
  %196 = load i32, ptr %2, align 4, !tbaa !13
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds ptr, ptr %195, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !26
  %200 = load i32, ptr %1, align 4, !tbaa !13
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, ptr %199, i64 %201
  store i32 %188, ptr %202, align 4, !tbaa !13
  %203 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %204 = getelementptr inbounds ptr, ptr %203, i64 7
  %205 = load ptr, ptr %204, align 8, !tbaa !33
  %206 = load i32, ptr %4, align 4, !tbaa !13
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i16, ptr %205, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !35
  %210 = sext i16 %209 to i32
  %211 = load i32, ptr %5, align 4, !tbaa !13
  %212 = shl i32 %210, %211
  %213 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %214 = getelementptr inbounds ptr, ptr %213, i64 0
  %215 = load ptr, ptr %214, align 8, !tbaa !15
  %216 = getelementptr inbounds ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8, !tbaa !57
  %218 = load i32, ptr %3, align 4, !tbaa !13
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds ptr, ptr %217, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !58
  %222 = load i32, ptr %2, align 4, !tbaa !13
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds ptr, ptr %221, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !26
  %226 = load i32, ptr %1, align 4, !tbaa !13
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, ptr %225, i64 %227
  store i32 %212, ptr %228, align 4, !tbaa !13
  %229 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %230 = getelementptr inbounds ptr, ptr %229, i64 8
  %231 = load ptr, ptr %230, align 8, !tbaa !33
  %232 = load i32, ptr %4, align 4, !tbaa !13
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i16, ptr %231, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !35
  %236 = sext i16 %235 to i32
  %237 = load i32, ptr %5, align 4, !tbaa !13
  %238 = shl i32 %236, %237
  %239 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %240 = getelementptr inbounds ptr, ptr %239, i64 1
  %241 = load ptr, ptr %240, align 8, !tbaa !15
  %242 = getelementptr inbounds ptr, ptr %241, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !57
  %244 = load i32, ptr %3, align 4, !tbaa !13
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds ptr, ptr %243, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !58
  %248 = load i32, ptr %2, align 4, !tbaa !13
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds ptr, ptr %247, i64 %249
  %251 = load ptr, ptr %250, align 8, !tbaa !26
  %252 = load i32, ptr %1, align 4, !tbaa !13
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, ptr %251, i64 %253
  store i32 %238, ptr %254, align 4, !tbaa !13
  br label %332

255:                                              ; preds = %175
  %256 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %257 = getelementptr inbounds ptr, ptr %256, i64 3
  %258 = load ptr, ptr %257, align 8, !tbaa !33
  %259 = load i32, ptr %4, align 4, !tbaa !13
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i16, ptr %258, i64 %260
  %262 = load i16, ptr %261, align 2, !tbaa !35
  %263 = sext i16 %262 to i32
  %264 = load i32, ptr %5, align 4, !tbaa !13
  %265 = shl i32 %263, %264
  %266 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !15
  %267 = getelementptr inbounds ptr, ptr %266, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !57
  %269 = load i32, ptr %3, align 4, !tbaa !13
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds ptr, ptr %268, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !58
  %273 = load i32, ptr %2, align 4, !tbaa !13
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %272, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !26
  %277 = load i32, ptr %1, align 4, !tbaa !13
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, ptr %276, i64 %278
  store i32 %265, ptr %279, align 4, !tbaa !13
  %280 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %281 = getelementptr inbounds ptr, ptr %280, i64 4
  %282 = load ptr, ptr %281, align 8, !tbaa !33
  %283 = load i32, ptr %4, align 4, !tbaa !13
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i16, ptr %282, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !35
  %287 = sext i16 %286 to i32
  %288 = load i32, ptr %5, align 4, !tbaa !13
  %289 = shl i32 %287, %288
  %290 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %291 = getelementptr inbounds ptr, ptr %290, i64 0
  %292 = load ptr, ptr %291, align 8, !tbaa !15
  %293 = getelementptr inbounds ptr, ptr %292, i64 1
  %294 = load ptr, ptr %293, align 8, !tbaa !57
  %295 = load i32, ptr %3, align 4, !tbaa !13
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %294, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !58
  %299 = load i32, ptr %2, align 4, !tbaa !13
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds ptr, ptr %298, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !26
  %303 = load i32, ptr %1, align 4, !tbaa !13
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, ptr %302, i64 %304
  store i32 %289, ptr %305, align 4, !tbaa !13
  %306 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %307 = getelementptr inbounds ptr, ptr %306, i64 5
  %308 = load ptr, ptr %307, align 8, !tbaa !33
  %309 = load i32, ptr %4, align 4, !tbaa !13
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i16, ptr %308, i64 %310
  %312 = load i16, ptr %311, align 2, !tbaa !35
  %313 = sext i16 %312 to i32
  %314 = load i32, ptr %5, align 4, !tbaa !13
  %315 = shl i32 %313, %314
  %316 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %317 = getelementptr inbounds ptr, ptr %316, i64 1
  %318 = load ptr, ptr %317, align 8, !tbaa !15
  %319 = getelementptr inbounds ptr, ptr %318, i64 1
  %320 = load ptr, ptr %319, align 8, !tbaa !57
  %321 = load i32, ptr %3, align 4, !tbaa !13
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds ptr, ptr %320, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !58
  %325 = load i32, ptr %2, align 4, !tbaa !13
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %324, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !26
  %329 = load i32, ptr %1, align 4, !tbaa !13
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, ptr %328, i64 %330
  store i32 %315, ptr %331, align 4, !tbaa !13
  br label %332

332:                                              ; preds = %255, %178
  br label %333

333:                                              ; preds = %332, %98
  %334 = load i32, ptr %6, align 4, !tbaa !13
  %335 = icmp eq i32 %334, 1
  br i1 %335, label %336, label %413

336:                                              ; preds = %333
  %337 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %338 = getelementptr inbounds ptr, ptr %337, i64 12
  %339 = load ptr, ptr %338, align 8, !tbaa !33
  %340 = load i32, ptr %4, align 4, !tbaa !13
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i16, ptr %339, i64 %341
  %343 = load i16, ptr %342, align 2, !tbaa !35
  %344 = sext i16 %343 to i32
  %345 = load i32, ptr %5, align 4, !tbaa !13
  %346 = shl i32 %344, %345
  %347 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !15
  %348 = getelementptr inbounds ptr, ptr %347, i64 0
  %349 = load ptr, ptr %348, align 8, !tbaa !57
  %350 = load i32, ptr %3, align 4, !tbaa !13
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds ptr, ptr %349, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !58
  %354 = load i32, ptr %2, align 4, !tbaa !13
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds ptr, ptr %353, i64 %355
  %357 = load ptr, ptr %356, align 8, !tbaa !26
  %358 = load i32, ptr %1, align 4, !tbaa !13
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, ptr %357, i64 %359
  store i32 %346, ptr %360, align 4, !tbaa !13
  %361 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %362 = getelementptr inbounds ptr, ptr %361, i64 13
  %363 = load ptr, ptr %362, align 8, !tbaa !33
  %364 = load i32, ptr %4, align 4, !tbaa !13
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i16, ptr %363, i64 %365
  %367 = load i16, ptr %366, align 2, !tbaa !35
  %368 = sext i16 %367 to i32
  %369 = load i32, ptr %5, align 4, !tbaa !13
  %370 = shl i32 %368, %369
  %371 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %372 = getelementptr inbounds ptr, ptr %371, i64 0
  %373 = load ptr, ptr %372, align 8, !tbaa !15
  %374 = getelementptr inbounds ptr, ptr %373, i64 0
  %375 = load ptr, ptr %374, align 8, !tbaa !57
  %376 = load i32, ptr %3, align 4, !tbaa !13
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds ptr, ptr %375, i64 %377
  %379 = load ptr, ptr %378, align 8, !tbaa !58
  %380 = load i32, ptr %2, align 4, !tbaa !13
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds ptr, ptr %379, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !26
  %384 = load i32, ptr %1, align 4, !tbaa !13
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, ptr %383, i64 %385
  store i32 %370, ptr %386, align 4, !tbaa !13
  %387 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %388 = getelementptr inbounds ptr, ptr %387, i64 14
  %389 = load ptr, ptr %388, align 8, !tbaa !33
  %390 = load i32, ptr %4, align 4, !tbaa !13
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, ptr %389, i64 %391
  %393 = load i16, ptr %392, align 2, !tbaa !35
  %394 = sext i16 %393 to i32
  %395 = load i32, ptr %5, align 4, !tbaa !13
  %396 = shl i32 %394, %395
  %397 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %398 = getelementptr inbounds ptr, ptr %397, i64 1
  %399 = load ptr, ptr %398, align 8, !tbaa !15
  %400 = getelementptr inbounds ptr, ptr %399, i64 0
  %401 = load ptr, ptr %400, align 8, !tbaa !57
  %402 = load i32, ptr %3, align 4, !tbaa !13
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds ptr, ptr %401, i64 %403
  %405 = load ptr, ptr %404, align 8, !tbaa !58
  %406 = load i32, ptr %2, align 4, !tbaa !13
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds ptr, ptr %405, i64 %407
  %409 = load ptr, ptr %408, align 8, !tbaa !26
  %410 = load i32, ptr %1, align 4, !tbaa !13
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i32, ptr %409, i64 %411
  store i32 %396, ptr %412, align 4, !tbaa !13
  br label %490

413:                                              ; preds = %333
  %414 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %415 = getelementptr inbounds ptr, ptr %414, i64 9
  %416 = load ptr, ptr %415, align 8, !tbaa !33
  %417 = load i32, ptr %4, align 4, !tbaa !13
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i16, ptr %416, i64 %418
  %420 = load i16, ptr %419, align 2, !tbaa !35
  %421 = sext i16 %420 to i32
  %422 = load i32, ptr %5, align 4, !tbaa !13
  %423 = shl i32 %421, %422
  %424 = load ptr, ptr @LevelOffset4x4Luma, align 8, !tbaa !15
  %425 = getelementptr inbounds ptr, ptr %424, i64 0
  %426 = load ptr, ptr %425, align 8, !tbaa !57
  %427 = load i32, ptr %3, align 4, !tbaa !13
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds ptr, ptr %426, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !58
  %431 = load i32, ptr %2, align 4, !tbaa !13
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds ptr, ptr %430, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !26
  %435 = load i32, ptr %1, align 4, !tbaa !13
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, ptr %434, i64 %436
  store i32 %423, ptr %437, align 4, !tbaa !13
  %438 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %439 = getelementptr inbounds ptr, ptr %438, i64 10
  %440 = load ptr, ptr %439, align 8, !tbaa !33
  %441 = load i32, ptr %4, align 4, !tbaa !13
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i16, ptr %440, i64 %442
  %444 = load i16, ptr %443, align 2, !tbaa !35
  %445 = sext i16 %444 to i32
  %446 = load i32, ptr %5, align 4, !tbaa !13
  %447 = shl i32 %445, %446
  %448 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %449 = getelementptr inbounds ptr, ptr %448, i64 0
  %450 = load ptr, ptr %449, align 8, !tbaa !15
  %451 = getelementptr inbounds ptr, ptr %450, i64 0
  %452 = load ptr, ptr %451, align 8, !tbaa !57
  %453 = load i32, ptr %3, align 4, !tbaa !13
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds ptr, ptr %452, i64 %454
  %456 = load ptr, ptr %455, align 8, !tbaa !58
  %457 = load i32, ptr %2, align 4, !tbaa !13
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds ptr, ptr %456, i64 %458
  %460 = load ptr, ptr %459, align 8, !tbaa !26
  %461 = load i32, ptr %1, align 4, !tbaa !13
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, ptr %460, i64 %462
  store i32 %447, ptr %463, align 4, !tbaa !13
  %464 = load ptr, ptr @OffsetList4x4, align 8, !tbaa !23
  %465 = getelementptr inbounds ptr, ptr %464, i64 11
  %466 = load ptr, ptr %465, align 8, !tbaa !33
  %467 = load i32, ptr %4, align 4, !tbaa !13
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i16, ptr %466, i64 %468
  %470 = load i16, ptr %469, align 2, !tbaa !35
  %471 = sext i16 %470 to i32
  %472 = load i32, ptr %5, align 4, !tbaa !13
  %473 = shl i32 %471, %472
  %474 = load ptr, ptr @LevelOffset4x4Chroma, align 8, !tbaa !20
  %475 = getelementptr inbounds ptr, ptr %474, i64 1
  %476 = load ptr, ptr %475, align 8, !tbaa !15
  %477 = getelementptr inbounds ptr, ptr %476, i64 0
  %478 = load ptr, ptr %477, align 8, !tbaa !57
  %479 = load i32, ptr %3, align 4, !tbaa !13
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds ptr, ptr %478, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !58
  %483 = load i32, ptr %2, align 4, !tbaa !13
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds ptr, ptr %482, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !26
  %487 = load i32, ptr %1, align 4, !tbaa !13
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i32, ptr %486, i64 %488
  store i32 %473, ptr %489, align 4, !tbaa !13
  br label %490

490:                                              ; preds = %413, %336
  br label %491

491:                                              ; preds = %490
  %492 = load i32, ptr %1, align 4, !tbaa !13
  %493 = add nsw i32 %492, 1
  store i32 %493, ptr %1, align 4, !tbaa !13
  br label %88, !llvm.loop !60

494:                                              ; preds = %88
  br label %495

495:                                              ; preds = %494
  %496 = load i32, ptr %2, align 4, !tbaa !13
  %497 = add nsw i32 %496, 1
  store i32 %497, ptr %2, align 4, !tbaa !13
  br label %84, !llvm.loop !61

498:                                              ; preds = %84
  br label %499

499:                                              ; preds = %498
  %500 = load i32, ptr %3, align 4, !tbaa !13
  %501 = add nsw i32 %500, 1
  store i32 %501, ptr %3, align 4, !tbaa !13
  br label %74, !llvm.loop !62

502:                                              ; preds = %74
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

; Function Attrs: nounwind
define dso_local void @CalculateOffset8Param() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #6
  %8 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !26
  %9 = load ptr, ptr @img, align 8, !tbaa !3
  %10 = getelementptr inbounds nuw %struct.ImageParameters, ptr %9, i32 0, i32 144
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = add nsw i32 51, %11
  %13 = sub nsw i32 %12, 0
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %8, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !13
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %6, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  %18 = load ptr, ptr @qp_per_matrix, align 8, !tbaa !26
  %19 = load ptr, ptr @img, align 8, !tbaa !3
  %20 = getelementptr inbounds nuw %struct.ImageParameters, ptr %19, i32 0, i32 145
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = add nsw i32 51, %21
  %23 = sub nsw i32 %22, 0
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %18, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !13
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %7, align 4, !tbaa !13
  store i32 0, ptr %3, align 4, !tbaa !13
  br label %28

28:                                               ; preds = %199, %0
  %29 = load i32, ptr %3, align 4, !tbaa !13
  %30 = load i32, ptr %6, align 4, !tbaa !13
  %31 = load i32, ptr %7, align 4, !tbaa !13
  %32 = call signext i32 @imax(i32 noundef signext %30, i32 noundef signext %31)
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %202

34:                                               ; preds = %28
  %35 = load i32, ptr %3, align 4, !tbaa !13
  %36 = add nsw i32 16, %35
  %37 = sub nsw i32 %36, 11
  store i32 %37, ptr %5, align 4, !tbaa !13
  store i32 0, ptr %2, align 4, !tbaa !13
  br label %38

38:                                               ; preds = %195, %34
  %39 = load i32, ptr %2, align 4, !tbaa !13
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %198

41:                                               ; preds = %38
  store i32 0, ptr %1, align 4, !tbaa !13
  br label %42

42:                                               ; preds = %191, %41
  %43 = load i32, ptr %1, align 4, !tbaa !13
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %194

45:                                               ; preds = %42
  %46 = load i32, ptr %2, align 4, !tbaa !13
  %47 = shl i32 %46, 3
  %48 = load i32, ptr %1, align 4, !tbaa !13
  %49 = add nsw i32 %47, %48
  store i32 %49, ptr %4, align 4, !tbaa !13
  %50 = load ptr, ptr @img, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.ImageParameters, ptr %50, i32 0, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !43
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %79

54:                                               ; preds = %45
  %55 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %56 = getelementptr inbounds ptr, ptr %55, i64 0
  %57 = load ptr, ptr %56, align 8, !tbaa !33
  %58 = load i32, ptr %4, align 4, !tbaa !13
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !35
  %62 = sext i16 %61 to i32
  %63 = load i32, ptr %5, align 4, !tbaa !13
  %64 = shl i32 %62, %63
  %65 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !15
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !57
  %68 = load i32, ptr %3, align 4, !tbaa !13
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !58
  %72 = load i32, ptr %2, align 4, !tbaa !13
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !26
  %76 = load i32, ptr %1, align 4, !tbaa !13
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %75, i64 %77
  store i32 %64, ptr %78, align 4, !tbaa !13
  br label %135

79:                                               ; preds = %45
  %80 = load ptr, ptr @img, align 8, !tbaa !3
  %81 = getelementptr inbounds nuw %struct.ImageParameters, ptr %80, i32 0, i32 5
  %82 = load i32, ptr %81, align 4, !tbaa !43
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %86 = getelementptr inbounds ptr, ptr %85, i64 2
  %87 = load ptr, ptr %86, align 8, !tbaa !33
  %88 = load i32, ptr %4, align 4, !tbaa !13
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %87, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !35
  %92 = sext i16 %91 to i32
  %93 = load i32, ptr %5, align 4, !tbaa !13
  %94 = shl i32 %92, %93
  %95 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !15
  %96 = getelementptr inbounds ptr, ptr %95, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !57
  %98 = load i32, ptr %3, align 4, !tbaa !13
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !58
  %102 = load i32, ptr %2, align 4, !tbaa !13
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !26
  %106 = load i32, ptr %1, align 4, !tbaa !13
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, ptr %105, i64 %107
  store i32 %94, ptr %108, align 4, !tbaa !13
  br label %134

109:                                              ; preds = %79
  %110 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %111 = getelementptr inbounds ptr, ptr %110, i64 1
  %112 = load ptr, ptr %111, align 8, !tbaa !33
  %113 = load i32, ptr %4, align 4, !tbaa !13
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, ptr %112, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !35
  %117 = sext i16 %116 to i32
  %118 = load i32, ptr %5, align 4, !tbaa !13
  %119 = shl i32 %117, %118
  %120 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !15
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !57
  %123 = load i32, ptr %3, align 4, !tbaa !13
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds ptr, ptr %122, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !58
  %127 = load i32, ptr %2, align 4, !tbaa !13
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %126, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !26
  %131 = load i32, ptr %1, align 4, !tbaa !13
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %130, i64 %132
  store i32 %119, ptr %133, align 4, !tbaa !13
  br label %134

134:                                              ; preds = %109, %84
  br label %135

135:                                              ; preds = %134, %54
  %136 = load ptr, ptr @img, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.ImageParameters, ptr %136, i32 0, i32 5
  %138 = load i32, ptr %137, align 4, !tbaa !43
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %142 = getelementptr inbounds ptr, ptr %141, i64 4
  %143 = load ptr, ptr %142, align 8, !tbaa !33
  %144 = load i32, ptr %4, align 4, !tbaa !13
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i16, ptr %143, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !35
  %148 = sext i16 %147 to i32
  %149 = load i32, ptr %5, align 4, !tbaa !13
  %150 = shl i32 %148, %149
  %151 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !15
  %152 = getelementptr inbounds ptr, ptr %151, i64 0
  %153 = load ptr, ptr %152, align 8, !tbaa !57
  %154 = load i32, ptr %3, align 4, !tbaa !13
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !58
  %158 = load i32, ptr %2, align 4, !tbaa !13
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !26
  %162 = load i32, ptr %1, align 4, !tbaa !13
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, ptr %161, i64 %163
  store i32 %150, ptr %164, align 4, !tbaa !13
  br label %190

165:                                              ; preds = %135
  %166 = load ptr, ptr @OffsetList8x8, align 8, !tbaa !23
  %167 = getelementptr inbounds ptr, ptr %166, i64 3
  %168 = load ptr, ptr %167, align 8, !tbaa !33
  %169 = load i32, ptr %4, align 4, !tbaa !13
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, ptr %168, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !35
  %173 = sext i16 %172 to i32
  %174 = load i32, ptr %5, align 4, !tbaa !13
  %175 = shl i32 %173, %174
  %176 = load ptr, ptr @LevelOffset8x8Luma, align 8, !tbaa !15
  %177 = getelementptr inbounds ptr, ptr %176, i64 0
  %178 = load ptr, ptr %177, align 8, !tbaa !57
  %179 = load i32, ptr %3, align 4, !tbaa !13
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds ptr, ptr %178, i64 %180
  %182 = load ptr, ptr %181, align 8, !tbaa !58
  %183 = load i32, ptr %2, align 4, !tbaa !13
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %182, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !26
  %187 = load i32, ptr %1, align 4, !tbaa !13
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, ptr %186, i64 %188
  store i32 %175, ptr %189, align 4, !tbaa !13
  br label %190

190:                                              ; preds = %165, %140
  br label %191

191:                                              ; preds = %190
  %192 = load i32, ptr %1, align 4, !tbaa !13
  %193 = add nsw i32 %192, 1
  store i32 %193, ptr %1, align 4, !tbaa !13
  br label %42, !llvm.loop !63

194:                                              ; preds = %42
  br label %195

195:                                              ; preds = %194
  %196 = load i32, ptr %2, align 4, !tbaa !13
  %197 = add nsw i32 %196, 1
  store i32 %197, ptr %2, align 4, !tbaa !13
  br label %38, !llvm.loop !64

198:                                              ; preds = %38
  br label %199

199:                                              ; preds = %198
  %200 = load i32, ptr %3, align 4, !tbaa !13
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %3, align 4, !tbaa !13
  br label %28, !llvm.loop !65

202:                                              ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #6
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 5256}
!8 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !9, i64 1560, !9, i64 1564, !9, i64 1568, !9, i64 1572, !9, i64 1576, !9, i64 1580, !5, i64 1584, !9, i64 2084, !9, i64 2088, !9, i64 2092, !9, i64 2096, !9, i64 2100, !9, i64 2104, !9, i64 2108, !9, i64 2112, !9, i64 2116, !9, i64 2120, !9, i64 2124, !9, i64 2128, !9, i64 2132, !9, i64 2136, !9, i64 2140, !9, i64 2144, !9, i64 2148, !9, i64 2152, !9, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !9, i64 2928, !9, i64 2932, !9, i64 2936, !9, i64 2940, !9, i64 2944, !9, i64 2948, !9, i64 2952, !9, i64 2956, !9, i64 2960, !9, i64 2964, !9, i64 2968, !9, i64 2972, !5, i64 2976, !9, i64 4000, !9, i64 4004, !9, i64 4008, !9, i64 4012, !9, i64 4016, !9, i64 4020, !9, i64 4024, !9, i64 4028, !9, i64 4032, !9, i64 4036, !9, i64 4040, !9, i64 4044, !9, i64 4048, !9, i64 4052, !9, i64 4056, !9, i64 4060, !9, i64 4064, !9, i64 4068, !9, i64 4072, !9, i64 4076, !10, i64 4080, !9, i64 4088, !9, i64 4092, !9, i64 4096, !9, i64 4100, !9, i64 4104, !9, i64 4108, !9, i64 4112, !9, i64 4116, !9, i64 4120, !9, i64 4124, !9, i64 4128, !9, i64 4132, !9, i64 4136, !9, i64 4140, !9, i64 4144, !9, i64 4148, !9, i64 4152, !9, i64 4156, !9, i64 4160, !9, i64 4164, !9, i64 4168, !9, i64 4172, !9, i64 4176, !9, i64 4180, !9, i64 4184, !9, i64 4188, !5, i64 4192, !5, i64 4448, !9, i64 4704, !9, i64 4708, !9, i64 4712, !9, i64 4716, !9, i64 4720, !9, i64 4724, !9, i64 4728, !9, i64 4732, !9, i64 4736, !9, i64 4740, !9, i64 4744, !9, i64 4748, !9, i64 4752, !9, i64 4756, !9, i64 4760, !9, i64 4764, !9, i64 4768, !9, i64 4772, !5, i64 4776, !9, i64 5032, !9, i64 5036, !11, i64 5040, !11, i64 5048, !12, i64 5056, !11, i64 5064, !9, i64 5072, !9, i64 5076, !9, i64 5080, !9, i64 5084, !9, i64 5088, !9, i64 5092, !9, i64 5096, !9, i64 5100, !9, i64 5104, !9, i64 5108, !9, i64 5112, !9, i64 5116, !9, i64 5120, !9, i64 5124, !9, i64 5128, !9, i64 5132, !9, i64 5136, !10, i64 5144, !10, i64 5152, !10, i64 5160, !5, i64 5168, !9, i64 5208, !5, i64 5212, !9, i64 5244, !9, i64 5248, !9, i64 5252, !9, i64 5256, !9, i64 5260, !9, i64 5264, !9, i64 5268, !9, i64 5272, !9, i64 5276, !9, i64 5280, !9, i64 5284, !9, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !9, i64 5648, !9, i64 5652, !9, i64 5656, !9, i64 5660, !5, i64 5664, !5, i64 5704, !9, i64 5744, !9, i64 5748, !9, i64 5752, !9, i64 5756, !9, i64 5760, !9, i64 5764, !9, i64 5768, !9, i64 5772, !9, i64 5776, !5, i64 5780, !9, i64 5792}
!9 = !{!"int", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!"p1 int", !4, i64 0}
!12 = !{!"p1 omnipotent char", !4, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!8, !9, i64 5260}
!15 = !{!16, !16, i64 0}
!16 = !{!"p4 int", !17, i64 0}
!17 = !{!"any p4 pointer", !18, i64 0}
!18 = !{!"any p3 pointer", !19, i64 0}
!19 = !{!"any p2 pointer", !4, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p5 int", !22, i64 0}
!22 = !{!"any p5 pointer", !17, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"p2 short", !19, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!11, !11, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!5, !5, i64 0}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 short", !4, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"short", !5, i64 0}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = !{!8, !9, i64 5648}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = !{!44, !9, i64 20}
!44 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !45, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !46, i64 128, !46, i64 136, !9, i64 144, !47, i64 152, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !16, i64 14160, !47, i64 14168, !47, i64 14176, !47, i64 14184, !16, i64 14192, !16, i64 14200, !4, i64 14208, !4, i64 14216, !48, i64 14224, !11, i64 14232, !11, i64 14240, !9, i64 14248, !9, i64 14252, !9, i64 14256, !9, i64 14260, !5, i64 14264, !9, i64 14328, !9, i64 14332, !9, i64 14336, !9, i64 14340, !9, i64 14344, !10, i64 14352, !9, i64 14360, !9, i64 14364, !9, i64 14368, !9, i64 14372, !49, i64 14376, !49, i64 14384, !49, i64 14392, !49, i64 14400, !5, i64 14408, !9, i64 14440, !9, i64 14444, !9, i64 14448, !9, i64 14452, !9, i64 14456, !9, i64 14460, !9, i64 14464, !9, i64 14468, !5, i64 14472, !9, i64 15240, !9, i64 15244, !9, i64 15248, !9, i64 15252, !9, i64 15256, !9, i64 15260, !9, i64 15264, !9, i64 15268, !9, i64 15272, !9, i64 15276, !9, i64 15280, !9, i64 15284, !9, i64 15288, !5, i64 15292, !9, i64 15296, !9, i64 15300, !5, i64 15304, !9, i64 15312, !9, i64 15316, !9, i64 15320, !9, i64 15324, !9, i64 15328, !9, i64 15332, !9, i64 15336, !9, i64 15340, !9, i64 15344, !9, i64 15348, !9, i64 15352, !9, i64 15356, !9, i64 15360, !9, i64 15364, !9, i64 15368, !9, i64 15372, !51, i64 15376, !9, i64 15384, !9, i64 15388, !9, i64 15392, !9, i64 15396, !9, i64 15400, !9, i64 15404, !9, i64 15408, !9, i64 15412, !9, i64 15416, !9, i64 15420, !9, i64 15424, !9, i64 15428, !9, i64 15432, !9, i64 15436, !9, i64 15440, !9, i64 15444, !9, i64 15448, !9, i64 15452, !9, i64 15456, !9, i64 15460, !9, i64 15464, !9, i64 15468, !9, i64 15472, !52, i64 15480, !53, i64 15488, !47, i64 15496, !52, i64 15504, !9, i64 15512, !9, i64 15516, !9, i64 15520, !9, i64 15524, !9, i64 15528, !9, i64 15532, !9, i64 15536, !9, i64 15540, !9, i64 15544, !9, i64 15548, !5, i64 15552, !5, i64 15576, !9, i64 15584, !9, i64 15588, !36, i64 15592, !9, i64 15596, !9, i64 15600, !9, i64 15604, !9, i64 15608, !9, i64 15612}
!45 = !{!"float", !5, i64 0}
!46 = !{!"p2 omnipotent char", !19, i64 0}
!47 = !{!"p3 int", !18, i64 0}
!48 = !{!"p1 _ZTS10macroblock", !4, i64 0}
!49 = !{!"p6 short", !50, i64 0}
!50 = !{!"any p6 pointer", !22, i64 0}
!51 = !{!"p1 _ZTS18DecRefPicMarking_s", !4, i64 0}
!52 = !{!"p2 double", !19, i64 0}
!53 = !{!"p3 double", !18, i64 0}
!54 = !{!44, !9, i64 15452}
!55 = !{!44, !9, i64 15456}
!56 = !{!44, !9, i64 15360}
!57 = !{!47, !47, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"p2 int", !19, i64 0}
!60 = distinct !{!60, !28}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28}
!65 = distinct !{!65, !28}
