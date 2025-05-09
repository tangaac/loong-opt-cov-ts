; ModuleID = './MultiSource/Applications/spiff/CMakeFiles/spiff.dir/output.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/spiff/output.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.edt = type { ptr, i32, i32, i32 }
%struct._K_str = type { i32, i32, i32, ptr, ptr, ptr }

@_K_ato = external global [0 x ptr], align 8
@_K_bto = external global [0 x ptr], align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"d%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"c%d\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"type in O_output wasn't set\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"< %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"> %s\00", align 1
@_L_btlindex = external global [0 x i32], align 4
@_L_atlindex = external global [0 x i32], align 4
@_O_get_text.buf = internal global [2048 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s -- line %d, character %d\0A\00", align 1
@_L_bl = external global [0 x ptr], align 8
@_L_bclindex = external global [0 x i32], align 4
@_L_al = external global [0 x ptr], align 8
@_L_aclindex = external global [0 x i32], align 4
@_O_convert.spacetext = internal global [20 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"<NEWLINE>\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"<TAB>\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"<SPACE>\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@stdout = external global ptr, align 8
@_O_need_init = internal global i32 1, align 4
@_O_st_ok = internal global i32 0, align 4
@_O_doing_ul = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@_O_st_tmp = internal global ptr null, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"can't find TERM entry in environment\0A\00", align 1

; Function Attrs: nounwind
define dso_local void @O_cleanup() #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local void @O_output(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !3
  store i32 %1, ptr %4, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #5
  store i32 4, ptr %5, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #5
  %21 = load ptr, ptr %3, align 8, !tbaa !3
  store ptr %21, ptr %16, align 8, !tbaa !3
  store ptr null, ptr %14, align 8, !tbaa !3
  br label %22

22:                                               ; preds = %25, %2
  %23 = load ptr, ptr %16, align 8, !tbaa !3
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  store i32 -1, ptr %9, align 4, !tbaa !8
  store i32 -1, ptr %8, align 4, !tbaa !8
  store i32 -1, ptr %7, align 4, !tbaa !8
  store i32 -1, ptr %6, align 4, !tbaa !8
  %26 = load ptr, ptr %16, align 8, !tbaa !3
  %27 = getelementptr inbounds nuw %struct.edt, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !10
  %29 = sub nsw i32 %28, 1
  %30 = load ptr, ptr %16, align 8, !tbaa !3
  %31 = getelementptr inbounds nuw %struct.edt, ptr %30, i32 0, i32 2
  store i32 %29, ptr %31, align 4, !tbaa !10
  %32 = load ptr, ptr %16, align 8, !tbaa !3
  %33 = getelementptr inbounds nuw %struct.edt, ptr %32, i32 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !12
  %35 = sub nsw i32 %34, 1
  %36 = load ptr, ptr %16, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.edt, ptr %36, i32 0, i32 3
  store i32 %35, ptr %37, align 8, !tbaa !12
  %38 = load ptr, ptr %14, align 8, !tbaa !3
  store ptr %38, ptr %15, align 8, !tbaa !3
  %39 = load ptr, ptr %16, align 8, !tbaa !3
  store ptr %39, ptr %14, align 8, !tbaa !3
  %40 = load ptr, ptr %16, align 8, !tbaa !3
  %41 = getelementptr inbounds nuw %struct.edt, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8, !tbaa !13
  store ptr %42, ptr %16, align 8, !tbaa !3
  %43 = load ptr, ptr %15, align 8, !tbaa !3
  %44 = load ptr, ptr %14, align 8, !tbaa !3
  %45 = getelementptr inbounds nuw %struct.edt, ptr %44, i32 0, i32 0
  store ptr %43, ptr %45, align 8, !tbaa !13
  br label %22, !llvm.loop !14

46:                                               ; preds = %22
  br label %47

47:                                               ; preds = %327, %46
  %48 = load ptr, ptr %14, align 8, !tbaa !3
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %328

50:                                               ; preds = %47
  %51 = load ptr, ptr %14, align 8, !tbaa !3
  store ptr %51, ptr %18, align 8, !tbaa !3
  %52 = load ptr, ptr %14, align 8, !tbaa !3
  %53 = getelementptr inbounds nuw %struct.edt, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !10
  store i32 %54, ptr %6, align 4, !tbaa !8
  %55 = load ptr, ptr %14, align 8, !tbaa !3
  %56 = getelementptr inbounds nuw %struct.edt, ptr %55, i32 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !16
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %115

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %83, %60
  %62 = load ptr, ptr %18, align 8, !tbaa !3
  store ptr %62, ptr %17, align 8, !tbaa !3
  %63 = load ptr, ptr %18, align 8, !tbaa !3
  %64 = getelementptr inbounds nuw %struct.edt, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8, !tbaa !13
  store ptr %65, ptr %18, align 8, !tbaa !3
  br label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %18, align 8, !tbaa !3
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load ptr, ptr %18, align 8, !tbaa !3
  %71 = getelementptr inbounds nuw %struct.edt, ptr %70, i32 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !16
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load ptr, ptr %18, align 8, !tbaa !3
  %76 = getelementptr inbounds nuw %struct.edt, ptr %75, i32 0, i32 2
  %77 = load i32, ptr %76, align 4, !tbaa !10
  %78 = load ptr, ptr %17, align 8, !tbaa !3
  %79 = getelementptr inbounds nuw %struct.edt, ptr %78, i32 0, i32 2
  %80 = load i32, ptr %79, align 4, !tbaa !10
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %77, %81
  br label %83

83:                                               ; preds = %74, %69, %66
  %84 = phi i1 [ false, %69 ], [ false, %66 ], [ %82, %74 ]
  br i1 %84, label %61, label %85, !llvm.loop !17

85:                                               ; preds = %83
  %86 = load ptr, ptr %18, align 8, !tbaa !3
  %87 = icmp ne ptr %86, null
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load ptr, ptr %18, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.edt, ptr %89, i32 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !16
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load ptr, ptr %18, align 8, !tbaa !3
  %95 = getelementptr inbounds nuw %struct.edt, ptr %94, i32 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !10
  %97 = load ptr, ptr %17, align 8, !tbaa !3
  %98 = getelementptr inbounds nuw %struct.edt, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4, !tbaa !10
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 3, ptr %5, align 4, !tbaa !8
  br label %103

102:                                              ; preds = %93, %88, %85
  store i32 2, ptr %5, align 4, !tbaa !8
  br label %103

103:                                              ; preds = %102, %101
  %104 = load ptr, ptr %17, align 8, !tbaa !3
  %105 = getelementptr inbounds nuw %struct.edt, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !10
  store i32 %106, ptr %8, align 4, !tbaa !8
  %107 = load ptr, ptr %18, align 8, !tbaa !3
  store ptr %107, ptr %14, align 8, !tbaa !3
  %108 = load i32, ptr %5, align 4, !tbaa !8
  %109 = icmp eq i32 2, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load ptr, ptr %17, align 8, !tbaa !3
  %112 = getelementptr inbounds nuw %struct.edt, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 8, !tbaa !12
  store i32 %113, ptr %7, align 4, !tbaa !8
  store i32 -1, ptr %9, align 4, !tbaa !8
  br label %146

114:                                              ; preds = %103
  br label %115

115:                                              ; preds = %114, %59
  %116 = load ptr, ptr %14, align 8, !tbaa !3
  %117 = getelementptr inbounds nuw %struct.edt, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !12
  store i32 %118, ptr %7, align 4, !tbaa !8
  %119 = load i32, ptr %7, align 4, !tbaa !8
  %120 = sub nsw i32 %119, 1
  store i32 %120, ptr %9, align 4, !tbaa !8
  br label %121

121:                                              ; preds = %143, %115
  %122 = load i32, ptr %9, align 4, !tbaa !8
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %9, align 4, !tbaa !8
  %124 = load ptr, ptr %14, align 8, !tbaa !3
  %125 = getelementptr inbounds nuw %struct.edt, ptr %124, i32 0, i32 0
  %126 = load ptr, ptr %125, align 8, !tbaa !13
  store ptr %126, ptr %14, align 8, !tbaa !3
  br label %127

127:                                              ; preds = %121
  %128 = load ptr, ptr %14, align 8, !tbaa !3
  %129 = icmp ne ptr %128, null
  br i1 %129, label %130, label %143

130:                                              ; preds = %127
  %131 = load ptr, ptr %14, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct.edt, ptr %131, i32 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !16
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load ptr, ptr %14, align 8, !tbaa !3
  %137 = getelementptr inbounds nuw %struct.edt, ptr %136, i32 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !10
  %139 = load ptr, ptr %18, align 8, !tbaa !3
  %140 = getelementptr inbounds nuw %struct.edt, ptr %139, i32 0, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !10
  %142 = icmp eq i32 %138, %141
  br label %143

143:                                              ; preds = %135, %130, %127
  %144 = phi i1 [ false, %130 ], [ false, %127 ], [ %142, %135 ]
  br i1 %144, label %121, label %145, !llvm.loop !18

145:                                              ; preds = %143
  br label %146

146:                                              ; preds = %145, %110
  %147 = load i32, ptr %4, align 4, !tbaa !8
  %148 = and i32 %147, 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %151, ptr %10, align 4, !tbaa !8
  %152 = load i32, ptr %8, align 4, !tbaa !8
  store i32 %152, ptr %11, align 4, !tbaa !8
  %153 = load i32, ptr %7, align 4, !tbaa !8
  store i32 %153, ptr %12, align 4, !tbaa !8
  %154 = load i32, ptr %9, align 4, !tbaa !8
  store i32 %154, ptr %13, align 4, !tbaa !8
  br label %204

155:                                              ; preds = %146
  %156 = load i32, ptr %6, align 4, !tbaa !8
  %157 = icmp sge i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i32, ptr %6, align 4, !tbaa !8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !19
  %163 = getelementptr inbounds nuw %struct._K_str, ptr %162, i32 0, i32 0
  %164 = load i32, ptr %163, align 8, !tbaa !20
  store i32 %164, ptr %10, align 4, !tbaa !8
  br label %167

165:                                              ; preds = %155
  %166 = load i32, ptr %6, align 4, !tbaa !8
  store i32 %166, ptr %10, align 4, !tbaa !8
  br label %167

167:                                              ; preds = %165, %158
  %168 = load i32, ptr %8, align 4, !tbaa !8
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, ptr %8, align 4, !tbaa !8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !19
  %175 = getelementptr inbounds nuw %struct._K_str, ptr %174, i32 0, i32 0
  %176 = load i32, ptr %175, align 8, !tbaa !20
  store i32 %176, ptr %11, align 4, !tbaa !8
  br label %179

177:                                              ; preds = %167
  %178 = load i32, ptr %8, align 4, !tbaa !8
  store i32 %178, ptr %11, align 4, !tbaa !8
  br label %179

179:                                              ; preds = %177, %170
  %180 = load i32, ptr %7, align 4, !tbaa !8
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, ptr %7, align 4, !tbaa !8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !19
  %187 = getelementptr inbounds nuw %struct._K_str, ptr %186, i32 0, i32 0
  %188 = load i32, ptr %187, align 8, !tbaa !20
  store i32 %188, ptr %12, align 4, !tbaa !8
  br label %191

189:                                              ; preds = %179
  %190 = load i32, ptr %7, align 4, !tbaa !8
  store i32 %190, ptr %12, align 4, !tbaa !8
  br label %191

191:                                              ; preds = %189, %182
  %192 = load i32, ptr %9, align 4, !tbaa !8
  %193 = icmp sge i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32, ptr %9, align 4, !tbaa !8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !19
  %199 = getelementptr inbounds nuw %struct._K_str, ptr %198, i32 0, i32 0
  %200 = load i32, ptr %199, align 8, !tbaa !20
  store i32 %200, ptr %13, align 4, !tbaa !8
  br label %203

201:                                              ; preds = %191
  %202 = load i32, ptr %9, align 4, !tbaa !8
  store i32 %202, ptr %13, align 4, !tbaa !8
  br label %203

203:                                              ; preds = %201, %194
  br label %204

204:                                              ; preds = %203, %150
  %205 = load i32, ptr %10, align 4, !tbaa !8
  %206 = load i32, ptr %4, align 4, !tbaa !8
  %207 = call signext i32 @_O_con_line(i32 noundef signext %205, i32 noundef signext %206, i32 noundef signext 0)
  %208 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef signext %207)
  %209 = load i32, ptr %5, align 4, !tbaa !8
  switch i32 %209, label %263 [
    i32 1, label %210
    i32 2, label %225
    i32 3, label %239
  ]

210:                                              ; preds = %204
  %211 = load i32, ptr %12, align 4, !tbaa !8
  %212 = load i32, ptr %4, align 4, !tbaa !8
  %213 = call signext i32 @_O_con_line(i32 noundef signext %211, i32 noundef signext %212, i32 noundef signext 1)
  %214 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef signext %213)
  %215 = load i32, ptr %13, align 4, !tbaa !8
  %216 = load i32, ptr %12, align 4, !tbaa !8
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = load i32, ptr %13, align 4, !tbaa !8
  %220 = load i32, ptr %4, align 4, !tbaa !8
  %221 = call signext i32 @_O_con_line(i32 noundef signext %219, i32 noundef signext %220, i32 noundef signext 1)
  %222 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %221)
  br label %223

223:                                              ; preds = %218, %210
  %224 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %264

225:                                              ; preds = %204
  %226 = load i32, ptr %11, align 4, !tbaa !8
  %227 = load i32, ptr %10, align 4, !tbaa !8
  %228 = icmp sgt i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32, ptr %11, align 4, !tbaa !8
  %231 = load i32, ptr %4, align 4, !tbaa !8
  %232 = call signext i32 @_O_con_line(i32 noundef signext %230, i32 noundef signext %231, i32 noundef signext 0)
  %233 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %232)
  br label %234

234:                                              ; preds = %229, %225
  %235 = load i32, ptr %12, align 4, !tbaa !8
  %236 = load i32, ptr %4, align 4, !tbaa !8
  %237 = call signext i32 @_O_con_line(i32 noundef signext %235, i32 noundef signext %236, i32 noundef signext 1)
  %238 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef signext %237)
  br label %264

239:                                              ; preds = %204
  %240 = load i32, ptr %11, align 4, !tbaa !8
  %241 = load i32, ptr %10, align 4, !tbaa !8
  %242 = icmp sgt i32 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %239
  %244 = load i32, ptr %11, align 4, !tbaa !8
  %245 = load i32, ptr %4, align 4, !tbaa !8
  %246 = call signext i32 @_O_con_line(i32 noundef signext %244, i32 noundef signext %245, i32 noundef signext 0)
  %247 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %246)
  br label %248

248:                                              ; preds = %243, %239
  %249 = load i32, ptr %12, align 4, !tbaa !8
  %250 = load i32, ptr %4, align 4, !tbaa !8
  %251 = call signext i32 @_O_con_line(i32 noundef signext %249, i32 noundef signext %250, i32 noundef signext 1)
  %252 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef signext %251)
  %253 = load i32, ptr %13, align 4, !tbaa !8
  %254 = load i32, ptr %12, align 4, !tbaa !8
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %248
  %257 = load i32, ptr %13, align 4, !tbaa !8
  %258 = load i32, ptr %4, align 4, !tbaa !8
  %259 = call signext i32 @_O_con_line(i32 noundef signext %257, i32 noundef signext %258, i32 noundef signext 1)
  %260 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef signext %259)
  br label %261

261:                                              ; preds = %256, %248
  %262 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %264

263:                                              ; preds = %204
  call void @Z_fatal(ptr noundef @.str.6)
  br label %264

264:                                              ; preds = %263, %261, %234, %223
  %265 = load i32, ptr %5, align 4, !tbaa !8
  %266 = icmp eq i32 2, %265
  br i1 %266, label %270, label %267

267:                                              ; preds = %264
  %268 = load i32, ptr %5, align 4, !tbaa !8
  %269 = icmp eq i32 3, %268
  br i1 %269, label %270, label %293

270:                                              ; preds = %267, %264
  %271 = load i32, ptr %4, align 4, !tbaa !8
  %272 = and i32 %271, 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #5
  %275 = load i32, ptr %10, align 4, !tbaa !8
  store i32 %275, ptr %19, align 4, !tbaa !8
  br label %276

276:                                              ; preds = %285, %274
  %277 = load i32, ptr %19, align 4, !tbaa !8
  %278 = load i32, ptr %11, align 4, !tbaa !8
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %276
  %281 = load i32, ptr %19, align 4, !tbaa !8
  %282 = load i32, ptr %4, align 4, !tbaa !8
  %283 = call ptr @_O_get_text(i32 noundef signext 0, i32 noundef signext %281, i32 noundef signext %282)
  %284 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %283)
  br label %285

285:                                              ; preds = %280
  %286 = load i32, ptr %19, align 4, !tbaa !8
  %287 = add nsw i32 %286, 1
  store i32 %287, ptr %19, align 4, !tbaa !8
  br label %276, !llvm.loop !25

288:                                              ; preds = %276
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #5
  br label %292

289:                                              ; preds = %270
  %290 = load i32, ptr %6, align 4, !tbaa !8
  %291 = load i32, ptr %8, align 4, !tbaa !8
  call void @_O_do_lines(i32 noundef signext %290, i32 noundef signext %291, i32 noundef signext 0)
  br label %292

292:                                              ; preds = %289, %288
  br label %293

293:                                              ; preds = %292, %267
  %294 = load i32, ptr %5, align 4, !tbaa !8
  %295 = icmp eq i32 3, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %293
  %297 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %298

298:                                              ; preds = %296, %293
  %299 = load i32, ptr %5, align 4, !tbaa !8
  %300 = icmp eq i32 1, %299
  br i1 %300, label %304, label %301

301:                                              ; preds = %298
  %302 = load i32, ptr %5, align 4, !tbaa !8
  %303 = icmp eq i32 3, %302
  br i1 %303, label %304, label %327

304:                                              ; preds = %301, %298
  %305 = load i32, ptr %4, align 4, !tbaa !8
  %306 = and i32 %305, 8
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %304
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #5
  %309 = load i32, ptr %12, align 4, !tbaa !8
  store i32 %309, ptr %20, align 4, !tbaa !8
  br label %310

310:                                              ; preds = %319, %308
  %311 = load i32, ptr %20, align 4, !tbaa !8
  %312 = load i32, ptr %13, align 4, !tbaa !8
  %313 = icmp sle i32 %311, %312
  br i1 %313, label %314, label %322

314:                                              ; preds = %310
  %315 = load i32, ptr %20, align 4, !tbaa !8
  %316 = load i32, ptr %4, align 4, !tbaa !8
  %317 = call ptr @_O_get_text(i32 noundef signext 1, i32 noundef signext %315, i32 noundef signext %316)
  %318 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %317)
  br label %319

319:                                              ; preds = %314
  %320 = load i32, ptr %20, align 4, !tbaa !8
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %20, align 4, !tbaa !8
  br label %310, !llvm.loop !26

322:                                              ; preds = %310
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #5
  br label %326

323:                                              ; preds = %304
  %324 = load i32, ptr %7, align 4, !tbaa !8
  %325 = load i32, ptr %9, align 4, !tbaa !8
  call void @_O_do_lines(i32 noundef signext %324, i32 noundef signext %325, i32 noundef signext 1)
  br label %326

326:                                              ; preds = %323, %322
  br label %327

327:                                              ; preds = %326, %301
  br label %47, !llvm.loop !27

328:                                              ; preds = %47
  call void @O_cleanup()
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
define internal signext i32 @_O_con_line(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store i32 %2, ptr %7, align 4, !tbaa !8
  %8 = load i32, ptr %6, align 4, !tbaa !8
  %9 = and i32 %8, 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, ptr %5, align 4, !tbaa !8
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %4, align 4
  br label %34

14:                                               ; preds = %3
  %15 = load i32, ptr %5, align 4, !tbaa !8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr %4, align 4
  br label %34

18:                                               ; preds = %14
  %19 = load i32, ptr %7, align 4, !tbaa !8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, ptr %5, align 4, !tbaa !8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !8
  br label %31

26:                                               ; preds = %18
  %27 = load i32, ptr %5, align 4, !tbaa !8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !8
  br label %31

31:                                               ; preds = %26, %21
  %32 = phi i32 [ %25, %21 ], [ %30, %26 ]
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %4, align 4
  br label %34

34:                                               ; preds = %31, %17, %11
  %35 = load i32, ptr %4, align 4
  ret i32 %35
}

declare void @Z_fatal(...) #2

; Function Attrs: nounwind
define internal ptr @_O_get_text(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store i32 %0, ptr %5, align 4, !tbaa !8
  store i32 %1, ptr %6, align 4, !tbaa !8
  store i32 %2, ptr %7, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #5
  %11 = load i32, ptr %7, align 4, !tbaa !8
  %12 = and i32 %11, 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %58

14:                                               ; preds = %3
  %15 = load i32, ptr %5, align 4, !tbaa !8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, ptr %6, align 4, !tbaa !8
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  br label %27

22:                                               ; preds = %14
  %23 = load i32, ptr %6, align 4, !tbaa !8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !19
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi ptr [ %21, %17 ], [ %26, %22 ]
  store ptr %28, ptr %9, align 8, !tbaa !19
  %29 = load ptr, ptr %9, align 8, !tbaa !19
  %30 = getelementptr inbounds nuw %struct._K_str, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = call ptr @_O_convert(ptr noundef %31)
  store ptr %32, ptr %8, align 8, !tbaa !29
  %33 = load ptr, ptr %8, align 8, !tbaa !29
  %34 = load i32, ptr %5, align 4, !tbaa !8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load ptr, ptr %9, align 8, !tbaa !19
  %38 = getelementptr inbounds nuw %struct._K_str, ptr %37, i32 0, i32 0
  %39 = load i32, ptr %38, align 8, !tbaa !20
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !8
  br label %50

43:                                               ; preds = %27
  %44 = load ptr, ptr %9, align 8, !tbaa !19
  %45 = getelementptr inbounds nuw %struct._K_str, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !20
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !8
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i32 [ %42, %36 ], [ %49, %43 ]
  %52 = add nsw i32 %51, 1
  %53 = load ptr, ptr %9, align 8, !tbaa !19
  %54 = getelementptr inbounds nuw %struct._K_str, ptr %53, i32 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !30
  %56 = add nsw i32 %55, 1
  %57 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef @_O_get_text.buf, ptr noundef @.str.10, ptr noundef %33, i32 noundef signext %52, i32 noundef signext %56) #5
  store ptr @_O_get_text.buf, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %85

58:                                               ; preds = %3
  %59 = load i32, ptr %5, align 4, !tbaa !8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, ptr %6, align 4, !tbaa !8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !29
  br label %83

72:                                               ; preds = %58
  %73 = load i32, ptr %6, align 4, !tbaa !8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !29
  br label %83

83:                                               ; preds = %72, %61
  %84 = phi ptr [ %71, %61 ], [ %82, %72 ]
  store ptr %84, ptr %4, align 8
  store i32 1, ptr %10, align 4
  br label %85

85:                                               ; preds = %83, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #5
  %86 = load ptr, ptr %4, align 8
  ret ptr %86
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define internal void @_O_do_lines(i32 noundef signext %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca [1025 x i8], align 1
  store i32 %0, ptr %4, align 4, !tbaa !8
  store i32 %1, ptr %5, align 4, !tbaa !8
  store i32 %2, ptr %6, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #5
  store i32 -1, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #5
  %15 = load i32, ptr %4, align 4, !tbaa !8
  store i32 %15, ptr %7, align 4, !tbaa !8
  br label %16

16:                                               ; preds = %165, %3
  %17 = load i32, ptr %7, align 4, !tbaa !8
  %18 = load i32, ptr %5, align 4, !tbaa !8
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %168

20:                                               ; preds = %16
  %21 = load i32, ptr %6, align 4, !tbaa !8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, ptr %7, align 4, !tbaa !8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !19
  br label %33

28:                                               ; preds = %20
  %29 = load i32, ptr %7, align 4, !tbaa !8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi ptr [ %27, %23 ], [ %32, %28 ]
  store ptr %34, ptr %10, align 8, !tbaa !19
  %35 = load ptr, ptr %10, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw %struct._K_str, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 8, !tbaa !20
  store i32 %37, ptr %9, align 4, !tbaa !8
  %38 = load i32, ptr %8, align 4, !tbaa !8
  %39 = load i32, ptr %9, align 4, !tbaa !8
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %164

41:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.start.p0(i64 1025, ptr %14) #5
  %42 = load i32, ptr %6, align 4, !tbaa !8
  %43 = icmp eq i32 0, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.14)
  br label %48

46:                                               ; preds = %41
  %47 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.15)
  br label %48

48:                                               ; preds = %46, %44
  %49 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0
  %50 = load i32, ptr %6, align 4, !tbaa !8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, ptr %9, align 4, !tbaa !8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  br label %74

63:                                               ; preds = %48
  %64 = load i32, ptr %9, align 4, !tbaa !8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  br label %74

74:                                               ; preds = %63, %52
  %75 = phi ptr [ %62, %52 ], [ %73, %63 ]
  %76 = call ptr @strcpy(ptr noundef %49, ptr noundef %75) #5
  %77 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0
  %78 = load ptr, ptr %10, align 8, !tbaa !19
  %79 = getelementptr inbounds nuw %struct._K_str, ptr %78, i32 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !30
  call void @_O_pchars(ptr noundef %77, i32 noundef signext 0, i32 noundef signext %80)
  call void @_O_start_standout()
  %81 = load i32, ptr %7, align 4, !tbaa !8
  store i32 %81, ptr %11, align 4, !tbaa !8
  %82 = load i32, ptr %6, align 4, !tbaa !8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load i32, ptr %11, align 4, !tbaa !8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !19
  br label %94

89:                                               ; preds = %74
  %90 = load i32, ptr %11, align 4, !tbaa !8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !19
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi ptr [ %88, %84 ], [ %93, %89 ]
  store ptr %95, ptr %13, align 8, !tbaa !19
  br label %96

96:                                               ; preds = %124, %94
  %97 = load i32, ptr %11, align 4, !tbaa !8
  %98 = load i32, ptr %5, align 4, !tbaa !8
  %99 = icmp sle i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, ptr %9, align 4, !tbaa !8
  %102 = load ptr, ptr %13, align 8, !tbaa !19
  %103 = getelementptr inbounds nuw %struct._K_str, ptr %102, i32 0, i32 0
  %104 = load i32, ptr %103, align 8, !tbaa !20
  %105 = icmp eq i32 %101, %104
  br label %106

106:                                              ; preds = %100, %96
  %107 = phi i1 [ false, %96 ], [ %105, %100 ]
  br i1 %107, label %108, label %126

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i32, ptr %11, align 4, !tbaa !8
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %11, align 4, !tbaa !8
  %112 = load i32, ptr %6, align 4, !tbaa !8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, ptr %11, align 4, !tbaa !8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !19
  br label %124

119:                                              ; preds = %109
  %120 = load i32, ptr %11, align 4, !tbaa !8
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !19
  br label %124

124:                                              ; preds = %119, %114
  %125 = phi ptr [ %118, %114 ], [ %123, %119 ]
  store ptr %125, ptr %13, align 8, !tbaa !19
  br label %96, !llvm.loop !31

126:                                              ; preds = %106
  %127 = load i32, ptr %11, align 4, !tbaa !8
  %128 = add nsw i32 %127, -1
  store i32 %128, ptr %11, align 4, !tbaa !8
  %129 = load i32, ptr %6, align 4, !tbaa !8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i32, ptr %11, align 4, !tbaa !8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !19
  br label %141

136:                                              ; preds = %126
  %137 = load i32, ptr %11, align 4, !tbaa !8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !19
  br label %141

141:                                              ; preds = %136, %131
  %142 = phi ptr [ %135, %131 ], [ %140, %136 ]
  store ptr %142, ptr %13, align 8, !tbaa !19
  %143 = load ptr, ptr %13, align 8, !tbaa !19
  %144 = getelementptr inbounds nuw %struct._K_str, ptr %143, i32 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !30
  %146 = sext i32 %145 to i64
  %147 = load ptr, ptr %13, align 8, !tbaa !19
  %148 = getelementptr inbounds nuw %struct._K_str, ptr %147, i32 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !28
  %150 = call i64 @strlen(ptr noundef %149) #6
  %151 = add i64 %146, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, ptr %12, align 4, !tbaa !8
  %153 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0
  %154 = load ptr, ptr %10, align 8, !tbaa !19
  %155 = getelementptr inbounds nuw %struct._K_str, ptr %154, i32 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !30
  %157 = load i32, ptr %12, align 4, !tbaa !8
  call void @_O_pchars(ptr noundef %153, i32 noundef signext %156, i32 noundef signext %157)
  call void @_O_end_standout()
  %158 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0
  %159 = load i32, ptr %12, align 4, !tbaa !8
  %160 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0
  %161 = call i64 @strlen(ptr noundef %160) #6
  %162 = trunc i64 %161 to i32
  call void @_O_pchars(ptr noundef %158, i32 noundef signext %159, i32 noundef signext %162)
  %163 = load i32, ptr %9, align 4, !tbaa !8
  store i32 %163, ptr %8, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1025, ptr %14) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #5
  br label %164

164:                                              ; preds = %141, %33
  br label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %7, align 4, !tbaa !8
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr %7, align 4, !tbaa !8
  br label %16, !llvm.loop !32

168:                                              ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret void
}

; Function Attrs: nounwind
define internal ptr @_O_convert(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !29
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = call i64 @strlen(ptr noundef %4) #6
  %6 = icmp eq i64 1, %5
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !tbaa !29
  %9 = load i8, ptr %8, align 1, !tbaa !33
  %10 = sext i8 %9 to i32
  switch i32 %10, label %11 [
    i32 10, label %12
    i32 9, label %14
    i32 32, label %16
  ]

11:                                               ; preds = %7
  br label %18

12:                                               ; preds = %7
  %13 = call ptr @strcpy(ptr noundef @_O_convert.spacetext, ptr noundef @.str.11) #5
  store ptr @_O_convert.spacetext, ptr %2, align 8
  br label %21

14:                                               ; preds = %7
  %15 = call ptr @strcpy(ptr noundef @_O_convert.spacetext, ptr noundef @.str.12) #5
  store ptr @_O_convert.spacetext, ptr %2, align 8
  br label %21

16:                                               ; preds = %7
  %17 = call ptr @strcpy(ptr noundef @_O_convert.spacetext, ptr noundef @.str.13) #5
  store ptr @_O_convert.spacetext, ptr %2, align 8
  br label %21

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %1
  %20 = load ptr, ptr %3, align 8, !tbaa !29
  store ptr %20, ptr %2, align 8
  br label %21

21:                                               ; preds = %19, %16, %14, %12
  %22 = load ptr, ptr %2, align 8
  ret ptr %22
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
define internal void @_O_pchars(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !29
  store i32 %1, ptr %5, align 4, !tbaa !8
  store i32 %2, ptr %6, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #5
  %8 = load i32, ptr %5, align 4, !tbaa !8
  store i32 %8, ptr %7, align 4, !tbaa !8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i32, ptr %7, align 4, !tbaa !8
  %11 = load i32, ptr %6, align 4, !tbaa !8
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !tbaa !29
  %15 = load i32, ptr %7, align 4, !tbaa !8
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %14, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !33
  %19 = sext i8 %18 to i32
  %20 = call signext i32 @putchar(i32 noundef signext %19)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %7, align 4, !tbaa !8
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %7, align 4, !tbaa !8
  br label %9, !llvm.loop !34

24:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #5
  ret void
}

; Function Attrs: inlinehint nounwind
define available_externally signext i32 @putchar(i32 noundef signext %0) #4 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !8
  %3 = load i32, ptr %2, align 4, !tbaa !8
  %4 = load ptr, ptr @stdout, align 8, !tbaa !35
  %5 = call signext i32 @putc(i32 noundef signext %3, ptr noundef %4)
  ret i32 %5
}

declare signext i32 @putc(i32 noundef signext, ptr noundef) #2

; Function Attrs: nounwind
define internal void @_O_start_standout() #0 {
  %1 = load i32, ptr @_O_need_init, align 4, !tbaa !8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @_O_st_init()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @_O_st_ok, align 4, !tbaa !8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  store i32 1, ptr @_O_doing_ul, align 4, !tbaa !8
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind
define internal void @_O_st_init() #0 {
  %1 = alloca [20 x i8], align 1
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr %1) #5
  %3 = call signext i32 @isatty(i32 noundef signext 1) #5
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  store i32 0, ptr @_O_need_init, align 4, !tbaa !8
  store i32 0, ptr @_O_st_ok, align 4, !tbaa !8
  store i32 1, ptr %2, align 4
  br label %14

6:                                                ; preds = %0
  %7 = call ptr @getenv(ptr noundef @.str.16) #5
  store ptr %7, ptr @_O_st_tmp, align 8, !tbaa !29
  %8 = icmp eq ptr null, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @Z_complain(ptr noundef @.str.17)
  store i32 0, ptr @_O_need_init, align 4, !tbaa !8
  store i32 0, ptr @_O_st_ok, align 4, !tbaa !8
  store i32 1, ptr %2, align 4
  br label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds [20 x i8], ptr %1, i64 0, i64 0
  %12 = load ptr, ptr @_O_st_tmp, align 8, !tbaa !29
  %13 = call ptr @strcpy(ptr noundef %11, ptr noundef %12) #5
  store i32 0, ptr @_O_need_init, align 4, !tbaa !8
  store i32 0, ptr %2, align 4
  br label %14

14:                                               ; preds = %10, %9, %5
  call void @llvm.lifetime.end.p0(i64 20, ptr %1) #5
  %15 = load i32, ptr %2, align 4
  switch i32 %15, label %17 [
    i32 0, label %16
    i32 1, label %16
  ]

16:                                               ; preds = %14, %14
  ret void

17:                                               ; preds = %14
  unreachable
}

; Function Attrs: nounwind
declare signext i32 @isatty(i32 noundef signext) #0

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #0

declare void @Z_complain(...) #2

; Function Attrs: nounwind
define internal void @_O_end_standout() #0 {
  %1 = load i32, ptr @_O_need_init, align 4, !tbaa !8
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  call void @_O_st_init()
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @_O_st_ok, align 4, !tbaa !8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  store i32 0, ptr @_O_doing_ul, align 4, !tbaa !8
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { inlinehint nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS3edt", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = !{!11, !9, i64 12}
!11 = !{!"edt", !4, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!12 = !{!11, !9, i64 16}
!13 = !{!11, !4, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!11, !9, i64 8}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = !{!5, !5, i64 0}
!20 = !{!21, !9, i64 0}
!21 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !22, i64 16, !23, i64 24, !24, i64 32}
!22 = !{!"p1 omnipotent char", !5, i64 0}
!23 = !{!"p1 _ZTS7R_flstr", !5, i64 0}
!24 = !{!"p1 _ZTS7_T_tstr", !5, i64 0}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = !{!21, !22, i64 16}
!29 = !{!22, !22, i64 0}
!30 = !{!21, !9, i64 4}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!6, !6, i64 0}
!34 = distinct !{!34, !15}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
