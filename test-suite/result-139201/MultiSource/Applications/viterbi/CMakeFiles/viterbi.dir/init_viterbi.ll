; ModuleID = './MultiSource/Applications/viterbi/CMakeFiles/viterbi.dir/init_viterbi.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/viterbi/init_viterbi.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.param_viterbi_t = type { i64, i64, i64, [7 x i8], [7 x i8], i64, [128 x i8], [128 x i8], [128 x double], [128 x [143 x i8]] }

; Function Attrs: nounwind
define dso_local void @init_viterbi(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x [128 x i8]], align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 896, ptr %5) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #3
  %8 = load ptr, ptr %3, align 8, !tbaa !3
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 19632, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 896, i1 false)
  %9 = load i32, ptr %4, align 4, !tbaa !7
  switch i32 %9, label %133 [
    i32 1, label %10
    i32 2, label %19
    i32 3, label %34
    i32 4, label %55
    i32 5, label %88
  ]

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds [7 x i8], ptr %12, i64 0, i64 0
  store i8 1, ptr %13, align 8, !tbaa !9
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %14, i32 0, i32 4
  %16 = getelementptr inbounds [7 x i8], ptr %15, i64 0, i64 0
  store i8 1, ptr %16, align 1, !tbaa !9
  %17 = load ptr, ptr %3, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %17, i32 0, i32 5
  store i64 1, ptr %18, align 8, !tbaa !10
  br label %134

19:                                               ; preds = %2
  %20 = load ptr, ptr %3, align 8, !tbaa !3
  %21 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds [7 x i8], ptr %21, i64 0, i64 0
  store i8 1, ptr %22, align 8, !tbaa !9
  %23 = load ptr, ptr %3, align 8, !tbaa !3
  %24 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %23, i32 0, i32 3
  %25 = getelementptr inbounds [7 x i8], ptr %24, i64 0, i64 1
  store i8 0, ptr %25, align 1, !tbaa !9
  %26 = load ptr, ptr %3, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %26, i32 0, i32 4
  %28 = getelementptr inbounds [7 x i8], ptr %27, i64 0, i64 0
  store i8 1, ptr %28, align 1, !tbaa !9
  %29 = load ptr, ptr %3, align 8, !tbaa !3
  %30 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %29, i32 0, i32 4
  %31 = getelementptr inbounds [7 x i8], ptr %30, i64 0, i64 1
  store i8 1, ptr %31, align 1, !tbaa !9
  %32 = load ptr, ptr %3, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %32, i32 0, i32 5
  store i64 2, ptr %33, align 8, !tbaa !10
  br label %134

34:                                               ; preds = %2
  %35 = load ptr, ptr %3, align 8, !tbaa !3
  %36 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %35, i32 0, i32 3
  %37 = getelementptr inbounds [7 x i8], ptr %36, i64 0, i64 0
  store i8 1, ptr %37, align 8, !tbaa !9
  %38 = load ptr, ptr %3, align 8, !tbaa !3
  %39 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %38, i32 0, i32 3
  %40 = getelementptr inbounds [7 x i8], ptr %39, i64 0, i64 1
  store i8 0, ptr %40, align 1, !tbaa !9
  %41 = load ptr, ptr %3, align 8, !tbaa !3
  %42 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %41, i32 0, i32 3
  %43 = getelementptr inbounds [7 x i8], ptr %42, i64 0, i64 2
  store i8 1, ptr %43, align 2, !tbaa !9
  %44 = load ptr, ptr %3, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %44, i32 0, i32 4
  %46 = getelementptr inbounds [7 x i8], ptr %45, i64 0, i64 0
  store i8 1, ptr %46, align 1, !tbaa !9
  %47 = load ptr, ptr %3, align 8, !tbaa !3
  %48 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %47, i32 0, i32 4
  %49 = getelementptr inbounds [7 x i8], ptr %48, i64 0, i64 1
  store i8 1, ptr %49, align 1, !tbaa !9
  %50 = load ptr, ptr %3, align 8, !tbaa !3
  %51 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %50, i32 0, i32 4
  %52 = getelementptr inbounds [7 x i8], ptr %51, i64 0, i64 2
  store i8 0, ptr %52, align 1, !tbaa !9
  %53 = load ptr, ptr %3, align 8, !tbaa !3
  %54 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %53, i32 0, i32 5
  store i64 3, ptr %54, align 8, !tbaa !10
  br label %134

55:                                               ; preds = %2
  %56 = load ptr, ptr %3, align 8, !tbaa !3
  %57 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %56, i32 0, i32 3
  %58 = getelementptr inbounds [7 x i8], ptr %57, i64 0, i64 0
  store i8 1, ptr %58, align 8, !tbaa !9
  %59 = load ptr, ptr %3, align 8, !tbaa !3
  %60 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %59, i32 0, i32 3
  %61 = getelementptr inbounds [7 x i8], ptr %60, i64 0, i64 1
  store i8 0, ptr %61, align 1, !tbaa !9
  %62 = load ptr, ptr %3, align 8, !tbaa !3
  %63 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %62, i32 0, i32 3
  %64 = getelementptr inbounds [7 x i8], ptr %63, i64 0, i64 2
  store i8 1, ptr %64, align 2, !tbaa !9
  %65 = load ptr, ptr %3, align 8, !tbaa !3
  %66 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %65, i32 0, i32 3
  %67 = getelementptr inbounds [7 x i8], ptr %66, i64 0, i64 3
  store i8 0, ptr %67, align 1, !tbaa !9
  %68 = load ptr, ptr %3, align 8, !tbaa !3
  %69 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %68, i32 0, i32 3
  %70 = getelementptr inbounds [7 x i8], ptr %69, i64 0, i64 4
  store i8 1, ptr %70, align 4, !tbaa !9
  %71 = load ptr, ptr %3, align 8, !tbaa !3
  %72 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %71, i32 0, i32 4
  %73 = getelementptr inbounds [7 x i8], ptr %72, i64 0, i64 0
  store i8 1, ptr %73, align 1, !tbaa !9
  %74 = load ptr, ptr %3, align 8, !tbaa !3
  %75 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %74, i32 0, i32 4
  %76 = getelementptr inbounds [7 x i8], ptr %75, i64 0, i64 1
  store i8 1, ptr %76, align 1, !tbaa !9
  %77 = load ptr, ptr %3, align 8, !tbaa !3
  %78 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %77, i32 0, i32 4
  %79 = getelementptr inbounds [7 x i8], ptr %78, i64 0, i64 2
  store i8 0, ptr %79, align 1, !tbaa !9
  %80 = load ptr, ptr %3, align 8, !tbaa !3
  %81 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %80, i32 0, i32 4
  %82 = getelementptr inbounds [7 x i8], ptr %81, i64 0, i64 3
  store i8 1, ptr %82, align 1, !tbaa !9
  %83 = load ptr, ptr %3, align 8, !tbaa !3
  %84 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %83, i32 0, i32 4
  %85 = getelementptr inbounds [7 x i8], ptr %84, i64 0, i64 4
  store i8 0, ptr %85, align 1, !tbaa !9
  %86 = load ptr, ptr %3, align 8, !tbaa !3
  %87 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %86, i32 0, i32 5
  store i64 5, ptr %87, align 8, !tbaa !10
  br label %134

88:                                               ; preds = %2
  %89 = load ptr, ptr %3, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %89, i32 0, i32 3
  %91 = getelementptr inbounds [7 x i8], ptr %90, i64 0, i64 0
  store i8 1, ptr %91, align 8, !tbaa !9
  %92 = load ptr, ptr %3, align 8, !tbaa !3
  %93 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %92, i32 0, i32 3
  %94 = getelementptr inbounds [7 x i8], ptr %93, i64 0, i64 1
  store i8 0, ptr %94, align 1, !tbaa !9
  %95 = load ptr, ptr %3, align 8, !tbaa !3
  %96 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %95, i32 0, i32 3
  %97 = getelementptr inbounds [7 x i8], ptr %96, i64 0, i64 2
  store i8 0, ptr %97, align 2, !tbaa !9
  %98 = load ptr, ptr %3, align 8, !tbaa !3
  %99 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %98, i32 0, i32 3
  %100 = getelementptr inbounds [7 x i8], ptr %99, i64 0, i64 3
  store i8 0, ptr %100, align 1, !tbaa !9
  %101 = load ptr, ptr %3, align 8, !tbaa !3
  %102 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %101, i32 0, i32 3
  %103 = getelementptr inbounds [7 x i8], ptr %102, i64 0, i64 4
  store i8 1, ptr %103, align 4, !tbaa !9
  %104 = load ptr, ptr %3, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %104, i32 0, i32 3
  %106 = getelementptr inbounds [7 x i8], ptr %105, i64 0, i64 5
  store i8 0, ptr %106, align 1, !tbaa !9
  %107 = load ptr, ptr %3, align 8, !tbaa !3
  %108 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %107, i32 0, i32 3
  %109 = getelementptr inbounds [7 x i8], ptr %108, i64 0, i64 6
  store i8 1, ptr %109, align 2, !tbaa !9
  %110 = load ptr, ptr %3, align 8, !tbaa !3
  %111 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %110, i32 0, i32 4
  %112 = getelementptr inbounds [7 x i8], ptr %111, i64 0, i64 0
  store i8 1, ptr %112, align 1, !tbaa !9
  %113 = load ptr, ptr %3, align 8, !tbaa !3
  %114 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %113, i32 0, i32 4
  %115 = getelementptr inbounds [7 x i8], ptr %114, i64 0, i64 1
  store i8 1, ptr %115, align 1, !tbaa !9
  %116 = load ptr, ptr %3, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %116, i32 0, i32 4
  %118 = getelementptr inbounds [7 x i8], ptr %117, i64 0, i64 2
  store i8 1, ptr %118, align 1, !tbaa !9
  %119 = load ptr, ptr %3, align 8, !tbaa !3
  %120 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %119, i32 0, i32 4
  %121 = getelementptr inbounds [7 x i8], ptr %120, i64 0, i64 3
  store i8 1, ptr %121, align 1, !tbaa !9
  %122 = load ptr, ptr %3, align 8, !tbaa !3
  %123 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %122, i32 0, i32 4
  %124 = getelementptr inbounds [7 x i8], ptr %123, i64 0, i64 4
  store i8 0, ptr %124, align 1, !tbaa !9
  %125 = load ptr, ptr %3, align 8, !tbaa !3
  %126 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %125, i32 0, i32 4
  %127 = getelementptr inbounds [7 x i8], ptr %126, i64 0, i64 5
  store i8 1, ptr %127, align 1, !tbaa !9
  %128 = load ptr, ptr %3, align 8, !tbaa !3
  %129 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %128, i32 0, i32 4
  %130 = getelementptr inbounds [7 x i8], ptr %129, i64 0, i64 6
  store i8 0, ptr %130, align 1, !tbaa !9
  %131 = load ptr, ptr %3, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %131, i32 0, i32 5
  store i64 7, ptr %132, align 8, !tbaa !10
  br label %134

133:                                              ; preds = %2
  br label %134

134:                                              ; preds = %133, %88, %55, %34, %19, %10
  %135 = load ptr, ptr %3, align 8, !tbaa !3
  %136 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %135, i32 0, i32 0
  store i64 7, ptr %136, align 8, !tbaa !13
  %137 = load ptr, ptr %3, align 8, !tbaa !3
  %138 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %137, i32 0, i32 0
  %139 = load i64, ptr %138, align 8, !tbaa !13
  %140 = trunc i64 %139 to i32
  %141 = shl i32 1, %140
  %142 = sext i32 %141 to i64
  %143 = load ptr, ptr %3, align 8, !tbaa !3
  %144 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %143, i32 0, i32 1
  store i64 %142, ptr %144, align 8, !tbaa !14
  %145 = load ptr, ptr %3, align 8, !tbaa !3
  %146 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %145, i32 0, i32 2
  store i64 150, ptr %146, align 8, !tbaa !15
  store i64 0, ptr %6, align 8, !tbaa !16
  br label %147

147:                                              ; preds = %176, %134
  %148 = load i64, ptr %6, align 8, !tbaa !16
  %149 = load ptr, ptr %3, align 8, !tbaa !3
  %150 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %149, i32 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !14
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %153, label %179

153:                                              ; preds = %147
  store i64 0, ptr %7, align 8, !tbaa !16
  br label %154

154:                                              ; preds = %172, %153
  %155 = load i64, ptr %7, align 8, !tbaa !16
  %156 = icmp ult i64 %155, 7
  br i1 %156, label %157, label %175

157:                                              ; preds = %154
  %158 = load i64, ptr %6, align 8, !tbaa !16
  %159 = load i64, ptr %7, align 8, !tbaa !16
  %160 = trunc i64 %159 to i32
  %161 = shl i32 1, %160
  %162 = sext i32 %161 to i64
  %163 = and i64 %158, %162
  %164 = icmp ne i64 %163, 0
  %165 = zext i1 %164 to i32
  %166 = trunc i32 %165 to i8
  %167 = load i64, ptr %7, align 8, !tbaa !16
  %168 = sub i64 6, %167
  %169 = getelementptr inbounds nuw [7 x [128 x i8]], ptr %5, i64 0, i64 %168
  %170 = load i64, ptr %6, align 8, !tbaa !16
  %171 = getelementptr inbounds nuw [128 x i8], ptr %169, i64 0, i64 %170
  store i8 %166, ptr %171, align 1, !tbaa !9
  br label %172

172:                                              ; preds = %157
  %173 = load i64, ptr %7, align 8, !tbaa !16
  %174 = add i64 %173, 1
  store i64 %174, ptr %7, align 8, !tbaa !16
  br label %154, !llvm.loop !17

175:                                              ; preds = %154
  br label %176

176:                                              ; preds = %175
  %177 = load i64, ptr %6, align 8, !tbaa !16
  %178 = add i64 %177, 1
  store i64 %178, ptr %6, align 8, !tbaa !16
  br label %147, !llvm.loop !19

179:                                              ; preds = %147
  store i64 0, ptr %6, align 8, !tbaa !16
  br label %180

180:                                              ; preds = %243, %179
  %181 = load i64, ptr %6, align 8, !tbaa !16
  %182 = load ptr, ptr %3, align 8, !tbaa !3
  %183 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %182, i32 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !14
  %185 = icmp ult i64 %181, %184
  br i1 %185, label %186, label %246

186:                                              ; preds = %180
  %187 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 0
  %188 = load i64, ptr %6, align 8, !tbaa !16
  %189 = getelementptr inbounds nuw [128 x i8], ptr %187, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !9
  %191 = zext i8 %190 to i32
  %192 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 1
  %193 = load i64, ptr %6, align 8, !tbaa !16
  %194 = getelementptr inbounds nuw [128 x i8], ptr %192, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !9
  %196 = zext i8 %195 to i32
  %197 = xor i32 %191, %196
  %198 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 2
  %199 = load i64, ptr %6, align 8, !tbaa !16
  %200 = getelementptr inbounds nuw [128 x i8], ptr %198, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !9
  %202 = zext i8 %201 to i32
  %203 = xor i32 %197, %202
  %204 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 5
  %205 = load i64, ptr %6, align 8, !tbaa !16
  %206 = getelementptr inbounds nuw [128 x i8], ptr %204, i64 0, i64 %205
  %207 = load i8, ptr %206, align 1, !tbaa !9
  %208 = zext i8 %207 to i32
  %209 = xor i32 %203, %208
  %210 = trunc i32 %209 to i8
  %211 = load ptr, ptr %3, align 8, !tbaa !3
  %212 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %211, i32 0, i32 6
  %213 = load i64, ptr %6, align 8, !tbaa !16
  %214 = getelementptr inbounds nuw [128 x i8], ptr %212, i64 0, i64 %213
  store i8 %210, ptr %214, align 1, !tbaa !9
  %215 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 1
  %216 = load i64, ptr %6, align 8, !tbaa !16
  %217 = getelementptr inbounds nuw [128 x i8], ptr %215, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !9
  %219 = zext i8 %218 to i32
  %220 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 2
  %221 = load i64, ptr %6, align 8, !tbaa !16
  %222 = getelementptr inbounds nuw [128 x i8], ptr %220, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !9
  %224 = zext i8 %223 to i32
  %225 = xor i32 %219, %224
  %226 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 4
  %227 = load i64, ptr %6, align 8, !tbaa !16
  %228 = getelementptr inbounds nuw [128 x i8], ptr %226, i64 0, i64 %227
  %229 = load i8, ptr %228, align 1, !tbaa !9
  %230 = zext i8 %229 to i32
  %231 = xor i32 %225, %230
  %232 = getelementptr inbounds [7 x [128 x i8]], ptr %5, i64 0, i64 5
  %233 = load i64, ptr %6, align 8, !tbaa !16
  %234 = getelementptr inbounds nuw [128 x i8], ptr %232, i64 0, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !9
  %236 = zext i8 %235 to i32
  %237 = xor i32 %231, %236
  %238 = trunc i32 %237 to i8
  %239 = load ptr, ptr %3, align 8, !tbaa !3
  %240 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %239, i32 0, i32 7
  %241 = load i64, ptr %6, align 8, !tbaa !16
  %242 = getelementptr inbounds nuw [128 x i8], ptr %240, i64 0, i64 %241
  store i8 %238, ptr %242, align 1, !tbaa !9
  br label %243

243:                                              ; preds = %186
  %244 = load i64, ptr %6, align 8, !tbaa !16
  %245 = add i64 %244, 1
  store i64 %245, ptr %6, align 8, !tbaa !16
  br label %180, !llvm.loop !20

246:                                              ; preds = %180
  store i64 0, ptr %6, align 8, !tbaa !16
  br label %247

247:                                              ; preds = %258, %246
  %248 = load i64, ptr %6, align 8, !tbaa !16
  %249 = load ptr, ptr %3, align 8, !tbaa !3
  %250 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %249, i32 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !14
  %252 = icmp ult i64 %248, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %247
  %254 = load ptr, ptr %3, align 8, !tbaa !3
  %255 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %254, i32 0, i32 8
  %256 = load i64, ptr %6, align 8, !tbaa !16
  %257 = getelementptr inbounds nuw [128 x double], ptr %255, i64 0, i64 %256
  store double 1.000000e+06, ptr %257, align 8, !tbaa !21
  br label %258

258:                                              ; preds = %253
  %259 = load i64, ptr %6, align 8, !tbaa !16
  %260 = add i64 %259, 1
  store i64 %260, ptr %6, align 8, !tbaa !16
  br label %247, !llvm.loop !23

261:                                              ; preds = %247
  %262 = load ptr, ptr %3, align 8, !tbaa !3
  %263 = getelementptr inbounds nuw %struct.param_viterbi_t, ptr %262, i32 0, i32 8
  %264 = getelementptr inbounds [128 x double], ptr %263, i64 0, i64 0
  store double 0.000000e+00, ptr %264, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #3
  call void @llvm.lifetime.end.p0(i64 896, ptr %5) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!11, !12, i64 40}
!11 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !5, i64 24, !5, i64 31, !12, i64 40, !5, i64 48, !5, i64 176, !5, i64 304, !5, i64 1328}
!12 = !{!"long", !5, i64 0}
!13 = !{!11, !12, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!11, !12, i64 16}
!16 = !{!12, !12, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = distinct !{!23, !18}
