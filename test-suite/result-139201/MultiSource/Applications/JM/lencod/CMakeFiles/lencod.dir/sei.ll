; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/sei.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/sei.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.sei_struct = type { i32, i32, i8, ptr }
%struct.spare_picture_struct = type { i32, i32, i32, ptr }
%struct.subseq_information_struct = type { i32, i32, i32, i32, i32, ptr }
%struct.subseq_layer_information_struct = type { [2 x i16], [2 x i16], [8 x i8], i32, i32 }
%struct.subseq_char_information_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32], ptr, i32 }
%struct.scene_information_struct = type { i32, i32, i32, ptr, i32 }
%struct.panscanrect_information_struct = type { i32, i32, i32, i32, i32, ptr, i32 }
%struct.user_data_unregistered_information_struct = type { ptr, i32, ptr, i32 }
%struct.user_data_registered_itu_t_t35_information_struct = type { ptr, i32, i32, i32, ptr, i32 }
%struct.recovery_point_information_struct = type { i32, i8, i8, i8, ptr, i32 }
%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bufferingperiod_information_struct = type { i32, [32 x i32], [32 x i32], ptr, i32 }
%struct.pictiming_information_struct = type { i32, i32, i32, [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, ptr, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, ptr }

@seiHasTemporal_reference = dso_local global i32 0, align 4
@seiHasClock_timestamp = dso_local global i32 0, align 4
@seiHasPanscan_rect = dso_local global i32 0, align 4
@seiHasBuffering_period = dso_local global i32 0, align 4
@seiHasHrd_picture = dso_local global i32 0, align 4
@seiHasFiller_payload = dso_local global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35 = dso_local global i32 0, align 4
@seiHasUser_data_unregistered = dso_local global i32 0, align 4
@seiHasRandom_access_point = dso_local global i32 0, align 4
@seiHasRef_pic_buffer_management_repetition = dso_local global i32 0, align 4
@seiHasSpare_picture = dso_local global i32 0, align 4
@seiHasSceneInformation = dso_local global i32 0, align 4
@seiHasSubseq_information = dso_local global i32 0, align 4
@seiHasSubseq_layer_characteristics = dso_local global i32 0, align 4
@seiHasSubseq_characteristics = dso_local global i32 0, align 4
@sei_message = common dso_local global [2 x %struct.sei_struct] zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"InitSEIMessages: sei_message[i].data\00", align 1
@seiSparePicturePayload = common dso_local global %struct.spare_picture_struct zeroinitializer, align 8
@input = external global ptr, align 8
@img = external global ptr, align 8
@seiHasSubseqInfo = dso_local global i32 0, align 4
@seiHasSubseqLayerInfo = dso_local global i32 0, align 4
@seiHasSubseqChar = dso_local global i32 0, align 4
@seiHasPanScanRectInfo = dso_local global i32 0, align 4
@seiHasUser_data_unregistered_info = common dso_local global i32 0, align 4
@seiHasUser_data_registered_itu_t_t35_info = common dso_local global i32 0, align 4
@seiHasRecoveryPoint_info = common dso_local global i32 0, align 4
@seiHasSparePicture = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"InitSparePicture: seiSparePicturePayload.data\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"InitSparePicture: seiSparePicturePayload.data->streamBuffer\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FinalizeSpareMBMap: dest\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"FinalizeSpareMBMap: dest->streamBuffer\00", align 1
@InitSubseqInfo.id = internal global i16 0, align 2
@seiSubseqInfo = common dso_local global [2 x %struct.subseq_information_struct] zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"InitSubseqInfo: seiSubseqInfo[currLayer].data->streamBuffer\00", align 1
@start_frame_no_in_this_IGOP = external global i32, align 4
@seiSubseqLayerInfo = common dso_local global %struct.subseq_layer_information_struct zeroinitializer, align 4
@seiSubseqChar = common dso_local global %struct.subseq_char_information_struct zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"InitSubseqChar: seiSubseqChar.data\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"InitSubseqChar: seiSubseqChar.data->streamBuffer\00", align 1
@seiSceneInformation = common dso_local global %struct.scene_information_struct zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [47 x i8] c"InitSceneInformation: seiSceneInformation.data\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"InitSceneInformation: seiSceneInformation.data->streamBuffer\00", align 1
@seiPanScanRectInfo = common dso_local global %struct.panscanrect_information_struct zeroinitializer, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"InitPanScanRectInfo: seiPanScanRectInfo.data->streamBuffer\00", align 1
@seiUser_data_unregistered = common dso_local global %struct.user_data_unregistered_information_struct zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data\00", align 1
@.str.14 = private unnamed_addr constant [73 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.data->streamBuffer\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"InitUser_data_unregistered: seiUser_data_unregistered.byte\00", align 1
@seiUser_data_registered_itu_t_t35 = common dso_local global %struct.user_data_registered_itu_t_t35_information_struct zeroinitializer, align 8
@.str.16 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data\00", align 1
@.str.17 = private unnamed_addr constant [81 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.data->streamBuffer\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"InitUser_data_unregistered: seiUser_data_registered_itu_t_t35.byte\00", align 1
@seiRecoveryPoint = common dso_local global %struct.recovery_point_information_struct zeroinitializer, align 8
@.str.19 = private unnamed_addr constant [39 x i8] c"InitRandomAccess: seiRandomAccess.data\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"InitRandomAccess: seiRandomAccess.data->streamBuffer\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"SEI: recovery_frame_cnt\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"SEI: exact_match_flag\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SEI: broken_link_flag\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"SEI: changing_slice_group_idc\00", align 1
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
@WriteNALU = common dso_local global ptr null, align 8
@seiHasBufferingPeriod_info = common dso_local global i32 0, align 4
@seiBufferingPeriod = common dso_local global %struct.bufferingperiod_information_struct zeroinitializer, align 8
@seiHasPicTiming_info = common dso_local global i32 0, align 4
@seiPicTiming = common dso_local global %struct.pictiming_information_struct zeroinitializer, align 8

; Function Attrs: nounwind
define dso_local void @InitSEIMessages() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %2

2:                                                ; preds = %24, %0
  %3 = load i32, ptr %1, align 4, !tbaa !3
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load i32, ptr %1, align 4, !tbaa !3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %8
  %10 = getelementptr inbounds nuw %struct.sei_struct, ptr %9, i32 0, i32 3
  store ptr %6, ptr %10, align 8, !tbaa !7
  %11 = load i32, ptr %1, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.sei_struct, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str)
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, ptr %1, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.sei_struct, ptr %21, i32 0, i32 2
  store i8 5, ptr %22, align 8, !tbaa !11
  %23 = load i32, ptr %1, align 4, !tbaa !3
  call void @clear_sei_message(i32 noundef signext %23)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %1, align 4, !tbaa !3
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %1, align 4, !tbaa !3
  br label %2, !llvm.loop !12

27:                                               ; preds = %2
  store ptr null, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  call void @InitSparePicture()
  call void @InitSubseqChar()
  %28 = load ptr, ptr @input, align 8, !tbaa !16
  %29 = getelementptr inbounds nuw %struct.InputParameters, ptr %28, i32 0, i32 129
  %30 = load i32, ptr %29, align 8, !tbaa !17
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @InitSubseqLayerInfo()
  br label %33

33:                                               ; preds = %32, %27
  call void @InitSceneInformation()
  call void @InitPanScanRectInfo()
  call void @InitUser_data_unregistered()
  call void @InitUser_data_registered_itu_t_t35()
  call void @InitRandomAccess()
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #2

declare void @no_mem_exit(ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @clear_sei_message(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %4
  %6 = getelementptr inbounds nuw %struct.sei_struct, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 65496, i1 false)
  %8 = load i32, ptr %2, align 4, !tbaa !3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %9
  %11 = getelementptr inbounds nuw %struct.sei_struct, ptr %10, i32 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !21
  %12 = load i32, ptr %2, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct.sei_struct, ptr %14, i32 0, i32 0
  store i32 0, ptr %15, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @CloseSEIMessages() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  %2 = load ptr, ptr @input, align 8, !tbaa !16
  %3 = getelementptr inbounds nuw %struct.InputParameters, ptr %2, i32 0, i32 129
  %4 = load i32, ptr %3, align 8, !tbaa !17
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @CloseSubseqLayerInfo()
  br label %7

7:                                                ; preds = %6, %0
  call void @CloseSubseqChar()
  call void @CloseSparePicture()
  call void @CloseSceneInformation()
  call void @ClosePanScanRectInfo()
  call void @CloseUser_data_unregistered()
  call void @CloseUser_data_registered_itu_t_t35()
  call void @CloseRandomAccess()
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %8

8:                                                ; preds = %29, %7
  %9 = load i32, ptr %1, align 4, !tbaa !3
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load i32, ptr %1, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct.sei_struct, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, ptr %1, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.sei_struct, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  call void @free(ptr noundef %23) #7
  br label %24

24:                                               ; preds = %18, %11
  %25 = load i32, ptr %1, align 4, !tbaa !3
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %26
  %28 = getelementptr inbounds nuw %struct.sei_struct, ptr %27, i32 0, i32 3
  store ptr null, ptr %28, align 8, !tbaa !7
  br label %29

29:                                               ; preds = %24
  %30 = load i32, ptr %1, align 4, !tbaa !3
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %1, align 4, !tbaa !3
  br label %8, !llvm.loop !23

32:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local signext i32 @HaveAggregationSEI() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, ptr getelementptr inbounds ([2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 1), align 8, !tbaa !22
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load ptr, ptr @img, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw %struct.ImageParameters, ptr %5, i32 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !24
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32 1, ptr %1, align 4
  br label %48

10:                                               ; preds = %4, %0
  %11 = load i32, ptr @seiHasSubseqInfo, align 4, !tbaa !3
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 1, ptr %1, align 4
  br label %48

14:                                               ; preds = %10
  %15 = load i32, ptr @seiHasSubseqLayerInfo, align 4, !tbaa !3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load ptr, ptr @img, align 8, !tbaa !16
  %19 = getelementptr inbounds nuw %struct.ImageParameters, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !41
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, ptr %1, align 4
  br label %48

23:                                               ; preds = %17, %14
  %24 = load i32, ptr @seiHasSubseqChar, align 4, !tbaa !3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, ptr %1, align 4
  br label %48

27:                                               ; preds = %23
  %28 = load i32, ptr @seiHasSceneInformation, align 4, !tbaa !3
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, ptr %1, align 4
  br label %48

31:                                               ; preds = %27
  %32 = load i32, ptr @seiHasPanScanRectInfo, align 4, !tbaa !3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, ptr %1, align 4
  br label %48

35:                                               ; preds = %31
  %36 = load i32, ptr @seiHasUser_data_unregistered_info, align 4, !tbaa !3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %1, align 4
  br label %48

39:                                               ; preds = %35
  %40 = load i32, ptr @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !3
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, ptr %1, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load i32, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !3
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, ptr %1, align 4
  br label %48

47:                                               ; preds = %43
  store i32 0, ptr %1, align 4
  br label %48

48:                                               ; preds = %47, %46, %42, %38, %34, %30, %26, %22, %13, %9
  %49 = load i32, ptr %1, align 4
  ret i32 %49
}

; Function Attrs: nounwind
define dso_local void @write_sei_message(i32 noundef signext %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !42
  store i32 %2, ptr %7, align 4, !tbaa !3
  store i32 %3, ptr %8, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  %12 = load i32, ptr %8, align 4, !tbaa !3
  store i32 %12, ptr %10, align 4, !tbaa !3
  %13 = load i32, ptr %7, align 4, !tbaa !3
  store i32 %13, ptr %11, align 4, !tbaa !3
  %14 = load i32, ptr %5, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct.sei_struct, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !21
  store i32 %18, ptr %9, align 4, !tbaa !3
  br label %19

19:                                               ; preds = %22, %4
  %20 = load i32, ptr %10, align 4, !tbaa !3
  %21 = icmp sgt i32 %20, 255
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load i32, ptr %5, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %24
  %26 = getelementptr inbounds nuw %struct.sei_struct, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = load i32, ptr %9, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %9, align 4, !tbaa !3
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, ptr %27, i64 %30
  store i8 -1, ptr %31, align 1, !tbaa !43
  %32 = load i32, ptr %10, align 4, !tbaa !3
  %33 = sub nsw i32 %32, 255
  store i32 %33, ptr %10, align 4, !tbaa !3
  br label %19, !llvm.loop !44

34:                                               ; preds = %19
  %35 = load i32, ptr %10, align 4, !tbaa !3
  %36 = trunc i32 %35 to i8
  %37 = load i32, ptr %5, align 4, !tbaa !3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %38
  %40 = getelementptr inbounds nuw %struct.sei_struct, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = load i32, ptr %9, align 4, !tbaa !3
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !3
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  store i8 %36, ptr %45, align 1, !tbaa !43
  br label %46

46:                                               ; preds = %49, %34
  %47 = load i32, ptr %11, align 4, !tbaa !3
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %49, label %61

49:                                               ; preds = %46
  %50 = load i32, ptr %5, align 4, !tbaa !3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %51
  %53 = getelementptr inbounds nuw %struct.sei_struct, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = load i32, ptr %9, align 4, !tbaa !3
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %9, align 4, !tbaa !3
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  store i8 -1, ptr %58, align 1, !tbaa !43
  %59 = load i32, ptr %11, align 4, !tbaa !3
  %60 = sub nsw i32 %59, 255
  store i32 %60, ptr %11, align 4, !tbaa !3
  br label %46, !llvm.loop !45

61:                                               ; preds = %46
  %62 = load i32, ptr %11, align 4, !tbaa !3
  %63 = trunc i32 %62 to i8
  %64 = load i32, ptr %5, align 4, !tbaa !3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %65
  %67 = getelementptr inbounds nuw %struct.sei_struct, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !7
  %69 = load i32, ptr %9, align 4, !tbaa !3
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %9, align 4, !tbaa !3
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, ptr %68, i64 %71
  store i8 %63, ptr %72, align 1, !tbaa !43
  %73 = load i32, ptr %5, align 4, !tbaa !3
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %74
  %76 = getelementptr inbounds nuw %struct.sei_struct, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !7
  %78 = load i32, ptr %9, align 4, !tbaa !3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %77, i64 %79
  %81 = load ptr, ptr %6, align 8, !tbaa !42
  %82 = load i32, ptr %7, align 4, !tbaa !3
  %83 = sext i32 %82 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %81, i64 %83, i1 false)
  %84 = load i32, ptr %7, align 4, !tbaa !3
  %85 = load i32, ptr %9, align 4, !tbaa !3
  %86 = add nsw i32 %85, %84
  store i32 %86, ptr %9, align 4, !tbaa !3
  %87 = load i32, ptr %9, align 4, !tbaa !3
  %88 = load i32, ptr %5, align 4, !tbaa !3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %89
  %91 = getelementptr inbounds nuw %struct.sei_struct, ptr %90, i32 0, i32 1
  store i32 %87, ptr %91, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local void @finalize_sei_message(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  %4 = load i32, ptr %2, align 4, !tbaa !3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %5
  %7 = getelementptr inbounds nuw %struct.sei_struct, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !21
  store i32 %8, ptr %3, align 4, !tbaa !3
  %9 = load i32, ptr %2, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %10
  %12 = getelementptr inbounds nuw %struct.sei_struct, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = load i32, ptr %3, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  store i8 -128, ptr %16, align 1, !tbaa !43
  %17 = load i32, ptr %2, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %18
  %20 = getelementptr inbounds nuw %struct.sei_struct, ptr %19, i32 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !21
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !21
  %23 = load i32, ptr %2, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x %struct.sei_struct], ptr @sei_message, i64 0, i64 %24
  %26 = getelementptr inbounds nuw %struct.sei_struct, ptr %25, i32 0, i32 0
  store i32 1, ptr %26, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
define dso_local void @AppendTmpbits2Buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !16
  store ptr %1, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %9

9:                                                ; preds = %80, %2
  %10 = load i32, ptr %5, align 4, !tbaa !3
  %11 = load ptr, ptr %4, align 8, !tbaa !16
  %12 = getelementptr inbounds nuw %struct.Bitstream, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 8, !tbaa !46
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %83

15:                                               ; preds = %9
  store i8 -128, ptr %7, align 1, !tbaa !43
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %16

16:                                               ; preds = %76, %15
  %17 = load i32, ptr %6, align 4, !tbaa !3
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !16
  %21 = getelementptr inbounds nuw %struct.Bitstream, ptr %20, i32 0, i32 2
  %22 = load i8, ptr %21, align 8, !tbaa !48
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 1
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr %21, align 8, !tbaa !48
  %26 = load ptr, ptr %4, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw %struct.Bitstream, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = load i32, ptr %5, align 4, !tbaa !3
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !43
  %33 = zext i8 %32 to i32
  %34 = load i8, ptr %7, align 1, !tbaa !43
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load ptr, ptr %3, align 8, !tbaa !16
  %40 = getelementptr inbounds nuw %struct.Bitstream, ptr %39, i32 0, i32 2
  %41 = load i8, ptr %40, align 8, !tbaa !48
  %42 = zext i8 %41 to i32
  %43 = or i32 %42, 1
  %44 = trunc i32 %43 to i8
  store i8 %44, ptr %40, align 8, !tbaa !48
  br label %45

45:                                               ; preds = %38, %19
  %46 = load ptr, ptr %3, align 8, !tbaa !16
  %47 = getelementptr inbounds nuw %struct.Bitstream, ptr %46, i32 0, i32 1
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = add nsw i32 %48, -1
  store i32 %49, ptr %47, align 4, !tbaa !50
  %50 = load i8, ptr %7, align 1, !tbaa !43
  %51 = zext i8 %50 to i32
  %52 = ashr i32 %51, 1
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %7, align 1, !tbaa !43
  %54 = load ptr, ptr %3, align 8, !tbaa !16
  %55 = getelementptr inbounds nuw %struct.Bitstream, ptr %54, i32 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !50
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %45
  %59 = load ptr, ptr %3, align 8, !tbaa !16
  %60 = getelementptr inbounds nuw %struct.Bitstream, ptr %59, i32 0, i32 1
  store i32 8, ptr %60, align 4, !tbaa !50
  %61 = load ptr, ptr %3, align 8, !tbaa !16
  %62 = getelementptr inbounds nuw %struct.Bitstream, ptr %61, i32 0, i32 2
  %63 = load i8, ptr %62, align 8, !tbaa !48
  %64 = load ptr, ptr %3, align 8, !tbaa !16
  %65 = getelementptr inbounds nuw %struct.Bitstream, ptr %64, i32 0, i32 9
  %66 = load ptr, ptr %65, align 8, !tbaa !49
  %67 = load ptr, ptr %3, align 8, !tbaa !16
  %68 = getelementptr inbounds nuw %struct.Bitstream, ptr %67, i32 0, i32 0
  %69 = load i32, ptr %68, align 8, !tbaa !46
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !46
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, ptr %66, i64 %71
  store i8 %63, ptr %72, align 1, !tbaa !43
  %73 = load ptr, ptr %3, align 8, !tbaa !16
  %74 = getelementptr inbounds nuw %struct.Bitstream, ptr %73, i32 0, i32 2
  store i8 0, ptr %74, align 8, !tbaa !48
  br label %75

75:                                               ; preds = %58, %45
  br label %76

76:                                               ; preds = %75
  %77 = load i32, ptr %6, align 4, !tbaa !3
  %78 = add nsw i32 %77, 1
  store i32 %78, ptr %6, align 4, !tbaa !3
  br label %16, !llvm.loop !51

79:                                               ; preds = %16
  br label %80

80:                                               ; preds = %79
  %81 = load i32, ptr %5, align 4, !tbaa !3
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %5, align 4, !tbaa !3
  br label %9, !llvm.loop !52

83:                                               ; preds = %9
  %84 = load ptr, ptr %4, align 8, !tbaa !16
  %85 = getelementptr inbounds nuw %struct.Bitstream, ptr %84, i32 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !50
  %87 = sub nsw i32 8, %86
  store i32 %87, ptr %8, align 4, !tbaa !3
  %88 = load i32, ptr %8, align 4, !tbaa !3
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %156

90:                                               ; preds = %83
  %91 = load i32, ptr %8, align 4, !tbaa !3
  %92 = sub nsw i32 %91, 1
  %93 = shl i32 1, %92
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %7, align 1, !tbaa !43
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %95

95:                                               ; preds = %152, %90
  %96 = load i32, ptr %6, align 4, !tbaa !3
  %97 = load i32, ptr %8, align 4, !tbaa !3
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %155

99:                                               ; preds = %95
  %100 = load ptr, ptr %3, align 8, !tbaa !16
  %101 = getelementptr inbounds nuw %struct.Bitstream, ptr %100, i32 0, i32 2
  %102 = load i8, ptr %101, align 8, !tbaa !48
  %103 = zext i8 %102 to i32
  %104 = shl i32 %103, 1
  %105 = trunc i32 %104 to i8
  store i8 %105, ptr %101, align 8, !tbaa !48
  %106 = load ptr, ptr %4, align 8, !tbaa !16
  %107 = getelementptr inbounds nuw %struct.Bitstream, ptr %106, i32 0, i32 2
  %108 = load i8, ptr %107, align 8, !tbaa !48
  %109 = zext i8 %108 to i32
  %110 = load i8, ptr %7, align 1, !tbaa !43
  %111 = zext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %99
  %115 = load ptr, ptr %3, align 8, !tbaa !16
  %116 = getelementptr inbounds nuw %struct.Bitstream, ptr %115, i32 0, i32 2
  %117 = load i8, ptr %116, align 8, !tbaa !48
  %118 = zext i8 %117 to i32
  %119 = or i32 %118, 1
  %120 = trunc i32 %119 to i8
  store i8 %120, ptr %116, align 8, !tbaa !48
  br label %121

121:                                              ; preds = %114, %99
  %122 = load ptr, ptr %3, align 8, !tbaa !16
  %123 = getelementptr inbounds nuw %struct.Bitstream, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !50
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %123, align 4, !tbaa !50
  %126 = load i8, ptr %7, align 1, !tbaa !43
  %127 = zext i8 %126 to i32
  %128 = ashr i32 %127, 1
  %129 = trunc i32 %128 to i8
  store i8 %129, ptr %7, align 1, !tbaa !43
  %130 = load ptr, ptr %3, align 8, !tbaa !16
  %131 = getelementptr inbounds nuw %struct.Bitstream, ptr %130, i32 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !50
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %121
  %135 = load ptr, ptr %3, align 8, !tbaa !16
  %136 = getelementptr inbounds nuw %struct.Bitstream, ptr %135, i32 0, i32 1
  store i32 8, ptr %136, align 4, !tbaa !50
  %137 = load ptr, ptr %3, align 8, !tbaa !16
  %138 = getelementptr inbounds nuw %struct.Bitstream, ptr %137, i32 0, i32 2
  %139 = load i8, ptr %138, align 8, !tbaa !48
  %140 = load ptr, ptr %3, align 8, !tbaa !16
  %141 = getelementptr inbounds nuw %struct.Bitstream, ptr %140, i32 0, i32 9
  %142 = load ptr, ptr %141, align 8, !tbaa !49
  %143 = load ptr, ptr %3, align 8, !tbaa !16
  %144 = getelementptr inbounds nuw %struct.Bitstream, ptr %143, i32 0, i32 0
  %145 = load i32, ptr %144, align 8, !tbaa !46
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %144, align 8, !tbaa !46
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, ptr %142, i64 %147
  store i8 %139, ptr %148, align 1, !tbaa !43
  %149 = load ptr, ptr %3, align 8, !tbaa !16
  %150 = getelementptr inbounds nuw %struct.Bitstream, ptr %149, i32 0, i32 2
  store i8 0, ptr %150, align 8, !tbaa !48
  br label %151

151:                                              ; preds = %134, %121
  br label %152

152:                                              ; preds = %151
  %153 = load i32, ptr %6, align 4, !tbaa !3
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %6, align 4, !tbaa !3
  br label %95, !llvm.loop !53

155:                                              ; preds = %95
  br label %156

156:                                              ; preds = %155, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSparePicture() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @CloseSparePicture()
  br label %4

4:                                                ; preds = %3, %0
  %5 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %5, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  call void @no_mem_exit(ptr noundef @.str.1)
  br label %9

9:                                                ; preds = %8, %4
  %10 = call noalias ptr @malloc(i64 noundef 65496) #8
  %11 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %12 = getelementptr inbounds nuw %struct.Bitstream, ptr %11, i32 0, i32 9
  store ptr %10, ptr %12, align 8, !tbaa !49
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %14 = getelementptr inbounds nuw %struct.Bitstream, ptr %13, i32 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  call void @no_mem_exit(ptr noundef @.str.2)
  br label %18

18:                                               ; preds = %17, %9
  %19 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %20 = getelementptr inbounds nuw %struct.Bitstream, ptr %19, i32 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %21, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 1), align 4, !tbaa !54
  store i32 0, ptr @seiSparePicturePayload, align 8, !tbaa !55
  %22 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %23 = getelementptr inbounds nuw %struct.Bitstream, ptr %22, i32 0, i32 1
  store i32 8, ptr %23, align 4, !tbaa !50
  %24 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %25 = getelementptr inbounds nuw %struct.Bitstream, ptr %24, i32 0, i32 0
  store i32 0, ptr %25, align 8, !tbaa !46
  %26 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %27 = getelementptr inbounds nuw %struct.Bitstream, ptr %26, i32 0, i32 2
  store i8 0, ptr %27, align 8, !tbaa !48
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseSparePicture() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %2 = getelementptr inbounds nuw %struct.Bitstream, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp ne ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %7 = getelementptr inbounds nuw %struct.Bitstream, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  call void @free(ptr noundef %8) #7
  br label %9

9:                                                ; preds = %5, %0
  %10 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %11 = getelementptr inbounds nuw %struct.Bitstream, ptr %10, i32 0, i32 9
  store ptr null, ptr %11, align 8, !tbaa !49
  %12 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  call void @free(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %14, %9
  store ptr null, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  store i32 0, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 1), align 4, !tbaa !54
  store i32 0, ptr @seiSparePicturePayload, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind
define dso_local void @CalculateSparePicture() #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local void @ComposeSparePictureMessage(i32 noundef signext %0, i32 noundef signext %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.syntaxelement, align 8
  store i32 %0, ptr %4, align 4, !tbaa !3
  store i32 %1, ptr %5, align 4, !tbaa !3
  store ptr %2, ptr %6, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  store ptr %9, ptr %7, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 40, ptr %8) #7
  %10 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 0
  store i32 0, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 7
  store ptr @ue_linfo, ptr %11, align 8, !tbaa !58
  %12 = load i32, ptr %4, align 4, !tbaa !3
  %13 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !59
  %14 = load ptr, ptr %7, align 8, !tbaa !16
  %15 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %8, ptr noundef %14)
  %16 = load i32, ptr %5, align 4, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.syntaxelement, ptr %8, i32 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !59
  %18 = load ptr, ptr %7, align 8, !tbaa !16
  %19 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %8, ptr noundef %18)
  %20 = load ptr, ptr %7, align 8, !tbaa !16
  %21 = load ptr, ptr %6, align 8, !tbaa !16
  call void @AppendTmpbits2Buf(ptr noundef %20, ptr noundef %21)
  call void @llvm.lifetime.end.p0(i64 40, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  ret void
}

declare void @ue_linfo(i32 noundef signext, i32 noundef signext, ptr noundef, ptr noundef) #3

declare signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
define dso_local signext i32 @CompressSpareMBMap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.syntaxelement, align 8
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
  store ptr %0, ptr %3, align 8, !tbaa !60
  store ptr %1, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #7
  %23 = load ptr, ptr @img, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw %struct.ImageParameters, ptr %23, i32 0, i32 17
  %25 = load i32, ptr %24, align 4, !tbaa !61
  %26 = sdiv i32 %25, 16
  %27 = load ptr, ptr @img, align 8, !tbaa !16
  %28 = getelementptr inbounds nuw %struct.ImageParameters, ptr %27, i32 0, i32 13
  %29 = load i32, ptr %28, align 4, !tbaa !62
  %30 = sdiv i32 %29, 16
  %31 = mul nsw i32 %26, %30
  store i32 %31, ptr %20, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7
  store i32 0, ptr %21, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #7
  %32 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 0
  store i32 0, ptr %32, align 8, !tbaa !56
  %33 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 7
  store ptr @ue_linfo, ptr %33, align 8, !tbaa !58
  store i32 0, ptr %7, align 4, !tbaa !3
  store i32 0, ptr %8, align 4, !tbaa !3
  store i32 1, ptr %9, align 4, !tbaa !3
  %34 = load i32, ptr %8, align 4, !tbaa !3
  store i32 %34, ptr %10, align 4, !tbaa !3
  %35 = load ptr, ptr @img, align 8, !tbaa !16
  %36 = getelementptr inbounds nuw %struct.ImageParameters, ptr %35, i32 0, i32 13
  %37 = load i32, ptr %36, align 4, !tbaa !62
  %38 = sdiv i32 %37, 16
  %39 = sub nsw i32 %38, 1
  %40 = sdiv i32 %39, 2
  store i32 %40, ptr %12, align 4, !tbaa !3
  %41 = load ptr, ptr @img, align 8, !tbaa !16
  %42 = getelementptr inbounds nuw %struct.ImageParameters, ptr %41, i32 0, i32 17
  %43 = load i32, ptr %42, align 4, !tbaa !61
  %44 = sdiv i32 %43, 16
  %45 = sub nsw i32 %44, 1
  %46 = sdiv i32 %45, 2
  store i32 %46, ptr %13, align 4, !tbaa !3
  %47 = load i32, ptr %12, align 4, !tbaa !3
  store i32 %47, ptr %15, align 4, !tbaa !3
  store i32 %47, ptr %14, align 4, !tbaa !3
  %48 = load i32, ptr %13, align 4, !tbaa !3
  store i32 %48, ptr %16, align 4, !tbaa !3
  store i32 %48, ptr %17, align 4, !tbaa !3
  store i32 0, ptr %18, align 4, !tbaa !3
  store i32 1, ptr %19, align 4, !tbaa !3
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %49

49:                                               ; preds = %237, %2
  %50 = load i32, ptr %5, align 4, !tbaa !3
  %51 = load ptr, ptr @img, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw %struct.ImageParameters, ptr %51, i32 0, i32 17
  %53 = load i32, ptr %52, align 4, !tbaa !61
  %54 = sdiv i32 %53, 16
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %240

56:                                               ; preds = %49
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %57

57:                                               ; preds = %233, %56
  %58 = load i32, ptr %6, align 4, !tbaa !3
  %59 = load ptr, ptr @img, align 8, !tbaa !16
  %60 = getelementptr inbounds nuw %struct.ImageParameters, ptr %59, i32 0, i32 13
  %61 = load i32, ptr %60, align 4, !tbaa !62
  %62 = sdiv i32 %61, 16
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %236

64:                                               ; preds = %57
  %65 = load ptr, ptr %3, align 8, !tbaa !60
  %66 = load i32, ptr %13, align 4, !tbaa !3
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %65, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = load i32, ptr %12, align 4, !tbaa !3
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !43
  %74 = zext i8 %73 to i32
  %75 = load i32, ptr %10, align 4, !tbaa !3
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32, ptr %7, align 4, !tbaa !3
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %7, align 4, !tbaa !3
  br label %87

80:                                               ; preds = %64
  %81 = load i32, ptr %7, align 4, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 1
  store i32 %81, ptr %82, align 4, !tbaa !59
  %83 = load ptr, ptr %4, align 8, !tbaa !16
  %84 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %11, ptr noundef %83)
  %85 = load i32, ptr %21, align 4, !tbaa !3
  %86 = add nsw i32 %85, %84
  store i32 %86, ptr %21, align 4, !tbaa !3
  store i32 0, ptr %7, align 4, !tbaa !3
  br label %87

87:                                               ; preds = %80, %77
  %88 = load i32, ptr %18, align 4, !tbaa !3
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %120

90:                                               ; preds = %87
  %91 = load i32, ptr %19, align 4, !tbaa !3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  %94 = load i32, ptr %12, align 4, !tbaa !3
  %95 = load i32, ptr %14, align 4, !tbaa !3
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, ptr %12, align 4, !tbaa !3
  %99 = add nsw i32 %98, -1
  store i32 %99, ptr %12, align 4, !tbaa !3
  br label %119

100:                                              ; preds = %93
  %101 = load i32, ptr %12, align 4, !tbaa !3
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, ptr %16, align 4, !tbaa !3
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %13, align 4, !tbaa !3
  %106 = load i32, ptr %16, align 4, !tbaa !3
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %16, align 4, !tbaa !3
  store i32 1, ptr %18, align 4, !tbaa !3
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %118

108:                                              ; preds = %100
  %109 = load i32, ptr %12, align 4, !tbaa !3
  %110 = load i32, ptr %14, align 4, !tbaa !3
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32, ptr %12, align 4, !tbaa !3
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr %12, align 4, !tbaa !3
  %115 = load i32, ptr %14, align 4, !tbaa !3
  %116 = add nsw i32 %115, -1
  store i32 %116, ptr %14, align 4, !tbaa !3
  store i32 0, ptr %18, align 4, !tbaa !3
  store i32 1, ptr %19, align 4, !tbaa !3
  br label %117

117:                                              ; preds = %112, %108
  br label %118

118:                                              ; preds = %117, %103
  br label %119

119:                                              ; preds = %118, %97
  br label %232

120:                                              ; preds = %90, %87
  %121 = load i32, ptr %18, align 4, !tbaa !3
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = load i32, ptr %19, align 4, !tbaa !3
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  %127 = load i32, ptr %12, align 4, !tbaa !3
  %128 = load i32, ptr %15, align 4, !tbaa !3
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32, ptr %12, align 4, !tbaa !3
  %132 = add nsw i32 %131, 1
  store i32 %132, ptr %12, align 4, !tbaa !3
  br label %157

133:                                              ; preds = %126
  %134 = load i32, ptr %12, align 4, !tbaa !3
  %135 = load ptr, ptr @img, align 8, !tbaa !16
  %136 = getelementptr inbounds nuw %struct.ImageParameters, ptr %135, i32 0, i32 13
  %137 = load i32, ptr %136, align 4, !tbaa !62
  %138 = sdiv i32 %137, 16
  %139 = sub nsw i32 %138, 1
  %140 = icmp eq i32 %134, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %133
  %142 = load i32, ptr %17, align 4, !tbaa !3
  %143 = sub nsw i32 %142, 1
  store i32 %143, ptr %13, align 4, !tbaa !3
  %144 = load i32, ptr %17, align 4, !tbaa !3
  %145 = add nsw i32 %144, -1
  store i32 %145, ptr %17, align 4, !tbaa !3
  store i32 -1, ptr %18, align 4, !tbaa !3
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %156

146:                                              ; preds = %133
  %147 = load i32, ptr %12, align 4, !tbaa !3
  %148 = load i32, ptr %15, align 4, !tbaa !3
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, ptr %12, align 4, !tbaa !3
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %12, align 4, !tbaa !3
  %153 = load i32, ptr %15, align 4, !tbaa !3
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %15, align 4, !tbaa !3
  store i32 0, ptr %18, align 4, !tbaa !3
  store i32 -1, ptr %19, align 4, !tbaa !3
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %141
  br label %157

157:                                              ; preds = %156, %130
  br label %231

158:                                              ; preds = %123, %120
  %159 = load i32, ptr %18, align 4, !tbaa !3
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %158
  %162 = load i32, ptr %19, align 4, !tbaa !3
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %191

164:                                              ; preds = %161
  %165 = load i32, ptr %13, align 4, !tbaa !3
  %166 = load i32, ptr %17, align 4, !tbaa !3
  %167 = icmp sgt i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, ptr %13, align 4, !tbaa !3
  %170 = add nsw i32 %169, -1
  store i32 %170, ptr %13, align 4, !tbaa !3
  br label %190

171:                                              ; preds = %164
  %172 = load i32, ptr %13, align 4, !tbaa !3
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %179

174:                                              ; preds = %171
  %175 = load i32, ptr %14, align 4, !tbaa !3
  %176 = sub nsw i32 %175, 1
  store i32 %176, ptr %12, align 4, !tbaa !3
  %177 = load i32, ptr %14, align 4, !tbaa !3
  %178 = add nsw i32 %177, -1
  store i32 %178, ptr %14, align 4, !tbaa !3
  store i32 0, ptr %18, align 4, !tbaa !3
  store i32 1, ptr %19, align 4, !tbaa !3
  br label %189

179:                                              ; preds = %171
  %180 = load i32, ptr %13, align 4, !tbaa !3
  %181 = load i32, ptr %17, align 4, !tbaa !3
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, ptr %13, align 4, !tbaa !3
  %185 = add nsw i32 %184, -1
  store i32 %185, ptr %13, align 4, !tbaa !3
  %186 = load i32, ptr %17, align 4, !tbaa !3
  %187 = add nsw i32 %186, -1
  store i32 %187, ptr %17, align 4, !tbaa !3
  store i32 -1, ptr %18, align 4, !tbaa !3
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %188

188:                                              ; preds = %183, %179
  br label %189

189:                                              ; preds = %188, %174
  br label %190

190:                                              ; preds = %189, %168
  br label %230

191:                                              ; preds = %161, %158
  %192 = load i32, ptr %18, align 4, !tbaa !3
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %229

194:                                              ; preds = %191
  %195 = load i32, ptr %19, align 4, !tbaa !3
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %229

197:                                              ; preds = %194
  %198 = load i32, ptr %13, align 4, !tbaa !3
  %199 = load i32, ptr %16, align 4, !tbaa !3
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, ptr %13, align 4, !tbaa !3
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %13, align 4, !tbaa !3
  br label %228

204:                                              ; preds = %197
  %205 = load i32, ptr %13, align 4, !tbaa !3
  %206 = load ptr, ptr @img, align 8, !tbaa !16
  %207 = getelementptr inbounds nuw %struct.ImageParameters, ptr %206, i32 0, i32 17
  %208 = load i32, ptr %207, align 4, !tbaa !61
  %209 = sdiv i32 %208, 16
  %210 = sub nsw i32 %209, 1
  %211 = icmp eq i32 %205, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load i32, ptr %15, align 4, !tbaa !3
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %12, align 4, !tbaa !3
  %215 = load i32, ptr %15, align 4, !tbaa !3
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %15, align 4, !tbaa !3
  store i32 0, ptr %18, align 4, !tbaa !3
  store i32 -1, ptr %19, align 4, !tbaa !3
  br label %227

217:                                              ; preds = %204
  %218 = load i32, ptr %13, align 4, !tbaa !3
  %219 = load i32, ptr %16, align 4, !tbaa !3
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %226

221:                                              ; preds = %217
  %222 = load i32, ptr %13, align 4, !tbaa !3
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr %13, align 4, !tbaa !3
  %224 = load i32, ptr %16, align 4, !tbaa !3
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %16, align 4, !tbaa !3
  store i32 1, ptr %18, align 4, !tbaa !3
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %226

226:                                              ; preds = %221, %217
  br label %227

227:                                              ; preds = %226, %212
  br label %228

228:                                              ; preds = %227, %201
  br label %229

229:                                              ; preds = %228, %194, %191
  br label %230

230:                                              ; preds = %229, %190
  br label %231

231:                                              ; preds = %230, %157
  br label %232

232:                                              ; preds = %231, %119
  br label %233

233:                                              ; preds = %232
  %234 = load i32, ptr %6, align 4, !tbaa !3
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr %6, align 4, !tbaa !3
  br label %57, !llvm.loop !63

236:                                              ; preds = %57
  br label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %5, align 4, !tbaa !3
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %5, align 4, !tbaa !3
  br label %49, !llvm.loop !64

240:                                              ; preds = %49
  %241 = load i32, ptr %7, align 4, !tbaa !3
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load i32, ptr %7, align 4, !tbaa !3
  %245 = getelementptr inbounds nuw %struct.syntaxelement, ptr %11, i32 0, i32 1
  store i32 %244, ptr %245, align 4, !tbaa !59
  %246 = load ptr, ptr %4, align 8, !tbaa !16
  %247 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %11, ptr noundef %246)
  %248 = load i32, ptr %21, align 4, !tbaa !3
  %249 = add nsw i32 %248, %247
  store i32 %249, ptr %21, align 4, !tbaa !3
  br label %250

250:                                              ; preds = %243, %240
  %251 = load i32, ptr %21, align 4, !tbaa !3
  %252 = load i32, ptr %20, align 4, !tbaa !3
  %253 = icmp slt i32 %251, %252
  %254 = zext i1 %253 to i64
  %255 = select i1 %253, i32 1, i32 0
  store i32 %255, ptr %22, align 4, !tbaa !3
  %256 = load i32, ptr %22, align 4, !tbaa !3
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %339, label %258

258:                                              ; preds = %250
  %259 = load ptr, ptr %4, align 8, !tbaa !16
  %260 = getelementptr inbounds nuw %struct.Bitstream, ptr %259, i32 0, i32 2
  store i8 0, ptr %260, align 8, !tbaa !48
  %261 = load ptr, ptr %4, align 8, !tbaa !16
  %262 = getelementptr inbounds nuw %struct.Bitstream, ptr %261, i32 0, i32 1
  store i32 8, ptr %262, align 4, !tbaa !50
  %263 = load ptr, ptr %4, align 8, !tbaa !16
  %264 = getelementptr inbounds nuw %struct.Bitstream, ptr %263, i32 0, i32 0
  store i32 0, ptr %264, align 8, !tbaa !46
  store i32 0, ptr %5, align 4, !tbaa !3
  br label %265

265:                                              ; preds = %335, %258
  %266 = load i32, ptr %5, align 4, !tbaa !3
  %267 = load ptr, ptr @img, align 8, !tbaa !16
  %268 = getelementptr inbounds nuw %struct.ImageParameters, ptr %267, i32 0, i32 17
  %269 = load i32, ptr %268, align 4, !tbaa !61
  %270 = sdiv i32 %269, 16
  %271 = icmp slt i32 %266, %270
  br i1 %271, label %272, label %338

272:                                              ; preds = %265
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %273

273:                                              ; preds = %331, %272
  %274 = load i32, ptr %6, align 4, !tbaa !3
  %275 = load ptr, ptr @img, align 8, !tbaa !16
  %276 = getelementptr inbounds nuw %struct.ImageParameters, ptr %275, i32 0, i32 13
  %277 = load i32, ptr %276, align 4, !tbaa !62
  %278 = sdiv i32 %277, 16
  %279 = icmp slt i32 %274, %278
  br i1 %279, label %280, label %334

280:                                              ; preds = %273
  %281 = load ptr, ptr %4, align 8, !tbaa !16
  %282 = getelementptr inbounds nuw %struct.Bitstream, ptr %281, i32 0, i32 2
  %283 = load i8, ptr %282, align 8, !tbaa !48
  %284 = zext i8 %283 to i32
  %285 = shl i32 %284, 1
  %286 = trunc i32 %285 to i8
  store i8 %286, ptr %282, align 8, !tbaa !48
  %287 = load ptr, ptr %3, align 8, !tbaa !60
  %288 = load i32, ptr %5, align 4, !tbaa !3
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %287, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !42
  %292 = load i32, ptr %6, align 4, !tbaa !3
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, ptr %291, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !43
  %296 = icmp ne i8 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %280
  %298 = load ptr, ptr %4, align 8, !tbaa !16
  %299 = getelementptr inbounds nuw %struct.Bitstream, ptr %298, i32 0, i32 2
  %300 = load i8, ptr %299, align 8, !tbaa !48
  %301 = zext i8 %300 to i32
  %302 = or i32 %301, 1
  %303 = trunc i32 %302 to i8
  store i8 %303, ptr %299, align 8, !tbaa !48
  br label %304

304:                                              ; preds = %297, %280
  %305 = load ptr, ptr %4, align 8, !tbaa !16
  %306 = getelementptr inbounds nuw %struct.Bitstream, ptr %305, i32 0, i32 1
  %307 = load i32, ptr %306, align 4, !tbaa !50
  %308 = add nsw i32 %307, -1
  store i32 %308, ptr %306, align 4, !tbaa !50
  %309 = load ptr, ptr %4, align 8, !tbaa !16
  %310 = getelementptr inbounds nuw %struct.Bitstream, ptr %309, i32 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !50
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %330

313:                                              ; preds = %304
  %314 = load ptr, ptr %4, align 8, !tbaa !16
  %315 = getelementptr inbounds nuw %struct.Bitstream, ptr %314, i32 0, i32 1
  store i32 8, ptr %315, align 4, !tbaa !50
  %316 = load ptr, ptr %4, align 8, !tbaa !16
  %317 = getelementptr inbounds nuw %struct.Bitstream, ptr %316, i32 0, i32 2
  %318 = load i8, ptr %317, align 8, !tbaa !48
  %319 = load ptr, ptr %4, align 8, !tbaa !16
  %320 = getelementptr inbounds nuw %struct.Bitstream, ptr %319, i32 0, i32 9
  %321 = load ptr, ptr %320, align 8, !tbaa !49
  %322 = load ptr, ptr %4, align 8, !tbaa !16
  %323 = getelementptr inbounds nuw %struct.Bitstream, ptr %322, i32 0, i32 0
  %324 = load i32, ptr %323, align 8, !tbaa !46
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %323, align 8, !tbaa !46
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds i8, ptr %321, i64 %326
  store i8 %318, ptr %327, align 1, !tbaa !43
  %328 = load ptr, ptr %4, align 8, !tbaa !16
  %329 = getelementptr inbounds nuw %struct.Bitstream, ptr %328, i32 0, i32 2
  store i8 0, ptr %329, align 8, !tbaa !48
  br label %330

330:                                              ; preds = %313, %304
  br label %331

331:                                              ; preds = %330
  %332 = load i32, ptr %6, align 4, !tbaa !3
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %6, align 4, !tbaa !3
  br label %273, !llvm.loop !65

334:                                              ; preds = %273
  br label %335

335:                                              ; preds = %334
  %336 = load i32, ptr %5, align 4, !tbaa !3
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %5, align 4, !tbaa !3
  br label %265, !llvm.loop !66

338:                                              ; preds = %265
  br label %339

339:                                              ; preds = %338, %250
  %340 = load i32, ptr %22, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret i32 %340
}

; Function Attrs: nounwind
define dso_local void @FinalizeSpareMBMap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.syntaxelement, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  %6 = load ptr, ptr @img, align 8, !tbaa !16
  %7 = getelementptr inbounds nuw %struct.ImageParameters, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = srem i32 %8, 256
  store i32 %9, ptr %1, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %10 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 0
  store i32 0, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 7
  store ptr @ue_linfo, ptr %11, align 8, !tbaa !58
  %12 = load ptr, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  store ptr %12, ptr %5, align 8, !tbaa !16
  %13 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %13, ptr %4, align 8, !tbaa !16
  %14 = load ptr, ptr %4, align 8, !tbaa !16
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.3)
  br label %17

17:                                               ; preds = %16, %0
  %18 = call noalias ptr @malloc(i64 noundef 65496) #8
  %19 = load ptr, ptr %4, align 8, !tbaa !16
  %20 = getelementptr inbounds nuw %struct.Bitstream, ptr %19, i32 0, i32 9
  store ptr %18, ptr %20, align 8, !tbaa !49
  %21 = load ptr, ptr %4, align 8, !tbaa !16
  %22 = getelementptr inbounds nuw %struct.Bitstream, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  call void @no_mem_exit(ptr noundef @.str.4)
  br label %26

26:                                               ; preds = %25, %17
  %27 = load ptr, ptr %4, align 8, !tbaa !16
  %28 = getelementptr inbounds nuw %struct.Bitstream, ptr %27, i32 0, i32 1
  store i32 8, ptr %28, align 4, !tbaa !50
  %29 = load ptr, ptr %4, align 8, !tbaa !16
  %30 = getelementptr inbounds nuw %struct.Bitstream, ptr %29, i32 0, i32 0
  store i32 0, ptr %30, align 8, !tbaa !46
  %31 = load ptr, ptr %4, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw %struct.Bitstream, ptr %31, i32 0, i32 2
  store i8 0, ptr %32, align 8, !tbaa !48
  %33 = load ptr, ptr %4, align 8, !tbaa !16
  %34 = getelementptr inbounds nuw %struct.Bitstream, ptr %33, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %35, i8 0, i64 65496, i1 false)
  %36 = load i32, ptr %1, align 4, !tbaa !3
  %37 = load i32, ptr @seiSparePicturePayload, align 8, !tbaa !55
  %38 = sub nsw i32 %36, %37
  store i32 %38, ptr %2, align 4, !tbaa !3
  %39 = load i32, ptr %2, align 4, !tbaa !3
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i32, ptr %2, align 4, !tbaa !3
  %43 = add nsw i32 %42, 256
  store i32 %43, ptr %2, align 4, !tbaa !3
  br label %44

44:                                               ; preds = %41, %26
  %45 = load i32, ptr %2, align 4, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 1
  store i32 %45, ptr %46, align 4, !tbaa !59
  %47 = load ptr, ptr %4, align 8, !tbaa !16
  %48 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %3, ptr noundef %47)
  %49 = load i32, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 1), align 4, !tbaa !54
  %50 = sub nsw i32 %49, 1
  %51 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 1
  store i32 %50, ptr %51, align 4, !tbaa !59
  %52 = load ptr, ptr %4, align 8, !tbaa !16
  %53 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %3, ptr noundef %52)
  %54 = load ptr, ptr %4, align 8, !tbaa !16
  %55 = load ptr, ptr %5, align 8, !tbaa !16
  call void @AppendTmpbits2Buf(ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %4, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw %struct.Bitstream, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = icmp ne i32 %58, 8
  br i1 %59, label %60, label %108

60:                                               ; preds = %44
  %61 = load ptr, ptr %4, align 8, !tbaa !16
  %62 = getelementptr inbounds nuw %struct.Bitstream, ptr %61, i32 0, i32 2
  %63 = load i8, ptr %62, align 8, !tbaa !48
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 1
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %62, align 8, !tbaa !48
  %67 = load ptr, ptr %4, align 8, !tbaa !16
  %68 = getelementptr inbounds nuw %struct.Bitstream, ptr %67, i32 0, i32 2
  %69 = load i8, ptr %68, align 8, !tbaa !48
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, 1
  %72 = trunc i32 %71 to i8
  store i8 %72, ptr %68, align 8, !tbaa !48
  %73 = load ptr, ptr %4, align 8, !tbaa !16
  %74 = getelementptr inbounds nuw %struct.Bitstream, ptr %73, i32 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = add nsw i32 %75, -1
  store i32 %76, ptr %74, align 4, !tbaa !50
  %77 = load ptr, ptr %4, align 8, !tbaa !16
  %78 = getelementptr inbounds nuw %struct.Bitstream, ptr %77, i32 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !50
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %60
  %82 = load ptr, ptr %4, align 8, !tbaa !16
  %83 = getelementptr inbounds nuw %struct.Bitstream, ptr %82, i32 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !50
  %85 = load ptr, ptr %4, align 8, !tbaa !16
  %86 = getelementptr inbounds nuw %struct.Bitstream, ptr %85, i32 0, i32 2
  %87 = load i8, ptr %86, align 8, !tbaa !48
  %88 = zext i8 %87 to i32
  %89 = shl i32 %88, %84
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr %86, align 8, !tbaa !48
  br label %91

91:                                               ; preds = %81, %60
  %92 = load ptr, ptr %4, align 8, !tbaa !16
  %93 = getelementptr inbounds nuw %struct.Bitstream, ptr %92, i32 0, i32 1
  store i32 8, ptr %93, align 4, !tbaa !50
  %94 = load ptr, ptr %4, align 8, !tbaa !16
  %95 = getelementptr inbounds nuw %struct.Bitstream, ptr %94, i32 0, i32 2
  %96 = load i8, ptr %95, align 8, !tbaa !48
  %97 = load ptr, ptr %4, align 8, !tbaa !16
  %98 = getelementptr inbounds nuw %struct.Bitstream, ptr %97, i32 0, i32 9
  %99 = load ptr, ptr %98, align 8, !tbaa !49
  %100 = load ptr, ptr %4, align 8, !tbaa !16
  %101 = getelementptr inbounds nuw %struct.Bitstream, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 8, !tbaa !46
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %101, align 8, !tbaa !46
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, ptr %99, i64 %104
  store i8 %96, ptr %105, align 1, !tbaa !43
  %106 = load ptr, ptr %4, align 8, !tbaa !16
  %107 = getelementptr inbounds nuw %struct.Bitstream, ptr %106, i32 0, i32 2
  store i8 0, ptr %107, align 8, !tbaa !48
  br label %108

108:                                              ; preds = %91, %44
  %109 = load ptr, ptr %4, align 8, !tbaa !16
  %110 = getelementptr inbounds nuw %struct.Bitstream, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 8, !tbaa !46
  store i32 %111, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 2), align 8, !tbaa !67
  %112 = load ptr, ptr %4, align 8, !tbaa !16
  store ptr %112, ptr getelementptr inbounds nuw (%struct.spare_picture_struct, ptr @seiSparePicturePayload, i32 0, i32 3), align 8, !tbaa !14
  %113 = load ptr, ptr %5, align 8, !tbaa !16
  %114 = getelementptr inbounds nuw %struct.Bitstream, ptr %113, i32 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !49
  call void @free(ptr noundef %115) #7
  %116 = load ptr, ptr %5, align 8, !tbaa !16
  call void @free(ptr noundef %116) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSubseqInfo(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  store i32 1, ptr @seiHasSubseqInfo, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = load i32, ptr %2, align 4, !tbaa !3
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %5
  %7 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %6, i32 0, i32 0
  store i32 %3, ptr %7, align 8, !tbaa !68
  %8 = load i16, ptr @InitSubseqInfo.id, align 2, !tbaa !70
  %9 = add i16 %8, 1
  store i16 %9, ptr @InitSubseqInfo.id, align 2, !tbaa !70
  %10 = zext i16 %8 to i32
  %11 = load i32, ptr %2, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %13, i32 0, i32 1
  store i32 %10, ptr %14, align 4, !tbaa !71
  %15 = load i32, ptr %2, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %17, i32 0, i32 2
  store i32 0, ptr %18, align 8, !tbaa !72
  %19 = load i32, ptr %2, align 4, !tbaa !3
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %20
  %22 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %21, i32 0, i32 3
  store i32 -1, ptr %22, align 4, !tbaa !73
  %23 = load i32, ptr %2, align 4, !tbaa !3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %24
  %26 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %25, i32 0, i32 4
  store i32 0, ptr %26, align 8, !tbaa !74
  %27 = call noalias ptr @malloc(i64 noundef 48) #8
  %28 = load i32, ptr %2, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %29
  %31 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %30, i32 0, i32 5
  store ptr %27, ptr %31, align 8, !tbaa !75
  %32 = load i32, ptr %2, align 4, !tbaa !3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %33
  %35 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !75
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  call void @no_mem_exit(ptr noundef @.str.5)
  br label %39

39:                                               ; preds = %38, %1
  %40 = call noalias ptr @malloc(i64 noundef 65496) #8
  %41 = load i32, ptr %2, align 4, !tbaa !3
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %42
  %44 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %43, i32 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = getelementptr inbounds nuw %struct.Bitstream, ptr %45, i32 0, i32 9
  store ptr %40, ptr %46, align 8, !tbaa !49
  %47 = load i32, ptr %2, align 4, !tbaa !3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %48
  %50 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !75
  %52 = getelementptr inbounds nuw %struct.Bitstream, ptr %51, i32 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !49
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  call void @no_mem_exit(ptr noundef @.str.6)
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, ptr %2, align 4, !tbaa !3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %58
  %60 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %59, i32 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !75
  %62 = getelementptr inbounds nuw %struct.Bitstream, ptr %61, i32 0, i32 1
  store i32 8, ptr %62, align 4, !tbaa !50
  %63 = load i32, ptr %2, align 4, !tbaa !3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %64
  %66 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %65, i32 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = getelementptr inbounds nuw %struct.Bitstream, ptr %67, i32 0, i32 0
  store i32 0, ptr %68, align 8, !tbaa !46
  %69 = load i32, ptr %2, align 4, !tbaa !3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %70
  %72 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %71, i32 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  %74 = getelementptr inbounds nuw %struct.Bitstream, ptr %73, i32 0, i32 2
  store i8 0, ptr %74, align 8, !tbaa !48
  %75 = load i32, ptr %2, align 4, !tbaa !3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %76
  %78 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %77, i32 0, i32 5
  %79 = load ptr, ptr %78, align 8, !tbaa !75
  %80 = getelementptr inbounds nuw %struct.Bitstream, ptr %79, i32 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %81, i8 0, i64 65496, i1 false)
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateSubseqInfo(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load ptr, ptr @img, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw %struct.ImageParameters, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4, !tbaa !3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %9
  %11 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !73
  %13 = add i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !73
  %14 = load i32, ptr %2, align 4, !tbaa !3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %15
  %17 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = urem i32 %18, 256
  %20 = load i32, ptr %2, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %21
  %23 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %22, i32 0, i32 3
  store i32 %19, ptr %23, align 4, !tbaa !73
  br label %24

24:                                               ; preds = %7, %1
  %25 = load i32, ptr %2, align 4, !tbaa !3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load ptr, ptr @img, align 8, !tbaa !16
  %29 = getelementptr inbounds nuw %struct.ImageParameters, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !41
  %31 = load ptr, ptr @input, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw %struct.InputParameters, ptr %31, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !76
  %34 = sub nsw i32 %33, 1
  %35 = icmp eq i32 %30, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i32, ptr %2, align 4, !tbaa !3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %38
  %40 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %39, i32 0, i32 2
  store i32 1, ptr %40, align 8, !tbaa !72
  br label %46

41:                                               ; preds = %27
  %42 = load i32, ptr %2, align 4, !tbaa !3
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %43
  %45 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %44, i32 0, i32 2
  store i32 0, ptr %45, align 8, !tbaa !72
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %24
  %48 = load i32, ptr %2, align 4, !tbaa !3
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %105

50:                                               ; preds = %47
  %51 = load ptr, ptr @img, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw %struct.ImageParameters, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8, !tbaa !41
  %54 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %55 = sub nsw i32 %53, %54
  %56 = load ptr, ptr @input, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw %struct.InputParameters, ptr %56, i32 0, i32 129
  %58 = load i32, ptr %57, align 8, !tbaa !17
  %59 = add nsw i32 %58, 1
  %60 = srem i32 %55, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load ptr, ptr @input, align 8, !tbaa !16
  %64 = getelementptr inbounds nuw %struct.InputParameters, ptr %63, i32 0, i32 40
  %65 = load i32, ptr %64, align 8, !tbaa !77
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load ptr, ptr @img, align 8, !tbaa !16
  %69 = getelementptr inbounds nuw %struct.ImageParameters, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !41
  %71 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %72 = sub nsw i32 %70, %71
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %67, %62, %50
  %75 = load ptr, ptr @img, align 8, !tbaa !16
  %76 = getelementptr inbounds nuw %struct.ImageParameters, ptr %75, i32 0, i32 0
  %77 = load i32, ptr %76, align 8, !tbaa !41
  %78 = load i32, ptr @start_frame_no_in_this_IGOP, align 4, !tbaa !3
  %79 = sub nsw i32 %77, %78
  %80 = load ptr, ptr @input, align 8, !tbaa !16
  %81 = getelementptr inbounds nuw %struct.InputParameters, ptr %80, i32 0, i32 129
  %82 = load i32, ptr %81, align 8, !tbaa !17
  %83 = add nsw i32 %82, 1
  %84 = srem i32 %79, %83
  %85 = load ptr, ptr @input, align 8, !tbaa !16
  %86 = getelementptr inbounds nuw %struct.InputParameters, ptr %85, i32 0, i32 129
  %87 = load i32, ptr %86, align 8, !tbaa !17
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %74
  %90 = load ptr, ptr @input, align 8, !tbaa !16
  %91 = getelementptr inbounds nuw %struct.InputParameters, ptr %90, i32 0, i32 40
  %92 = load i32, ptr %91, align 8, !tbaa !77
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89, %67
  %95 = load i32, ptr %2, align 4, !tbaa !3
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %96
  %98 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %97, i32 0, i32 2
  store i32 1, ptr %98, align 8, !tbaa !72
  br label %104

99:                                               ; preds = %89, %74
  %100 = load i32, ptr %2, align 4, !tbaa !3
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %101
  %103 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %102, i32 0, i32 2
  store i32 0, ptr %103, align 8, !tbaa !72
  br label %104

104:                                              ; preds = %99, %94
  br label %105

105:                                              ; preds = %104, %47
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSubseqInfo(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.syntaxelement, align 8
  %4 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 40, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #7
  %5 = load i32, ptr %2, align 4, !tbaa !3
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %6
  %8 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  store ptr %9, ptr %4, align 8, !tbaa !16
  %10 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 0
  store i32 0, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 7
  store ptr @ue_linfo, ptr %11, align 8, !tbaa !58
  %12 = load i32, ptr %2, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %13
  %15 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 1
  store i32 %16, ptr %17, align 4, !tbaa !59
  %18 = load ptr, ptr %4, align 8, !tbaa !16
  %19 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %3, ptr noundef %18)
  %20 = load i32, ptr %2, align 4, !tbaa !3
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %21
  %23 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !59
  %26 = load ptr, ptr %4, align 8, !tbaa !16
  %27 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %3, ptr noundef %26)
  %28 = load i32, ptr %2, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %29
  %31 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %30, i32 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 5
  store i32 %32, ptr %33, align 4, !tbaa !78
  %34 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 3
  store i32 1, ptr %34, align 4, !tbaa !79
  %35 = load ptr, ptr %4, align 8, !tbaa !16
  %36 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %3, ptr noundef %35)
  %37 = load i32, ptr %2, align 4, !tbaa !3
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %38
  %40 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %39, i32 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !73
  %42 = getelementptr inbounds nuw %struct.syntaxelement, ptr %3, i32 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !59
  %43 = load ptr, ptr %4, align 8, !tbaa !16
  %44 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %3, ptr noundef %43)
  %45 = load ptr, ptr %4, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw %struct.Bitstream, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = icmp ne i32 %47, 8
  br i1 %48, label %49, label %97

49:                                               ; preds = %1
  %50 = load ptr, ptr %4, align 8, !tbaa !16
  %51 = getelementptr inbounds nuw %struct.Bitstream, ptr %50, i32 0, i32 2
  %52 = load i8, ptr %51, align 8, !tbaa !48
  %53 = zext i8 %52 to i32
  %54 = shl i32 %53, 1
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %51, align 8, !tbaa !48
  %56 = load ptr, ptr %4, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw %struct.Bitstream, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 8, !tbaa !48
  %59 = zext i8 %58 to i32
  %60 = or i32 %59, 1
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %57, align 8, !tbaa !48
  %62 = load ptr, ptr %4, align 8, !tbaa !16
  %63 = getelementptr inbounds nuw %struct.Bitstream, ptr %62, i32 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = add nsw i32 %64, -1
  store i32 %65, ptr %63, align 4, !tbaa !50
  %66 = load ptr, ptr %4, align 8, !tbaa !16
  %67 = getelementptr inbounds nuw %struct.Bitstream, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %49
  %71 = load ptr, ptr %4, align 8, !tbaa !16
  %72 = getelementptr inbounds nuw %struct.Bitstream, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = load ptr, ptr %4, align 8, !tbaa !16
  %75 = getelementptr inbounds nuw %struct.Bitstream, ptr %74, i32 0, i32 2
  %76 = load i8, ptr %75, align 8, !tbaa !48
  %77 = zext i8 %76 to i32
  %78 = shl i32 %77, %73
  %79 = trunc i32 %78 to i8
  store i8 %79, ptr %75, align 8, !tbaa !48
  br label %80

80:                                               ; preds = %70, %49
  %81 = load ptr, ptr %4, align 8, !tbaa !16
  %82 = getelementptr inbounds nuw %struct.Bitstream, ptr %81, i32 0, i32 1
  store i32 8, ptr %82, align 4, !tbaa !50
  %83 = load ptr, ptr %4, align 8, !tbaa !16
  %84 = getelementptr inbounds nuw %struct.Bitstream, ptr %83, i32 0, i32 2
  %85 = load i8, ptr %84, align 8, !tbaa !48
  %86 = load ptr, ptr %4, align 8, !tbaa !16
  %87 = getelementptr inbounds nuw %struct.Bitstream, ptr %86, i32 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !49
  %89 = load ptr, ptr %4, align 8, !tbaa !16
  %90 = getelementptr inbounds nuw %struct.Bitstream, ptr %89, i32 0, i32 0
  %91 = load i32, ptr %90, align 8, !tbaa !46
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 8, !tbaa !46
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, ptr %88, i64 %93
  store i8 %85, ptr %94, align 1, !tbaa !43
  %95 = load ptr, ptr %4, align 8, !tbaa !16
  %96 = getelementptr inbounds nuw %struct.Bitstream, ptr %95, i32 0, i32 2
  store i8 0, ptr %96, align 8, !tbaa !48
  br label %97

97:                                               ; preds = %80, %1
  %98 = load ptr, ptr %4, align 8, !tbaa !16
  %99 = getelementptr inbounds nuw %struct.Bitstream, ptr %98, i32 0, i32 0
  %100 = load i32, ptr %99, align 8, !tbaa !46
  %101 = load i32, ptr %2, align 4, !tbaa !3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %102
  %104 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %103, i32 0, i32 4
  store i32 %100, ptr %104, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %3) #7
  ret void
}

declare signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @ClearSubseqInfoPayload(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %4
  %6 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 1
  store i32 8, ptr %8, align 4, !tbaa !50
  %9 = load i32, ptr %2, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %10
  %12 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = getelementptr inbounds nuw %struct.Bitstream, ptr %13, i32 0, i32 0
  store i32 0, ptr %14, align 8, !tbaa !46
  %15 = load i32, ptr %2, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %16
  %18 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %17, i32 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = getelementptr inbounds nuw %struct.Bitstream, ptr %19, i32 0, i32 2
  store i8 0, ptr %20, align 8, !tbaa !48
  %21 = load i32, ptr %2, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %22
  %24 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds nuw %struct.Bitstream, ptr %25, i32 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %27, i8 0, i64 65496, i1 false)
  %28 = load i32, ptr %2, align 4, !tbaa !3
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %29
  %31 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %30, i32 0, i32 4
  store i32 0, ptr %31, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseSubseqInfo(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load i32, ptr %2, align 4, !tbaa !3
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %4
  %6 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %5, i32 0, i32 3
  store i32 -1, ptr %6, align 4, !tbaa !73
  %7 = load i32, ptr %2, align 4, !tbaa !3
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %8
  %10 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %9, i32 0, i32 4
  store i32 0, ptr %10, align 8, !tbaa !74
  %11 = load i32, ptr %2, align 4, !tbaa !3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = getelementptr inbounds nuw %struct.Bitstream, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  call void @free(ptr noundef %17) #7
  %18 = load i32, ptr %2, align 4, !tbaa !3
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %19
  %21 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  call void @free(ptr noundef %22) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSubseqLayerInfo() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  store i32 1, ptr @seiHasSubseqLayerInfo, align 4, !tbaa !3
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 3), align 4, !tbaa !80
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, ptr %1, align 4, !tbaa !3
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2 x i16], ptr @seiSubseqLayerInfo, i64 0, i64 %7
  store i16 0, ptr %8, align 2, !tbaa !70
  %9 = load i32, ptr %1, align 4, !tbaa !3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [2 x i16], ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 1), i64 0, i64 %10
  store i16 0, ptr %11, align 2, !tbaa !70
  %12 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 3), align 4, !tbaa !80
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 3), align 4, !tbaa !80
  br label %14

14:                                               ; preds = %5
  %15 = load i32, ptr %1, align 4, !tbaa !3
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %1, align 4, !tbaa !3
  br label %2, !llvm.loop !82

17:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseSubseqLayerInfo() #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSubseqLayerInfo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  store i32 0, ptr %2, align 4, !tbaa !3
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 4), align 4, !tbaa !83
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %3

3:                                                ; preds = %28, %0
  %4 = load i32, ptr %1, align 4, !tbaa !3
  %5 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 3), align 4, !tbaa !80
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load i32, ptr %1, align 4, !tbaa !3
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x i16], ptr @seiSubseqLayerInfo, i64 0, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !70
  %12 = load i32, ptr %2, align 4, !tbaa !3
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 2), i64 0, i64 %13
  store i16 %11, ptr %14, align 1, !tbaa !70
  %15 = load i32, ptr %2, align 4, !tbaa !3
  %16 = add nsw i32 %15, 2
  store i32 %16, ptr %2, align 4, !tbaa !3
  %17 = load i32, ptr %1, align 4, !tbaa !3
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [2 x i16], ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 1), i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !70
  %21 = load i32, ptr %2, align 4, !tbaa !3
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 2), i64 0, i64 %22
  store i16 %20, ptr %23, align 1, !tbaa !70
  %24 = load i32, ptr %2, align 4, !tbaa !3
  %25 = add nsw i32 %24, 2
  store i32 %25, ptr %2, align 4, !tbaa !3
  %26 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 4), align 4, !tbaa !83
  %27 = add nsw i32 %26, 4
  store i32 %27, ptr getelementptr inbounds nuw (%struct.subseq_layer_information_struct, ptr @seiSubseqLayerInfo, i32 0, i32 4), align 4, !tbaa !83
  br label %28

28:                                               ; preds = %7
  %29 = load i32, ptr %1, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %1, align 4, !tbaa !3
  br label %3, !llvm.loop !84

31:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSubseqChar() #0 {
  %1 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %1, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.7)
  br label %5

5:                                                ; preds = %4, %0
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 9
  store ptr %6, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %10 = getelementptr inbounds nuw %struct.Bitstream, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str.8)
  br label %14

14:                                               ; preds = %13, %5
  call void @ClearSubseqCharPayload()
  %15 = load ptr, ptr @img, align 8, !tbaa !16
  %16 = getelementptr inbounds nuw %struct.ImageParameters, ptr %15, i32 0, i32 95
  %17 = load i32, ptr %16, align 8, !tbaa !87
  store i32 %17, ptr @seiSubseqChar, align 8, !tbaa !88
  %18 = load ptr, ptr @img, align 8, !tbaa !16
  %19 = getelementptr inbounds nuw %struct.ImageParameters, ptr %18, i32 0, i32 95
  %20 = load i32, ptr %19, align 8, !tbaa !87
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %21
  %23 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %22, i32 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !71
  store i32 %24, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 1), align 4, !tbaa !89
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 2), align 8, !tbaa !90
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 4), align 8, !tbaa !91
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 7), align 4, !tbaa !92
  ret void
}

; Function Attrs: nounwind
define dso_local void @ClearSubseqCharPayload() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %2 = getelementptr inbounds nuw %struct.Bitstream, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 65496, i1 false)
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 1
  store i32 8, ptr %5, align 4, !tbaa !50
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %7 = getelementptr inbounds nuw %struct.Bitstream, ptr %6, i32 0, i32 0
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %9 = getelementptr inbounds nuw %struct.Bitstream, ptr %8, i32 0, i32 2
  store i8 0, ptr %9, align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 11), align 8, !tbaa !93
  store i32 0, ptr @seiHasSubseqChar, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateSubseqChar() #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !16
  %2 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1, i32 0, i32 95
  %3 = load i32, ptr %2, align 8, !tbaa !87
  store i32 %3, ptr @seiSubseqChar, align 8, !tbaa !88
  %4 = load ptr, ptr @img, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw %struct.ImageParameters, ptr %4, i32 0, i32 95
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [2 x %struct.subseq_information_struct], ptr @seiSubseqInfo, i64 0, i64 %7
  %9 = getelementptr inbounds nuw %struct.subseq_information_struct, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !71
  store i32 %10, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 1), align 4, !tbaa !89
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 2), align 8, !tbaa !90
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 4), align 8, !tbaa !91
  store i32 100, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 5), align 4, !tbaa !94
  store i32 30, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 6), align 8, !tbaa !95
  store i32 0, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 7), align 4, !tbaa !92
  store i32 1, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 8), align 8, !tbaa !3
  store i32 2, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 9), align 4, !tbaa !3
  store i32 3, ptr getelementptr inbounds ([5 x i32], ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 8), i64 0, i64 1), align 4, !tbaa !3
  store i32 4, ptr getelementptr inbounds ([5 x i32], ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 9), i64 0, i64 1), align 4, !tbaa !3
  store i32 1, ptr @seiHasSubseqChar, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSubseqChar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  store ptr %4, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 0
  store i32 0, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 7
  store ptr @ue_linfo, ptr %6, align 8, !tbaa !58
  %7 = load i32, ptr @seiSubseqChar, align 8, !tbaa !88
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 1
  store i32 %7, ptr %8, align 4, !tbaa !59
  %9 = load ptr, ptr %3, align 8, !tbaa !16
  %10 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %2, ptr noundef %9)
  %11 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 1), align 4, !tbaa !89
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !59
  %13 = load ptr, ptr %3, align 8, !tbaa !16
  %14 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %2, ptr noundef %13)
  %15 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 2), align 8, !tbaa !90
  %16 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %15, ptr %16, align 4, !tbaa !78
  %17 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 1, ptr %17, align 4, !tbaa !79
  %18 = load ptr, ptr %3, align 8, !tbaa !16
  %19 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %18)
  %20 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 2), align 8, !tbaa !90
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %0
  %23 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 3), align 4, !tbaa !96
  %24 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %23, ptr %24, align 4, !tbaa !78
  %25 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 32, ptr %25, align 4, !tbaa !79
  %26 = load ptr, ptr %3, align 8, !tbaa !16
  %27 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %26)
  br label %28

28:                                               ; preds = %22, %0
  %29 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 4), align 8, !tbaa !91
  %30 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %29, ptr %30, align 4, !tbaa !78
  %31 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 1, ptr %31, align 4, !tbaa !79
  %32 = load ptr, ptr %3, align 8, !tbaa !16
  %33 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %32)
  %34 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 4), align 8, !tbaa !91
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 5), align 4, !tbaa !94
  %38 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %37, ptr %38, align 4, !tbaa !78
  %39 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 16, ptr %39, align 4, !tbaa !79
  %40 = load ptr, ptr %3, align 8, !tbaa !16
  %41 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %40)
  %42 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 6), align 8, !tbaa !95
  %43 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %42, ptr %43, align 4, !tbaa !78
  %44 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 16, ptr %44, align 4, !tbaa !79
  %45 = load ptr, ptr %3, align 8, !tbaa !16
  %46 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %45)
  br label %47

47:                                               ; preds = %36, %28
  %48 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 7), align 4, !tbaa !92
  %49 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !59
  %50 = load ptr, ptr %3, align 8, !tbaa !16
  %51 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %2, ptr noundef %50)
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %52

52:                                               ; preds = %71, %47
  %53 = load i32, ptr %1, align 4, !tbaa !3
  %54 = load i32, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 7), align 4, !tbaa !92
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %52
  %57 = load i32, ptr %1, align 4, !tbaa !3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [5 x i32], ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 8), i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !59
  %62 = load ptr, ptr %3, align 8, !tbaa !16
  %63 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %2, ptr noundef %62)
  %64 = load i32, ptr %1, align 4, !tbaa !3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i32], ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 9), i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !3
  %68 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 1
  store i32 %67, ptr %68, align 4, !tbaa !59
  %69 = load ptr, ptr %3, align 8, !tbaa !16
  %70 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %2, ptr noundef %69)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, ptr %1, align 4, !tbaa !3
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %1, align 4, !tbaa !3
  br label %52, !llvm.loop !97

74:                                               ; preds = %52
  %75 = load ptr, ptr %3, align 8, !tbaa !16
  %76 = getelementptr inbounds nuw %struct.Bitstream, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !50
  %78 = icmp ne i32 %77, 8
  br i1 %78, label %79, label %127

79:                                               ; preds = %74
  %80 = load ptr, ptr %3, align 8, !tbaa !16
  %81 = getelementptr inbounds nuw %struct.Bitstream, ptr %80, i32 0, i32 2
  %82 = load i8, ptr %81, align 8, !tbaa !48
  %83 = zext i8 %82 to i32
  %84 = shl i32 %83, 1
  %85 = trunc i32 %84 to i8
  store i8 %85, ptr %81, align 8, !tbaa !48
  %86 = load ptr, ptr %3, align 8, !tbaa !16
  %87 = getelementptr inbounds nuw %struct.Bitstream, ptr %86, i32 0, i32 2
  %88 = load i8, ptr %87, align 8, !tbaa !48
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, 1
  %91 = trunc i32 %90 to i8
  store i8 %91, ptr %87, align 8, !tbaa !48
  %92 = load ptr, ptr %3, align 8, !tbaa !16
  %93 = getelementptr inbounds nuw %struct.Bitstream, ptr %92, i32 0, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = add nsw i32 %94, -1
  store i32 %95, ptr %93, align 4, !tbaa !50
  %96 = load ptr, ptr %3, align 8, !tbaa !16
  %97 = getelementptr inbounds nuw %struct.Bitstream, ptr %96, i32 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !50
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %79
  %101 = load ptr, ptr %3, align 8, !tbaa !16
  %102 = getelementptr inbounds nuw %struct.Bitstream, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !50
  %104 = load ptr, ptr %3, align 8, !tbaa !16
  %105 = getelementptr inbounds nuw %struct.Bitstream, ptr %104, i32 0, i32 2
  %106 = load i8, ptr %105, align 8, !tbaa !48
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, %103
  %109 = trunc i32 %108 to i8
  store i8 %109, ptr %105, align 8, !tbaa !48
  br label %110

110:                                              ; preds = %100, %79
  %111 = load ptr, ptr %3, align 8, !tbaa !16
  %112 = getelementptr inbounds nuw %struct.Bitstream, ptr %111, i32 0, i32 1
  store i32 8, ptr %112, align 4, !tbaa !50
  %113 = load ptr, ptr %3, align 8, !tbaa !16
  %114 = getelementptr inbounds nuw %struct.Bitstream, ptr %113, i32 0, i32 2
  %115 = load i8, ptr %114, align 8, !tbaa !48
  %116 = load ptr, ptr %3, align 8, !tbaa !16
  %117 = getelementptr inbounds nuw %struct.Bitstream, ptr %116, i32 0, i32 9
  %118 = load ptr, ptr %117, align 8, !tbaa !49
  %119 = load ptr, ptr %3, align 8, !tbaa !16
  %120 = getelementptr inbounds nuw %struct.Bitstream, ptr %119, i32 0, i32 0
  %121 = load i32, ptr %120, align 8, !tbaa !46
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !46
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, ptr %118, i64 %123
  store i8 %115, ptr %124, align 1, !tbaa !43
  %125 = load ptr, ptr %3, align 8, !tbaa !16
  %126 = getelementptr inbounds nuw %struct.Bitstream, ptr %125, i32 0, i32 2
  store i8 0, ptr %126, align 8, !tbaa !48
  br label %127

127:                                              ; preds = %110, %74
  %128 = load ptr, ptr %3, align 8, !tbaa !16
  %129 = getelementptr inbounds nuw %struct.Bitstream, ptr %128, i32 0, i32 0
  %130 = load i32, ptr %129, align 8, !tbaa !46
  store i32 %130, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 11), align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseSubseqChar() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  call void @free(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds nuw (%struct.subseq_char_information_struct, ptr @seiSubseqChar, i32 0, i32 10), align 8, !tbaa !85
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitSceneInformation() #0 {
  store i32 1, ptr @seiHasSceneInformation, align 4, !tbaa !3
  store i32 0, ptr @seiSceneInformation, align 8, !tbaa !98
  store i32 0, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 1), align 4, !tbaa !100
  store i32 -1, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 2), align 8, !tbaa !101
  %1 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %1, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.9)
  br label %5

5:                                                ; preds = %4, %0
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 9
  store ptr %6, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %10 = getelementptr inbounds nuw %struct.Bitstream, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str.10)
  br label %14

14:                                               ; preds = %13, %5
  %15 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %16 = getelementptr inbounds nuw %struct.Bitstream, ptr %15, i32 0, i32 1
  store i32 8, ptr %16, align 4, !tbaa !50
  %17 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %18 = getelementptr inbounds nuw %struct.Bitstream, ptr %17, i32 0, i32 0
  store i32 0, ptr %18, align 8, !tbaa !46
  %19 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %20 = getelementptr inbounds nuw %struct.Bitstream, ptr %19, i32 0, i32 2
  store i8 0, ptr %20, align 8, !tbaa !48
  %21 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %22 = getelementptr inbounds nuw %struct.Bitstream, ptr %21, i32 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %23, i8 0, i64 65496, i1 false)
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseSceneInformation() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  call void @free(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeSceneInformation() #0 {
  %1 = alloca %struct.syntaxelement, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #7
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 3), align 8, !tbaa !102
  store ptr %3, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 0
  store i32 0, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 7
  store ptr @ue_linfo, ptr %5, align 8, !tbaa !58
  %6 = load i32, ptr @seiSceneInformation, align 8, !tbaa !98
  %7 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !78
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 3
  store i32 8, ptr %8, align 4, !tbaa !79
  %9 = load ptr, ptr %2, align 8, !tbaa !16
  %10 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %1, ptr noundef %9)
  %11 = load i32, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 1), align 4, !tbaa !100
  %12 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !59
  %13 = load ptr, ptr %2, align 8, !tbaa !16
  %14 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %1, ptr noundef %13)
  %15 = load i32, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 1), align 4, !tbaa !100
  %16 = icmp sgt i32 %15, 3
  br i1 %16, label %17, label %23

17:                                               ; preds = %0
  %18 = load i32, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 2), align 8, !tbaa !101
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !78
  %20 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 3
  store i32 8, ptr %20, align 4, !tbaa !79
  %21 = load ptr, ptr %2, align 8, !tbaa !16
  %22 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %1, ptr noundef %21)
  br label %23

23:                                               ; preds = %17, %0
  %24 = load ptr, ptr %2, align 8, !tbaa !16
  %25 = getelementptr inbounds nuw %struct.Bitstream, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !50
  %27 = icmp ne i32 %26, 8
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8, !tbaa !16
  %30 = getelementptr inbounds nuw %struct.Bitstream, ptr %29, i32 0, i32 2
  %31 = load i8, ptr %30, align 8, !tbaa !48
  %32 = zext i8 %31 to i32
  %33 = shl i32 %32, 1
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %30, align 8, !tbaa !48
  %35 = load ptr, ptr %2, align 8, !tbaa !16
  %36 = getelementptr inbounds nuw %struct.Bitstream, ptr %35, i32 0, i32 2
  %37 = load i8, ptr %36, align 8, !tbaa !48
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, 1
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr %36, align 8, !tbaa !48
  %41 = load ptr, ptr %2, align 8, !tbaa !16
  %42 = getelementptr inbounds nuw %struct.Bitstream, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %42, align 4, !tbaa !50
  %45 = load ptr, ptr %2, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw %struct.Bitstream, ptr %45, i32 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %28
  %50 = load ptr, ptr %2, align 8, !tbaa !16
  %51 = getelementptr inbounds nuw %struct.Bitstream, ptr %50, i32 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = load ptr, ptr %2, align 8, !tbaa !16
  %54 = getelementptr inbounds nuw %struct.Bitstream, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 8, !tbaa !48
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, %52
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %54, align 8, !tbaa !48
  br label %59

59:                                               ; preds = %49, %28
  %60 = load ptr, ptr %2, align 8, !tbaa !16
  %61 = getelementptr inbounds nuw %struct.Bitstream, ptr %60, i32 0, i32 1
  store i32 8, ptr %61, align 4, !tbaa !50
  %62 = load ptr, ptr %2, align 8, !tbaa !16
  %63 = getelementptr inbounds nuw %struct.Bitstream, ptr %62, i32 0, i32 2
  %64 = load i8, ptr %63, align 8, !tbaa !48
  %65 = load ptr, ptr %2, align 8, !tbaa !16
  %66 = getelementptr inbounds nuw %struct.Bitstream, ptr %65, i32 0, i32 9
  %67 = load ptr, ptr %66, align 8, !tbaa !49
  %68 = load ptr, ptr %2, align 8, !tbaa !16
  %69 = getelementptr inbounds nuw %struct.Bitstream, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !46
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 8, !tbaa !46
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %67, i64 %72
  store i8 %64, ptr %73, align 1, !tbaa !43
  %74 = load ptr, ptr %2, align 8, !tbaa !16
  %75 = getelementptr inbounds nuw %struct.Bitstream, ptr %74, i32 0, i32 2
  store i8 0, ptr %75, align 8, !tbaa !48
  br label %76

76:                                               ; preds = %59, %23
  %77 = load ptr, ptr %2, align 8, !tbaa !16
  %78 = getelementptr inbounds nuw %struct.Bitstream, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %78, align 8, !tbaa !46
  store i32 %79, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 4), align 8, !tbaa !103
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateSceneInformation(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !3
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  store i32 %3, ptr %8, align 4, !tbaa !3
  %9 = load i32, ptr %5, align 4, !tbaa !3
  store i32 %9, ptr @seiHasSceneInformation, align 4, !tbaa !3
  %10 = load i32, ptr %6, align 4, !tbaa !3
  store i32 %10, ptr @seiSceneInformation, align 8, !tbaa !98
  %11 = load i32, ptr %7, align 4, !tbaa !3
  store i32 %11, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 1), align 4, !tbaa !100
  %12 = load i32, ptr %7, align 4, !tbaa !3
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, ptr %8, align 4, !tbaa !3
  store i32 %15, ptr getelementptr inbounds nuw (%struct.scene_information_struct, ptr @seiSceneInformation, i32 0, i32 2), align 8, !tbaa !101
  br label %16

16:                                               ; preds = %14, %4
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitPanScanRectInfo() #0 {
  %1 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %1, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.11)
  br label %5

5:                                                ; preds = %4, %0
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 9
  store ptr %6, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %10 = getelementptr inbounds nuw %struct.Bitstream, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str.12)
  br label %14

14:                                               ; preds = %13, %5
  call void @ClearPanScanRectInfoPayload()
  store i32 0, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 1), align 4, !tbaa !106
  store i32 0, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 2), align 8, !tbaa !107
  store i32 0, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 3), align 4, !tbaa !108
  store i32 0, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 4), align 8, !tbaa !109
  ret void
}

; Function Attrs: nounwind
define dso_local void @ClearPanScanRectInfoPayload() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %2 = getelementptr inbounds nuw %struct.Bitstream, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 65496, i1 false)
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 1
  store i32 8, ptr %5, align 4, !tbaa !50
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %7 = getelementptr inbounds nuw %struct.Bitstream, ptr %6, i32 0, i32 0
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %9 = getelementptr inbounds nuw %struct.Bitstream, ptr %8, i32 0, i32 2
  store i8 0, ptr %9, align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 6), align 8, !tbaa !110
  store i32 1, ptr @seiHasPanScanRectInfo, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdatePanScanRectInfo() #0 {
  store i32 3, ptr @seiPanScanRectInfo, align 8, !tbaa !111
  store i32 10, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 1), align 4, !tbaa !106
  store i32 40, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 2), align 8, !tbaa !107
  store i32 20, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 3), align 4, !tbaa !108
  store i32 32, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 4), align 8, !tbaa !109
  store i32 1, ptr @seiHasPanScanRectInfo, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizePanScanRectInfo() #0 {
  %1 = alloca %struct.syntaxelement, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #7
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  store ptr %3, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 0
  store i32 0, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 7
  store ptr @ue_linfo, ptr %5, align 8, !tbaa !58
  %6 = load i32, ptr @seiPanScanRectInfo, align 8, !tbaa !111
  %7 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4, !tbaa !59
  %8 = load ptr, ptr %2, align 8, !tbaa !16
  %9 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %1, ptr noundef %8)
  %10 = load i32, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 1), align 4, !tbaa !106
  %11 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 1
  store i32 %10, ptr %11, align 4, !tbaa !59
  %12 = load ptr, ptr %2, align 8, !tbaa !16
  %13 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %1, ptr noundef %12)
  %14 = load i32, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 2), align 8, !tbaa !107
  %15 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !59
  %16 = load ptr, ptr %2, align 8, !tbaa !16
  %17 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %1, ptr noundef %16)
  %18 = load i32, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 3), align 4, !tbaa !108
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 1
  store i32 %18, ptr %19, align 4, !tbaa !59
  %20 = load ptr, ptr %2, align 8, !tbaa !16
  %21 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %1, ptr noundef %20)
  %22 = load i32, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 4), align 8, !tbaa !109
  %23 = getelementptr inbounds nuw %struct.syntaxelement, ptr %1, i32 0, i32 1
  store i32 %22, ptr %23, align 4, !tbaa !59
  %24 = load ptr, ptr %2, align 8, !tbaa !16
  %25 = call signext i32 @writeSyntaxElement2Buf_UVLC(ptr noundef %1, ptr noundef %24)
  %26 = load ptr, ptr %2, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw %struct.Bitstream, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = icmp ne i32 %28, 8
  br i1 %29, label %30, label %78

30:                                               ; preds = %0
  %31 = load ptr, ptr %2, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw %struct.Bitstream, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 8, !tbaa !48
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 1
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %32, align 8, !tbaa !48
  %37 = load ptr, ptr %2, align 8, !tbaa !16
  %38 = getelementptr inbounds nuw %struct.Bitstream, ptr %37, i32 0, i32 2
  %39 = load i8, ptr %38, align 8, !tbaa !48
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, 1
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %38, align 8, !tbaa !48
  %43 = load ptr, ptr %2, align 8, !tbaa !16
  %44 = getelementptr inbounds nuw %struct.Bitstream, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !50
  %47 = load ptr, ptr %2, align 8, !tbaa !16
  %48 = getelementptr inbounds nuw %struct.Bitstream, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %30
  %52 = load ptr, ptr %2, align 8, !tbaa !16
  %53 = getelementptr inbounds nuw %struct.Bitstream, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = load ptr, ptr %2, align 8, !tbaa !16
  %56 = getelementptr inbounds nuw %struct.Bitstream, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 8, !tbaa !48
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, %54
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %56, align 8, !tbaa !48
  br label %61

61:                                               ; preds = %51, %30
  %62 = load ptr, ptr %2, align 8, !tbaa !16
  %63 = getelementptr inbounds nuw %struct.Bitstream, ptr %62, i32 0, i32 1
  store i32 8, ptr %63, align 4, !tbaa !50
  %64 = load ptr, ptr %2, align 8, !tbaa !16
  %65 = getelementptr inbounds nuw %struct.Bitstream, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !48
  %67 = load ptr, ptr %2, align 8, !tbaa !16
  %68 = getelementptr inbounds nuw %struct.Bitstream, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = load ptr, ptr %2, align 8, !tbaa !16
  %71 = getelementptr inbounds nuw %struct.Bitstream, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 8, !tbaa !46
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !46
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %69, i64 %74
  store i8 %66, ptr %75, align 1, !tbaa !43
  %76 = load ptr, ptr %2, align 8, !tbaa !16
  %77 = getelementptr inbounds nuw %struct.Bitstream, ptr %76, i32 0, i32 2
  store i8 0, ptr %77, align 8, !tbaa !48
  br label %78

78:                                               ; preds = %61, %0
  %79 = load ptr, ptr %2, align 8, !tbaa !16
  %80 = getelementptr inbounds nuw %struct.Bitstream, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8, !tbaa !46
  store i32 %81, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 6), align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @ClosePanScanRectInfo() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  call void @free(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds nuw (%struct.panscanrect_information_struct, ptr @seiPanScanRectInfo, i32 0, i32 5), align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitUser_data_unregistered() #0 {
  %1 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %1, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.13)
  br label %5

5:                                                ; preds = %4, %0
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 9
  store ptr %6, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %10 = getelementptr inbounds nuw %struct.Bitstream, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str.14)
  br label %14

14:                                               ; preds = %13, %5
  %15 = call noalias ptr @malloc(i64 noundef 65496) #8
  store ptr %15, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  %16 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @no_mem_exit(ptr noundef @.str.15)
  br label %19

19:                                               ; preds = %18, %14
  call void @ClearUser_data_unregistered()
  ret void
}

; Function Attrs: nounwind
define dso_local void @ClearUser_data_unregistered() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %2 = getelementptr inbounds nuw %struct.Bitstream, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 65496, i1 false)
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 1
  store i32 8, ptr %5, align 4, !tbaa !50
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %7 = getelementptr inbounds nuw %struct.Bitstream, ptr %6, i32 0, i32 0
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %9 = getelementptr inbounds nuw %struct.Bitstream, ptr %8, i32 0, i32 2
  store i8 0, ptr %9, align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 3), align 8, !tbaa !115
  %10 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 1), align 8, !tbaa !116
  store i32 1, ptr @seiHasUser_data_unregistered_info, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateUser_data_unregistered() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 7, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %4

4:                                                ; preds = %18, %0
  %5 = load i32, ptr %1, align 4, !tbaa !3
  %6 = load i32, ptr %3, align 4, !tbaa !3
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load i32, ptr %1, align 4, !tbaa !3
  %10 = mul nsw i32 %9, 4
  store i32 %10, ptr %2, align 4, !tbaa !3
  %11 = load i32, ptr %2, align 4, !tbaa !3
  %12 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext 255, i32 noundef signext %11)
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  %15 = load i32, ptr %1, align 4, !tbaa !3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  store i8 %13, ptr %17, align 1, !tbaa !43
  br label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %1, align 4, !tbaa !3
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %1, align 4, !tbaa !3
  br label %4, !llvm.loop !117

21:                                               ; preds = %4
  %22 = load i32, ptr %3, align 4, !tbaa !3
  store i32 %22, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 1), align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @iClip3(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #6 {
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

; Function Attrs: nounwind
define dso_local void @FinalizeUser_data_unregistered() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  store ptr %4, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 0
  store i32 0, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 7
  store ptr @ue_linfo, ptr %6, align 8, !tbaa !58
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %7

7:                                                ; preds = %22, %0
  %8 = load i32, ptr %1, align 4, !tbaa !3
  %9 = load i32, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 1), align 8, !tbaa !116
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  %13 = load i32, ptr %1, align 4, !tbaa !3
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !43
  %17 = sext i8 %16 to i32
  %18 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !78
  %19 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 8, ptr %19, align 4, !tbaa !79
  %20 = load ptr, ptr %3, align 8, !tbaa !16
  %21 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %20)
  br label %22

22:                                               ; preds = %11
  %23 = load i32, ptr %1, align 4, !tbaa !3
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %1, align 4, !tbaa !3
  br label %7, !llvm.loop !118

25:                                               ; preds = %7
  %26 = load ptr, ptr %3, align 8, !tbaa !16
  %27 = getelementptr inbounds nuw %struct.Bitstream, ptr %26, i32 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = icmp ne i32 %28, 8
  br i1 %29, label %30, label %78

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw %struct.Bitstream, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 8, !tbaa !48
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 1
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr %32, align 8, !tbaa !48
  %37 = load ptr, ptr %3, align 8, !tbaa !16
  %38 = getelementptr inbounds nuw %struct.Bitstream, ptr %37, i32 0, i32 2
  %39 = load i8, ptr %38, align 8, !tbaa !48
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, 1
  %42 = trunc i32 %41 to i8
  store i8 %42, ptr %38, align 8, !tbaa !48
  %43 = load ptr, ptr %3, align 8, !tbaa !16
  %44 = getelementptr inbounds nuw %struct.Bitstream, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !50
  %46 = add nsw i32 %45, -1
  store i32 %46, ptr %44, align 4, !tbaa !50
  %47 = load ptr, ptr %3, align 8, !tbaa !16
  %48 = getelementptr inbounds nuw %struct.Bitstream, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %30
  %52 = load ptr, ptr %3, align 8, !tbaa !16
  %53 = getelementptr inbounds nuw %struct.Bitstream, ptr %52, i32 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !50
  %55 = load ptr, ptr %3, align 8, !tbaa !16
  %56 = getelementptr inbounds nuw %struct.Bitstream, ptr %55, i32 0, i32 2
  %57 = load i8, ptr %56, align 8, !tbaa !48
  %58 = zext i8 %57 to i32
  %59 = shl i32 %58, %54
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %56, align 8, !tbaa !48
  br label %61

61:                                               ; preds = %51, %30
  %62 = load ptr, ptr %3, align 8, !tbaa !16
  %63 = getelementptr inbounds nuw %struct.Bitstream, ptr %62, i32 0, i32 1
  store i32 8, ptr %63, align 4, !tbaa !50
  %64 = load ptr, ptr %3, align 8, !tbaa !16
  %65 = getelementptr inbounds nuw %struct.Bitstream, ptr %64, i32 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !48
  %67 = load ptr, ptr %3, align 8, !tbaa !16
  %68 = getelementptr inbounds nuw %struct.Bitstream, ptr %67, i32 0, i32 9
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = load ptr, ptr %3, align 8, !tbaa !16
  %71 = getelementptr inbounds nuw %struct.Bitstream, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 8, !tbaa !46
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !46
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %69, i64 %74
  store i8 %66, ptr %75, align 1, !tbaa !43
  %76 = load ptr, ptr %3, align 8, !tbaa !16
  %77 = getelementptr inbounds nuw %struct.Bitstream, ptr %76, i32 0, i32 2
  store i8 0, ptr %77, align 8, !tbaa !48
  br label %78

78:                                               ; preds = %61, %25
  %79 = load ptr, ptr %3, align 8, !tbaa !16
  %80 = getelementptr inbounds nuw %struct.Bitstream, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8, !tbaa !46
  store i32 %81, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 3), align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseUser_data_unregistered() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  call void @free(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds nuw (%struct.user_data_unregistered_information_struct, ptr @seiUser_data_unregistered, i32 0, i32 2), align 8, !tbaa !112
  %9 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @seiUser_data_unregistered, align 8, !tbaa !114
  call void @free(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitUser_data_registered_itu_t_t35() #0 {
  %1 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %1, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.16)
  br label %5

5:                                                ; preds = %4, %0
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 9
  store ptr %6, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %10 = getelementptr inbounds nuw %struct.Bitstream, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str.17)
  br label %14

14:                                               ; preds = %13, %5
  %15 = call noalias ptr @malloc(i64 noundef 65496) #8
  store ptr %15, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !121
  %16 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @no_mem_exit(ptr noundef @.str.18)
  br label %19

19:                                               ; preds = %18, %14
  call void @ClearUser_data_registered_itu_t_t35()
  ret void
}

; Function Attrs: nounwind
define dso_local void @ClearUser_data_registered_itu_t_t35() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %2 = getelementptr inbounds nuw %struct.Bitstream, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 65496, i1 false)
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 1
  store i32 8, ptr %5, align 4, !tbaa !50
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %7 = getelementptr inbounds nuw %struct.Bitstream, ptr %6, i32 0, i32 0
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %9 = getelementptr inbounds nuw %struct.Bitstream, ptr %8, i32 0, i32 2
  store i8 0, ptr %9, align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 5), align 8, !tbaa !122
  %10 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr align 1 %10, i8 0, i64 65496, i1 false)
  store i32 0, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 1), align 8, !tbaa !123
  store i32 0, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4, !tbaa !124
  store i32 0, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 3), align 8, !tbaa !125
  store i32 1, ptr @seiHasUser_data_registered_itu_t_t35_info, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateUser_data_registered_itu_t_t35() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  store i32 82, ptr %4, align 4, !tbaa !3
  %5 = load i32, ptr %4, align 4, !tbaa !3
  %6 = icmp slt i32 %5, 255
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, ptr %4, align 4, !tbaa !3
  store i32 %8, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4, !tbaa !124
  br label %12

9:                                                ; preds = %0
  store i32 255, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4, !tbaa !124
  %10 = load i32, ptr %4, align 4, !tbaa !3
  %11 = sub nsw i32 %10, 255
  store i32 %11, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 3), align 8, !tbaa !125
  br label %12

12:                                               ; preds = %9, %7
  store i32 7, ptr %3, align 4, !tbaa !3
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %13

13:                                               ; preds = %27, %12
  %14 = load i32, ptr %1, align 4, !tbaa !3
  %15 = load i32, ptr %3, align 4, !tbaa !3
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32, ptr %1, align 4, !tbaa !3
  %19 = mul nsw i32 %18, 3
  store i32 %19, ptr %2, align 4, !tbaa !3
  %20 = load i32, ptr %2, align 4, !tbaa !3
  %21 = call signext i32 @iClip3(i32 noundef signext 0, i32 noundef signext 255, i32 noundef signext %20)
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !121
  %24 = load i32, ptr %1, align 4, !tbaa !3
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %23, i64 %25
  store i8 %22, ptr %26, align 1, !tbaa !43
  br label %27

27:                                               ; preds = %17
  %28 = load i32, ptr %1, align 4, !tbaa !3
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %1, align 4, !tbaa !3
  br label %13, !llvm.loop !126

30:                                               ; preds = %13
  %31 = load i32, ptr %3, align 4, !tbaa !3
  store i32 %31, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 1), align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeUser_data_registered_itu_t_t35() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.syntaxelement, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  store ptr %4, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 0
  store i32 0, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 7
  store ptr @ue_linfo, ptr %6, align 8, !tbaa !58
  %7 = load i32, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4, !tbaa !124
  %8 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %7, ptr %8, align 4, !tbaa !78
  %9 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 8, ptr %9, align 4, !tbaa !79
  %10 = load ptr, ptr %3, align 8, !tbaa !16
  %11 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %10)
  %12 = load i32, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 2), align 4, !tbaa !124
  %13 = icmp eq i32 %12, 255
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 3), align 8, !tbaa !125
  %16 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %15, ptr %16, align 4, !tbaa !78
  %17 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 8, ptr %17, align 4, !tbaa !79
  %18 = load ptr, ptr %3, align 8, !tbaa !16
  %19 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %18)
  br label %20

20:                                               ; preds = %14, %0
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, ptr %1, align 4, !tbaa !3
  %23 = load i32, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 1), align 8, !tbaa !123
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !121
  %27 = load i32, ptr %1, align 4, !tbaa !3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !43
  %31 = sext i8 %30 to i32
  %32 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 5
  store i32 %31, ptr %32, align 4, !tbaa !78
  %33 = getelementptr inbounds nuw %struct.syntaxelement, ptr %2, i32 0, i32 3
  store i32 8, ptr %33, align 4, !tbaa !79
  %34 = load ptr, ptr %3, align 8, !tbaa !16
  %35 = call signext i32 @writeSyntaxElement2Buf_Fixed(ptr noundef %2, ptr noundef %34)
  br label %36

36:                                               ; preds = %25
  %37 = load i32, ptr %1, align 4, !tbaa !3
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %1, align 4, !tbaa !3
  br label %21, !llvm.loop !127

39:                                               ; preds = %21
  %40 = load ptr, ptr %3, align 8, !tbaa !16
  %41 = getelementptr inbounds nuw %struct.Bitstream, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = icmp ne i32 %42, 8
  br i1 %43, label %44, label %92

44:                                               ; preds = %39
  %45 = load ptr, ptr %3, align 8, !tbaa !16
  %46 = getelementptr inbounds nuw %struct.Bitstream, ptr %45, i32 0, i32 2
  %47 = load i8, ptr %46, align 8, !tbaa !48
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 1
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %46, align 8, !tbaa !48
  %51 = load ptr, ptr %3, align 8, !tbaa !16
  %52 = getelementptr inbounds nuw %struct.Bitstream, ptr %51, i32 0, i32 2
  %53 = load i8, ptr %52, align 8, !tbaa !48
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 1
  %56 = trunc i32 %55 to i8
  store i8 %56, ptr %52, align 8, !tbaa !48
  %57 = load ptr, ptr %3, align 8, !tbaa !16
  %58 = getelementptr inbounds nuw %struct.Bitstream, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !50
  %60 = add nsw i32 %59, -1
  store i32 %60, ptr %58, align 4, !tbaa !50
  %61 = load ptr, ptr %3, align 8, !tbaa !16
  %62 = getelementptr inbounds nuw %struct.Bitstream, ptr %61, i32 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %44
  %66 = load ptr, ptr %3, align 8, !tbaa !16
  %67 = getelementptr inbounds nuw %struct.Bitstream, ptr %66, i32 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = load ptr, ptr %3, align 8, !tbaa !16
  %70 = getelementptr inbounds nuw %struct.Bitstream, ptr %69, i32 0, i32 2
  %71 = load i8, ptr %70, align 8, !tbaa !48
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, %68
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %70, align 8, !tbaa !48
  br label %75

75:                                               ; preds = %65, %44
  %76 = load ptr, ptr %3, align 8, !tbaa !16
  %77 = getelementptr inbounds nuw %struct.Bitstream, ptr %76, i32 0, i32 1
  store i32 8, ptr %77, align 4, !tbaa !50
  %78 = load ptr, ptr %3, align 8, !tbaa !16
  %79 = getelementptr inbounds nuw %struct.Bitstream, ptr %78, i32 0, i32 2
  %80 = load i8, ptr %79, align 8, !tbaa !48
  %81 = load ptr, ptr %3, align 8, !tbaa !16
  %82 = getelementptr inbounds nuw %struct.Bitstream, ptr %81, i32 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !49
  %84 = load ptr, ptr %3, align 8, !tbaa !16
  %85 = getelementptr inbounds nuw %struct.Bitstream, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 8, !tbaa !46
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !46
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, ptr %83, i64 %88
  store i8 %80, ptr %89, align 1, !tbaa !43
  %90 = load ptr, ptr %3, align 8, !tbaa !16
  %91 = getelementptr inbounds nuw %struct.Bitstream, ptr %90, i32 0, i32 2
  store i8 0, ptr %91, align 8, !tbaa !48
  br label %92

92:                                               ; preds = %75, %39
  %93 = load ptr, ptr %3, align 8, !tbaa !16
  %94 = getelementptr inbounds nuw %struct.Bitstream, ptr %93, i32 0, i32 0
  %95 = load i32, ptr %94, align 8, !tbaa !46
  store i32 %95, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 5), align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #7
  ret void
}

; Function Attrs: nounwind
define dso_local void @CloseUser_data_registered_itu_t_t35() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  call void @free(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds nuw (%struct.user_data_registered_itu_t_t35_information_struct, ptr @seiUser_data_registered_itu_t_t35, i32 0, i32 4), align 8, !tbaa !119
  %9 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !121
  %10 = icmp ne ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load ptr, ptr @seiUser_data_registered_itu_t_t35, align 8, !tbaa !121
  call void @free(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind
define dso_local void @InitRandomAccess() #0 {
  %1 = call noalias ptr @malloc(i64 noundef 48) #8
  store ptr %1, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @no_mem_exit(ptr noundef @.str.19)
  br label %5

5:                                                ; preds = %4, %0
  %6 = call noalias ptr @malloc(i64 noundef 65496) #8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %8 = getelementptr inbounds nuw %struct.Bitstream, ptr %7, i32 0, i32 9
  store ptr %6, ptr %8, align 8, !tbaa !49
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %10 = getelementptr inbounds nuw %struct.Bitstream, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  call void @no_mem_exit(ptr noundef @.str.20)
  br label %14

14:                                               ; preds = %13, %5
  call void @ClearRandomAccess()
  ret void
}

; Function Attrs: nounwind
define dso_local void @ClearRandomAccess() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %2 = getelementptr inbounds nuw %struct.Bitstream, ptr %1, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 0, i64 65496, i1 false)
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 1
  store i32 8, ptr %5, align 4, !tbaa !50
  %6 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %7 = getelementptr inbounds nuw %struct.Bitstream, ptr %6, i32 0, i32 0
  store i32 0, ptr %7, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %9 = getelementptr inbounds nuw %struct.Bitstream, ptr %8, i32 0, i32 2
  store i8 0, ptr %9, align 8, !tbaa !48
  store i32 0, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 5), align 8, !tbaa !130
  store i32 0, ptr @seiRecoveryPoint, align 8, !tbaa !131
  store i8 0, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 2), align 1, !tbaa !132
  store i8 0, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 1), align 4, !tbaa !133
  store i32 0, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind
define dso_local void @UpdateRandomAccess() #0 {
  %1 = load ptr, ptr @img, align 8, !tbaa !16
  %2 = getelementptr inbounds nuw %struct.ImageParameters, ptr %1, i32 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !24
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, ptr @seiRecoveryPoint, align 8, !tbaa !131
  store i8 1, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 1), align 4, !tbaa !133
  store i8 0, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 2), align 1, !tbaa !132
  store i32 1, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !3
  br label %7

6:                                                ; preds = %0
  store i32 0, ptr @seiHasRecoveryPoint_info, align 4, !tbaa !3
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind
define dso_local void @FinalizeRandomAccess() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  store ptr %2, ptr %1, align 8, !tbaa !16
  %3 = load i32, ptr @seiRecoveryPoint, align 8, !tbaa !131
  %4 = load ptr, ptr %1, align 8, !tbaa !16
  %5 = call signext i32 @ue_v(ptr noundef @.str.21, i32 noundef signext %3, ptr noundef %4)
  %6 = load i8, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 1), align 4, !tbaa !133
  %7 = zext i8 %6 to i32
  %8 = load ptr, ptr %1, align 8, !tbaa !16
  %9 = call signext i32 @u_1(ptr noundef @.str.22, i32 noundef signext %7, ptr noundef %8)
  %10 = load i8, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 2), align 1, !tbaa !132
  %11 = zext i8 %10 to i32
  %12 = load ptr, ptr %1, align 8, !tbaa !16
  %13 = call signext i32 @u_1(ptr noundef @.str.23, i32 noundef signext %11, ptr noundef %12)
  %14 = load i8, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 3), align 2, !tbaa !134
  %15 = zext i8 %14 to i32
  %16 = load ptr, ptr %1, align 8, !tbaa !16
  %17 = call signext i32 @u_v(i32 noundef signext 2, ptr noundef @.str.24, i32 noundef signext %15, ptr noundef %16)
  %18 = load ptr, ptr %1, align 8, !tbaa !16
  %19 = getelementptr inbounds nuw %struct.Bitstream, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp ne i32 %20, 8
  br i1 %21, label %22, label %70

22:                                               ; preds = %0
  %23 = load ptr, ptr %1, align 8, !tbaa !16
  %24 = getelementptr inbounds nuw %struct.Bitstream, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 8, !tbaa !48
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 1
  %28 = trunc i32 %27 to i8
  store i8 %28, ptr %24, align 8, !tbaa !48
  %29 = load ptr, ptr %1, align 8, !tbaa !16
  %30 = getelementptr inbounds nuw %struct.Bitstream, ptr %29, i32 0, i32 2
  %31 = load i8, ptr %30, align 8, !tbaa !48
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, 1
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %30, align 8, !tbaa !48
  %35 = load ptr, ptr %1, align 8, !tbaa !16
  %36 = getelementptr inbounds nuw %struct.Bitstream, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %36, align 4, !tbaa !50
  %39 = load ptr, ptr %1, align 8, !tbaa !16
  %40 = getelementptr inbounds nuw %struct.Bitstream, ptr %39, i32 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %22
  %44 = load ptr, ptr %1, align 8, !tbaa !16
  %45 = getelementptr inbounds nuw %struct.Bitstream, ptr %44, i32 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !50
  %47 = load ptr, ptr %1, align 8, !tbaa !16
  %48 = getelementptr inbounds nuw %struct.Bitstream, ptr %47, i32 0, i32 2
  %49 = load i8, ptr %48, align 8, !tbaa !48
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, %46
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %48, align 8, !tbaa !48
  br label %53

53:                                               ; preds = %43, %22
  %54 = load ptr, ptr %1, align 8, !tbaa !16
  %55 = getelementptr inbounds nuw %struct.Bitstream, ptr %54, i32 0, i32 1
  store i32 8, ptr %55, align 4, !tbaa !50
  %56 = load ptr, ptr %1, align 8, !tbaa !16
  %57 = getelementptr inbounds nuw %struct.Bitstream, ptr %56, i32 0, i32 2
  %58 = load i8, ptr %57, align 8, !tbaa !48
  %59 = load ptr, ptr %1, align 8, !tbaa !16
  %60 = getelementptr inbounds nuw %struct.Bitstream, ptr %59, i32 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !49
  %62 = load ptr, ptr %1, align 8, !tbaa !16
  %63 = getelementptr inbounds nuw %struct.Bitstream, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !46
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !46
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, ptr %61, i64 %66
  store i8 %58, ptr %67, align 1, !tbaa !43
  %68 = load ptr, ptr %1, align 8, !tbaa !16
  %69 = getelementptr inbounds nuw %struct.Bitstream, ptr %68, i32 0, i32 2
  store i8 0, ptr %69, align 8, !tbaa !48
  br label %70

70:                                               ; preds = %53, %0
  %71 = load ptr, ptr %1, align 8, !tbaa !16
  %72 = getelementptr inbounds nuw %struct.Bitstream, ptr %71, i32 0, i32 0
  %73 = load i32, ptr %72, align 8, !tbaa !46
  store i32 %73, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 5), align 8, !tbaa !130
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret void
}

declare signext i32 @ue_v(ptr noundef, i32 noundef signext, ptr noundef) #3

declare signext i32 @u_1(ptr noundef, i32 noundef signext, ptr noundef) #3

declare signext i32 @u_v(i32 noundef signext, ptr noundef, i32 noundef signext, ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @CloseRandomAccess() #0 {
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %2 = icmp ne ptr %1, null
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  %5 = getelementptr inbounds nuw %struct.Bitstream, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  call void @free(ptr noundef %6) #7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  call void @free(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %3, %0
  store ptr null, ptr getelementptr inbounds nuw (%struct.recovery_point_information_struct, ptr @seiRecoveryPoint, i32 0, i32 4), align 8, !tbaa !128
  ret void
}

; Function Attrs: inlinehint nounwind
define internal signext i32 @imax(i32 noundef signext %0, i32 noundef signext %1) #6 {
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

; Function Attrs: inlinehint nounwind
define internal signext i32 @imin(i32 noundef signext %0, i32 noundef signext %1) #6 {
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

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 16}
!8 = !{!"", !4, i64 0, !4, i64 4, !5, i64 8, !9, i64 16}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !5, i64 8}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !10, i64 16}
!15 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !10, i64 16}
!16 = !{!10, !10, i64 0}
!17 = !{!18, !4, i64 4736}
!18 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !4, i64 264, !4, i64 268, !4, i64 272, !4, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !4, i64 1560, !4, i64 1564, !4, i64 1568, !4, i64 1572, !4, i64 1576, !4, i64 1580, !5, i64 1584, !4, i64 2084, !4, i64 2088, !4, i64 2092, !4, i64 2096, !4, i64 2100, !4, i64 2104, !4, i64 2108, !4, i64 2112, !4, i64 2116, !4, i64 2120, !4, i64 2124, !4, i64 2128, !4, i64 2132, !4, i64 2136, !4, i64 2140, !4, i64 2144, !4, i64 2148, !4, i64 2152, !4, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !4, i64 2928, !4, i64 2932, !4, i64 2936, !4, i64 2940, !4, i64 2944, !4, i64 2948, !4, i64 2952, !4, i64 2956, !4, i64 2960, !4, i64 2964, !4, i64 2968, !4, i64 2972, !5, i64 2976, !4, i64 4000, !4, i64 4004, !4, i64 4008, !4, i64 4012, !4, i64 4016, !4, i64 4020, !4, i64 4024, !4, i64 4028, !4, i64 4032, !4, i64 4036, !4, i64 4040, !4, i64 4044, !4, i64 4048, !4, i64 4052, !4, i64 4056, !4, i64 4060, !4, i64 4064, !4, i64 4068, !4, i64 4072, !4, i64 4076, !19, i64 4080, !4, i64 4088, !4, i64 4092, !4, i64 4096, !4, i64 4100, !4, i64 4104, !4, i64 4108, !4, i64 4112, !4, i64 4116, !4, i64 4120, !4, i64 4124, !4, i64 4128, !4, i64 4132, !4, i64 4136, !4, i64 4140, !4, i64 4144, !4, i64 4148, !4, i64 4152, !4, i64 4156, !4, i64 4160, !4, i64 4164, !4, i64 4168, !4, i64 4172, !4, i64 4176, !4, i64 4180, !4, i64 4184, !4, i64 4188, !5, i64 4192, !5, i64 4448, !4, i64 4704, !4, i64 4708, !4, i64 4712, !4, i64 4716, !4, i64 4720, !4, i64 4724, !4, i64 4728, !4, i64 4732, !4, i64 4736, !4, i64 4740, !4, i64 4744, !4, i64 4748, !4, i64 4752, !4, i64 4756, !4, i64 4760, !4, i64 4764, !4, i64 4768, !4, i64 4772, !5, i64 4776, !4, i64 5032, !4, i64 5036, !20, i64 5040, !20, i64 5048, !9, i64 5056, !20, i64 5064, !4, i64 5072, !4, i64 5076, !4, i64 5080, !4, i64 5084, !4, i64 5088, !4, i64 5092, !4, i64 5096, !4, i64 5100, !4, i64 5104, !4, i64 5108, !4, i64 5112, !4, i64 5116, !4, i64 5120, !4, i64 5124, !4, i64 5128, !4, i64 5132, !4, i64 5136, !19, i64 5144, !19, i64 5152, !19, i64 5160, !5, i64 5168, !4, i64 5208, !5, i64 5212, !4, i64 5244, !4, i64 5248, !4, i64 5252, !4, i64 5256, !4, i64 5260, !4, i64 5264, !4, i64 5268, !4, i64 5272, !4, i64 5276, !4, i64 5280, !4, i64 5284, !4, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !4, i64 5648, !4, i64 5652, !4, i64 5656, !4, i64 5660, !5, i64 5664, !5, i64 5704, !4, i64 5744, !4, i64 5748, !4, i64 5752, !4, i64 5756, !4, i64 5760, !4, i64 5764, !4, i64 5768, !4, i64 5772, !4, i64 5776, !5, i64 5780, !4, i64 5792}
!19 = !{!"double", !5, i64 0}
!20 = !{!"p1 int", !10, i64 0}
!21 = !{!8, !4, i64 4}
!22 = !{!8, !4, i64 0}
!23 = distinct !{!23, !13}
!24 = !{!25, !4, i64 20}
!25 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !26, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !27, i64 128, !27, i64 136, !4, i64 144, !29, i64 152, !4, i64 160, !4, i64 164, !4, i64 168, !4, i64 172, !4, i64 176, !4, i64 180, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !4, i64 200, !4, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !31, i64 14160, !29, i64 14168, !29, i64 14176, !29, i64 14184, !31, i64 14192, !31, i64 14200, !10, i64 14208, !10, i64 14216, !33, i64 14224, !20, i64 14232, !20, i64 14240, !4, i64 14248, !4, i64 14252, !4, i64 14256, !4, i64 14260, !5, i64 14264, !4, i64 14328, !4, i64 14332, !4, i64 14336, !4, i64 14340, !4, i64 14344, !19, i64 14352, !4, i64 14360, !4, i64 14364, !4, i64 14368, !4, i64 14372, !34, i64 14376, !34, i64 14384, !34, i64 14392, !34, i64 14400, !5, i64 14408, !4, i64 14440, !4, i64 14444, !4, i64 14448, !4, i64 14452, !4, i64 14456, !4, i64 14460, !4, i64 14464, !4, i64 14468, !5, i64 14472, !4, i64 15240, !4, i64 15244, !4, i64 15248, !4, i64 15252, !4, i64 15256, !4, i64 15260, !4, i64 15264, !4, i64 15268, !4, i64 15272, !4, i64 15276, !4, i64 15280, !4, i64 15284, !4, i64 15288, !5, i64 15292, !4, i64 15296, !4, i64 15300, !5, i64 15304, !4, i64 15312, !4, i64 15316, !4, i64 15320, !4, i64 15324, !4, i64 15328, !4, i64 15332, !4, i64 15336, !4, i64 15340, !4, i64 15344, !4, i64 15348, !4, i64 15352, !4, i64 15356, !4, i64 15360, !4, i64 15364, !4, i64 15368, !4, i64 15372, !37, i64 15376, !4, i64 15384, !4, i64 15388, !4, i64 15392, !4, i64 15396, !4, i64 15400, !4, i64 15404, !4, i64 15408, !4, i64 15412, !4, i64 15416, !4, i64 15420, !4, i64 15424, !4, i64 15428, !4, i64 15432, !4, i64 15436, !4, i64 15440, !4, i64 15444, !4, i64 15448, !4, i64 15452, !4, i64 15456, !4, i64 15460, !4, i64 15464, !4, i64 15468, !4, i64 15472, !38, i64 15480, !39, i64 15488, !29, i64 15496, !38, i64 15504, !4, i64 15512, !4, i64 15516, !4, i64 15520, !4, i64 15524, !4, i64 15528, !4, i64 15532, !4, i64 15536, !4, i64 15540, !4, i64 15544, !4, i64 15548, !5, i64 15552, !5, i64 15576, !4, i64 15584, !4, i64 15588, !40, i64 15592, !4, i64 15596, !4, i64 15600, !4, i64 15604, !4, i64 15608, !4, i64 15612}
!26 = !{!"float", !5, i64 0}
!27 = !{!"p2 omnipotent char", !28, i64 0}
!28 = !{!"any p2 pointer", !10, i64 0}
!29 = !{!"p3 int", !30, i64 0}
!30 = !{!"any p3 pointer", !28, i64 0}
!31 = !{!"p4 int", !32, i64 0}
!32 = !{!"any p4 pointer", !30, i64 0}
!33 = !{!"p1 _ZTS10macroblock", !10, i64 0}
!34 = !{!"p6 short", !35, i64 0}
!35 = !{!"any p6 pointer", !36, i64 0}
!36 = !{!"any p5 pointer", !32, i64 0}
!37 = !{!"p1 _ZTS18DecRefPicMarking_s", !10, i64 0}
!38 = !{!"p2 double", !28, i64 0}
!39 = !{!"p3 double", !30, i64 0}
!40 = !{!"short", !5, i64 0}
!41 = !{!25, !4, i64 0}
!42 = !{!9, !9, i64 0}
!43 = !{!5, !5, i64 0}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = !{!47, !4, i64 0}
!47 = !{!"", !4, i64 0, !4, i64 4, !5, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !4, i64 24, !4, i64 28, !9, i64 32, !4, i64 40}
!48 = !{!47, !5, i64 8}
!49 = !{!47, !9, i64 32}
!50 = !{!47, !4, i64 4}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13}
!54 = !{!15, !4, i64 4}
!55 = !{!15, !4, i64 0}
!56 = !{!57, !4, i64 0}
!57 = !{!"syntaxelement", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !10, i64 32}
!58 = !{!57, !10, i64 32}
!59 = !{!57, !4, i64 4}
!60 = !{!27, !27, i64 0}
!61 = !{!25, !4, i64 68}
!62 = !{!25, !4, i64 52}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = !{!15, !4, i64 8}
!68 = !{!69, !4, i64 0}
!69 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !10, i64 24}
!70 = !{!40, !40, i64 0}
!71 = !{!69, !4, i64 4}
!72 = !{!69, !4, i64 8}
!73 = !{!69, !4, i64 12}
!74 = !{!69, !4, i64 16}
!75 = !{!69, !10, i64 24}
!76 = !{!18, !4, i64 8}
!77 = !{!18, !4, i64 2096}
!78 = !{!57, !4, i64 20}
!79 = !{!57, !4, i64 12}
!80 = !{!81, !4, i64 16}
!81 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 16, !4, i64 20}
!82 = distinct !{!82, !13}
!83 = !{!81, !4, i64 20}
!84 = distinct !{!84, !13}
!85 = !{!86, !10, i64 72}
!86 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !5, i64 32, !5, i64 52, !10, i64 72, !4, i64 80}
!87 = !{!25, !4, i64 15248}
!88 = !{!86, !4, i64 0}
!89 = !{!86, !4, i64 4}
!90 = !{!86, !4, i64 8}
!91 = !{!86, !4, i64 16}
!92 = !{!86, !4, i64 28}
!93 = !{!86, !4, i64 80}
!94 = !{!86, !4, i64 20}
!95 = !{!86, !4, i64 24}
!96 = !{!86, !4, i64 12}
!97 = distinct !{!97, !13}
!98 = !{!99, !4, i64 0}
!99 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !10, i64 16, !4, i64 24}
!100 = !{!99, !4, i64 4}
!101 = !{!99, !4, i64 8}
!102 = !{!99, !10, i64 16}
!103 = !{!99, !4, i64 24}
!104 = !{!105, !10, i64 24}
!105 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !10, i64 24, !4, i64 32}
!106 = !{!105, !4, i64 4}
!107 = !{!105, !4, i64 8}
!108 = !{!105, !4, i64 12}
!109 = !{!105, !4, i64 16}
!110 = !{!105, !4, i64 32}
!111 = !{!105, !4, i64 0}
!112 = !{!113, !10, i64 16}
!113 = !{!"", !9, i64 0, !4, i64 8, !10, i64 16, !4, i64 24}
!114 = !{!113, !9, i64 0}
!115 = !{!113, !4, i64 24}
!116 = !{!113, !4, i64 8}
!117 = distinct !{!117, !13}
!118 = distinct !{!118, !13}
!119 = !{!120, !10, i64 24}
!120 = !{!"", !9, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !10, i64 24, !4, i64 32}
!121 = !{!120, !9, i64 0}
!122 = !{!120, !4, i64 32}
!123 = !{!120, !4, i64 8}
!124 = !{!120, !4, i64 12}
!125 = !{!120, !4, i64 16}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = !{!129, !10, i64 8}
!129 = !{!"", !4, i64 0, !5, i64 4, !5, i64 5, !5, i64 6, !10, i64 8, !4, i64 16}
!130 = !{!129, !4, i64 16}
!131 = !{!129, !4, i64 0}
!132 = !{!129, !5, i64 5}
!133 = !{!129, !5, i64 4}
!134 = !{!129, !5, i64 6}
