; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/scan.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/scan.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.d_loc_t = type { ptr, ptr, i32, i32, i32 }
%struct.D_State = type { ptr, i32, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, ptr, ptr, i8, i8, i8, ptr, ptr, i32 }
%struct.anon = type { i32, ptr }
%struct.anon.0 = type { i32, ptr }
%struct.anon.1 = type { i32, ptr }
%struct.SB_uint8 = type { ptr, [4 x ptr] }
%struct.SB_trans_uint8 = type { [4 x ptr] }
%struct.ShiftResult = type { ptr, %struct.d_loc_t }
%struct.D_Shift = type { i16, i8, i8, i32, i32, ptr }
%struct.SB_uint16 = type { ptr, [4 x ptr] }
%struct.SB_uint32 = type { ptr, [4 x ptr] }

; Function Attrs: nounwind
define dso_local signext i32 @scan_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca ptr, align 8
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca ptr, align 8
  %32 = alloca i16, align 2
  %33 = alloca i16, align 2
  %34 = alloca i8, align 1
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8, align 1
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !8
  store ptr %2, ptr %7, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #3
  %39 = load ptr, ptr %5, align 8, !tbaa !3
  %40 = getelementptr inbounds nuw %struct.d_loc_t, ptr %39, i32 0, i32 0
  %41 = load ptr, ptr %40, align 8, !tbaa !12
  store ptr %41, ptr %8, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #3
  store ptr null, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #3
  %42 = load ptr, ptr %5, align 8, !tbaa !3
  %43 = getelementptr inbounds nuw %struct.d_loc_t, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !17
  store i32 %44, ptr %10, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #3
  %45 = load i32, ptr %10, align 4, !tbaa !18
  store i32 %45, ptr %11, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #3
  %46 = load ptr, ptr %5, align 8, !tbaa !3
  %47 = getelementptr inbounds nuw %struct.d_loc_t, ptr %46, i32 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !19
  store i32 %48, ptr %12, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #3
  store i32 0, ptr %13, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #3
  store ptr null, ptr %16, align 8, !tbaa !20
  %49 = load ptr, ptr %6, align 8, !tbaa !8
  %50 = getelementptr inbounds nuw %struct.D_State, ptr %49, i32 0, i32 10
  %51 = load i8, ptr %50, align 2, !tbaa !23
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %360

54:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #3
  %55 = load ptr, ptr %6, align 8, !tbaa !8
  %56 = getelementptr inbounds nuw %struct.D_State, ptr %55, i32 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !33
  store ptr %57, ptr %17, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #3
  %58 = load ptr, ptr %6, align 8, !tbaa !8
  %59 = getelementptr inbounds nuw %struct.D_State, ptr %58, i32 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !36
  store ptr %60, ptr %18, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 1, ptr %19) #3
  store i8 0, ptr %19, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1, ptr %20) #3
  %61 = load i8, ptr %19, align 1, !tbaa !39
  store i8 %61, ptr %20, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1, ptr %21) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #3
  %62 = load ptr, ptr %8, align 8, !tbaa !16
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %63, ptr %8, align 8, !tbaa !16
  %64 = load i8, ptr %62, align 1, !tbaa !39
  store i8 %64, ptr %21, align 1, !tbaa !39
  br label %65

65:                                               ; preds = %158, %54
  %66 = load ptr, ptr %17, align 8, !tbaa !34
  %67 = load i8, ptr %19, align 1, !tbaa !39
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds nuw %struct.SB_uint8, ptr %66, i64 %68
  %70 = getelementptr inbounds nuw %struct.SB_uint8, ptr %69, i32 0, i32 1
  %71 = load i8, ptr %21, align 1, !tbaa !39
  %72 = zext i8 %71 to i32
  %73 = ashr i32 %72, 6
  store i32 %73, ptr %22, align 4, !tbaa !18
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds nuw [4 x ptr], ptr %70, i64 0, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !16
  %77 = load i8, ptr %21, align 1, !tbaa !39
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 63
  store i32 %79, ptr %23, align 4, !tbaa !18
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds nuw i8, ptr %76, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !39
  store i8 %82, ptr %19, align 1, !tbaa !39
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %162

84:                                               ; preds = %65
  %85 = load i8, ptr %19, align 1, !tbaa !39
  %86 = zext i8 %85 to i32
  %87 = sub nsw i32 %86, 1
  %88 = trunc i32 %87 to i8
  store i8 %88, ptr %19, align 1, !tbaa !39
  %89 = load ptr, ptr %17, align 8, !tbaa !34
  %90 = load i8, ptr %19, align 1, !tbaa !39
  %91 = zext i8 %90 to i64
  %92 = getelementptr inbounds nuw %struct.SB_uint8, ptr %89, i64 %91
  %93 = getelementptr inbounds nuw %struct.SB_uint8, ptr %92, i32 0, i32 0
  %94 = load ptr, ptr %93, align 8, !tbaa !40
  %95 = icmp ne ptr %94, null
  br i1 %95, label %96, label %147

96:                                               ; preds = %84
  %97 = load i8, ptr %19, align 1, !tbaa !39
  store i8 %97, ptr %20, align 1, !tbaa !39
  %98 = load ptr, ptr %8, align 8, !tbaa !16
  %99 = load ptr, ptr %5, align 8, !tbaa !3
  %100 = getelementptr inbounds nuw %struct.d_loc_t, ptr %99, i32 0, i32 0
  store ptr %98, ptr %100, align 8, !tbaa !12
  %101 = load i32, ptr %10, align 4, !tbaa !18
  store i32 %101, ptr %11, align 4, !tbaa !18
  %102 = load i32, ptr %12, align 4, !tbaa !18
  %103 = load ptr, ptr %5, align 8, !tbaa !3
  %104 = getelementptr inbounds nuw %struct.d_loc_t, ptr %103, i32 0, i32 4
  store i32 %102, ptr %104, align 8, !tbaa !19
  %105 = load ptr, ptr %6, align 8, !tbaa !8
  %106 = getelementptr inbounds nuw %struct.D_State, ptr %105, i32 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !42
  %108 = load ptr, ptr %18, align 8, !tbaa !37
  %109 = load i8, ptr %19, align 1, !tbaa !39
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds nuw %struct.SB_trans_uint8, ptr %108, i64 %110
  %112 = getelementptr inbounds nuw %struct.SB_trans_uint8, ptr %111, i32 0, i32 0
  %113 = load i32, ptr %22, align 4, !tbaa !18
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds nuw [4 x ptr], ptr %112, i64 0, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !16
  %117 = load i32, ptr %23, align 4, !tbaa !18
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds nuw i8, ptr %116, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !39
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds nuw ptr, ptr %107, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !20
  store ptr %123, ptr %16, align 8, !tbaa !20
  br label %124

124:                                              ; preds = %143, %96
  %125 = load ptr, ptr %16, align 8, !tbaa !20
  %126 = load ptr, ptr %125, align 8, !tbaa !43
  %127 = icmp ne ptr %126, null
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load ptr, ptr %7, align 8, !tbaa !10
  %130 = load i32, ptr %13, align 4, !tbaa !18
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.ShiftResult, ptr %129, i64 %131
  %133 = getelementptr inbounds nuw %struct.ShiftResult, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %5, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %133, ptr align 8 %134, i64 32, i1 false), !tbaa.struct !45
  %135 = load ptr, ptr %16, align 8, !tbaa !20
  %136 = load ptr, ptr %135, align 8, !tbaa !43
  %137 = load ptr, ptr %7, align 8, !tbaa !10
  %138 = load i32, ptr %13, align 4, !tbaa !18
  %139 = add nsw i32 %138, 1
  store i32 %139, ptr %13, align 4, !tbaa !18
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds %struct.ShiftResult, ptr %137, i64 %140
  %142 = getelementptr inbounds nuw %struct.ShiftResult, ptr %141, i32 0, i32 0
  store ptr %136, ptr %142, align 8, !tbaa !46
  br label %143

143:                                              ; preds = %128
  %144 = load ptr, ptr %16, align 8, !tbaa !20
  %145 = getelementptr inbounds nuw ptr, ptr %144, i32 1
  store ptr %145, ptr %16, align 8, !tbaa !20
  br label %124, !llvm.loop !48

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %84
  %148 = load i8, ptr %21, align 1, !tbaa !39
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, ptr %12, align 4, !tbaa !18
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %12, align 4, !tbaa !18
  store i32 0, ptr %10, align 4, !tbaa !18
  %154 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %154, ptr %9, align 8, !tbaa !16
  br label %158

155:                                              ; preds = %147
  %156 = load i32, ptr %10, align 4, !tbaa !18
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %10, align 4, !tbaa !18
  br label %158

158:                                              ; preds = %155, %151
  %159 = load ptr, ptr %8, align 8, !tbaa !16
  %160 = getelementptr inbounds nuw i8, ptr %159, i32 1
  store ptr %160, ptr %8, align 8, !tbaa !16
  %161 = load i8, ptr %159, align 1, !tbaa !39
  store i8 %161, ptr %21, align 1, !tbaa !39
  br label %65, !llvm.loop !50

162:                                              ; preds = %65
  %163 = load ptr, ptr %9, align 8, !tbaa !16
  %164 = icmp ne ptr %163, null
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !tbaa !16
  %167 = load ptr, ptr %9, align 8, !tbaa !16
  %168 = ptrtoint ptr %166 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  br label %172

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %165
  %173 = phi i64 [ %170, %165 ], [ -1, %171 ]
  %174 = trunc i64 %173 to i32
  %175 = load ptr, ptr %5, align 8, !tbaa !3
  %176 = getelementptr inbounds nuw %struct.d_loc_t, ptr %175, i32 0, i32 3
  store i32 %174, ptr %176, align 4, !tbaa !17
  %177 = load ptr, ptr %17, align 8, !tbaa !34
  %178 = load i8, ptr %20, align 1, !tbaa !39
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds nuw %struct.SB_uint8, ptr %177, i64 %179
  %181 = getelementptr inbounds nuw %struct.SB_uint8, ptr %180, i32 0, i32 0
  %182 = load ptr, ptr %181, align 8, !tbaa !40
  store ptr %182, ptr %16, align 8, !tbaa !20
  %183 = load ptr, ptr %16, align 8, !tbaa !20
  %184 = icmp ne ptr %183, null
  br i1 %184, label %185, label %212

185:                                              ; preds = %172
  %186 = load i32, ptr %12, align 4, !tbaa !18
  %187 = load ptr, ptr %5, align 8, !tbaa !3
  %188 = getelementptr inbounds nuw %struct.d_loc_t, ptr %187, i32 0, i32 4
  store i32 %186, ptr %188, align 8, !tbaa !19
  br label %189

189:                                              ; preds = %208, %185
  %190 = load ptr, ptr %16, align 8, !tbaa !20
  %191 = load ptr, ptr %190, align 8, !tbaa !43
  %192 = icmp ne ptr %191, null
  br i1 %192, label %193, label %211

193:                                              ; preds = %189
  %194 = load ptr, ptr %7, align 8, !tbaa !10
  %195 = load i32, ptr %13, align 4, !tbaa !18
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.ShiftResult, ptr %194, i64 %196
  %198 = getelementptr inbounds nuw %struct.ShiftResult, ptr %197, i32 0, i32 1
  %199 = load ptr, ptr %5, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %198, ptr align 8 %199, i64 32, i1 false), !tbaa.struct !45
  %200 = load ptr, ptr %16, align 8, !tbaa !20
  %201 = load ptr, ptr %200, align 8, !tbaa !43
  %202 = load ptr, ptr %7, align 8, !tbaa !10
  %203 = load i32, ptr %13, align 4, !tbaa !18
  %204 = add nsw i32 %203, 1
  store i32 %204, ptr %13, align 4, !tbaa !18
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds %struct.ShiftResult, ptr %202, i64 %205
  %207 = getelementptr inbounds nuw %struct.ShiftResult, ptr %206, i32 0, i32 0
  store ptr %201, ptr %207, align 8, !tbaa !46
  br label %208

208:                                              ; preds = %193
  %209 = load ptr, ptr %16, align 8, !tbaa !20
  %210 = getelementptr inbounds nuw ptr, ptr %209, i32 1
  store ptr %210, ptr %16, align 8, !tbaa !20
  br label %189, !llvm.loop !51

211:                                              ; preds = %189
  br label %212

212:                                              ; preds = %211, %172
  %213 = load i32, ptr %13, align 4, !tbaa !18
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %358

215:                                              ; preds = %212
  %216 = load ptr, ptr %6, align 8, !tbaa !8
  %217 = getelementptr inbounds nuw %struct.D_State, ptr %216, i32 0, i32 10
  %218 = load i8, ptr %217, align 2, !tbaa !23
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %358

221:                                              ; preds = %215
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #3
  %222 = load ptr, ptr %7, align 8, !tbaa !10
  %223 = load i32, ptr %13, align 4, !tbaa !18
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ShiftResult, ptr %222, i64 %225
  %227 = getelementptr inbounds nuw %struct.ShiftResult, ptr %226, i32 0, i32 1
  %228 = getelementptr inbounds nuw %struct.d_loc_t, ptr %227, i32 0, i32 0
  %229 = load ptr, ptr %228, align 8, !tbaa !52
  store ptr %229, ptr %24, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #3
  store i32 0, ptr %25, align 4, !tbaa !18
  %230 = load i32, ptr %13, align 4, !tbaa !18
  %231 = sub nsw i32 %230, 1
  store i32 %231, ptr %14, align 4, !tbaa !18
  br label %232

232:                                              ; preds = %259, %221
  %233 = load i32, ptr %14, align 4, !tbaa !18
  %234 = icmp sge i32 %233, 0
  br i1 %234, label %235, label %262

235:                                              ; preds = %232
  %236 = load ptr, ptr %7, align 8, !tbaa !10
  %237 = load i32, ptr %14, align 4, !tbaa !18
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.ShiftResult, ptr %236, i64 %238
  %240 = getelementptr inbounds nuw %struct.ShiftResult, ptr %239, i32 0, i32 0
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  %242 = getelementptr inbounds nuw %struct.D_Shift, ptr %241, i32 0, i32 1
  %243 = load i8, ptr %242, align 2, !tbaa !53
  %244 = zext i8 %243 to i32
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %235
  store i32 1, ptr %25, align 4, !tbaa !18
  br label %247

247:                                              ; preds = %246, %235
  %248 = load ptr, ptr %7, align 8, !tbaa !10
  %249 = load i32, ptr %14, align 4, !tbaa !18
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.ShiftResult, ptr %248, i64 %250
  %252 = getelementptr inbounds nuw %struct.ShiftResult, ptr %251, i32 0, i32 1
  %253 = getelementptr inbounds nuw %struct.d_loc_t, ptr %252, i32 0, i32 0
  %254 = load ptr, ptr %253, align 8, !tbaa !52
  %255 = load ptr, ptr %24, align 8, !tbaa !16
  %256 = icmp ult ptr %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %247
  br label %262

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258
  %260 = load i32, ptr %14, align 4, !tbaa !18
  %261 = add nsw i32 %260, -1
  store i32 %261, ptr %14, align 4, !tbaa !18
  br label %232, !llvm.loop !56

262:                                              ; preds = %257, %232
  %263 = load i32, ptr %25, align 4, !tbaa !18
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %320, label %265

265:                                              ; preds = %262
  %266 = load i32, ptr %14, align 4, !tbaa !18
  store i32 %266, ptr %15, align 4, !tbaa !18
  br label %267

267:                                              ; preds = %298, %265
  %268 = load i32, ptr %15, align 4, !tbaa !18
  %269 = icmp sge i32 %268, 0
  br i1 %269, label %270, label %301

270:                                              ; preds = %267
  %271 = load ptr, ptr %7, align 8, !tbaa !10
  %272 = load i32, ptr %15, align 4, !tbaa !18
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ShiftResult, ptr %271, i64 %273
  %275 = getelementptr inbounds nuw %struct.ShiftResult, ptr %274, i32 0, i32 0
  %276 = load ptr, ptr %275, align 8, !tbaa !46
  %277 = getelementptr inbounds nuw %struct.D_Shift, ptr %276, i32 0, i32 1
  %278 = load i8, ptr %277, align 2, !tbaa !53
  %279 = zext i8 %278 to i32
  %280 = icmp ne i32 %279, 1
  br i1 %280, label %281, label %297

281:                                              ; preds = %270
  %282 = load i32, ptr %14, align 4, !tbaa !18
  %283 = load i32, ptr %15, align 4, !tbaa !18
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %294

285:                                              ; preds = %281
  %286 = load ptr, ptr %7, align 8, !tbaa !10
  %287 = load i32, ptr %14, align 4, !tbaa !18
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.ShiftResult, ptr %286, i64 %288
  %290 = load ptr, ptr %7, align 8, !tbaa !10
  %291 = load i32, ptr %15, align 4, !tbaa !18
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.ShiftResult, ptr %290, i64 %292
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %289, ptr align 8 %293, i64 40, i1 false), !tbaa.struct !57
  br label %294

294:                                              ; preds = %285, %281
  %295 = load i32, ptr %14, align 4, !tbaa !18
  %296 = add nsw i32 %295, -1
  store i32 %296, ptr %14, align 4, !tbaa !18
  br label %297

297:                                              ; preds = %294, %270
  br label %298

298:                                              ; preds = %297
  %299 = load i32, ptr %15, align 4, !tbaa !18
  %300 = add nsw i32 %299, -1
  store i32 %300, ptr %15, align 4, !tbaa !18
  br label %267, !llvm.loop !58

301:                                              ; preds = %267
  %302 = load i32, ptr %13, align 4, !tbaa !18
  %303 = load i32, ptr %14, align 4, !tbaa !18
  %304 = sub nsw i32 %302, %303
  %305 = sub nsw i32 %304, 1
  store i32 %305, ptr %13, align 4, !tbaa !18
  %306 = load i32, ptr %14, align 4, !tbaa !18
  %307 = icmp ne i32 %306, -1
  br i1 %307, label %308, label %319

308:                                              ; preds = %301
  %309 = load ptr, ptr %7, align 8, !tbaa !10
  %310 = getelementptr inbounds %struct.ShiftResult, ptr %309, i64 0
  %311 = load ptr, ptr %7, align 8, !tbaa !10
  %312 = load i32, ptr %14, align 4, !tbaa !18
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ShiftResult, ptr %311, i64 %314
  %316 = load i32, ptr %13, align 4, !tbaa !18
  %317 = sext i32 %316 to i64
  %318 = mul i64 %317, 40
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %310, ptr align 8 %315, i64 %318, i1 false)
  br label %319

319:                                              ; preds = %308, %301
  br label %357

320:                                              ; preds = %262
  store i32 0, ptr %14, align 4, !tbaa !18
  store i32 0, ptr %15, align 4, !tbaa !18
  br label %321

321:                                              ; preds = %352, %320
  %322 = load i32, ptr %15, align 4, !tbaa !18
  %323 = load i32, ptr %13, align 4, !tbaa !18
  %324 = icmp slt i32 %322, %323
  br i1 %324, label %325, label %355

325:                                              ; preds = %321
  %326 = load ptr, ptr %7, align 8, !tbaa !10
  %327 = load i32, ptr %15, align 4, !tbaa !18
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.ShiftResult, ptr %326, i64 %328
  %330 = getelementptr inbounds nuw %struct.ShiftResult, ptr %329, i32 0, i32 1
  %331 = getelementptr inbounds nuw %struct.d_loc_t, ptr %330, i32 0, i32 0
  %332 = load ptr, ptr %331, align 8, !tbaa !52
  %333 = load ptr, ptr %24, align 8, !tbaa !16
  %334 = icmp eq ptr %332, %333
  br i1 %334, label %335, label %351

335:                                              ; preds = %325
  %336 = load i32, ptr %14, align 4, !tbaa !18
  %337 = load i32, ptr %15, align 4, !tbaa !18
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %348

339:                                              ; preds = %335
  %340 = load ptr, ptr %7, align 8, !tbaa !10
  %341 = load i32, ptr %14, align 4, !tbaa !18
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.ShiftResult, ptr %340, i64 %342
  %344 = load ptr, ptr %7, align 8, !tbaa !10
  %345 = load i32, ptr %15, align 4, !tbaa !18
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds %struct.ShiftResult, ptr %344, i64 %346
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %343, ptr align 8 %347, i64 40, i1 false), !tbaa.struct !57
  br label %348

348:                                              ; preds = %339, %335
  %349 = load i32, ptr %14, align 4, !tbaa !18
  %350 = add nsw i32 %349, 1
  store i32 %350, ptr %14, align 4, !tbaa !18
  br label %351

351:                                              ; preds = %348, %325
  br label %352

352:                                              ; preds = %351
  %353 = load i32, ptr %15, align 4, !tbaa !18
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr %15, align 4, !tbaa !18
  br label %321, !llvm.loop !59

355:                                              ; preds = %321
  %356 = load i32, ptr %14, align 4, !tbaa !18
  store i32 %356, ptr %13, align 4, !tbaa !18
  br label %357

357:                                              ; preds = %355, %319
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #3
  br label %358

358:                                              ; preds = %357, %215, %212
  %359 = load i32, ptr %13, align 4, !tbaa !18
  store i32 %359, ptr %4, align 4
  store i32 1, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %21) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %20) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %19) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #3
  br label %619

360:                                              ; preds = %3
  %361 = load ptr, ptr %6, align 8, !tbaa !8
  %362 = getelementptr inbounds nuw %struct.D_State, ptr %361, i32 0, i32 8
  %363 = load i8, ptr %362, align 8, !tbaa !60
  %364 = zext i8 %363 to i32
  switch i32 %364, label %573 [
    i32 1, label %365
    i32 2, label %435
    i32 4, label %505
  ]

365:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #3
  %366 = load ptr, ptr %6, align 8, !tbaa !8
  %367 = getelementptr inbounds nuw %struct.D_State, ptr %366, i32 0, i32 7
  %368 = load ptr, ptr %367, align 8, !tbaa !33
  store ptr %368, ptr %27, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr %28) #3
  store i8 0, ptr %28, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1, ptr %29) #3
  %369 = load i8, ptr %28, align 1, !tbaa !39
  store i8 %369, ptr %29, align 1, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1, ptr %30) #3
  %370 = load ptr, ptr %8, align 8, !tbaa !16
  %371 = getelementptr inbounds nuw i8, ptr %370, i32 1
  store ptr %371, ptr %8, align 8, !tbaa !16
  %372 = load i8, ptr %370, align 1, !tbaa !39
  store i8 %372, ptr %30, align 1, !tbaa !39
  br label %373

373:                                              ; preds = %424, %365
  %374 = load ptr, ptr %27, align 8, !tbaa !34
  %375 = load i8, ptr %28, align 1, !tbaa !39
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds nuw %struct.SB_uint8, ptr %374, i64 %376
  %378 = getelementptr inbounds nuw %struct.SB_uint8, ptr %377, i32 0, i32 1
  %379 = load i8, ptr %30, align 1, !tbaa !39
  %380 = zext i8 %379 to i32
  %381 = ashr i32 %380, 6
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [4 x ptr], ptr %378, i64 0, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !16
  %385 = load i8, ptr %30, align 1, !tbaa !39
  %386 = zext i8 %385 to i32
  %387 = and i32 %386, 63
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %384, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !39
  store i8 %390, ptr %28, align 1, !tbaa !39
  %391 = icmp ne i8 %390, 0
  br i1 %391, label %392, label %428

392:                                              ; preds = %373
  %393 = load i8, ptr %28, align 1, !tbaa !39
  %394 = zext i8 %393 to i32
  %395 = sub nsw i32 %394, 1
  %396 = trunc i32 %395 to i8
  store i8 %396, ptr %28, align 1, !tbaa !39
  %397 = load ptr, ptr %27, align 8, !tbaa !34
  %398 = load i8, ptr %28, align 1, !tbaa !39
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds nuw %struct.SB_uint8, ptr %397, i64 %399
  %401 = getelementptr inbounds nuw %struct.SB_uint8, ptr %400, i32 0, i32 0
  %402 = load ptr, ptr %401, align 8, !tbaa !40
  %403 = icmp ne ptr %402, null
  br i1 %403, label %404, label %413

404:                                              ; preds = %392
  %405 = load i8, ptr %28, align 1, !tbaa !39
  store i8 %405, ptr %29, align 1, !tbaa !39
  %406 = load ptr, ptr %8, align 8, !tbaa !16
  %407 = load ptr, ptr %5, align 8, !tbaa !3
  %408 = getelementptr inbounds nuw %struct.d_loc_t, ptr %407, i32 0, i32 0
  store ptr %406, ptr %408, align 8, !tbaa !12
  %409 = load i32, ptr %10, align 4, !tbaa !18
  store i32 %409, ptr %11, align 4, !tbaa !18
  %410 = load i32, ptr %12, align 4, !tbaa !18
  %411 = load ptr, ptr %5, align 8, !tbaa !3
  %412 = getelementptr inbounds nuw %struct.d_loc_t, ptr %411, i32 0, i32 4
  store i32 %410, ptr %412, align 8, !tbaa !19
  br label %413

413:                                              ; preds = %404, %392
  %414 = load i8, ptr %30, align 1, !tbaa !39
  %415 = zext i8 %414 to i32
  %416 = icmp eq i32 %415, 10
  br i1 %416, label %417, label %421

417:                                              ; preds = %413
  %418 = load i32, ptr %12, align 4, !tbaa !18
  %419 = add nsw i32 %418, 1
  store i32 %419, ptr %12, align 4, !tbaa !18
  store i32 0, ptr %10, align 4, !tbaa !18
  %420 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %420, ptr %9, align 8, !tbaa !16
  br label %424

421:                                              ; preds = %413
  %422 = load i32, ptr %10, align 4, !tbaa !18
  %423 = add nsw i32 %422, 1
  store i32 %423, ptr %10, align 4, !tbaa !18
  br label %424

424:                                              ; preds = %421, %417
  %425 = load ptr, ptr %8, align 8, !tbaa !16
  %426 = getelementptr inbounds nuw i8, ptr %425, i32 1
  store ptr %426, ptr %8, align 8, !tbaa !16
  %427 = load i8, ptr %425, align 1, !tbaa !39
  store i8 %427, ptr %30, align 1, !tbaa !39
  br label %373, !llvm.loop !61

428:                                              ; preds = %373
  %429 = load ptr, ptr %27, align 8, !tbaa !34
  %430 = load i8, ptr %29, align 1, !tbaa !39
  %431 = zext i8 %430 to i64
  %432 = getelementptr inbounds nuw %struct.SB_uint8, ptr %429, i64 %431
  %433 = getelementptr inbounds nuw %struct.SB_uint8, ptr %432, i32 0, i32 0
  %434 = load ptr, ptr %433, align 8, !tbaa !40
  store ptr %434, ptr %16, align 8, !tbaa !20
  store i32 19, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %30) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %29) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %28) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #3
  br label %573

435:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 8, ptr %31) #3
  %436 = load ptr, ptr %6, align 8, !tbaa !8
  %437 = getelementptr inbounds nuw %struct.D_State, ptr %436, i32 0, i32 7
  %438 = load ptr, ptr %437, align 8, !tbaa !33
  store ptr %438, ptr %31, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 2, ptr %32) #3
  store i16 0, ptr %32, align 2, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 2, ptr %33) #3
  %439 = load i16, ptr %32, align 2, !tbaa !64
  store i16 %439, ptr %33, align 2, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 1, ptr %34) #3
  %440 = load ptr, ptr %8, align 8, !tbaa !16
  %441 = getelementptr inbounds nuw i8, ptr %440, i32 1
  store ptr %441, ptr %8, align 8, !tbaa !16
  %442 = load i8, ptr %440, align 1, !tbaa !39
  store i8 %442, ptr %34, align 1, !tbaa !39
  br label %443

443:                                              ; preds = %494, %435
  %444 = load ptr, ptr %31, align 8, !tbaa !62
  %445 = load i16, ptr %32, align 2, !tbaa !64
  %446 = zext i16 %445 to i64
  %447 = getelementptr inbounds nuw %struct.SB_uint16, ptr %444, i64 %446
  %448 = getelementptr inbounds nuw %struct.SB_uint16, ptr %447, i32 0, i32 1
  %449 = load i8, ptr %34, align 1, !tbaa !39
  %450 = zext i8 %449 to i32
  %451 = ashr i32 %450, 6
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [4 x ptr], ptr %448, i64 0, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !65
  %455 = load i8, ptr %34, align 1, !tbaa !39
  %456 = zext i8 %455 to i32
  %457 = and i32 %456, 63
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i16, ptr %454, i64 %458
  %460 = load i16, ptr %459, align 2, !tbaa !64
  store i16 %460, ptr %32, align 2, !tbaa !64
  %461 = icmp ne i16 %460, 0
  br i1 %461, label %462, label %498

462:                                              ; preds = %443
  %463 = load i16, ptr %32, align 2, !tbaa !64
  %464 = zext i16 %463 to i32
  %465 = sub nsw i32 %464, 1
  %466 = trunc i32 %465 to i16
  store i16 %466, ptr %32, align 2, !tbaa !64
  %467 = load ptr, ptr %31, align 8, !tbaa !62
  %468 = load i16, ptr %32, align 2, !tbaa !64
  %469 = zext i16 %468 to i64
  %470 = getelementptr inbounds nuw %struct.SB_uint16, ptr %467, i64 %469
  %471 = getelementptr inbounds nuw %struct.SB_uint16, ptr %470, i32 0, i32 0
  %472 = load ptr, ptr %471, align 8, !tbaa !67
  %473 = icmp ne ptr %472, null
  br i1 %473, label %474, label %483

474:                                              ; preds = %462
  %475 = load i16, ptr %32, align 2, !tbaa !64
  store i16 %475, ptr %33, align 2, !tbaa !64
  %476 = load ptr, ptr %8, align 8, !tbaa !16
  %477 = load ptr, ptr %5, align 8, !tbaa !3
  %478 = getelementptr inbounds nuw %struct.d_loc_t, ptr %477, i32 0, i32 0
  store ptr %476, ptr %478, align 8, !tbaa !12
  %479 = load i32, ptr %10, align 4, !tbaa !18
  store i32 %479, ptr %11, align 4, !tbaa !18
  %480 = load i32, ptr %12, align 4, !tbaa !18
  %481 = load ptr, ptr %5, align 8, !tbaa !3
  %482 = getelementptr inbounds nuw %struct.d_loc_t, ptr %481, i32 0, i32 4
  store i32 %480, ptr %482, align 8, !tbaa !19
  br label %483

483:                                              ; preds = %474, %462
  %484 = load i8, ptr %34, align 1, !tbaa !39
  %485 = zext i8 %484 to i32
  %486 = icmp eq i32 %485, 10
  br i1 %486, label %487, label %491

487:                                              ; preds = %483
  %488 = load i32, ptr %12, align 4, !tbaa !18
  %489 = add nsw i32 %488, 1
  store i32 %489, ptr %12, align 4, !tbaa !18
  store i32 0, ptr %10, align 4, !tbaa !18
  %490 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %490, ptr %9, align 8, !tbaa !16
  br label %494

491:                                              ; preds = %483
  %492 = load i32, ptr %10, align 4, !tbaa !18
  %493 = add nsw i32 %492, 1
  store i32 %493, ptr %10, align 4, !tbaa !18
  br label %494

494:                                              ; preds = %491, %487
  %495 = load ptr, ptr %8, align 8, !tbaa !16
  %496 = getelementptr inbounds nuw i8, ptr %495, i32 1
  store ptr %496, ptr %8, align 8, !tbaa !16
  %497 = load i8, ptr %495, align 1, !tbaa !39
  store i8 %497, ptr %34, align 1, !tbaa !39
  br label %443, !llvm.loop !69

498:                                              ; preds = %443
  %499 = load ptr, ptr %31, align 8, !tbaa !62
  %500 = load i16, ptr %33, align 2, !tbaa !64
  %501 = zext i16 %500 to i64
  %502 = getelementptr inbounds nuw %struct.SB_uint16, ptr %499, i64 %501
  %503 = getelementptr inbounds nuw %struct.SB_uint16, ptr %502, i32 0, i32 0
  %504 = load ptr, ptr %503, align 8, !tbaa !67
  store ptr %504, ptr %16, align 8, !tbaa !20
  store i32 19, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %34) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr %33) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr %32) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %31) #3
  br label %573

505:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 8, ptr %35) #3
  %506 = load ptr, ptr %6, align 8, !tbaa !8
  %507 = getelementptr inbounds nuw %struct.D_State, ptr %506, i32 0, i32 7
  %508 = load ptr, ptr %507, align 8, !tbaa !33
  store ptr %508, ptr %35, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 4, ptr %36) #3
  store i32 0, ptr %36, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #3
  %509 = load i32, ptr %36, align 4, !tbaa !18
  store i32 %509, ptr %37, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 1, ptr %38) #3
  %510 = load ptr, ptr %8, align 8, !tbaa !16
  %511 = getelementptr inbounds nuw i8, ptr %510, i32 1
  store ptr %511, ptr %8, align 8, !tbaa !16
  %512 = load i8, ptr %510, align 1, !tbaa !39
  store i8 %512, ptr %38, align 1, !tbaa !39
  br label %513

513:                                              ; preds = %562, %505
  %514 = load ptr, ptr %35, align 8, !tbaa !70
  %515 = load i32, ptr %36, align 4, !tbaa !18
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds nuw %struct.SB_uint32, ptr %514, i64 %516
  %518 = getelementptr inbounds nuw %struct.SB_uint32, ptr %517, i32 0, i32 1
  %519 = load i8, ptr %38, align 1, !tbaa !39
  %520 = zext i8 %519 to i32
  %521 = ashr i32 %520, 6
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds [4 x ptr], ptr %518, i64 0, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !72
  %525 = load i8, ptr %38, align 1, !tbaa !39
  %526 = zext i8 %525 to i32
  %527 = and i32 %526, 63
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, ptr %524, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !18
  store i32 %530, ptr %36, align 4, !tbaa !18
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %566

532:                                              ; preds = %513
  %533 = load i32, ptr %36, align 4, !tbaa !18
  %534 = sub i32 %533, 1
  store i32 %534, ptr %36, align 4, !tbaa !18
  %535 = load ptr, ptr %35, align 8, !tbaa !70
  %536 = load i32, ptr %36, align 4, !tbaa !18
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds nuw %struct.SB_uint32, ptr %535, i64 %537
  %539 = getelementptr inbounds nuw %struct.SB_uint32, ptr %538, i32 0, i32 0
  %540 = load ptr, ptr %539, align 8, !tbaa !74
  %541 = icmp ne ptr %540, null
  br i1 %541, label %542, label %551

542:                                              ; preds = %532
  %543 = load i32, ptr %36, align 4, !tbaa !18
  store i32 %543, ptr %37, align 4, !tbaa !18
  %544 = load ptr, ptr %8, align 8, !tbaa !16
  %545 = load ptr, ptr %5, align 8, !tbaa !3
  %546 = getelementptr inbounds nuw %struct.d_loc_t, ptr %545, i32 0, i32 0
  store ptr %544, ptr %546, align 8, !tbaa !12
  %547 = load i32, ptr %10, align 4, !tbaa !18
  store i32 %547, ptr %11, align 4, !tbaa !18
  %548 = load i32, ptr %12, align 4, !tbaa !18
  %549 = load ptr, ptr %5, align 8, !tbaa !3
  %550 = getelementptr inbounds nuw %struct.d_loc_t, ptr %549, i32 0, i32 4
  store i32 %548, ptr %550, align 8, !tbaa !19
  br label %551

551:                                              ; preds = %542, %532
  %552 = load i8, ptr %38, align 1, !tbaa !39
  %553 = zext i8 %552 to i32
  %554 = icmp eq i32 %553, 10
  br i1 %554, label %555, label %559

555:                                              ; preds = %551
  %556 = load i32, ptr %12, align 4, !tbaa !18
  %557 = add nsw i32 %556, 1
  store i32 %557, ptr %12, align 4, !tbaa !18
  store i32 0, ptr %10, align 4, !tbaa !18
  %558 = load ptr, ptr %8, align 8, !tbaa !16
  store ptr %558, ptr %9, align 8, !tbaa !16
  br label %562

559:                                              ; preds = %551
  %560 = load i32, ptr %10, align 4, !tbaa !18
  %561 = add nsw i32 %560, 1
  store i32 %561, ptr %10, align 4, !tbaa !18
  br label %562

562:                                              ; preds = %559, %555
  %563 = load ptr, ptr %8, align 8, !tbaa !16
  %564 = getelementptr inbounds nuw i8, ptr %563, i32 1
  store ptr %564, ptr %8, align 8, !tbaa !16
  %565 = load i8, ptr %563, align 1, !tbaa !39
  store i8 %565, ptr %38, align 1, !tbaa !39
  br label %513, !llvm.loop !76

566:                                              ; preds = %513
  %567 = load ptr, ptr %35, align 8, !tbaa !70
  %568 = load i32, ptr %37, align 4, !tbaa !18
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds nuw %struct.SB_uint32, ptr %567, i64 %569
  %571 = getelementptr inbounds nuw %struct.SB_uint32, ptr %570, i32 0, i32 0
  %572 = load ptr, ptr %571, align 8, !tbaa !74
  store ptr %572, ptr %16, align 8, !tbaa !20
  store i32 19, ptr %26, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %38) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %36) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %35) #3
  br label %573

573:                                              ; preds = %360, %566, %498, %428
  %574 = load ptr, ptr %9, align 8, !tbaa !16
  %575 = icmp ne ptr %574, null
  br i1 %575, label %576, label %582

576:                                              ; preds = %573
  %577 = load ptr, ptr %8, align 8, !tbaa !16
  %578 = load ptr, ptr %9, align 8, !tbaa !16
  %579 = ptrtoint ptr %577 to i64
  %580 = ptrtoint ptr %578 to i64
  %581 = sub i64 %579, %580
  br label %583

582:                                              ; preds = %573
  br label %583

583:                                              ; preds = %582, %576
  %584 = phi i64 [ %581, %576 ], [ -1, %582 ]
  %585 = trunc i64 %584 to i32
  %586 = load ptr, ptr %5, align 8, !tbaa !3
  %587 = getelementptr inbounds nuw %struct.d_loc_t, ptr %586, i32 0, i32 3
  store i32 %585, ptr %587, align 4, !tbaa !17
  %588 = load ptr, ptr %16, align 8, !tbaa !20
  %589 = icmp ne ptr %588, null
  br i1 %589, label %590, label %617

590:                                              ; preds = %583
  %591 = load i32, ptr %12, align 4, !tbaa !18
  %592 = load ptr, ptr %5, align 8, !tbaa !3
  %593 = getelementptr inbounds nuw %struct.d_loc_t, ptr %592, i32 0, i32 4
  store i32 %591, ptr %593, align 8, !tbaa !19
  br label %594

594:                                              ; preds = %613, %590
  %595 = load ptr, ptr %16, align 8, !tbaa !20
  %596 = load ptr, ptr %595, align 8, !tbaa !43
  %597 = icmp ne ptr %596, null
  br i1 %597, label %598, label %616

598:                                              ; preds = %594
  %599 = load ptr, ptr %7, align 8, !tbaa !10
  %600 = load i32, ptr %13, align 4, !tbaa !18
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.ShiftResult, ptr %599, i64 %601
  %603 = getelementptr inbounds nuw %struct.ShiftResult, ptr %602, i32 0, i32 1
  %604 = load ptr, ptr %5, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %603, ptr align 8 %604, i64 32, i1 false), !tbaa.struct !45
  %605 = load ptr, ptr %16, align 8, !tbaa !20
  %606 = load ptr, ptr %605, align 8, !tbaa !43
  %607 = load ptr, ptr %7, align 8, !tbaa !10
  %608 = load i32, ptr %13, align 4, !tbaa !18
  %609 = add nsw i32 %608, 1
  store i32 %609, ptr %13, align 4, !tbaa !18
  %610 = sext i32 %608 to i64
  %611 = getelementptr inbounds %struct.ShiftResult, ptr %607, i64 %610
  %612 = getelementptr inbounds nuw %struct.ShiftResult, ptr %611, i32 0, i32 0
  store ptr %606, ptr %612, align 8, !tbaa !46
  br label %613

613:                                              ; preds = %598
  %614 = load ptr, ptr %16, align 8, !tbaa !20
  %615 = getelementptr inbounds nuw ptr, ptr %614, i32 1
  store ptr %615, ptr %16, align 8, !tbaa !20
  br label %594, !llvm.loop !77

616:                                              ; preds = %594
  br label %617

617:                                              ; preds = %616, %583
  %618 = load i32, ptr %13, align 4, !tbaa !18
  store i32 %618, ptr %4, align 4
  store i32 1, ptr %26, align 4
  br label %619

619:                                              ; preds = %617, %358
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #3
  %620 = load i32, ptr %4, align 4
  ret i32 %620
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS7d_loc_t", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS7D_State", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS11ShiftResult", !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"d_loc_t", !14, i64 0, !14, i64 8, !15, i64 16, !15, i64 20, !15, i64 24}
!14 = !{!"p1 omnipotent char", !5, i64 0}
!15 = !{!"int", !6, i64 0}
!16 = !{!14, !14, i64 0}
!17 = !{!13, !15, i64 20}
!18 = !{!15, !15, i64 0}
!19 = !{!13, !15, i64 24}
!20 = !{!21, !21, i64 0}
!21 = !{!"p2 _ZTS7D_Shift", !22, i64 0}
!22 = !{!"any p2 pointer", !5, i64 0}
!23 = !{!24, !6, i64 90}
!24 = !{!"D_State", !14, i64 0, !15, i64 8, !25, i64 16, !27, i64 32, !29, i64 48, !21, i64 64, !5, i64 72, !5, i64 80, !6, i64 88, !6, i64 89, !6, i64 90, !5, i64 96, !31, i64 104, !15, i64 112}
!25 = !{!"", !15, i64 0, !26, i64 8}
!26 = !{!"p2 _ZTS11D_Reduction", !22, i64 0}
!27 = !{!"", !15, i64 0, !28, i64 8}
!28 = !{!"p1 _ZTS18D_RightEpsilonHint", !5, i64 0}
!29 = !{!"", !15, i64 0, !30, i64 8}
!30 = !{!"p1 _ZTS19D_ErrorRecoveryHint", !5, i64 0}
!31 = !{!"p3 _ZTS7D_Shift", !32, i64 0}
!32 = !{!"any p3 pointer", !22, i64 0}
!33 = !{!24, !5, i64 80}
!34 = !{!35, !35, i64 0}
!35 = !{!"p1 _ZTS8SB_uint8", !5, i64 0}
!36 = !{!24, !5, i64 96}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS14SB_trans_uint8", !5, i64 0}
!39 = !{!6, !6, i64 0}
!40 = !{!41, !21, i64 0}
!41 = !{!"SB_uint8", !21, i64 0, !6, i64 8}
!42 = !{!24, !31, i64 104}
!43 = !{!44, !44, i64 0}
!44 = !{!"p1 _ZTS7D_Shift", !5, i64 0}
!45 = !{i64 0, i64 8, !16, i64 8, i64 8, !16, i64 16, i64 4, !18, i64 20, i64 4, !18, i64 24, i64 4, !18}
!46 = !{!47, !44, i64 0}
!47 = !{!"ShiftResult", !44, i64 0, !13, i64 8}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = !{!47, !14, i64 8}
!53 = !{!54, !6, i64 2}
!54 = !{!"D_Shift", !55, i64 0, !6, i64 2, !6, i64 3, !15, i64 4, !15, i64 8, !5, i64 16}
!55 = !{!"short", !6, i64 0}
!56 = distinct !{!56, !49}
!57 = !{i64 0, i64 8, !43, i64 8, i64 8, !16, i64 16, i64 8, !16, i64 24, i64 4, !18, i64 28, i64 4, !18, i64 32, i64 4, !18}
!58 = distinct !{!58, !49}
!59 = distinct !{!59, !49}
!60 = !{!24, !6, i64 88}
!61 = distinct !{!61, !49}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 _ZTS9SB_uint16", !5, i64 0}
!64 = !{!55, !55, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 short", !5, i64 0}
!67 = !{!68, !21, i64 0}
!68 = !{!"SB_uint16", !21, i64 0, !6, i64 8}
!69 = distinct !{!69, !49}
!70 = !{!71, !71, i64 0}
!71 = !{!"p1 _ZTS9SB_uint32", !5, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 int", !5, i64 0}
!74 = !{!75, !21, i64 0}
!75 = !{!"SB_uint32", !21, i64 0, !6, i64 8}
!76 = distinct !{!76, !49}
!77 = distinct !{!77, !49}
