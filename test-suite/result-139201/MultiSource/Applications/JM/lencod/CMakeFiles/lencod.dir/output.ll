; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/output.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/output.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], [6 x [33 x i64]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [78 x i8] c"writing only to formats of 8, 16 or 32 bit allowed on big endian architecture\00", align 1
@__const.write_out_picture.SubWidthC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 4
@__const.write_out_picture.SubHeightC = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 4
@img = external global ptr, align 8
@input = external global ptr, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"write_out_picture: buf\00", align 1
@out_buffer = common dso_local global ptr null, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"Warning!!! Frame can't fit in DPB. Displayed out of sequence.\0A\00", align 1
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
define dso_local signext i32 @testEndian() #0 {
  %1 = alloca i16, align 2
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr %1) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %2) #6
  store ptr %1, ptr %2, align 8, !tbaa !3
  store i16 1, ptr %1, align 2, !tbaa !8
  %3 = load ptr, ptr %2, align 8, !tbaa !3
  %4 = load i8, ptr %3, align 1, !tbaa !10
  %5 = zext i8 %4 to i32
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr %2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %1) #6
  ret i32 %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local void @img2buf(ptr noundef %0, ptr noundef %1, i32 noundef signext %2, i32 noundef signext %3, i32 noundef signext %4, i32 noundef signext %5, i32 noundef signext %6, i32 noundef signext %7, i32 noundef signext %8) #0 {
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
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
  %24 = alloca i8, align 1
  %25 = alloca i16, align 2
  %26 = alloca i16, align 2
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store ptr %0, ptr %10, align 8, !tbaa !11
  store ptr %1, ptr %11, align 8, !tbaa !3
  store i32 %2, ptr %12, align 4, !tbaa !14
  store i32 %3, ptr %13, align 4, !tbaa !14
  store i32 %4, ptr %14, align 4, !tbaa !14
  store i32 %5, ptr %15, align 4, !tbaa !14
  store i32 %6, ptr %16, align 4, !tbaa !14
  store i32 %7, ptr %17, align 4, !tbaa !14
  store i32 %8, ptr %18, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #6
  %29 = load i32, ptr %12, align 4, !tbaa !14
  %30 = load i32, ptr %15, align 4, !tbaa !14
  %31 = sub nsw i32 %29, %30
  %32 = load i32, ptr %16, align 4, !tbaa !14
  %33 = sub nsw i32 %31, %32
  store i32 %33, ptr %21, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #6
  %34 = load i32, ptr %13, align 4, !tbaa !14
  %35 = load i32, ptr %17, align 4, !tbaa !14
  %36 = sub nsw i32 %34, %35
  %37 = load i32, ptr %18, align 4, !tbaa !14
  %38 = sub nsw i32 %36, %37
  store i32 %38, ptr %22, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #6
  store i32 0, ptr %23, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 1, ptr %24) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %25) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr %26) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #6
  %39 = call signext i32 @testEndian()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %212

41:                                               ; preds = %9
  %42 = load i32, ptr %14, align 4, !tbaa !14
  switch i32 %42, label %210 [
    i32 1, label %43
    i32 2, label %91
    i32 4, label %147
  ]

43:                                               ; preds = %41
  %44 = load i32, ptr %17, align 4, !tbaa !14
  store i32 %44, ptr %19, align 4, !tbaa !14
  br label %45

45:                                               ; preds = %87, %43
  %46 = load i32, ptr %19, align 4, !tbaa !14
  %47 = load i32, ptr %13, align 4, !tbaa !14
  %48 = load i32, ptr %18, align 4, !tbaa !14
  %49 = sub nsw i32 %47, %48
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %45
  %52 = load i32, ptr %15, align 4, !tbaa !14
  store i32 %52, ptr %20, align 4, !tbaa !14
  br label %53

53:                                               ; preds = %83, %51
  %54 = load i32, ptr %20, align 4, !tbaa !14
  %55 = load i32, ptr %12, align 4, !tbaa !14
  %56 = load i32, ptr %16, align 4, !tbaa !14
  %57 = sub nsw i32 %55, %56
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %53
  %60 = load ptr, ptr %10, align 8, !tbaa !11
  %61 = load i32, ptr %19, align 4, !tbaa !14
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %60, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !16
  %65 = load i32, ptr %20, align 4, !tbaa !14
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !8
  %69 = trunc i16 %68 to i8
  store i8 %69, ptr %24, align 1, !tbaa !10
  %70 = load i8, ptr %24, align 1, !tbaa !10
  %71 = load ptr, ptr %11, align 8, !tbaa !3
  %72 = load i32, ptr %20, align 4, !tbaa !14
  %73 = load i32, ptr %15, align 4, !tbaa !14
  %74 = sub nsw i32 %72, %73
  %75 = load i32, ptr %19, align 4, !tbaa !14
  %76 = load i32, ptr %17, align 4, !tbaa !14
  %77 = sub nsw i32 %75, %76
  %78 = load i32, ptr %21, align 4, !tbaa !14
  %79 = mul nsw i32 %77, %78
  %80 = add nsw i32 %74, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, ptr %71, i64 %81
  store i8 %70, ptr %82, align 1, !tbaa !10
  br label %83

83:                                               ; preds = %59
  %84 = load i32, ptr %20, align 4, !tbaa !14
  %85 = add nsw i32 %84, 1
  store i32 %85, ptr %20, align 4, !tbaa !14
  br label %53, !llvm.loop !18

86:                                               ; preds = %53
  br label %87

87:                                               ; preds = %86
  %88 = load i32, ptr %19, align 4, !tbaa !14
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr %19, align 4, !tbaa !14
  br label %45, !llvm.loop !20

90:                                               ; preds = %45
  br label %211

91:                                               ; preds = %41
  %92 = load i32, ptr %17, align 4, !tbaa !14
  store i32 %92, ptr %19, align 4, !tbaa !14
  br label %93

93:                                               ; preds = %143, %91
  %94 = load i32, ptr %19, align 4, !tbaa !14
  %95 = load i32, ptr %13, align 4, !tbaa !14
  %96 = load i32, ptr %18, align 4, !tbaa !14
  %97 = sub nsw i32 %95, %96
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %146

99:                                               ; preds = %93
  %100 = load i32, ptr %15, align 4, !tbaa !14
  store i32 %100, ptr %20, align 4, !tbaa !14
  br label %101

101:                                              ; preds = %139, %99
  %102 = load i32, ptr %20, align 4, !tbaa !14
  %103 = load i32, ptr %12, align 4, !tbaa !14
  %104 = load i32, ptr %16, align 4, !tbaa !14
  %105 = sub nsw i32 %103, %104
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %101
  %108 = load ptr, ptr %10, align 8, !tbaa !11
  %109 = load i32, ptr %19, align 4, !tbaa !14
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !16
  %113 = load i32, ptr %20, align 4, !tbaa !14
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, ptr %112, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !8
  store i16 %116, ptr %25, align 2, !tbaa !8
  %117 = load i16, ptr %25, align 2, !tbaa !8
  %118 = zext i16 %117 to i32
  %119 = ashr i32 %118, 8
  %120 = load i16, ptr %25, align 2, !tbaa !8
  %121 = zext i16 %120 to i32
  %122 = and i32 %121, 255
  %123 = shl i32 %122, 8
  %124 = or i32 %119, %123
  %125 = trunc i32 %124 to i16
  store i16 %125, ptr %26, align 2, !tbaa !8
  %126 = load ptr, ptr %11, align 8, !tbaa !3
  %127 = load i32, ptr %20, align 4, !tbaa !14
  %128 = load i32, ptr %15, align 4, !tbaa !14
  %129 = sub nsw i32 %127, %128
  %130 = load i32, ptr %19, align 4, !tbaa !14
  %131 = load i32, ptr %17, align 4, !tbaa !14
  %132 = sub nsw i32 %130, %131
  %133 = load i32, ptr %21, align 4, !tbaa !14
  %134 = mul nsw i32 %132, %133
  %135 = add nsw i32 %129, %134
  %136 = mul nsw i32 %135, 2
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %126, i64 %137
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %138, ptr align 2 %26, i64 2, i1 false)
  br label %139

139:                                              ; preds = %107
  %140 = load i32, ptr %20, align 4, !tbaa !14
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr %20, align 4, !tbaa !14
  br label %101, !llvm.loop !21

142:                                              ; preds = %101
  br label %143

143:                                              ; preds = %142
  %144 = load i32, ptr %19, align 4, !tbaa !14
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %19, align 4, !tbaa !14
  br label %93, !llvm.loop !22

146:                                              ; preds = %93
  br label %211

147:                                              ; preds = %41
  %148 = load i32, ptr %17, align 4, !tbaa !14
  store i32 %148, ptr %19, align 4, !tbaa !14
  br label %149

149:                                              ; preds = %206, %147
  %150 = load i32, ptr %19, align 4, !tbaa !14
  %151 = load i32, ptr %13, align 4, !tbaa !14
  %152 = load i32, ptr %18, align 4, !tbaa !14
  %153 = sub nsw i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %209

155:                                              ; preds = %149
  %156 = load i32, ptr %15, align 4, !tbaa !14
  store i32 %156, ptr %20, align 4, !tbaa !14
  br label %157

157:                                              ; preds = %202, %155
  %158 = load i32, ptr %20, align 4, !tbaa !14
  %159 = load i32, ptr %12, align 4, !tbaa !14
  %160 = load i32, ptr %16, align 4, !tbaa !14
  %161 = sub nsw i32 %159, %160
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %205

163:                                              ; preds = %157
  %164 = load ptr, ptr %10, align 8, !tbaa !11
  %165 = load i32, ptr %19, align 4, !tbaa !14
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds ptr, ptr %164, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !16
  %169 = load i32, ptr %20, align 4, !tbaa !14
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, ptr %168, i64 %170
  %172 = load i16, ptr %171, align 2, !tbaa !8
  %173 = zext i16 %172 to i64
  store i64 %173, ptr %27, align 8, !tbaa !23
  %174 = load i64, ptr %27, align 8, !tbaa !23
  %175 = and i64 %174, 65280
  %176 = shl i64 %175, 8
  %177 = load i64, ptr %27, align 8, !tbaa !23
  %178 = and i64 %177, 255
  %179 = shl i64 %178, 24
  %180 = or i64 %176, %179
  %181 = load i64, ptr %27, align 8, !tbaa !23
  %182 = and i64 %181, 16711680
  %183 = lshr i64 %182, 8
  %184 = or i64 %180, %183
  %185 = load i64, ptr %27, align 8, !tbaa !23
  %186 = and i64 %185, 4278190080
  %187 = lshr i64 %186, 24
  %188 = or i64 %184, %187
  store i64 %188, ptr %28, align 8, !tbaa !23
  %189 = load ptr, ptr %11, align 8, !tbaa !3
  %190 = load i32, ptr %20, align 4, !tbaa !14
  %191 = load i32, ptr %15, align 4, !tbaa !14
  %192 = sub nsw i32 %190, %191
  %193 = load i32, ptr %19, align 4, !tbaa !14
  %194 = load i32, ptr %17, align 4, !tbaa !14
  %195 = sub nsw i32 %193, %194
  %196 = load i32, ptr %21, align 4, !tbaa !14
  %197 = mul nsw i32 %195, %196
  %198 = add nsw i32 %192, %197
  %199 = mul nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, ptr %189, i64 %200
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %201, ptr align 8 %28, i64 4, i1 false)
  br label %202

202:                                              ; preds = %163
  %203 = load i32, ptr %20, align 4, !tbaa !14
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %20, align 4, !tbaa !14
  br label %157, !llvm.loop !25

205:                                              ; preds = %157
  br label %206

206:                                              ; preds = %205
  %207 = load i32, ptr %19, align 4, !tbaa !14
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %19, align 4, !tbaa !14
  br label %149, !llvm.loop !26

209:                                              ; preds = %149
  br label %211

210:                                              ; preds = %41
  call void @error(ptr noundef @.str, i32 noundef signext 500)
  br label %211

211:                                              ; preds = %210, %209, %146, %90
  br label %275

212:                                              ; preds = %9
  %213 = load i32, ptr %14, align 4, !tbaa !14
  %214 = sext i32 %213 to i64
  %215 = icmp ult i64 2, %214
  br i1 %215, label %216, label %224

216:                                              ; preds = %212
  store i32 2, ptr %23, align 4, !tbaa !14
  %217 = load ptr, ptr %11, align 8, !tbaa !3
  %218 = load i32, ptr %21, align 4, !tbaa !14
  %219 = load i32, ptr %22, align 4, !tbaa !14
  %220 = mul nsw i32 %218, %219
  %221 = load i32, ptr %14, align 4, !tbaa !14
  %222 = mul nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %217, i8 0, i64 %223, i1 false)
  br label %226

224:                                              ; preds = %212
  %225 = load i32, ptr %14, align 4, !tbaa !14
  store i32 %225, ptr %23, align 4, !tbaa !14
  br label %226

226:                                              ; preds = %224, %216
  %227 = load i32, ptr %17, align 4, !tbaa !14
  store i32 %227, ptr %19, align 4, !tbaa !14
  br label %228

228:                                              ; preds = %271, %226
  %229 = load i32, ptr %19, align 4, !tbaa !14
  %230 = load i32, ptr %13, align 4, !tbaa !14
  %231 = load i32, ptr %18, align 4, !tbaa !14
  %232 = sub nsw i32 %230, %231
  %233 = icmp slt i32 %229, %232
  br i1 %233, label %234, label %274

234:                                              ; preds = %228
  %235 = load i32, ptr %15, align 4, !tbaa !14
  store i32 %235, ptr %20, align 4, !tbaa !14
  br label %236

236:                                              ; preds = %267, %234
  %237 = load i32, ptr %20, align 4, !tbaa !14
  %238 = load i32, ptr %12, align 4, !tbaa !14
  %239 = load i32, ptr %16, align 4, !tbaa !14
  %240 = sub nsw i32 %238, %239
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %270

242:                                              ; preds = %236
  %243 = load ptr, ptr %11, align 8, !tbaa !3
  %244 = load i32, ptr %20, align 4, !tbaa !14
  %245 = load i32, ptr %15, align 4, !tbaa !14
  %246 = sub nsw i32 %244, %245
  %247 = load i32, ptr %19, align 4, !tbaa !14
  %248 = load i32, ptr %17, align 4, !tbaa !14
  %249 = sub nsw i32 %247, %248
  %250 = load i32, ptr %21, align 4, !tbaa !14
  %251 = mul nsw i32 %249, %250
  %252 = add nsw i32 %246, %251
  %253 = load i32, ptr %14, align 4, !tbaa !14
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i8, ptr %243, i64 %255
  %257 = load ptr, ptr %10, align 8, !tbaa !11
  %258 = load i32, ptr %19, align 4, !tbaa !14
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds ptr, ptr %257, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !16
  %262 = load i32, ptr %20, align 4, !tbaa !14
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i16, ptr %261, i64 %263
  %265 = load i32, ptr %23, align 4, !tbaa !14
  %266 = sext i32 %265 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %256, ptr align 2 %264, i64 %266, i1 false)
  br label %267

267:                                              ; preds = %242
  %268 = load i32, ptr %20, align 4, !tbaa !14
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %20, align 4, !tbaa !14
  br label %236, !llvm.loop !27

270:                                              ; preds = %236
  br label %271

271:                                              ; preds = %270
  %272 = load i32, ptr %19, align 4, !tbaa !14
  %273 = add nsw i32 %272, 1
  store i32 %273, ptr %19, align 4, !tbaa !14
  br label %228, !llvm.loop !28

274:                                              ; preds = %228
  br label %275

275:                                              ; preds = %274, %211
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %26) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr %25) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr %24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @error(ptr noundef, i32 noundef signext) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind
define dso_local void @write_picture(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !29
  store i32 %1, ptr %5, align 4, !tbaa !14
  store i32 %2, ptr %6, align 4, !tbaa !14
  %7 = load ptr, ptr %4, align 8, !tbaa !29
  %8 = load i32, ptr %5, align 4, !tbaa !14
  call void @write_out_picture(ptr noundef %7, i32 noundef signext %8)
  ret void
}

; Function Attrs: nounwind
define dso_local void @write_out_picture(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 4
  %6 = alloca [4 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !29
  store i32 %1, ptr %4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr %5) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 @__const.write_out_picture.SubWidthC, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %6) #6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %6, ptr align 4 @__const.write_out_picture.SubHeightC, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #6
  %15 = load ptr, ptr @img, align 8, !tbaa !31
  %16 = getelementptr inbounds nuw %struct.ImageParameters, ptr %15, i32 0, i32 141
  %17 = load i32, ptr %16, align 8, !tbaa !32
  %18 = sdiv i32 %17, 8
  store i32 %18, ptr %11, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #6
  %19 = load ptr, ptr @input, align 8, !tbaa !31
  %20 = getelementptr inbounds nuw %struct.InputParameters, ptr %19, i32 0, i32 176
  %21 = load i32, ptr %20, align 8, !tbaa !49
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load ptr, ptr @input, align 8, !tbaa !31
  %25 = getelementptr inbounds nuw %struct.InputParameters, ptr %24, i32 0, i32 16
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 3
  br label %28

28:                                               ; preds = %23, %2
  %29 = phi i1 [ false, %2 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  store i32 %30, ptr %12, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #6
  %31 = load ptr, ptr %3, align 8, !tbaa !29
  %32 = getelementptr inbounds nuw %struct.storable_picture, ptr %31, i32 0, i32 17
  %33 = load i32, ptr %32, align 4, !tbaa !52
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, ptr %14, align 4
  br label %379

36:                                               ; preds = %28
  %37 = load i32, ptr %4, align 4, !tbaa !14
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 1, ptr %14, align 4
  br label %379

40:                                               ; preds = %36
  %41 = load ptr, ptr %3, align 8, !tbaa !29
  %42 = getelementptr inbounds nuw %struct.storable_picture, ptr %41, i32 0, i32 46
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8, !tbaa !29
  %47 = getelementptr inbounds nuw %struct.storable_picture, ptr %46, i32 0, i32 44
  %48 = load i32, ptr %47, align 8, !tbaa !60
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !14
  %52 = load ptr, ptr %3, align 8, !tbaa !29
  %53 = getelementptr inbounds nuw %struct.storable_picture, ptr %52, i32 0, i32 47
  %54 = load i32, ptr %53, align 4, !tbaa !61
  %55 = mul nsw i32 %51, %54
  store i32 %55, ptr %7, align 4, !tbaa !14
  %56 = load ptr, ptr %3, align 8, !tbaa !29
  %57 = getelementptr inbounds nuw %struct.storable_picture, ptr %56, i32 0, i32 44
  %58 = load i32, ptr %57, align 8, !tbaa !60
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !14
  %62 = load ptr, ptr %3, align 8, !tbaa !29
  %63 = getelementptr inbounds nuw %struct.storable_picture, ptr %62, i32 0, i32 48
  %64 = load i32, ptr %63, align 8, !tbaa !62
  %65 = mul nsw i32 %61, %64
  store i32 %65, ptr %8, align 4, !tbaa !14
  %66 = load ptr, ptr %3, align 8, !tbaa !29
  %67 = getelementptr inbounds nuw %struct.storable_picture, ptr %66, i32 0, i32 44
  %68 = load i32, ptr %67, align 8, !tbaa !60
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !14
  %72 = load ptr, ptr %3, align 8, !tbaa !29
  %73 = getelementptr inbounds nuw %struct.storable_picture, ptr %72, i32 0, i32 45
  %74 = load i32, ptr %73, align 4, !tbaa !63
  %75 = sub nsw i32 2, %74
  %76 = mul nsw i32 %71, %75
  %77 = load ptr, ptr %3, align 8, !tbaa !29
  %78 = getelementptr inbounds nuw %struct.storable_picture, ptr %77, i32 0, i32 49
  %79 = load i32, ptr %78, align 4, !tbaa !64
  %80 = mul nsw i32 %76, %79
  store i32 %80, ptr %9, align 4, !tbaa !14
  %81 = load ptr, ptr %3, align 8, !tbaa !29
  %82 = getelementptr inbounds nuw %struct.storable_picture, ptr %81, i32 0, i32 44
  %83 = load i32, ptr %82, align 8, !tbaa !60
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !14
  %87 = load ptr, ptr %3, align 8, !tbaa !29
  %88 = getelementptr inbounds nuw %struct.storable_picture, ptr %87, i32 0, i32 45
  %89 = load i32, ptr %88, align 4, !tbaa !63
  %90 = sub nsw i32 2, %89
  %91 = mul nsw i32 %86, %90
  %92 = load ptr, ptr %3, align 8, !tbaa !29
  %93 = getelementptr inbounds nuw %struct.storable_picture, ptr %92, i32 0, i32 50
  %94 = load i32, ptr %93, align 8, !tbaa !65
  %95 = mul nsw i32 %91, %94
  store i32 %95, ptr %10, align 4, !tbaa !14
  br label %97

96:                                               ; preds = %40
  store i32 0, ptr %10, align 4, !tbaa !14
  store i32 0, ptr %9, align 4, !tbaa !14
  store i32 0, ptr %8, align 4, !tbaa !14
  store i32 0, ptr %7, align 4, !tbaa !14
  br label %97

97:                                               ; preds = %96, %45
  %98 = load ptr, ptr %3, align 8, !tbaa !29
  %99 = getelementptr inbounds nuw %struct.storable_picture, ptr %98, i32 0, i32 18
  %100 = load i32, ptr %99, align 8, !tbaa !66
  %101 = load ptr, ptr %3, align 8, !tbaa !29
  %102 = getelementptr inbounds nuw %struct.storable_picture, ptr %101, i32 0, i32 19
  %103 = load i32, ptr %102, align 4, !tbaa !67
  %104 = mul nsw i32 %100, %103
  %105 = load i32, ptr %11, align 4, !tbaa !14
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = call noalias ptr @malloc(i64 noundef %107) #7
  store ptr %108, ptr %13, align 8, !tbaa !3
  %109 = load ptr, ptr %13, align 8, !tbaa !3
  %110 = icmp eq ptr null, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  call void @no_mem_exit(ptr noundef @.str.1)
  br label %112

112:                                              ; preds = %111, %97
  %113 = load i32, ptr %12, align 4, !tbaa !14
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %233

115:                                              ; preds = %112
  %116 = load ptr, ptr %3, align 8, !tbaa !29
  %117 = getelementptr inbounds nuw %struct.storable_picture, ptr %116, i32 0, i32 47
  %118 = load i32, ptr %117, align 4, !tbaa !61
  store i32 %118, ptr %7, align 4, !tbaa !14
  %119 = load ptr, ptr %3, align 8, !tbaa !29
  %120 = getelementptr inbounds nuw %struct.storable_picture, ptr %119, i32 0, i32 48
  %121 = load i32, ptr %120, align 8, !tbaa !62
  store i32 %121, ptr %8, align 4, !tbaa !14
  %122 = load ptr, ptr %3, align 8, !tbaa !29
  %123 = getelementptr inbounds nuw %struct.storable_picture, ptr %122, i32 0, i32 45
  %124 = load i32, ptr %123, align 4, !tbaa !63
  %125 = sub nsw i32 2, %124
  %126 = load ptr, ptr %3, align 8, !tbaa !29
  %127 = getelementptr inbounds nuw %struct.storable_picture, ptr %126, i32 0, i32 49
  %128 = load i32, ptr %127, align 4, !tbaa !64
  %129 = mul nsw i32 %125, %128
  store i32 %129, ptr %9, align 4, !tbaa !14
  %130 = load ptr, ptr %3, align 8, !tbaa !29
  %131 = getelementptr inbounds nuw %struct.storable_picture, ptr %130, i32 0, i32 45
  %132 = load i32, ptr %131, align 4, !tbaa !63
  %133 = sub nsw i32 2, %132
  %134 = load ptr, ptr %3, align 8, !tbaa !29
  %135 = getelementptr inbounds nuw %struct.storable_picture, ptr %134, i32 0, i32 50
  %136 = load i32, ptr %135, align 8, !tbaa !65
  %137 = mul nsw i32 %133, %136
  store i32 %137, ptr %10, align 4, !tbaa !14
  %138 = load ptr, ptr %3, align 8, !tbaa !29
  %139 = getelementptr inbounds nuw %struct.storable_picture, ptr %138, i32 0, i32 33
  %140 = load ptr, ptr %139, align 8, !tbaa !68
  %141 = getelementptr inbounds ptr, ptr %140, i64 1
  %142 = load ptr, ptr %141, align 8, !tbaa !11
  %143 = load ptr, ptr %13, align 8, !tbaa !3
  %144 = load ptr, ptr %3, align 8, !tbaa !29
  %145 = getelementptr inbounds nuw %struct.storable_picture, ptr %144, i32 0, i32 20
  %146 = load i32, ptr %145, align 8, !tbaa !69
  %147 = load ptr, ptr %3, align 8, !tbaa !29
  %148 = getelementptr inbounds nuw %struct.storable_picture, ptr %147, i32 0, i32 21
  %149 = load i32, ptr %148, align 4, !tbaa !70
  %150 = load i32, ptr %11, align 4, !tbaa !14
  %151 = load i32, ptr %7, align 4, !tbaa !14
  %152 = load i32, ptr %8, align 4, !tbaa !14
  %153 = load i32, ptr %9, align 4, !tbaa !14
  %154 = load i32, ptr %10, align 4, !tbaa !14
  call void @img2buf(ptr noundef %142, ptr noundef %143, i32 noundef signext %146, i32 noundef signext %149, i32 noundef signext %150, i32 noundef signext %151, i32 noundef signext %152, i32 noundef signext %153, i32 noundef signext %154)
  %155 = load i32, ptr %4, align 4, !tbaa !14
  %156 = load ptr, ptr %13, align 8, !tbaa !3
  %157 = load ptr, ptr %3, align 8, !tbaa !29
  %158 = getelementptr inbounds nuw %struct.storable_picture, ptr %157, i32 0, i32 21
  %159 = load i32, ptr %158, align 4, !tbaa !70
  %160 = load i32, ptr %10, align 4, !tbaa !14
  %161 = sub nsw i32 %159, %160
  %162 = load i32, ptr %9, align 4, !tbaa !14
  %163 = sub nsw i32 %161, %162
  %164 = load ptr, ptr %3, align 8, !tbaa !29
  %165 = getelementptr inbounds nuw %struct.storable_picture, ptr %164, i32 0, i32 20
  %166 = load i32, ptr %165, align 8, !tbaa !69
  %167 = load i32, ptr %8, align 4, !tbaa !14
  %168 = sub nsw i32 %166, %167
  %169 = load i32, ptr %7, align 4, !tbaa !14
  %170 = sub nsw i32 %168, %169
  %171 = mul nsw i32 %163, %170
  %172 = load i32, ptr %11, align 4, !tbaa !14
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = call i64 @write(i32 noundef signext %155, ptr noundef %156, i64 noundef %174)
  %176 = load ptr, ptr %3, align 8, !tbaa !29
  %177 = getelementptr inbounds nuw %struct.storable_picture, ptr %176, i32 0, i32 46
  %178 = load i32, ptr %177, align 8, !tbaa !59
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %231

180:                                              ; preds = %115
  %181 = load ptr, ptr %3, align 8, !tbaa !29
  %182 = getelementptr inbounds nuw %struct.storable_picture, ptr %181, i32 0, i32 44
  %183 = load i32, ptr %182, align 8, !tbaa !60
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !14
  %187 = load ptr, ptr %3, align 8, !tbaa !29
  %188 = getelementptr inbounds nuw %struct.storable_picture, ptr %187, i32 0, i32 47
  %189 = load i32, ptr %188, align 4, !tbaa !61
  %190 = mul nsw i32 %186, %189
  store i32 %190, ptr %7, align 4, !tbaa !14
  %191 = load ptr, ptr %3, align 8, !tbaa !29
  %192 = getelementptr inbounds nuw %struct.storable_picture, ptr %191, i32 0, i32 44
  %193 = load i32, ptr %192, align 8, !tbaa !60
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !14
  %197 = load ptr, ptr %3, align 8, !tbaa !29
  %198 = getelementptr inbounds nuw %struct.storable_picture, ptr %197, i32 0, i32 48
  %199 = load i32, ptr %198, align 8, !tbaa !62
  %200 = mul nsw i32 %196, %199
  store i32 %200, ptr %8, align 4, !tbaa !14
  %201 = load ptr, ptr %3, align 8, !tbaa !29
  %202 = getelementptr inbounds nuw %struct.storable_picture, ptr %201, i32 0, i32 44
  %203 = load i32, ptr %202, align 8, !tbaa !60
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !14
  %207 = load ptr, ptr %3, align 8, !tbaa !29
  %208 = getelementptr inbounds nuw %struct.storable_picture, ptr %207, i32 0, i32 45
  %209 = load i32, ptr %208, align 4, !tbaa !63
  %210 = sub nsw i32 2, %209
  %211 = mul nsw i32 %206, %210
  %212 = load ptr, ptr %3, align 8, !tbaa !29
  %213 = getelementptr inbounds nuw %struct.storable_picture, ptr %212, i32 0, i32 49
  %214 = load i32, ptr %213, align 4, !tbaa !64
  %215 = mul nsw i32 %211, %214
  store i32 %215, ptr %9, align 4, !tbaa !14
  %216 = load ptr, ptr %3, align 8, !tbaa !29
  %217 = getelementptr inbounds nuw %struct.storable_picture, ptr %216, i32 0, i32 44
  %218 = load i32, ptr %217, align 8, !tbaa !60
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [4 x i32], ptr %6, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !14
  %222 = load ptr, ptr %3, align 8, !tbaa !29
  %223 = getelementptr inbounds nuw %struct.storable_picture, ptr %222, i32 0, i32 45
  %224 = load i32, ptr %223, align 4, !tbaa !63
  %225 = sub nsw i32 2, %224
  %226 = mul nsw i32 %221, %225
  %227 = load ptr, ptr %3, align 8, !tbaa !29
  %228 = getelementptr inbounds nuw %struct.storable_picture, ptr %227, i32 0, i32 50
  %229 = load i32, ptr %228, align 8, !tbaa !65
  %230 = mul nsw i32 %226, %229
  store i32 %230, ptr %10, align 4, !tbaa !14
  br label %232

231:                                              ; preds = %115
  store i32 0, ptr %10, align 4, !tbaa !14
  store i32 0, ptr %9, align 4, !tbaa !14
  store i32 0, ptr %8, align 4, !tbaa !14
  store i32 0, ptr %7, align 4, !tbaa !14
  br label %232

232:                                              ; preds = %231, %180
  br label %233

233:                                              ; preds = %232, %112
  %234 = load ptr, ptr %3, align 8, !tbaa !29
  %235 = getelementptr inbounds nuw %struct.storable_picture, ptr %234, i32 0, i32 29
  %236 = load ptr, ptr %235, align 8, !tbaa !71
  %237 = load ptr, ptr %13, align 8, !tbaa !3
  %238 = load ptr, ptr %3, align 8, !tbaa !29
  %239 = getelementptr inbounds nuw %struct.storable_picture, ptr %238, i32 0, i32 18
  %240 = load i32, ptr %239, align 8, !tbaa !66
  %241 = load ptr, ptr %3, align 8, !tbaa !29
  %242 = getelementptr inbounds nuw %struct.storable_picture, ptr %241, i32 0, i32 19
  %243 = load i32, ptr %242, align 4, !tbaa !67
  %244 = load i32, ptr %11, align 4, !tbaa !14
  %245 = load i32, ptr %7, align 4, !tbaa !14
  %246 = load i32, ptr %8, align 4, !tbaa !14
  %247 = load i32, ptr %9, align 4, !tbaa !14
  %248 = load i32, ptr %10, align 4, !tbaa !14
  call void @img2buf(ptr noundef %236, ptr noundef %237, i32 noundef signext %240, i32 noundef signext %243, i32 noundef signext %244, i32 noundef signext %245, i32 noundef signext %246, i32 noundef signext %247, i32 noundef signext %248)
  %249 = load i32, ptr %4, align 4, !tbaa !14
  %250 = load ptr, ptr %13, align 8, !tbaa !3
  %251 = load ptr, ptr %3, align 8, !tbaa !29
  %252 = getelementptr inbounds nuw %struct.storable_picture, ptr %251, i32 0, i32 19
  %253 = load i32, ptr %252, align 4, !tbaa !67
  %254 = load i32, ptr %10, align 4, !tbaa !14
  %255 = sub nsw i32 %253, %254
  %256 = load i32, ptr %9, align 4, !tbaa !14
  %257 = sub nsw i32 %255, %256
  %258 = load ptr, ptr %3, align 8, !tbaa !29
  %259 = getelementptr inbounds nuw %struct.storable_picture, ptr %258, i32 0, i32 18
  %260 = load i32, ptr %259, align 8, !tbaa !66
  %261 = load i32, ptr %8, align 4, !tbaa !14
  %262 = sub nsw i32 %260, %261
  %263 = load i32, ptr %7, align 4, !tbaa !14
  %264 = sub nsw i32 %262, %263
  %265 = mul nsw i32 %257, %264
  %266 = load i32, ptr %11, align 4, !tbaa !14
  %267 = mul nsw i32 %265, %266
  %268 = sext i32 %267 to i64
  %269 = call i64 @write(i32 noundef signext %249, ptr noundef %250, i64 noundef %268)
  %270 = load ptr, ptr %3, align 8, !tbaa !29
  %271 = getelementptr inbounds nuw %struct.storable_picture, ptr %270, i32 0, i32 44
  %272 = load i32, ptr %271, align 8, !tbaa !60
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %377

274:                                              ; preds = %233
  %275 = load ptr, ptr %3, align 8, !tbaa !29
  %276 = getelementptr inbounds nuw %struct.storable_picture, ptr %275, i32 0, i32 47
  %277 = load i32, ptr %276, align 4, !tbaa !61
  store i32 %277, ptr %7, align 4, !tbaa !14
  %278 = load ptr, ptr %3, align 8, !tbaa !29
  %279 = getelementptr inbounds nuw %struct.storable_picture, ptr %278, i32 0, i32 48
  %280 = load i32, ptr %279, align 8, !tbaa !62
  store i32 %280, ptr %8, align 4, !tbaa !14
  %281 = load ptr, ptr %3, align 8, !tbaa !29
  %282 = getelementptr inbounds nuw %struct.storable_picture, ptr %281, i32 0, i32 45
  %283 = load i32, ptr %282, align 4, !tbaa !63
  %284 = sub nsw i32 2, %283
  %285 = load ptr, ptr %3, align 8, !tbaa !29
  %286 = getelementptr inbounds nuw %struct.storable_picture, ptr %285, i32 0, i32 49
  %287 = load i32, ptr %286, align 4, !tbaa !64
  %288 = mul nsw i32 %284, %287
  store i32 %288, ptr %9, align 4, !tbaa !14
  %289 = load ptr, ptr %3, align 8, !tbaa !29
  %290 = getelementptr inbounds nuw %struct.storable_picture, ptr %289, i32 0, i32 45
  %291 = load i32, ptr %290, align 4, !tbaa !63
  %292 = sub nsw i32 2, %291
  %293 = load ptr, ptr %3, align 8, !tbaa !29
  %294 = getelementptr inbounds nuw %struct.storable_picture, ptr %293, i32 0, i32 50
  %295 = load i32, ptr %294, align 8, !tbaa !65
  %296 = mul nsw i32 %292, %295
  store i32 %296, ptr %10, align 4, !tbaa !14
  %297 = load ptr, ptr %3, align 8, !tbaa !29
  %298 = getelementptr inbounds nuw %struct.storable_picture, ptr %297, i32 0, i32 33
  %299 = load ptr, ptr %298, align 8, !tbaa !68
  %300 = getelementptr inbounds ptr, ptr %299, i64 0
  %301 = load ptr, ptr %300, align 8, !tbaa !11
  %302 = load ptr, ptr %13, align 8, !tbaa !3
  %303 = load ptr, ptr %3, align 8, !tbaa !29
  %304 = getelementptr inbounds nuw %struct.storable_picture, ptr %303, i32 0, i32 20
  %305 = load i32, ptr %304, align 8, !tbaa !69
  %306 = load ptr, ptr %3, align 8, !tbaa !29
  %307 = getelementptr inbounds nuw %struct.storable_picture, ptr %306, i32 0, i32 21
  %308 = load i32, ptr %307, align 4, !tbaa !70
  %309 = load i32, ptr %11, align 4, !tbaa !14
  %310 = load i32, ptr %7, align 4, !tbaa !14
  %311 = load i32, ptr %8, align 4, !tbaa !14
  %312 = load i32, ptr %9, align 4, !tbaa !14
  %313 = load i32, ptr %10, align 4, !tbaa !14
  call void @img2buf(ptr noundef %301, ptr noundef %302, i32 noundef signext %305, i32 noundef signext %308, i32 noundef signext %309, i32 noundef signext %310, i32 noundef signext %311, i32 noundef signext %312, i32 noundef signext %313)
  %314 = load i32, ptr %4, align 4, !tbaa !14
  %315 = load ptr, ptr %13, align 8, !tbaa !3
  %316 = load ptr, ptr %3, align 8, !tbaa !29
  %317 = getelementptr inbounds nuw %struct.storable_picture, ptr %316, i32 0, i32 21
  %318 = load i32, ptr %317, align 4, !tbaa !70
  %319 = load i32, ptr %10, align 4, !tbaa !14
  %320 = sub nsw i32 %318, %319
  %321 = load i32, ptr %9, align 4, !tbaa !14
  %322 = sub nsw i32 %320, %321
  %323 = load ptr, ptr %3, align 8, !tbaa !29
  %324 = getelementptr inbounds nuw %struct.storable_picture, ptr %323, i32 0, i32 20
  %325 = load i32, ptr %324, align 8, !tbaa !69
  %326 = load i32, ptr %8, align 4, !tbaa !14
  %327 = sub nsw i32 %325, %326
  %328 = load i32, ptr %7, align 4, !tbaa !14
  %329 = sub nsw i32 %327, %328
  %330 = mul nsw i32 %322, %329
  %331 = load i32, ptr %11, align 4, !tbaa !14
  %332 = mul nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = call i64 @write(i32 noundef signext %314, ptr noundef %315, i64 noundef %333)
  %335 = load i32, ptr %12, align 4, !tbaa !14
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %376, label %337

337:                                              ; preds = %274
  %338 = load ptr, ptr %3, align 8, !tbaa !29
  %339 = getelementptr inbounds nuw %struct.storable_picture, ptr %338, i32 0, i32 33
  %340 = load ptr, ptr %339, align 8, !tbaa !68
  %341 = getelementptr inbounds ptr, ptr %340, i64 1
  %342 = load ptr, ptr %341, align 8, !tbaa !11
  %343 = load ptr, ptr %13, align 8, !tbaa !3
  %344 = load ptr, ptr %3, align 8, !tbaa !29
  %345 = getelementptr inbounds nuw %struct.storable_picture, ptr %344, i32 0, i32 20
  %346 = load i32, ptr %345, align 8, !tbaa !69
  %347 = load ptr, ptr %3, align 8, !tbaa !29
  %348 = getelementptr inbounds nuw %struct.storable_picture, ptr %347, i32 0, i32 21
  %349 = load i32, ptr %348, align 4, !tbaa !70
  %350 = load i32, ptr %11, align 4, !tbaa !14
  %351 = load i32, ptr %7, align 4, !tbaa !14
  %352 = load i32, ptr %8, align 4, !tbaa !14
  %353 = load i32, ptr %9, align 4, !tbaa !14
  %354 = load i32, ptr %10, align 4, !tbaa !14
  call void @img2buf(ptr noundef %342, ptr noundef %343, i32 noundef signext %346, i32 noundef signext %349, i32 noundef signext %350, i32 noundef signext %351, i32 noundef signext %352, i32 noundef signext %353, i32 noundef signext %354)
  %355 = load i32, ptr %4, align 4, !tbaa !14
  %356 = load ptr, ptr %13, align 8, !tbaa !3
  %357 = load ptr, ptr %3, align 8, !tbaa !29
  %358 = getelementptr inbounds nuw %struct.storable_picture, ptr %357, i32 0, i32 21
  %359 = load i32, ptr %358, align 4, !tbaa !70
  %360 = load i32, ptr %10, align 4, !tbaa !14
  %361 = sub nsw i32 %359, %360
  %362 = load i32, ptr %9, align 4, !tbaa !14
  %363 = sub nsw i32 %361, %362
  %364 = load ptr, ptr %3, align 8, !tbaa !29
  %365 = getelementptr inbounds nuw %struct.storable_picture, ptr %364, i32 0, i32 20
  %366 = load i32, ptr %365, align 8, !tbaa !69
  %367 = load i32, ptr %8, align 4, !tbaa !14
  %368 = sub nsw i32 %366, %367
  %369 = load i32, ptr %7, align 4, !tbaa !14
  %370 = sub nsw i32 %368, %369
  %371 = mul nsw i32 %363, %370
  %372 = load i32, ptr %11, align 4, !tbaa !14
  %373 = mul nsw i32 %371, %372
  %374 = sext i32 %373 to i64
  %375 = call i64 @write(i32 noundef signext %355, ptr noundef %356, i64 noundef %374)
  br label %376

376:                                              ; preds = %337, %274
  br label %377

377:                                              ; preds = %376, %233
  %378 = load ptr, ptr %13, align 8, !tbaa !3
  call void @free(ptr noundef %378) #6
  store i32 0, ptr %14, align 4
  br label %379

379:                                              ; preds = %377, %39, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %6) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr %5) #6
  %380 = load i32, ptr %14, align 4
  switch i32 %380, label %382 [
    i32 0, label %381
    i32 1, label %381
  ]

381:                                              ; preds = %379, %379
  ret void

382:                                              ; preds = %379
  unreachable
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare void @no_mem_exit(ptr noundef) #3

declare i64 @write(i32 noundef signext, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define dso_local void @init_out_buffer() #0 {
  %1 = call ptr @alloc_frame_store()
  store ptr %1, ptr @out_buffer, align 8, !tbaa !72
  ret void
}

declare ptr @alloc_frame_store() #3

; Function Attrs: nounwind
define dso_local void @uninit_out_buffer() #0 {
  %1 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  call void @free_frame_store(ptr noundef %1)
  store ptr null, ptr @out_buffer, align 8, !tbaa !72
  ret void
}

declare void @free_frame_store(ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @clear_picture(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #6
  store i32 0, ptr %3, align 4, !tbaa !14
  br label %4

4:                                                ; preds = %27, %1
  %5 = load i32, ptr %3, align 4, !tbaa !14
  %6 = load ptr, ptr %2, align 8, !tbaa !29
  %7 = getelementptr inbounds nuw %struct.storable_picture, ptr %6, i32 0, i32 19
  %8 = load i32, ptr %7, align 4, !tbaa !67
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !29
  %12 = getelementptr inbounds nuw %struct.storable_picture, ptr %11, i32 0, i32 29
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = load i32, ptr %3, align 4, !tbaa !14
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = load ptr, ptr @img, align 8, !tbaa !31
  %19 = getelementptr inbounds nuw %struct.ImageParameters, ptr %18, i32 0, i32 154
  %20 = load i32, ptr %19, align 8, !tbaa !74
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr %2, align 8, !tbaa !29
  %23 = getelementptr inbounds nuw %struct.storable_picture, ptr %22, i32 0, i32 18
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 2
  call void @llvm.memset.p0.i64(ptr align 2 %17, i8 %21, i64 %26, i1 false)
  br label %27

27:                                               ; preds = %10
  %28 = load i32, ptr %3, align 4, !tbaa !14
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %3, align 4, !tbaa !14
  br label %4, !llvm.loop !75

30:                                               ; preds = %4
  store i32 0, ptr %3, align 4, !tbaa !14
  br label %31

31:                                               ; preds = %56, %30
  %32 = load i32, ptr %3, align 4, !tbaa !14
  %33 = load ptr, ptr %2, align 8, !tbaa !29
  %34 = getelementptr inbounds nuw %struct.storable_picture, ptr %33, i32 0, i32 21
  %35 = load i32, ptr %34, align 4, !tbaa !70
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %31
  %38 = load ptr, ptr %2, align 8, !tbaa !29
  %39 = getelementptr inbounds nuw %struct.storable_picture, ptr %38, i32 0, i32 33
  %40 = load ptr, ptr %39, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 0
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = load i32, ptr %3, align 4, !tbaa !14
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = load ptr, ptr @img, align 8, !tbaa !31
  %48 = getelementptr inbounds nuw %struct.ImageParameters, ptr %47, i32 0, i32 155
  %49 = load i32, ptr %48, align 4, !tbaa !76
  %50 = trunc i32 %49 to i8
  %51 = load ptr, ptr %2, align 8, !tbaa !29
  %52 = getelementptr inbounds nuw %struct.storable_picture, ptr %51, i32 0, i32 20
  %53 = load i32, ptr %52, align 8, !tbaa !69
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 2
  call void @llvm.memset.p0.i64(ptr align 2 %46, i8 %50, i64 %55, i1 false)
  br label %56

56:                                               ; preds = %37
  %57 = load i32, ptr %3, align 4, !tbaa !14
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %3, align 4, !tbaa !14
  br label %31, !llvm.loop !77

59:                                               ; preds = %31
  store i32 0, ptr %3, align 4, !tbaa !14
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, ptr %3, align 4, !tbaa !14
  %62 = load ptr, ptr %2, align 8, !tbaa !29
  %63 = getelementptr inbounds nuw %struct.storable_picture, ptr %62, i32 0, i32 21
  %64 = load i32, ptr %63, align 4, !tbaa !70
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load ptr, ptr %2, align 8, !tbaa !29
  %68 = getelementptr inbounds nuw %struct.storable_picture, ptr %67, i32 0, i32 33
  %69 = load ptr, ptr %68, align 8, !tbaa !68
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !11
  %72 = load i32, ptr %3, align 4, !tbaa !14
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds ptr, ptr %71, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !16
  %76 = load ptr, ptr @img, align 8, !tbaa !31
  %77 = getelementptr inbounds nuw %struct.ImageParameters, ptr %76, i32 0, i32 155
  %78 = load i32, ptr %77, align 4, !tbaa !76
  %79 = trunc i32 %78 to i8
  %80 = load ptr, ptr %2, align 8, !tbaa !29
  %81 = getelementptr inbounds nuw %struct.storable_picture, ptr %80, i32 0, i32 20
  %82 = load i32, ptr %81, align 8, !tbaa !69
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 2
  call void @llvm.memset.p0.i64(ptr align 2 %75, i8 %79, i64 %84, i1 false)
  br label %85

85:                                               ; preds = %66
  %86 = load i32, ptr %3, align 4, !tbaa !14
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %3, align 4, !tbaa !14
  br label %60, !llvm.loop !78

88:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #6
  ret void
}

; Function Attrs: nounwind
define dso_local void @write_unpaired_field(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !72
  store i32 %1, ptr %4, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !72
  %7 = getelementptr inbounds nuw %struct.frame_store, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !72
  %13 = getelementptr inbounds nuw %struct.frame_store, ptr %12, i32 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !81
  store ptr %14, ptr %5, align 8, !tbaa !29
  %15 = load ptr, ptr %5, align 8, !tbaa !29
  %16 = getelementptr inbounds nuw %struct.storable_picture, ptr %15, i32 0, i32 18
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = load ptr, ptr %5, align 8, !tbaa !29
  %19 = getelementptr inbounds nuw %struct.storable_picture, ptr %18, i32 0, i32 19
  %20 = load i32, ptr %19, align 4, !tbaa !67
  %21 = load ptr, ptr %5, align 8, !tbaa !29
  %22 = getelementptr inbounds nuw %struct.storable_picture, ptr %21, i32 0, i32 20
  %23 = load i32, ptr %22, align 8, !tbaa !69
  %24 = load ptr, ptr %5, align 8, !tbaa !29
  %25 = getelementptr inbounds nuw %struct.storable_picture, ptr %24, i32 0, i32 21
  %26 = load i32, ptr %25, align 4, !tbaa !70
  %27 = call ptr @alloc_storable_picture(i32 noundef signext 2, i32 noundef signext %17, i32 noundef signext %20, i32 noundef signext %23, i32 noundef signext %26)
  %28 = load ptr, ptr %3, align 8, !tbaa !72
  %29 = getelementptr inbounds nuw %struct.frame_store, ptr %28, i32 0, i32 12
  store ptr %27, ptr %29, align 8, !tbaa !82
  %30 = load ptr, ptr %5, align 8, !tbaa !29
  %31 = getelementptr inbounds nuw %struct.storable_picture, ptr %30, i32 0, i32 44
  %32 = load i32, ptr %31, align 8, !tbaa !60
  %33 = load ptr, ptr %3, align 8, !tbaa !72
  %34 = getelementptr inbounds nuw %struct.frame_store, ptr %33, i32 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !82
  %36 = getelementptr inbounds nuw %struct.storable_picture, ptr %35, i32 0, i32 44
  store i32 %32, ptr %36, align 8, !tbaa !60
  %37 = load ptr, ptr %3, align 8, !tbaa !72
  %38 = getelementptr inbounds nuw %struct.frame_store, ptr %37, i32 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !82
  call void @clear_picture(ptr noundef %39)
  %40 = load ptr, ptr %3, align 8, !tbaa !72
  call void @dpb_combine_field_yuv(ptr noundef %40)
  %41 = load ptr, ptr %3, align 8, !tbaa !72
  %42 = getelementptr inbounds nuw %struct.frame_store, ptr %41, i32 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !83
  %44 = load i32, ptr %4, align 4, !tbaa !14
  call void @write_picture(ptr noundef %43, i32 noundef signext %44, i32 noundef signext 1)
  br label %45

45:                                               ; preds = %11, %2
  %46 = load ptr, ptr %3, align 8, !tbaa !72
  %47 = getelementptr inbounds nuw %struct.frame_store, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8, !tbaa !79
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %141

51:                                               ; preds = %45
  %52 = load ptr, ptr %3, align 8, !tbaa !72
  %53 = getelementptr inbounds nuw %struct.frame_store, ptr %52, i32 0, i32 12
  %54 = load ptr, ptr %53, align 8, !tbaa !82
  store ptr %54, ptr %5, align 8, !tbaa !29
  %55 = load ptr, ptr %5, align 8, !tbaa !29
  %56 = getelementptr inbounds nuw %struct.storable_picture, ptr %55, i32 0, i32 18
  %57 = load i32, ptr %56, align 8, !tbaa !66
  %58 = load ptr, ptr %5, align 8, !tbaa !29
  %59 = getelementptr inbounds nuw %struct.storable_picture, ptr %58, i32 0, i32 19
  %60 = load i32, ptr %59, align 4, !tbaa !67
  %61 = load ptr, ptr %5, align 8, !tbaa !29
  %62 = getelementptr inbounds nuw %struct.storable_picture, ptr %61, i32 0, i32 20
  %63 = load i32, ptr %62, align 8, !tbaa !69
  %64 = load ptr, ptr %5, align 8, !tbaa !29
  %65 = getelementptr inbounds nuw %struct.storable_picture, ptr %64, i32 0, i32 21
  %66 = load i32, ptr %65, align 4, !tbaa !70
  %67 = call ptr @alloc_storable_picture(i32 noundef signext 1, i32 noundef signext %57, i32 noundef signext %60, i32 noundef signext %63, i32 noundef signext %66)
  %68 = load ptr, ptr %3, align 8, !tbaa !72
  %69 = getelementptr inbounds nuw %struct.frame_store, ptr %68, i32 0, i32 11
  store ptr %67, ptr %69, align 8, !tbaa !81
  %70 = load ptr, ptr %3, align 8, !tbaa !72
  %71 = getelementptr inbounds nuw %struct.frame_store, ptr %70, i32 0, i32 11
  %72 = load ptr, ptr %71, align 8, !tbaa !81
  call void @clear_picture(ptr noundef %72)
  %73 = load ptr, ptr %5, align 8, !tbaa !29
  %74 = getelementptr inbounds nuw %struct.storable_picture, ptr %73, i32 0, i32 44
  %75 = load i32, ptr %74, align 8, !tbaa !60
  %76 = load ptr, ptr %3, align 8, !tbaa !72
  %77 = getelementptr inbounds nuw %struct.frame_store, ptr %76, i32 0, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !81
  %79 = getelementptr inbounds nuw %struct.storable_picture, ptr %78, i32 0, i32 44
  store i32 %75, ptr %79, align 8, !tbaa !60
  %80 = load ptr, ptr %3, align 8, !tbaa !72
  %81 = getelementptr inbounds nuw %struct.frame_store, ptr %80, i32 0, i32 11
  %82 = load ptr, ptr %81, align 8, !tbaa !81
  call void @clear_picture(ptr noundef %82)
  %83 = load ptr, ptr %3, align 8, !tbaa !72
  %84 = getelementptr inbounds nuw %struct.frame_store, ptr %83, i32 0, i32 12
  %85 = load ptr, ptr %84, align 8, !tbaa !82
  %86 = getelementptr inbounds nuw %struct.storable_picture, ptr %85, i32 0, i32 46
  %87 = load i32, ptr %86, align 8, !tbaa !59
  %88 = load ptr, ptr %3, align 8, !tbaa !72
  %89 = getelementptr inbounds nuw %struct.frame_store, ptr %88, i32 0, i32 11
  %90 = load ptr, ptr %89, align 8, !tbaa !81
  %91 = getelementptr inbounds nuw %struct.storable_picture, ptr %90, i32 0, i32 46
  store i32 %87, ptr %91, align 8, !tbaa !59
  %92 = load ptr, ptr %3, align 8, !tbaa !72
  %93 = getelementptr inbounds nuw %struct.frame_store, ptr %92, i32 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !81
  %95 = getelementptr inbounds nuw %struct.storable_picture, ptr %94, i32 0, i32 46
  %96 = load i32, ptr %95, align 8, !tbaa !59
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %135

98:                                               ; preds = %51
  %99 = load ptr, ptr %3, align 8, !tbaa !72
  %100 = getelementptr inbounds nuw %struct.frame_store, ptr %99, i32 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !82
  %102 = getelementptr inbounds nuw %struct.storable_picture, ptr %101, i32 0, i32 49
  %103 = load i32, ptr %102, align 4, !tbaa !64
  %104 = load ptr, ptr %3, align 8, !tbaa !72
  %105 = getelementptr inbounds nuw %struct.frame_store, ptr %104, i32 0, i32 11
  %106 = load ptr, ptr %105, align 8, !tbaa !81
  %107 = getelementptr inbounds nuw %struct.storable_picture, ptr %106, i32 0, i32 49
  store i32 %103, ptr %107, align 4, !tbaa !64
  %108 = load ptr, ptr %3, align 8, !tbaa !72
  %109 = getelementptr inbounds nuw %struct.frame_store, ptr %108, i32 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !82
  %111 = getelementptr inbounds nuw %struct.storable_picture, ptr %110, i32 0, i32 50
  %112 = load i32, ptr %111, align 8, !tbaa !65
  %113 = load ptr, ptr %3, align 8, !tbaa !72
  %114 = getelementptr inbounds nuw %struct.frame_store, ptr %113, i32 0, i32 11
  %115 = load ptr, ptr %114, align 8, !tbaa !81
  %116 = getelementptr inbounds nuw %struct.storable_picture, ptr %115, i32 0, i32 50
  store i32 %112, ptr %116, align 8, !tbaa !65
  %117 = load ptr, ptr %3, align 8, !tbaa !72
  %118 = getelementptr inbounds nuw %struct.frame_store, ptr %117, i32 0, i32 12
  %119 = load ptr, ptr %118, align 8, !tbaa !82
  %120 = getelementptr inbounds nuw %struct.storable_picture, ptr %119, i32 0, i32 47
  %121 = load i32, ptr %120, align 4, !tbaa !61
  %122 = load ptr, ptr %3, align 8, !tbaa !72
  %123 = getelementptr inbounds nuw %struct.frame_store, ptr %122, i32 0, i32 11
  %124 = load ptr, ptr %123, align 8, !tbaa !81
  %125 = getelementptr inbounds nuw %struct.storable_picture, ptr %124, i32 0, i32 47
  store i32 %121, ptr %125, align 4, !tbaa !61
  %126 = load ptr, ptr %3, align 8, !tbaa !72
  %127 = getelementptr inbounds nuw %struct.frame_store, ptr %126, i32 0, i32 12
  %128 = load ptr, ptr %127, align 8, !tbaa !82
  %129 = getelementptr inbounds nuw %struct.storable_picture, ptr %128, i32 0, i32 48
  %130 = load i32, ptr %129, align 8, !tbaa !62
  %131 = load ptr, ptr %3, align 8, !tbaa !72
  %132 = getelementptr inbounds nuw %struct.frame_store, ptr %131, i32 0, i32 11
  %133 = load ptr, ptr %132, align 8, !tbaa !81
  %134 = getelementptr inbounds nuw %struct.storable_picture, ptr %133, i32 0, i32 48
  store i32 %130, ptr %134, align 8, !tbaa !62
  br label %135

135:                                              ; preds = %98, %51
  %136 = load ptr, ptr %3, align 8, !tbaa !72
  call void @dpb_combine_field_yuv(ptr noundef %136)
  %137 = load ptr, ptr %3, align 8, !tbaa !72
  %138 = getelementptr inbounds nuw %struct.frame_store, ptr %137, i32 0, i32 10
  %139 = load ptr, ptr %138, align 8, !tbaa !83
  %140 = load i32, ptr %4, align 4, !tbaa !14
  call void @write_picture(ptr noundef %139, i32 noundef signext %140, i32 noundef signext 2)
  br label %141

141:                                              ; preds = %135, %45
  %142 = load ptr, ptr %3, align 8, !tbaa !72
  %143 = getelementptr inbounds nuw %struct.frame_store, ptr %142, i32 0, i32 0
  store i32 3, ptr %143, align 8, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #6
  ret void
}

declare ptr @alloc_storable_picture(i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext, i32 noundef signext) #3

declare void @dpb_combine_field_yuv(ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @flush_direct_output(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !14
  %3 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %4 = load i32, ptr %2, align 4, !tbaa !14
  call void @write_unpaired_field(ptr noundef %3, i32 noundef signext %4)
  %5 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %6 = getelementptr inbounds nuw %struct.frame_store, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  call void @free_storable_picture(ptr noundef %7)
  %8 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %9 = getelementptr inbounds nuw %struct.frame_store, ptr %8, i32 0, i32 10
  store ptr null, ptr %9, align 8, !tbaa !83
  %10 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %11 = getelementptr inbounds nuw %struct.frame_store, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  call void @free_storable_picture(ptr noundef %12)
  %13 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %14 = getelementptr inbounds nuw %struct.frame_store, ptr %13, i32 0, i32 11
  store ptr null, ptr %14, align 8, !tbaa !81
  %15 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %16 = getelementptr inbounds nuw %struct.frame_store, ptr %15, i32 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  call void @free_storable_picture(ptr noundef %17)
  %18 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %19 = getelementptr inbounds nuw %struct.frame_store, ptr %18, i32 0, i32 12
  store ptr null, ptr %19, align 8, !tbaa !82
  %20 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %21 = getelementptr inbounds nuw %struct.frame_store, ptr %20, i32 0, i32 0
  store i32 0, ptr %21, align 8, !tbaa !79
  ret void
}

declare void @free_storable_picture(ptr noundef) #3

; Function Attrs: nounwind
define dso_local void @write_stored_frame(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !72
  store i32 %1, ptr %4, align 4, !tbaa !14
  %5 = load i32, ptr %4, align 4, !tbaa !14
  call void @flush_direct_output(i32 noundef signext %5)
  %6 = load ptr, ptr %3, align 8, !tbaa !72
  %7 = getelementptr inbounds nuw %struct.frame_store, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !79
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !72
  %12 = load i32, ptr %4, align 4, !tbaa !14
  call void @write_unpaired_field(ptr noundef %11, i32 noundef signext %12)
  br label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !tbaa !72
  %15 = getelementptr inbounds nuw %struct.frame_store, ptr %14, i32 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = load i32, ptr %4, align 4, !tbaa !14
  call void @write_picture(ptr noundef %16, i32 noundef signext %17, i32 noundef signext 0)
  br label %18

18:                                               ; preds = %13, %10
  %19 = load ptr, ptr %3, align 8, !tbaa !72
  %20 = getelementptr inbounds nuw %struct.frame_store, ptr %19, i32 0, i32 8
  store i32 1, ptr %20, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind
define dso_local void @direct_output(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !29
  store i32 %1, ptr %4, align 4, !tbaa !14
  %5 = load ptr, ptr %3, align 8, !tbaa !29
  %6 = getelementptr inbounds nuw %struct.storable_picture, ptr %5, i32 0, i32 0
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !tbaa !14
  call void @flush_direct_output(i32 noundef signext %10)
  %11 = load ptr, ptr %3, align 8, !tbaa !29
  %12 = load i32, ptr %4, align 4, !tbaa !14
  call void @write_picture(ptr noundef %11, i32 noundef signext %12, i32 noundef signext 0)
  %13 = load ptr, ptr %3, align 8, !tbaa !29
  call void @free_storable_picture(ptr noundef %13)
  br label %84

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !29
  %16 = getelementptr inbounds nuw %struct.storable_picture, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %21 = getelementptr inbounds nuw %struct.frame_store, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, ptr %4, align 4, !tbaa !14
  call void @flush_direct_output(i32 noundef signext %26)
  br label %27

27:                                               ; preds = %25, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !29
  %29 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %30 = getelementptr inbounds nuw %struct.frame_store, ptr %29, i32 0, i32 11
  store ptr %28, ptr %30, align 8, !tbaa !81
  %31 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %32 = getelementptr inbounds nuw %struct.frame_store, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !79
  %34 = or i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !79
  br label %35

35:                                               ; preds = %27, %14
  %36 = load ptr, ptr %3, align 8, !tbaa !29
  %37 = getelementptr inbounds nuw %struct.storable_picture, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !85
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %42 = getelementptr inbounds nuw %struct.frame_store, ptr %41, i32 0, i32 0
  %43 = load i32, ptr %42, align 8, !tbaa !79
  %44 = and i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, ptr %4, align 4, !tbaa !14
  call void @flush_direct_output(i32 noundef signext %47)
  br label %48

48:                                               ; preds = %46, %40
  %49 = load ptr, ptr %3, align 8, !tbaa !29
  %50 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %51 = getelementptr inbounds nuw %struct.frame_store, ptr %50, i32 0, i32 12
  store ptr %49, ptr %51, align 8, !tbaa !82
  %52 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %53 = getelementptr inbounds nuw %struct.frame_store, ptr %52, i32 0, i32 0
  %54 = load i32, ptr %53, align 8, !tbaa !79
  %55 = or i32 %54, 2
  store i32 %55, ptr %53, align 8, !tbaa !79
  br label %56

56:                                               ; preds = %48, %35
  %57 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %58 = getelementptr inbounds nuw %struct.frame_store, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !79
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %84

61:                                               ; preds = %56
  %62 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  call void @dpb_combine_field_yuv(ptr noundef %62)
  %63 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %64 = getelementptr inbounds nuw %struct.frame_store, ptr %63, i32 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = load i32, ptr %4, align 4, !tbaa !14
  call void @write_picture(ptr noundef %65, i32 noundef signext %66, i32 noundef signext 0)
  %67 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %68 = getelementptr inbounds nuw %struct.frame_store, ptr %67, i32 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !83
  call void @free_storable_picture(ptr noundef %69)
  %70 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %71 = getelementptr inbounds nuw %struct.frame_store, ptr %70, i32 0, i32 10
  store ptr null, ptr %71, align 8, !tbaa !83
  %72 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %73 = getelementptr inbounds nuw %struct.frame_store, ptr %72, i32 0, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !81
  call void @free_storable_picture(ptr noundef %74)
  %75 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %76 = getelementptr inbounds nuw %struct.frame_store, ptr %75, i32 0, i32 11
  store ptr null, ptr %76, align 8, !tbaa !81
  %77 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %78 = getelementptr inbounds nuw %struct.frame_store, ptr %77, i32 0, i32 12
  %79 = load ptr, ptr %78, align 8, !tbaa !82
  call void @free_storable_picture(ptr noundef %79)
  %80 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %81 = getelementptr inbounds nuw %struct.frame_store, ptr %80, i32 0, i32 12
  store ptr null, ptr %81, align 8, !tbaa !82
  %82 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %83 = getelementptr inbounds nuw %struct.frame_store, ptr %82, i32 0, i32 0
  store i32 0, ptr %83, align 8, !tbaa !79
  br label %84

84:                                               ; preds = %9, %61, %56
  ret void
}

; Function Attrs: nounwind
define dso_local void @direct_output_paff(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !29
  store i32 %1, ptr %4, align 4, !tbaa !14
  %5 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %6 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %7 = getelementptr inbounds nuw %struct.frame_store, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  call void @free_storable_picture(ptr noundef %8)
  %9 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %10 = getelementptr inbounds nuw %struct.frame_store, ptr %9, i32 0, i32 10
  store ptr null, ptr %10, align 8, !tbaa !83
  %11 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %12 = getelementptr inbounds nuw %struct.frame_store, ptr %11, i32 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  call void @free_storable_picture(ptr noundef %13)
  %14 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %15 = getelementptr inbounds nuw %struct.frame_store, ptr %14, i32 0, i32 11
  store ptr null, ptr %15, align 8, !tbaa !81
  %16 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %17 = getelementptr inbounds nuw %struct.frame_store, ptr %16, i32 0, i32 12
  %18 = load ptr, ptr %17, align 8, !tbaa !82
  call void @free_storable_picture(ptr noundef %18)
  %19 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %20 = getelementptr inbounds nuw %struct.frame_store, ptr %19, i32 0, i32 12
  store ptr null, ptr %20, align 8, !tbaa !82
  %21 = load ptr, ptr @out_buffer, align 8, !tbaa !72
  %22 = getelementptr inbounds nuw %struct.frame_store, ptr %21, i32 0, i32 0
  store i32 0, ptr %22, align 8, !tbaa !79
  %23 = load ptr, ptr %3, align 8, !tbaa !29
  %24 = load i32, ptr %4, align 4, !tbaa !14
  call void @direct_output(ptr noundef %23, i32 noundef signext %24)
  ret void
}

declare signext i32 @printf(ptr noundef, ...) #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!"short", !6, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p2 short", !13, i64 0}
!13 = !{!"any p2 pointer", !5, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 short", !5, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !19}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !6, i64 0}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, !19}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS16storable_picture", !5, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!33, !15, i64 15440}
!33 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !34, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !35, i64 128, !35, i64 136, !15, i64 144, !36, i64 152, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !38, i64 14160, !36, i64 14168, !36, i64 14176, !36, i64 14184, !38, i64 14192, !38, i64 14200, !5, i64 14208, !5, i64 14216, !40, i64 14224, !41, i64 14232, !41, i64 14240, !15, i64 14248, !15, i64 14252, !15, i64 14256, !15, i64 14260, !6, i64 14264, !15, i64 14328, !15, i64 14332, !15, i64 14336, !15, i64 14340, !15, i64 14344, !42, i64 14352, !15, i64 14360, !15, i64 14364, !15, i64 14368, !15, i64 14372, !43, i64 14376, !43, i64 14384, !43, i64 14392, !43, i64 14400, !6, i64 14408, !15, i64 14440, !15, i64 14444, !15, i64 14448, !15, i64 14452, !15, i64 14456, !15, i64 14460, !15, i64 14464, !15, i64 14468, !6, i64 14472, !15, i64 15240, !15, i64 15244, !15, i64 15248, !15, i64 15252, !15, i64 15256, !15, i64 15260, !15, i64 15264, !15, i64 15268, !15, i64 15272, !15, i64 15276, !15, i64 15280, !15, i64 15284, !15, i64 15288, !6, i64 15292, !15, i64 15296, !15, i64 15300, !6, i64 15304, !15, i64 15312, !15, i64 15316, !15, i64 15320, !15, i64 15324, !15, i64 15328, !15, i64 15332, !15, i64 15336, !15, i64 15340, !15, i64 15344, !15, i64 15348, !15, i64 15352, !15, i64 15356, !15, i64 15360, !15, i64 15364, !15, i64 15368, !15, i64 15372, !46, i64 15376, !15, i64 15384, !15, i64 15388, !15, i64 15392, !15, i64 15396, !15, i64 15400, !15, i64 15404, !15, i64 15408, !15, i64 15412, !15, i64 15416, !15, i64 15420, !15, i64 15424, !15, i64 15428, !15, i64 15432, !15, i64 15436, !15, i64 15440, !15, i64 15444, !15, i64 15448, !15, i64 15452, !15, i64 15456, !15, i64 15460, !15, i64 15464, !15, i64 15468, !15, i64 15472, !47, i64 15480, !48, i64 15488, !36, i64 15496, !47, i64 15504, !15, i64 15512, !15, i64 15516, !15, i64 15520, !15, i64 15524, !15, i64 15528, !15, i64 15532, !15, i64 15536, !15, i64 15540, !15, i64 15544, !15, i64 15548, !6, i64 15552, !6, i64 15576, !15, i64 15584, !15, i64 15588, !9, i64 15592, !15, i64 15596, !15, i64 15600, !15, i64 15604, !15, i64 15608, !15, i64 15612}
!34 = !{!"float", !6, i64 0}
!35 = !{!"p2 omnipotent char", !13, i64 0}
!36 = !{!"p3 int", !37, i64 0}
!37 = !{!"any p3 pointer", !13, i64 0}
!38 = !{!"p4 int", !39, i64 0}
!39 = !{!"any p4 pointer", !37, i64 0}
!40 = !{!"p1 _ZTS10macroblock", !5, i64 0}
!41 = !{!"p1 int", !5, i64 0}
!42 = !{!"double", !6, i64 0}
!43 = !{!"p6 short", !44, i64 0}
!44 = !{!"any p6 pointer", !45, i64 0}
!45 = !{!"any p5 pointer", !39, i64 0}
!46 = !{!"p1 _ZTS18DecRefPicMarking_s", !5, i64 0}
!47 = !{!"p2 double", !13, i64 0}
!48 = !{!"p3 double", !37, i64 0}
!49 = !{!50, !15, i64 5272}
!50 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !15, i64 264, !15, i64 268, !15, i64 272, !15, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !15, i64 1560, !15, i64 1564, !15, i64 1568, !15, i64 1572, !15, i64 1576, !15, i64 1580, !6, i64 1584, !15, i64 2084, !15, i64 2088, !15, i64 2092, !15, i64 2096, !15, i64 2100, !15, i64 2104, !15, i64 2108, !15, i64 2112, !15, i64 2116, !15, i64 2120, !15, i64 2124, !15, i64 2128, !15, i64 2132, !15, i64 2136, !15, i64 2140, !15, i64 2144, !15, i64 2148, !15, i64 2152, !15, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !15, i64 2928, !15, i64 2932, !15, i64 2936, !15, i64 2940, !15, i64 2944, !15, i64 2948, !15, i64 2952, !15, i64 2956, !15, i64 2960, !15, i64 2964, !15, i64 2968, !15, i64 2972, !6, i64 2976, !15, i64 4000, !15, i64 4004, !15, i64 4008, !15, i64 4012, !15, i64 4016, !15, i64 4020, !15, i64 4024, !15, i64 4028, !15, i64 4032, !15, i64 4036, !15, i64 4040, !15, i64 4044, !15, i64 4048, !15, i64 4052, !15, i64 4056, !15, i64 4060, !15, i64 4064, !15, i64 4068, !15, i64 4072, !15, i64 4076, !42, i64 4080, !15, i64 4088, !15, i64 4092, !15, i64 4096, !15, i64 4100, !15, i64 4104, !15, i64 4108, !15, i64 4112, !15, i64 4116, !15, i64 4120, !15, i64 4124, !15, i64 4128, !15, i64 4132, !15, i64 4136, !15, i64 4140, !15, i64 4144, !15, i64 4148, !15, i64 4152, !15, i64 4156, !15, i64 4160, !15, i64 4164, !15, i64 4168, !15, i64 4172, !15, i64 4176, !15, i64 4180, !15, i64 4184, !15, i64 4188, !6, i64 4192, !6, i64 4448, !15, i64 4704, !15, i64 4708, !15, i64 4712, !15, i64 4716, !15, i64 4720, !15, i64 4724, !15, i64 4728, !15, i64 4732, !15, i64 4736, !15, i64 4740, !15, i64 4744, !15, i64 4748, !15, i64 4752, !15, i64 4756, !15, i64 4760, !15, i64 4764, !15, i64 4768, !15, i64 4772, !6, i64 4776, !15, i64 5032, !15, i64 5036, !41, i64 5040, !41, i64 5048, !4, i64 5056, !41, i64 5064, !15, i64 5072, !15, i64 5076, !15, i64 5080, !15, i64 5084, !15, i64 5088, !15, i64 5092, !15, i64 5096, !15, i64 5100, !15, i64 5104, !15, i64 5108, !15, i64 5112, !15, i64 5116, !15, i64 5120, !15, i64 5124, !15, i64 5128, !15, i64 5132, !15, i64 5136, !42, i64 5144, !42, i64 5152, !42, i64 5160, !6, i64 5168, !15, i64 5208, !6, i64 5212, !15, i64 5244, !15, i64 5248, !15, i64 5252, !15, i64 5256, !15, i64 5260, !15, i64 5264, !15, i64 5268, !15, i64 5272, !15, i64 5276, !15, i64 5280, !15, i64 5284, !15, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !15, i64 5648, !15, i64 5652, !15, i64 5656, !15, i64 5660, !6, i64 5664, !6, i64 5704, !15, i64 5744, !15, i64 5748, !15, i64 5752, !15, i64 5756, !15, i64 5760, !15, i64 5764, !15, i64 5768, !15, i64 5772, !15, i64 5776, !6, i64 5780, !15, i64 5792}
!51 = !{!50, !15, i64 64}
!52 = !{!53, !15, i64 6388}
!53 = !{!"storable_picture", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !6, i64 24, !6, i64 1608, !6, i64 3192, !6, i64 4776, !15, i64 6360, !15, i64 6364, !15, i64 6368, !15, i64 6372, !15, i64 6376, !15, i64 6380, !15, i64 6384, !15, i64 6388, !15, i64 6392, !15, i64 6396, !15, i64 6400, !15, i64 6404, !15, i64 6408, !15, i64 6412, !15, i64 6416, !15, i64 6420, !15, i64 6424, !15, i64 6428, !15, i64 6432, !12, i64 6440, !54, i64 6448, !54, i64 6456, !55, i64 6464, !56, i64 6472, !4, i64 6480, !57, i64 6488, !58, i64 6496, !58, i64 6504, !54, i64 6512, !35, i64 6520, !35, i64 6528, !30, i64 6536, !30, i64 6544, !30, i64 6552, !15, i64 6560, !15, i64 6564, !15, i64 6568, !15, i64 6572, !15, i64 6576, !15, i64 6580, !15, i64 6584}
!54 = !{!"p4 short", !39, i64 0}
!55 = !{!"p5 short", !45, i64 0}
!56 = !{!"p3 short", !37, i64 0}
!57 = !{!"p3 omnipotent char", !37, i64 0}
!58 = !{!"p3 long long", !37, i64 0}
!59 = !{!53, !15, i64 6568}
!60 = !{!53, !15, i64 6560}
!61 = !{!53, !15, i64 6572}
!62 = !{!53, !15, i64 6576}
!63 = !{!53, !15, i64 6564}
!64 = !{!53, !15, i64 6580}
!65 = !{!53, !15, i64 6584}
!66 = !{!53, !15, i64 6392}
!67 = !{!53, !15, i64 6396}
!68 = !{!53, !56, i64 6472}
!69 = !{!53, !15, i64 6400}
!70 = !{!53, !15, i64 6404}
!71 = !{!53, !12, i64 6440}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 _ZTS11frame_store", !5, i64 0}
!74 = !{!33, !15, i64 15512}
!75 = distinct !{!75, !19}
!76 = !{!33, !15, i64 15516}
!77 = distinct !{!77, !19}
!78 = distinct !{!78, !19}
!79 = !{!80, !15, i64 0}
!80 = !{!"frame_store", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !30, i64 40, !30, i64 48, !30, i64 56}
!81 = !{!80, !30, i64 48}
!82 = !{!80, !30, i64 56}
!83 = !{!80, !30, i64 40}
!84 = !{!80, !15, i64 32}
!85 = !{!53, !15, i64 0}
