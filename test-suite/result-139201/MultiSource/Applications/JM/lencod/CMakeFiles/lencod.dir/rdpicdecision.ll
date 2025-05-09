; ModuleID = './MultiSource/Applications/JM/lencod/CMakeFiles/lencod.dir/rdpicdecision.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/JM/lencod/rdpicdecision.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.RD_DATA = type { double, [16 x [16 x i16]], [16 x [16 x i16]], [16 x [16 x i16]], ptr, ptr, i32, i16, [4 x i32], [4 x i32], ptr, [16 x i8], [16 x i8], i32, i64, i32, ptr, ptr, [2 x [4 x [4 x i8]]], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [32 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [2 x i32], i32, i32, i16, i32, i32, i32, i32, i32 }
%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], [4 x [4 x i32]], i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, [500 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, [5 x double], i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [6 x double], [256 x i8], i32, i32, i32, i32, [2 x [5 x i32]], [2 x [5 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32 }
%struct.Picture = type { i32, i32, [100 x ptr], i32, float, float, float }

@img = external global ptr, align 8
@input = external global ptr, align 8
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
define dso_local signext i32 @rd_pic_decision(double noundef %0, double noundef %1, i32 noundef signext %2, i32 noundef signext %3, double noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  store double %0, ptr %7, align 8, !tbaa !3
  store double %1, ptr %8, align 8, !tbaa !3
  store i32 %2, ptr %9, align 4, !tbaa !7
  store i32 %3, ptr %10, align 4, !tbaa !7
  store double %4, ptr %11, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #3
  %15 = load i32, ptr %9, align 4, !tbaa !7
  %16 = sitofp i32 %15 to double
  %17 = load double, ptr %11, align 8, !tbaa !3
  %18 = load double, ptr %7, align 8, !tbaa !3
  %19 = call double @llvm.fmuladd.f64(double %16, double %17, double %18)
  store double %19, ptr %12, align 8, !tbaa !3
  %20 = load i32, ptr %10, align 4, !tbaa !7
  %21 = sitofp i32 %20 to double
  %22 = load double, ptr %11, align 8, !tbaa !3
  %23 = load double, ptr %8, align 8, !tbaa !3
  %24 = call double @llvm.fmuladd.f64(double %21, double %22, double %23)
  store double %24, ptr %13, align 8, !tbaa !3
  %25 = load double, ptr %13, align 8, !tbaa !3
  %26 = load double, ptr %12, align 8, !tbaa !3
  %27 = fcmp ogt double %25, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %5
  %29 = load double, ptr %13, align 8, !tbaa !3
  %30 = load double, ptr %12, align 8, !tbaa !3
  %31 = fcmp oeq double %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load double, ptr %8, align 8, !tbaa !3
  %34 = load double, ptr %7, align 8, !tbaa !3
  %35 = fcmp oge double %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %5
  store i32 0, ptr %6, align 4
  store i32 1, ptr %14, align 4
  br label %38

37:                                               ; preds = %32, %28
  store i32 1, ptr %6, align 4
  store i32 1, ptr %14, align 4
  br label %38

38:                                               ; preds = %37, %36
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #3
  %39 = load i32, ptr %6, align 4
  ret i32 %39
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @picture_coding_decision(ptr noundef %0, ptr noundef %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !9
  store ptr %1, ptr %5, align 8, !tbaa !9
  store i32 %2, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #3
  %14 = load ptr, ptr @img, align 8, !tbaa !9
  %15 = getelementptr inbounds nuw %struct.ImageParameters, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = icmp eq i32 %16, 3
  %18 = zext i1 %17 to i32
  store i32 %18, ptr %8, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #3
  %19 = load ptr, ptr @img, align 8, !tbaa !9
  %20 = getelementptr inbounds nuw %struct.ImageParameters, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i32
  store i32 %23, ptr %9, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #3
  %24 = load ptr, ptr @input, align 8, !tbaa !9
  %25 = getelementptr inbounds nuw %struct.InputParameters, ptr %24, i32 0, i32 40
  %26 = load i32, ptr %25, align 8, !tbaa !29
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %3
  %29 = load i32, ptr %6, align 4, !tbaa !7
  %30 = sub nsw i32 %29, 12
  %31 = sitofp i32 %30 to double
  %32 = fdiv double %31, 3.000000e+00
  %33 = call double @pow(double noundef 2.000000e+00, double noundef %32) #3, !tbaa !7
  %34 = fmul double 6.800000e-01, %33
  %35 = load i32, ptr %9, align 4, !tbaa !7
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load i32, ptr %8, align 4, !tbaa !7
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi i1 [ true, %28 ], [ %39, %37 ]
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 2, i32 1
  %44 = sitofp i32 %43 to double
  %45 = fmul double %34, %44
  store double %45, ptr %7, align 8, !tbaa !3
  br label %53

46:                                               ; preds = %3
  %47 = load i32, ptr %6, align 4, !tbaa !7
  %48 = sub nsw i32 %47, 12
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, 3.000000e+00
  %51 = call double @pow(double noundef 2.000000e+00, double noundef %50) #3, !tbaa !7
  %52 = fmul double 6.800000e-01, %51
  store double %52, ptr %7, align 8, !tbaa !3
  br label %53

53:                                               ; preds = %46, %40
  %54 = load ptr, ptr %4, align 8, !tbaa !9
  %55 = getelementptr inbounds nuw %struct.Picture, ptr %54, i32 0, i32 4
  %56 = load float, ptr %55, align 4, !tbaa !32
  %57 = load ptr, ptr %4, align 8, !tbaa !9
  %58 = getelementptr inbounds nuw %struct.Picture, ptr %57, i32 0, i32 5
  %59 = load float, ptr %58, align 8, !tbaa !34
  %60 = fadd float %56, %59
  %61 = load ptr, ptr %4, align 8, !tbaa !9
  %62 = getelementptr inbounds nuw %struct.Picture, ptr %61, i32 0, i32 6
  %63 = load float, ptr %62, align 4, !tbaa !35
  %64 = fadd float %60, %63
  %65 = fpext float %64 to double
  store double %65, ptr %10, align 8, !tbaa !3
  %66 = load ptr, ptr %5, align 8, !tbaa !9
  %67 = getelementptr inbounds nuw %struct.Picture, ptr %66, i32 0, i32 4
  %68 = load float, ptr %67, align 4, !tbaa !32
  %69 = load ptr, ptr %5, align 8, !tbaa !9
  %70 = getelementptr inbounds nuw %struct.Picture, ptr %69, i32 0, i32 5
  %71 = load float, ptr %70, align 8, !tbaa !34
  %72 = fadd float %68, %71
  %73 = load ptr, ptr %5, align 8, !tbaa !9
  %74 = getelementptr inbounds nuw %struct.Picture, ptr %73, i32 0, i32 6
  %75 = load float, ptr %74, align 4, !tbaa !35
  %76 = fadd float %72, %75
  %77 = fpext float %76 to double
  store double %77, ptr %11, align 8, !tbaa !3
  %78 = load ptr, ptr %5, align 8, !tbaa !9
  %79 = getelementptr inbounds nuw %struct.Picture, ptr %78, i32 0, i32 3
  %80 = load i32, ptr %79, align 8, !tbaa !36
  store i32 %80, ptr %13, align 4, !tbaa !7
  %81 = load ptr, ptr %4, align 8, !tbaa !9
  %82 = getelementptr inbounds nuw %struct.Picture, ptr %81, i32 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !36
  store i32 %83, ptr %12, align 4, !tbaa !7
  %84 = load double, ptr %10, align 8, !tbaa !3
  %85 = load double, ptr %11, align 8, !tbaa !3
  %86 = load i32, ptr %12, align 4, !tbaa !7
  %87 = load i32, ptr %13, align 4, !tbaa !7
  %88 = load double, ptr %7, align 8, !tbaa !3
  %89 = call signext i32 @rd_pic_decision(double noundef %84, double noundef %85, i32 noundef signext %86, i32 noundef signext %87, double noundef %88)
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #3
  ret i32 %89
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #0

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !8, i64 20}
!12 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !13, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !14, i64 128, !14, i64 136, !8, i64 144, !16, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !5, i64 208, !5, i64 4816, !5, i64 7376, !5, i64 8528, !5, i64 12624, !5, i64 13136, !18, i64 14160, !16, i64 14168, !16, i64 14176, !16, i64 14184, !18, i64 14192, !18, i64 14200, !10, i64 14208, !10, i64 14216, !20, i64 14224, !21, i64 14232, !21, i64 14240, !8, i64 14248, !8, i64 14252, !8, i64 14256, !8, i64 14260, !5, i64 14264, !8, i64 14328, !8, i64 14332, !8, i64 14336, !8, i64 14340, !8, i64 14344, !4, i64 14352, !8, i64 14360, !8, i64 14364, !8, i64 14368, !8, i64 14372, !22, i64 14376, !22, i64 14384, !22, i64 14392, !22, i64 14400, !5, i64 14408, !8, i64 14440, !8, i64 14444, !8, i64 14448, !8, i64 14452, !8, i64 14456, !8, i64 14460, !8, i64 14464, !8, i64 14468, !5, i64 14472, !8, i64 15240, !8, i64 15244, !8, i64 15248, !8, i64 15252, !8, i64 15256, !8, i64 15260, !8, i64 15264, !8, i64 15268, !8, i64 15272, !8, i64 15276, !8, i64 15280, !8, i64 15284, !8, i64 15288, !5, i64 15292, !8, i64 15296, !8, i64 15300, !5, i64 15304, !8, i64 15312, !8, i64 15316, !8, i64 15320, !8, i64 15324, !8, i64 15328, !8, i64 15332, !8, i64 15336, !8, i64 15340, !8, i64 15344, !8, i64 15348, !8, i64 15352, !8, i64 15356, !8, i64 15360, !8, i64 15364, !8, i64 15368, !8, i64 15372, !25, i64 15376, !8, i64 15384, !8, i64 15388, !8, i64 15392, !8, i64 15396, !8, i64 15400, !8, i64 15404, !8, i64 15408, !8, i64 15412, !8, i64 15416, !8, i64 15420, !8, i64 15424, !8, i64 15428, !8, i64 15432, !8, i64 15436, !8, i64 15440, !8, i64 15444, !8, i64 15448, !8, i64 15452, !8, i64 15456, !8, i64 15460, !8, i64 15464, !8, i64 15468, !8, i64 15472, !26, i64 15480, !27, i64 15488, !16, i64 15496, !26, i64 15504, !8, i64 15512, !8, i64 15516, !8, i64 15520, !8, i64 15524, !8, i64 15528, !8, i64 15532, !8, i64 15536, !8, i64 15540, !8, i64 15544, !8, i64 15548, !5, i64 15552, !5, i64 15576, !8, i64 15584, !8, i64 15588, !28, i64 15592, !8, i64 15596, !8, i64 15600, !8, i64 15604, !8, i64 15608, !8, i64 15612}
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
!29 = !{!30, !8, i64 2096}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !5, i64 72, !5, i64 136, !5, i64 200, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !5, i64 280, !5, i64 536, !5, i64 792, !5, i64 1048, !5, i64 1304, !8, i64 1560, !8, i64 1564, !8, i64 1568, !8, i64 1572, !8, i64 1576, !8, i64 1580, !5, i64 1584, !8, i64 2084, !8, i64 2088, !8, i64 2092, !8, i64 2096, !8, i64 2100, !8, i64 2104, !8, i64 2108, !8, i64 2112, !8, i64 2116, !8, i64 2120, !8, i64 2124, !8, i64 2128, !8, i64 2132, !8, i64 2136, !8, i64 2140, !8, i64 2144, !8, i64 2148, !8, i64 2152, !8, i64 2156, !5, i64 2160, !5, i64 2416, !5, i64 2672, !8, i64 2928, !8, i64 2932, !8, i64 2936, !8, i64 2940, !8, i64 2944, !8, i64 2948, !8, i64 2952, !8, i64 2956, !8, i64 2960, !8, i64 2964, !8, i64 2968, !8, i64 2972, !5, i64 2976, !8, i64 4000, !8, i64 4004, !8, i64 4008, !8, i64 4012, !8, i64 4016, !8, i64 4020, !8, i64 4024, !8, i64 4028, !8, i64 4032, !8, i64 4036, !8, i64 4040, !8, i64 4044, !8, i64 4048, !8, i64 4052, !8, i64 4056, !8, i64 4060, !8, i64 4064, !8, i64 4068, !8, i64 4072, !8, i64 4076, !4, i64 4080, !8, i64 4088, !8, i64 4092, !8, i64 4096, !8, i64 4100, !8, i64 4104, !8, i64 4108, !8, i64 4112, !8, i64 4116, !8, i64 4120, !8, i64 4124, !8, i64 4128, !8, i64 4132, !8, i64 4136, !8, i64 4140, !8, i64 4144, !8, i64 4148, !8, i64 4152, !8, i64 4156, !8, i64 4160, !8, i64 4164, !8, i64 4168, !8, i64 4172, !8, i64 4176, !8, i64 4180, !8, i64 4184, !8, i64 4188, !5, i64 4192, !5, i64 4448, !8, i64 4704, !8, i64 4708, !8, i64 4712, !8, i64 4716, !8, i64 4720, !8, i64 4724, !8, i64 4728, !8, i64 4732, !8, i64 4736, !8, i64 4740, !8, i64 4744, !8, i64 4748, !8, i64 4752, !8, i64 4756, !8, i64 4760, !8, i64 4764, !8, i64 4768, !8, i64 4772, !5, i64 4776, !8, i64 5032, !8, i64 5036, !21, i64 5040, !21, i64 5048, !31, i64 5056, !21, i64 5064, !8, i64 5072, !8, i64 5076, !8, i64 5080, !8, i64 5084, !8, i64 5088, !8, i64 5092, !8, i64 5096, !8, i64 5100, !8, i64 5104, !8, i64 5108, !8, i64 5112, !8, i64 5116, !8, i64 5120, !8, i64 5124, !8, i64 5128, !8, i64 5132, !8, i64 5136, !4, i64 5144, !4, i64 5152, !4, i64 5160, !5, i64 5168, !8, i64 5208, !5, i64 5212, !8, i64 5244, !8, i64 5248, !8, i64 5252, !8, i64 5256, !8, i64 5260, !8, i64 5264, !8, i64 5268, !8, i64 5272, !8, i64 5276, !8, i64 5280, !8, i64 5284, !8, i64 5288, !5, i64 5296, !5, i64 5344, !5, i64 5392, !8, i64 5648, !8, i64 5652, !8, i64 5656, !8, i64 5660, !5, i64 5664, !5, i64 5704, !8, i64 5744, !8, i64 5748, !8, i64 5752, !8, i64 5756, !8, i64 5760, !8, i64 5764, !8, i64 5768, !8, i64 5772, !8, i64 5776, !5, i64 5780, !8, i64 5792}
!31 = !{!"p1 omnipotent char", !10, i64 0}
!32 = !{!33, !13, i64 812}
!33 = !{!"", !8, i64 0, !8, i64 4, !5, i64 8, !8, i64 808, !13, i64 812, !13, i64 816, !13, i64 820}
!34 = !{!33, !13, i64 816}
!35 = !{!33, !13, i64 820}
!36 = !{!33, !8, i64 808}
