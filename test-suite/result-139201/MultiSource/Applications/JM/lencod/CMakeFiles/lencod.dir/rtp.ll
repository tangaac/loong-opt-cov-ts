; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/rtp.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/rtp.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RTPpacket_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.NALU_t = type { i32, i32, i32, i32, i32, i32, ptr }

@CurrentRTPTimestamp = dso_local global i32 0, align 4
@CurrentRTPSequenceNumber = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-2\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"RTPWriteNALU-3\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Cannot compose RTP packet, exit\0A\00", align 1
@f = common dso_local global ptr null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Cannot write %d bytes of RTP packet to outfile, exit\0A\00", align 1
@RTPUpdateTimestamp.oldtr = internal global i32 -1, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Fatal: cannot open bitstream file '%s', exit (-1)\0A\00", align 1
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

; Function Attrs: nounwind
define dso_local signext i32 @ComposeRTPPacket(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr %4) #7
  %5 = load ptr, ptr %2, align 8, !tbaa !3
  %6 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 8, !tbaa !7
  %8 = and i32 %7, 3
  %9 = shl i32 %8, 6
  %10 = load ptr, ptr %2, align 8, !tbaa !3
  %11 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = and i32 %12, 1
  %14 = shl i32 %13, 5
  %15 = or i32 %9, %14
  %16 = load ptr, ptr %2, align 8, !tbaa !3
  %17 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !12
  %19 = and i32 %18, 1
  %20 = shl i32 %19, 4
  %21 = or i32 %15, %20
  %22 = load ptr, ptr %2, align 8, !tbaa !3
  %23 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !13
  %25 = and i32 %24, 15
  %26 = shl i32 %25, 0
  %27 = or i32 %21, %26
  %28 = trunc i32 %27 to i8
  %29 = load ptr, ptr %2, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %29, i32 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !14
  %32 = getelementptr inbounds i8, ptr %31, i64 0
  store i8 %28, ptr %32, align 1, !tbaa !15
  %33 = load ptr, ptr %2, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !16
  %36 = and i32 %35, 1
  %37 = shl i32 %36, 7
  %38 = load ptr, ptr %2, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %38, i32 0, i32 5
  %40 = load i32, ptr %39, align 4, !tbaa !17
  %41 = and i32 %40, 127
  %42 = shl i32 %41, 0
  %43 = or i32 %37, %42
  %44 = trunc i32 %43 to i8
  %45 = load ptr, ptr %2, align 8, !tbaa !3
  %46 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %45, i32 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !14
  %48 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %44, ptr %48, align 1, !tbaa !15
  %49 = load ptr, ptr %2, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %49, i32 0, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !18
  %52 = trunc i32 %51 to i16
  %53 = call zeroext i16 @__bswap_16(i16 noundef zeroext %52)
  store i16 %53, ptr %4, align 2, !tbaa !19
  %54 = load ptr, ptr %2, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %54, i32 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !14
  %57 = getelementptr inbounds i8, ptr %56, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 2 %4, i64 2, i1 false)
  %58 = load ptr, ptr %2, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %58, i32 0, i32 7
  %60 = load i32, ptr %59, align 4, !tbaa !21
  %61 = call signext i32 @__bswap_32(i32 noundef signext %60)
  store i32 %61, ptr %3, align 4, !tbaa !22
  %62 = load ptr, ptr %2, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %62, i32 0, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  %65 = getelementptr inbounds i8, ptr %64, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 4 %3, i64 4, i1 false)
  %66 = load ptr, ptr %2, align 8, !tbaa !3
  %67 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %66, i32 0, i32 8
  %68 = load i32, ptr %67, align 8, !tbaa !23
  %69 = call signext i32 @__bswap_32(i32 noundef signext %68)
  store i32 %69, ptr %3, align 4, !tbaa !22
  %70 = load ptr, ptr %2, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %70, i32 0, i32 11
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = getelementptr inbounds i8, ptr %72, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 4 %3, i64 4, i1 false)
  %74 = load ptr, ptr %2, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %74, i32 0, i32 11
  %76 = load ptr, ptr %75, align 8, !tbaa !14
  %77 = getelementptr inbounds i8, ptr %76, i64 12
  %78 = load ptr, ptr %2, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %78, i32 0, i32 9
  %80 = load ptr, ptr %79, align 8, !tbaa !24
  %81 = load ptr, ptr %2, align 8, !tbaa !3
  %82 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %81, i32 0, i32 10
  %83 = load i32, ptr %82, align 8, !tbaa !25
  %84 = zext i32 %83 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %77, ptr align 1 %80, i64 %84, i1 false)
  %85 = load ptr, ptr %2, align 8, !tbaa !3
  %86 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %85, i32 0, i32 10
  %87 = load i32, ptr %86, align 8, !tbaa !25
  %88 = add i32 %87, 12
  %89 = load ptr, ptr %2, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %89, i32 0, i32 12
  store i32 %88, ptr %90, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 2, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint nounwind
define internal zeroext i16 @__bswap_16(i16 noundef zeroext %0) #2 {
  %2 = alloca i16, align 2
  store i16 %0, ptr %2, align 2, !tbaa !19
  %3 = load i16, ptr %2, align 2, !tbaa !19
  %4 = zext i16 %3 to i32
  %5 = ashr i32 %4, 8
  %6 = and i32 %5, 255
  %7 = load i16, ptr %2, align 2, !tbaa !19
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 255
  %10 = shl i32 %9, 8
  %11 = or i32 %6, %10
  %12 = trunc i32 %11 to i16
  ret i16 %12
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint nounwind
define internal signext i32 @__bswap_32(i32 noundef signext %0) #2 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !22
  %3 = load i32, ptr %2, align 4, !tbaa !22
  %4 = and i32 %3, -16777216
  %5 = lshr i32 %4, 24
  %6 = load i32, ptr %2, align 4, !tbaa !22
  %7 = and i32 %6, 16711680
  %8 = lshr i32 %7, 8
  %9 = or i32 %5, %8
  %10 = load i32, ptr %2, align 4, !tbaa !22
  %11 = and i32 %10, 65280
  %12 = shl i32 %11, 8
  %13 = or i32 %9, %12
  %14 = load i32, ptr %2, align 4, !tbaa !22
  %15 = and i32 %14, 255
  %16 = shl i32 %15, 24
  %17 = or i32 %13, %16
  ret i32 %17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @WriteRTPPacket(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  store i32 -1, ptr %6, align 4, !tbaa !22
  %8 = load ptr, ptr %4, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %8, i32 0, i32 12
  %10 = load ptr, ptr %5, align 8, !tbaa !27
  %11 = call i64 @fwrite(ptr noundef %9, i64 noundef 4, i64 noundef 1, ptr noundef %10)
  %12 = icmp ne i64 1, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8, !tbaa !27
  %16 = call i64 @fwrite(ptr noundef %6, i64 noundef 4, i64 noundef 1, ptr noundef %15)
  %17 = icmp ne i64 1, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %32

19:                                               ; preds = %14
  %20 = load ptr, ptr %4, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %20, i32 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = load ptr, ptr %4, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %23, i32 0, i32 12
  %25 = load i32, ptr %24, align 8, !tbaa !26
  %26 = zext i32 %25 to i64
  %27 = load ptr, ptr %5, align 8, !tbaa !27
  %28 = call i64 @fwrite(ptr noundef %22, i64 noundef %26, i64 noundef 1, ptr noundef %27)
  %29 = icmp ne i64 1, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  store i32 -1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %32

32:                                               ; preds = %31, %30, %18, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  %33 = load i32, ptr %3, align 4
  ret i32 %33
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: nounwind
define dso_local signext i32 @WriteRTPNALU(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = load ptr, ptr %2, align 8, !tbaa !3
  %5 = getelementptr inbounds nuw %struct.NALU_t, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !29
  %7 = shl i32 %6, 7
  %8 = load ptr, ptr %2, align 8, !tbaa !3
  %9 = getelementptr inbounds nuw %struct.NALU_t, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !31
  %11 = shl i32 %10, 5
  %12 = or i32 %7, %11
  %13 = load ptr, ptr %2, align 8, !tbaa !3
  %14 = getelementptr inbounds nuw %struct.NALU_t, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !32
  %16 = or i32 %12, %15
  %17 = trunc i32 %16 to i8
  %18 = load ptr, ptr %2, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.NALU_t, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !33
  %21 = getelementptr inbounds i8, ptr %20, i64 0
  store i8 %17, ptr %21, align 1, !tbaa !15
  %22 = call noalias ptr @malloc(i64 noundef 72) #8
  store ptr %22, ptr %3, align 8, !tbaa !3
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  call void @no_mem_exit(ptr noundef @.str)
  br label %25

25:                                               ; preds = %24, %1
  %26 = call noalias ptr @malloc(i64 noundef 65508) #8
  %27 = load ptr, ptr %3, align 8, !tbaa !3
  %28 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %27, i32 0, i32 11
  store ptr %26, ptr %28, align 8, !tbaa !14
  %29 = icmp eq ptr %26, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @no_mem_exit(ptr noundef @.str.1)
  br label %31

31:                                               ; preds = %30, %25
  %32 = call noalias ptr @malloc(i64 noundef 65508) #8
  %33 = load ptr, ptr %3, align 8, !tbaa !3
  %34 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %33, i32 0, i32 9
  store ptr %32, ptr %34, align 8, !tbaa !24
  %35 = icmp eq ptr %32, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @no_mem_exit(ptr noundef @.str.2)
  br label %37

37:                                               ; preds = %36, %31
  %38 = load ptr, ptr %3, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %38, i32 0, i32 0
  store i32 2, ptr %39, align 8, !tbaa !7
  %40 = load ptr, ptr %3, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %40, i32 0, i32 1
  store i32 0, ptr %41, align 4, !tbaa !11
  %42 = load ptr, ptr %3, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %42, i32 0, i32 2
  store i32 0, ptr %43, align 8, !tbaa !12
  %44 = load ptr, ptr %3, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %44, i32 0, i32 3
  store i32 0, ptr %45, align 4, !tbaa !13
  %46 = load ptr, ptr %2, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.NALU_t, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8, !tbaa !34
  %49 = icmp eq i32 %48, 4
  %50 = zext i1 %49 to i32
  %51 = and i32 %50, 1
  %52 = load ptr, ptr %3, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %52, i32 0, i32 4
  store i32 %51, ptr %53, align 8, !tbaa !16
  %54 = load ptr, ptr %3, align 8, !tbaa !3
  %55 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %54, i32 0, i32 5
  store i32 105, ptr %55, align 4, !tbaa !17
  %56 = load i32, ptr @CurrentRTPSequenceNumber, align 4, !tbaa !22
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr @CurrentRTPSequenceNumber, align 4, !tbaa !22
  %58 = load ptr, ptr %3, align 8, !tbaa !3
  %59 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %58, i32 0, i32 6
  store i32 %56, ptr %59, align 8, !tbaa !18
  %60 = load i32, ptr @CurrentRTPTimestamp, align 4, !tbaa !22
  %61 = load ptr, ptr %3, align 8, !tbaa !3
  %62 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %61, i32 0, i32 7
  store i32 %60, ptr %62, align 4, !tbaa !21
  %63 = load ptr, ptr %3, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %63, i32 0, i32 8
  store i32 305419896, ptr %64, align 8, !tbaa !23
  %65 = load ptr, ptr %2, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.NALU_t, ptr %65, i32 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !35
  %68 = load ptr, ptr %3, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %68, i32 0, i32 10
  store i32 %67, ptr %69, align 8, !tbaa !25
  %70 = load ptr, ptr %3, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %70, i32 0, i32 9
  %72 = load ptr, ptr %71, align 8, !tbaa !24
  %73 = load ptr, ptr %2, align 8, !tbaa !3
  %74 = getelementptr inbounds nuw %struct.NALU_t, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 8, !tbaa !33
  %76 = load ptr, ptr %2, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.NALU_t, ptr %76, i32 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !35
  %79 = zext i32 %78 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %75, i64 %79, i1 false)
  %80 = load ptr, ptr %3, align 8, !tbaa !3
  %81 = call signext i32 @ComposeRTPPacket(ptr noundef %80)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %37
  %84 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3)
  call void @exit(i32 noundef signext -1) #9
  unreachable

85:                                               ; preds = %37
  %86 = load ptr, ptr %3, align 8, !tbaa !3
  %87 = load ptr, ptr @f, align 8, !tbaa !27
  %88 = call signext i32 @WriteRTPPacket(ptr noundef %86, ptr noundef %87)
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load ptr, ptr %3, align 8, !tbaa !3
  %92 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %91, i32 0, i32 12
  %93 = load i32, ptr %92, align 8, !tbaa !26
  %94 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef signext %93)
  call void @exit(i32 noundef signext -1) #9
  unreachable

95:                                               ; preds = %85
  %96 = load ptr, ptr %3, align 8, !tbaa !3
  %97 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %96, i32 0, i32 11
  %98 = load ptr, ptr %97, align 8, !tbaa !14
  call void @free(ptr noundef %98) #7
  %99 = load ptr, ptr %3, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.RTPpacket_t, ptr %99, i32 0, i32 9
  %101 = load ptr, ptr %100, align 8, !tbaa !24
  call void @free(ptr noundef %101) #7
  %102 = load ptr, ptr %3, align 8, !tbaa !3
  call void @free(ptr noundef %102) #7
  %103 = load ptr, ptr %2, align 8, !tbaa !3
  %104 = getelementptr inbounds nuw %struct.NALU_t, ptr %103, i32 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !35
  %106 = mul i32 %105, 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret i32 %106
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare void @no_mem_exit(ptr noundef) #4

declare signext i32 @printf(ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef signext) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @RTPUpdateTimestamp(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  %5 = load i32, ptr @RTPUpdateTimestamp.oldtr, align 4, !tbaa !22
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, ptr @CurrentRTPTimestamp, align 4, !tbaa !22
  store i32 0, ptr @RTPUpdateTimestamp.oldtr, align 4, !tbaa !22
  store i32 1, ptr %4, align 4
  br label %23

8:                                                ; preds = %1
  %9 = load i32, ptr %2, align 4, !tbaa !22
  %10 = load i32, ptr @RTPUpdateTimestamp.oldtr, align 4, !tbaa !22
  %11 = sub nsw i32 %9, %10
  store i32 %11, ptr %3, align 4, !tbaa !22
  %12 = load i32, ptr %3, align 4, !tbaa !22
  %13 = icmp slt i32 %12, -10
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, ptr %3, align 4, !tbaa !22
  %16 = add nsw i32 %15, 256
  store i32 %16, ptr %3, align 4, !tbaa !22
  br label %17

17:                                               ; preds = %14, %8
  %18 = load i32, ptr %3, align 4, !tbaa !22
  %19 = mul nsw i32 %18, 1000
  %20 = load i32, ptr @CurrentRTPTimestamp, align 4, !tbaa !22
  %21 = add nsw i32 %20, %19
  store i32 %21, ptr @CurrentRTPTimestamp, align 4, !tbaa !22
  %22 = load i32, ptr %2, align 4, !tbaa !22
  store i32 %22, ptr @RTPUpdateTimestamp.oldtr, align 4, !tbaa !22
  store i32 0, ptr %4, align 4
  br label %23

23:                                               ; preds = %17, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  %24 = load i32, ptr %4, align 4
  switch i32 %24, label %26 [
    i32 0, label %25
    i32 1, label %25
  ]

25:                                               ; preds = %23, %23
  ret void

26:                                               ; preds = %23
  unreachable
}

; Function Attrs: nounwind
define dso_local void @OpenRTPFile(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !36
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = call noalias ptr @fopen64(ptr noundef %3, ptr noundef @.str.5)
  store ptr %4, ptr @f, align 8, !tbaa !27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !36
  %8 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %7)
  call void @exit(i32 noundef signext -1) #9
  unreachable

9:                                                ; preds = %1
  ret void
}

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
define dso_local void @CloseRTPFile() #0 {
  %1 = load ptr, ptr @f, align 8, !tbaa !27
  %2 = call signext i32 @fclose(ptr noundef %1)
  ret void
}

declare signext i32 @fclose(ptr noundef) #4

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !10, i64 40, !9, i64 48, !10, i64 56, !9, i64 64}
!9 = !{!"int", !5, i64 0}
!10 = !{!"p1 omnipotent char", !4, i64 0}
!11 = !{!8, !9, i64 4}
!12 = !{!8, !9, i64 8}
!13 = !{!8, !9, i64 12}
!14 = !{!8, !10, i64 56}
!15 = !{!5, !5, i64 0}
!16 = !{!8, !9, i64 16}
!17 = !{!8, !9, i64 20}
!18 = !{!8, !9, i64 24}
!19 = !{!20, !20, i64 0}
!20 = !{!"short", !5, i64 0}
!21 = !{!8, !9, i64 28}
!22 = !{!9, !9, i64 0}
!23 = !{!8, !9, i64 32}
!24 = !{!8, !10, i64 40}
!25 = !{!8, !9, i64 48}
!26 = !{!8, !9, i64 64}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS8_IO_FILE", !4, i64 0}
!29 = !{!30, !9, i64 20}
!30 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !10, i64 24}
!31 = !{!30, !9, i64 16}
!32 = !{!30, !9, i64 12}
!33 = !{!30, !10, i64 24}
!34 = !{!30, !9, i64 0}
!35 = !{!30, !9, i64 4}
!36 = !{!10, !10, i64 0}
