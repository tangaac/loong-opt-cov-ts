; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/miller.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/miller.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.edt = type { ptr, i32, i32, i32 }

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1

; Function Attrs: nounwind
define dso_local ptr @G_do_miller(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2, i32 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
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
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  store i32 %0, ptr %6, align 4, !tbaa !3
  store i32 %1, ptr %7, align 4, !tbaa !3
  store i32 %2, ptr %8, align 4, !tbaa !3
  store i32 %3, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  %21 = load i32, ptr %6, align 4, !tbaa !3
  %22 = load i32, ptr %7, align 4, !tbaa !3
  %23 = add nsw i32 %21, %22
  store i32 %23, ptr %10, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %19) #3
  %24 = load i32, ptr %10, align 4, !tbaa !3
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = call ptr @_Z_myalloc(i64 noundef %27)
  store ptr %28, ptr %18, align 8, !tbaa !7
  %29 = load i32, ptr %10, align 4, !tbaa !3
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = call ptr @_Z_myalloc(i64 noundef %32)
  store ptr %33, ptr %19, align 8, !tbaa !11
  store i32 0, ptr %15, align 4, !tbaa !3
  br label %34

34:                                               ; preds = %51, %4
  %35 = load i32, ptr %15, align 4, !tbaa !3
  %36 = load i32, ptr %6, align 4, !tbaa !3
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, ptr %15, align 4, !tbaa !3
  %40 = load i32, ptr %7, align 4, !tbaa !3
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, ptr %15, align 4, !tbaa !3
  %44 = load i32, ptr %15, align 4, !tbaa !3
  %45 = load i32, ptr %9, align 4, !tbaa !3
  %46 = call signext i32 @X_com(i32 noundef signext %43, i32 noundef signext %44, i32 noundef signext %45)
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %42, %38, %34
  %49 = phi i1 [ false, %38 ], [ false, %34 ], [ %47, %42 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %15, align 4, !tbaa !3
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %15, align 4, !tbaa !3
  br label %34, !llvm.loop !13

54:                                               ; preds = %48
  %55 = load i32, ptr %15, align 4, !tbaa !3
  %56 = load ptr, ptr %19, align 8, !tbaa !11
  %57 = load i32, ptr %10, align 4, !tbaa !3
  %58 = sdiv i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %56, i64 %59
  store i32 %55, ptr %60, align 4, !tbaa !3
  %61 = load ptr, ptr %18, align 8, !tbaa !7
  %62 = load i32, ptr %10, align 4, !tbaa !3
  %63 = sdiv i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %61, i64 %64
  store ptr null, ptr %65, align 8, !tbaa !15
  %66 = load i32, ptr %15, align 4, !tbaa !3
  %67 = load i32, ptr %6, align 4, !tbaa !3
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, ptr %10, align 4, !tbaa !3
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %71, 1
  br label %77

73:                                               ; preds = %54
  %74 = load i32, ptr %10, align 4, !tbaa !3
  %75 = sdiv i32 %74, 2
  %76 = sub nsw i32 %75, 1
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ]
  store i32 %78, ptr %11, align 4, !tbaa !3
  %79 = load i32, ptr %15, align 4, !tbaa !3
  %80 = load i32, ptr %7, align 4, !tbaa !3
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, ptr %10, align 4, !tbaa !3
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 %84, 1
  br label %90

86:                                               ; preds = %77
  %87 = load i32, ptr %10, align 4, !tbaa !3
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %88, 1
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  store i32 %91, ptr %12, align 4, !tbaa !3
  %92 = load i32, ptr %11, align 4, !tbaa !3
  %93 = load i32, ptr %12, align 4, !tbaa !3
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store ptr null, ptr %5, align 8
  store i32 1, ptr %20, align 4
  br label %267

96:                                               ; preds = %90
  store i32 1, ptr %13, align 4, !tbaa !3
  br label %97

97:                                               ; preds = %262, %96
  %98 = load i32, ptr %13, align 4, !tbaa !3
  %99 = load i32, ptr %8, align 4, !tbaa !3
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %265

101:                                              ; preds = %97
  %102 = load i32, ptr %11, align 4, !tbaa !3
  store i32 %102, ptr %14, align 4, !tbaa !3
  br label %103

103:                                              ; preds = %244, %101
  %104 = load i32, ptr %14, align 4, !tbaa !3
  %105 = load i32, ptr %12, align 4, !tbaa !3
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %247

107:                                              ; preds = %103
  %108 = call ptr @_Z_myalloc(i64 noundef 24)
  store ptr %108, ptr %17, align 8, !tbaa !15
  %109 = load i32, ptr %14, align 4, !tbaa !3
  %110 = load i32, ptr %10, align 4, !tbaa !3
  %111 = sdiv i32 %110, 2
  %112 = load i32, ptr %13, align 4, !tbaa !3
  %113 = sub nsw i32 %111, %112
  %114 = icmp eq i32 %109, %113
  br i1 %114, label %136, label %115

115:                                              ; preds = %107
  %116 = load i32, ptr %14, align 4, !tbaa !3
  %117 = load i32, ptr %10, align 4, !tbaa !3
  %118 = sdiv i32 %117, 2
  %119 = load i32, ptr %13, align 4, !tbaa !3
  %120 = add nsw i32 %118, %119
  %121 = icmp ne i32 %116, %120
  br i1 %121, label %122, label %154

122:                                              ; preds = %115
  %123 = load ptr, ptr %19, align 8, !tbaa !11
  %124 = load i32, ptr %14, align 4, !tbaa !3
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, ptr %123, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !3
  %129 = load ptr, ptr %19, align 8, !tbaa !11
  %130 = load i32, ptr %14, align 4, !tbaa !3
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %129, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !3
  %135 = icmp sge i32 %128, %134
  br i1 %135, label %136, label %154

136:                                              ; preds = %122, %107
  %137 = load ptr, ptr %19, align 8, !tbaa !11
  %138 = load i32, ptr %14, align 4, !tbaa !3
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, ptr %137, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !3
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %15, align 4, !tbaa !3
  %144 = load ptr, ptr %18, align 8, !tbaa !7
  %145 = load i32, ptr %14, align 4, !tbaa !3
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds ptr, ptr %144, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !15
  %150 = load ptr, ptr %17, align 8, !tbaa !15
  %151 = getelementptr inbounds nuw %struct.edt, ptr %150, i32 0, i32 0
  store ptr %149, ptr %151, align 8, !tbaa !17
  %152 = load ptr, ptr %17, align 8, !tbaa !15
  %153 = getelementptr inbounds nuw %struct.edt, ptr %152, i32 0, i32 1
  store i32 2, ptr %153, align 8, !tbaa !19
  br label %171

154:                                              ; preds = %122, %115
  %155 = load ptr, ptr %19, align 8, !tbaa !11
  %156 = load i32, ptr %14, align 4, !tbaa !3
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, ptr %155, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !3
  store i32 %160, ptr %15, align 4, !tbaa !3
  %161 = load ptr, ptr %18, align 8, !tbaa !7
  %162 = load i32, ptr %14, align 4, !tbaa !3
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds ptr, ptr %161, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !15
  %167 = load ptr, ptr %17, align 8, !tbaa !15
  %168 = getelementptr inbounds nuw %struct.edt, ptr %167, i32 0, i32 0
  store ptr %166, ptr %168, align 8, !tbaa !17
  %169 = load ptr, ptr %17, align 8, !tbaa !15
  %170 = getelementptr inbounds nuw %struct.edt, ptr %169, i32 0, i32 1
  store i32 1, ptr %170, align 8, !tbaa !19
  br label %171

171:                                              ; preds = %154, %136
  %172 = load i32, ptr %15, align 4, !tbaa !3
  %173 = load ptr, ptr %17, align 8, !tbaa !15
  %174 = getelementptr inbounds nuw %struct.edt, ptr %173, i32 0, i32 2
  store i32 %172, ptr %174, align 4, !tbaa !20
  %175 = load i32, ptr %15, align 4, !tbaa !3
  %176 = load i32, ptr %14, align 4, !tbaa !3
  %177 = add nsw i32 %175, %176
  %178 = load i32, ptr %10, align 4, !tbaa !3
  %179 = sdiv i32 %178, 2
  %180 = sub nsw i32 %177, %179
  store i32 %180, ptr %16, align 4, !tbaa !3
  %181 = load i32, ptr %16, align 4, !tbaa !3
  %182 = load ptr, ptr %17, align 8, !tbaa !15
  %183 = getelementptr inbounds nuw %struct.edt, ptr %182, i32 0, i32 3
  store i32 %181, ptr %183, align 8, !tbaa !21
  %184 = load ptr, ptr %17, align 8, !tbaa !15
  %185 = load ptr, ptr %18, align 8, !tbaa !7
  %186 = load i32, ptr %14, align 4, !tbaa !3
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %185, i64 %187
  store ptr %184, ptr %188, align 8, !tbaa !15
  br label %189

189:                                              ; preds = %205, %171
  %190 = load i32, ptr %15, align 4, !tbaa !3
  %191 = load i32, ptr %6, align 4, !tbaa !3
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i32, ptr %16, align 4, !tbaa !3
  %195 = load i32, ptr %7, align 4, !tbaa !3
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, ptr %15, align 4, !tbaa !3
  %199 = load i32, ptr %16, align 4, !tbaa !3
  %200 = load i32, ptr %9, align 4, !tbaa !3
  %201 = call signext i32 @X_com(i32 noundef signext %198, i32 noundef signext %199, i32 noundef signext %200)
  %202 = icmp eq i32 %201, 0
  br label %203

203:                                              ; preds = %197, %193, %189
  %204 = phi i1 [ false, %193 ], [ false, %189 ], [ %202, %197 ]
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = load i32, ptr %15, align 4, !tbaa !3
  %207 = add nsw i32 %206, 1
  store i32 %207, ptr %15, align 4, !tbaa !3
  %208 = load i32, ptr %16, align 4, !tbaa !3
  %209 = add nsw i32 %208, 1
  store i32 %209, ptr %16, align 4, !tbaa !3
  br label %189, !llvm.loop !22

210:                                              ; preds = %203
  %211 = load i32, ptr %15, align 4, !tbaa !3
  %212 = load ptr, ptr %19, align 8, !tbaa !11
  %213 = load i32, ptr %14, align 4, !tbaa !3
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, ptr %212, i64 %214
  store i32 %211, ptr %215, align 4, !tbaa !3
  %216 = load i32, ptr %15, align 4, !tbaa !3
  %217 = load i32, ptr %6, align 4, !tbaa !3
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %229

219:                                              ; preds = %210
  %220 = load i32, ptr %16, align 4, !tbaa !3
  %221 = load i32, ptr %7, align 4, !tbaa !3
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load ptr, ptr %18, align 8, !tbaa !7
  %225 = load i32, ptr %14, align 4, !tbaa !3
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds ptr, ptr %224, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !15
  store ptr %228, ptr %5, align 8
  store i32 1, ptr %20, align 4
  br label %267

229:                                              ; preds = %219, %210
  %230 = load i32, ptr %15, align 4, !tbaa !3
  %231 = load i32, ptr %6, align 4, !tbaa !3
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, ptr %14, align 4, !tbaa !3
  %235 = add nsw i32 %234, 2
  store i32 %235, ptr %11, align 4, !tbaa !3
  br label %236

236:                                              ; preds = %233, %229
  %237 = load i32, ptr %16, align 4, !tbaa !3
  %238 = load i32, ptr %7, align 4, !tbaa !3
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, ptr %14, align 4, !tbaa !3
  %242 = sub nsw i32 %241, 2
  store i32 %242, ptr %12, align 4, !tbaa !3
  br label %243

243:                                              ; preds = %240, %236
  br label %244

244:                                              ; preds = %243
  %245 = load i32, ptr %14, align 4, !tbaa !3
  %246 = add nsw i32 %245, 2
  store i32 %246, ptr %14, align 4, !tbaa !3
  br label %103, !llvm.loop !23

247:                                              ; preds = %103
  %248 = load i32, ptr %11, align 4, !tbaa !3
  %249 = add nsw i32 %248, -1
  store i32 %249, ptr %11, align 4, !tbaa !3
  %250 = load i32, ptr %12, align 4, !tbaa !3
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %12, align 4, !tbaa !3
  %252 = load i32, ptr %13, align 4, !tbaa !3
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %247
  %255 = load i32, ptr %13, align 4, !tbaa !3
  %256 = srem i32 %255, 100
  %257 = icmp eq i32 0, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load i32, ptr %13, align 4, !tbaa !3
  %260 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @Z_err_buf, ptr noundef @.str, i32 noundef signext %259) #3
  call void @Z_chatter(ptr noundef @Z_err_buf)
  br label %261

261:                                              ; preds = %258, %254, %247
  br label %262

262:                                              ; preds = %261
  %263 = load i32, ptr %13, align 4, !tbaa !3
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %13, align 4, !tbaa !3
  br label %97, !llvm.loop !24

265:                                              ; preds = %97
  %266 = load i32, ptr %8, align 4, !tbaa !3
  call void @Z_exceed(i32 noundef signext %266)
  call void @Z_fatal(ptr noundef @.str.1)
  store ptr null, ptr %5, align 8
  store i32 1, ptr %20, align 4
  br label %267

267:                                              ; preds = %265, %223, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr %19) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  %268 = load ptr, ptr %5, align 8
  ret ptr %268
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare ptr @_Z_myalloc(...) #2

declare signext i32 @X_com(...) #2

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

declare void @Z_chatter(...) #2

declare void @Z_exceed(...) #2

declare void @Z_fatal(...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
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
!8 = !{!"p2 _ZTS3edt", !9, i64 0}
!9 = !{!"any p2 pointer", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 int", !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS3edt", !10, i64 0}
!17 = !{!18, !16, i64 0}
!18 = !{!"edt", !16, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!19 = !{!18, !4, i64 8}
!20 = !{!18, !4, i64 12}
!21 = !{!18, !4, i64 16}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
