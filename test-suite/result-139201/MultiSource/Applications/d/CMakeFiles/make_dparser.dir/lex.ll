; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/lex.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/lex.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.hash_fns_t = type { ptr, ptr, [2 x ptr] }
%struct.Grammar = type { ptr, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.Code, ptr, i32, %struct.anon.2, %struct.anon.3, ptr, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.1 = type { i32, i32, ptr, [3 x ptr] }
%struct.Code = type { ptr, i32 }
%struct.anon.2 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }
%struct.State = type { i32, i64, %struct.anon.4, %struct.anon.5, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.4 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.5 = type { i32, i32, ptr, [3 x ptr] }
%struct.VecGoto = type { i32, i32, ptr, [3 x ptr] }
%struct.VecAction = type { i32, i32, ptr, [3 x ptr] }
%struct.VecHint = type { i32, i32, ptr, [3 x ptr] }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, ptr, [3 x ptr] }
%struct.VecScanStateTransition = type { i32, i32, ptr, [3 x ptr] }
%struct.Action = type { i32, ptr, ptr, ptr, i32, ptr }
%struct.LexState = type { i32, %struct.VecNFAState, i32, i32, i32 }
%struct.VecNFAState = type { i32, i32, ptr, [3 x ptr] }
%struct.NFAState = type { i32, [256 x %struct.anon.6], %struct.anon.7, %struct.anon.8, %struct.anon.9 }
%struct.anon.6 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.7 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.8 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.9 = type { i32, i32, ptr, [3 x ptr] }
%struct.Term = type { i32, i32, i32, i32, i32, ptr, i32, i8, ptr }
%struct.VecDFAState = type { i32, i32, ptr, [3 x ptr] }
%struct.DFAState = type { %struct.anon.10, [256 x ptr], ptr }
%struct.anon.10 = type { i32, i32, ptr, [3 x ptr] }
%struct.ScanState = type { i32, [256 x ptr], %struct.VecAction, %struct.VecAction, [256 x ptr] }
%struct.ScanStateTransition = type { i32, %struct.VecAction, %struct.VecAction }

@verbose_level = external global i32, align 4
@.str = private unnamed_addr constant [28 x i8] c"%d scanners %d transitions\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"bad (part of) regex: %s\0A\00", align 1
@trans_hash_fns = internal global %struct.hash_fns_t { ptr @trans_hash_fn, ptr @trans_cmp_fn, [2 x ptr] zeroinitializer }, align 8

; Function Attrs: nounwind
define dso_local void @build_scanners(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  %8 = call ptr @new_LexState()
  store ptr %8, ptr %7, align 8, !tbaa !8
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %9

9:                                                ; preds = %159, %1
  %10 = load i32, ptr %3, align 4, !tbaa !10
  %11 = load ptr, ptr %2, align 8, !tbaa !3
  %12 = getelementptr inbounds nuw %struct.Grammar, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds nuw %struct.anon.1, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !12
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %162

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !3
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds nuw %struct.anon.1, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = load i32, ptr %3, align 4, !tbaa !10
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  store ptr %24, ptr %6, align 8, !tbaa !32
  %25 = load ptr, ptr %6, align 8, !tbaa !32
  %26 = getelementptr inbounds nuw %struct.State, ptr %25, i32 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %159

30:                                               ; preds = %16
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %31

31:                                               ; preds = %155, %30
  %32 = load i32, ptr %4, align 4, !tbaa !10
  %33 = load i32, ptr %3, align 4, !tbaa !10
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %158

35:                                               ; preds = %31
  %36 = load ptr, ptr %2, align 8, !tbaa !3
  %37 = getelementptr inbounds nuw %struct.Grammar, ptr %36, i32 0, i32 3
  %38 = getelementptr inbounds nuw %struct.anon.1, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !31
  %40 = load i32, ptr %4, align 4, !tbaa !10
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !32
  %44 = getelementptr inbounds nuw %struct.State, ptr %43, i32 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = icmp ne ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %155

48:                                               ; preds = %35
  %49 = load ptr, ptr %2, align 8, !tbaa !3
  %50 = getelementptr inbounds nuw %struct.Grammar, ptr %49, i32 0, i32 3
  %51 = getelementptr inbounds nuw %struct.anon.1, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !31
  %53 = load i32, ptr %4, align 4, !tbaa !10
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !32
  %57 = getelementptr inbounds nuw %struct.State, ptr %56, i32 0, i32 5
  %58 = getelementptr inbounds nuw %struct.VecAction, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !50
  %60 = load ptr, ptr %2, align 8, !tbaa !3
  %61 = getelementptr inbounds nuw %struct.Grammar, ptr %60, i32 0, i32 3
  %62 = getelementptr inbounds nuw %struct.anon.1, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !31
  %64 = load i32, ptr %3, align 4, !tbaa !10
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %63, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !32
  %68 = getelementptr inbounds nuw %struct.State, ptr %67, i32 0, i32 5
  %69 = getelementptr inbounds nuw %struct.VecAction, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !50
  %71 = icmp ne i32 %59, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %48
  br label %155

73:                                               ; preds = %48
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %74

74:                                               ; preds = %126, %73
  %75 = load i32, ptr %5, align 4, !tbaa !10
  %76 = load ptr, ptr %2, align 8, !tbaa !3
  %77 = getelementptr inbounds nuw %struct.Grammar, ptr %76, i32 0, i32 3
  %78 = getelementptr inbounds nuw %struct.anon.1, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !31
  %80 = load i32, ptr %4, align 4, !tbaa !10
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !32
  %84 = getelementptr inbounds nuw %struct.State, ptr %83, i32 0, i32 5
  %85 = getelementptr inbounds nuw %struct.VecAction, ptr %84, i32 0, i32 0
  %86 = load i32, ptr %85, align 8, !tbaa !50
  %87 = icmp ult i32 %75, %86
  br i1 %87, label %88, label %129

88:                                               ; preds = %74
  %89 = load ptr, ptr %2, align 8, !tbaa !3
  %90 = getelementptr inbounds nuw %struct.Grammar, ptr %89, i32 0, i32 3
  %91 = getelementptr inbounds nuw %struct.anon.1, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !31
  %93 = load i32, ptr %3, align 4, !tbaa !10
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds ptr, ptr %92, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !32
  %97 = getelementptr inbounds nuw %struct.State, ptr %96, i32 0, i32 5
  %98 = getelementptr inbounds nuw %struct.VecAction, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !51
  %100 = load i32, ptr %5, align 4, !tbaa !10
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds ptr, ptr %99, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = getelementptr inbounds nuw %struct.Action, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !54
  %106 = load ptr, ptr %2, align 8, !tbaa !3
  %107 = getelementptr inbounds nuw %struct.Grammar, ptr %106, i32 0, i32 3
  %108 = getelementptr inbounds nuw %struct.anon.1, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !31
  %110 = load i32, ptr %4, align 4, !tbaa !10
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !32
  %114 = getelementptr inbounds nuw %struct.State, ptr %113, i32 0, i32 5
  %115 = getelementptr inbounds nuw %struct.VecAction, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !51
  %117 = load i32, ptr %5, align 4, !tbaa !10
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !52
  %121 = getelementptr inbounds nuw %struct.Action, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !54
  %123 = icmp ne ptr %105, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %88
  br label %129

125:                                              ; preds = %88
  br label %126

126:                                              ; preds = %125
  %127 = load i32, ptr %5, align 4, !tbaa !10
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr %5, align 4, !tbaa !10
  br label %74, !llvm.loop !57

129:                                              ; preds = %124, %74
  %130 = load i32, ptr %5, align 4, !tbaa !10
  %131 = load ptr, ptr %2, align 8, !tbaa !3
  %132 = getelementptr inbounds nuw %struct.Grammar, ptr %131, i32 0, i32 3
  %133 = getelementptr inbounds nuw %struct.anon.1, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !31
  %135 = load i32, ptr %4, align 4, !tbaa !10
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %134, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !32
  %139 = getelementptr inbounds nuw %struct.State, ptr %138, i32 0, i32 5
  %140 = getelementptr inbounds nuw %struct.VecAction, ptr %139, i32 0, i32 0
  %141 = load i32, ptr %140, align 8, !tbaa !50
  %142 = icmp uge i32 %130, %141
  br i1 %142, label %143, label %154

143:                                              ; preds = %129
  %144 = load ptr, ptr %2, align 8, !tbaa !3
  %145 = getelementptr inbounds nuw %struct.Grammar, ptr %144, i32 0, i32 3
  %146 = getelementptr inbounds nuw %struct.anon.1, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !31
  %148 = load i32, ptr %4, align 4, !tbaa !10
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %147, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !32
  %152 = load ptr, ptr %6, align 8, !tbaa !32
  %153 = getelementptr inbounds nuw %struct.State, ptr %152, i32 0, i32 13
  store ptr %151, ptr %153, align 8, !tbaa !34
  br label %158

154:                                              ; preds = %129
  br label %155

155:                                              ; preds = %154, %72, %47
  %156 = load i32, ptr %4, align 4, !tbaa !10
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %4, align 4, !tbaa !10
  br label %31, !llvm.loop !59

158:                                              ; preds = %143, %31
  br label %159

159:                                              ; preds = %158, %29
  %160 = load i32, ptr %3, align 4, !tbaa !10
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr %3, align 4, !tbaa !10
  br label %9, !llvm.loop !60

162:                                              ; preds = %9
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %163

163:                                              ; preds = %201, %162
  %164 = load i32, ptr %3, align 4, !tbaa !10
  %165 = load ptr, ptr %2, align 8, !tbaa !3
  %166 = getelementptr inbounds nuw %struct.Grammar, ptr %165, i32 0, i32 3
  %167 = getelementptr inbounds nuw %struct.anon.1, ptr %166, i32 0, i32 0
  %168 = load i32, ptr %167, align 8, !tbaa !12
  %169 = icmp ult i32 %164, %168
  br i1 %169, label %170, label %204

170:                                              ; preds = %163
  %171 = load ptr, ptr %2, align 8, !tbaa !3
  %172 = getelementptr inbounds nuw %struct.Grammar, ptr %171, i32 0, i32 3
  %173 = getelementptr inbounds nuw %struct.anon.1, ptr %172, i32 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !31
  %175 = load i32, ptr %3, align 4, !tbaa !10
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds ptr, ptr %174, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !32
  store ptr %178, ptr %6, align 8, !tbaa !32
  %179 = load ptr, ptr %6, align 8, !tbaa !32
  %180 = getelementptr inbounds nuw %struct.State, ptr %179, i32 0, i32 5
  %181 = getelementptr inbounds nuw %struct.VecAction, ptr %180, i32 0, i32 0
  %182 = load i32, ptr %181, align 8, !tbaa !50
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %170
  %185 = load ptr, ptr %6, align 8, !tbaa !32
  %186 = getelementptr inbounds nuw %struct.State, ptr %185, i32 0, i32 13
  %187 = load ptr, ptr %186, align 8, !tbaa !34
  %188 = icmp ne ptr %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load ptr, ptr %6, align 8, !tbaa !32
  %191 = getelementptr inbounds nuw %struct.State, ptr %190, i32 0, i32 9
  %192 = load ptr, ptr %6, align 8, !tbaa !32
  %193 = getelementptr inbounds nuw %struct.State, ptr %192, i32 0, i32 13
  %194 = load ptr, ptr %193, align 8, !tbaa !34
  %195 = getelementptr inbounds nuw %struct.State, ptr %194, i32 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %191, ptr align 8 %195, i64 80, i1 false), !tbaa.struct !61
  br label %199

196:                                              ; preds = %184
  %197 = load ptr, ptr %7, align 8, !tbaa !8
  %198 = load ptr, ptr %6, align 8, !tbaa !32
  call void @build_state_scanner(ptr noundef %197, ptr noundef %198)
  br label %199

199:                                              ; preds = %196, %189
  br label %200

200:                                              ; preds = %199, %170
  br label %201

201:                                              ; preds = %200
  %202 = load i32, ptr %3, align 4, !tbaa !10
  %203 = add nsw i32 %202, 1
  store i32 %203, ptr %3, align 4, !tbaa !10
  br label %163, !llvm.loop !65

204:                                              ; preds = %163
  %205 = load i32, ptr @verbose_level, align 4, !tbaa !10
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %204
  %208 = load ptr, ptr %7, align 8, !tbaa !8
  %209 = getelementptr inbounds nuw %struct.LexState, ptr %208, i32 0, i32 3
  %210 = load i32, ptr %209, align 4, !tbaa !66
  %211 = load ptr, ptr %7, align 8, !tbaa !8
  %212 = getelementptr inbounds nuw %struct.LexState, ptr %211, i32 0, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !70
  %214 = call signext i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef signext %210, i32 noundef signext %213)
  br label %215

215:                                              ; preds = %207, %204
  %216 = load ptr, ptr %7, align 8, !tbaa !8
  call void @free(ptr noundef %216) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind
define internal void @build_state_scanner(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
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
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !8
  store ptr %1, ptr %4, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #7
  store i32 0, ptr %12, align 4, !tbaa !10
  %65 = load ptr, ptr %3, align 8, !tbaa !8
  %66 = call ptr @new_NFAState(ptr noundef %65)
  store ptr %66, ptr %5, align 8, !tbaa !71
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %67

67:                                               ; preds = %1203, %2
  %68 = load i32, ptr %11, align 4, !tbaa !10
  %69 = load ptr, ptr %4, align 8, !tbaa !32
  %70 = getelementptr inbounds nuw %struct.State, ptr %69, i32 0, i32 5
  %71 = getelementptr inbounds nuw %struct.VecAction, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 8, !tbaa !50
  %73 = icmp ult i32 %68, %72
  br i1 %73, label %74, label %1206

74:                                               ; preds = %67
  %75 = load ptr, ptr %4, align 8, !tbaa !32
  %76 = getelementptr inbounds nuw %struct.State, ptr %75, i32 0, i32 5
  %77 = getelementptr inbounds nuw %struct.VecAction, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = load i32, ptr %11, align 4, !tbaa !10
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  store ptr %82, ptr %8, align 8, !tbaa !52
  %83 = load ptr, ptr %8, align 8, !tbaa !52
  %84 = getelementptr inbounds nuw %struct.Action, ptr %83, i32 0, i32 0
  %85 = load i32, ptr %84, align 8, !tbaa !73
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %281

87:                                               ; preds = %74
  store i32 1, ptr %12, align 4, !tbaa !10
  %88 = load ptr, ptr %5, align 8, !tbaa !71
  %89 = getelementptr inbounds nuw %struct.NFAState, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds [256 x %struct.anon.6], ptr %89, i64 0, i64 0
  %91 = getelementptr inbounds nuw %struct.anon.6, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 8, !tbaa !74
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %192, label %94

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94
  %96 = load ptr, ptr %5, align 8, !tbaa !71
  %97 = getelementptr inbounds nuw %struct.NFAState, ptr %96, i32 0, i32 1
  %98 = getelementptr inbounds [256 x %struct.anon.6], ptr %97, i64 0, i64 0
  %99 = getelementptr inbounds nuw %struct.anon.6, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !75
  %101 = icmp ne ptr %100, null
  br i1 %101, label %122, label %102

102:                                              ; preds = %95
  %103 = load ptr, ptr %3, align 8, !tbaa !8
  %104 = call ptr @new_NFAState(ptr noundef %103)
  store ptr %104, ptr %7, align 8, !tbaa !71
  %105 = load ptr, ptr %5, align 8, !tbaa !71
  %106 = getelementptr inbounds nuw %struct.NFAState, ptr %105, i32 0, i32 1
  %107 = getelementptr inbounds [256 x %struct.anon.6], ptr %106, i64 0, i64 0
  %108 = getelementptr inbounds nuw %struct.anon.6, ptr %107, i32 0, i32 3
  %109 = getelementptr inbounds [3 x ptr], ptr %108, i64 0, i64 0
  %110 = load ptr, ptr %5, align 8, !tbaa !71
  %111 = getelementptr inbounds nuw %struct.NFAState, ptr %110, i32 0, i32 1
  %112 = getelementptr inbounds [256 x %struct.anon.6], ptr %111, i64 0, i64 0
  %113 = getelementptr inbounds nuw %struct.anon.6, ptr %112, i32 0, i32 2
  store ptr %109, ptr %113, align 8, !tbaa !75
  %114 = load ptr, ptr %5, align 8, !tbaa !71
  %115 = getelementptr inbounds nuw %struct.NFAState, ptr %114, i32 0, i32 1
  %116 = getelementptr inbounds [256 x %struct.anon.6], ptr %115, i64 0, i64 0
  %117 = getelementptr inbounds nuw %struct.anon.6, ptr %116, i32 0, i32 0
  %118 = load i32, ptr %117, align 8, !tbaa !74
  %119 = add i32 %118, 1
  store i32 %119, ptr %117, align 8, !tbaa !74
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds nuw ptr, ptr %109, i64 %120
  store ptr %104, ptr %121, align 8, !tbaa !71
  br label %191

122:                                              ; preds = %95
  %123 = load ptr, ptr %5, align 8, !tbaa !71
  %124 = getelementptr inbounds nuw %struct.NFAState, ptr %123, i32 0, i32 1
  %125 = getelementptr inbounds [256 x %struct.anon.6], ptr %124, i64 0, i64 0
  %126 = getelementptr inbounds nuw %struct.anon.6, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !75
  %128 = load ptr, ptr %5, align 8, !tbaa !71
  %129 = getelementptr inbounds nuw %struct.NFAState, ptr %128, i32 0, i32 1
  %130 = getelementptr inbounds [256 x %struct.anon.6], ptr %129, i64 0, i64 0
  %131 = getelementptr inbounds nuw %struct.anon.6, ptr %130, i32 0, i32 3
  %132 = getelementptr inbounds [3 x ptr], ptr %131, i64 0, i64 0
  %133 = icmp eq ptr %127, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %122
  %135 = load ptr, ptr %5, align 8, !tbaa !71
  %136 = getelementptr inbounds nuw %struct.NFAState, ptr %135, i32 0, i32 1
  %137 = getelementptr inbounds [256 x %struct.anon.6], ptr %136, i64 0, i64 0
  %138 = getelementptr inbounds nuw %struct.anon.6, ptr %137, i32 0, i32 0
  %139 = load i32, ptr %138, align 8, !tbaa !74
  %140 = icmp ult i32 %139, 3
  br i1 %140, label %141, label %157

141:                                              ; preds = %134
  %142 = load ptr, ptr %3, align 8, !tbaa !8
  %143 = call ptr @new_NFAState(ptr noundef %142)
  store ptr %143, ptr %7, align 8, !tbaa !71
  %144 = load ptr, ptr %5, align 8, !tbaa !71
  %145 = getelementptr inbounds nuw %struct.NFAState, ptr %144, i32 0, i32 1
  %146 = getelementptr inbounds [256 x %struct.anon.6], ptr %145, i64 0, i64 0
  %147 = getelementptr inbounds nuw %struct.anon.6, ptr %146, i32 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !75
  %149 = load ptr, ptr %5, align 8, !tbaa !71
  %150 = getelementptr inbounds nuw %struct.NFAState, ptr %149, i32 0, i32 1
  %151 = getelementptr inbounds [256 x %struct.anon.6], ptr %150, i64 0, i64 0
  %152 = getelementptr inbounds nuw %struct.anon.6, ptr %151, i32 0, i32 0
  %153 = load i32, ptr %152, align 8, !tbaa !74
  %154 = add i32 %153, 1
  store i32 %154, ptr %152, align 8, !tbaa !74
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds nuw ptr, ptr %148, i64 %155
  store ptr %143, ptr %156, align 8, !tbaa !71
  br label %191

157:                                              ; preds = %134
  br label %183

158:                                              ; preds = %122
  %159 = load ptr, ptr %5, align 8, !tbaa !71
  %160 = getelementptr inbounds nuw %struct.NFAState, ptr %159, i32 0, i32 1
  %161 = getelementptr inbounds [256 x %struct.anon.6], ptr %160, i64 0, i64 0
  %162 = getelementptr inbounds nuw %struct.anon.6, ptr %161, i32 0, i32 0
  %163 = load i32, ptr %162, align 8, !tbaa !74
  %164 = and i32 %163, 7
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %182

166:                                              ; preds = %158
  %167 = load ptr, ptr %3, align 8, !tbaa !8
  %168 = call ptr @new_NFAState(ptr noundef %167)
  store ptr %168, ptr %7, align 8, !tbaa !71
  %169 = load ptr, ptr %5, align 8, !tbaa !71
  %170 = getelementptr inbounds nuw %struct.NFAState, ptr %169, i32 0, i32 1
  %171 = getelementptr inbounds [256 x %struct.anon.6], ptr %170, i64 0, i64 0
  %172 = getelementptr inbounds nuw %struct.anon.6, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !75
  %174 = load ptr, ptr %5, align 8, !tbaa !71
  %175 = getelementptr inbounds nuw %struct.NFAState, ptr %174, i32 0, i32 1
  %176 = getelementptr inbounds [256 x %struct.anon.6], ptr %175, i64 0, i64 0
  %177 = getelementptr inbounds nuw %struct.anon.6, ptr %176, i32 0, i32 0
  %178 = load i32, ptr %177, align 8, !tbaa !74
  %179 = add i32 %178, 1
  store i32 %179, ptr %177, align 8, !tbaa !74
  %180 = zext i32 %178 to i64
  %181 = getelementptr inbounds nuw ptr, ptr %173, i64 %180
  store ptr %168, ptr %181, align 8, !tbaa !71
  br label %191

182:                                              ; preds = %158
  br label %183

183:                                              ; preds = %182, %157
  br label %184

184:                                              ; preds = %183
  %185 = load ptr, ptr %5, align 8, !tbaa !71
  %186 = getelementptr inbounds nuw %struct.NFAState, ptr %185, i32 0, i32 1
  %187 = getelementptr inbounds [256 x %struct.anon.6], ptr %186, i64 0, i64 0
  %188 = load ptr, ptr %3, align 8, !tbaa !8
  %189 = call ptr @new_NFAState(ptr noundef %188)
  store ptr %189, ptr %7, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %187, ptr noundef %189)
  br label %190

190:                                              ; preds = %184
  br label %191

191:                                              ; preds = %190, %166, %141, %102
  br label %200

192:                                              ; preds = %87
  %193 = load ptr, ptr %5, align 8, !tbaa !71
  %194 = getelementptr inbounds nuw %struct.NFAState, ptr %193, i32 0, i32 1
  %195 = getelementptr inbounds [256 x %struct.anon.6], ptr %194, i64 0, i64 0
  %196 = getelementptr inbounds nuw %struct.anon.6, ptr %195, i32 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !75
  %198 = getelementptr inbounds ptr, ptr %197, i64 0
  %199 = load ptr, ptr %198, align 8, !tbaa !71
  store ptr %199, ptr %7, align 8, !tbaa !71
  br label %200

200:                                              ; preds = %192, %191
  br label %201

201:                                              ; preds = %200
  %202 = load ptr, ptr %7, align 8, !tbaa !71
  %203 = getelementptr inbounds nuw %struct.NFAState, ptr %202, i32 0, i32 3
  %204 = getelementptr inbounds nuw %struct.anon.8, ptr %203, i32 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !76
  %206 = icmp ne ptr %205, null
  br i1 %206, label %223, label %207

207:                                              ; preds = %201
  %208 = load ptr, ptr %8, align 8, !tbaa !52
  %209 = load ptr, ptr %7, align 8, !tbaa !71
  %210 = getelementptr inbounds nuw %struct.NFAState, ptr %209, i32 0, i32 3
  %211 = getelementptr inbounds nuw %struct.anon.8, ptr %210, i32 0, i32 3
  %212 = getelementptr inbounds [3 x ptr], ptr %211, i64 0, i64 0
  %213 = load ptr, ptr %7, align 8, !tbaa !71
  %214 = getelementptr inbounds nuw %struct.NFAState, ptr %213, i32 0, i32 3
  %215 = getelementptr inbounds nuw %struct.anon.8, ptr %214, i32 0, i32 2
  store ptr %212, ptr %215, align 8, !tbaa !76
  %216 = load ptr, ptr %7, align 8, !tbaa !71
  %217 = getelementptr inbounds nuw %struct.NFAState, ptr %216, i32 0, i32 3
  %218 = getelementptr inbounds nuw %struct.anon.8, ptr %217, i32 0, i32 0
  %219 = load i32, ptr %218, align 8, !tbaa !78
  %220 = add i32 %219, 1
  store i32 %220, ptr %218, align 8, !tbaa !78
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds nuw ptr, ptr %212, i64 %221
  store ptr %208, ptr %222, align 8, !tbaa !52
  br label %280

223:                                              ; preds = %201
  %224 = load ptr, ptr %7, align 8, !tbaa !71
  %225 = getelementptr inbounds nuw %struct.NFAState, ptr %224, i32 0, i32 3
  %226 = getelementptr inbounds nuw %struct.anon.8, ptr %225, i32 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !76
  %228 = load ptr, ptr %7, align 8, !tbaa !71
  %229 = getelementptr inbounds nuw %struct.NFAState, ptr %228, i32 0, i32 3
  %230 = getelementptr inbounds nuw %struct.anon.8, ptr %229, i32 0, i32 3
  %231 = getelementptr inbounds [3 x ptr], ptr %230, i64 0, i64 0
  %232 = icmp eq ptr %227, %231
  br i1 %232, label %233, label %253

233:                                              ; preds = %223
  %234 = load ptr, ptr %7, align 8, !tbaa !71
  %235 = getelementptr inbounds nuw %struct.NFAState, ptr %234, i32 0, i32 3
  %236 = getelementptr inbounds nuw %struct.anon.8, ptr %235, i32 0, i32 0
  %237 = load i32, ptr %236, align 8, !tbaa !78
  %238 = icmp ult i32 %237, 3
  br i1 %238, label %239, label %252

239:                                              ; preds = %233
  %240 = load ptr, ptr %8, align 8, !tbaa !52
  %241 = load ptr, ptr %7, align 8, !tbaa !71
  %242 = getelementptr inbounds nuw %struct.NFAState, ptr %241, i32 0, i32 3
  %243 = getelementptr inbounds nuw %struct.anon.8, ptr %242, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !76
  %245 = load ptr, ptr %7, align 8, !tbaa !71
  %246 = getelementptr inbounds nuw %struct.NFAState, ptr %245, i32 0, i32 3
  %247 = getelementptr inbounds nuw %struct.anon.8, ptr %246, i32 0, i32 0
  %248 = load i32, ptr %247, align 8, !tbaa !78
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 8, !tbaa !78
  %250 = zext i32 %248 to i64
  %251 = getelementptr inbounds nuw ptr, ptr %244, i64 %250
  store ptr %240, ptr %251, align 8, !tbaa !52
  br label %280

252:                                              ; preds = %233
  br label %274

253:                                              ; preds = %223
  %254 = load ptr, ptr %7, align 8, !tbaa !71
  %255 = getelementptr inbounds nuw %struct.NFAState, ptr %254, i32 0, i32 3
  %256 = getelementptr inbounds nuw %struct.anon.8, ptr %255, i32 0, i32 0
  %257 = load i32, ptr %256, align 8, !tbaa !78
  %258 = and i32 %257, 7
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %273

260:                                              ; preds = %253
  %261 = load ptr, ptr %8, align 8, !tbaa !52
  %262 = load ptr, ptr %7, align 8, !tbaa !71
  %263 = getelementptr inbounds nuw %struct.NFAState, ptr %262, i32 0, i32 3
  %264 = getelementptr inbounds nuw %struct.anon.8, ptr %263, i32 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !76
  %266 = load ptr, ptr %7, align 8, !tbaa !71
  %267 = getelementptr inbounds nuw %struct.NFAState, ptr %266, i32 0, i32 3
  %268 = getelementptr inbounds nuw %struct.anon.8, ptr %267, i32 0, i32 0
  %269 = load i32, ptr %268, align 8, !tbaa !78
  %270 = add i32 %269, 1
  store i32 %270, ptr %268, align 8, !tbaa !78
  %271 = zext i32 %269 to i64
  %272 = getelementptr inbounds nuw ptr, ptr %265, i64 %271
  store ptr %261, ptr %272, align 8, !tbaa !52
  br label %280

273:                                              ; preds = %253
  br label %274

274:                                              ; preds = %273, %252
  br label %275

275:                                              ; preds = %274
  %276 = load ptr, ptr %7, align 8, !tbaa !71
  %277 = getelementptr inbounds nuw %struct.NFAState, ptr %276, i32 0, i32 3
  %278 = load ptr, ptr %8, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %277, ptr noundef %278)
  br label %279

279:                                              ; preds = %275
  br label %280

280:                                              ; preds = %279, %260, %239, %207
  br label %1202

281:                                              ; preds = %74
  %282 = load ptr, ptr %8, align 8, !tbaa !52
  %283 = getelementptr inbounds nuw %struct.Action, ptr %282, i32 0, i32 0
  %284 = load i32, ptr %283, align 8, !tbaa !73
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %1201

286:                                              ; preds = %281
  %287 = load ptr, ptr %8, align 8, !tbaa !52
  %288 = getelementptr inbounds nuw %struct.Action, ptr %287, i32 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !54
  %290 = getelementptr inbounds nuw %struct.Term, ptr %289, i32 0, i32 0
  %291 = load i32, ptr %290, align 8, !tbaa !79
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %1201

293:                                              ; preds = %286
  store i32 1, ptr %12, align 4, !tbaa !10
  %294 = load ptr, ptr %5, align 8, !tbaa !71
  store ptr %294, ptr %6, align 8, !tbaa !71
  %295 = load ptr, ptr %8, align 8, !tbaa !52
  %296 = getelementptr inbounds nuw %struct.Action, ptr %295, i32 0, i32 1
  %297 = load ptr, ptr %296, align 8, !tbaa !54
  %298 = getelementptr inbounds nuw %struct.Term, ptr %297, i32 0, i32 7
  %299 = load i8, ptr %298, align 4
  %300 = lshr i8 %299, 3
  %301 = and i8 %300, 1
  %302 = zext i8 %301 to i32
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %478, label %304

304:                                              ; preds = %293
  %305 = load ptr, ptr %8, align 8, !tbaa !52
  %306 = getelementptr inbounds nuw %struct.Action, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !54
  %308 = getelementptr inbounds nuw %struct.Term, ptr %307, i32 0, i32 5
  %309 = load ptr, ptr %308, align 8, !tbaa !81
  store ptr %309, ptr %9, align 8, !tbaa !82
  br label %310

310:                                              ; preds = %474, %304
  %311 = load ptr, ptr %9, align 8, !tbaa !82
  %312 = load i8, ptr %311, align 1, !tbaa !63
  %313 = icmp ne i8 %312, 0
  br i1 %313, label %314, label %477

314:                                              ; preds = %310
  %315 = load ptr, ptr %6, align 8, !tbaa !71
  %316 = getelementptr inbounds nuw %struct.NFAState, ptr %315, i32 0, i32 1
  %317 = load ptr, ptr %9, align 8, !tbaa !82
  %318 = load i8, ptr %317, align 1, !tbaa !63
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %316, i64 0, i64 %319
  %321 = getelementptr inbounds nuw %struct.anon.6, ptr %320, i32 0, i32 0
  %322 = load i32, ptr %321, align 8, !tbaa !74
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %461, label %324

324:                                              ; preds = %314
  br label %325

325:                                              ; preds = %324
  %326 = load ptr, ptr %6, align 8, !tbaa !71
  %327 = getelementptr inbounds nuw %struct.NFAState, ptr %326, i32 0, i32 1
  %328 = load ptr, ptr %9, align 8, !tbaa !82
  %329 = load i8, ptr %328, align 1, !tbaa !63
  %330 = zext i8 %329 to i64
  %331 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %327, i64 0, i64 %330
  %332 = getelementptr inbounds nuw %struct.anon.6, ptr %331, i32 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !75
  %334 = icmp ne ptr %333, null
  br i1 %334, label %364, label %335

335:                                              ; preds = %325
  %336 = load ptr, ptr %3, align 8, !tbaa !8
  %337 = call ptr @new_NFAState(ptr noundef %336)
  store ptr %337, ptr %7, align 8, !tbaa !71
  %338 = load ptr, ptr %6, align 8, !tbaa !71
  %339 = getelementptr inbounds nuw %struct.NFAState, ptr %338, i32 0, i32 1
  %340 = load ptr, ptr %9, align 8, !tbaa !82
  %341 = load i8, ptr %340, align 1, !tbaa !63
  %342 = zext i8 %341 to i64
  %343 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %339, i64 0, i64 %342
  %344 = getelementptr inbounds nuw %struct.anon.6, ptr %343, i32 0, i32 3
  %345 = getelementptr inbounds [3 x ptr], ptr %344, i64 0, i64 0
  %346 = load ptr, ptr %6, align 8, !tbaa !71
  %347 = getelementptr inbounds nuw %struct.NFAState, ptr %346, i32 0, i32 1
  %348 = load ptr, ptr %9, align 8, !tbaa !82
  %349 = load i8, ptr %348, align 1, !tbaa !63
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %347, i64 0, i64 %350
  %352 = getelementptr inbounds nuw %struct.anon.6, ptr %351, i32 0, i32 2
  store ptr %345, ptr %352, align 8, !tbaa !75
  %353 = load ptr, ptr %6, align 8, !tbaa !71
  %354 = getelementptr inbounds nuw %struct.NFAState, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %9, align 8, !tbaa !82
  %356 = load i8, ptr %355, align 1, !tbaa !63
  %357 = zext i8 %356 to i64
  %358 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %354, i64 0, i64 %357
  %359 = getelementptr inbounds nuw %struct.anon.6, ptr %358, i32 0, i32 0
  %360 = load i32, ptr %359, align 8, !tbaa !74
  %361 = add i32 %360, 1
  store i32 %361, ptr %359, align 8, !tbaa !74
  %362 = zext i32 %360 to i64
  %363 = getelementptr inbounds nuw ptr, ptr %345, i64 %362
  store ptr %337, ptr %363, align 8, !tbaa !71
  br label %460

364:                                              ; preds = %325
  %365 = load ptr, ptr %6, align 8, !tbaa !71
  %366 = getelementptr inbounds nuw %struct.NFAState, ptr %365, i32 0, i32 1
  %367 = load ptr, ptr %9, align 8, !tbaa !82
  %368 = load i8, ptr %367, align 1, !tbaa !63
  %369 = zext i8 %368 to i64
  %370 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %366, i64 0, i64 %369
  %371 = getelementptr inbounds nuw %struct.anon.6, ptr %370, i32 0, i32 2
  %372 = load ptr, ptr %371, align 8, !tbaa !75
  %373 = load ptr, ptr %6, align 8, !tbaa !71
  %374 = getelementptr inbounds nuw %struct.NFAState, ptr %373, i32 0, i32 1
  %375 = load ptr, ptr %9, align 8, !tbaa !82
  %376 = load i8, ptr %375, align 1, !tbaa !63
  %377 = zext i8 %376 to i64
  %378 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %374, i64 0, i64 %377
  %379 = getelementptr inbounds nuw %struct.anon.6, ptr %378, i32 0, i32 3
  %380 = getelementptr inbounds [3 x ptr], ptr %379, i64 0, i64 0
  %381 = icmp eq ptr %372, %380
  br i1 %381, label %382, label %415

382:                                              ; preds = %364
  %383 = load ptr, ptr %6, align 8, !tbaa !71
  %384 = getelementptr inbounds nuw %struct.NFAState, ptr %383, i32 0, i32 1
  %385 = load ptr, ptr %9, align 8, !tbaa !82
  %386 = load i8, ptr %385, align 1, !tbaa !63
  %387 = zext i8 %386 to i64
  %388 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %384, i64 0, i64 %387
  %389 = getelementptr inbounds nuw %struct.anon.6, ptr %388, i32 0, i32 0
  %390 = load i32, ptr %389, align 8, !tbaa !74
  %391 = icmp ult i32 %390, 3
  br i1 %391, label %392, label %414

392:                                              ; preds = %382
  %393 = load ptr, ptr %3, align 8, !tbaa !8
  %394 = call ptr @new_NFAState(ptr noundef %393)
  store ptr %394, ptr %7, align 8, !tbaa !71
  %395 = load ptr, ptr %6, align 8, !tbaa !71
  %396 = getelementptr inbounds nuw %struct.NFAState, ptr %395, i32 0, i32 1
  %397 = load ptr, ptr %9, align 8, !tbaa !82
  %398 = load i8, ptr %397, align 1, !tbaa !63
  %399 = zext i8 %398 to i64
  %400 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %396, i64 0, i64 %399
  %401 = getelementptr inbounds nuw %struct.anon.6, ptr %400, i32 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !75
  %403 = load ptr, ptr %6, align 8, !tbaa !71
  %404 = getelementptr inbounds nuw %struct.NFAState, ptr %403, i32 0, i32 1
  %405 = load ptr, ptr %9, align 8, !tbaa !82
  %406 = load i8, ptr %405, align 1, !tbaa !63
  %407 = zext i8 %406 to i64
  %408 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %404, i64 0, i64 %407
  %409 = getelementptr inbounds nuw %struct.anon.6, ptr %408, i32 0, i32 0
  %410 = load i32, ptr %409, align 8, !tbaa !74
  %411 = add i32 %410, 1
  store i32 %411, ptr %409, align 8, !tbaa !74
  %412 = zext i32 %410 to i64
  %413 = getelementptr inbounds nuw ptr, ptr %402, i64 %412
  store ptr %394, ptr %413, align 8, !tbaa !71
  br label %460

414:                                              ; preds = %382
  br label %449

415:                                              ; preds = %364
  %416 = load ptr, ptr %6, align 8, !tbaa !71
  %417 = getelementptr inbounds nuw %struct.NFAState, ptr %416, i32 0, i32 1
  %418 = load ptr, ptr %9, align 8, !tbaa !82
  %419 = load i8, ptr %418, align 1, !tbaa !63
  %420 = zext i8 %419 to i64
  %421 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %417, i64 0, i64 %420
  %422 = getelementptr inbounds nuw %struct.anon.6, ptr %421, i32 0, i32 0
  %423 = load i32, ptr %422, align 8, !tbaa !74
  %424 = and i32 %423, 7
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %448

426:                                              ; preds = %415
  %427 = load ptr, ptr %3, align 8, !tbaa !8
  %428 = call ptr @new_NFAState(ptr noundef %427)
  store ptr %428, ptr %7, align 8, !tbaa !71
  %429 = load ptr, ptr %6, align 8, !tbaa !71
  %430 = getelementptr inbounds nuw %struct.NFAState, ptr %429, i32 0, i32 1
  %431 = load ptr, ptr %9, align 8, !tbaa !82
  %432 = load i8, ptr %431, align 1, !tbaa !63
  %433 = zext i8 %432 to i64
  %434 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %430, i64 0, i64 %433
  %435 = getelementptr inbounds nuw %struct.anon.6, ptr %434, i32 0, i32 2
  %436 = load ptr, ptr %435, align 8, !tbaa !75
  %437 = load ptr, ptr %6, align 8, !tbaa !71
  %438 = getelementptr inbounds nuw %struct.NFAState, ptr %437, i32 0, i32 1
  %439 = load ptr, ptr %9, align 8, !tbaa !82
  %440 = load i8, ptr %439, align 1, !tbaa !63
  %441 = zext i8 %440 to i64
  %442 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %438, i64 0, i64 %441
  %443 = getelementptr inbounds nuw %struct.anon.6, ptr %442, i32 0, i32 0
  %444 = load i32, ptr %443, align 8, !tbaa !74
  %445 = add i32 %444, 1
  store i32 %445, ptr %443, align 8, !tbaa !74
  %446 = zext i32 %444 to i64
  %447 = getelementptr inbounds nuw ptr, ptr %436, i64 %446
  store ptr %428, ptr %447, align 8, !tbaa !71
  br label %460

448:                                              ; preds = %415
  br label %449

449:                                              ; preds = %448, %414
  br label %450

450:                                              ; preds = %449
  %451 = load ptr, ptr %6, align 8, !tbaa !71
  %452 = getelementptr inbounds nuw %struct.NFAState, ptr %451, i32 0, i32 1
  %453 = load ptr, ptr %9, align 8, !tbaa !82
  %454 = load i8, ptr %453, align 1, !tbaa !63
  %455 = zext i8 %454 to i64
  %456 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %452, i64 0, i64 %455
  %457 = load ptr, ptr %3, align 8, !tbaa !8
  %458 = call ptr @new_NFAState(ptr noundef %457)
  store ptr %458, ptr %7, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %456, ptr noundef %458)
  br label %459

459:                                              ; preds = %450
  br label %460

460:                                              ; preds = %459, %426, %392, %335
  br label %472

461:                                              ; preds = %314
  %462 = load ptr, ptr %6, align 8, !tbaa !71
  %463 = getelementptr inbounds nuw %struct.NFAState, ptr %462, i32 0, i32 1
  %464 = load ptr, ptr %9, align 8, !tbaa !82
  %465 = load i8, ptr %464, align 1, !tbaa !63
  %466 = zext i8 %465 to i64
  %467 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %463, i64 0, i64 %466
  %468 = getelementptr inbounds nuw %struct.anon.6, ptr %467, i32 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !75
  %470 = getelementptr inbounds ptr, ptr %469, i64 0
  %471 = load ptr, ptr %470, align 8, !tbaa !71
  store ptr %471, ptr %7, align 8, !tbaa !71
  br label %472

472:                                              ; preds = %461, %460
  %473 = load ptr, ptr %7, align 8, !tbaa !71
  store ptr %473, ptr %6, align 8, !tbaa !71
  br label %474

474:                                              ; preds = %472
  %475 = load ptr, ptr %9, align 8, !tbaa !82
  %476 = getelementptr inbounds nuw i8, ptr %475, i32 1
  store ptr %476, ptr %9, align 8, !tbaa !82
  br label %310, !llvm.loop !83

477:                                              ; preds = %310
  br label %1120

478:                                              ; preds = %293
  %479 = load ptr, ptr %8, align 8, !tbaa !52
  %480 = getelementptr inbounds nuw %struct.Action, ptr %479, i32 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !54
  %482 = getelementptr inbounds nuw %struct.Term, ptr %481, i32 0, i32 5
  %483 = load ptr, ptr %482, align 8, !tbaa !81
  store ptr %483, ptr %9, align 8, !tbaa !82
  br label %484

484:                                              ; preds = %1116, %478
  %485 = load ptr, ptr %9, align 8, !tbaa !82
  %486 = load i8, ptr %485, align 1, !tbaa !63
  %487 = icmp ne i8 %486, 0
  br i1 %487, label %488, label %1119

488:                                              ; preds = %484
  %489 = call ptr @__ctype_b_loc() #8
  %490 = load ptr, ptr %489, align 8, !tbaa !84
  %491 = load ptr, ptr %9, align 8, !tbaa !82
  %492 = load i8, ptr %491, align 1, !tbaa !63
  %493 = zext i8 %492 to i32
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i16, ptr %490, i64 %494
  %496 = load i16, ptr %495, align 2, !tbaa !86
  %497 = zext i16 %496 to i32
  %498 = and i32 %497, 1024
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %977

500:                                              ; preds = %488
  br label %501

501:                                              ; preds = %500
  %502 = load ptr, ptr %6, align 8, !tbaa !71
  %503 = getelementptr inbounds nuw %struct.NFAState, ptr %502, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #7
  %504 = call ptr @__ctype_toupper_loc() #8
  %505 = load ptr, ptr %504, align 8, !tbaa !88
  %506 = load ptr, ptr %9, align 8, !tbaa !82
  %507 = load i8, ptr %506, align 1, !tbaa !63
  %508 = zext i8 %507 to i32
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, ptr %505, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !10
  store i32 %511, ptr %13, align 4, !tbaa !10
  %512 = load i32, ptr %13, align 4, !tbaa !10
  store i32 %512, ptr %14, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #7
  %513 = load i32, ptr %14, align 4, !tbaa !10
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [256 x %struct.anon.6], ptr %503, i64 0, i64 %514
  %516 = getelementptr inbounds nuw %struct.anon.6, ptr %515, i32 0, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !75
  %518 = icmp ne ptr %517, null
  br i1 %518, label %572, label %519

519:                                              ; preds = %501
  %520 = load ptr, ptr %3, align 8, !tbaa !8
  %521 = call ptr @new_NFAState(ptr noundef %520)
  store ptr %521, ptr %7, align 8, !tbaa !71
  %522 = load ptr, ptr %6, align 8, !tbaa !71
  %523 = getelementptr inbounds nuw %struct.NFAState, ptr %522, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #7
  %524 = call ptr @__ctype_toupper_loc() #8
  %525 = load ptr, ptr %524, align 8, !tbaa !88
  %526 = load ptr, ptr %9, align 8, !tbaa !82
  %527 = load i8, ptr %526, align 1, !tbaa !63
  %528 = zext i8 %527 to i32
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32, ptr %525, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !10
  store i32 %531, ptr %15, align 4, !tbaa !10
  %532 = load i32, ptr %15, align 4, !tbaa !10
  store i32 %532, ptr %16, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #7
  %533 = load i32, ptr %16, align 4, !tbaa !10
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [256 x %struct.anon.6], ptr %523, i64 0, i64 %534
  %536 = getelementptr inbounds nuw %struct.anon.6, ptr %535, i32 0, i32 3
  %537 = getelementptr inbounds [3 x ptr], ptr %536, i64 0, i64 0
  %538 = load ptr, ptr %6, align 8, !tbaa !71
  %539 = getelementptr inbounds nuw %struct.NFAState, ptr %538, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  %540 = call ptr @__ctype_toupper_loc() #8
  %541 = load ptr, ptr %540, align 8, !tbaa !88
  %542 = load ptr, ptr %9, align 8, !tbaa !82
  %543 = load i8, ptr %542, align 1, !tbaa !63
  %544 = zext i8 %543 to i32
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, ptr %541, i64 %545
  %547 = load i32, ptr %546, align 4, !tbaa !10
  store i32 %547, ptr %17, align 4, !tbaa !10
  %548 = load i32, ptr %17, align 4, !tbaa !10
  store i32 %548, ptr %18, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  %549 = load i32, ptr %18, align 4, !tbaa !10
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [256 x %struct.anon.6], ptr %539, i64 0, i64 %550
  %552 = getelementptr inbounds nuw %struct.anon.6, ptr %551, i32 0, i32 2
  store ptr %537, ptr %552, align 8, !tbaa !75
  %553 = load ptr, ptr %6, align 8, !tbaa !71
  %554 = getelementptr inbounds nuw %struct.NFAState, ptr %553, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  %555 = call ptr @__ctype_toupper_loc() #8
  %556 = load ptr, ptr %555, align 8, !tbaa !88
  %557 = load ptr, ptr %9, align 8, !tbaa !82
  %558 = load i8, ptr %557, align 1, !tbaa !63
  %559 = zext i8 %558 to i32
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, ptr %556, i64 %560
  %562 = load i32, ptr %561, align 4, !tbaa !10
  store i32 %562, ptr %19, align 4, !tbaa !10
  %563 = load i32, ptr %19, align 4, !tbaa !10
  store i32 %563, ptr %20, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  %564 = load i32, ptr %20, align 4, !tbaa !10
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [256 x %struct.anon.6], ptr %554, i64 0, i64 %565
  %567 = getelementptr inbounds nuw %struct.anon.6, ptr %566, i32 0, i32 0
  %568 = load i32, ptr %567, align 8, !tbaa !74
  %569 = add i32 %568, 1
  store i32 %569, ptr %567, align 8, !tbaa !74
  %570 = zext i32 %568 to i64
  %571 = getelementptr inbounds nuw ptr, ptr %537, i64 %570
  store ptr %521, ptr %571, align 8, !tbaa !71
  br label %740

572:                                              ; preds = %501
  %573 = load ptr, ptr %6, align 8, !tbaa !71
  %574 = getelementptr inbounds nuw %struct.NFAState, ptr %573, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7
  %575 = call ptr @__ctype_toupper_loc() #8
  %576 = load ptr, ptr %575, align 8, !tbaa !88
  %577 = load ptr, ptr %9, align 8, !tbaa !82
  %578 = load i8, ptr %577, align 1, !tbaa !63
  %579 = zext i8 %578 to i32
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, ptr %576, i64 %580
  %582 = load i32, ptr %581, align 4, !tbaa !10
  store i32 %582, ptr %21, align 4, !tbaa !10
  %583 = load i32, ptr %21, align 4, !tbaa !10
  store i32 %583, ptr %22, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7
  %584 = load i32, ptr %22, align 4, !tbaa !10
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [256 x %struct.anon.6], ptr %574, i64 0, i64 %585
  %587 = getelementptr inbounds nuw %struct.anon.6, ptr %586, i32 0, i32 2
  %588 = load ptr, ptr %587, align 8, !tbaa !75
  %589 = load ptr, ptr %6, align 8, !tbaa !71
  %590 = getelementptr inbounds nuw %struct.NFAState, ptr %589, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7
  %591 = call ptr @__ctype_toupper_loc() #8
  %592 = load ptr, ptr %591, align 8, !tbaa !88
  %593 = load ptr, ptr %9, align 8, !tbaa !82
  %594 = load i8, ptr %593, align 1, !tbaa !63
  %595 = zext i8 %594 to i32
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, ptr %592, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !10
  store i32 %598, ptr %23, align 4, !tbaa !10
  %599 = load i32, ptr %23, align 4, !tbaa !10
  store i32 %599, ptr %24, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7
  %600 = load i32, ptr %24, align 4, !tbaa !10
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [256 x %struct.anon.6], ptr %590, i64 0, i64 %601
  %603 = getelementptr inbounds nuw %struct.anon.6, ptr %602, i32 0, i32 3
  %604 = getelementptr inbounds [3 x ptr], ptr %603, i64 0, i64 0
  %605 = icmp eq ptr %588, %604
  br i1 %605, label %606, label %663

606:                                              ; preds = %572
  %607 = load ptr, ptr %6, align 8, !tbaa !71
  %608 = getelementptr inbounds nuw %struct.NFAState, ptr %607, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #7
  %609 = call ptr @__ctype_toupper_loc() #8
  %610 = load ptr, ptr %609, align 8, !tbaa !88
  %611 = load ptr, ptr %9, align 8, !tbaa !82
  %612 = load i8, ptr %611, align 1, !tbaa !63
  %613 = zext i8 %612 to i32
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, ptr %610, i64 %614
  %616 = load i32, ptr %615, align 4, !tbaa !10
  store i32 %616, ptr %25, align 4, !tbaa !10
  %617 = load i32, ptr %25, align 4, !tbaa !10
  store i32 %617, ptr %26, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #7
  %618 = load i32, ptr %26, align 4, !tbaa !10
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [256 x %struct.anon.6], ptr %608, i64 0, i64 %619
  %621 = getelementptr inbounds nuw %struct.anon.6, ptr %620, i32 0, i32 0
  %622 = load i32, ptr %621, align 8, !tbaa !74
  %623 = icmp ult i32 %622, 3
  br i1 %623, label %624, label %662

624:                                              ; preds = %606
  %625 = load ptr, ptr %3, align 8, !tbaa !8
  %626 = call ptr @new_NFAState(ptr noundef %625)
  store ptr %626, ptr %7, align 8, !tbaa !71
  %627 = load ptr, ptr %6, align 8, !tbaa !71
  %628 = getelementptr inbounds nuw %struct.NFAState, ptr %627, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #7
  %629 = call ptr @__ctype_toupper_loc() #8
  %630 = load ptr, ptr %629, align 8, !tbaa !88
  %631 = load ptr, ptr %9, align 8, !tbaa !82
  %632 = load i8, ptr %631, align 1, !tbaa !63
  %633 = zext i8 %632 to i32
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i32, ptr %630, i64 %634
  %636 = load i32, ptr %635, align 4, !tbaa !10
  store i32 %636, ptr %27, align 4, !tbaa !10
  %637 = load i32, ptr %27, align 4, !tbaa !10
  store i32 %637, ptr %28, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #7
  %638 = load i32, ptr %28, align 4, !tbaa !10
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [256 x %struct.anon.6], ptr %628, i64 0, i64 %639
  %641 = getelementptr inbounds nuw %struct.anon.6, ptr %640, i32 0, i32 2
  %642 = load ptr, ptr %641, align 8, !tbaa !75
  %643 = load ptr, ptr %6, align 8, !tbaa !71
  %644 = getelementptr inbounds nuw %struct.NFAState, ptr %643, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #7
  %645 = call ptr @__ctype_toupper_loc() #8
  %646 = load ptr, ptr %645, align 8, !tbaa !88
  %647 = load ptr, ptr %9, align 8, !tbaa !82
  %648 = load i8, ptr %647, align 1, !tbaa !63
  %649 = zext i8 %648 to i32
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, ptr %646, i64 %650
  %652 = load i32, ptr %651, align 4, !tbaa !10
  store i32 %652, ptr %29, align 4, !tbaa !10
  %653 = load i32, ptr %29, align 4, !tbaa !10
  store i32 %653, ptr %30, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #7
  %654 = load i32, ptr %30, align 4, !tbaa !10
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [256 x %struct.anon.6], ptr %644, i64 0, i64 %655
  %657 = getelementptr inbounds nuw %struct.anon.6, ptr %656, i32 0, i32 0
  %658 = load i32, ptr %657, align 8, !tbaa !74
  %659 = add i32 %658, 1
  store i32 %659, ptr %657, align 8, !tbaa !74
  %660 = zext i32 %658 to i64
  %661 = getelementptr inbounds nuw ptr, ptr %642, i64 %660
  store ptr %626, ptr %661, align 8, !tbaa !71
  br label %740

662:                                              ; preds = %606
  br label %721

663:                                              ; preds = %572
  %664 = load ptr, ptr %6, align 8, !tbaa !71
  %665 = getelementptr inbounds nuw %struct.NFAState, ptr %664, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #7
  %666 = call ptr @__ctype_toupper_loc() #8
  %667 = load ptr, ptr %666, align 8, !tbaa !88
  %668 = load ptr, ptr %9, align 8, !tbaa !82
  %669 = load i8, ptr %668, align 1, !tbaa !63
  %670 = zext i8 %669 to i32
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i32, ptr %667, i64 %671
  %673 = load i32, ptr %672, align 4, !tbaa !10
  store i32 %673, ptr %31, align 4, !tbaa !10
  %674 = load i32, ptr %31, align 4, !tbaa !10
  store i32 %674, ptr %32, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #7
  %675 = load i32, ptr %32, align 4, !tbaa !10
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [256 x %struct.anon.6], ptr %665, i64 0, i64 %676
  %678 = getelementptr inbounds nuw %struct.anon.6, ptr %677, i32 0, i32 0
  %679 = load i32, ptr %678, align 8, !tbaa !74
  %680 = and i32 %679, 7
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %720

682:                                              ; preds = %663
  %683 = load ptr, ptr %3, align 8, !tbaa !8
  %684 = call ptr @new_NFAState(ptr noundef %683)
  store ptr %684, ptr %7, align 8, !tbaa !71
  %685 = load ptr, ptr %6, align 8, !tbaa !71
  %686 = getelementptr inbounds nuw %struct.NFAState, ptr %685, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #7
  %687 = call ptr @__ctype_toupper_loc() #8
  %688 = load ptr, ptr %687, align 8, !tbaa !88
  %689 = load ptr, ptr %9, align 8, !tbaa !82
  %690 = load i8, ptr %689, align 1, !tbaa !63
  %691 = zext i8 %690 to i32
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i32, ptr %688, i64 %692
  %694 = load i32, ptr %693, align 4, !tbaa !10
  store i32 %694, ptr %33, align 4, !tbaa !10
  %695 = load i32, ptr %33, align 4, !tbaa !10
  store i32 %695, ptr %34, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #7
  %696 = load i32, ptr %34, align 4, !tbaa !10
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [256 x %struct.anon.6], ptr %686, i64 0, i64 %697
  %699 = getelementptr inbounds nuw %struct.anon.6, ptr %698, i32 0, i32 2
  %700 = load ptr, ptr %699, align 8, !tbaa !75
  %701 = load ptr, ptr %6, align 8, !tbaa !71
  %702 = getelementptr inbounds nuw %struct.NFAState, ptr %701, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #7
  %703 = call ptr @__ctype_toupper_loc() #8
  %704 = load ptr, ptr %703, align 8, !tbaa !88
  %705 = load ptr, ptr %9, align 8, !tbaa !82
  %706 = load i8, ptr %705, align 1, !tbaa !63
  %707 = zext i8 %706 to i32
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds i32, ptr %704, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !10
  store i32 %710, ptr %35, align 4, !tbaa !10
  %711 = load i32, ptr %35, align 4, !tbaa !10
  store i32 %711, ptr %36, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #7
  %712 = load i32, ptr %36, align 4, !tbaa !10
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [256 x %struct.anon.6], ptr %702, i64 0, i64 %713
  %715 = getelementptr inbounds nuw %struct.anon.6, ptr %714, i32 0, i32 0
  %716 = load i32, ptr %715, align 8, !tbaa !74
  %717 = add i32 %716, 1
  store i32 %717, ptr %715, align 8, !tbaa !74
  %718 = zext i32 %716 to i64
  %719 = getelementptr inbounds nuw ptr, ptr %700, i64 %718
  store ptr %684, ptr %719, align 8, !tbaa !71
  br label %740

720:                                              ; preds = %663
  br label %721

721:                                              ; preds = %720, %662
  br label %722

722:                                              ; preds = %721
  %723 = load ptr, ptr %6, align 8, !tbaa !71
  %724 = getelementptr inbounds nuw %struct.NFAState, ptr %723, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #7
  %725 = call ptr @__ctype_toupper_loc() #8
  %726 = load ptr, ptr %725, align 8, !tbaa !88
  %727 = load ptr, ptr %9, align 8, !tbaa !82
  %728 = load i8, ptr %727, align 1, !tbaa !63
  %729 = zext i8 %728 to i32
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i32, ptr %726, i64 %730
  %732 = load i32, ptr %731, align 4, !tbaa !10
  store i32 %732, ptr %37, align 4, !tbaa !10
  %733 = load i32, ptr %37, align 4, !tbaa !10
  store i32 %733, ptr %38, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #7
  %734 = load i32, ptr %38, align 4, !tbaa !10
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [256 x %struct.anon.6], ptr %724, i64 0, i64 %735
  %737 = load ptr, ptr %3, align 8, !tbaa !8
  %738 = call ptr @new_NFAState(ptr noundef %737)
  store ptr %738, ptr %7, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %736, ptr noundef %738)
  br label %739

739:                                              ; preds = %722
  br label %740

740:                                              ; preds = %739, %682, %624, %519
  br label %741

741:                                              ; preds = %740
  %742 = load ptr, ptr %6, align 8, !tbaa !71
  %743 = getelementptr inbounds nuw %struct.NFAState, ptr %742, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #7
  %744 = call ptr @__ctype_tolower_loc() #8
  %745 = load ptr, ptr %744, align 8, !tbaa !88
  %746 = load ptr, ptr %9, align 8, !tbaa !82
  %747 = load i8, ptr %746, align 1, !tbaa !63
  %748 = zext i8 %747 to i32
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, ptr %745, i64 %749
  %751 = load i32, ptr %750, align 4, !tbaa !10
  store i32 %751, ptr %39, align 4, !tbaa !10
  %752 = load i32, ptr %39, align 4, !tbaa !10
  store i32 %752, ptr %40, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #7
  %753 = load i32, ptr %40, align 4, !tbaa !10
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds [256 x %struct.anon.6], ptr %743, i64 0, i64 %754
  %756 = getelementptr inbounds nuw %struct.anon.6, ptr %755, i32 0, i32 2
  %757 = load ptr, ptr %756, align 8, !tbaa !75
  %758 = icmp ne ptr %757, null
  br i1 %758, label %811, label %759

759:                                              ; preds = %741
  %760 = load ptr, ptr %7, align 8, !tbaa !71
  %761 = load ptr, ptr %6, align 8, !tbaa !71
  %762 = getelementptr inbounds nuw %struct.NFAState, ptr %761, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %41) #7
  %763 = call ptr @__ctype_tolower_loc() #8
  %764 = load ptr, ptr %763, align 8, !tbaa !88
  %765 = load ptr, ptr %9, align 8, !tbaa !82
  %766 = load i8, ptr %765, align 1, !tbaa !63
  %767 = zext i8 %766 to i32
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i32, ptr %764, i64 %768
  %770 = load i32, ptr %769, align 4, !tbaa !10
  store i32 %770, ptr %41, align 4, !tbaa !10
  %771 = load i32, ptr %41, align 4, !tbaa !10
  store i32 %771, ptr %42, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %41) #7
  %772 = load i32, ptr %42, align 4, !tbaa !10
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [256 x %struct.anon.6], ptr %762, i64 0, i64 %773
  %775 = getelementptr inbounds nuw %struct.anon.6, ptr %774, i32 0, i32 3
  %776 = getelementptr inbounds [3 x ptr], ptr %775, i64 0, i64 0
  %777 = load ptr, ptr %6, align 8, !tbaa !71
  %778 = getelementptr inbounds nuw %struct.NFAState, ptr %777, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %43) #7
  %779 = call ptr @__ctype_tolower_loc() #8
  %780 = load ptr, ptr %779, align 8, !tbaa !88
  %781 = load ptr, ptr %9, align 8, !tbaa !82
  %782 = load i8, ptr %781, align 1, !tbaa !63
  %783 = zext i8 %782 to i32
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, ptr %780, i64 %784
  %786 = load i32, ptr %785, align 4, !tbaa !10
  store i32 %786, ptr %43, align 4, !tbaa !10
  %787 = load i32, ptr %43, align 4, !tbaa !10
  store i32 %787, ptr %44, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %43) #7
  %788 = load i32, ptr %44, align 4, !tbaa !10
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds [256 x %struct.anon.6], ptr %778, i64 0, i64 %789
  %791 = getelementptr inbounds nuw %struct.anon.6, ptr %790, i32 0, i32 2
  store ptr %776, ptr %791, align 8, !tbaa !75
  %792 = load ptr, ptr %6, align 8, !tbaa !71
  %793 = getelementptr inbounds nuw %struct.NFAState, ptr %792, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %45) #7
  %794 = call ptr @__ctype_tolower_loc() #8
  %795 = load ptr, ptr %794, align 8, !tbaa !88
  %796 = load ptr, ptr %9, align 8, !tbaa !82
  %797 = load i8, ptr %796, align 1, !tbaa !63
  %798 = zext i8 %797 to i32
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i32, ptr %795, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !10
  store i32 %801, ptr %45, align 4, !tbaa !10
  %802 = load i32, ptr %45, align 4, !tbaa !10
  store i32 %802, ptr %46, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %45) #7
  %803 = load i32, ptr %46, align 4, !tbaa !10
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [256 x %struct.anon.6], ptr %793, i64 0, i64 %804
  %806 = getelementptr inbounds nuw %struct.anon.6, ptr %805, i32 0, i32 0
  %807 = load i32, ptr %806, align 8, !tbaa !74
  %808 = add i32 %807, 1
  store i32 %808, ptr %806, align 8, !tbaa !74
  %809 = zext i32 %807 to i64
  %810 = getelementptr inbounds nuw ptr, ptr %776, i64 %809
  store ptr %760, ptr %810, align 8, !tbaa !71
  br label %976

811:                                              ; preds = %741
  %812 = load ptr, ptr %6, align 8, !tbaa !71
  %813 = getelementptr inbounds nuw %struct.NFAState, ptr %812, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %47) #7
  %814 = call ptr @__ctype_tolower_loc() #8
  %815 = load ptr, ptr %814, align 8, !tbaa !88
  %816 = load ptr, ptr %9, align 8, !tbaa !82
  %817 = load i8, ptr %816, align 1, !tbaa !63
  %818 = zext i8 %817 to i32
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, ptr %815, i64 %819
  %821 = load i32, ptr %820, align 4, !tbaa !10
  store i32 %821, ptr %47, align 4, !tbaa !10
  %822 = load i32, ptr %47, align 4, !tbaa !10
  store i32 %822, ptr %48, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %47) #7
  %823 = load i32, ptr %48, align 4, !tbaa !10
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds [256 x %struct.anon.6], ptr %813, i64 0, i64 %824
  %826 = getelementptr inbounds nuw %struct.anon.6, ptr %825, i32 0, i32 2
  %827 = load ptr, ptr %826, align 8, !tbaa !75
  %828 = load ptr, ptr %6, align 8, !tbaa !71
  %829 = getelementptr inbounds nuw %struct.NFAState, ptr %828, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %49) #7
  %830 = call ptr @__ctype_tolower_loc() #8
  %831 = load ptr, ptr %830, align 8, !tbaa !88
  %832 = load ptr, ptr %9, align 8, !tbaa !82
  %833 = load i8, ptr %832, align 1, !tbaa !63
  %834 = zext i8 %833 to i32
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds i32, ptr %831, i64 %835
  %837 = load i32, ptr %836, align 4, !tbaa !10
  store i32 %837, ptr %49, align 4, !tbaa !10
  %838 = load i32, ptr %49, align 4, !tbaa !10
  store i32 %838, ptr %50, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %49) #7
  %839 = load i32, ptr %50, align 4, !tbaa !10
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds [256 x %struct.anon.6], ptr %829, i64 0, i64 %840
  %842 = getelementptr inbounds nuw %struct.anon.6, ptr %841, i32 0, i32 3
  %843 = getelementptr inbounds [3 x ptr], ptr %842, i64 0, i64 0
  %844 = icmp eq ptr %827, %843
  br i1 %844, label %845, label %901

845:                                              ; preds = %811
  %846 = load ptr, ptr %6, align 8, !tbaa !71
  %847 = getelementptr inbounds nuw %struct.NFAState, ptr %846, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %51) #7
  %848 = call ptr @__ctype_tolower_loc() #8
  %849 = load ptr, ptr %848, align 8, !tbaa !88
  %850 = load ptr, ptr %9, align 8, !tbaa !82
  %851 = load i8, ptr %850, align 1, !tbaa !63
  %852 = zext i8 %851 to i32
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds i32, ptr %849, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !10
  store i32 %855, ptr %51, align 4, !tbaa !10
  %856 = load i32, ptr %51, align 4, !tbaa !10
  store i32 %856, ptr %52, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %51) #7
  %857 = load i32, ptr %52, align 4, !tbaa !10
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [256 x %struct.anon.6], ptr %847, i64 0, i64 %858
  %860 = getelementptr inbounds nuw %struct.anon.6, ptr %859, i32 0, i32 0
  %861 = load i32, ptr %860, align 8, !tbaa !74
  %862 = icmp ult i32 %861, 3
  br i1 %862, label %863, label %900

863:                                              ; preds = %845
  %864 = load ptr, ptr %7, align 8, !tbaa !71
  %865 = load ptr, ptr %6, align 8, !tbaa !71
  %866 = getelementptr inbounds nuw %struct.NFAState, ptr %865, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %53) #7
  %867 = call ptr @__ctype_tolower_loc() #8
  %868 = load ptr, ptr %867, align 8, !tbaa !88
  %869 = load ptr, ptr %9, align 8, !tbaa !82
  %870 = load i8, ptr %869, align 1, !tbaa !63
  %871 = zext i8 %870 to i32
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds i32, ptr %868, i64 %872
  %874 = load i32, ptr %873, align 4, !tbaa !10
  store i32 %874, ptr %53, align 4, !tbaa !10
  %875 = load i32, ptr %53, align 4, !tbaa !10
  store i32 %875, ptr %54, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %53) #7
  %876 = load i32, ptr %54, align 4, !tbaa !10
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [256 x %struct.anon.6], ptr %866, i64 0, i64 %877
  %879 = getelementptr inbounds nuw %struct.anon.6, ptr %878, i32 0, i32 2
  %880 = load ptr, ptr %879, align 8, !tbaa !75
  %881 = load ptr, ptr %6, align 8, !tbaa !71
  %882 = getelementptr inbounds nuw %struct.NFAState, ptr %881, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %55) #7
  %883 = call ptr @__ctype_tolower_loc() #8
  %884 = load ptr, ptr %883, align 8, !tbaa !88
  %885 = load ptr, ptr %9, align 8, !tbaa !82
  %886 = load i8, ptr %885, align 1, !tbaa !63
  %887 = zext i8 %886 to i32
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds i32, ptr %884, i64 %888
  %890 = load i32, ptr %889, align 4, !tbaa !10
  store i32 %890, ptr %55, align 4, !tbaa !10
  %891 = load i32, ptr %55, align 4, !tbaa !10
  store i32 %891, ptr %56, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %55) #7
  %892 = load i32, ptr %56, align 4, !tbaa !10
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [256 x %struct.anon.6], ptr %882, i64 0, i64 %893
  %895 = getelementptr inbounds nuw %struct.anon.6, ptr %894, i32 0, i32 0
  %896 = load i32, ptr %895, align 8, !tbaa !74
  %897 = add i32 %896, 1
  store i32 %897, ptr %895, align 8, !tbaa !74
  %898 = zext i32 %896 to i64
  %899 = getelementptr inbounds nuw ptr, ptr %880, i64 %898
  store ptr %864, ptr %899, align 8, !tbaa !71
  br label %976

900:                                              ; preds = %845
  br label %958

901:                                              ; preds = %811
  %902 = load ptr, ptr %6, align 8, !tbaa !71
  %903 = getelementptr inbounds nuw %struct.NFAState, ptr %902, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %57) #7
  %904 = call ptr @__ctype_tolower_loc() #8
  %905 = load ptr, ptr %904, align 8, !tbaa !88
  %906 = load ptr, ptr %9, align 8, !tbaa !82
  %907 = load i8, ptr %906, align 1, !tbaa !63
  %908 = zext i8 %907 to i32
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i32, ptr %905, i64 %909
  %911 = load i32, ptr %910, align 4, !tbaa !10
  store i32 %911, ptr %57, align 4, !tbaa !10
  %912 = load i32, ptr %57, align 4, !tbaa !10
  store i32 %912, ptr %58, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %57) #7
  %913 = load i32, ptr %58, align 4, !tbaa !10
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [256 x %struct.anon.6], ptr %903, i64 0, i64 %914
  %916 = getelementptr inbounds nuw %struct.anon.6, ptr %915, i32 0, i32 0
  %917 = load i32, ptr %916, align 8, !tbaa !74
  %918 = and i32 %917, 7
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %920, label %957

920:                                              ; preds = %901
  %921 = load ptr, ptr %7, align 8, !tbaa !71
  %922 = load ptr, ptr %6, align 8, !tbaa !71
  %923 = getelementptr inbounds nuw %struct.NFAState, ptr %922, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %59) #7
  %924 = call ptr @__ctype_tolower_loc() #8
  %925 = load ptr, ptr %924, align 8, !tbaa !88
  %926 = load ptr, ptr %9, align 8, !tbaa !82
  %927 = load i8, ptr %926, align 1, !tbaa !63
  %928 = zext i8 %927 to i32
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds i32, ptr %925, i64 %929
  %931 = load i32, ptr %930, align 4, !tbaa !10
  store i32 %931, ptr %59, align 4, !tbaa !10
  %932 = load i32, ptr %59, align 4, !tbaa !10
  store i32 %932, ptr %60, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %59) #7
  %933 = load i32, ptr %60, align 4, !tbaa !10
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [256 x %struct.anon.6], ptr %923, i64 0, i64 %934
  %936 = getelementptr inbounds nuw %struct.anon.6, ptr %935, i32 0, i32 2
  %937 = load ptr, ptr %936, align 8, !tbaa !75
  %938 = load ptr, ptr %6, align 8, !tbaa !71
  %939 = getelementptr inbounds nuw %struct.NFAState, ptr %938, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %61) #7
  %940 = call ptr @__ctype_tolower_loc() #8
  %941 = load ptr, ptr %940, align 8, !tbaa !88
  %942 = load ptr, ptr %9, align 8, !tbaa !82
  %943 = load i8, ptr %942, align 1, !tbaa !63
  %944 = zext i8 %943 to i32
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds i32, ptr %941, i64 %945
  %947 = load i32, ptr %946, align 4, !tbaa !10
  store i32 %947, ptr %61, align 4, !tbaa !10
  %948 = load i32, ptr %61, align 4, !tbaa !10
  store i32 %948, ptr %62, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %61) #7
  %949 = load i32, ptr %62, align 4, !tbaa !10
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [256 x %struct.anon.6], ptr %939, i64 0, i64 %950
  %952 = getelementptr inbounds nuw %struct.anon.6, ptr %951, i32 0, i32 0
  %953 = load i32, ptr %952, align 8, !tbaa !74
  %954 = add i32 %953, 1
  store i32 %954, ptr %952, align 8, !tbaa !74
  %955 = zext i32 %953 to i64
  %956 = getelementptr inbounds nuw ptr, ptr %937, i64 %955
  store ptr %921, ptr %956, align 8, !tbaa !71
  br label %976

957:                                              ; preds = %901
  br label %958

958:                                              ; preds = %957, %900
  br label %959

959:                                              ; preds = %958
  %960 = load ptr, ptr %6, align 8, !tbaa !71
  %961 = getelementptr inbounds nuw %struct.NFAState, ptr %960, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %63) #7
  %962 = call ptr @__ctype_tolower_loc() #8
  %963 = load ptr, ptr %962, align 8, !tbaa !88
  %964 = load ptr, ptr %9, align 8, !tbaa !82
  %965 = load i8, ptr %964, align 1, !tbaa !63
  %966 = zext i8 %965 to i32
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds i32, ptr %963, i64 %967
  %969 = load i32, ptr %968, align 4, !tbaa !10
  store i32 %969, ptr %63, align 4, !tbaa !10
  %970 = load i32, ptr %63, align 4, !tbaa !10
  store i32 %970, ptr %64, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %63) #7
  %971 = load i32, ptr %64, align 4, !tbaa !10
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds [256 x %struct.anon.6], ptr %961, i64 0, i64 %972
  %974 = load ptr, ptr %7, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %973, ptr noundef %974)
  br label %975

975:                                              ; preds = %959
  br label %976

976:                                              ; preds = %975, %920, %863, %759
  br label %1114

977:                                              ; preds = %488
  br label %978

978:                                              ; preds = %977
  %979 = load ptr, ptr %6, align 8, !tbaa !71
  %980 = getelementptr inbounds nuw %struct.NFAState, ptr %979, i32 0, i32 1
  %981 = load ptr, ptr %9, align 8, !tbaa !82
  %982 = load i8, ptr %981, align 1, !tbaa !63
  %983 = zext i8 %982 to i64
  %984 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %980, i64 0, i64 %983
  %985 = getelementptr inbounds nuw %struct.anon.6, ptr %984, i32 0, i32 2
  %986 = load ptr, ptr %985, align 8, !tbaa !75
  %987 = icmp ne ptr %986, null
  br i1 %987, label %1017, label %988

988:                                              ; preds = %978
  %989 = load ptr, ptr %3, align 8, !tbaa !8
  %990 = call ptr @new_NFAState(ptr noundef %989)
  store ptr %990, ptr %7, align 8, !tbaa !71
  %991 = load ptr, ptr %6, align 8, !tbaa !71
  %992 = getelementptr inbounds nuw %struct.NFAState, ptr %991, i32 0, i32 1
  %993 = load ptr, ptr %9, align 8, !tbaa !82
  %994 = load i8, ptr %993, align 1, !tbaa !63
  %995 = zext i8 %994 to i64
  %996 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %992, i64 0, i64 %995
  %997 = getelementptr inbounds nuw %struct.anon.6, ptr %996, i32 0, i32 3
  %998 = getelementptr inbounds [3 x ptr], ptr %997, i64 0, i64 0
  %999 = load ptr, ptr %6, align 8, !tbaa !71
  %1000 = getelementptr inbounds nuw %struct.NFAState, ptr %999, i32 0, i32 1
  %1001 = load ptr, ptr %9, align 8, !tbaa !82
  %1002 = load i8, ptr %1001, align 1, !tbaa !63
  %1003 = zext i8 %1002 to i64
  %1004 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1000, i64 0, i64 %1003
  %1005 = getelementptr inbounds nuw %struct.anon.6, ptr %1004, i32 0, i32 2
  store ptr %998, ptr %1005, align 8, !tbaa !75
  %1006 = load ptr, ptr %6, align 8, !tbaa !71
  %1007 = getelementptr inbounds nuw %struct.NFAState, ptr %1006, i32 0, i32 1
  %1008 = load ptr, ptr %9, align 8, !tbaa !82
  %1009 = load i8, ptr %1008, align 1, !tbaa !63
  %1010 = zext i8 %1009 to i64
  %1011 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1007, i64 0, i64 %1010
  %1012 = getelementptr inbounds nuw %struct.anon.6, ptr %1011, i32 0, i32 0
  %1013 = load i32, ptr %1012, align 8, !tbaa !74
  %1014 = add i32 %1013, 1
  store i32 %1014, ptr %1012, align 8, !tbaa !74
  %1015 = zext i32 %1013 to i64
  %1016 = getelementptr inbounds nuw ptr, ptr %998, i64 %1015
  store ptr %990, ptr %1016, align 8, !tbaa !71
  br label %1113

1017:                                             ; preds = %978
  %1018 = load ptr, ptr %6, align 8, !tbaa !71
  %1019 = getelementptr inbounds nuw %struct.NFAState, ptr %1018, i32 0, i32 1
  %1020 = load ptr, ptr %9, align 8, !tbaa !82
  %1021 = load i8, ptr %1020, align 1, !tbaa !63
  %1022 = zext i8 %1021 to i64
  %1023 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1019, i64 0, i64 %1022
  %1024 = getelementptr inbounds nuw %struct.anon.6, ptr %1023, i32 0, i32 2
  %1025 = load ptr, ptr %1024, align 8, !tbaa !75
  %1026 = load ptr, ptr %6, align 8, !tbaa !71
  %1027 = getelementptr inbounds nuw %struct.NFAState, ptr %1026, i32 0, i32 1
  %1028 = load ptr, ptr %9, align 8, !tbaa !82
  %1029 = load i8, ptr %1028, align 1, !tbaa !63
  %1030 = zext i8 %1029 to i64
  %1031 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1027, i64 0, i64 %1030
  %1032 = getelementptr inbounds nuw %struct.anon.6, ptr %1031, i32 0, i32 3
  %1033 = getelementptr inbounds [3 x ptr], ptr %1032, i64 0, i64 0
  %1034 = icmp eq ptr %1025, %1033
  br i1 %1034, label %1035, label %1068

1035:                                             ; preds = %1017
  %1036 = load ptr, ptr %6, align 8, !tbaa !71
  %1037 = getelementptr inbounds nuw %struct.NFAState, ptr %1036, i32 0, i32 1
  %1038 = load ptr, ptr %9, align 8, !tbaa !82
  %1039 = load i8, ptr %1038, align 1, !tbaa !63
  %1040 = zext i8 %1039 to i64
  %1041 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1037, i64 0, i64 %1040
  %1042 = getelementptr inbounds nuw %struct.anon.6, ptr %1041, i32 0, i32 0
  %1043 = load i32, ptr %1042, align 8, !tbaa !74
  %1044 = icmp ult i32 %1043, 3
  br i1 %1044, label %1045, label %1067

1045:                                             ; preds = %1035
  %1046 = load ptr, ptr %3, align 8, !tbaa !8
  %1047 = call ptr @new_NFAState(ptr noundef %1046)
  store ptr %1047, ptr %7, align 8, !tbaa !71
  %1048 = load ptr, ptr %6, align 8, !tbaa !71
  %1049 = getelementptr inbounds nuw %struct.NFAState, ptr %1048, i32 0, i32 1
  %1050 = load ptr, ptr %9, align 8, !tbaa !82
  %1051 = load i8, ptr %1050, align 1, !tbaa !63
  %1052 = zext i8 %1051 to i64
  %1053 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1049, i64 0, i64 %1052
  %1054 = getelementptr inbounds nuw %struct.anon.6, ptr %1053, i32 0, i32 2
  %1055 = load ptr, ptr %1054, align 8, !tbaa !75
  %1056 = load ptr, ptr %6, align 8, !tbaa !71
  %1057 = getelementptr inbounds nuw %struct.NFAState, ptr %1056, i32 0, i32 1
  %1058 = load ptr, ptr %9, align 8, !tbaa !82
  %1059 = load i8, ptr %1058, align 1, !tbaa !63
  %1060 = zext i8 %1059 to i64
  %1061 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1057, i64 0, i64 %1060
  %1062 = getelementptr inbounds nuw %struct.anon.6, ptr %1061, i32 0, i32 0
  %1063 = load i32, ptr %1062, align 8, !tbaa !74
  %1064 = add i32 %1063, 1
  store i32 %1064, ptr %1062, align 8, !tbaa !74
  %1065 = zext i32 %1063 to i64
  %1066 = getelementptr inbounds nuw ptr, ptr %1055, i64 %1065
  store ptr %1047, ptr %1066, align 8, !tbaa !71
  br label %1113

1067:                                             ; preds = %1035
  br label %1102

1068:                                             ; preds = %1017
  %1069 = load ptr, ptr %6, align 8, !tbaa !71
  %1070 = getelementptr inbounds nuw %struct.NFAState, ptr %1069, i32 0, i32 1
  %1071 = load ptr, ptr %9, align 8, !tbaa !82
  %1072 = load i8, ptr %1071, align 1, !tbaa !63
  %1073 = zext i8 %1072 to i64
  %1074 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1070, i64 0, i64 %1073
  %1075 = getelementptr inbounds nuw %struct.anon.6, ptr %1074, i32 0, i32 0
  %1076 = load i32, ptr %1075, align 8, !tbaa !74
  %1077 = and i32 %1076, 7
  %1078 = icmp ne i32 %1077, 0
  br i1 %1078, label %1079, label %1101

1079:                                             ; preds = %1068
  %1080 = load ptr, ptr %3, align 8, !tbaa !8
  %1081 = call ptr @new_NFAState(ptr noundef %1080)
  store ptr %1081, ptr %7, align 8, !tbaa !71
  %1082 = load ptr, ptr %6, align 8, !tbaa !71
  %1083 = getelementptr inbounds nuw %struct.NFAState, ptr %1082, i32 0, i32 1
  %1084 = load ptr, ptr %9, align 8, !tbaa !82
  %1085 = load i8, ptr %1084, align 1, !tbaa !63
  %1086 = zext i8 %1085 to i64
  %1087 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1083, i64 0, i64 %1086
  %1088 = getelementptr inbounds nuw %struct.anon.6, ptr %1087, i32 0, i32 2
  %1089 = load ptr, ptr %1088, align 8, !tbaa !75
  %1090 = load ptr, ptr %6, align 8, !tbaa !71
  %1091 = getelementptr inbounds nuw %struct.NFAState, ptr %1090, i32 0, i32 1
  %1092 = load ptr, ptr %9, align 8, !tbaa !82
  %1093 = load i8, ptr %1092, align 1, !tbaa !63
  %1094 = zext i8 %1093 to i64
  %1095 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1091, i64 0, i64 %1094
  %1096 = getelementptr inbounds nuw %struct.anon.6, ptr %1095, i32 0, i32 0
  %1097 = load i32, ptr %1096, align 8, !tbaa !74
  %1098 = add i32 %1097, 1
  store i32 %1098, ptr %1096, align 8, !tbaa !74
  %1099 = zext i32 %1097 to i64
  %1100 = getelementptr inbounds nuw ptr, ptr %1089, i64 %1099
  store ptr %1081, ptr %1100, align 8, !tbaa !71
  br label %1113

1101:                                             ; preds = %1068
  br label %1102

1102:                                             ; preds = %1101, %1067
  br label %1103

1103:                                             ; preds = %1102
  %1104 = load ptr, ptr %6, align 8, !tbaa !71
  %1105 = getelementptr inbounds nuw %struct.NFAState, ptr %1104, i32 0, i32 1
  %1106 = load ptr, ptr %9, align 8, !tbaa !82
  %1107 = load i8, ptr %1106, align 1, !tbaa !63
  %1108 = zext i8 %1107 to i64
  %1109 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %1105, i64 0, i64 %1108
  %1110 = load ptr, ptr %3, align 8, !tbaa !8
  %1111 = call ptr @new_NFAState(ptr noundef %1110)
  store ptr %1111, ptr %7, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %1109, ptr noundef %1111)
  br label %1112

1112:                                             ; preds = %1103
  br label %1113

1113:                                             ; preds = %1112, %1079, %1045, %988
  br label %1114

1114:                                             ; preds = %1113, %976
  %1115 = load ptr, ptr %7, align 8, !tbaa !71
  store ptr %1115, ptr %6, align 8, !tbaa !71
  br label %1116

1116:                                             ; preds = %1114
  %1117 = load ptr, ptr %9, align 8, !tbaa !82
  %1118 = getelementptr inbounds nuw i8, ptr %1117, i32 1
  store ptr %1118, ptr %9, align 8, !tbaa !82
  br label %484, !llvm.loop !90

1119:                                             ; preds = %484
  br label %1120

1120:                                             ; preds = %1119, %477
  br label %1121

1121:                                             ; preds = %1120
  %1122 = load ptr, ptr %6, align 8, !tbaa !71
  %1123 = getelementptr inbounds nuw %struct.NFAState, ptr %1122, i32 0, i32 3
  %1124 = getelementptr inbounds nuw %struct.anon.8, ptr %1123, i32 0, i32 2
  %1125 = load ptr, ptr %1124, align 8, !tbaa !76
  %1126 = icmp ne ptr %1125, null
  br i1 %1126, label %1143, label %1127

1127:                                             ; preds = %1121
  %1128 = load ptr, ptr %8, align 8, !tbaa !52
  %1129 = load ptr, ptr %6, align 8, !tbaa !71
  %1130 = getelementptr inbounds nuw %struct.NFAState, ptr %1129, i32 0, i32 3
  %1131 = getelementptr inbounds nuw %struct.anon.8, ptr %1130, i32 0, i32 3
  %1132 = getelementptr inbounds [3 x ptr], ptr %1131, i64 0, i64 0
  %1133 = load ptr, ptr %6, align 8, !tbaa !71
  %1134 = getelementptr inbounds nuw %struct.NFAState, ptr %1133, i32 0, i32 3
  %1135 = getelementptr inbounds nuw %struct.anon.8, ptr %1134, i32 0, i32 2
  store ptr %1132, ptr %1135, align 8, !tbaa !76
  %1136 = load ptr, ptr %6, align 8, !tbaa !71
  %1137 = getelementptr inbounds nuw %struct.NFAState, ptr %1136, i32 0, i32 3
  %1138 = getelementptr inbounds nuw %struct.anon.8, ptr %1137, i32 0, i32 0
  %1139 = load i32, ptr %1138, align 8, !tbaa !78
  %1140 = add i32 %1139, 1
  store i32 %1140, ptr %1138, align 8, !tbaa !78
  %1141 = zext i32 %1139 to i64
  %1142 = getelementptr inbounds nuw ptr, ptr %1132, i64 %1141
  store ptr %1128, ptr %1142, align 8, !tbaa !52
  br label %1200

1143:                                             ; preds = %1121
  %1144 = load ptr, ptr %6, align 8, !tbaa !71
  %1145 = getelementptr inbounds nuw %struct.NFAState, ptr %1144, i32 0, i32 3
  %1146 = getelementptr inbounds nuw %struct.anon.8, ptr %1145, i32 0, i32 2
  %1147 = load ptr, ptr %1146, align 8, !tbaa !76
  %1148 = load ptr, ptr %6, align 8, !tbaa !71
  %1149 = getelementptr inbounds nuw %struct.NFAState, ptr %1148, i32 0, i32 3
  %1150 = getelementptr inbounds nuw %struct.anon.8, ptr %1149, i32 0, i32 3
  %1151 = getelementptr inbounds [3 x ptr], ptr %1150, i64 0, i64 0
  %1152 = icmp eq ptr %1147, %1151
  br i1 %1152, label %1153, label %1173

1153:                                             ; preds = %1143
  %1154 = load ptr, ptr %6, align 8, !tbaa !71
  %1155 = getelementptr inbounds nuw %struct.NFAState, ptr %1154, i32 0, i32 3
  %1156 = getelementptr inbounds nuw %struct.anon.8, ptr %1155, i32 0, i32 0
  %1157 = load i32, ptr %1156, align 8, !tbaa !78
  %1158 = icmp ult i32 %1157, 3
  br i1 %1158, label %1159, label %1172

1159:                                             ; preds = %1153
  %1160 = load ptr, ptr %8, align 8, !tbaa !52
  %1161 = load ptr, ptr %6, align 8, !tbaa !71
  %1162 = getelementptr inbounds nuw %struct.NFAState, ptr %1161, i32 0, i32 3
  %1163 = getelementptr inbounds nuw %struct.anon.8, ptr %1162, i32 0, i32 2
  %1164 = load ptr, ptr %1163, align 8, !tbaa !76
  %1165 = load ptr, ptr %6, align 8, !tbaa !71
  %1166 = getelementptr inbounds nuw %struct.NFAState, ptr %1165, i32 0, i32 3
  %1167 = getelementptr inbounds nuw %struct.anon.8, ptr %1166, i32 0, i32 0
  %1168 = load i32, ptr %1167, align 8, !tbaa !78
  %1169 = add i32 %1168, 1
  store i32 %1169, ptr %1167, align 8, !tbaa !78
  %1170 = zext i32 %1168 to i64
  %1171 = getelementptr inbounds nuw ptr, ptr %1164, i64 %1170
  store ptr %1160, ptr %1171, align 8, !tbaa !52
  br label %1200

1172:                                             ; preds = %1153
  br label %1194

1173:                                             ; preds = %1143
  %1174 = load ptr, ptr %6, align 8, !tbaa !71
  %1175 = getelementptr inbounds nuw %struct.NFAState, ptr %1174, i32 0, i32 3
  %1176 = getelementptr inbounds nuw %struct.anon.8, ptr %1175, i32 0, i32 0
  %1177 = load i32, ptr %1176, align 8, !tbaa !78
  %1178 = and i32 %1177, 7
  %1179 = icmp ne i32 %1178, 0
  br i1 %1179, label %1180, label %1193

1180:                                             ; preds = %1173
  %1181 = load ptr, ptr %8, align 8, !tbaa !52
  %1182 = load ptr, ptr %6, align 8, !tbaa !71
  %1183 = getelementptr inbounds nuw %struct.NFAState, ptr %1182, i32 0, i32 3
  %1184 = getelementptr inbounds nuw %struct.anon.8, ptr %1183, i32 0, i32 2
  %1185 = load ptr, ptr %1184, align 8, !tbaa !76
  %1186 = load ptr, ptr %6, align 8, !tbaa !71
  %1187 = getelementptr inbounds nuw %struct.NFAState, ptr %1186, i32 0, i32 3
  %1188 = getelementptr inbounds nuw %struct.anon.8, ptr %1187, i32 0, i32 0
  %1189 = load i32, ptr %1188, align 8, !tbaa !78
  %1190 = add i32 %1189, 1
  store i32 %1190, ptr %1188, align 8, !tbaa !78
  %1191 = zext i32 %1189 to i64
  %1192 = getelementptr inbounds nuw ptr, ptr %1185, i64 %1191
  store ptr %1181, ptr %1192, align 8, !tbaa !52
  br label %1200

1193:                                             ; preds = %1173
  br label %1194

1194:                                             ; preds = %1193, %1172
  br label %1195

1195:                                             ; preds = %1194
  %1196 = load ptr, ptr %6, align 8, !tbaa !71
  %1197 = getelementptr inbounds nuw %struct.NFAState, ptr %1196, i32 0, i32 3
  %1198 = load ptr, ptr %8, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %1197, ptr noundef %1198)
  br label %1199

1199:                                             ; preds = %1195
  br label %1200

1200:                                             ; preds = %1199, %1180, %1159, %1127
  br label %1201

1201:                                             ; preds = %1200, %286, %281
  br label %1202

1202:                                             ; preds = %1201, %280
  br label %1203

1203:                                             ; preds = %1202
  %1204 = load i32, ptr %11, align 4, !tbaa !10
  %1205 = add nsw i32 %1204, 1
  store i32 %1205, ptr %11, align 4, !tbaa !10
  br label %67, !llvm.loop !91

1206:                                             ; preds = %67
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %1207

1207:                                             ; preds = %1420, %1206
  %1208 = load i32, ptr %11, align 4, !tbaa !10
  %1209 = load ptr, ptr %4, align 8, !tbaa !32
  %1210 = getelementptr inbounds nuw %struct.State, ptr %1209, i32 0, i32 5
  %1211 = getelementptr inbounds nuw %struct.VecAction, ptr %1210, i32 0, i32 0
  %1212 = load i32, ptr %1211, align 8, !tbaa !50
  %1213 = icmp ult i32 %1208, %1212
  br i1 %1213, label %1214, label %1423

1214:                                             ; preds = %1207
  %1215 = load ptr, ptr %4, align 8, !tbaa !32
  %1216 = getelementptr inbounds nuw %struct.State, ptr %1215, i32 0, i32 5
  %1217 = getelementptr inbounds nuw %struct.VecAction, ptr %1216, i32 0, i32 2
  %1218 = load ptr, ptr %1217, align 8, !tbaa !51
  %1219 = load i32, ptr %11, align 4, !tbaa !10
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds ptr, ptr %1218, i64 %1220
  %1222 = load ptr, ptr %1221, align 8, !tbaa !52
  store ptr %1222, ptr %8, align 8, !tbaa !52
  %1223 = load ptr, ptr %8, align 8, !tbaa !52
  %1224 = getelementptr inbounds nuw %struct.Action, ptr %1223, i32 0, i32 0
  %1225 = load i32, ptr %1224, align 8, !tbaa !73
  %1226 = icmp eq i32 %1225, 1
  br i1 %1226, label %1227, label %1419

1227:                                             ; preds = %1214
  %1228 = load ptr, ptr %8, align 8, !tbaa !52
  %1229 = getelementptr inbounds nuw %struct.Action, ptr %1228, i32 0, i32 1
  %1230 = load ptr, ptr %1229, align 8, !tbaa !54
  %1231 = getelementptr inbounds nuw %struct.Term, ptr %1230, i32 0, i32 0
  %1232 = load i32, ptr %1231, align 8, !tbaa !79
  %1233 = icmp eq i32 %1232, 1
  br i1 %1233, label %1234, label %1419

1234:                                             ; preds = %1227
  store i32 1, ptr %12, align 4, !tbaa !10
  %1235 = load ptr, ptr %8, align 8, !tbaa !52
  %1236 = getelementptr inbounds nuw %struct.Action, ptr %1235, i32 0, i32 1
  %1237 = load ptr, ptr %1236, align 8, !tbaa !54
  %1238 = getelementptr inbounds nuw %struct.Term, ptr %1237, i32 0, i32 5
  %1239 = load ptr, ptr %1238, align 8, !tbaa !81
  store ptr %1239, ptr %10, align 8, !tbaa !82
  br label %1240

1240:                                             ; preds = %1234
  %1241 = load ptr, ptr %5, align 8, !tbaa !71
  %1242 = getelementptr inbounds nuw %struct.NFAState, ptr %1241, i32 0, i32 2
  %1243 = getelementptr inbounds nuw %struct.anon.7, ptr %1242, i32 0, i32 2
  %1244 = load ptr, ptr %1243, align 8, !tbaa !92
  %1245 = icmp ne ptr %1244, null
  br i1 %1245, label %1263, label %1246

1246:                                             ; preds = %1240
  %1247 = load ptr, ptr %3, align 8, !tbaa !8
  %1248 = call ptr @new_NFAState(ptr noundef %1247)
  store ptr %1248, ptr %7, align 8, !tbaa !71
  %1249 = load ptr, ptr %5, align 8, !tbaa !71
  %1250 = getelementptr inbounds nuw %struct.NFAState, ptr %1249, i32 0, i32 2
  %1251 = getelementptr inbounds nuw %struct.anon.7, ptr %1250, i32 0, i32 3
  %1252 = getelementptr inbounds [3 x ptr], ptr %1251, i64 0, i64 0
  %1253 = load ptr, ptr %5, align 8, !tbaa !71
  %1254 = getelementptr inbounds nuw %struct.NFAState, ptr %1253, i32 0, i32 2
  %1255 = getelementptr inbounds nuw %struct.anon.7, ptr %1254, i32 0, i32 2
  store ptr %1252, ptr %1255, align 8, !tbaa !92
  %1256 = load ptr, ptr %5, align 8, !tbaa !71
  %1257 = getelementptr inbounds nuw %struct.NFAState, ptr %1256, i32 0, i32 2
  %1258 = getelementptr inbounds nuw %struct.anon.7, ptr %1257, i32 0, i32 0
  %1259 = load i32, ptr %1258, align 8, !tbaa !93
  %1260 = add i32 %1259, 1
  store i32 %1260, ptr %1258, align 8, !tbaa !93
  %1261 = zext i32 %1259 to i64
  %1262 = getelementptr inbounds nuw ptr, ptr %1252, i64 %1261
  store ptr %1248, ptr %1262, align 8, !tbaa !71
  br label %1323

1263:                                             ; preds = %1240
  %1264 = load ptr, ptr %5, align 8, !tbaa !71
  %1265 = getelementptr inbounds nuw %struct.NFAState, ptr %1264, i32 0, i32 2
  %1266 = getelementptr inbounds nuw %struct.anon.7, ptr %1265, i32 0, i32 2
  %1267 = load ptr, ptr %1266, align 8, !tbaa !92
  %1268 = load ptr, ptr %5, align 8, !tbaa !71
  %1269 = getelementptr inbounds nuw %struct.NFAState, ptr %1268, i32 0, i32 2
  %1270 = getelementptr inbounds nuw %struct.anon.7, ptr %1269, i32 0, i32 3
  %1271 = getelementptr inbounds [3 x ptr], ptr %1270, i64 0, i64 0
  %1272 = icmp eq ptr %1267, %1271
  br i1 %1272, label %1273, label %1294

1273:                                             ; preds = %1263
  %1274 = load ptr, ptr %5, align 8, !tbaa !71
  %1275 = getelementptr inbounds nuw %struct.NFAState, ptr %1274, i32 0, i32 2
  %1276 = getelementptr inbounds nuw %struct.anon.7, ptr %1275, i32 0, i32 0
  %1277 = load i32, ptr %1276, align 8, !tbaa !93
  %1278 = icmp ult i32 %1277, 3
  br i1 %1278, label %1279, label %1293

1279:                                             ; preds = %1273
  %1280 = load ptr, ptr %3, align 8, !tbaa !8
  %1281 = call ptr @new_NFAState(ptr noundef %1280)
  store ptr %1281, ptr %7, align 8, !tbaa !71
  %1282 = load ptr, ptr %5, align 8, !tbaa !71
  %1283 = getelementptr inbounds nuw %struct.NFAState, ptr %1282, i32 0, i32 2
  %1284 = getelementptr inbounds nuw %struct.anon.7, ptr %1283, i32 0, i32 2
  %1285 = load ptr, ptr %1284, align 8, !tbaa !92
  %1286 = load ptr, ptr %5, align 8, !tbaa !71
  %1287 = getelementptr inbounds nuw %struct.NFAState, ptr %1286, i32 0, i32 2
  %1288 = getelementptr inbounds nuw %struct.anon.7, ptr %1287, i32 0, i32 0
  %1289 = load i32, ptr %1288, align 8, !tbaa !93
  %1290 = add i32 %1289, 1
  store i32 %1290, ptr %1288, align 8, !tbaa !93
  %1291 = zext i32 %1289 to i64
  %1292 = getelementptr inbounds nuw ptr, ptr %1285, i64 %1291
  store ptr %1281, ptr %1292, align 8, !tbaa !71
  br label %1323

1293:                                             ; preds = %1273
  br label %1316

1294:                                             ; preds = %1263
  %1295 = load ptr, ptr %5, align 8, !tbaa !71
  %1296 = getelementptr inbounds nuw %struct.NFAState, ptr %1295, i32 0, i32 2
  %1297 = getelementptr inbounds nuw %struct.anon.7, ptr %1296, i32 0, i32 0
  %1298 = load i32, ptr %1297, align 8, !tbaa !93
  %1299 = and i32 %1298, 7
  %1300 = icmp ne i32 %1299, 0
  br i1 %1300, label %1301, label %1315

1301:                                             ; preds = %1294
  %1302 = load ptr, ptr %3, align 8, !tbaa !8
  %1303 = call ptr @new_NFAState(ptr noundef %1302)
  store ptr %1303, ptr %7, align 8, !tbaa !71
  %1304 = load ptr, ptr %5, align 8, !tbaa !71
  %1305 = getelementptr inbounds nuw %struct.NFAState, ptr %1304, i32 0, i32 2
  %1306 = getelementptr inbounds nuw %struct.anon.7, ptr %1305, i32 0, i32 2
  %1307 = load ptr, ptr %1306, align 8, !tbaa !92
  %1308 = load ptr, ptr %5, align 8, !tbaa !71
  %1309 = getelementptr inbounds nuw %struct.NFAState, ptr %1308, i32 0, i32 2
  %1310 = getelementptr inbounds nuw %struct.anon.7, ptr %1309, i32 0, i32 0
  %1311 = load i32, ptr %1310, align 8, !tbaa !93
  %1312 = add i32 %1311, 1
  store i32 %1312, ptr %1310, align 8, !tbaa !93
  %1313 = zext i32 %1311 to i64
  %1314 = getelementptr inbounds nuw ptr, ptr %1307, i64 %1313
  store ptr %1303, ptr %1314, align 8, !tbaa !71
  br label %1323

1315:                                             ; preds = %1294
  br label %1316

1316:                                             ; preds = %1315, %1293
  br label %1317

1317:                                             ; preds = %1316
  %1318 = load ptr, ptr %5, align 8, !tbaa !71
  %1319 = getelementptr inbounds nuw %struct.NFAState, ptr %1318, i32 0, i32 2
  %1320 = load ptr, ptr %3, align 8, !tbaa !8
  %1321 = call ptr @new_NFAState(ptr noundef %1320)
  store ptr %1321, ptr %7, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %1319, ptr noundef %1321)
  br label %1322

1322:                                             ; preds = %1317
  br label %1323

1323:                                             ; preds = %1322, %1301, %1279, %1246
  %1324 = load ptr, ptr %3, align 8, !tbaa !8
  %1325 = call ptr @new_NFAState(ptr noundef %1324)
  store ptr %1325, ptr %6, align 8, !tbaa !71
  %1326 = load ptr, ptr %8, align 8, !tbaa !52
  %1327 = getelementptr inbounds nuw %struct.Action, ptr %1326, i32 0, i32 1
  %1328 = load ptr, ptr %1327, align 8, !tbaa !54
  %1329 = getelementptr inbounds nuw %struct.Term, ptr %1328, i32 0, i32 7
  %1330 = load i8, ptr %1329, align 4
  %1331 = lshr i8 %1330, 3
  %1332 = and i8 %1331, 1
  %1333 = zext i8 %1332 to i32
  %1334 = load ptr, ptr %3, align 8, !tbaa !8
  %1335 = getelementptr inbounds nuw %struct.LexState, ptr %1334, i32 0, i32 4
  store i32 %1333, ptr %1335, align 8, !tbaa !94
  %1336 = load ptr, ptr %3, align 8, !tbaa !8
  %1337 = load ptr, ptr %7, align 8, !tbaa !71
  %1338 = load ptr, ptr %6, align 8, !tbaa !71
  call void @build_regex_nfa(ptr noundef %1336, ptr noundef %10, ptr noundef %1337, ptr noundef %1338)
  br label %1339

1339:                                             ; preds = %1323
  %1340 = load ptr, ptr %6, align 8, !tbaa !71
  %1341 = getelementptr inbounds nuw %struct.NFAState, ptr %1340, i32 0, i32 3
  %1342 = getelementptr inbounds nuw %struct.anon.8, ptr %1341, i32 0, i32 2
  %1343 = load ptr, ptr %1342, align 8, !tbaa !76
  %1344 = icmp ne ptr %1343, null
  br i1 %1344, label %1361, label %1345

1345:                                             ; preds = %1339
  %1346 = load ptr, ptr %8, align 8, !tbaa !52
  %1347 = load ptr, ptr %6, align 8, !tbaa !71
  %1348 = getelementptr inbounds nuw %struct.NFAState, ptr %1347, i32 0, i32 3
  %1349 = getelementptr inbounds nuw %struct.anon.8, ptr %1348, i32 0, i32 3
  %1350 = getelementptr inbounds [3 x ptr], ptr %1349, i64 0, i64 0
  %1351 = load ptr, ptr %6, align 8, !tbaa !71
  %1352 = getelementptr inbounds nuw %struct.NFAState, ptr %1351, i32 0, i32 3
  %1353 = getelementptr inbounds nuw %struct.anon.8, ptr %1352, i32 0, i32 2
  store ptr %1350, ptr %1353, align 8, !tbaa !76
  %1354 = load ptr, ptr %6, align 8, !tbaa !71
  %1355 = getelementptr inbounds nuw %struct.NFAState, ptr %1354, i32 0, i32 3
  %1356 = getelementptr inbounds nuw %struct.anon.8, ptr %1355, i32 0, i32 0
  %1357 = load i32, ptr %1356, align 8, !tbaa !78
  %1358 = add i32 %1357, 1
  store i32 %1358, ptr %1356, align 8, !tbaa !78
  %1359 = zext i32 %1357 to i64
  %1360 = getelementptr inbounds nuw ptr, ptr %1350, i64 %1359
  store ptr %1346, ptr %1360, align 8, !tbaa !52
  br label %1418

1361:                                             ; preds = %1339
  %1362 = load ptr, ptr %6, align 8, !tbaa !71
  %1363 = getelementptr inbounds nuw %struct.NFAState, ptr %1362, i32 0, i32 3
  %1364 = getelementptr inbounds nuw %struct.anon.8, ptr %1363, i32 0, i32 2
  %1365 = load ptr, ptr %1364, align 8, !tbaa !76
  %1366 = load ptr, ptr %6, align 8, !tbaa !71
  %1367 = getelementptr inbounds nuw %struct.NFAState, ptr %1366, i32 0, i32 3
  %1368 = getelementptr inbounds nuw %struct.anon.8, ptr %1367, i32 0, i32 3
  %1369 = getelementptr inbounds [3 x ptr], ptr %1368, i64 0, i64 0
  %1370 = icmp eq ptr %1365, %1369
  br i1 %1370, label %1371, label %1391

1371:                                             ; preds = %1361
  %1372 = load ptr, ptr %6, align 8, !tbaa !71
  %1373 = getelementptr inbounds nuw %struct.NFAState, ptr %1372, i32 0, i32 3
  %1374 = getelementptr inbounds nuw %struct.anon.8, ptr %1373, i32 0, i32 0
  %1375 = load i32, ptr %1374, align 8, !tbaa !78
  %1376 = icmp ult i32 %1375, 3
  br i1 %1376, label %1377, label %1390

1377:                                             ; preds = %1371
  %1378 = load ptr, ptr %8, align 8, !tbaa !52
  %1379 = load ptr, ptr %6, align 8, !tbaa !71
  %1380 = getelementptr inbounds nuw %struct.NFAState, ptr %1379, i32 0, i32 3
  %1381 = getelementptr inbounds nuw %struct.anon.8, ptr %1380, i32 0, i32 2
  %1382 = load ptr, ptr %1381, align 8, !tbaa !76
  %1383 = load ptr, ptr %6, align 8, !tbaa !71
  %1384 = getelementptr inbounds nuw %struct.NFAState, ptr %1383, i32 0, i32 3
  %1385 = getelementptr inbounds nuw %struct.anon.8, ptr %1384, i32 0, i32 0
  %1386 = load i32, ptr %1385, align 8, !tbaa !78
  %1387 = add i32 %1386, 1
  store i32 %1387, ptr %1385, align 8, !tbaa !78
  %1388 = zext i32 %1386 to i64
  %1389 = getelementptr inbounds nuw ptr, ptr %1382, i64 %1388
  store ptr %1378, ptr %1389, align 8, !tbaa !52
  br label %1418

1390:                                             ; preds = %1371
  br label %1412

1391:                                             ; preds = %1361
  %1392 = load ptr, ptr %6, align 8, !tbaa !71
  %1393 = getelementptr inbounds nuw %struct.NFAState, ptr %1392, i32 0, i32 3
  %1394 = getelementptr inbounds nuw %struct.anon.8, ptr %1393, i32 0, i32 0
  %1395 = load i32, ptr %1394, align 8, !tbaa !78
  %1396 = and i32 %1395, 7
  %1397 = icmp ne i32 %1396, 0
  br i1 %1397, label %1398, label %1411

1398:                                             ; preds = %1391
  %1399 = load ptr, ptr %8, align 8, !tbaa !52
  %1400 = load ptr, ptr %6, align 8, !tbaa !71
  %1401 = getelementptr inbounds nuw %struct.NFAState, ptr %1400, i32 0, i32 3
  %1402 = getelementptr inbounds nuw %struct.anon.8, ptr %1401, i32 0, i32 2
  %1403 = load ptr, ptr %1402, align 8, !tbaa !76
  %1404 = load ptr, ptr %6, align 8, !tbaa !71
  %1405 = getelementptr inbounds nuw %struct.NFAState, ptr %1404, i32 0, i32 3
  %1406 = getelementptr inbounds nuw %struct.anon.8, ptr %1405, i32 0, i32 0
  %1407 = load i32, ptr %1406, align 8, !tbaa !78
  %1408 = add i32 %1407, 1
  store i32 %1408, ptr %1406, align 8, !tbaa !78
  %1409 = zext i32 %1407 to i64
  %1410 = getelementptr inbounds nuw ptr, ptr %1403, i64 %1409
  store ptr %1399, ptr %1410, align 8, !tbaa !52
  br label %1418

1411:                                             ; preds = %1391
  br label %1412

1412:                                             ; preds = %1411, %1390
  br label %1413

1413:                                             ; preds = %1412
  %1414 = load ptr, ptr %6, align 8, !tbaa !71
  %1415 = getelementptr inbounds nuw %struct.NFAState, ptr %1414, i32 0, i32 3
  %1416 = load ptr, ptr %8, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %1415, ptr noundef %1416)
  br label %1417

1417:                                             ; preds = %1413
  br label %1418

1418:                                             ; preds = %1417, %1398, %1377, %1345
  br label %1419

1419:                                             ; preds = %1418, %1227, %1214
  br label %1420

1420:                                             ; preds = %1419
  %1421 = load i32, ptr %11, align 4, !tbaa !10
  %1422 = add nsw i32 %1421, 1
  store i32 %1422, ptr %11, align 4, !tbaa !10
  br label %1207, !llvm.loop !95

1423:                                             ; preds = %1207
  %1424 = load i32, ptr %12, align 4, !tbaa !10
  %1425 = icmp ne i32 %1424, 0
  br i1 %1425, label %1426, label %1433

1426:                                             ; preds = %1423
  %1427 = load ptr, ptr %5, align 8, !tbaa !71
  %1428 = load ptr, ptr %4, align 8, !tbaa !32
  %1429 = getelementptr inbounds nuw %struct.State, ptr %1428, i32 0, i32 9
  call void @nfa_to_scanner(ptr noundef %1427, ptr noundef %1429)
  %1430 = load ptr, ptr %3, align 8, !tbaa !8
  %1431 = load ptr, ptr %4, align 8, !tbaa !32
  %1432 = getelementptr inbounds nuw %struct.State, ptr %1431, i32 0, i32 9
  call void @compute_transitions(ptr noundef %1430, ptr noundef %1432)
  br label %1433

1433:                                             ; preds = %1426, %1423
  %1434 = load ptr, ptr %3, align 8, !tbaa !8
  %1435 = getelementptr inbounds nuw %struct.LexState, ptr %1434, i32 0, i32 1
  call void @free_VecNFAState(ptr noundef %1435)
  %1436 = load ptr, ptr %3, align 8, !tbaa !8
  %1437 = getelementptr inbounds nuw %struct.LexState, ptr %1436, i32 0, i32 3
  %1438 = load i32, ptr %1437, align 4, !tbaa !66
  %1439 = add i32 %1438, 1
  store i32 %1439, ptr %1437, align 4, !tbaa !66
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret void
}

declare signext i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define internal ptr @new_LexState() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %2 = call noalias ptr @malloc(i64 noundef 64) #9
  store ptr %2, ptr %1, align 8, !tbaa !8
  %3 = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 64, i1 false)
  br label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr %1, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw %struct.LexState, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds nuw %struct.VecNFAState, ptr %6, i32 0, i32 0
  store i32 0, ptr %7, align 8, !tbaa !96
  %8 = load ptr, ptr %1, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw %struct.LexState, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds nuw %struct.VecNFAState, ptr %9, i32 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !97
  br label %11

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %13
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
define internal ptr @new_NFAState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #7
  %4 = call noalias ptr @malloc(i64 noundef 10368) #9
  store ptr %4, ptr %3, align 8, !tbaa !71
  %5 = load ptr, ptr %3, align 8, !tbaa !71
  call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 10368, i1 false)
  %6 = load ptr, ptr %2, align 8, !tbaa !8
  %7 = getelementptr inbounds nuw %struct.LexState, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !98
  %10 = load ptr, ptr %3, align 8, !tbaa !71
  %11 = getelementptr inbounds nuw %struct.NFAState, ptr %10, i32 0, i32 0
  store i32 %8, ptr %11, align 8, !tbaa !99
  br label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.LexState, ptr %13, i32 0, i32 1
  %15 = getelementptr inbounds nuw %struct.VecNFAState, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = icmp ne ptr %16, null
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8, !tbaa !71
  %20 = load ptr, ptr %2, align 8, !tbaa !8
  %21 = getelementptr inbounds nuw %struct.LexState, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds nuw %struct.VecNFAState, ptr %21, i32 0, i32 3
  %23 = getelementptr inbounds [3 x ptr], ptr %22, i64 0, i64 0
  %24 = load ptr, ptr %2, align 8, !tbaa !8
  %25 = getelementptr inbounds nuw %struct.LexState, ptr %24, i32 0, i32 1
  %26 = getelementptr inbounds nuw %struct.VecNFAState, ptr %25, i32 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !97
  %27 = load ptr, ptr %2, align 8, !tbaa !8
  %28 = getelementptr inbounds nuw %struct.LexState, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds nuw %struct.VecNFAState, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !96
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8, !tbaa !96
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds nuw ptr, ptr %23, i64 %32
  store ptr %19, ptr %33, align 8, !tbaa !71
  br label %91

34:                                               ; preds = %12
  %35 = load ptr, ptr %2, align 8, !tbaa !8
  %36 = getelementptr inbounds nuw %struct.LexState, ptr %35, i32 0, i32 1
  %37 = getelementptr inbounds nuw %struct.VecNFAState, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !97
  %39 = load ptr, ptr %2, align 8, !tbaa !8
  %40 = getelementptr inbounds nuw %struct.LexState, ptr %39, i32 0, i32 1
  %41 = getelementptr inbounds nuw %struct.VecNFAState, ptr %40, i32 0, i32 3
  %42 = getelementptr inbounds [3 x ptr], ptr %41, i64 0, i64 0
  %43 = icmp eq ptr %38, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !8
  %46 = getelementptr inbounds nuw %struct.LexState, ptr %45, i32 0, i32 1
  %47 = getelementptr inbounds nuw %struct.VecNFAState, ptr %46, i32 0, i32 0
  %48 = load i32, ptr %47, align 8, !tbaa !96
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load ptr, ptr %3, align 8, !tbaa !71
  %52 = load ptr, ptr %2, align 8, !tbaa !8
  %53 = getelementptr inbounds nuw %struct.LexState, ptr %52, i32 0, i32 1
  %54 = getelementptr inbounds nuw %struct.VecNFAState, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  %56 = load ptr, ptr %2, align 8, !tbaa !8
  %57 = getelementptr inbounds nuw %struct.LexState, ptr %56, i32 0, i32 1
  %58 = getelementptr inbounds nuw %struct.VecNFAState, ptr %57, i32 0, i32 0
  %59 = load i32, ptr %58, align 8, !tbaa !96
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !96
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds nuw ptr, ptr %55, i64 %61
  store ptr %51, ptr %62, align 8, !tbaa !71
  br label %91

63:                                               ; preds = %44
  br label %85

64:                                               ; preds = %34
  %65 = load ptr, ptr %2, align 8, !tbaa !8
  %66 = getelementptr inbounds nuw %struct.LexState, ptr %65, i32 0, i32 1
  %67 = getelementptr inbounds nuw %struct.VecNFAState, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8, !tbaa !96
  %69 = and i32 %68, 7
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %64
  %72 = load ptr, ptr %3, align 8, !tbaa !71
  %73 = load ptr, ptr %2, align 8, !tbaa !8
  %74 = getelementptr inbounds nuw %struct.LexState, ptr %73, i32 0, i32 1
  %75 = getelementptr inbounds nuw %struct.VecNFAState, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !97
  %77 = load ptr, ptr %2, align 8, !tbaa !8
  %78 = getelementptr inbounds nuw %struct.LexState, ptr %77, i32 0, i32 1
  %79 = getelementptr inbounds nuw %struct.VecNFAState, ptr %78, i32 0, i32 0
  %80 = load i32, ptr %79, align 8, !tbaa !96
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 8, !tbaa !96
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds nuw ptr, ptr %76, i64 %82
  store ptr %72, ptr %83, align 8, !tbaa !71
  br label %91

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %2, align 8, !tbaa !8
  %88 = getelementptr inbounds nuw %struct.LexState, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %3, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %88, ptr noundef %89)
  br label %90

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %71, %50, %18
  %92 = load ptr, ptr %3, align 8, !tbaa !71
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #7
  ret ptr %92
}

declare void @vec_add_internal(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() #6

; Function Attrs: nounwind
define internal void @build_regex_nfa(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [256 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !8
  store ptr %1, ptr %6, align 8, !tbaa !100
  store ptr %2, ptr %7, align 8, !tbaa !71
  store ptr %3, ptr %8, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 1, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #7
  %72 = load ptr, ptr %6, align 8, !tbaa !100
  %73 = load ptr, ptr %72, align 8, !tbaa !82
  store ptr %73, ptr %11, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #7
  %74 = load ptr, ptr %7, align 8, !tbaa !71
  store ptr %74, ptr %12, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #7
  %75 = load ptr, ptr %8, align 8, !tbaa !71
  store ptr %75, ptr %15, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr %18) #7
  %76 = load ptr, ptr %12, align 8, !tbaa !71
  store ptr %76, ptr %13, align 8, !tbaa !71
  br label %77

77:                                               ; preds = %1400, %4
  %78 = load ptr, ptr %11, align 8, !tbaa !82
  %79 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %79, ptr %11, align 8, !tbaa !82
  %80 = load i8, ptr %78, align 1, !tbaa !63
  store i8 %80, ptr %9, align 1, !tbaa !63
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %1401

82:                                               ; preds = %77
  %83 = load i8, ptr %9, align 1, !tbaa !63
  %84 = zext i8 %83 to i32
  switch i32 %84, label %806 [
    i32 40, label %85
    i32 41, label %92
    i32 124, label %93
    i32 91, label %258
    i32 63, label %475
    i32 42, label %556
    i32 43, label %717
    i32 92, label %798
  ]

85:                                               ; preds = %82
  %86 = load ptr, ptr %5, align 8, !tbaa !8
  %87 = load ptr, ptr %13, align 8, !tbaa !71
  %88 = load ptr, ptr %5, align 8, !tbaa !8
  %89 = call ptr @new_NFAState(ptr noundef %88)
  store ptr %89, ptr %14, align 8, !tbaa !71
  call void @build_regex_nfa(ptr noundef %86, ptr noundef %11, ptr noundef %87, ptr noundef %89)
  %90 = load ptr, ptr %13, align 8, !tbaa !71
  store ptr %90, ptr %12, align 8, !tbaa !71
  %91 = load ptr, ptr %14, align 8, !tbaa !71
  store ptr %91, ptr %13, align 8, !tbaa !71
  br label %1400

92:                                               ; preds = %82
  br label %1402

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %13, align 8, !tbaa !71
  %96 = getelementptr inbounds nuw %struct.NFAState, ptr %95, i32 0, i32 2
  %97 = getelementptr inbounds nuw %struct.anon.7, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !92
  %99 = icmp ne ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %8, align 8, !tbaa !71
  %102 = load ptr, ptr %13, align 8, !tbaa !71
  %103 = getelementptr inbounds nuw %struct.NFAState, ptr %102, i32 0, i32 2
  %104 = getelementptr inbounds nuw %struct.anon.7, ptr %103, i32 0, i32 3
  %105 = getelementptr inbounds [3 x ptr], ptr %104, i64 0, i64 0
  %106 = load ptr, ptr %13, align 8, !tbaa !71
  %107 = getelementptr inbounds nuw %struct.NFAState, ptr %106, i32 0, i32 2
  %108 = getelementptr inbounds nuw %struct.anon.7, ptr %107, i32 0, i32 2
  store ptr %105, ptr %108, align 8, !tbaa !92
  %109 = load ptr, ptr %13, align 8, !tbaa !71
  %110 = getelementptr inbounds nuw %struct.NFAState, ptr %109, i32 0, i32 2
  %111 = getelementptr inbounds nuw %struct.anon.7, ptr %110, i32 0, i32 0
  %112 = load i32, ptr %111, align 8, !tbaa !93
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !93
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds nuw ptr, ptr %105, i64 %114
  store ptr %101, ptr %115, align 8, !tbaa !71
  br label %173

116:                                              ; preds = %94
  %117 = load ptr, ptr %13, align 8, !tbaa !71
  %118 = getelementptr inbounds nuw %struct.NFAState, ptr %117, i32 0, i32 2
  %119 = getelementptr inbounds nuw %struct.anon.7, ptr %118, i32 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !92
  %121 = load ptr, ptr %13, align 8, !tbaa !71
  %122 = getelementptr inbounds nuw %struct.NFAState, ptr %121, i32 0, i32 2
  %123 = getelementptr inbounds nuw %struct.anon.7, ptr %122, i32 0, i32 3
  %124 = getelementptr inbounds [3 x ptr], ptr %123, i64 0, i64 0
  %125 = icmp eq ptr %120, %124
  br i1 %125, label %126, label %146

126:                                              ; preds = %116
  %127 = load ptr, ptr %13, align 8, !tbaa !71
  %128 = getelementptr inbounds nuw %struct.NFAState, ptr %127, i32 0, i32 2
  %129 = getelementptr inbounds nuw %struct.anon.7, ptr %128, i32 0, i32 0
  %130 = load i32, ptr %129, align 8, !tbaa !93
  %131 = icmp ult i32 %130, 3
  br i1 %131, label %132, label %145

132:                                              ; preds = %126
  %133 = load ptr, ptr %8, align 8, !tbaa !71
  %134 = load ptr, ptr %13, align 8, !tbaa !71
  %135 = getelementptr inbounds nuw %struct.NFAState, ptr %134, i32 0, i32 2
  %136 = getelementptr inbounds nuw %struct.anon.7, ptr %135, i32 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !92
  %138 = load ptr, ptr %13, align 8, !tbaa !71
  %139 = getelementptr inbounds nuw %struct.NFAState, ptr %138, i32 0, i32 2
  %140 = getelementptr inbounds nuw %struct.anon.7, ptr %139, i32 0, i32 0
  %141 = load i32, ptr %140, align 8, !tbaa !93
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 8, !tbaa !93
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds nuw ptr, ptr %137, i64 %143
  store ptr %133, ptr %144, align 8, !tbaa !71
  br label %173

145:                                              ; preds = %126
  br label %167

146:                                              ; preds = %116
  %147 = load ptr, ptr %13, align 8, !tbaa !71
  %148 = getelementptr inbounds nuw %struct.NFAState, ptr %147, i32 0, i32 2
  %149 = getelementptr inbounds nuw %struct.anon.7, ptr %148, i32 0, i32 0
  %150 = load i32, ptr %149, align 8, !tbaa !93
  %151 = and i32 %150, 7
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load ptr, ptr %8, align 8, !tbaa !71
  %155 = load ptr, ptr %13, align 8, !tbaa !71
  %156 = getelementptr inbounds nuw %struct.NFAState, ptr %155, i32 0, i32 2
  %157 = getelementptr inbounds nuw %struct.anon.7, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !92
  %159 = load ptr, ptr %13, align 8, !tbaa !71
  %160 = getelementptr inbounds nuw %struct.NFAState, ptr %159, i32 0, i32 2
  %161 = getelementptr inbounds nuw %struct.anon.7, ptr %160, i32 0, i32 0
  %162 = load i32, ptr %161, align 8, !tbaa !93
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8, !tbaa !93
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds nuw ptr, ptr %158, i64 %164
  store ptr %154, ptr %165, align 8, !tbaa !71
  br label %173

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166, %145
  br label %168

168:                                              ; preds = %167
  %169 = load ptr, ptr %13, align 8, !tbaa !71
  %170 = getelementptr inbounds nuw %struct.NFAState, ptr %169, i32 0, i32 2
  %171 = load ptr, ptr %8, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %170, ptr noundef %171)
  br label %172

172:                                              ; preds = %168
  br label %173

173:                                              ; preds = %172, %153, %132, %100
  br label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %7, align 8, !tbaa !71
  %176 = getelementptr inbounds nuw %struct.NFAState, ptr %175, i32 0, i32 2
  %177 = getelementptr inbounds nuw %struct.anon.7, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !92
  %179 = icmp ne ptr %178, null
  br i1 %179, label %197, label %180

180:                                              ; preds = %174
  %181 = load ptr, ptr %5, align 8, !tbaa !8
  %182 = call ptr @new_NFAState(ptr noundef %181)
  store ptr %182, ptr %13, align 8, !tbaa !71
  %183 = load ptr, ptr %7, align 8, !tbaa !71
  %184 = getelementptr inbounds nuw %struct.NFAState, ptr %183, i32 0, i32 2
  %185 = getelementptr inbounds nuw %struct.anon.7, ptr %184, i32 0, i32 3
  %186 = getelementptr inbounds [3 x ptr], ptr %185, i64 0, i64 0
  %187 = load ptr, ptr %7, align 8, !tbaa !71
  %188 = getelementptr inbounds nuw %struct.NFAState, ptr %187, i32 0, i32 2
  %189 = getelementptr inbounds nuw %struct.anon.7, ptr %188, i32 0, i32 2
  store ptr %186, ptr %189, align 8, !tbaa !92
  %190 = load ptr, ptr %7, align 8, !tbaa !71
  %191 = getelementptr inbounds nuw %struct.NFAState, ptr %190, i32 0, i32 2
  %192 = getelementptr inbounds nuw %struct.anon.7, ptr %191, i32 0, i32 0
  %193 = load i32, ptr %192, align 8, !tbaa !93
  %194 = add i32 %193, 1
  store i32 %194, ptr %192, align 8, !tbaa !93
  %195 = zext i32 %193 to i64
  %196 = getelementptr inbounds nuw ptr, ptr %186, i64 %195
  store ptr %182, ptr %196, align 8, !tbaa !71
  br label %257

197:                                              ; preds = %174
  %198 = load ptr, ptr %7, align 8, !tbaa !71
  %199 = getelementptr inbounds nuw %struct.NFAState, ptr %198, i32 0, i32 2
  %200 = getelementptr inbounds nuw %struct.anon.7, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !92
  %202 = load ptr, ptr %7, align 8, !tbaa !71
  %203 = getelementptr inbounds nuw %struct.NFAState, ptr %202, i32 0, i32 2
  %204 = getelementptr inbounds nuw %struct.anon.7, ptr %203, i32 0, i32 3
  %205 = getelementptr inbounds [3 x ptr], ptr %204, i64 0, i64 0
  %206 = icmp eq ptr %201, %205
  br i1 %206, label %207, label %228

207:                                              ; preds = %197
  %208 = load ptr, ptr %7, align 8, !tbaa !71
  %209 = getelementptr inbounds nuw %struct.NFAState, ptr %208, i32 0, i32 2
  %210 = getelementptr inbounds nuw %struct.anon.7, ptr %209, i32 0, i32 0
  %211 = load i32, ptr %210, align 8, !tbaa !93
  %212 = icmp ult i32 %211, 3
  br i1 %212, label %213, label %227

213:                                              ; preds = %207
  %214 = load ptr, ptr %5, align 8, !tbaa !8
  %215 = call ptr @new_NFAState(ptr noundef %214)
  store ptr %215, ptr %13, align 8, !tbaa !71
  %216 = load ptr, ptr %7, align 8, !tbaa !71
  %217 = getelementptr inbounds nuw %struct.NFAState, ptr %216, i32 0, i32 2
  %218 = getelementptr inbounds nuw %struct.anon.7, ptr %217, i32 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !92
  %220 = load ptr, ptr %7, align 8, !tbaa !71
  %221 = getelementptr inbounds nuw %struct.NFAState, ptr %220, i32 0, i32 2
  %222 = getelementptr inbounds nuw %struct.anon.7, ptr %221, i32 0, i32 0
  %223 = load i32, ptr %222, align 8, !tbaa !93
  %224 = add i32 %223, 1
  store i32 %224, ptr %222, align 8, !tbaa !93
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds nuw ptr, ptr %219, i64 %225
  store ptr %215, ptr %226, align 8, !tbaa !71
  br label %257

227:                                              ; preds = %207
  br label %250

228:                                              ; preds = %197
  %229 = load ptr, ptr %7, align 8, !tbaa !71
  %230 = getelementptr inbounds nuw %struct.NFAState, ptr %229, i32 0, i32 2
  %231 = getelementptr inbounds nuw %struct.anon.7, ptr %230, i32 0, i32 0
  %232 = load i32, ptr %231, align 8, !tbaa !93
  %233 = and i32 %232, 7
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %249

235:                                              ; preds = %228
  %236 = load ptr, ptr %5, align 8, !tbaa !8
  %237 = call ptr @new_NFAState(ptr noundef %236)
  store ptr %237, ptr %13, align 8, !tbaa !71
  %238 = load ptr, ptr %7, align 8, !tbaa !71
  %239 = getelementptr inbounds nuw %struct.NFAState, ptr %238, i32 0, i32 2
  %240 = getelementptr inbounds nuw %struct.anon.7, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !92
  %242 = load ptr, ptr %7, align 8, !tbaa !71
  %243 = getelementptr inbounds nuw %struct.NFAState, ptr %242, i32 0, i32 2
  %244 = getelementptr inbounds nuw %struct.anon.7, ptr %243, i32 0, i32 0
  %245 = load i32, ptr %244, align 8, !tbaa !93
  %246 = add i32 %245, 1
  store i32 %246, ptr %244, align 8, !tbaa !93
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds nuw ptr, ptr %241, i64 %247
  store ptr %237, ptr %248, align 8, !tbaa !71
  br label %257

249:                                              ; preds = %228
  br label %250

250:                                              ; preds = %249, %227
  br label %251

251:                                              ; preds = %250
  %252 = load ptr, ptr %7, align 8, !tbaa !71
  %253 = getelementptr inbounds nuw %struct.NFAState, ptr %252, i32 0, i32 2
  %254 = load ptr, ptr %5, align 8, !tbaa !8
  %255 = call ptr @new_NFAState(ptr noundef %254)
  store ptr %255, ptr %13, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %253, ptr noundef %255)
  br label %256

256:                                              ; preds = %251
  br label %257

257:                                              ; preds = %256, %235, %213, %180
  br label %1400

258:                                              ; preds = %82
  %259 = load ptr, ptr %11, align 8, !tbaa !82
  %260 = load i8, ptr %259, align 1, !tbaa !63
  %261 = zext i8 %260 to i32
  %262 = icmp eq i32 %261, 94
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load ptr, ptr %11, align 8, !tbaa !82
  %265 = getelementptr inbounds nuw i8, ptr %264, i32 1
  store ptr %265, ptr %11, align 8, !tbaa !82
  store i32 1, ptr %16, align 4, !tbaa !10
  br label %267

266:                                              ; preds = %258
  store i32 0, ptr %16, align 4, !tbaa !10
  br label %267

267:                                              ; preds = %266, %263
  %268 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %268, i8 0, i64 256, i1 false)
  store i8 -1, ptr %10, align 1, !tbaa !63
  br label %269

269:                                              ; preds = %321, %267
  %270 = load ptr, ptr %11, align 8, !tbaa !82
  %271 = getelementptr inbounds nuw i8, ptr %270, i32 1
  store ptr %271, ptr %11, align 8, !tbaa !82
  %272 = load i8, ptr %270, align 1, !tbaa !63
  store i8 %272, ptr %9, align 1, !tbaa !63
  %273 = icmp ne i8 %272, 0
  br i1 %273, label %274, label %322

274:                                              ; preds = %269
  %275 = load i8, ptr %9, align 1, !tbaa !63
  %276 = zext i8 %275 to i32
  switch i32 %276, label %316 [
    i32 93, label %277
    i32 45, label %278
    i32 92, label %312
  ]

277:                                              ; preds = %274
  br label %323

278:                                              ; preds = %274
  %279 = load ptr, ptr %11, align 8, !tbaa !82
  %280 = getelementptr inbounds nuw i8, ptr %279, i32 1
  store ptr %280, ptr %11, align 8, !tbaa !82
  %281 = load i8, ptr %279, align 1, !tbaa !63
  store i8 %281, ptr %9, align 1, !tbaa !63
  %282 = load i8, ptr %9, align 1, !tbaa !63
  %283 = icmp ne i8 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %278
  br label %1485

285:                                              ; preds = %278
  %286 = load i8, ptr %9, align 1, !tbaa !63
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, 92
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load ptr, ptr %11, align 8, !tbaa !82
  %291 = getelementptr inbounds nuw i8, ptr %290, i32 1
  store ptr %291, ptr %11, align 8, !tbaa !82
  %292 = load i8, ptr %290, align 1, !tbaa !63
  store i8 %292, ptr %9, align 1, !tbaa !63
  br label %293

293:                                              ; preds = %289, %285
  %294 = load i8, ptr %9, align 1, !tbaa !63
  %295 = icmp ne i8 %294, 0
  br i1 %295, label %297, label %296

296:                                              ; preds = %293
  br label %1485

297:                                              ; preds = %293
  br label %298

298:                                              ; preds = %308, %297
  %299 = load i8, ptr %10, align 1, !tbaa !63
  %300 = zext i8 %299 to i32
  %301 = load i8, ptr %9, align 1, !tbaa !63
  %302 = zext i8 %301 to i32
  %303 = icmp sle i32 %300, %302
  br i1 %303, label %304, label %311

304:                                              ; preds = %298
  %305 = load i8, ptr %10, align 1, !tbaa !63
  %306 = zext i8 %305 to i64
  %307 = getelementptr inbounds nuw [256 x i8], ptr %18, i64 0, i64 %306
  store i8 1, ptr %307, align 1, !tbaa !63
  br label %308

308:                                              ; preds = %304
  %309 = load i8, ptr %10, align 1, !tbaa !63
  %310 = add i8 %309, 1
  store i8 %310, ptr %10, align 1, !tbaa !63
  br label %298, !llvm.loop !102

311:                                              ; preds = %298
  br label %321

312:                                              ; preds = %274
  %313 = load ptr, ptr %11, align 8, !tbaa !82
  %314 = getelementptr inbounds nuw i8, ptr %313, i32 1
  store ptr %314, ptr %11, align 8, !tbaa !82
  %315 = load i8, ptr %313, align 1, !tbaa !63
  store i8 %315, ptr %9, align 1, !tbaa !63
  br label %316

316:                                              ; preds = %274, %312
  %317 = load i8, ptr %9, align 1, !tbaa !63
  store i8 %317, ptr %10, align 1, !tbaa !63
  %318 = load i8, ptr %9, align 1, !tbaa !63
  %319 = zext i8 %318 to i64
  %320 = getelementptr inbounds nuw [256 x i8], ptr %18, i64 0, i64 %319
  store i8 1, ptr %320, align 1, !tbaa !63
  br label %321

321:                                              ; preds = %316, %311
  br label %269, !llvm.loop !103

322:                                              ; preds = %269
  br label %323

323:                                              ; preds = %322, %277
  %324 = load ptr, ptr %5, align 8, !tbaa !8
  %325 = call ptr @new_NFAState(ptr noundef %324)
  store ptr %325, ptr %14, align 8, !tbaa !71
  store i32 1, ptr %17, align 4, !tbaa !10
  br label %326

326:                                              ; preds = %469, %323
  %327 = load i32, ptr %17, align 4, !tbaa !10
  %328 = icmp slt i32 %327, 256
  br i1 %328, label %329, label %472

329:                                              ; preds = %326
  %330 = load i32, ptr %16, align 4, !tbaa !10
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %339, label %332

332:                                              ; preds = %329
  %333 = load i32, ptr %17, align 4, !tbaa !10
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !63
  %337 = zext i8 %336 to i32
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %348, label %339

339:                                              ; preds = %332, %329
  %340 = load i32, ptr %16, align 4, !tbaa !10
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %468

342:                                              ; preds = %339
  %343 = load i32, ptr %17, align 4, !tbaa !10
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !63
  %347 = icmp ne i8 %346, 0
  br i1 %347, label %468, label %348

348:                                              ; preds = %342, %332
  br label %349

349:                                              ; preds = %348
  %350 = load ptr, ptr %13, align 8, !tbaa !71
  %351 = getelementptr inbounds nuw %struct.NFAState, ptr %350, i32 0, i32 1
  %352 = load i32, ptr %17, align 4, !tbaa !10
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [256 x %struct.anon.6], ptr %351, i64 0, i64 %353
  %355 = getelementptr inbounds nuw %struct.anon.6, ptr %354, i32 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !75
  %357 = icmp ne ptr %356, null
  br i1 %357, label %383, label %358

358:                                              ; preds = %349
  %359 = load ptr, ptr %14, align 8, !tbaa !71
  %360 = load ptr, ptr %13, align 8, !tbaa !71
  %361 = getelementptr inbounds nuw %struct.NFAState, ptr %360, i32 0, i32 1
  %362 = load i32, ptr %17, align 4, !tbaa !10
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [256 x %struct.anon.6], ptr %361, i64 0, i64 %363
  %365 = getelementptr inbounds nuw %struct.anon.6, ptr %364, i32 0, i32 3
  %366 = getelementptr inbounds [3 x ptr], ptr %365, i64 0, i64 0
  %367 = load ptr, ptr %13, align 8, !tbaa !71
  %368 = getelementptr inbounds nuw %struct.NFAState, ptr %367, i32 0, i32 1
  %369 = load i32, ptr %17, align 4, !tbaa !10
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [256 x %struct.anon.6], ptr %368, i64 0, i64 %370
  %372 = getelementptr inbounds nuw %struct.anon.6, ptr %371, i32 0, i32 2
  store ptr %366, ptr %372, align 8, !tbaa !75
  %373 = load ptr, ptr %13, align 8, !tbaa !71
  %374 = getelementptr inbounds nuw %struct.NFAState, ptr %373, i32 0, i32 1
  %375 = load i32, ptr %17, align 4, !tbaa !10
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [256 x %struct.anon.6], ptr %374, i64 0, i64 %376
  %378 = getelementptr inbounds nuw %struct.anon.6, ptr %377, i32 0, i32 0
  %379 = load i32, ptr %378, align 8, !tbaa !74
  %380 = add i32 %379, 1
  store i32 %380, ptr %378, align 8, !tbaa !74
  %381 = zext i32 %379 to i64
  %382 = getelementptr inbounds nuw ptr, ptr %366, i64 %381
  store ptr %359, ptr %382, align 8, !tbaa !71
  br label %467

383:                                              ; preds = %349
  %384 = load ptr, ptr %13, align 8, !tbaa !71
  %385 = getelementptr inbounds nuw %struct.NFAState, ptr %384, i32 0, i32 1
  %386 = load i32, ptr %17, align 4, !tbaa !10
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [256 x %struct.anon.6], ptr %385, i64 0, i64 %387
  %389 = getelementptr inbounds nuw %struct.anon.6, ptr %388, i32 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !75
  %391 = load ptr, ptr %13, align 8, !tbaa !71
  %392 = getelementptr inbounds nuw %struct.NFAState, ptr %391, i32 0, i32 1
  %393 = load i32, ptr %17, align 4, !tbaa !10
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [256 x %struct.anon.6], ptr %392, i64 0, i64 %394
  %396 = getelementptr inbounds nuw %struct.anon.6, ptr %395, i32 0, i32 3
  %397 = getelementptr inbounds [3 x ptr], ptr %396, i64 0, i64 0
  %398 = icmp eq ptr %390, %397
  br i1 %398, label %399, label %428

399:                                              ; preds = %383
  %400 = load ptr, ptr %13, align 8, !tbaa !71
  %401 = getelementptr inbounds nuw %struct.NFAState, ptr %400, i32 0, i32 1
  %402 = load i32, ptr %17, align 4, !tbaa !10
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [256 x %struct.anon.6], ptr %401, i64 0, i64 %403
  %405 = getelementptr inbounds nuw %struct.anon.6, ptr %404, i32 0, i32 0
  %406 = load i32, ptr %405, align 8, !tbaa !74
  %407 = icmp ult i32 %406, 3
  br i1 %407, label %408, label %427

408:                                              ; preds = %399
  %409 = load ptr, ptr %14, align 8, !tbaa !71
  %410 = load ptr, ptr %13, align 8, !tbaa !71
  %411 = getelementptr inbounds nuw %struct.NFAState, ptr %410, i32 0, i32 1
  %412 = load i32, ptr %17, align 4, !tbaa !10
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [256 x %struct.anon.6], ptr %411, i64 0, i64 %413
  %415 = getelementptr inbounds nuw %struct.anon.6, ptr %414, i32 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !75
  %417 = load ptr, ptr %13, align 8, !tbaa !71
  %418 = getelementptr inbounds nuw %struct.NFAState, ptr %417, i32 0, i32 1
  %419 = load i32, ptr %17, align 4, !tbaa !10
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [256 x %struct.anon.6], ptr %418, i64 0, i64 %420
  %422 = getelementptr inbounds nuw %struct.anon.6, ptr %421, i32 0, i32 0
  %423 = load i32, ptr %422, align 8, !tbaa !74
  %424 = add i32 %423, 1
  store i32 %424, ptr %422, align 8, !tbaa !74
  %425 = zext i32 %423 to i64
  %426 = getelementptr inbounds nuw ptr, ptr %416, i64 %425
  store ptr %409, ptr %426, align 8, !tbaa !71
  br label %467

427:                                              ; preds = %399
  br label %458

428:                                              ; preds = %383
  %429 = load ptr, ptr %13, align 8, !tbaa !71
  %430 = getelementptr inbounds nuw %struct.NFAState, ptr %429, i32 0, i32 1
  %431 = load i32, ptr %17, align 4, !tbaa !10
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [256 x %struct.anon.6], ptr %430, i64 0, i64 %432
  %434 = getelementptr inbounds nuw %struct.anon.6, ptr %433, i32 0, i32 0
  %435 = load i32, ptr %434, align 8, !tbaa !74
  %436 = and i32 %435, 7
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %457

438:                                              ; preds = %428
  %439 = load ptr, ptr %14, align 8, !tbaa !71
  %440 = load ptr, ptr %13, align 8, !tbaa !71
  %441 = getelementptr inbounds nuw %struct.NFAState, ptr %440, i32 0, i32 1
  %442 = load i32, ptr %17, align 4, !tbaa !10
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [256 x %struct.anon.6], ptr %441, i64 0, i64 %443
  %445 = getelementptr inbounds nuw %struct.anon.6, ptr %444, i32 0, i32 2
  %446 = load ptr, ptr %445, align 8, !tbaa !75
  %447 = load ptr, ptr %13, align 8, !tbaa !71
  %448 = getelementptr inbounds nuw %struct.NFAState, ptr %447, i32 0, i32 1
  %449 = load i32, ptr %17, align 4, !tbaa !10
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [256 x %struct.anon.6], ptr %448, i64 0, i64 %450
  %452 = getelementptr inbounds nuw %struct.anon.6, ptr %451, i32 0, i32 0
  %453 = load i32, ptr %452, align 8, !tbaa !74
  %454 = add i32 %453, 1
  store i32 %454, ptr %452, align 8, !tbaa !74
  %455 = zext i32 %453 to i64
  %456 = getelementptr inbounds nuw ptr, ptr %446, i64 %455
  store ptr %439, ptr %456, align 8, !tbaa !71
  br label %467

457:                                              ; preds = %428
  br label %458

458:                                              ; preds = %457, %427
  br label %459

459:                                              ; preds = %458
  %460 = load ptr, ptr %13, align 8, !tbaa !71
  %461 = getelementptr inbounds nuw %struct.NFAState, ptr %460, i32 0, i32 1
  %462 = load i32, ptr %17, align 4, !tbaa !10
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [256 x %struct.anon.6], ptr %461, i64 0, i64 %463
  %465 = load ptr, ptr %14, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %464, ptr noundef %465)
  br label %466

466:                                              ; preds = %459
  br label %467

467:                                              ; preds = %466, %438, %408, %358
  br label %468

468:                                              ; preds = %467, %342, %339
  br label %469

469:                                              ; preds = %468
  %470 = load i32, ptr %17, align 4, !tbaa !10
  %471 = add nsw i32 %470, 1
  store i32 %471, ptr %17, align 4, !tbaa !10
  br label %326, !llvm.loop !104

472:                                              ; preds = %326
  %473 = load ptr, ptr %13, align 8, !tbaa !71
  store ptr %473, ptr %12, align 8, !tbaa !71
  %474 = load ptr, ptr %14, align 8, !tbaa !71
  store ptr %474, ptr %13, align 8, !tbaa !71
  br label %1400

475:                                              ; preds = %82
  br label %476

476:                                              ; preds = %475
  %477 = load ptr, ptr %12, align 8, !tbaa !71
  %478 = getelementptr inbounds nuw %struct.NFAState, ptr %477, i32 0, i32 2
  %479 = getelementptr inbounds nuw %struct.anon.7, ptr %478, i32 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !92
  %481 = icmp ne ptr %480, null
  br i1 %481, label %498, label %482

482:                                              ; preds = %476
  %483 = load ptr, ptr %13, align 8, !tbaa !71
  %484 = load ptr, ptr %12, align 8, !tbaa !71
  %485 = getelementptr inbounds nuw %struct.NFAState, ptr %484, i32 0, i32 2
  %486 = getelementptr inbounds nuw %struct.anon.7, ptr %485, i32 0, i32 3
  %487 = getelementptr inbounds [3 x ptr], ptr %486, i64 0, i64 0
  %488 = load ptr, ptr %12, align 8, !tbaa !71
  %489 = getelementptr inbounds nuw %struct.NFAState, ptr %488, i32 0, i32 2
  %490 = getelementptr inbounds nuw %struct.anon.7, ptr %489, i32 0, i32 2
  store ptr %487, ptr %490, align 8, !tbaa !92
  %491 = load ptr, ptr %12, align 8, !tbaa !71
  %492 = getelementptr inbounds nuw %struct.NFAState, ptr %491, i32 0, i32 2
  %493 = getelementptr inbounds nuw %struct.anon.7, ptr %492, i32 0, i32 0
  %494 = load i32, ptr %493, align 8, !tbaa !93
  %495 = add i32 %494, 1
  store i32 %495, ptr %493, align 8, !tbaa !93
  %496 = zext i32 %494 to i64
  %497 = getelementptr inbounds nuw ptr, ptr %487, i64 %496
  store ptr %483, ptr %497, align 8, !tbaa !71
  br label %555

498:                                              ; preds = %476
  %499 = load ptr, ptr %12, align 8, !tbaa !71
  %500 = getelementptr inbounds nuw %struct.NFAState, ptr %499, i32 0, i32 2
  %501 = getelementptr inbounds nuw %struct.anon.7, ptr %500, i32 0, i32 2
  %502 = load ptr, ptr %501, align 8, !tbaa !92
  %503 = load ptr, ptr %12, align 8, !tbaa !71
  %504 = getelementptr inbounds nuw %struct.NFAState, ptr %503, i32 0, i32 2
  %505 = getelementptr inbounds nuw %struct.anon.7, ptr %504, i32 0, i32 3
  %506 = getelementptr inbounds [3 x ptr], ptr %505, i64 0, i64 0
  %507 = icmp eq ptr %502, %506
  br i1 %507, label %508, label %528

508:                                              ; preds = %498
  %509 = load ptr, ptr %12, align 8, !tbaa !71
  %510 = getelementptr inbounds nuw %struct.NFAState, ptr %509, i32 0, i32 2
  %511 = getelementptr inbounds nuw %struct.anon.7, ptr %510, i32 0, i32 0
  %512 = load i32, ptr %511, align 8, !tbaa !93
  %513 = icmp ult i32 %512, 3
  br i1 %513, label %514, label %527

514:                                              ; preds = %508
  %515 = load ptr, ptr %13, align 8, !tbaa !71
  %516 = load ptr, ptr %12, align 8, !tbaa !71
  %517 = getelementptr inbounds nuw %struct.NFAState, ptr %516, i32 0, i32 2
  %518 = getelementptr inbounds nuw %struct.anon.7, ptr %517, i32 0, i32 2
  %519 = load ptr, ptr %518, align 8, !tbaa !92
  %520 = load ptr, ptr %12, align 8, !tbaa !71
  %521 = getelementptr inbounds nuw %struct.NFAState, ptr %520, i32 0, i32 2
  %522 = getelementptr inbounds nuw %struct.anon.7, ptr %521, i32 0, i32 0
  %523 = load i32, ptr %522, align 8, !tbaa !93
  %524 = add i32 %523, 1
  store i32 %524, ptr %522, align 8, !tbaa !93
  %525 = zext i32 %523 to i64
  %526 = getelementptr inbounds nuw ptr, ptr %519, i64 %525
  store ptr %515, ptr %526, align 8, !tbaa !71
  br label %555

527:                                              ; preds = %508
  br label %549

528:                                              ; preds = %498
  %529 = load ptr, ptr %12, align 8, !tbaa !71
  %530 = getelementptr inbounds nuw %struct.NFAState, ptr %529, i32 0, i32 2
  %531 = getelementptr inbounds nuw %struct.anon.7, ptr %530, i32 0, i32 0
  %532 = load i32, ptr %531, align 8, !tbaa !93
  %533 = and i32 %532, 7
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %548

535:                                              ; preds = %528
  %536 = load ptr, ptr %13, align 8, !tbaa !71
  %537 = load ptr, ptr %12, align 8, !tbaa !71
  %538 = getelementptr inbounds nuw %struct.NFAState, ptr %537, i32 0, i32 2
  %539 = getelementptr inbounds nuw %struct.anon.7, ptr %538, i32 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !92
  %541 = load ptr, ptr %12, align 8, !tbaa !71
  %542 = getelementptr inbounds nuw %struct.NFAState, ptr %541, i32 0, i32 2
  %543 = getelementptr inbounds nuw %struct.anon.7, ptr %542, i32 0, i32 0
  %544 = load i32, ptr %543, align 8, !tbaa !93
  %545 = add i32 %544, 1
  store i32 %545, ptr %543, align 8, !tbaa !93
  %546 = zext i32 %544 to i64
  %547 = getelementptr inbounds nuw ptr, ptr %540, i64 %546
  store ptr %536, ptr %547, align 8, !tbaa !71
  br label %555

548:                                              ; preds = %528
  br label %549

549:                                              ; preds = %548, %527
  br label %550

550:                                              ; preds = %549
  %551 = load ptr, ptr %12, align 8, !tbaa !71
  %552 = getelementptr inbounds nuw %struct.NFAState, ptr %551, i32 0, i32 2
  %553 = load ptr, ptr %13, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %552, ptr noundef %553)
  br label %554

554:                                              ; preds = %550
  br label %555

555:                                              ; preds = %554, %535, %514, %482
  br label %1400

556:                                              ; preds = %82
  br label %557

557:                                              ; preds = %556
  %558 = load ptr, ptr %12, align 8, !tbaa !71
  %559 = getelementptr inbounds nuw %struct.NFAState, ptr %558, i32 0, i32 2
  %560 = getelementptr inbounds nuw %struct.anon.7, ptr %559, i32 0, i32 2
  %561 = load ptr, ptr %560, align 8, !tbaa !92
  %562 = icmp ne ptr %561, null
  br i1 %562, label %579, label %563

563:                                              ; preds = %557
  %564 = load ptr, ptr %13, align 8, !tbaa !71
  %565 = load ptr, ptr %12, align 8, !tbaa !71
  %566 = getelementptr inbounds nuw %struct.NFAState, ptr %565, i32 0, i32 2
  %567 = getelementptr inbounds nuw %struct.anon.7, ptr %566, i32 0, i32 3
  %568 = getelementptr inbounds [3 x ptr], ptr %567, i64 0, i64 0
  %569 = load ptr, ptr %12, align 8, !tbaa !71
  %570 = getelementptr inbounds nuw %struct.NFAState, ptr %569, i32 0, i32 2
  %571 = getelementptr inbounds nuw %struct.anon.7, ptr %570, i32 0, i32 2
  store ptr %568, ptr %571, align 8, !tbaa !92
  %572 = load ptr, ptr %12, align 8, !tbaa !71
  %573 = getelementptr inbounds nuw %struct.NFAState, ptr %572, i32 0, i32 2
  %574 = getelementptr inbounds nuw %struct.anon.7, ptr %573, i32 0, i32 0
  %575 = load i32, ptr %574, align 8, !tbaa !93
  %576 = add i32 %575, 1
  store i32 %576, ptr %574, align 8, !tbaa !93
  %577 = zext i32 %575 to i64
  %578 = getelementptr inbounds nuw ptr, ptr %568, i64 %577
  store ptr %564, ptr %578, align 8, !tbaa !71
  br label %636

579:                                              ; preds = %557
  %580 = load ptr, ptr %12, align 8, !tbaa !71
  %581 = getelementptr inbounds nuw %struct.NFAState, ptr %580, i32 0, i32 2
  %582 = getelementptr inbounds nuw %struct.anon.7, ptr %581, i32 0, i32 2
  %583 = load ptr, ptr %582, align 8, !tbaa !92
  %584 = load ptr, ptr %12, align 8, !tbaa !71
  %585 = getelementptr inbounds nuw %struct.NFAState, ptr %584, i32 0, i32 2
  %586 = getelementptr inbounds nuw %struct.anon.7, ptr %585, i32 0, i32 3
  %587 = getelementptr inbounds [3 x ptr], ptr %586, i64 0, i64 0
  %588 = icmp eq ptr %583, %587
  br i1 %588, label %589, label %609

589:                                              ; preds = %579
  %590 = load ptr, ptr %12, align 8, !tbaa !71
  %591 = getelementptr inbounds nuw %struct.NFAState, ptr %590, i32 0, i32 2
  %592 = getelementptr inbounds nuw %struct.anon.7, ptr %591, i32 0, i32 0
  %593 = load i32, ptr %592, align 8, !tbaa !93
  %594 = icmp ult i32 %593, 3
  br i1 %594, label %595, label %608

595:                                              ; preds = %589
  %596 = load ptr, ptr %13, align 8, !tbaa !71
  %597 = load ptr, ptr %12, align 8, !tbaa !71
  %598 = getelementptr inbounds nuw %struct.NFAState, ptr %597, i32 0, i32 2
  %599 = getelementptr inbounds nuw %struct.anon.7, ptr %598, i32 0, i32 2
  %600 = load ptr, ptr %599, align 8, !tbaa !92
  %601 = load ptr, ptr %12, align 8, !tbaa !71
  %602 = getelementptr inbounds nuw %struct.NFAState, ptr %601, i32 0, i32 2
  %603 = getelementptr inbounds nuw %struct.anon.7, ptr %602, i32 0, i32 0
  %604 = load i32, ptr %603, align 8, !tbaa !93
  %605 = add i32 %604, 1
  store i32 %605, ptr %603, align 8, !tbaa !93
  %606 = zext i32 %604 to i64
  %607 = getelementptr inbounds nuw ptr, ptr %600, i64 %606
  store ptr %596, ptr %607, align 8, !tbaa !71
  br label %636

608:                                              ; preds = %589
  br label %630

609:                                              ; preds = %579
  %610 = load ptr, ptr %12, align 8, !tbaa !71
  %611 = getelementptr inbounds nuw %struct.NFAState, ptr %610, i32 0, i32 2
  %612 = getelementptr inbounds nuw %struct.anon.7, ptr %611, i32 0, i32 0
  %613 = load i32, ptr %612, align 8, !tbaa !93
  %614 = and i32 %613, 7
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %629

616:                                              ; preds = %609
  %617 = load ptr, ptr %13, align 8, !tbaa !71
  %618 = load ptr, ptr %12, align 8, !tbaa !71
  %619 = getelementptr inbounds nuw %struct.NFAState, ptr %618, i32 0, i32 2
  %620 = getelementptr inbounds nuw %struct.anon.7, ptr %619, i32 0, i32 2
  %621 = load ptr, ptr %620, align 8, !tbaa !92
  %622 = load ptr, ptr %12, align 8, !tbaa !71
  %623 = getelementptr inbounds nuw %struct.NFAState, ptr %622, i32 0, i32 2
  %624 = getelementptr inbounds nuw %struct.anon.7, ptr %623, i32 0, i32 0
  %625 = load i32, ptr %624, align 8, !tbaa !93
  %626 = add i32 %625, 1
  store i32 %626, ptr %624, align 8, !tbaa !93
  %627 = zext i32 %625 to i64
  %628 = getelementptr inbounds nuw ptr, ptr %621, i64 %627
  store ptr %617, ptr %628, align 8, !tbaa !71
  br label %636

629:                                              ; preds = %609
  br label %630

630:                                              ; preds = %629, %608
  br label %631

631:                                              ; preds = %630
  %632 = load ptr, ptr %12, align 8, !tbaa !71
  %633 = getelementptr inbounds nuw %struct.NFAState, ptr %632, i32 0, i32 2
  %634 = load ptr, ptr %13, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %633, ptr noundef %634)
  br label %635

635:                                              ; preds = %631
  br label %636

636:                                              ; preds = %635, %616, %595, %563
  br label %637

637:                                              ; preds = %636
  %638 = load ptr, ptr %13, align 8, !tbaa !71
  %639 = getelementptr inbounds nuw %struct.NFAState, ptr %638, i32 0, i32 2
  %640 = getelementptr inbounds nuw %struct.anon.7, ptr %639, i32 0, i32 2
  %641 = load ptr, ptr %640, align 8, !tbaa !92
  %642 = icmp ne ptr %641, null
  br i1 %642, label %659, label %643

643:                                              ; preds = %637
  %644 = load ptr, ptr %12, align 8, !tbaa !71
  %645 = load ptr, ptr %13, align 8, !tbaa !71
  %646 = getelementptr inbounds nuw %struct.NFAState, ptr %645, i32 0, i32 2
  %647 = getelementptr inbounds nuw %struct.anon.7, ptr %646, i32 0, i32 3
  %648 = getelementptr inbounds [3 x ptr], ptr %647, i64 0, i64 0
  %649 = load ptr, ptr %13, align 8, !tbaa !71
  %650 = getelementptr inbounds nuw %struct.NFAState, ptr %649, i32 0, i32 2
  %651 = getelementptr inbounds nuw %struct.anon.7, ptr %650, i32 0, i32 2
  store ptr %648, ptr %651, align 8, !tbaa !92
  %652 = load ptr, ptr %13, align 8, !tbaa !71
  %653 = getelementptr inbounds nuw %struct.NFAState, ptr %652, i32 0, i32 2
  %654 = getelementptr inbounds nuw %struct.anon.7, ptr %653, i32 0, i32 0
  %655 = load i32, ptr %654, align 8, !tbaa !93
  %656 = add i32 %655, 1
  store i32 %656, ptr %654, align 8, !tbaa !93
  %657 = zext i32 %655 to i64
  %658 = getelementptr inbounds nuw ptr, ptr %648, i64 %657
  store ptr %644, ptr %658, align 8, !tbaa !71
  br label %716

659:                                              ; preds = %637
  %660 = load ptr, ptr %13, align 8, !tbaa !71
  %661 = getelementptr inbounds nuw %struct.NFAState, ptr %660, i32 0, i32 2
  %662 = getelementptr inbounds nuw %struct.anon.7, ptr %661, i32 0, i32 2
  %663 = load ptr, ptr %662, align 8, !tbaa !92
  %664 = load ptr, ptr %13, align 8, !tbaa !71
  %665 = getelementptr inbounds nuw %struct.NFAState, ptr %664, i32 0, i32 2
  %666 = getelementptr inbounds nuw %struct.anon.7, ptr %665, i32 0, i32 3
  %667 = getelementptr inbounds [3 x ptr], ptr %666, i64 0, i64 0
  %668 = icmp eq ptr %663, %667
  br i1 %668, label %669, label %689

669:                                              ; preds = %659
  %670 = load ptr, ptr %13, align 8, !tbaa !71
  %671 = getelementptr inbounds nuw %struct.NFAState, ptr %670, i32 0, i32 2
  %672 = getelementptr inbounds nuw %struct.anon.7, ptr %671, i32 0, i32 0
  %673 = load i32, ptr %672, align 8, !tbaa !93
  %674 = icmp ult i32 %673, 3
  br i1 %674, label %675, label %688

675:                                              ; preds = %669
  %676 = load ptr, ptr %12, align 8, !tbaa !71
  %677 = load ptr, ptr %13, align 8, !tbaa !71
  %678 = getelementptr inbounds nuw %struct.NFAState, ptr %677, i32 0, i32 2
  %679 = getelementptr inbounds nuw %struct.anon.7, ptr %678, i32 0, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !92
  %681 = load ptr, ptr %13, align 8, !tbaa !71
  %682 = getelementptr inbounds nuw %struct.NFAState, ptr %681, i32 0, i32 2
  %683 = getelementptr inbounds nuw %struct.anon.7, ptr %682, i32 0, i32 0
  %684 = load i32, ptr %683, align 8, !tbaa !93
  %685 = add i32 %684, 1
  store i32 %685, ptr %683, align 8, !tbaa !93
  %686 = zext i32 %684 to i64
  %687 = getelementptr inbounds nuw ptr, ptr %680, i64 %686
  store ptr %676, ptr %687, align 8, !tbaa !71
  br label %716

688:                                              ; preds = %669
  br label %710

689:                                              ; preds = %659
  %690 = load ptr, ptr %13, align 8, !tbaa !71
  %691 = getelementptr inbounds nuw %struct.NFAState, ptr %690, i32 0, i32 2
  %692 = getelementptr inbounds nuw %struct.anon.7, ptr %691, i32 0, i32 0
  %693 = load i32, ptr %692, align 8, !tbaa !93
  %694 = and i32 %693, 7
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %709

696:                                              ; preds = %689
  %697 = load ptr, ptr %12, align 8, !tbaa !71
  %698 = load ptr, ptr %13, align 8, !tbaa !71
  %699 = getelementptr inbounds nuw %struct.NFAState, ptr %698, i32 0, i32 2
  %700 = getelementptr inbounds nuw %struct.anon.7, ptr %699, i32 0, i32 2
  %701 = load ptr, ptr %700, align 8, !tbaa !92
  %702 = load ptr, ptr %13, align 8, !tbaa !71
  %703 = getelementptr inbounds nuw %struct.NFAState, ptr %702, i32 0, i32 2
  %704 = getelementptr inbounds nuw %struct.anon.7, ptr %703, i32 0, i32 0
  %705 = load i32, ptr %704, align 8, !tbaa !93
  %706 = add i32 %705, 1
  store i32 %706, ptr %704, align 8, !tbaa !93
  %707 = zext i32 %705 to i64
  %708 = getelementptr inbounds nuw ptr, ptr %701, i64 %707
  store ptr %697, ptr %708, align 8, !tbaa !71
  br label %716

709:                                              ; preds = %689
  br label %710

710:                                              ; preds = %709, %688
  br label %711

711:                                              ; preds = %710
  %712 = load ptr, ptr %13, align 8, !tbaa !71
  %713 = getelementptr inbounds nuw %struct.NFAState, ptr %712, i32 0, i32 2
  %714 = load ptr, ptr %12, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %713, ptr noundef %714)
  br label %715

715:                                              ; preds = %711
  br label %716

716:                                              ; preds = %715, %696, %675, %643
  br label %1400

717:                                              ; preds = %82
  br label %718

718:                                              ; preds = %717
  %719 = load ptr, ptr %13, align 8, !tbaa !71
  %720 = getelementptr inbounds nuw %struct.NFAState, ptr %719, i32 0, i32 2
  %721 = getelementptr inbounds nuw %struct.anon.7, ptr %720, i32 0, i32 2
  %722 = load ptr, ptr %721, align 8, !tbaa !92
  %723 = icmp ne ptr %722, null
  br i1 %723, label %740, label %724

724:                                              ; preds = %718
  %725 = load ptr, ptr %12, align 8, !tbaa !71
  %726 = load ptr, ptr %13, align 8, !tbaa !71
  %727 = getelementptr inbounds nuw %struct.NFAState, ptr %726, i32 0, i32 2
  %728 = getelementptr inbounds nuw %struct.anon.7, ptr %727, i32 0, i32 3
  %729 = getelementptr inbounds [3 x ptr], ptr %728, i64 0, i64 0
  %730 = load ptr, ptr %13, align 8, !tbaa !71
  %731 = getelementptr inbounds nuw %struct.NFAState, ptr %730, i32 0, i32 2
  %732 = getelementptr inbounds nuw %struct.anon.7, ptr %731, i32 0, i32 2
  store ptr %729, ptr %732, align 8, !tbaa !92
  %733 = load ptr, ptr %13, align 8, !tbaa !71
  %734 = getelementptr inbounds nuw %struct.NFAState, ptr %733, i32 0, i32 2
  %735 = getelementptr inbounds nuw %struct.anon.7, ptr %734, i32 0, i32 0
  %736 = load i32, ptr %735, align 8, !tbaa !93
  %737 = add i32 %736, 1
  store i32 %737, ptr %735, align 8, !tbaa !93
  %738 = zext i32 %736 to i64
  %739 = getelementptr inbounds nuw ptr, ptr %729, i64 %738
  store ptr %725, ptr %739, align 8, !tbaa !71
  br label %797

740:                                              ; preds = %718
  %741 = load ptr, ptr %13, align 8, !tbaa !71
  %742 = getelementptr inbounds nuw %struct.NFAState, ptr %741, i32 0, i32 2
  %743 = getelementptr inbounds nuw %struct.anon.7, ptr %742, i32 0, i32 2
  %744 = load ptr, ptr %743, align 8, !tbaa !92
  %745 = load ptr, ptr %13, align 8, !tbaa !71
  %746 = getelementptr inbounds nuw %struct.NFAState, ptr %745, i32 0, i32 2
  %747 = getelementptr inbounds nuw %struct.anon.7, ptr %746, i32 0, i32 3
  %748 = getelementptr inbounds [3 x ptr], ptr %747, i64 0, i64 0
  %749 = icmp eq ptr %744, %748
  br i1 %749, label %750, label %770

750:                                              ; preds = %740
  %751 = load ptr, ptr %13, align 8, !tbaa !71
  %752 = getelementptr inbounds nuw %struct.NFAState, ptr %751, i32 0, i32 2
  %753 = getelementptr inbounds nuw %struct.anon.7, ptr %752, i32 0, i32 0
  %754 = load i32, ptr %753, align 8, !tbaa !93
  %755 = icmp ult i32 %754, 3
  br i1 %755, label %756, label %769

756:                                              ; preds = %750
  %757 = load ptr, ptr %12, align 8, !tbaa !71
  %758 = load ptr, ptr %13, align 8, !tbaa !71
  %759 = getelementptr inbounds nuw %struct.NFAState, ptr %758, i32 0, i32 2
  %760 = getelementptr inbounds nuw %struct.anon.7, ptr %759, i32 0, i32 2
  %761 = load ptr, ptr %760, align 8, !tbaa !92
  %762 = load ptr, ptr %13, align 8, !tbaa !71
  %763 = getelementptr inbounds nuw %struct.NFAState, ptr %762, i32 0, i32 2
  %764 = getelementptr inbounds nuw %struct.anon.7, ptr %763, i32 0, i32 0
  %765 = load i32, ptr %764, align 8, !tbaa !93
  %766 = add i32 %765, 1
  store i32 %766, ptr %764, align 8, !tbaa !93
  %767 = zext i32 %765 to i64
  %768 = getelementptr inbounds nuw ptr, ptr %761, i64 %767
  store ptr %757, ptr %768, align 8, !tbaa !71
  br label %797

769:                                              ; preds = %750
  br label %791

770:                                              ; preds = %740
  %771 = load ptr, ptr %13, align 8, !tbaa !71
  %772 = getelementptr inbounds nuw %struct.NFAState, ptr %771, i32 0, i32 2
  %773 = getelementptr inbounds nuw %struct.anon.7, ptr %772, i32 0, i32 0
  %774 = load i32, ptr %773, align 8, !tbaa !93
  %775 = and i32 %774, 7
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %790

777:                                              ; preds = %770
  %778 = load ptr, ptr %12, align 8, !tbaa !71
  %779 = load ptr, ptr %13, align 8, !tbaa !71
  %780 = getelementptr inbounds nuw %struct.NFAState, ptr %779, i32 0, i32 2
  %781 = getelementptr inbounds nuw %struct.anon.7, ptr %780, i32 0, i32 2
  %782 = load ptr, ptr %781, align 8, !tbaa !92
  %783 = load ptr, ptr %13, align 8, !tbaa !71
  %784 = getelementptr inbounds nuw %struct.NFAState, ptr %783, i32 0, i32 2
  %785 = getelementptr inbounds nuw %struct.anon.7, ptr %784, i32 0, i32 0
  %786 = load i32, ptr %785, align 8, !tbaa !93
  %787 = add i32 %786, 1
  store i32 %787, ptr %785, align 8, !tbaa !93
  %788 = zext i32 %786 to i64
  %789 = getelementptr inbounds nuw ptr, ptr %782, i64 %788
  store ptr %778, ptr %789, align 8, !tbaa !71
  br label %797

790:                                              ; preds = %770
  br label %791

791:                                              ; preds = %790, %769
  br label %792

792:                                              ; preds = %791
  %793 = load ptr, ptr %13, align 8, !tbaa !71
  %794 = getelementptr inbounds nuw %struct.NFAState, ptr %793, i32 0, i32 2
  %795 = load ptr, ptr %12, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %794, ptr noundef %795)
  br label %796

796:                                              ; preds = %792
  br label %797

797:                                              ; preds = %796, %777, %756, %724
  br label %1400

798:                                              ; preds = %82
  %799 = load ptr, ptr %11, align 8, !tbaa !82
  %800 = getelementptr inbounds nuw i8, ptr %799, i32 1
  store ptr %800, ptr %11, align 8, !tbaa !82
  %801 = load i8, ptr %799, align 1, !tbaa !63
  store i8 %801, ptr %9, align 1, !tbaa !63
  %802 = load i8, ptr %9, align 1, !tbaa !63
  %803 = icmp ne i8 %802, 0
  br i1 %803, label %805, label %804

804:                                              ; preds = %798
  br label %1485

805:                                              ; preds = %798
  br label %806

806:                                              ; preds = %82, %805
  %807 = load ptr, ptr %5, align 8, !tbaa !8
  %808 = getelementptr inbounds nuw %struct.LexState, ptr %807, i32 0, i32 4
  %809 = load i32, ptr %808, align 8, !tbaa !94
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %822

811:                                              ; preds = %806
  %812 = call ptr @__ctype_b_loc() #8
  %813 = load ptr, ptr %812, align 8, !tbaa !84
  %814 = load i8, ptr %9, align 1, !tbaa !63
  %815 = zext i8 %814 to i32
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i16, ptr %813, i64 %816
  %818 = load i16, ptr %817, align 2, !tbaa !86
  %819 = zext i16 %818 to i32
  %820 = and i32 %819, 1024
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %946, label %822

822:                                              ; preds = %811, %806
  br label %823

823:                                              ; preds = %822
  %824 = load ptr, ptr %13, align 8, !tbaa !71
  %825 = getelementptr inbounds nuw %struct.NFAState, ptr %824, i32 0, i32 1
  %826 = load i8, ptr %9, align 1, !tbaa !63
  %827 = zext i8 %826 to i64
  %828 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %825, i64 0, i64 %827
  %829 = getelementptr inbounds nuw %struct.anon.6, ptr %828, i32 0, i32 2
  %830 = load ptr, ptr %829, align 8, !tbaa !75
  %831 = icmp ne ptr %830, null
  br i1 %831, label %858, label %832

832:                                              ; preds = %823
  %833 = load ptr, ptr %5, align 8, !tbaa !8
  %834 = call ptr @new_NFAState(ptr noundef %833)
  store ptr %834, ptr %14, align 8, !tbaa !71
  %835 = load ptr, ptr %13, align 8, !tbaa !71
  %836 = getelementptr inbounds nuw %struct.NFAState, ptr %835, i32 0, i32 1
  %837 = load i8, ptr %9, align 1, !tbaa !63
  %838 = zext i8 %837 to i64
  %839 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %836, i64 0, i64 %838
  %840 = getelementptr inbounds nuw %struct.anon.6, ptr %839, i32 0, i32 3
  %841 = getelementptr inbounds [3 x ptr], ptr %840, i64 0, i64 0
  %842 = load ptr, ptr %13, align 8, !tbaa !71
  %843 = getelementptr inbounds nuw %struct.NFAState, ptr %842, i32 0, i32 1
  %844 = load i8, ptr %9, align 1, !tbaa !63
  %845 = zext i8 %844 to i64
  %846 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %843, i64 0, i64 %845
  %847 = getelementptr inbounds nuw %struct.anon.6, ptr %846, i32 0, i32 2
  store ptr %841, ptr %847, align 8, !tbaa !75
  %848 = load ptr, ptr %13, align 8, !tbaa !71
  %849 = getelementptr inbounds nuw %struct.NFAState, ptr %848, i32 0, i32 1
  %850 = load i8, ptr %9, align 1, !tbaa !63
  %851 = zext i8 %850 to i64
  %852 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %849, i64 0, i64 %851
  %853 = getelementptr inbounds nuw %struct.anon.6, ptr %852, i32 0, i32 0
  %854 = load i32, ptr %853, align 8, !tbaa !74
  %855 = add i32 %854, 1
  store i32 %855, ptr %853, align 8, !tbaa !74
  %856 = zext i32 %854 to i64
  %857 = getelementptr inbounds nuw ptr, ptr %841, i64 %856
  store ptr %834, ptr %857, align 8, !tbaa !71
  br label %945

858:                                              ; preds = %823
  %859 = load ptr, ptr %13, align 8, !tbaa !71
  %860 = getelementptr inbounds nuw %struct.NFAState, ptr %859, i32 0, i32 1
  %861 = load i8, ptr %9, align 1, !tbaa !63
  %862 = zext i8 %861 to i64
  %863 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %860, i64 0, i64 %862
  %864 = getelementptr inbounds nuw %struct.anon.6, ptr %863, i32 0, i32 2
  %865 = load ptr, ptr %864, align 8, !tbaa !75
  %866 = load ptr, ptr %13, align 8, !tbaa !71
  %867 = getelementptr inbounds nuw %struct.NFAState, ptr %866, i32 0, i32 1
  %868 = load i8, ptr %9, align 1, !tbaa !63
  %869 = zext i8 %868 to i64
  %870 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %867, i64 0, i64 %869
  %871 = getelementptr inbounds nuw %struct.anon.6, ptr %870, i32 0, i32 3
  %872 = getelementptr inbounds [3 x ptr], ptr %871, i64 0, i64 0
  %873 = icmp eq ptr %865, %872
  br i1 %873, label %874, label %904

874:                                              ; preds = %858
  %875 = load ptr, ptr %13, align 8, !tbaa !71
  %876 = getelementptr inbounds nuw %struct.NFAState, ptr %875, i32 0, i32 1
  %877 = load i8, ptr %9, align 1, !tbaa !63
  %878 = zext i8 %877 to i64
  %879 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %876, i64 0, i64 %878
  %880 = getelementptr inbounds nuw %struct.anon.6, ptr %879, i32 0, i32 0
  %881 = load i32, ptr %880, align 8, !tbaa !74
  %882 = icmp ult i32 %881, 3
  br i1 %882, label %883, label %903

883:                                              ; preds = %874
  %884 = load ptr, ptr %5, align 8, !tbaa !8
  %885 = call ptr @new_NFAState(ptr noundef %884)
  store ptr %885, ptr %14, align 8, !tbaa !71
  %886 = load ptr, ptr %13, align 8, !tbaa !71
  %887 = getelementptr inbounds nuw %struct.NFAState, ptr %886, i32 0, i32 1
  %888 = load i8, ptr %9, align 1, !tbaa !63
  %889 = zext i8 %888 to i64
  %890 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %887, i64 0, i64 %889
  %891 = getelementptr inbounds nuw %struct.anon.6, ptr %890, i32 0, i32 2
  %892 = load ptr, ptr %891, align 8, !tbaa !75
  %893 = load ptr, ptr %13, align 8, !tbaa !71
  %894 = getelementptr inbounds nuw %struct.NFAState, ptr %893, i32 0, i32 1
  %895 = load i8, ptr %9, align 1, !tbaa !63
  %896 = zext i8 %895 to i64
  %897 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %894, i64 0, i64 %896
  %898 = getelementptr inbounds nuw %struct.anon.6, ptr %897, i32 0, i32 0
  %899 = load i32, ptr %898, align 8, !tbaa !74
  %900 = add i32 %899, 1
  store i32 %900, ptr %898, align 8, !tbaa !74
  %901 = zext i32 %899 to i64
  %902 = getelementptr inbounds nuw ptr, ptr %892, i64 %901
  store ptr %885, ptr %902, align 8, !tbaa !71
  br label %945

903:                                              ; preds = %874
  br label %935

904:                                              ; preds = %858
  %905 = load ptr, ptr %13, align 8, !tbaa !71
  %906 = getelementptr inbounds nuw %struct.NFAState, ptr %905, i32 0, i32 1
  %907 = load i8, ptr %9, align 1, !tbaa !63
  %908 = zext i8 %907 to i64
  %909 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %906, i64 0, i64 %908
  %910 = getelementptr inbounds nuw %struct.anon.6, ptr %909, i32 0, i32 0
  %911 = load i32, ptr %910, align 8, !tbaa !74
  %912 = and i32 %911, 7
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %934

914:                                              ; preds = %904
  %915 = load ptr, ptr %5, align 8, !tbaa !8
  %916 = call ptr @new_NFAState(ptr noundef %915)
  store ptr %916, ptr %14, align 8, !tbaa !71
  %917 = load ptr, ptr %13, align 8, !tbaa !71
  %918 = getelementptr inbounds nuw %struct.NFAState, ptr %917, i32 0, i32 1
  %919 = load i8, ptr %9, align 1, !tbaa !63
  %920 = zext i8 %919 to i64
  %921 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %918, i64 0, i64 %920
  %922 = getelementptr inbounds nuw %struct.anon.6, ptr %921, i32 0, i32 2
  %923 = load ptr, ptr %922, align 8, !tbaa !75
  %924 = load ptr, ptr %13, align 8, !tbaa !71
  %925 = getelementptr inbounds nuw %struct.NFAState, ptr %924, i32 0, i32 1
  %926 = load i8, ptr %9, align 1, !tbaa !63
  %927 = zext i8 %926 to i64
  %928 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %925, i64 0, i64 %927
  %929 = getelementptr inbounds nuw %struct.anon.6, ptr %928, i32 0, i32 0
  %930 = load i32, ptr %929, align 8, !tbaa !74
  %931 = add i32 %930, 1
  store i32 %931, ptr %929, align 8, !tbaa !74
  %932 = zext i32 %930 to i64
  %933 = getelementptr inbounds nuw ptr, ptr %923, i64 %932
  store ptr %916, ptr %933, align 8, !tbaa !71
  br label %945

934:                                              ; preds = %904
  br label %935

935:                                              ; preds = %934, %903
  br label %936

936:                                              ; preds = %935
  %937 = load ptr, ptr %13, align 8, !tbaa !71
  %938 = getelementptr inbounds nuw %struct.NFAState, ptr %937, i32 0, i32 1
  %939 = load i8, ptr %9, align 1, !tbaa !63
  %940 = zext i8 %939 to i64
  %941 = getelementptr inbounds nuw [256 x %struct.anon.6], ptr %938, i64 0, i64 %940
  %942 = load ptr, ptr %5, align 8, !tbaa !8
  %943 = call ptr @new_NFAState(ptr noundef %942)
  store ptr %943, ptr %14, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %941, ptr noundef %943)
  br label %944

944:                                              ; preds = %936
  br label %945

945:                                              ; preds = %944, %914, %883, %832
  br label %1397

946:                                              ; preds = %811
  br label %947

947:                                              ; preds = %946
  %948 = load ptr, ptr %13, align 8, !tbaa !71
  %949 = getelementptr inbounds nuw %struct.NFAState, ptr %948, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #7
  %950 = call ptr @__ctype_tolower_loc() #8
  %951 = load ptr, ptr %950, align 8, !tbaa !88
  %952 = load i8, ptr %9, align 1, !tbaa !63
  %953 = zext i8 %952 to i32
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds i32, ptr %951, i64 %954
  %956 = load i32, ptr %955, align 4, !tbaa !10
  store i32 %956, ptr %19, align 4, !tbaa !10
  %957 = load i32, ptr %19, align 4, !tbaa !10
  store i32 %957, ptr %20, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #7
  %958 = load i32, ptr %20, align 4, !tbaa !10
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [256 x %struct.anon.6], ptr %949, i64 0, i64 %959
  %961 = getelementptr inbounds nuw %struct.anon.6, ptr %960, i32 0, i32 2
  %962 = load ptr, ptr %961, align 8, !tbaa !75
  %963 = icmp ne ptr %962, null
  br i1 %963, label %1014, label %964

964:                                              ; preds = %947
  %965 = load ptr, ptr %5, align 8, !tbaa !8
  %966 = call ptr @new_NFAState(ptr noundef %965)
  store ptr %966, ptr %14, align 8, !tbaa !71
  %967 = load ptr, ptr %13, align 8, !tbaa !71
  %968 = getelementptr inbounds nuw %struct.NFAState, ptr %967, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #7
  %969 = call ptr @__ctype_tolower_loc() #8
  %970 = load ptr, ptr %969, align 8, !tbaa !88
  %971 = load i8, ptr %9, align 1, !tbaa !63
  %972 = zext i8 %971 to i32
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds i32, ptr %970, i64 %973
  %975 = load i32, ptr %974, align 4, !tbaa !10
  store i32 %975, ptr %21, align 4, !tbaa !10
  %976 = load i32, ptr %21, align 4, !tbaa !10
  store i32 %976, ptr %22, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #7
  %977 = load i32, ptr %22, align 4, !tbaa !10
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds [256 x %struct.anon.6], ptr %968, i64 0, i64 %978
  %980 = getelementptr inbounds nuw %struct.anon.6, ptr %979, i32 0, i32 3
  %981 = getelementptr inbounds [3 x ptr], ptr %980, i64 0, i64 0
  %982 = load ptr, ptr %13, align 8, !tbaa !71
  %983 = getelementptr inbounds nuw %struct.NFAState, ptr %982, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %23) #7
  %984 = call ptr @__ctype_tolower_loc() #8
  %985 = load ptr, ptr %984, align 8, !tbaa !88
  %986 = load i8, ptr %9, align 1, !tbaa !63
  %987 = zext i8 %986 to i32
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds i32, ptr %985, i64 %988
  %990 = load i32, ptr %989, align 4, !tbaa !10
  store i32 %990, ptr %23, align 4, !tbaa !10
  %991 = load i32, ptr %23, align 4, !tbaa !10
  store i32 %991, ptr %24, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %23) #7
  %992 = load i32, ptr %24, align 4, !tbaa !10
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [256 x %struct.anon.6], ptr %983, i64 0, i64 %993
  %995 = getelementptr inbounds nuw %struct.anon.6, ptr %994, i32 0, i32 2
  store ptr %981, ptr %995, align 8, !tbaa !75
  %996 = load ptr, ptr %13, align 8, !tbaa !71
  %997 = getelementptr inbounds nuw %struct.NFAState, ptr %996, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %25) #7
  %998 = call ptr @__ctype_tolower_loc() #8
  %999 = load ptr, ptr %998, align 8, !tbaa !88
  %1000 = load i8, ptr %9, align 1, !tbaa !63
  %1001 = zext i8 %1000 to i32
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds i32, ptr %999, i64 %1002
  %1004 = load i32, ptr %1003, align 4, !tbaa !10
  store i32 %1004, ptr %25, align 4, !tbaa !10
  %1005 = load i32, ptr %25, align 4, !tbaa !10
  store i32 %1005, ptr %26, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %25) #7
  %1006 = load i32, ptr %26, align 4, !tbaa !10
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [256 x %struct.anon.6], ptr %997, i64 0, i64 %1007
  %1009 = getelementptr inbounds nuw %struct.anon.6, ptr %1008, i32 0, i32 0
  %1010 = load i32, ptr %1009, align 8, !tbaa !74
  %1011 = add i32 %1010, 1
  store i32 %1011, ptr %1009, align 8, !tbaa !74
  %1012 = zext i32 %1010 to i64
  %1013 = getelementptr inbounds nuw ptr, ptr %981, i64 %1012
  store ptr %966, ptr %1013, align 8, !tbaa !71
  br label %1173

1014:                                             ; preds = %947
  %1015 = load ptr, ptr %13, align 8, !tbaa !71
  %1016 = getelementptr inbounds nuw %struct.NFAState, ptr %1015, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %27) #7
  %1017 = call ptr @__ctype_tolower_loc() #8
  %1018 = load ptr, ptr %1017, align 8, !tbaa !88
  %1019 = load i8, ptr %9, align 1, !tbaa !63
  %1020 = zext i8 %1019 to i32
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds i32, ptr %1018, i64 %1021
  %1023 = load i32, ptr %1022, align 4, !tbaa !10
  store i32 %1023, ptr %27, align 4, !tbaa !10
  %1024 = load i32, ptr %27, align 4, !tbaa !10
  store i32 %1024, ptr %28, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %27) #7
  %1025 = load i32, ptr %28, align 4, !tbaa !10
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [256 x %struct.anon.6], ptr %1016, i64 0, i64 %1026
  %1028 = getelementptr inbounds nuw %struct.anon.6, ptr %1027, i32 0, i32 2
  %1029 = load ptr, ptr %1028, align 8, !tbaa !75
  %1030 = load ptr, ptr %13, align 8, !tbaa !71
  %1031 = getelementptr inbounds nuw %struct.NFAState, ptr %1030, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %29) #7
  %1032 = call ptr @__ctype_tolower_loc() #8
  %1033 = load ptr, ptr %1032, align 8, !tbaa !88
  %1034 = load i8, ptr %9, align 1, !tbaa !63
  %1035 = zext i8 %1034 to i32
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds i32, ptr %1033, i64 %1036
  %1038 = load i32, ptr %1037, align 4, !tbaa !10
  store i32 %1038, ptr %29, align 4, !tbaa !10
  %1039 = load i32, ptr %29, align 4, !tbaa !10
  store i32 %1039, ptr %30, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %29) #7
  %1040 = load i32, ptr %30, align 4, !tbaa !10
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [256 x %struct.anon.6], ptr %1031, i64 0, i64 %1041
  %1043 = getelementptr inbounds nuw %struct.anon.6, ptr %1042, i32 0, i32 3
  %1044 = getelementptr inbounds [3 x ptr], ptr %1043, i64 0, i64 0
  %1045 = icmp eq ptr %1029, %1044
  br i1 %1045, label %1046, label %1100

1046:                                             ; preds = %1014
  %1047 = load ptr, ptr %13, align 8, !tbaa !71
  %1048 = getelementptr inbounds nuw %struct.NFAState, ptr %1047, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %31) #7
  %1049 = call ptr @__ctype_tolower_loc() #8
  %1050 = load ptr, ptr %1049, align 8, !tbaa !88
  %1051 = load i8, ptr %9, align 1, !tbaa !63
  %1052 = zext i8 %1051 to i32
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds i32, ptr %1050, i64 %1053
  %1055 = load i32, ptr %1054, align 4, !tbaa !10
  store i32 %1055, ptr %31, align 4, !tbaa !10
  %1056 = load i32, ptr %31, align 4, !tbaa !10
  store i32 %1056, ptr %32, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %31) #7
  %1057 = load i32, ptr %32, align 4, !tbaa !10
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [256 x %struct.anon.6], ptr %1048, i64 0, i64 %1058
  %1060 = getelementptr inbounds nuw %struct.anon.6, ptr %1059, i32 0, i32 0
  %1061 = load i32, ptr %1060, align 8, !tbaa !74
  %1062 = icmp ult i32 %1061, 3
  br i1 %1062, label %1063, label %1099

1063:                                             ; preds = %1046
  %1064 = load ptr, ptr %5, align 8, !tbaa !8
  %1065 = call ptr @new_NFAState(ptr noundef %1064)
  store ptr %1065, ptr %14, align 8, !tbaa !71
  %1066 = load ptr, ptr %13, align 8, !tbaa !71
  %1067 = getelementptr inbounds nuw %struct.NFAState, ptr %1066, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %33) #7
  %1068 = call ptr @__ctype_tolower_loc() #8
  %1069 = load ptr, ptr %1068, align 8, !tbaa !88
  %1070 = load i8, ptr %9, align 1, !tbaa !63
  %1071 = zext i8 %1070 to i32
  %1072 = sext i32 %1071 to i64
  %1073 = getelementptr inbounds i32, ptr %1069, i64 %1072
  %1074 = load i32, ptr %1073, align 4, !tbaa !10
  store i32 %1074, ptr %33, align 4, !tbaa !10
  %1075 = load i32, ptr %33, align 4, !tbaa !10
  store i32 %1075, ptr %34, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %33) #7
  %1076 = load i32, ptr %34, align 4, !tbaa !10
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [256 x %struct.anon.6], ptr %1067, i64 0, i64 %1077
  %1079 = getelementptr inbounds nuw %struct.anon.6, ptr %1078, i32 0, i32 2
  %1080 = load ptr, ptr %1079, align 8, !tbaa !75
  %1081 = load ptr, ptr %13, align 8, !tbaa !71
  %1082 = getelementptr inbounds nuw %struct.NFAState, ptr %1081, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %35) #7
  %1083 = call ptr @__ctype_tolower_loc() #8
  %1084 = load ptr, ptr %1083, align 8, !tbaa !88
  %1085 = load i8, ptr %9, align 1, !tbaa !63
  %1086 = zext i8 %1085 to i32
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds i32, ptr %1084, i64 %1087
  %1089 = load i32, ptr %1088, align 4, !tbaa !10
  store i32 %1089, ptr %35, align 4, !tbaa !10
  %1090 = load i32, ptr %35, align 4, !tbaa !10
  store i32 %1090, ptr %36, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %35) #7
  %1091 = load i32, ptr %36, align 4, !tbaa !10
  %1092 = sext i32 %1091 to i64
  %1093 = getelementptr inbounds [256 x %struct.anon.6], ptr %1082, i64 0, i64 %1092
  %1094 = getelementptr inbounds nuw %struct.anon.6, ptr %1093, i32 0, i32 0
  %1095 = load i32, ptr %1094, align 8, !tbaa !74
  %1096 = add i32 %1095, 1
  store i32 %1096, ptr %1094, align 8, !tbaa !74
  %1097 = zext i32 %1095 to i64
  %1098 = getelementptr inbounds nuw ptr, ptr %1080, i64 %1097
  store ptr %1065, ptr %1098, align 8, !tbaa !71
  br label %1173

1099:                                             ; preds = %1046
  br label %1155

1100:                                             ; preds = %1014
  %1101 = load ptr, ptr %13, align 8, !tbaa !71
  %1102 = getelementptr inbounds nuw %struct.NFAState, ptr %1101, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %37) #7
  %1103 = call ptr @__ctype_tolower_loc() #8
  %1104 = load ptr, ptr %1103, align 8, !tbaa !88
  %1105 = load i8, ptr %9, align 1, !tbaa !63
  %1106 = zext i8 %1105 to i32
  %1107 = sext i32 %1106 to i64
  %1108 = getelementptr inbounds i32, ptr %1104, i64 %1107
  %1109 = load i32, ptr %1108, align 4, !tbaa !10
  store i32 %1109, ptr %37, align 4, !tbaa !10
  %1110 = load i32, ptr %37, align 4, !tbaa !10
  store i32 %1110, ptr %38, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %37) #7
  %1111 = load i32, ptr %38, align 4, !tbaa !10
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds [256 x %struct.anon.6], ptr %1102, i64 0, i64 %1112
  %1114 = getelementptr inbounds nuw %struct.anon.6, ptr %1113, i32 0, i32 0
  %1115 = load i32, ptr %1114, align 8, !tbaa !74
  %1116 = and i32 %1115, 7
  %1117 = icmp ne i32 %1116, 0
  br i1 %1117, label %1118, label %1154

1118:                                             ; preds = %1100
  %1119 = load ptr, ptr %5, align 8, !tbaa !8
  %1120 = call ptr @new_NFAState(ptr noundef %1119)
  store ptr %1120, ptr %14, align 8, !tbaa !71
  %1121 = load ptr, ptr %13, align 8, !tbaa !71
  %1122 = getelementptr inbounds nuw %struct.NFAState, ptr %1121, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %39) #7
  %1123 = call ptr @__ctype_tolower_loc() #8
  %1124 = load ptr, ptr %1123, align 8, !tbaa !88
  %1125 = load i8, ptr %9, align 1, !tbaa !63
  %1126 = zext i8 %1125 to i32
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds i32, ptr %1124, i64 %1127
  %1129 = load i32, ptr %1128, align 4, !tbaa !10
  store i32 %1129, ptr %39, align 4, !tbaa !10
  %1130 = load i32, ptr %39, align 4, !tbaa !10
  store i32 %1130, ptr %40, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %39) #7
  %1131 = load i32, ptr %40, align 4, !tbaa !10
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [256 x %struct.anon.6], ptr %1122, i64 0, i64 %1132
  %1134 = getelementptr inbounds nuw %struct.anon.6, ptr %1133, i32 0, i32 2
  %1135 = load ptr, ptr %1134, align 8, !tbaa !75
  %1136 = load ptr, ptr %13, align 8, !tbaa !71
  %1137 = getelementptr inbounds nuw %struct.NFAState, ptr %1136, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %41) #7
  %1138 = call ptr @__ctype_tolower_loc() #8
  %1139 = load ptr, ptr %1138, align 8, !tbaa !88
  %1140 = load i8, ptr %9, align 1, !tbaa !63
  %1141 = zext i8 %1140 to i32
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds i32, ptr %1139, i64 %1142
  %1144 = load i32, ptr %1143, align 4, !tbaa !10
  store i32 %1144, ptr %41, align 4, !tbaa !10
  %1145 = load i32, ptr %41, align 4, !tbaa !10
  store i32 %1145, ptr %42, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %41) #7
  %1146 = load i32, ptr %42, align 4, !tbaa !10
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds [256 x %struct.anon.6], ptr %1137, i64 0, i64 %1147
  %1149 = getelementptr inbounds nuw %struct.anon.6, ptr %1148, i32 0, i32 0
  %1150 = load i32, ptr %1149, align 8, !tbaa !74
  %1151 = add i32 %1150, 1
  store i32 %1151, ptr %1149, align 8, !tbaa !74
  %1152 = zext i32 %1150 to i64
  %1153 = getelementptr inbounds nuw ptr, ptr %1135, i64 %1152
  store ptr %1120, ptr %1153, align 8, !tbaa !71
  br label %1173

1154:                                             ; preds = %1100
  br label %1155

1155:                                             ; preds = %1154, %1099
  br label %1156

1156:                                             ; preds = %1155
  %1157 = load ptr, ptr %13, align 8, !tbaa !71
  %1158 = getelementptr inbounds nuw %struct.NFAState, ptr %1157, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %43) #7
  %1159 = call ptr @__ctype_tolower_loc() #8
  %1160 = load ptr, ptr %1159, align 8, !tbaa !88
  %1161 = load i8, ptr %9, align 1, !tbaa !63
  %1162 = zext i8 %1161 to i32
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds i32, ptr %1160, i64 %1163
  %1165 = load i32, ptr %1164, align 4, !tbaa !10
  store i32 %1165, ptr %43, align 4, !tbaa !10
  %1166 = load i32, ptr %43, align 4, !tbaa !10
  store i32 %1166, ptr %44, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %43) #7
  %1167 = load i32, ptr %44, align 4, !tbaa !10
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds [256 x %struct.anon.6], ptr %1158, i64 0, i64 %1168
  %1170 = load ptr, ptr %5, align 8, !tbaa !8
  %1171 = call ptr @new_NFAState(ptr noundef %1170)
  store ptr %1171, ptr %14, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %1169, ptr noundef %1171)
  br label %1172

1172:                                             ; preds = %1156
  br label %1173

1173:                                             ; preds = %1172, %1118, %1063, %964
  br label %1174

1174:                                             ; preds = %1173
  %1175 = load ptr, ptr %13, align 8, !tbaa !71
  %1176 = getelementptr inbounds nuw %struct.NFAState, ptr %1175, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %45) #7
  %1177 = call ptr @__ctype_toupper_loc() #8
  %1178 = load ptr, ptr %1177, align 8, !tbaa !88
  %1179 = load i8, ptr %9, align 1, !tbaa !63
  %1180 = zext i8 %1179 to i32
  %1181 = sext i32 %1180 to i64
  %1182 = getelementptr inbounds i32, ptr %1178, i64 %1181
  %1183 = load i32, ptr %1182, align 4, !tbaa !10
  store i32 %1183, ptr %45, align 4, !tbaa !10
  %1184 = load i32, ptr %45, align 4, !tbaa !10
  store i32 %1184, ptr %46, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %45) #7
  %1185 = load i32, ptr %46, align 4, !tbaa !10
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds [256 x %struct.anon.6], ptr %1176, i64 0, i64 %1186
  %1188 = getelementptr inbounds nuw %struct.anon.6, ptr %1187, i32 0, i32 2
  %1189 = load ptr, ptr %1188, align 8, !tbaa !75
  %1190 = icmp ne ptr %1189, null
  br i1 %1190, label %1240, label %1191

1191:                                             ; preds = %1174
  %1192 = load ptr, ptr %14, align 8, !tbaa !71
  %1193 = load ptr, ptr %13, align 8, !tbaa !71
  %1194 = getelementptr inbounds nuw %struct.NFAState, ptr %1193, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %47) #7
  %1195 = call ptr @__ctype_toupper_loc() #8
  %1196 = load ptr, ptr %1195, align 8, !tbaa !88
  %1197 = load i8, ptr %9, align 1, !tbaa !63
  %1198 = zext i8 %1197 to i32
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds i32, ptr %1196, i64 %1199
  %1201 = load i32, ptr %1200, align 4, !tbaa !10
  store i32 %1201, ptr %47, align 4, !tbaa !10
  %1202 = load i32, ptr %47, align 4, !tbaa !10
  store i32 %1202, ptr %48, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %47) #7
  %1203 = load i32, ptr %48, align 4, !tbaa !10
  %1204 = sext i32 %1203 to i64
  %1205 = getelementptr inbounds [256 x %struct.anon.6], ptr %1194, i64 0, i64 %1204
  %1206 = getelementptr inbounds nuw %struct.anon.6, ptr %1205, i32 0, i32 3
  %1207 = getelementptr inbounds [3 x ptr], ptr %1206, i64 0, i64 0
  %1208 = load ptr, ptr %13, align 8, !tbaa !71
  %1209 = getelementptr inbounds nuw %struct.NFAState, ptr %1208, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %49) #7
  %1210 = call ptr @__ctype_toupper_loc() #8
  %1211 = load ptr, ptr %1210, align 8, !tbaa !88
  %1212 = load i8, ptr %9, align 1, !tbaa !63
  %1213 = zext i8 %1212 to i32
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds i32, ptr %1211, i64 %1214
  %1216 = load i32, ptr %1215, align 4, !tbaa !10
  store i32 %1216, ptr %49, align 4, !tbaa !10
  %1217 = load i32, ptr %49, align 4, !tbaa !10
  store i32 %1217, ptr %50, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %49) #7
  %1218 = load i32, ptr %50, align 4, !tbaa !10
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds [256 x %struct.anon.6], ptr %1209, i64 0, i64 %1219
  %1221 = getelementptr inbounds nuw %struct.anon.6, ptr %1220, i32 0, i32 2
  store ptr %1207, ptr %1221, align 8, !tbaa !75
  %1222 = load ptr, ptr %13, align 8, !tbaa !71
  %1223 = getelementptr inbounds nuw %struct.NFAState, ptr %1222, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %51) #7
  %1224 = call ptr @__ctype_toupper_loc() #8
  %1225 = load ptr, ptr %1224, align 8, !tbaa !88
  %1226 = load i8, ptr %9, align 1, !tbaa !63
  %1227 = zext i8 %1226 to i32
  %1228 = sext i32 %1227 to i64
  %1229 = getelementptr inbounds i32, ptr %1225, i64 %1228
  %1230 = load i32, ptr %1229, align 4, !tbaa !10
  store i32 %1230, ptr %51, align 4, !tbaa !10
  %1231 = load i32, ptr %51, align 4, !tbaa !10
  store i32 %1231, ptr %52, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %51) #7
  %1232 = load i32, ptr %52, align 4, !tbaa !10
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds [256 x %struct.anon.6], ptr %1223, i64 0, i64 %1233
  %1235 = getelementptr inbounds nuw %struct.anon.6, ptr %1234, i32 0, i32 0
  %1236 = load i32, ptr %1235, align 8, !tbaa !74
  %1237 = add i32 %1236, 1
  store i32 %1237, ptr %1235, align 8, !tbaa !74
  %1238 = zext i32 %1236 to i64
  %1239 = getelementptr inbounds nuw ptr, ptr %1207, i64 %1238
  store ptr %1192, ptr %1239, align 8, !tbaa !71
  br label %1396

1240:                                             ; preds = %1174
  %1241 = load ptr, ptr %13, align 8, !tbaa !71
  %1242 = getelementptr inbounds nuw %struct.NFAState, ptr %1241, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %53) #7
  %1243 = call ptr @__ctype_toupper_loc() #8
  %1244 = load ptr, ptr %1243, align 8, !tbaa !88
  %1245 = load i8, ptr %9, align 1, !tbaa !63
  %1246 = zext i8 %1245 to i32
  %1247 = sext i32 %1246 to i64
  %1248 = getelementptr inbounds i32, ptr %1244, i64 %1247
  %1249 = load i32, ptr %1248, align 4, !tbaa !10
  store i32 %1249, ptr %53, align 4, !tbaa !10
  %1250 = load i32, ptr %53, align 4, !tbaa !10
  store i32 %1250, ptr %54, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %53) #7
  %1251 = load i32, ptr %54, align 4, !tbaa !10
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds [256 x %struct.anon.6], ptr %1242, i64 0, i64 %1252
  %1254 = getelementptr inbounds nuw %struct.anon.6, ptr %1253, i32 0, i32 2
  %1255 = load ptr, ptr %1254, align 8, !tbaa !75
  %1256 = load ptr, ptr %13, align 8, !tbaa !71
  %1257 = getelementptr inbounds nuw %struct.NFAState, ptr %1256, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %55) #7
  %1258 = call ptr @__ctype_toupper_loc() #8
  %1259 = load ptr, ptr %1258, align 8, !tbaa !88
  %1260 = load i8, ptr %9, align 1, !tbaa !63
  %1261 = zext i8 %1260 to i32
  %1262 = sext i32 %1261 to i64
  %1263 = getelementptr inbounds i32, ptr %1259, i64 %1262
  %1264 = load i32, ptr %1263, align 4, !tbaa !10
  store i32 %1264, ptr %55, align 4, !tbaa !10
  %1265 = load i32, ptr %55, align 4, !tbaa !10
  store i32 %1265, ptr %56, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %55) #7
  %1266 = load i32, ptr %56, align 4, !tbaa !10
  %1267 = sext i32 %1266 to i64
  %1268 = getelementptr inbounds [256 x %struct.anon.6], ptr %1257, i64 0, i64 %1267
  %1269 = getelementptr inbounds nuw %struct.anon.6, ptr %1268, i32 0, i32 3
  %1270 = getelementptr inbounds [3 x ptr], ptr %1269, i64 0, i64 0
  %1271 = icmp eq ptr %1255, %1270
  br i1 %1271, label %1272, label %1325

1272:                                             ; preds = %1240
  %1273 = load ptr, ptr %13, align 8, !tbaa !71
  %1274 = getelementptr inbounds nuw %struct.NFAState, ptr %1273, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %57) #7
  %1275 = call ptr @__ctype_toupper_loc() #8
  %1276 = load ptr, ptr %1275, align 8, !tbaa !88
  %1277 = load i8, ptr %9, align 1, !tbaa !63
  %1278 = zext i8 %1277 to i32
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i32, ptr %1276, i64 %1279
  %1281 = load i32, ptr %1280, align 4, !tbaa !10
  store i32 %1281, ptr %57, align 4, !tbaa !10
  %1282 = load i32, ptr %57, align 4, !tbaa !10
  store i32 %1282, ptr %58, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %57) #7
  %1283 = load i32, ptr %58, align 4, !tbaa !10
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds [256 x %struct.anon.6], ptr %1274, i64 0, i64 %1284
  %1286 = getelementptr inbounds nuw %struct.anon.6, ptr %1285, i32 0, i32 0
  %1287 = load i32, ptr %1286, align 8, !tbaa !74
  %1288 = icmp ult i32 %1287, 3
  br i1 %1288, label %1289, label %1324

1289:                                             ; preds = %1272
  %1290 = load ptr, ptr %14, align 8, !tbaa !71
  %1291 = load ptr, ptr %13, align 8, !tbaa !71
  %1292 = getelementptr inbounds nuw %struct.NFAState, ptr %1291, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %59) #7
  %1293 = call ptr @__ctype_toupper_loc() #8
  %1294 = load ptr, ptr %1293, align 8, !tbaa !88
  %1295 = load i8, ptr %9, align 1, !tbaa !63
  %1296 = zext i8 %1295 to i32
  %1297 = sext i32 %1296 to i64
  %1298 = getelementptr inbounds i32, ptr %1294, i64 %1297
  %1299 = load i32, ptr %1298, align 4, !tbaa !10
  store i32 %1299, ptr %59, align 4, !tbaa !10
  %1300 = load i32, ptr %59, align 4, !tbaa !10
  store i32 %1300, ptr %60, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %59) #7
  %1301 = load i32, ptr %60, align 4, !tbaa !10
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds [256 x %struct.anon.6], ptr %1292, i64 0, i64 %1302
  %1304 = getelementptr inbounds nuw %struct.anon.6, ptr %1303, i32 0, i32 2
  %1305 = load ptr, ptr %1304, align 8, !tbaa !75
  %1306 = load ptr, ptr %13, align 8, !tbaa !71
  %1307 = getelementptr inbounds nuw %struct.NFAState, ptr %1306, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %61) #7
  %1308 = call ptr @__ctype_toupper_loc() #8
  %1309 = load ptr, ptr %1308, align 8, !tbaa !88
  %1310 = load i8, ptr %9, align 1, !tbaa !63
  %1311 = zext i8 %1310 to i32
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds i32, ptr %1309, i64 %1312
  %1314 = load i32, ptr %1313, align 4, !tbaa !10
  store i32 %1314, ptr %61, align 4, !tbaa !10
  %1315 = load i32, ptr %61, align 4, !tbaa !10
  store i32 %1315, ptr %62, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %61) #7
  %1316 = load i32, ptr %62, align 4, !tbaa !10
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [256 x %struct.anon.6], ptr %1307, i64 0, i64 %1317
  %1319 = getelementptr inbounds nuw %struct.anon.6, ptr %1318, i32 0, i32 0
  %1320 = load i32, ptr %1319, align 8, !tbaa !74
  %1321 = add i32 %1320, 1
  store i32 %1321, ptr %1319, align 8, !tbaa !74
  %1322 = zext i32 %1320 to i64
  %1323 = getelementptr inbounds nuw ptr, ptr %1305, i64 %1322
  store ptr %1290, ptr %1323, align 8, !tbaa !71
  br label %1396

1324:                                             ; preds = %1272
  br label %1379

1325:                                             ; preds = %1240
  %1326 = load ptr, ptr %13, align 8, !tbaa !71
  %1327 = getelementptr inbounds nuw %struct.NFAState, ptr %1326, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %63) #7
  %1328 = call ptr @__ctype_toupper_loc() #8
  %1329 = load ptr, ptr %1328, align 8, !tbaa !88
  %1330 = load i8, ptr %9, align 1, !tbaa !63
  %1331 = zext i8 %1330 to i32
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds i32, ptr %1329, i64 %1332
  %1334 = load i32, ptr %1333, align 4, !tbaa !10
  store i32 %1334, ptr %63, align 4, !tbaa !10
  %1335 = load i32, ptr %63, align 4, !tbaa !10
  store i32 %1335, ptr %64, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %63) #7
  %1336 = load i32, ptr %64, align 4, !tbaa !10
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds [256 x %struct.anon.6], ptr %1327, i64 0, i64 %1337
  %1339 = getelementptr inbounds nuw %struct.anon.6, ptr %1338, i32 0, i32 0
  %1340 = load i32, ptr %1339, align 8, !tbaa !74
  %1341 = and i32 %1340, 7
  %1342 = icmp ne i32 %1341, 0
  br i1 %1342, label %1343, label %1378

1343:                                             ; preds = %1325
  %1344 = load ptr, ptr %14, align 8, !tbaa !71
  %1345 = load ptr, ptr %13, align 8, !tbaa !71
  %1346 = getelementptr inbounds nuw %struct.NFAState, ptr %1345, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %65) #7
  %1347 = call ptr @__ctype_toupper_loc() #8
  %1348 = load ptr, ptr %1347, align 8, !tbaa !88
  %1349 = load i8, ptr %9, align 1, !tbaa !63
  %1350 = zext i8 %1349 to i32
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds i32, ptr %1348, i64 %1351
  %1353 = load i32, ptr %1352, align 4, !tbaa !10
  store i32 %1353, ptr %65, align 4, !tbaa !10
  %1354 = load i32, ptr %65, align 4, !tbaa !10
  store i32 %1354, ptr %66, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %65) #7
  %1355 = load i32, ptr %66, align 4, !tbaa !10
  %1356 = sext i32 %1355 to i64
  %1357 = getelementptr inbounds [256 x %struct.anon.6], ptr %1346, i64 0, i64 %1356
  %1358 = getelementptr inbounds nuw %struct.anon.6, ptr %1357, i32 0, i32 2
  %1359 = load ptr, ptr %1358, align 8, !tbaa !75
  %1360 = load ptr, ptr %13, align 8, !tbaa !71
  %1361 = getelementptr inbounds nuw %struct.NFAState, ptr %1360, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %67) #7
  %1362 = call ptr @__ctype_toupper_loc() #8
  %1363 = load ptr, ptr %1362, align 8, !tbaa !88
  %1364 = load i8, ptr %9, align 1, !tbaa !63
  %1365 = zext i8 %1364 to i32
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds i32, ptr %1363, i64 %1366
  %1368 = load i32, ptr %1367, align 4, !tbaa !10
  store i32 %1368, ptr %67, align 4, !tbaa !10
  %1369 = load i32, ptr %67, align 4, !tbaa !10
  store i32 %1369, ptr %68, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %67) #7
  %1370 = load i32, ptr %68, align 4, !tbaa !10
  %1371 = sext i32 %1370 to i64
  %1372 = getelementptr inbounds [256 x %struct.anon.6], ptr %1361, i64 0, i64 %1371
  %1373 = getelementptr inbounds nuw %struct.anon.6, ptr %1372, i32 0, i32 0
  %1374 = load i32, ptr %1373, align 8, !tbaa !74
  %1375 = add i32 %1374, 1
  store i32 %1375, ptr %1373, align 8, !tbaa !74
  %1376 = zext i32 %1374 to i64
  %1377 = getelementptr inbounds nuw ptr, ptr %1359, i64 %1376
  store ptr %1344, ptr %1377, align 8, !tbaa !71
  br label %1396

1378:                                             ; preds = %1325
  br label %1379

1379:                                             ; preds = %1378, %1324
  br label %1380

1380:                                             ; preds = %1379
  %1381 = load ptr, ptr %13, align 8, !tbaa !71
  %1382 = getelementptr inbounds nuw %struct.NFAState, ptr %1381, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %69) #7
  %1383 = call ptr @__ctype_toupper_loc() #8
  %1384 = load ptr, ptr %1383, align 8, !tbaa !88
  %1385 = load i8, ptr %9, align 1, !tbaa !63
  %1386 = zext i8 %1385 to i32
  %1387 = sext i32 %1386 to i64
  %1388 = getelementptr inbounds i32, ptr %1384, i64 %1387
  %1389 = load i32, ptr %1388, align 4, !tbaa !10
  store i32 %1389, ptr %69, align 4, !tbaa !10
  %1390 = load i32, ptr %69, align 4, !tbaa !10
  store i32 %1390, ptr %70, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %69) #7
  %1391 = load i32, ptr %70, align 4, !tbaa !10
  %1392 = sext i32 %1391 to i64
  %1393 = getelementptr inbounds [256 x %struct.anon.6], ptr %1382, i64 0, i64 %1392
  %1394 = load ptr, ptr %14, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %1393, ptr noundef %1394)
  br label %1395

1395:                                             ; preds = %1380
  br label %1396

1396:                                             ; preds = %1395, %1343, %1289, %1191
  br label %1397

1397:                                             ; preds = %1396, %945
  %1398 = load ptr, ptr %13, align 8, !tbaa !71
  store ptr %1398, ptr %12, align 8, !tbaa !71
  %1399 = load ptr, ptr %14, align 8, !tbaa !71
  store ptr %1399, ptr %13, align 8, !tbaa !71
  br label %1400

1400:                                             ; preds = %1397, %797, %716, %555, %472, %257, %85
  br label %77, !llvm.loop !105

1401:                                             ; preds = %77
  br label %1402

1402:                                             ; preds = %1401, %92
  br label %1403

1403:                                             ; preds = %1402
  %1404 = load ptr, ptr %13, align 8, !tbaa !71
  %1405 = getelementptr inbounds nuw %struct.NFAState, ptr %1404, i32 0, i32 2
  %1406 = getelementptr inbounds nuw %struct.anon.7, ptr %1405, i32 0, i32 2
  %1407 = load ptr, ptr %1406, align 8, !tbaa !92
  %1408 = icmp ne ptr %1407, null
  br i1 %1408, label %1425, label %1409

1409:                                             ; preds = %1403
  %1410 = load ptr, ptr %15, align 8, !tbaa !71
  %1411 = load ptr, ptr %13, align 8, !tbaa !71
  %1412 = getelementptr inbounds nuw %struct.NFAState, ptr %1411, i32 0, i32 2
  %1413 = getelementptr inbounds nuw %struct.anon.7, ptr %1412, i32 0, i32 3
  %1414 = getelementptr inbounds [3 x ptr], ptr %1413, i64 0, i64 0
  %1415 = load ptr, ptr %13, align 8, !tbaa !71
  %1416 = getelementptr inbounds nuw %struct.NFAState, ptr %1415, i32 0, i32 2
  %1417 = getelementptr inbounds nuw %struct.anon.7, ptr %1416, i32 0, i32 2
  store ptr %1414, ptr %1417, align 8, !tbaa !92
  %1418 = load ptr, ptr %13, align 8, !tbaa !71
  %1419 = getelementptr inbounds nuw %struct.NFAState, ptr %1418, i32 0, i32 2
  %1420 = getelementptr inbounds nuw %struct.anon.7, ptr %1419, i32 0, i32 0
  %1421 = load i32, ptr %1420, align 8, !tbaa !93
  %1422 = add i32 %1421, 1
  store i32 %1422, ptr %1420, align 8, !tbaa !93
  %1423 = zext i32 %1421 to i64
  %1424 = getelementptr inbounds nuw ptr, ptr %1414, i64 %1423
  store ptr %1410, ptr %1424, align 8, !tbaa !71
  br label %1482

1425:                                             ; preds = %1403
  %1426 = load ptr, ptr %13, align 8, !tbaa !71
  %1427 = getelementptr inbounds nuw %struct.NFAState, ptr %1426, i32 0, i32 2
  %1428 = getelementptr inbounds nuw %struct.anon.7, ptr %1427, i32 0, i32 2
  %1429 = load ptr, ptr %1428, align 8, !tbaa !92
  %1430 = load ptr, ptr %13, align 8, !tbaa !71
  %1431 = getelementptr inbounds nuw %struct.NFAState, ptr %1430, i32 0, i32 2
  %1432 = getelementptr inbounds nuw %struct.anon.7, ptr %1431, i32 0, i32 3
  %1433 = getelementptr inbounds [3 x ptr], ptr %1432, i64 0, i64 0
  %1434 = icmp eq ptr %1429, %1433
  br i1 %1434, label %1435, label %1455

1435:                                             ; preds = %1425
  %1436 = load ptr, ptr %13, align 8, !tbaa !71
  %1437 = getelementptr inbounds nuw %struct.NFAState, ptr %1436, i32 0, i32 2
  %1438 = getelementptr inbounds nuw %struct.anon.7, ptr %1437, i32 0, i32 0
  %1439 = load i32, ptr %1438, align 8, !tbaa !93
  %1440 = icmp ult i32 %1439, 3
  br i1 %1440, label %1441, label %1454

1441:                                             ; preds = %1435
  %1442 = load ptr, ptr %15, align 8, !tbaa !71
  %1443 = load ptr, ptr %13, align 8, !tbaa !71
  %1444 = getelementptr inbounds nuw %struct.NFAState, ptr %1443, i32 0, i32 2
  %1445 = getelementptr inbounds nuw %struct.anon.7, ptr %1444, i32 0, i32 2
  %1446 = load ptr, ptr %1445, align 8, !tbaa !92
  %1447 = load ptr, ptr %13, align 8, !tbaa !71
  %1448 = getelementptr inbounds nuw %struct.NFAState, ptr %1447, i32 0, i32 2
  %1449 = getelementptr inbounds nuw %struct.anon.7, ptr %1448, i32 0, i32 0
  %1450 = load i32, ptr %1449, align 8, !tbaa !93
  %1451 = add i32 %1450, 1
  store i32 %1451, ptr %1449, align 8, !tbaa !93
  %1452 = zext i32 %1450 to i64
  %1453 = getelementptr inbounds nuw ptr, ptr %1446, i64 %1452
  store ptr %1442, ptr %1453, align 8, !tbaa !71
  br label %1482

1454:                                             ; preds = %1435
  br label %1476

1455:                                             ; preds = %1425
  %1456 = load ptr, ptr %13, align 8, !tbaa !71
  %1457 = getelementptr inbounds nuw %struct.NFAState, ptr %1456, i32 0, i32 2
  %1458 = getelementptr inbounds nuw %struct.anon.7, ptr %1457, i32 0, i32 0
  %1459 = load i32, ptr %1458, align 8, !tbaa !93
  %1460 = and i32 %1459, 7
  %1461 = icmp ne i32 %1460, 0
  br i1 %1461, label %1462, label %1475

1462:                                             ; preds = %1455
  %1463 = load ptr, ptr %15, align 8, !tbaa !71
  %1464 = load ptr, ptr %13, align 8, !tbaa !71
  %1465 = getelementptr inbounds nuw %struct.NFAState, ptr %1464, i32 0, i32 2
  %1466 = getelementptr inbounds nuw %struct.anon.7, ptr %1465, i32 0, i32 2
  %1467 = load ptr, ptr %1466, align 8, !tbaa !92
  %1468 = load ptr, ptr %13, align 8, !tbaa !71
  %1469 = getelementptr inbounds nuw %struct.NFAState, ptr %1468, i32 0, i32 2
  %1470 = getelementptr inbounds nuw %struct.anon.7, ptr %1469, i32 0, i32 0
  %1471 = load i32, ptr %1470, align 8, !tbaa !93
  %1472 = add i32 %1471, 1
  store i32 %1472, ptr %1470, align 8, !tbaa !93
  %1473 = zext i32 %1471 to i64
  %1474 = getelementptr inbounds nuw ptr, ptr %1467, i64 %1473
  store ptr %1463, ptr %1474, align 8, !tbaa !71
  br label %1482

1475:                                             ; preds = %1455
  br label %1476

1476:                                             ; preds = %1475, %1454
  br label %1477

1477:                                             ; preds = %1476
  %1478 = load ptr, ptr %13, align 8, !tbaa !71
  %1479 = getelementptr inbounds nuw %struct.NFAState, ptr %1478, i32 0, i32 2
  %1480 = load ptr, ptr %15, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %1479, ptr noundef %1480)
  br label %1481

1481:                                             ; preds = %1477
  br label %1482

1482:                                             ; preds = %1481, %1462, %1441, %1409
  %1483 = load ptr, ptr %11, align 8, !tbaa !82
  %1484 = load ptr, ptr %6, align 8, !tbaa !100
  store ptr %1483, ptr %1484, align 8, !tbaa !82
  store i32 1, ptr %71, align 4
  br label %1488

1485:                                             ; preds = %804, %296, %284
  %1486 = load ptr, ptr %6, align 8, !tbaa !100
  %1487 = load ptr, ptr %1486, align 8, !tbaa !82
  call void (ptr, ...) @d_fail(ptr noundef @.str.1, ptr noundef %1487)
  store i32 0, ptr %71, align 4
  br label %1488

1488:                                             ; preds = %1485, %1482
  call void @llvm.lifetime.end.p0(i64 256, ptr %18) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr %9) #7
  %1489 = load i32, ptr %71, align 4
  switch i32 %1489, label %1491 [
    i32 0, label %1490
    i32 1, label %1490
  ]

1490:                                             ; preds = %1488, %1488
  ret void

1491:                                             ; preds = %1488
  unreachable
}

; Function Attrs: nounwind
define internal void @nfa_to_scanner(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.VecDFAState, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !71
  store ptr %1, ptr %4, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #7
  %13 = call ptr @new_DFAState()
  store ptr %13, ptr %5, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #7
  %14 = load ptr, ptr %4, align 8, !tbaa !106
  %15 = getelementptr inbounds nuw %struct.Scanner, ptr %14, i32 0, i32 0
  store ptr %15, ptr %12, align 8, !tbaa !110
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 40, i1 false)
  br label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %5, align 8, !tbaa !108
  %18 = getelementptr inbounds nuw %struct.DFAState, ptr %17, i32 0, i32 0
  %19 = getelementptr inbounds nuw %struct.anon.10, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !111
  %21 = icmp ne ptr %20, null
  br i1 %21, label %38, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8, !tbaa !71
  %24 = load ptr, ptr %5, align 8, !tbaa !108
  %25 = getelementptr inbounds nuw %struct.DFAState, ptr %24, i32 0, i32 0
  %26 = getelementptr inbounds nuw %struct.anon.10, ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds [3 x ptr], ptr %26, i64 0, i64 0
  %28 = load ptr, ptr %5, align 8, !tbaa !108
  %29 = getelementptr inbounds nuw %struct.DFAState, ptr %28, i32 0, i32 0
  %30 = getelementptr inbounds nuw %struct.anon.10, ptr %29, i32 0, i32 2
  store ptr %27, ptr %30, align 8, !tbaa !111
  %31 = load ptr, ptr %5, align 8, !tbaa !108
  %32 = getelementptr inbounds nuw %struct.DFAState, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !114
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !114
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds nuw ptr, ptr %27, i64 %36
  store ptr %23, ptr %37, align 8, !tbaa !71
  br label %95

38:                                               ; preds = %16
  %39 = load ptr, ptr %5, align 8, !tbaa !108
  %40 = getelementptr inbounds nuw %struct.DFAState, ptr %39, i32 0, i32 0
  %41 = getelementptr inbounds nuw %struct.anon.10, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !111
  %43 = load ptr, ptr %5, align 8, !tbaa !108
  %44 = getelementptr inbounds nuw %struct.DFAState, ptr %43, i32 0, i32 0
  %45 = getelementptr inbounds nuw %struct.anon.10, ptr %44, i32 0, i32 3
  %46 = getelementptr inbounds [3 x ptr], ptr %45, i64 0, i64 0
  %47 = icmp eq ptr %42, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %38
  %49 = load ptr, ptr %5, align 8, !tbaa !108
  %50 = getelementptr inbounds nuw %struct.DFAState, ptr %49, i32 0, i32 0
  %51 = getelementptr inbounds nuw %struct.anon.10, ptr %50, i32 0, i32 0
  %52 = load i32, ptr %51, align 8, !tbaa !114
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %54, label %67

54:                                               ; preds = %48
  %55 = load ptr, ptr %3, align 8, !tbaa !71
  %56 = load ptr, ptr %5, align 8, !tbaa !108
  %57 = getelementptr inbounds nuw %struct.DFAState, ptr %56, i32 0, i32 0
  %58 = getelementptr inbounds nuw %struct.anon.10, ptr %57, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !111
  %60 = load ptr, ptr %5, align 8, !tbaa !108
  %61 = getelementptr inbounds nuw %struct.DFAState, ptr %60, i32 0, i32 0
  %62 = getelementptr inbounds nuw %struct.anon.10, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !114
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 8, !tbaa !114
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds nuw ptr, ptr %59, i64 %65
  store ptr %55, ptr %66, align 8, !tbaa !71
  br label %95

67:                                               ; preds = %48
  br label %89

68:                                               ; preds = %38
  %69 = load ptr, ptr %5, align 8, !tbaa !108
  %70 = getelementptr inbounds nuw %struct.DFAState, ptr %69, i32 0, i32 0
  %71 = getelementptr inbounds nuw %struct.anon.10, ptr %70, i32 0, i32 0
  %72 = load i32, ptr %71, align 8, !tbaa !114
  %73 = and i32 %72, 7
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load ptr, ptr %3, align 8, !tbaa !71
  %77 = load ptr, ptr %5, align 8, !tbaa !108
  %78 = getelementptr inbounds nuw %struct.DFAState, ptr %77, i32 0, i32 0
  %79 = getelementptr inbounds nuw %struct.anon.10, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !111
  %81 = load ptr, ptr %5, align 8, !tbaa !108
  %82 = getelementptr inbounds nuw %struct.DFAState, ptr %81, i32 0, i32 0
  %83 = getelementptr inbounds nuw %struct.anon.10, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !114
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !114
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds nuw ptr, ptr %80, i64 %86
  store ptr %76, ptr %87, align 8, !tbaa !71
  br label %95

88:                                               ; preds = %68
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %5, align 8, !tbaa !108
  %92 = getelementptr inbounds nuw %struct.DFAState, ptr %91, i32 0, i32 0
  %93 = load ptr, ptr %3, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %92, ptr noundef %93)
  br label %94

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %75, %54, %22
  %96 = load ptr, ptr %5, align 8, !tbaa !108
  call void @nfa_closure(ptr noundef %96)
  br label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !115
  %100 = icmp ne ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %5, align 8, !tbaa !108
  %103 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 3
  %104 = getelementptr inbounds [3 x ptr], ptr %103, i64 0, i64 0
  %105 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !115
  %106 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !118
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 8, !tbaa !118
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds nuw ptr, ptr %104, i64 %109
  store ptr %102, ptr %110, align 8, !tbaa !108
  br label %150

111:                                              ; preds = %97
  %112 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !115
  %114 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 3
  %115 = getelementptr inbounds [3 x ptr], ptr %114, i64 0, i64 0
  %116 = icmp eq ptr %113, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %111
  %118 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %119 = load i32, ptr %118, align 8, !tbaa !118
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load ptr, ptr %5, align 8, !tbaa !108
  %123 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !115
  %125 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %126 = load i32, ptr %125, align 8, !tbaa !118
  %127 = add i32 %126, 1
  store i32 %127, ptr %125, align 8, !tbaa !118
  %128 = zext i32 %126 to i64
  %129 = getelementptr inbounds nuw ptr, ptr %124, i64 %128
  store ptr %122, ptr %129, align 8, !tbaa !108
  br label %150

130:                                              ; preds = %117
  br label %146

131:                                              ; preds = %111
  %132 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %133 = load i32, ptr %132, align 8, !tbaa !118
  %134 = and i32 %133, 7
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %131
  %137 = load ptr, ptr %5, align 8, !tbaa !108
  %138 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !115
  %140 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %141 = load i32, ptr %140, align 8, !tbaa !118
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 8, !tbaa !118
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds nuw ptr, ptr %139, i64 %143
  store ptr %137, ptr %144, align 8, !tbaa !108
  br label %150

145:                                              ; preds = %131
  br label %146

146:                                              ; preds = %145, %130
  br label %147

147:                                              ; preds = %146
  %148 = load ptr, ptr %5, align 8, !tbaa !108
  call void @vec_add_internal(ptr noundef %7, ptr noundef %148)
  br label %149

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %136, %121, %101
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %151

151:                                              ; preds = %327, %150
  %152 = load i32, ptr %9, align 4, !tbaa !10
  %153 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %154 = load i32, ptr %153, align 8, !tbaa !118
  %155 = icmp ult i32 %152, %154
  br i1 %155, label %156, label %330

156:                                              ; preds = %151
  %157 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !115
  %159 = load i32, ptr %9, align 4, !tbaa !10
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %158, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !108
  store ptr %162, ptr %5, align 8, !tbaa !108
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %163

163:                                              ; preds = %323, %156
  %164 = load i32, ptr %11, align 4, !tbaa !10
  %165 = icmp slt i32 %164, 256
  br i1 %165, label %166, label %326

166:                                              ; preds = %163
  store ptr null, ptr %6, align 8, !tbaa !108
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %167

167:                                              ; preds = %223, %166
  %168 = load i32, ptr %10, align 4, !tbaa !10
  %169 = load ptr, ptr %5, align 8, !tbaa !108
  %170 = getelementptr inbounds nuw %struct.DFAState, ptr %169, i32 0, i32 0
  %171 = getelementptr inbounds nuw %struct.anon.10, ptr %170, i32 0, i32 0
  %172 = load i32, ptr %171, align 8, !tbaa !114
  %173 = icmp ult i32 %168, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %167
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %175

175:                                              ; preds = %219, %174
  %176 = load i32, ptr %8, align 4, !tbaa !10
  %177 = load ptr, ptr %5, align 8, !tbaa !108
  %178 = getelementptr inbounds nuw %struct.DFAState, ptr %177, i32 0, i32 0
  %179 = getelementptr inbounds nuw %struct.anon.10, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !111
  %181 = load i32, ptr %10, align 4, !tbaa !10
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds ptr, ptr %180, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !71
  %185 = getelementptr inbounds nuw %struct.NFAState, ptr %184, i32 0, i32 1
  %186 = load i32, ptr %11, align 4, !tbaa !10
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [256 x %struct.anon.6], ptr %185, i64 0, i64 %187
  %189 = getelementptr inbounds nuw %struct.anon.6, ptr %188, i32 0, i32 0
  %190 = load i32, ptr %189, align 8, !tbaa !74
  %191 = icmp ult i32 %176, %190
  br i1 %191, label %192, label %222

192:                                              ; preds = %175
  %193 = load ptr, ptr %6, align 8, !tbaa !108
  %194 = icmp ne ptr %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = call ptr @new_DFAState()
  store ptr %196, ptr %6, align 8, !tbaa !108
  br label %197

197:                                              ; preds = %195, %192
  %198 = load ptr, ptr %6, align 8, !tbaa !108
  %199 = getelementptr inbounds nuw %struct.DFAState, ptr %198, i32 0, i32 0
  %200 = load ptr, ptr %5, align 8, !tbaa !108
  %201 = getelementptr inbounds nuw %struct.DFAState, ptr %200, i32 0, i32 0
  %202 = getelementptr inbounds nuw %struct.anon.10, ptr %201, i32 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !111
  %204 = load i32, ptr %10, align 4, !tbaa !10
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds ptr, ptr %203, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !71
  %208 = getelementptr inbounds nuw %struct.NFAState, ptr %207, i32 0, i32 1
  %209 = load i32, ptr %11, align 4, !tbaa !10
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [256 x %struct.anon.6], ptr %208, i64 0, i64 %210
  %212 = getelementptr inbounds nuw %struct.anon.6, ptr %211, i32 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !75
  %214 = load i32, ptr %8, align 4, !tbaa !10
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds ptr, ptr %213, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !71
  %218 = call signext i32 @set_add(ptr noundef %199, ptr noundef %217)
  br label %219

219:                                              ; preds = %197
  %220 = load i32, ptr %8, align 4, !tbaa !10
  %221 = add nsw i32 %220, 1
  store i32 %221, ptr %8, align 4, !tbaa !10
  br label %175, !llvm.loop !119

222:                                              ; preds = %175
  br label %223

223:                                              ; preds = %222
  %224 = load i32, ptr %10, align 4, !tbaa !10
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr %10, align 4, !tbaa !10
  br label %167, !llvm.loop !120

226:                                              ; preds = %167
  %227 = load ptr, ptr %6, align 8, !tbaa !108
  %228 = icmp ne ptr %227, null
  br i1 %228, label %229, label %322

229:                                              ; preds = %226
  %230 = load ptr, ptr %6, align 8, !tbaa !108
  %231 = getelementptr inbounds nuw %struct.DFAState, ptr %230, i32 0, i32 0
  call void @set_to_vec(ptr noundef %231)
  %232 = load ptr, ptr %6, align 8, !tbaa !108
  call void @nfa_closure(ptr noundef %232)
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %233

233:                                              ; preds = %257, %229
  %234 = load i32, ptr %8, align 4, !tbaa !10
  %235 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %236 = load i32, ptr %235, align 8, !tbaa !118
  %237 = icmp ult i32 %234, %236
  br i1 %237, label %238, label %260

238:                                              ; preds = %233
  %239 = load ptr, ptr %6, align 8, !tbaa !108
  %240 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !115
  %242 = load i32, ptr %8, align 4, !tbaa !10
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds ptr, ptr %241, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !108
  %246 = call signext i32 @eq_dfa_state(ptr noundef %239, ptr noundef %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %238
  %249 = load ptr, ptr %6, align 8, !tbaa !108
  call void @free_DFAState(ptr noundef %249)
  %250 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !115
  %252 = load i32, ptr %8, align 4, !tbaa !10
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds ptr, ptr %251, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !108
  store ptr %255, ptr %6, align 8, !tbaa !108
  br label %315

256:                                              ; preds = %238
  br label %257

257:                                              ; preds = %256
  %258 = load i32, ptr %8, align 4, !tbaa !10
  %259 = add nsw i32 %258, 1
  store i32 %259, ptr %8, align 4, !tbaa !10
  br label %233, !llvm.loop !121

260:                                              ; preds = %233
  br label %261

261:                                              ; preds = %260
  %262 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !115
  %264 = icmp ne ptr %263, null
  br i1 %264, label %275, label %265

265:                                              ; preds = %261
  %266 = load ptr, ptr %6, align 8, !tbaa !108
  %267 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 3
  %268 = getelementptr inbounds [3 x ptr], ptr %267, i64 0, i64 0
  %269 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  store ptr %268, ptr %269, align 8, !tbaa !115
  %270 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %271 = load i32, ptr %270, align 8, !tbaa !118
  %272 = add i32 %271, 1
  store i32 %272, ptr %270, align 8, !tbaa !118
  %273 = zext i32 %271 to i64
  %274 = getelementptr inbounds nuw ptr, ptr %268, i64 %273
  store ptr %266, ptr %274, align 8, !tbaa !108
  br label %314

275:                                              ; preds = %261
  %276 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !115
  %278 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 3
  %279 = getelementptr inbounds [3 x ptr], ptr %278, i64 0, i64 0
  %280 = icmp eq ptr %277, %279
  br i1 %280, label %281, label %295

281:                                              ; preds = %275
  %282 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %283 = load i32, ptr %282, align 8, !tbaa !118
  %284 = icmp ult i32 %283, 3
  br i1 %284, label %285, label %294

285:                                              ; preds = %281
  %286 = load ptr, ptr %6, align 8, !tbaa !108
  %287 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !115
  %289 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %290 = load i32, ptr %289, align 8, !tbaa !118
  %291 = add i32 %290, 1
  store i32 %291, ptr %289, align 8, !tbaa !118
  %292 = zext i32 %290 to i64
  %293 = getelementptr inbounds nuw ptr, ptr %288, i64 %292
  store ptr %286, ptr %293, align 8, !tbaa !108
  br label %314

294:                                              ; preds = %281
  br label %310

295:                                              ; preds = %275
  %296 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %297 = load i32, ptr %296, align 8, !tbaa !118
  %298 = and i32 %297, 7
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %295
  %301 = load ptr, ptr %6, align 8, !tbaa !108
  %302 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !115
  %304 = getelementptr inbounds nuw %struct.VecDFAState, ptr %7, i32 0, i32 0
  %305 = load i32, ptr %304, align 8, !tbaa !118
  %306 = add i32 %305, 1
  store i32 %306, ptr %304, align 8, !tbaa !118
  %307 = zext i32 %305 to i64
  %308 = getelementptr inbounds nuw ptr, ptr %303, i64 %307
  store ptr %301, ptr %308, align 8, !tbaa !108
  br label %314

309:                                              ; preds = %295
  br label %310

310:                                              ; preds = %309, %294
  br label %311

311:                                              ; preds = %310
  %312 = load ptr, ptr %6, align 8, !tbaa !108
  call void @vec_add_internal(ptr noundef %7, ptr noundef %312)
  br label %313

313:                                              ; preds = %311
  br label %314

314:                                              ; preds = %313, %300, %285, %265
  br label %315

315:                                              ; preds = %314, %248
  %316 = load ptr, ptr %6, align 8, !tbaa !108
  %317 = load ptr, ptr %5, align 8, !tbaa !108
  %318 = getelementptr inbounds nuw %struct.DFAState, ptr %317, i32 0, i32 1
  %319 = load i32, ptr %11, align 4, !tbaa !10
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [256 x ptr], ptr %318, i64 0, i64 %320
  store ptr %316, ptr %321, align 8, !tbaa !108
  br label %322

322:                                              ; preds = %315, %226
  br label %323

323:                                              ; preds = %322
  %324 = load i32, ptr %11, align 4, !tbaa !10
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %11, align 4, !tbaa !10
  br label %163, !llvm.loop !122

326:                                              ; preds = %163
  br label %327

327:                                              ; preds = %326
  %328 = load i32, ptr %9, align 4, !tbaa !10
  %329 = add nsw i32 %328, 1
  store i32 %329, ptr %9, align 4, !tbaa !10
  br label %151, !llvm.loop !123

330:                                              ; preds = %151
  %331 = load ptr, ptr %12, align 8, !tbaa !110
  call void @dfa_to_scanner(ptr noundef %7, ptr noundef %331)
  call void @free_VecDFAState(ptr noundef %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
define internal void @compute_transitions(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !8
  store ptr %1, ptr %4, align 8, !tbaa !106
  %5 = load ptr, ptr %4, align 8, !tbaa !106
  call void @compute_liveness(ptr noundef %5)
  %6 = load ptr, ptr %3, align 8, !tbaa !8
  %7 = load ptr, ptr %4, align 8, !tbaa !106
  call void @build_transitions(ptr noundef %6, ptr noundef %7)
  ret void
}

; Function Attrs: nounwind
define internal void @free_VecNFAState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr %2, align 8, !tbaa !110
  %7 = getelementptr inbounds nuw %struct.VecNFAState, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !74
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !110
  %12 = getelementptr inbounds nuw %struct.VecNFAState, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  %14 = load i32, ptr %3, align 4, !tbaa !10
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  call void @free_NFAState(ptr noundef %17)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %3, align 4, !tbaa !10
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !10
  br label %4, !llvm.loop !124

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %2, align 8, !tbaa !110
  %24 = getelementptr inbounds nuw %struct.VecNFAState, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !75
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8, !tbaa !110
  %29 = getelementptr inbounds nuw %struct.VecNFAState, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = load ptr, ptr %2, align 8, !tbaa !110
  %32 = getelementptr inbounds nuw %struct.VecNFAState, ptr %31, i32 0, i32 3
  %33 = getelementptr inbounds [3 x ptr], ptr %32, i64 0, i64 0
  %34 = icmp ne ptr %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load ptr, ptr %2, align 8, !tbaa !110
  %37 = getelementptr inbounds nuw %struct.VecNFAState, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  call void @free(ptr noundef %38) #7
  br label %39

39:                                               ; preds = %35, %27, %22
  br label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %2, align 8, !tbaa !110
  %42 = getelementptr inbounds nuw %struct.VecNFAState, ptr %41, i32 0, i32 0
  store i32 0, ptr %42, align 8, !tbaa !74
  %43 = load ptr, ptr %2, align 8, !tbaa !110
  %44 = getelementptr inbounds nuw %struct.VecNFAState, ptr %43, i32 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !75
  br label %45

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

declare void @d_fail(ptr noundef, ...) #3

; Function Attrs: nounwind
define internal void @nfa_closure(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %6

6:                                                ; preds = %208, %1
  %7 = load i32, ptr %3, align 4, !tbaa !10
  %8 = load ptr, ptr %2, align 8, !tbaa !108
  %9 = getelementptr inbounds nuw %struct.DFAState, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.10, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %13, label %211

13:                                               ; preds = %6
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %14

14:                                               ; preds = %204, %13
  %15 = load i32, ptr %4, align 4, !tbaa !10
  %16 = load ptr, ptr %2, align 8, !tbaa !108
  %17 = getelementptr inbounds nuw %struct.DFAState, ptr %16, i32 0, i32 0
  %18 = getelementptr inbounds nuw %struct.anon.10, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = load i32, ptr %3, align 4, !tbaa !10
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = getelementptr inbounds nuw %struct.NFAState, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds nuw %struct.anon.7, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !93
  %27 = icmp ult i32 %15, %26
  br i1 %27, label %28, label %207

28:                                               ; preds = %14
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, ptr %5, align 4, !tbaa !10
  %31 = load ptr, ptr %2, align 8, !tbaa !108
  %32 = getelementptr inbounds nuw %struct.DFAState, ptr %31, i32 0, i32 0
  %33 = getelementptr inbounds nuw %struct.anon.10, ptr %32, i32 0, i32 0
  %34 = load i32, ptr %33, align 8, !tbaa !114
  %35 = icmp ult i32 %30, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %29
  %37 = load ptr, ptr %2, align 8, !tbaa !108
  %38 = getelementptr inbounds nuw %struct.DFAState, ptr %37, i32 0, i32 0
  %39 = getelementptr inbounds nuw %struct.anon.10, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !111
  %41 = load i32, ptr %3, align 4, !tbaa !10
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = getelementptr inbounds nuw %struct.NFAState, ptr %44, i32 0, i32 2
  %46 = getelementptr inbounds nuw %struct.anon.7, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !92
  %48 = load i32, ptr %4, align 4, !tbaa !10
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !71
  %52 = load ptr, ptr %2, align 8, !tbaa !108
  %53 = getelementptr inbounds nuw %struct.DFAState, ptr %52, i32 0, i32 0
  %54 = getelementptr inbounds nuw %struct.anon.10, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !111
  %56 = load i32, ptr %5, align 4, !tbaa !10
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %55, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = icmp eq ptr %51, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %36
  br label %203

62:                                               ; preds = %36
  br label %63

63:                                               ; preds = %62
  %64 = load i32, ptr %5, align 4, !tbaa !10
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %5, align 4, !tbaa !10
  br label %29, !llvm.loop !125

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %2, align 8, !tbaa !108
  %69 = getelementptr inbounds nuw %struct.DFAState, ptr %68, i32 0, i32 0
  %70 = getelementptr inbounds nuw %struct.anon.10, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !111
  %72 = icmp ne ptr %71, null
  br i1 %72, label %103, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr %2, align 8, !tbaa !108
  %75 = getelementptr inbounds nuw %struct.DFAState, ptr %74, i32 0, i32 0
  %76 = getelementptr inbounds nuw %struct.anon.10, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !111
  %78 = load i32, ptr %3, align 4, !tbaa !10
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = getelementptr inbounds nuw %struct.NFAState, ptr %81, i32 0, i32 2
  %83 = getelementptr inbounds nuw %struct.anon.7, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !92
  %85 = load i32, ptr %4, align 4, !tbaa !10
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %84, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !71
  %89 = load ptr, ptr %2, align 8, !tbaa !108
  %90 = getelementptr inbounds nuw %struct.DFAState, ptr %89, i32 0, i32 0
  %91 = getelementptr inbounds nuw %struct.anon.10, ptr %90, i32 0, i32 3
  %92 = getelementptr inbounds [3 x ptr], ptr %91, i64 0, i64 0
  %93 = load ptr, ptr %2, align 8, !tbaa !108
  %94 = getelementptr inbounds nuw %struct.DFAState, ptr %93, i32 0, i32 0
  %95 = getelementptr inbounds nuw %struct.anon.10, ptr %94, i32 0, i32 2
  store ptr %92, ptr %95, align 8, !tbaa !111
  %96 = load ptr, ptr %2, align 8, !tbaa !108
  %97 = getelementptr inbounds nuw %struct.DFAState, ptr %96, i32 0, i32 0
  %98 = getelementptr inbounds nuw %struct.anon.10, ptr %97, i32 0, i32 0
  %99 = load i32, ptr %98, align 8, !tbaa !114
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 8, !tbaa !114
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds nuw ptr, ptr %92, i64 %101
  store ptr %88, ptr %102, align 8, !tbaa !71
  br label %202

103:                                              ; preds = %67
  %104 = load ptr, ptr %2, align 8, !tbaa !108
  %105 = getelementptr inbounds nuw %struct.DFAState, ptr %104, i32 0, i32 0
  %106 = getelementptr inbounds nuw %struct.anon.10, ptr %105, i32 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !111
  %108 = load ptr, ptr %2, align 8, !tbaa !108
  %109 = getelementptr inbounds nuw %struct.DFAState, ptr %108, i32 0, i32 0
  %110 = getelementptr inbounds nuw %struct.anon.10, ptr %109, i32 0, i32 3
  %111 = getelementptr inbounds [3 x ptr], ptr %110, i64 0, i64 0
  %112 = icmp eq ptr %107, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %103
  %114 = load ptr, ptr %2, align 8, !tbaa !108
  %115 = getelementptr inbounds nuw %struct.DFAState, ptr %114, i32 0, i32 0
  %116 = getelementptr inbounds nuw %struct.anon.10, ptr %115, i32 0, i32 0
  %117 = load i32, ptr %116, align 8, !tbaa !114
  %118 = icmp ult i32 %117, 3
  br i1 %118, label %119, label %146

119:                                              ; preds = %113
  %120 = load ptr, ptr %2, align 8, !tbaa !108
  %121 = getelementptr inbounds nuw %struct.DFAState, ptr %120, i32 0, i32 0
  %122 = getelementptr inbounds nuw %struct.anon.10, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !111
  %124 = load i32, ptr %3, align 4, !tbaa !10
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !71
  %128 = getelementptr inbounds nuw %struct.NFAState, ptr %127, i32 0, i32 2
  %129 = getelementptr inbounds nuw %struct.anon.7, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !92
  %131 = load i32, ptr %4, align 4, !tbaa !10
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !71
  %135 = load ptr, ptr %2, align 8, !tbaa !108
  %136 = getelementptr inbounds nuw %struct.DFAState, ptr %135, i32 0, i32 0
  %137 = getelementptr inbounds nuw %struct.anon.10, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !111
  %139 = load ptr, ptr %2, align 8, !tbaa !108
  %140 = getelementptr inbounds nuw %struct.DFAState, ptr %139, i32 0, i32 0
  %141 = getelementptr inbounds nuw %struct.anon.10, ptr %140, i32 0, i32 0
  %142 = load i32, ptr %141, align 8, !tbaa !114
  %143 = add i32 %142, 1
  store i32 %143, ptr %141, align 8, !tbaa !114
  %144 = zext i32 %142 to i64
  %145 = getelementptr inbounds nuw ptr, ptr %138, i64 %144
  store ptr %134, ptr %145, align 8, !tbaa !71
  br label %202

146:                                              ; preds = %113
  br label %182

147:                                              ; preds = %103
  %148 = load ptr, ptr %2, align 8, !tbaa !108
  %149 = getelementptr inbounds nuw %struct.DFAState, ptr %148, i32 0, i32 0
  %150 = getelementptr inbounds nuw %struct.anon.10, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !114
  %152 = and i32 %151, 7
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %181

154:                                              ; preds = %147
  %155 = load ptr, ptr %2, align 8, !tbaa !108
  %156 = getelementptr inbounds nuw %struct.DFAState, ptr %155, i32 0, i32 0
  %157 = getelementptr inbounds nuw %struct.anon.10, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !111
  %159 = load i32, ptr %3, align 4, !tbaa !10
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds ptr, ptr %158, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !71
  %163 = getelementptr inbounds nuw %struct.NFAState, ptr %162, i32 0, i32 2
  %164 = getelementptr inbounds nuw %struct.anon.7, ptr %163, i32 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !92
  %166 = load i32, ptr %4, align 4, !tbaa !10
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %165, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !71
  %170 = load ptr, ptr %2, align 8, !tbaa !108
  %171 = getelementptr inbounds nuw %struct.DFAState, ptr %170, i32 0, i32 0
  %172 = getelementptr inbounds nuw %struct.anon.10, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !111
  %174 = load ptr, ptr %2, align 8, !tbaa !108
  %175 = getelementptr inbounds nuw %struct.DFAState, ptr %174, i32 0, i32 0
  %176 = getelementptr inbounds nuw %struct.anon.10, ptr %175, i32 0, i32 0
  %177 = load i32, ptr %176, align 8, !tbaa !114
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 8, !tbaa !114
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds nuw ptr, ptr %173, i64 %179
  store ptr %169, ptr %180, align 8, !tbaa !71
  br label %202

181:                                              ; preds = %147
  br label %182

182:                                              ; preds = %181, %146
  br label %183

183:                                              ; preds = %182
  %184 = load ptr, ptr %2, align 8, !tbaa !108
  %185 = getelementptr inbounds nuw %struct.DFAState, ptr %184, i32 0, i32 0
  %186 = load ptr, ptr %2, align 8, !tbaa !108
  %187 = getelementptr inbounds nuw %struct.DFAState, ptr %186, i32 0, i32 0
  %188 = getelementptr inbounds nuw %struct.anon.10, ptr %187, i32 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !111
  %190 = load i32, ptr %3, align 4, !tbaa !10
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds ptr, ptr %189, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !71
  %194 = getelementptr inbounds nuw %struct.NFAState, ptr %193, i32 0, i32 2
  %195 = getelementptr inbounds nuw %struct.anon.7, ptr %194, i32 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !92
  %197 = load i32, ptr %4, align 4, !tbaa !10
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds ptr, ptr %196, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !71
  call void @vec_add_internal(ptr noundef %185, ptr noundef %200)
  br label %201

201:                                              ; preds = %183
  br label %202

202:                                              ; preds = %201, %154, %119, %73
  br label %203

203:                                              ; preds = %202, %61
  br label %204

204:                                              ; preds = %203
  %205 = load i32, ptr %4, align 4, !tbaa !10
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %4, align 4, !tbaa !10
  br label %14, !llvm.loop !126

207:                                              ; preds = %14
  br label %208

208:                                              ; preds = %207
  %209 = load i32, ptr %3, align 4, !tbaa !10
  %210 = add nsw i32 %209, 1
  store i32 %210, ptr %3, align 4, !tbaa !10
  br label %6, !llvm.loop !127

211:                                              ; preds = %6
  %212 = load ptr, ptr %2, align 8, !tbaa !108
  %213 = getelementptr inbounds nuw %struct.DFAState, ptr %212, i32 0, i32 0
  %214 = getelementptr inbounds nuw %struct.anon.10, ptr %213, i32 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !111
  %216 = load ptr, ptr %2, align 8, !tbaa !108
  %217 = getelementptr inbounds nuw %struct.DFAState, ptr %216, i32 0, i32 0
  %218 = getelementptr inbounds nuw %struct.anon.10, ptr %217, i32 0, i32 0
  %219 = load i32, ptr %218, align 8, !tbaa !114
  %220 = zext i32 %219 to i64
  call void @qsort(ptr noundef %215, i64 noundef %220, i64 noundef 8, ptr noundef @nfacmp)
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

declare signext i32 @set_add(ptr noundef, ptr noundef) #3

declare void @set_to_vec(ptr noundef) #3

; Function Attrs: nounwind
define internal signext i32 @eq_dfa_state(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !108
  store ptr %1, ptr %5, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !108
  %9 = getelementptr inbounds nuw %struct.DFAState, ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds nuw %struct.anon.10, ptr %9, i32 0, i32 0
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = load ptr, ptr %5, align 8, !tbaa !108
  %13 = getelementptr inbounds nuw %struct.DFAState, ptr %12, i32 0, i32 0
  %14 = getelementptr inbounds nuw %struct.anon.10, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !114
  %16 = icmp ne i32 %11, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %50

18:                                               ; preds = %2
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %19

19:                                               ; preds = %46, %18
  %20 = load i32, ptr %6, align 4, !tbaa !10
  %21 = load ptr, ptr %4, align 8, !tbaa !108
  %22 = getelementptr inbounds nuw %struct.DFAState, ptr %21, i32 0, i32 0
  %23 = getelementptr inbounds nuw %struct.anon.10, ptr %22, i32 0, i32 0
  %24 = load i32, ptr %23, align 8, !tbaa !114
  %25 = icmp ult i32 %20, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load ptr, ptr %4, align 8, !tbaa !108
  %28 = getelementptr inbounds nuw %struct.DFAState, ptr %27, i32 0, i32 0
  %29 = getelementptr inbounds nuw %struct.anon.10, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = load i32, ptr %6, align 4, !tbaa !10
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = load ptr, ptr %5, align 8, !tbaa !108
  %36 = getelementptr inbounds nuw %struct.DFAState, ptr %35, i32 0, i32 0
  %37 = getelementptr inbounds nuw %struct.anon.10, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !111
  %39 = load i32, ptr %6, align 4, !tbaa !10
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = icmp ne ptr %34, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  store i32 0, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %50

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, ptr %6, align 4, !tbaa !10
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr %6, align 4, !tbaa !10
  br label %19, !llvm.loop !128

49:                                               ; preds = %19
  store i32 1, ptr %3, align 4
  store i32 1, ptr %7, align 4
  br label %50

50:                                               ; preds = %49, %44, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  %51 = load i32, ptr %3, align 4
  ret i32 %51
}

; Function Attrs: nounwind
define internal void @free_DFAState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !108
  br label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !tbaa !108
  %5 = getelementptr inbounds nuw %struct.DFAState, ptr %4, i32 0, i32 0
  %6 = getelementptr inbounds nuw %struct.anon.10, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !108
  %11 = getelementptr inbounds nuw %struct.DFAState, ptr %10, i32 0, i32 0
  %12 = getelementptr inbounds nuw %struct.anon.10, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = load ptr, ptr %2, align 8, !tbaa !108
  %15 = getelementptr inbounds nuw %struct.DFAState, ptr %14, i32 0, i32 0
  %16 = getelementptr inbounds nuw %struct.anon.10, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds [3 x ptr], ptr %16, i64 0, i64 0
  %18 = icmp ne ptr %13, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load ptr, ptr %2, align 8, !tbaa !108
  %21 = getelementptr inbounds nuw %struct.DFAState, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.anon.10, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  call void @free(ptr noundef %23) #7
  br label %24

24:                                               ; preds = %19, %9, %3
  br label %25

25:                                               ; preds = %24
  %26 = load ptr, ptr %2, align 8, !tbaa !108
  %27 = getelementptr inbounds nuw %struct.DFAState, ptr %26, i32 0, i32 0
  %28 = getelementptr inbounds nuw %struct.anon.10, ptr %27, i32 0, i32 0
  store i32 0, ptr %28, align 8, !tbaa !114
  %29 = load ptr, ptr %2, align 8, !tbaa !108
  %30 = getelementptr inbounds nuw %struct.DFAState, ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds nuw %struct.anon.10, ptr %30, i32 0, i32 2
  store ptr null, ptr %31, align 8, !tbaa !111
  br label %32

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %2, align 8, !tbaa !108
  call void @free(ptr noundef %34) #7
  ret void
}

; Function Attrs: nounwind
define internal void @dfa_to_scanner(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !110
  store ptr %1, ptr %4, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #7
  br label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !tbaa !110
  %12 = getelementptr inbounds nuw %struct.VecScanState, ptr %11, i32 0, i32 0
  store i32 0, ptr %12, align 8, !tbaa !129
  %13 = load ptr, ptr %4, align 8, !tbaa !110
  %14 = getelementptr inbounds nuw %struct.VecScanState, ptr %13, i32 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !130
  br label %15

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %143, %16
  %18 = load i32, ptr %5, align 4, !tbaa !10
  %19 = load ptr, ptr %3, align 8, !tbaa !110
  %20 = getelementptr inbounds nuw %struct.VecDFAState, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !118
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %146

23:                                               ; preds = %17
  %24 = call ptr @new_ScanState()
  %25 = load ptr, ptr %3, align 8, !tbaa !110
  %26 = getelementptr inbounds nuw %struct.VecDFAState, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  %28 = load i32, ptr %5, align 4, !tbaa !10
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = getelementptr inbounds nuw %struct.DFAState, ptr %31, i32 0, i32 2
  store ptr %24, ptr %32, align 8, !tbaa !131
  %33 = load i32, ptr %5, align 4, !tbaa !10
  %34 = load ptr, ptr %3, align 8, !tbaa !110
  %35 = getelementptr inbounds nuw %struct.VecDFAState, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !115
  %37 = load i32, ptr %5, align 4, !tbaa !10
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !108
  %41 = getelementptr inbounds nuw %struct.DFAState, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !131
  %43 = getelementptr inbounds nuw %struct.ScanState, ptr %42, i32 0, i32 0
  store i32 %33, ptr %43, align 8, !tbaa !132
  br label %44

44:                                               ; preds = %23
  %45 = load ptr, ptr %4, align 8, !tbaa !110
  %46 = getelementptr inbounds nuw %struct.VecScanState, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  %48 = icmp ne ptr %47, null
  br i1 %48, label %70, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %3, align 8, !tbaa !110
  %51 = getelementptr inbounds nuw %struct.VecDFAState, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = load i32, ptr %5, align 4, !tbaa !10
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %52, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !108
  %57 = getelementptr inbounds nuw %struct.DFAState, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !131
  %59 = load ptr, ptr %4, align 8, !tbaa !110
  %60 = getelementptr inbounds nuw %struct.VecScanState, ptr %59, i32 0, i32 3
  %61 = getelementptr inbounds [3 x ptr], ptr %60, i64 0, i64 0
  %62 = load ptr, ptr %4, align 8, !tbaa !110
  %63 = getelementptr inbounds nuw %struct.VecScanState, ptr %62, i32 0, i32 2
  store ptr %61, ptr %63, align 8, !tbaa !130
  %64 = load ptr, ptr %4, align 8, !tbaa !110
  %65 = getelementptr inbounds nuw %struct.VecScanState, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8, !tbaa !129
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 8, !tbaa !129
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds nuw ptr, ptr %61, i64 %68
  store ptr %58, ptr %69, align 8, !tbaa !134
  br label %142

70:                                               ; preds = %44
  %71 = load ptr, ptr %4, align 8, !tbaa !110
  %72 = getelementptr inbounds nuw %struct.VecScanState, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !130
  %74 = load ptr, ptr %4, align 8, !tbaa !110
  %75 = getelementptr inbounds nuw %struct.VecScanState, ptr %74, i32 0, i32 3
  %76 = getelementptr inbounds [3 x ptr], ptr %75, i64 0, i64 0
  %77 = icmp eq ptr %73, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %70
  %79 = load ptr, ptr %4, align 8, !tbaa !110
  %80 = getelementptr inbounds nuw %struct.VecScanState, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8, !tbaa !129
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load ptr, ptr %3, align 8, !tbaa !110
  %85 = getelementptr inbounds nuw %struct.VecDFAState, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !115
  %87 = load i32, ptr %5, align 4, !tbaa !10
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds ptr, ptr %86, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = getelementptr inbounds nuw %struct.DFAState, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !131
  %93 = load ptr, ptr %4, align 8, !tbaa !110
  %94 = getelementptr inbounds nuw %struct.VecScanState, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !130
  %96 = load ptr, ptr %4, align 8, !tbaa !110
  %97 = getelementptr inbounds nuw %struct.VecScanState, ptr %96, i32 0, i32 0
  %98 = load i32, ptr %97, align 8, !tbaa !129
  %99 = add i32 %98, 1
  store i32 %99, ptr %97, align 8, !tbaa !129
  %100 = zext i32 %98 to i64
  %101 = getelementptr inbounds nuw ptr, ptr %95, i64 %100
  store ptr %92, ptr %101, align 8, !tbaa !134
  br label %142

102:                                              ; preds = %78
  br label %129

103:                                              ; preds = %70
  %104 = load ptr, ptr %4, align 8, !tbaa !110
  %105 = getelementptr inbounds nuw %struct.VecScanState, ptr %104, i32 0, i32 0
  %106 = load i32, ptr %105, align 8, !tbaa !129
  %107 = and i32 %106, 7
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %103
  %110 = load ptr, ptr %3, align 8, !tbaa !110
  %111 = getelementptr inbounds nuw %struct.VecDFAState, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !115
  %113 = load i32, ptr %5, align 4, !tbaa !10
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !108
  %117 = getelementptr inbounds nuw %struct.DFAState, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !131
  %119 = load ptr, ptr %4, align 8, !tbaa !110
  %120 = getelementptr inbounds nuw %struct.VecScanState, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !130
  %122 = load ptr, ptr %4, align 8, !tbaa !110
  %123 = getelementptr inbounds nuw %struct.VecScanState, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !129
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !129
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds nuw ptr, ptr %121, i64 %126
  store ptr %118, ptr %127, align 8, !tbaa !134
  br label %142

128:                                              ; preds = %103
  br label %129

129:                                              ; preds = %128, %102
  br label %130

130:                                              ; preds = %129
  %131 = load ptr, ptr %4, align 8, !tbaa !110
  %132 = load ptr, ptr %3, align 8, !tbaa !110
  %133 = getelementptr inbounds nuw %struct.VecDFAState, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !115
  %135 = load i32, ptr %5, align 4, !tbaa !10
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %134, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !108
  %139 = getelementptr inbounds nuw %struct.DFAState, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !131
  call void @vec_add_internal(ptr noundef %131, ptr noundef %140)
  br label %141

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %109, %83, %49
  br label %143

143:                                              ; preds = %142
  %144 = load i32, ptr %5, align 4, !tbaa !10
  %145 = add nsw i32 %144, 1
  store i32 %145, ptr %5, align 4, !tbaa !10
  br label %17, !llvm.loop !135

146:                                              ; preds = %17
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %147

147:                                              ; preds = %615, %146
  %148 = load i32, ptr %5, align 4, !tbaa !10
  %149 = load ptr, ptr %3, align 8, !tbaa !110
  %150 = getelementptr inbounds nuw %struct.VecDFAState, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !118
  %152 = icmp ult i32 %148, %151
  br i1 %152, label %153, label %618

153:                                              ; preds = %147
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %154

154:                                              ; preds = %200, %153
  %155 = load i32, ptr %6, align 4, !tbaa !10
  %156 = icmp slt i32 %155, 256
  br i1 %156, label %157, label %203

157:                                              ; preds = %154
  %158 = load ptr, ptr %3, align 8, !tbaa !110
  %159 = getelementptr inbounds nuw %struct.VecDFAState, ptr %158, i32 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !115
  %161 = load i32, ptr %5, align 4, !tbaa !10
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !108
  %165 = getelementptr inbounds nuw %struct.DFAState, ptr %164, i32 0, i32 1
  %166 = load i32, ptr %6, align 4, !tbaa !10
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [256 x ptr], ptr %165, i64 0, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !108
  %170 = icmp ne ptr %169, null
  br i1 %170, label %171, label %199

171:                                              ; preds = %157
  %172 = load ptr, ptr %3, align 8, !tbaa !110
  %173 = getelementptr inbounds nuw %struct.VecDFAState, ptr %172, i32 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !115
  %175 = load i32, ptr %5, align 4, !tbaa !10
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds ptr, ptr %174, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !108
  %179 = getelementptr inbounds nuw %struct.DFAState, ptr %178, i32 0, i32 1
  %180 = load i32, ptr %6, align 4, !tbaa !10
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [256 x ptr], ptr %179, i64 0, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !108
  %184 = getelementptr inbounds nuw %struct.DFAState, ptr %183, i32 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !131
  %186 = load ptr, ptr %3, align 8, !tbaa !110
  %187 = getelementptr inbounds nuw %struct.VecDFAState, ptr %186, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !115
  %189 = load i32, ptr %5, align 4, !tbaa !10
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds ptr, ptr %188, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !108
  %193 = getelementptr inbounds nuw %struct.DFAState, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !131
  %195 = getelementptr inbounds nuw %struct.ScanState, ptr %194, i32 0, i32 1
  %196 = load i32, ptr %6, align 4, !tbaa !10
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [256 x ptr], ptr %195, i64 0, i64 %197
  store ptr %185, ptr %198, align 8, !tbaa !134
  br label %199

199:                                              ; preds = %171, %157
  br label %200

200:                                              ; preds = %199
  %201 = load i32, ptr %6, align 4, !tbaa !10
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %6, align 4, !tbaa !10
  br label %154, !llvm.loop !136

203:                                              ; preds = %154
  store i32 -2147483648, ptr %8, align 4, !tbaa !10
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %204

204:                                              ; preds = %274, %203
  %205 = load i32, ptr %6, align 4, !tbaa !10
  %206 = load ptr, ptr %3, align 8, !tbaa !110
  %207 = getelementptr inbounds nuw %struct.VecDFAState, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !115
  %209 = load i32, ptr %5, align 4, !tbaa !10
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %208, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !108
  %213 = getelementptr inbounds nuw %struct.DFAState, ptr %212, i32 0, i32 0
  %214 = getelementptr inbounds nuw %struct.anon.10, ptr %213, i32 0, i32 0
  %215 = load i32, ptr %214, align 8, !tbaa !114
  %216 = icmp ult i32 %205, %215
  br i1 %216, label %217, label %277

217:                                              ; preds = %204
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %218

218:                                              ; preds = %270, %217
  %219 = load i32, ptr %7, align 4, !tbaa !10
  %220 = load ptr, ptr %3, align 8, !tbaa !110
  %221 = getelementptr inbounds nuw %struct.VecDFAState, ptr %220, i32 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !115
  %223 = load i32, ptr %5, align 4, !tbaa !10
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds ptr, ptr %222, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !108
  %227 = getelementptr inbounds nuw %struct.DFAState, ptr %226, i32 0, i32 0
  %228 = getelementptr inbounds nuw %struct.anon.10, ptr %227, i32 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !111
  %230 = load i32, ptr %6, align 4, !tbaa !10
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds ptr, ptr %229, i64 %231
  %233 = load ptr, ptr %232, align 8, !tbaa !71
  %234 = getelementptr inbounds nuw %struct.NFAState, ptr %233, i32 0, i32 3
  %235 = getelementptr inbounds nuw %struct.anon.8, ptr %234, i32 0, i32 0
  %236 = load i32, ptr %235, align 8, !tbaa !78
  %237 = icmp ult i32 %219, %236
  br i1 %237, label %238, label %273

238:                                              ; preds = %218
  %239 = load ptr, ptr %3, align 8, !tbaa !110
  %240 = getelementptr inbounds nuw %struct.VecDFAState, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !115
  %242 = load i32, ptr %5, align 4, !tbaa !10
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds ptr, ptr %241, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !108
  %246 = getelementptr inbounds nuw %struct.DFAState, ptr %245, i32 0, i32 0
  %247 = getelementptr inbounds nuw %struct.anon.10, ptr %246, i32 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !111
  %249 = load i32, ptr %6, align 4, !tbaa !10
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %248, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !71
  %253 = getelementptr inbounds nuw %struct.NFAState, ptr %252, i32 0, i32 3
  %254 = getelementptr inbounds nuw %struct.anon.8, ptr %253, i32 0, i32 2
  %255 = load ptr, ptr %254, align 8, !tbaa !76
  %256 = load i32, ptr %7, align 4, !tbaa !10
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %255, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !52
  %260 = getelementptr inbounds nuw %struct.Action, ptr %259, i32 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !54
  %262 = getelementptr inbounds nuw %struct.Term, ptr %261, i32 0, i32 2
  %263 = load i32, ptr %262, align 8, !tbaa !137
  store i32 %263, ptr %9, align 4, !tbaa !10
  %264 = load i32, ptr %8, align 4, !tbaa !10
  %265 = load i32, ptr %9, align 4, !tbaa !10
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %269

267:                                              ; preds = %238
  %268 = load i32, ptr %9, align 4, !tbaa !10
  store i32 %268, ptr %8, align 4, !tbaa !10
  br label %269

269:                                              ; preds = %267, %238
  br label %270

270:                                              ; preds = %269
  %271 = load i32, ptr %7, align 4, !tbaa !10
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %7, align 4, !tbaa !10
  br label %218, !llvm.loop !138

273:                                              ; preds = %218
  br label %274

274:                                              ; preds = %273
  %275 = load i32, ptr %6, align 4, !tbaa !10
  %276 = add nsw i32 %275, 1
  store i32 %276, ptr %6, align 4, !tbaa !10
  br label %204, !llvm.loop !139

277:                                              ; preds = %204
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %278

278:                                              ; preds = %611, %277
  %279 = load i32, ptr %6, align 4, !tbaa !10
  %280 = load ptr, ptr %3, align 8, !tbaa !110
  %281 = getelementptr inbounds nuw %struct.VecDFAState, ptr %280, i32 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !115
  %283 = load i32, ptr %5, align 4, !tbaa !10
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds ptr, ptr %282, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !108
  %287 = getelementptr inbounds nuw %struct.DFAState, ptr %286, i32 0, i32 0
  %288 = getelementptr inbounds nuw %struct.anon.10, ptr %287, i32 0, i32 0
  %289 = load i32, ptr %288, align 8, !tbaa !114
  %290 = icmp ult i32 %279, %289
  br i1 %290, label %291, label %614

291:                                              ; preds = %278
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %292

292:                                              ; preds = %607, %291
  %293 = load i32, ptr %7, align 4, !tbaa !10
  %294 = load ptr, ptr %3, align 8, !tbaa !110
  %295 = getelementptr inbounds nuw %struct.VecDFAState, ptr %294, i32 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !115
  %297 = load i32, ptr %5, align 4, !tbaa !10
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds ptr, ptr %296, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !108
  %301 = getelementptr inbounds nuw %struct.DFAState, ptr %300, i32 0, i32 0
  %302 = getelementptr inbounds nuw %struct.anon.10, ptr %301, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !111
  %304 = load i32, ptr %6, align 4, !tbaa !10
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds ptr, ptr %303, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !71
  %308 = getelementptr inbounds nuw %struct.NFAState, ptr %307, i32 0, i32 3
  %309 = getelementptr inbounds nuw %struct.anon.8, ptr %308, i32 0, i32 0
  %310 = load i32, ptr %309, align 8, !tbaa !78
  %311 = icmp ult i32 %293, %310
  br i1 %311, label %312, label %610

312:                                              ; preds = %292
  %313 = load ptr, ptr %3, align 8, !tbaa !110
  %314 = getelementptr inbounds nuw %struct.VecDFAState, ptr %313, i32 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !115
  %316 = load i32, ptr %5, align 4, !tbaa !10
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds ptr, ptr %315, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !108
  %320 = getelementptr inbounds nuw %struct.DFAState, ptr %319, i32 0, i32 0
  %321 = getelementptr inbounds nuw %struct.anon.10, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !111
  %323 = load i32, ptr %6, align 4, !tbaa !10
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %322, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !71
  %327 = getelementptr inbounds nuw %struct.NFAState, ptr %326, i32 0, i32 3
  %328 = getelementptr inbounds nuw %struct.anon.8, ptr %327, i32 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !76
  %330 = load i32, ptr %7, align 4, !tbaa !10
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds ptr, ptr %329, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !52
  %334 = getelementptr inbounds nuw %struct.Action, ptr %333, i32 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !54
  %336 = getelementptr inbounds nuw %struct.Term, ptr %335, i32 0, i32 2
  %337 = load i32, ptr %336, align 8, !tbaa !137
  store i32 %337, ptr %9, align 4, !tbaa !10
  %338 = load i32, ptr %9, align 4, !tbaa !10
  %339 = load i32, ptr %8, align 4, !tbaa !10
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %606

341:                                              ; preds = %312
  br label %342

342:                                              ; preds = %341
  %343 = load ptr, ptr %3, align 8, !tbaa !110
  %344 = getelementptr inbounds nuw %struct.VecDFAState, ptr %343, i32 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !115
  %346 = load i32, ptr %5, align 4, !tbaa !10
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %345, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !108
  %350 = getelementptr inbounds nuw %struct.DFAState, ptr %349, i32 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !131
  %352 = getelementptr inbounds nuw %struct.ScanState, ptr %351, i32 0, i32 2
  %353 = getelementptr inbounds nuw %struct.VecAction, ptr %352, i32 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !140
  %355 = icmp ne ptr %354, null
  br i1 %355, label %416, label %356

356:                                              ; preds = %342
  %357 = load ptr, ptr %3, align 8, !tbaa !110
  %358 = getelementptr inbounds nuw %struct.VecDFAState, ptr %357, i32 0, i32 2
  %359 = load ptr, ptr %358, align 8, !tbaa !115
  %360 = load i32, ptr %5, align 4, !tbaa !10
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds ptr, ptr %359, i64 %361
  %363 = load ptr, ptr %362, align 8, !tbaa !108
  %364 = getelementptr inbounds nuw %struct.DFAState, ptr %363, i32 0, i32 0
  %365 = getelementptr inbounds nuw %struct.anon.10, ptr %364, i32 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !111
  %367 = load i32, ptr %6, align 4, !tbaa !10
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds ptr, ptr %366, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !71
  %371 = getelementptr inbounds nuw %struct.NFAState, ptr %370, i32 0, i32 3
  %372 = getelementptr inbounds nuw %struct.anon.8, ptr %371, i32 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !76
  %374 = load i32, ptr %7, align 4, !tbaa !10
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds ptr, ptr %373, i64 %375
  %377 = load ptr, ptr %376, align 8, !tbaa !52
  %378 = load ptr, ptr %3, align 8, !tbaa !110
  %379 = getelementptr inbounds nuw %struct.VecDFAState, ptr %378, i32 0, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !115
  %381 = load i32, ptr %5, align 4, !tbaa !10
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds ptr, ptr %380, i64 %382
  %384 = load ptr, ptr %383, align 8, !tbaa !108
  %385 = getelementptr inbounds nuw %struct.DFAState, ptr %384, i32 0, i32 2
  %386 = load ptr, ptr %385, align 8, !tbaa !131
  %387 = getelementptr inbounds nuw %struct.ScanState, ptr %386, i32 0, i32 2
  %388 = getelementptr inbounds nuw %struct.VecAction, ptr %387, i32 0, i32 3
  %389 = getelementptr inbounds [3 x ptr], ptr %388, i64 0, i64 0
  %390 = load ptr, ptr %3, align 8, !tbaa !110
  %391 = getelementptr inbounds nuw %struct.VecDFAState, ptr %390, i32 0, i32 2
  %392 = load ptr, ptr %391, align 8, !tbaa !115
  %393 = load i32, ptr %5, align 4, !tbaa !10
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds ptr, ptr %392, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !108
  %397 = getelementptr inbounds nuw %struct.DFAState, ptr %396, i32 0, i32 2
  %398 = load ptr, ptr %397, align 8, !tbaa !131
  %399 = getelementptr inbounds nuw %struct.ScanState, ptr %398, i32 0, i32 2
  %400 = getelementptr inbounds nuw %struct.VecAction, ptr %399, i32 0, i32 2
  store ptr %389, ptr %400, align 8, !tbaa !140
  %401 = load ptr, ptr %3, align 8, !tbaa !110
  %402 = getelementptr inbounds nuw %struct.VecDFAState, ptr %401, i32 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !115
  %404 = load i32, ptr %5, align 4, !tbaa !10
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds ptr, ptr %403, i64 %405
  %407 = load ptr, ptr %406, align 8, !tbaa !108
  %408 = getelementptr inbounds nuw %struct.DFAState, ptr %407, i32 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !131
  %410 = getelementptr inbounds nuw %struct.ScanState, ptr %409, i32 0, i32 2
  %411 = getelementptr inbounds nuw %struct.VecAction, ptr %410, i32 0, i32 0
  %412 = load i32, ptr %411, align 8, !tbaa !141
  %413 = add i32 %412, 1
  store i32 %413, ptr %411, align 8, !tbaa !141
  %414 = zext i32 %412 to i64
  %415 = getelementptr inbounds nuw ptr, ptr %389, i64 %414
  store ptr %377, ptr %415, align 8, !tbaa !52
  br label %605

416:                                              ; preds = %342
  %417 = load ptr, ptr %3, align 8, !tbaa !110
  %418 = getelementptr inbounds nuw %struct.VecDFAState, ptr %417, i32 0, i32 2
  %419 = load ptr, ptr %418, align 8, !tbaa !115
  %420 = load i32, ptr %5, align 4, !tbaa !10
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds ptr, ptr %419, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !108
  %424 = getelementptr inbounds nuw %struct.DFAState, ptr %423, i32 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !131
  %426 = getelementptr inbounds nuw %struct.ScanState, ptr %425, i32 0, i32 2
  %427 = getelementptr inbounds nuw %struct.VecAction, ptr %426, i32 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !140
  %429 = load ptr, ptr %3, align 8, !tbaa !110
  %430 = getelementptr inbounds nuw %struct.VecDFAState, ptr %429, i32 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !115
  %432 = load i32, ptr %5, align 4, !tbaa !10
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds ptr, ptr %431, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !108
  %436 = getelementptr inbounds nuw %struct.DFAState, ptr %435, i32 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !131
  %438 = getelementptr inbounds nuw %struct.ScanState, ptr %437, i32 0, i32 2
  %439 = getelementptr inbounds nuw %struct.VecAction, ptr %438, i32 0, i32 3
  %440 = getelementptr inbounds [3 x ptr], ptr %439, i64 0, i64 0
  %441 = icmp eq ptr %428, %440
  br i1 %441, label %442, label %506

442:                                              ; preds = %416
  %443 = load ptr, ptr %3, align 8, !tbaa !110
  %444 = getelementptr inbounds nuw %struct.VecDFAState, ptr %443, i32 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !115
  %446 = load i32, ptr %5, align 4, !tbaa !10
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds ptr, ptr %445, i64 %447
  %449 = load ptr, ptr %448, align 8, !tbaa !108
  %450 = getelementptr inbounds nuw %struct.DFAState, ptr %449, i32 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !131
  %452 = getelementptr inbounds nuw %struct.ScanState, ptr %451, i32 0, i32 2
  %453 = getelementptr inbounds nuw %struct.VecAction, ptr %452, i32 0, i32 0
  %454 = load i32, ptr %453, align 8, !tbaa !141
  %455 = icmp ult i32 %454, 3
  br i1 %455, label %456, label %505

456:                                              ; preds = %442
  %457 = load ptr, ptr %3, align 8, !tbaa !110
  %458 = getelementptr inbounds nuw %struct.VecDFAState, ptr %457, i32 0, i32 2
  %459 = load ptr, ptr %458, align 8, !tbaa !115
  %460 = load i32, ptr %5, align 4, !tbaa !10
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds ptr, ptr %459, i64 %461
  %463 = load ptr, ptr %462, align 8, !tbaa !108
  %464 = getelementptr inbounds nuw %struct.DFAState, ptr %463, i32 0, i32 0
  %465 = getelementptr inbounds nuw %struct.anon.10, ptr %464, i32 0, i32 2
  %466 = load ptr, ptr %465, align 8, !tbaa !111
  %467 = load i32, ptr %6, align 4, !tbaa !10
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds ptr, ptr %466, i64 %468
  %470 = load ptr, ptr %469, align 8, !tbaa !71
  %471 = getelementptr inbounds nuw %struct.NFAState, ptr %470, i32 0, i32 3
  %472 = getelementptr inbounds nuw %struct.anon.8, ptr %471, i32 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !76
  %474 = load i32, ptr %7, align 4, !tbaa !10
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds ptr, ptr %473, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !52
  %478 = load ptr, ptr %3, align 8, !tbaa !110
  %479 = getelementptr inbounds nuw %struct.VecDFAState, ptr %478, i32 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !115
  %481 = load i32, ptr %5, align 4, !tbaa !10
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds ptr, ptr %480, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !108
  %485 = getelementptr inbounds nuw %struct.DFAState, ptr %484, i32 0, i32 2
  %486 = load ptr, ptr %485, align 8, !tbaa !131
  %487 = getelementptr inbounds nuw %struct.ScanState, ptr %486, i32 0, i32 2
  %488 = getelementptr inbounds nuw %struct.VecAction, ptr %487, i32 0, i32 2
  %489 = load ptr, ptr %488, align 8, !tbaa !140
  %490 = load ptr, ptr %3, align 8, !tbaa !110
  %491 = getelementptr inbounds nuw %struct.VecDFAState, ptr %490, i32 0, i32 2
  %492 = load ptr, ptr %491, align 8, !tbaa !115
  %493 = load i32, ptr %5, align 4, !tbaa !10
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds ptr, ptr %492, i64 %494
  %496 = load ptr, ptr %495, align 8, !tbaa !108
  %497 = getelementptr inbounds nuw %struct.DFAState, ptr %496, i32 0, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !131
  %499 = getelementptr inbounds nuw %struct.ScanState, ptr %498, i32 0, i32 2
  %500 = getelementptr inbounds nuw %struct.VecAction, ptr %499, i32 0, i32 0
  %501 = load i32, ptr %500, align 8, !tbaa !141
  %502 = add i32 %501, 1
  store i32 %502, ptr %500, align 8, !tbaa !141
  %503 = zext i32 %501 to i64
  %504 = getelementptr inbounds nuw ptr, ptr %489, i64 %503
  store ptr %477, ptr %504, align 8, !tbaa !52
  br label %605

505:                                              ; preds = %442
  br label %571

506:                                              ; preds = %416
  %507 = load ptr, ptr %3, align 8, !tbaa !110
  %508 = getelementptr inbounds nuw %struct.VecDFAState, ptr %507, i32 0, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !115
  %510 = load i32, ptr %5, align 4, !tbaa !10
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds ptr, ptr %509, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !108
  %514 = getelementptr inbounds nuw %struct.DFAState, ptr %513, i32 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !131
  %516 = getelementptr inbounds nuw %struct.ScanState, ptr %515, i32 0, i32 2
  %517 = getelementptr inbounds nuw %struct.VecAction, ptr %516, i32 0, i32 0
  %518 = load i32, ptr %517, align 8, !tbaa !141
  %519 = and i32 %518, 7
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %570

521:                                              ; preds = %506
  %522 = load ptr, ptr %3, align 8, !tbaa !110
  %523 = getelementptr inbounds nuw %struct.VecDFAState, ptr %522, i32 0, i32 2
  %524 = load ptr, ptr %523, align 8, !tbaa !115
  %525 = load i32, ptr %5, align 4, !tbaa !10
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds ptr, ptr %524, i64 %526
  %528 = load ptr, ptr %527, align 8, !tbaa !108
  %529 = getelementptr inbounds nuw %struct.DFAState, ptr %528, i32 0, i32 0
  %530 = getelementptr inbounds nuw %struct.anon.10, ptr %529, i32 0, i32 2
  %531 = load ptr, ptr %530, align 8, !tbaa !111
  %532 = load i32, ptr %6, align 4, !tbaa !10
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds ptr, ptr %531, i64 %533
  %535 = load ptr, ptr %534, align 8, !tbaa !71
  %536 = getelementptr inbounds nuw %struct.NFAState, ptr %535, i32 0, i32 3
  %537 = getelementptr inbounds nuw %struct.anon.8, ptr %536, i32 0, i32 2
  %538 = load ptr, ptr %537, align 8, !tbaa !76
  %539 = load i32, ptr %7, align 4, !tbaa !10
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds ptr, ptr %538, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !52
  %543 = load ptr, ptr %3, align 8, !tbaa !110
  %544 = getelementptr inbounds nuw %struct.VecDFAState, ptr %543, i32 0, i32 2
  %545 = load ptr, ptr %544, align 8, !tbaa !115
  %546 = load i32, ptr %5, align 4, !tbaa !10
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds ptr, ptr %545, i64 %547
  %549 = load ptr, ptr %548, align 8, !tbaa !108
  %550 = getelementptr inbounds nuw %struct.DFAState, ptr %549, i32 0, i32 2
  %551 = load ptr, ptr %550, align 8, !tbaa !131
  %552 = getelementptr inbounds nuw %struct.ScanState, ptr %551, i32 0, i32 2
  %553 = getelementptr inbounds nuw %struct.VecAction, ptr %552, i32 0, i32 2
  %554 = load ptr, ptr %553, align 8, !tbaa !140
  %555 = load ptr, ptr %3, align 8, !tbaa !110
  %556 = getelementptr inbounds nuw %struct.VecDFAState, ptr %555, i32 0, i32 2
  %557 = load ptr, ptr %556, align 8, !tbaa !115
  %558 = load i32, ptr %5, align 4, !tbaa !10
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds ptr, ptr %557, i64 %559
  %561 = load ptr, ptr %560, align 8, !tbaa !108
  %562 = getelementptr inbounds nuw %struct.DFAState, ptr %561, i32 0, i32 2
  %563 = load ptr, ptr %562, align 8, !tbaa !131
  %564 = getelementptr inbounds nuw %struct.ScanState, ptr %563, i32 0, i32 2
  %565 = getelementptr inbounds nuw %struct.VecAction, ptr %564, i32 0, i32 0
  %566 = load i32, ptr %565, align 8, !tbaa !141
  %567 = add i32 %566, 1
  store i32 %567, ptr %565, align 8, !tbaa !141
  %568 = zext i32 %566 to i64
  %569 = getelementptr inbounds nuw ptr, ptr %554, i64 %568
  store ptr %542, ptr %569, align 8, !tbaa !52
  br label %605

570:                                              ; preds = %506
  br label %571

571:                                              ; preds = %570, %505
  br label %572

572:                                              ; preds = %571
  %573 = load ptr, ptr %3, align 8, !tbaa !110
  %574 = getelementptr inbounds nuw %struct.VecDFAState, ptr %573, i32 0, i32 2
  %575 = load ptr, ptr %574, align 8, !tbaa !115
  %576 = load i32, ptr %5, align 4, !tbaa !10
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds ptr, ptr %575, i64 %577
  %579 = load ptr, ptr %578, align 8, !tbaa !108
  %580 = getelementptr inbounds nuw %struct.DFAState, ptr %579, i32 0, i32 2
  %581 = load ptr, ptr %580, align 8, !tbaa !131
  %582 = getelementptr inbounds nuw %struct.ScanState, ptr %581, i32 0, i32 2
  %583 = load ptr, ptr %3, align 8, !tbaa !110
  %584 = getelementptr inbounds nuw %struct.VecDFAState, ptr %583, i32 0, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !115
  %586 = load i32, ptr %5, align 4, !tbaa !10
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds ptr, ptr %585, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !108
  %590 = getelementptr inbounds nuw %struct.DFAState, ptr %589, i32 0, i32 0
  %591 = getelementptr inbounds nuw %struct.anon.10, ptr %590, i32 0, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !111
  %593 = load i32, ptr %6, align 4, !tbaa !10
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds ptr, ptr %592, i64 %594
  %596 = load ptr, ptr %595, align 8, !tbaa !71
  %597 = getelementptr inbounds nuw %struct.NFAState, ptr %596, i32 0, i32 3
  %598 = getelementptr inbounds nuw %struct.anon.8, ptr %597, i32 0, i32 2
  %599 = load ptr, ptr %598, align 8, !tbaa !76
  %600 = load i32, ptr %7, align 4, !tbaa !10
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds ptr, ptr %599, i64 %601
  %603 = load ptr, ptr %602, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %582, ptr noundef %603)
  br label %604

604:                                              ; preds = %572
  br label %605

605:                                              ; preds = %604, %521, %456, %356
  br label %606

606:                                              ; preds = %605, %312
  br label %607

607:                                              ; preds = %606
  %608 = load i32, ptr %7, align 4, !tbaa !10
  %609 = add nsw i32 %608, 1
  store i32 %609, ptr %7, align 4, !tbaa !10
  br label %292, !llvm.loop !142

610:                                              ; preds = %292
  br label %611

611:                                              ; preds = %610
  %612 = load i32, ptr %6, align 4, !tbaa !10
  %613 = add nsw i32 %612, 1
  store i32 %613, ptr %6, align 4, !tbaa !10
  br label %278, !llvm.loop !143

614:                                              ; preds = %278
  br label %615

615:                                              ; preds = %614
  %616 = load i32, ptr %5, align 4, !tbaa !10
  %617 = add nsw i32 %616, 1
  store i32 %617, ptr %5, align 4, !tbaa !10
  br label %147, !llvm.loop !144

618:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret void
}

; Function Attrs: nounwind
define internal void @free_VecDFAState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = load ptr, ptr %2, align 8, !tbaa !110
  %7 = getelementptr inbounds nuw %struct.VecDFAState, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !110
  %12 = getelementptr inbounds nuw %struct.VecDFAState, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  %14 = load i32, ptr %3, align 4, !tbaa !10
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %13, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  call void @free_DFAState(ptr noundef %17)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, ptr %3, align 4, !tbaa !10
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !10
  br label %4, !llvm.loop !145

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %2, align 8, !tbaa !110
  %24 = getelementptr inbounds nuw %struct.VecDFAState, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8, !tbaa !110
  %29 = getelementptr inbounds nuw %struct.VecDFAState, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !115
  %31 = load ptr, ptr %2, align 8, !tbaa !110
  %32 = getelementptr inbounds nuw %struct.VecDFAState, ptr %31, i32 0, i32 3
  %33 = getelementptr inbounds [3 x ptr], ptr %32, i64 0, i64 0
  %34 = icmp ne ptr %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load ptr, ptr %2, align 8, !tbaa !110
  %37 = getelementptr inbounds nuw %struct.VecDFAState, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !115
  call void @free(ptr noundef %38) #7
  br label %39

39:                                               ; preds = %35, %27, %22
  br label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %2, align 8, !tbaa !110
  %42 = getelementptr inbounds nuw %struct.VecDFAState, ptr %41, i32 0, i32 0
  store i32 0, ptr %42, align 8, !tbaa !118
  %43 = load ptr, ptr %2, align 8, !tbaa !110
  %44 = getelementptr inbounds nuw %struct.VecDFAState, ptr %43, i32 0, i32 2
  store ptr null, ptr %44, align 8, !tbaa !115
  br label %45

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal ptr @new_DFAState() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %2 = call noalias ptr @malloc(i64 noundef 2096) #9
  store ptr %2, ptr %1, align 8, !tbaa !108
  %3 = load ptr, ptr %1, align 8, !tbaa !108
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 2096, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %4
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
define internal signext i32 @nfacmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !110
  store ptr %1, ptr %4, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  %7 = load ptr, ptr %3, align 8, !tbaa !110
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = getelementptr inbounds nuw %struct.NFAState, ptr %8, i32 0, i32 0
  %10 = load i32, ptr %9, align 8, !tbaa !99
  store i32 %10, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !110
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds nuw %struct.NFAState, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !99
  store i32 %14, ptr %6, align 4, !tbaa !10
  %15 = load i32, ptr %5, align 4, !tbaa !10
  %16 = load i32, ptr %6, align 4, !tbaa !10
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %25

19:                                               ; preds = %2
  %20 = load i32, ptr %5, align 4, !tbaa !10
  %21 = load i32, ptr %6, align 4, !tbaa !10
  %22 = icmp ult i32 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1, i32 0
  br label %25

25:                                               ; preds = %19, %18
  %26 = phi i32 [ 1, %18 ], [ %24, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret i32 %26
}

; Function Attrs: nounwind
define internal ptr @new_ScanState() #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %1) #7
  %2 = call noalias ptr @malloc(i64 noundef 4184) #9
  store ptr %2, ptr %1, align 8, !tbaa !134
  %3 = load ptr, ptr %1, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 4184, i1 false)
  %4 = load ptr, ptr %1, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 8, ptr %1) #7
  ret ptr %4
}

; Function Attrs: nounwind
define internal void @compute_liveness(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  store i32 1, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  %9 = load ptr, ptr %2, align 8, !tbaa !106
  %10 = getelementptr inbounds nuw %struct.Scanner, ptr %9, i32 0, i32 0
  store ptr %10, ptr %8, align 8, !tbaa !110
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %11

11:                                               ; preds = %30, %1
  %12 = load i32, ptr %3, align 4, !tbaa !10
  %13 = load ptr, ptr %8, align 8, !tbaa !110
  %14 = getelementptr inbounds nuw %struct.VecScanState, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !129
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load ptr, ptr %8, align 8, !tbaa !110
  %19 = getelementptr inbounds nuw %struct.VecScanState, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = load i32, ptr %3, align 4, !tbaa !10
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  store ptr %24, ptr %6, align 8, !tbaa !134
  %25 = load ptr, ptr %6, align 8, !tbaa !134
  %26 = getelementptr inbounds nuw %struct.ScanState, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %6, align 8, !tbaa !134
  %28 = getelementptr inbounds nuw %struct.ScanState, ptr %27, i32 0, i32 2
  %29 = call signext i32 @set_union(ptr noundef %26, ptr noundef %28)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, ptr %3, align 4, !tbaa !10
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %3, align 4, !tbaa !10
  br label %11, !llvm.loop !146

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %85, %33
  %35 = load i32, ptr %5, align 4, !tbaa !10
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %86

37:                                               ; preds = %34
  store i32 0, ptr %5, align 4, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %38

38:                                               ; preds = %82, %37
  %39 = load i32, ptr %3, align 4, !tbaa !10
  %40 = load ptr, ptr %8, align 8, !tbaa !110
  %41 = getelementptr inbounds nuw %struct.VecScanState, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !129
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %38
  %45 = load ptr, ptr %8, align 8, !tbaa !110
  %46 = getelementptr inbounds nuw %struct.VecScanState, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !130
  %48 = load i32, ptr %3, align 4, !tbaa !10
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !134
  store ptr %51, ptr %6, align 8, !tbaa !134
  store i32 0, ptr %4, align 4, !tbaa !10
  br label %52

52:                                               ; preds = %78, %44
  %53 = load i32, ptr %4, align 4, !tbaa !10
  %54 = icmp slt i32 %53, 256
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load ptr, ptr %6, align 8, !tbaa !134
  %57 = getelementptr inbounds nuw %struct.ScanState, ptr %56, i32 0, i32 1
  %58 = load i32, ptr %4, align 4, !tbaa !10
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [256 x ptr], ptr %57, i64 0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !134
  store ptr %61, ptr %7, align 8, !tbaa !134
  %62 = icmp ne ptr %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load ptr, ptr %6, align 8, !tbaa !134
  %65 = load ptr, ptr %7, align 8, !tbaa !134
  %66 = icmp ne ptr %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load ptr, ptr %6, align 8, !tbaa !134
  %69 = getelementptr inbounds nuw %struct.ScanState, ptr %68, i32 0, i32 3
  %70 = load ptr, ptr %7, align 8, !tbaa !134
  %71 = getelementptr inbounds nuw %struct.ScanState, ptr %70, i32 0, i32 3
  %72 = call signext i32 @set_union(ptr noundef %69, ptr noundef %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, ptr %4, align 4, !tbaa !10
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %4, align 4, !tbaa !10
  br label %52, !llvm.loop !147

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %3, align 4, !tbaa !10
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %3, align 4, !tbaa !10
  br label %38, !llvm.loop !148

85:                                               ; preds = %38
  br label %34, !llvm.loop !149

86:                                               ; preds = %34
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, ptr %3, align 4, !tbaa !10
  %89 = load ptr, ptr %8, align 8, !tbaa !110
  %90 = getelementptr inbounds nuw %struct.VecScanState, ptr %89, i32 0, i32 0
  %91 = load i32, ptr %90, align 8, !tbaa !129
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %108

93:                                               ; preds = %87
  %94 = load ptr, ptr %8, align 8, !tbaa !110
  %95 = getelementptr inbounds nuw %struct.VecScanState, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !130
  %97 = load i32, ptr %3, align 4, !tbaa !10
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !134
  store ptr %100, ptr %6, align 8, !tbaa !134
  %101 = load ptr, ptr %6, align 8, !tbaa !134
  %102 = getelementptr inbounds nuw %struct.ScanState, ptr %101, i32 0, i32 3
  call void @set_to_vec(ptr noundef %102)
  %103 = load ptr, ptr %6, align 8, !tbaa !134
  %104 = getelementptr inbounds nuw %struct.ScanState, ptr %103, i32 0, i32 3
  call void @sort_VecAction(ptr noundef %104)
  br label %105

105:                                              ; preds = %93
  %106 = load i32, ptr %3, align 4, !tbaa !10
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %3, align 4, !tbaa !10
  br label %87, !llvm.loop !150

108:                                              ; preds = %87
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

; Function Attrs: nounwind
define internal void @build_transitions(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !8
  store ptr %1, ptr %4, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #7
  store ptr null, ptr %8, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #7
  %11 = load ptr, ptr %4, align 8, !tbaa !106
  %12 = getelementptr inbounds nuw %struct.Scanner, ptr %11, i32 0, i32 0
  store ptr %12, ptr %10, align 8, !tbaa !110
  store ptr inttoptr (i64 1 to ptr), ptr getelementptr inbounds nuw (%struct.hash_fns_t, ptr @trans_hash_fns, i32 0, i32 2), align 8, !tbaa !110
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %13

13:                                               ; preds = %148, %2
  %14 = load i32, ptr %5, align 4, !tbaa !10
  %15 = load ptr, ptr %10, align 8, !tbaa !110
  %16 = getelementptr inbounds nuw %struct.VecScanState, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %151

19:                                               ; preds = %13
  %20 = load ptr, ptr %10, align 8, !tbaa !110
  %21 = getelementptr inbounds nuw %struct.VecScanState, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !130
  %23 = load i32, ptr %5, align 4, !tbaa !10
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  store ptr %26, ptr %7, align 8, !tbaa !134
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %27

27:                                               ; preds = %144, %19
  %28 = load i32, ptr %6, align 4, !tbaa !10
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %147

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8, !tbaa !151
  %32 = icmp ne ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call noalias ptr @malloc(i64 noundef 88) #9
  store ptr %34, ptr %8, align 8, !tbaa !151
  %35 = load ptr, ptr %8, align 8, !tbaa !151
  call void @llvm.memset.p0.i64(ptr align 8 %35, i8 0, i64 88, i1 false)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load ptr, ptr %7, align 8, !tbaa !134
  %38 = getelementptr inbounds nuw %struct.ScanState, ptr %37, i32 0, i32 1
  %39 = load i32, ptr %6, align 4, !tbaa !10
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x ptr], ptr %38, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !134
  %43 = icmp ne ptr %42, null
  br i1 %43, label %44, label %62

44:                                               ; preds = %36
  %45 = load ptr, ptr %8, align 8, !tbaa !151
  %46 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %7, align 8, !tbaa !134
  %48 = getelementptr inbounds nuw %struct.ScanState, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %7, align 8, !tbaa !134
  %50 = getelementptr inbounds nuw %struct.ScanState, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %6, align 4, !tbaa !10
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x ptr], ptr %50, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !134
  %55 = getelementptr inbounds nuw %struct.ScanState, ptr %54, i32 0, i32 3
  call void @action_diff(ptr noundef %46, ptr noundef %48, ptr noundef %55)
  %56 = load ptr, ptr %8, align 8, !tbaa !151
  %57 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %7, align 8, !tbaa !134
  %59 = getelementptr inbounds nuw %struct.ScanState, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %8, align 8, !tbaa !151
  %61 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %60, i32 0, i32 1
  call void @action_intersect(ptr noundef %57, ptr noundef %59, ptr noundef %61)
  br label %62

62:                                               ; preds = %44, %36
  %63 = load ptr, ptr %4, align 8, !tbaa !106
  %64 = getelementptr inbounds nuw %struct.Scanner, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %8, align 8, !tbaa !151
  %66 = call ptr @set_add_fn(ptr noundef %64, ptr noundef %65, ptr noundef @trans_hash_fns)
  store ptr %66, ptr %9, align 8, !tbaa !151
  %67 = load ptr, ptr %8, align 8, !tbaa !151
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store ptr null, ptr %8, align 8, !tbaa !151
  br label %137

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %8, align 8, !tbaa !151
  %73 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %72, i32 0, i32 1
  %74 = getelementptr inbounds nuw %struct.VecAction, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !153
  %76 = icmp ne ptr %75, null
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load ptr, ptr %8, align 8, !tbaa !151
  %79 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %78, i32 0, i32 1
  %80 = getelementptr inbounds nuw %struct.VecAction, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !153
  %82 = load ptr, ptr %8, align 8, !tbaa !151
  %83 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %82, i32 0, i32 1
  %84 = getelementptr inbounds nuw %struct.VecAction, ptr %83, i32 0, i32 3
  %85 = getelementptr inbounds [3 x ptr], ptr %84, i64 0, i64 0
  %86 = icmp ne ptr %81, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load ptr, ptr %8, align 8, !tbaa !151
  %89 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds nuw %struct.VecAction, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !153
  call void @free(ptr noundef %91) #7
  br label %92

92:                                               ; preds = %87, %77, %71
  br label %93

93:                                               ; preds = %92
  %94 = load ptr, ptr %8, align 8, !tbaa !151
  %95 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds nuw %struct.VecAction, ptr %95, i32 0, i32 0
  store i32 0, ptr %96, align 8, !tbaa !155
  %97 = load ptr, ptr %8, align 8, !tbaa !151
  %98 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %97, i32 0, i32 1
  %99 = getelementptr inbounds nuw %struct.VecAction, ptr %98, i32 0, i32 2
  store ptr null, ptr %99, align 8, !tbaa !153
  br label %100

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr %8, align 8, !tbaa !151
  %106 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %105, i32 0, i32 2
  %107 = getelementptr inbounds nuw %struct.VecAction, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !156
  %109 = icmp ne ptr %108, null
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load ptr, ptr %8, align 8, !tbaa !151
  %112 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %111, i32 0, i32 2
  %113 = getelementptr inbounds nuw %struct.VecAction, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !156
  %115 = load ptr, ptr %8, align 8, !tbaa !151
  %116 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %115, i32 0, i32 2
  %117 = getelementptr inbounds nuw %struct.VecAction, ptr %116, i32 0, i32 3
  %118 = getelementptr inbounds [3 x ptr], ptr %117, i64 0, i64 0
  %119 = icmp ne ptr %114, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load ptr, ptr %8, align 8, !tbaa !151
  %122 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %121, i32 0, i32 2
  %123 = getelementptr inbounds nuw %struct.VecAction, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !156
  call void @free(ptr noundef %124) #7
  br label %125

125:                                              ; preds = %120, %110, %104
  br label %126

126:                                              ; preds = %125
  %127 = load ptr, ptr %8, align 8, !tbaa !151
  %128 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %127, i32 0, i32 2
  %129 = getelementptr inbounds nuw %struct.VecAction, ptr %128, i32 0, i32 0
  store i32 0, ptr %129, align 8, !tbaa !157
  %130 = load ptr, ptr %8, align 8, !tbaa !151
  %131 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %130, i32 0, i32 2
  %132 = getelementptr inbounds nuw %struct.VecAction, ptr %131, i32 0, i32 2
  store ptr null, ptr %132, align 8, !tbaa !156
  br label %133

133:                                              ; preds = %126
  br label %134

134:                                              ; preds = %133
  br label %135

135:                                              ; preds = %134
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136, %69
  %138 = load ptr, ptr %9, align 8, !tbaa !151
  %139 = load ptr, ptr %7, align 8, !tbaa !134
  %140 = getelementptr inbounds nuw %struct.ScanState, ptr %139, i32 0, i32 4
  %141 = load i32, ptr %6, align 4, !tbaa !10
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x ptr], ptr %140, i64 0, i64 %142
  store ptr %138, ptr %143, align 8, !tbaa !151
  br label %144

144:                                              ; preds = %137
  %145 = load i32, ptr %6, align 4, !tbaa !10
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %6, align 4, !tbaa !10
  br label %27, !llvm.loop !158

147:                                              ; preds = %27
  br label %148

148:                                              ; preds = %147
  %149 = load i32, ptr %5, align 4, !tbaa !10
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %5, align 4, !tbaa !10
  br label %13, !llvm.loop !159

151:                                              ; preds = %13
  store i32 0, ptr %6, align 4, !tbaa !10
  %152 = load ptr, ptr %4, align 8, !tbaa !106
  %153 = getelementptr inbounds nuw %struct.Scanner, ptr %152, i32 0, i32 1
  call void @set_to_vec(ptr noundef %153)
  store i32 0, ptr %5, align 4, !tbaa !10
  br label %154

154:                                              ; preds = %172, %151
  %155 = load i32, ptr %5, align 4, !tbaa !10
  %156 = load ptr, ptr %4, align 8, !tbaa !106
  %157 = getelementptr inbounds nuw %struct.Scanner, ptr %156, i32 0, i32 1
  %158 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %157, i32 0, i32 0
  %159 = load i32, ptr %158, align 8, !tbaa !160
  %160 = icmp ult i32 %155, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %154
  %162 = load i32, ptr %5, align 4, !tbaa !10
  %163 = load ptr, ptr %4, align 8, !tbaa !106
  %164 = getelementptr inbounds nuw %struct.Scanner, ptr %163, i32 0, i32 1
  %165 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !161
  %167 = load i32, ptr %5, align 4, !tbaa !10
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !151
  %171 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %170, i32 0, i32 0
  store i32 %162, ptr %171, align 8, !tbaa !162
  br label %172

172:                                              ; preds = %161
  %173 = load i32, ptr %5, align 4, !tbaa !10
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr %5, align 4, !tbaa !10
  br label %154, !llvm.loop !163

175:                                              ; preds = %154
  %176 = load ptr, ptr %4, align 8, !tbaa !106
  %177 = getelementptr inbounds nuw %struct.Scanner, ptr %176, i32 0, i32 1
  %178 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %177, i32 0, i32 0
  %179 = load i32, ptr %178, align 8, !tbaa !160
  %180 = load ptr, ptr %3, align 8, !tbaa !8
  %181 = getelementptr inbounds nuw %struct.LexState, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !70
  %183 = add i32 %182, %179
  store i32 %183, ptr %181, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret void
}

declare signext i32 @set_union(ptr noundef, ptr noundef) #3

declare void @sort_VecAction(ptr noundef) #3

; Function Attrs: nounwind
define internal void @action_diff(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !110
  store ptr %1, ptr %5, align 8, !tbaa !110
  store ptr %2, ptr %6, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  store i32 0, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %9

9:                                                ; preds = %149, %3
  br label %10

10:                                               ; preds = %9
  %11 = load i32, ptr %7, align 4, !tbaa !10
  %12 = load ptr, ptr %5, align 8, !tbaa !110
  %13 = getelementptr inbounds nuw %struct.VecAction, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !164
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %280

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %277, %17
  %19 = load i32, ptr %8, align 4, !tbaa !10
  %20 = load ptr, ptr %6, align 8, !tbaa !110
  %21 = getelementptr inbounds nuw %struct.VecAction, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !164
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %128

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %126, %24
  %26 = load i32, ptr %7, align 4, !tbaa !10
  %27 = load ptr, ptr %5, align 8, !tbaa !110
  %28 = getelementptr inbounds nuw %struct.VecAction, ptr %27, i32 0, i32 0
  %29 = load i32, ptr %28, align 8, !tbaa !164
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %127

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %4, align 8, !tbaa !110
  %34 = getelementptr inbounds nuw %struct.VecAction, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !165
  %36 = icmp ne ptr %35, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %5, align 8, !tbaa !110
  %39 = getelementptr inbounds nuw %struct.VecAction, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !165
  %41 = load i32, ptr %7, align 4, !tbaa !10
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %7, align 4, !tbaa !10
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !52
  %46 = load ptr, ptr %4, align 8, !tbaa !110
  %47 = getelementptr inbounds nuw %struct.VecAction, ptr %46, i32 0, i32 3
  %48 = getelementptr inbounds [3 x ptr], ptr %47, i64 0, i64 0
  %49 = load ptr, ptr %4, align 8, !tbaa !110
  %50 = getelementptr inbounds nuw %struct.VecAction, ptr %49, i32 0, i32 2
  store ptr %48, ptr %50, align 8, !tbaa !165
  %51 = load ptr, ptr %4, align 8, !tbaa !110
  %52 = getelementptr inbounds nuw %struct.VecAction, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8, !tbaa !164
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 8, !tbaa !164
  %55 = zext i32 %53 to i64
  %56 = getelementptr inbounds nuw ptr, ptr %48, i64 %55
  store ptr %45, ptr %56, align 8, !tbaa !52
  br label %126

57:                                               ; preds = %32
  %58 = load ptr, ptr %4, align 8, !tbaa !110
  %59 = getelementptr inbounds nuw %struct.VecAction, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !165
  %61 = load ptr, ptr %4, align 8, !tbaa !110
  %62 = getelementptr inbounds nuw %struct.VecAction, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds [3 x ptr], ptr %62, i64 0, i64 0
  %64 = icmp eq ptr %60, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %57
  %66 = load ptr, ptr %4, align 8, !tbaa !110
  %67 = getelementptr inbounds nuw %struct.VecAction, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8, !tbaa !164
  %69 = icmp ult i32 %68, 3
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load ptr, ptr %5, align 8, !tbaa !110
  %72 = getelementptr inbounds nuw %struct.VecAction, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !165
  %74 = load i32, ptr %7, align 4, !tbaa !10
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr %7, align 4, !tbaa !10
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %73, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = load ptr, ptr %4, align 8, !tbaa !110
  %80 = getelementptr inbounds nuw %struct.VecAction, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !165
  %82 = load ptr, ptr %4, align 8, !tbaa !110
  %83 = getelementptr inbounds nuw %struct.VecAction, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !164
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !164
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds nuw ptr, ptr %81, i64 %86
  store ptr %78, ptr %87, align 8, !tbaa !52
  br label %126

88:                                               ; preds = %65
  br label %114

89:                                               ; preds = %57
  %90 = load ptr, ptr %4, align 8, !tbaa !110
  %91 = getelementptr inbounds nuw %struct.VecAction, ptr %90, i32 0, i32 0
  %92 = load i32, ptr %91, align 8, !tbaa !164
  %93 = and i32 %92, 7
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %89
  %96 = load ptr, ptr %5, align 8, !tbaa !110
  %97 = getelementptr inbounds nuw %struct.VecAction, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !165
  %99 = load i32, ptr %7, align 4, !tbaa !10
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %7, align 4, !tbaa !10
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds ptr, ptr %98, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = load ptr, ptr %4, align 8, !tbaa !110
  %105 = getelementptr inbounds nuw %struct.VecAction, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !165
  %107 = load ptr, ptr %4, align 8, !tbaa !110
  %108 = getelementptr inbounds nuw %struct.VecAction, ptr %107, i32 0, i32 0
  %109 = load i32, ptr %108, align 8, !tbaa !164
  %110 = add i32 %109, 1
  store i32 %110, ptr %108, align 8, !tbaa !164
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds nuw ptr, ptr %106, i64 %111
  store ptr %103, ptr %112, align 8, !tbaa !52
  br label %126

113:                                              ; preds = %89
  br label %114

114:                                              ; preds = %113, %88
  br label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %4, align 8, !tbaa !110
  %117 = load ptr, ptr %5, align 8, !tbaa !110
  %118 = getelementptr inbounds nuw %struct.VecAction, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !165
  %120 = load i32, ptr %7, align 4, !tbaa !10
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr %7, align 4, !tbaa !10
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds ptr, ptr %119, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %116, ptr noundef %124)
  br label %125

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %95, %70, %37
  br label %25, !llvm.loop !166

127:                                              ; preds = %25
  br label %280

128:                                              ; preds = %18
  br label %129

129:                                              ; preds = %276, %128
  %130 = load ptr, ptr %5, align 8, !tbaa !110
  %131 = getelementptr inbounds nuw %struct.VecAction, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !165
  %133 = load i32, ptr %7, align 4, !tbaa !10
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds ptr, ptr %132, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !52
  %137 = getelementptr inbounds nuw %struct.Action, ptr %136, i32 0, i32 4
  %138 = load i32, ptr %137, align 8, !tbaa !167
  %139 = load ptr, ptr %6, align 8, !tbaa !110
  %140 = getelementptr inbounds nuw %struct.VecAction, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !165
  %142 = load i32, ptr %8, align 4, !tbaa !10
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds ptr, ptr %141, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !52
  %146 = getelementptr inbounds nuw %struct.Action, ptr %145, i32 0, i32 4
  %147 = load i32, ptr %146, align 8, !tbaa !167
  %148 = icmp eq i32 %138, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %129
  %150 = load i32, ptr %7, align 4, !tbaa !10
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr %7, align 4, !tbaa !10
  %152 = load i32, ptr %8, align 4, !tbaa !10
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %8, align 4, !tbaa !10
  br label %9

154:                                              ; preds = %129
  %155 = load ptr, ptr %5, align 8, !tbaa !110
  %156 = getelementptr inbounds nuw %struct.VecAction, ptr %155, i32 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !165
  %158 = load i32, ptr %7, align 4, !tbaa !10
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds ptr, ptr %157, i64 %159
  %161 = load ptr, ptr %160, align 8, !tbaa !52
  %162 = getelementptr inbounds nuw %struct.Action, ptr %161, i32 0, i32 4
  %163 = load i32, ptr %162, align 8, !tbaa !167
  %164 = load ptr, ptr %6, align 8, !tbaa !110
  %165 = getelementptr inbounds nuw %struct.VecAction, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !165
  %167 = load i32, ptr %8, align 4, !tbaa !10
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds ptr, ptr %166, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !52
  %171 = getelementptr inbounds nuw %struct.Action, ptr %170, i32 0, i32 4
  %172 = load i32, ptr %171, align 8, !tbaa !167
  %173 = icmp ult i32 %163, %172
  br i1 %173, label %174, label %277

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr %4, align 8, !tbaa !110
  %177 = getelementptr inbounds nuw %struct.VecAction, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !165
  %179 = icmp ne ptr %178, null
  br i1 %179, label %200, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %5, align 8, !tbaa !110
  %182 = getelementptr inbounds nuw %struct.VecAction, ptr %181, i32 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !165
  %184 = load i32, ptr %7, align 4, !tbaa !10
  %185 = add nsw i32 %184, 1
  store i32 %185, ptr %7, align 4, !tbaa !10
  %186 = sext i32 %184 to i64
  %187 = getelementptr inbounds ptr, ptr %183, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !52
  %189 = load ptr, ptr %4, align 8, !tbaa !110
  %190 = getelementptr inbounds nuw %struct.VecAction, ptr %189, i32 0, i32 3
  %191 = getelementptr inbounds [3 x ptr], ptr %190, i64 0, i64 0
  %192 = load ptr, ptr %4, align 8, !tbaa !110
  %193 = getelementptr inbounds nuw %struct.VecAction, ptr %192, i32 0, i32 2
  store ptr %191, ptr %193, align 8, !tbaa !165
  %194 = load ptr, ptr %4, align 8, !tbaa !110
  %195 = getelementptr inbounds nuw %struct.VecAction, ptr %194, i32 0, i32 0
  %196 = load i32, ptr %195, align 8, !tbaa !164
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 8, !tbaa !164
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds nuw ptr, ptr %191, i64 %198
  store ptr %188, ptr %199, align 8, !tbaa !52
  br label %269

200:                                              ; preds = %175
  %201 = load ptr, ptr %4, align 8, !tbaa !110
  %202 = getelementptr inbounds nuw %struct.VecAction, ptr %201, i32 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !165
  %204 = load ptr, ptr %4, align 8, !tbaa !110
  %205 = getelementptr inbounds nuw %struct.VecAction, ptr %204, i32 0, i32 3
  %206 = getelementptr inbounds [3 x ptr], ptr %205, i64 0, i64 0
  %207 = icmp eq ptr %203, %206
  br i1 %207, label %208, label %232

208:                                              ; preds = %200
  %209 = load ptr, ptr %4, align 8, !tbaa !110
  %210 = getelementptr inbounds nuw %struct.VecAction, ptr %209, i32 0, i32 0
  %211 = load i32, ptr %210, align 8, !tbaa !164
  %212 = icmp ult i32 %211, 3
  br i1 %212, label %213, label %231

213:                                              ; preds = %208
  %214 = load ptr, ptr %5, align 8, !tbaa !110
  %215 = getelementptr inbounds nuw %struct.VecAction, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !165
  %217 = load i32, ptr %7, align 4, !tbaa !10
  %218 = add nsw i32 %217, 1
  store i32 %218, ptr %7, align 4, !tbaa !10
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds ptr, ptr %216, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !52
  %222 = load ptr, ptr %4, align 8, !tbaa !110
  %223 = getelementptr inbounds nuw %struct.VecAction, ptr %222, i32 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !165
  %225 = load ptr, ptr %4, align 8, !tbaa !110
  %226 = getelementptr inbounds nuw %struct.VecAction, ptr %225, i32 0, i32 0
  %227 = load i32, ptr %226, align 8, !tbaa !164
  %228 = add i32 %227, 1
  store i32 %228, ptr %226, align 8, !tbaa !164
  %229 = zext i32 %227 to i64
  %230 = getelementptr inbounds nuw ptr, ptr %224, i64 %229
  store ptr %221, ptr %230, align 8, !tbaa !52
  br label %269

231:                                              ; preds = %208
  br label %257

232:                                              ; preds = %200
  %233 = load ptr, ptr %4, align 8, !tbaa !110
  %234 = getelementptr inbounds nuw %struct.VecAction, ptr %233, i32 0, i32 0
  %235 = load i32, ptr %234, align 8, !tbaa !164
  %236 = and i32 %235, 7
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %256

238:                                              ; preds = %232
  %239 = load ptr, ptr %5, align 8, !tbaa !110
  %240 = getelementptr inbounds nuw %struct.VecAction, ptr %239, i32 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !165
  %242 = load i32, ptr %7, align 4, !tbaa !10
  %243 = add nsw i32 %242, 1
  store i32 %243, ptr %7, align 4, !tbaa !10
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds ptr, ptr %241, i64 %244
  %246 = load ptr, ptr %245, align 8, !tbaa !52
  %247 = load ptr, ptr %4, align 8, !tbaa !110
  %248 = getelementptr inbounds nuw %struct.VecAction, ptr %247, i32 0, i32 2
  %249 = load ptr, ptr %248, align 8, !tbaa !165
  %250 = load ptr, ptr %4, align 8, !tbaa !110
  %251 = getelementptr inbounds nuw %struct.VecAction, ptr %250, i32 0, i32 0
  %252 = load i32, ptr %251, align 8, !tbaa !164
  %253 = add i32 %252, 1
  store i32 %253, ptr %251, align 8, !tbaa !164
  %254 = zext i32 %252 to i64
  %255 = getelementptr inbounds nuw ptr, ptr %249, i64 %254
  store ptr %246, ptr %255, align 8, !tbaa !52
  br label %269

256:                                              ; preds = %232
  br label %257

257:                                              ; preds = %256, %231
  br label %258

258:                                              ; preds = %257
  %259 = load ptr, ptr %4, align 8, !tbaa !110
  %260 = load ptr, ptr %5, align 8, !tbaa !110
  %261 = getelementptr inbounds nuw %struct.VecAction, ptr %260, i32 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !165
  %263 = load i32, ptr %7, align 4, !tbaa !10
  %264 = add nsw i32 %263, 1
  store i32 %264, ptr %7, align 4, !tbaa !10
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds ptr, ptr %262, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %259, ptr noundef %267)
  br label %268

268:                                              ; preds = %258
  br label %269

269:                                              ; preds = %268, %238, %213, %180
  %270 = load i32, ptr %7, align 4, !tbaa !10
  %271 = load ptr, ptr %5, align 8, !tbaa !110
  %272 = getelementptr inbounds nuw %struct.VecAction, ptr %271, i32 0, i32 0
  %273 = load i32, ptr %272, align 8, !tbaa !164
  %274 = icmp uge i32 %270, %273
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  br label %280

276:                                              ; preds = %269
  br label %129

277:                                              ; preds = %154
  %278 = load i32, ptr %8, align 4, !tbaa !10
  %279 = add nsw i32 %278, 1
  store i32 %279, ptr %8, align 4, !tbaa !10
  br label %18

280:                                              ; preds = %275, %127, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  ret void
}

; Function Attrs: nounwind
define internal void @action_intersect(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !110
  store ptr %1, ptr %5, align 8, !tbaa !110
  store ptr %2, ptr %6, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #7
  store i32 0, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %9

9:                                                ; preds = %141, %3
  br label %10

10:                                               ; preds = %9
  %11 = load i32, ptr %7, align 4, !tbaa !10
  %12 = load ptr, ptr %5, align 8, !tbaa !110
  %13 = getelementptr inbounds nuw %struct.VecAction, ptr %12, i32 0, i32 0
  %14 = load i32, ptr %13, align 8, !tbaa !164
  %15 = icmp uge i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %177

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %174, %17
  %19 = load i32, ptr %8, align 4, !tbaa !10
  %20 = load ptr, ptr %6, align 8, !tbaa !110
  %21 = getelementptr inbounds nuw %struct.VecAction, ptr %20, i32 0, i32 0
  %22 = load i32, ptr %21, align 8, !tbaa !164
  %23 = icmp uge i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %177

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %173, %25
  %27 = load ptr, ptr %5, align 8, !tbaa !110
  %28 = getelementptr inbounds nuw %struct.VecAction, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !165
  %30 = load i32, ptr %7, align 4, !tbaa !10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = getelementptr inbounds nuw %struct.Action, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !167
  %36 = load ptr, ptr %6, align 8, !tbaa !110
  %37 = getelementptr inbounds nuw %struct.VecAction, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !165
  %39 = load i32, ptr %8, align 4, !tbaa !10
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !52
  %43 = getelementptr inbounds nuw %struct.Action, ptr %42, i32 0, i32 4
  %44 = load i32, ptr %43, align 8, !tbaa !167
  %45 = icmp eq i32 %35, %44
  br i1 %45, label %46, label %144

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %4, align 8, !tbaa !110
  %49 = getelementptr inbounds nuw %struct.VecAction, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !165
  %51 = icmp ne ptr %50, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %5, align 8, !tbaa !110
  %54 = getelementptr inbounds nuw %struct.VecAction, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !165
  %56 = load i32, ptr %7, align 4, !tbaa !10
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %7, align 4, !tbaa !10
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds ptr, ptr %55, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = load ptr, ptr %4, align 8, !tbaa !110
  %62 = getelementptr inbounds nuw %struct.VecAction, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds [3 x ptr], ptr %62, i64 0, i64 0
  %64 = load ptr, ptr %4, align 8, !tbaa !110
  %65 = getelementptr inbounds nuw %struct.VecAction, ptr %64, i32 0, i32 2
  store ptr %63, ptr %65, align 8, !tbaa !165
  %66 = load ptr, ptr %4, align 8, !tbaa !110
  %67 = getelementptr inbounds nuw %struct.VecAction, ptr %66, i32 0, i32 0
  %68 = load i32, ptr %67, align 8, !tbaa !164
  %69 = add i32 %68, 1
  store i32 %69, ptr %67, align 8, !tbaa !164
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds nuw ptr, ptr %63, i64 %70
  store ptr %60, ptr %71, align 8, !tbaa !52
  br label %141

72:                                               ; preds = %47
  %73 = load ptr, ptr %4, align 8, !tbaa !110
  %74 = getelementptr inbounds nuw %struct.VecAction, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !165
  %76 = load ptr, ptr %4, align 8, !tbaa !110
  %77 = getelementptr inbounds nuw %struct.VecAction, ptr %76, i32 0, i32 3
  %78 = getelementptr inbounds [3 x ptr], ptr %77, i64 0, i64 0
  %79 = icmp eq ptr %75, %78
  br i1 %79, label %80, label %104

80:                                               ; preds = %72
  %81 = load ptr, ptr %4, align 8, !tbaa !110
  %82 = getelementptr inbounds nuw %struct.VecAction, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !164
  %84 = icmp ult i32 %83, 3
  br i1 %84, label %85, label %103

85:                                               ; preds = %80
  %86 = load ptr, ptr %5, align 8, !tbaa !110
  %87 = getelementptr inbounds nuw %struct.VecAction, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !165
  %89 = load i32, ptr %7, align 4, !tbaa !10
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %7, align 4, !tbaa !10
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds ptr, ptr %88, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !52
  %94 = load ptr, ptr %4, align 8, !tbaa !110
  %95 = getelementptr inbounds nuw %struct.VecAction, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !165
  %97 = load ptr, ptr %4, align 8, !tbaa !110
  %98 = getelementptr inbounds nuw %struct.VecAction, ptr %97, i32 0, i32 0
  %99 = load i32, ptr %98, align 8, !tbaa !164
  %100 = add i32 %99, 1
  store i32 %100, ptr %98, align 8, !tbaa !164
  %101 = zext i32 %99 to i64
  %102 = getelementptr inbounds nuw ptr, ptr %96, i64 %101
  store ptr %93, ptr %102, align 8, !tbaa !52
  br label %141

103:                                              ; preds = %80
  br label %129

104:                                              ; preds = %72
  %105 = load ptr, ptr %4, align 8, !tbaa !110
  %106 = getelementptr inbounds nuw %struct.VecAction, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !164
  %108 = and i32 %107, 7
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %104
  %111 = load ptr, ptr %5, align 8, !tbaa !110
  %112 = getelementptr inbounds nuw %struct.VecAction, ptr %111, i32 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !165
  %114 = load i32, ptr %7, align 4, !tbaa !10
  %115 = add nsw i32 %114, 1
  store i32 %115, ptr %7, align 4, !tbaa !10
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds ptr, ptr %113, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !52
  %119 = load ptr, ptr %4, align 8, !tbaa !110
  %120 = getelementptr inbounds nuw %struct.VecAction, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !165
  %122 = load ptr, ptr %4, align 8, !tbaa !110
  %123 = getelementptr inbounds nuw %struct.VecAction, ptr %122, i32 0, i32 0
  %124 = load i32, ptr %123, align 8, !tbaa !164
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 8, !tbaa !164
  %126 = zext i32 %124 to i64
  %127 = getelementptr inbounds nuw ptr, ptr %121, i64 %126
  store ptr %118, ptr %127, align 8, !tbaa !52
  br label %141

128:                                              ; preds = %104
  br label %129

129:                                              ; preds = %128, %103
  br label %130

130:                                              ; preds = %129
  %131 = load ptr, ptr %4, align 8, !tbaa !110
  %132 = load ptr, ptr %5, align 8, !tbaa !110
  %133 = getelementptr inbounds nuw %struct.VecAction, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !165
  %135 = load i32, ptr %7, align 4, !tbaa !10
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %7, align 4, !tbaa !10
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds ptr, ptr %134, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !52
  call void @vec_add_internal(ptr noundef %131, ptr noundef %139)
  br label %140

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140, %110, %85, %52
  %142 = load i32, ptr %8, align 4, !tbaa !10
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %8, align 4, !tbaa !10
  br label %9

144:                                              ; preds = %26
  %145 = load ptr, ptr %5, align 8, !tbaa !110
  %146 = getelementptr inbounds nuw %struct.VecAction, ptr %145, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !165
  %148 = load i32, ptr %7, align 4, !tbaa !10
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %147, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !52
  %152 = getelementptr inbounds nuw %struct.Action, ptr %151, i32 0, i32 4
  %153 = load i32, ptr %152, align 8, !tbaa !167
  %154 = load ptr, ptr %6, align 8, !tbaa !110
  %155 = getelementptr inbounds nuw %struct.VecAction, ptr %154, i32 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !165
  %157 = load i32, ptr %8, align 4, !tbaa !10
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %156, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !52
  %161 = getelementptr inbounds nuw %struct.Action, ptr %160, i32 0, i32 4
  %162 = load i32, ptr %161, align 8, !tbaa !167
  %163 = icmp ult i32 %153, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %144
  %165 = load i32, ptr %7, align 4, !tbaa !10
  %166 = add nsw i32 %165, 1
  store i32 %166, ptr %7, align 4, !tbaa !10
  %167 = load i32, ptr %7, align 4, !tbaa !10
  %168 = load ptr, ptr %5, align 8, !tbaa !110
  %169 = getelementptr inbounds nuw %struct.VecAction, ptr %168, i32 0, i32 0
  %170 = load i32, ptr %169, align 8, !tbaa !164
  %171 = icmp uge i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  br label %177

173:                                              ; preds = %164
  br label %26

174:                                              ; preds = %144
  %175 = load i32, ptr %8, align 4, !tbaa !10
  %176 = add nsw i32 %175, 1
  store i32 %176, ptr %8, align 4, !tbaa !10
  br label %18

177:                                              ; preds = %172, %24, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #7
  ret void
}

declare ptr @set_add_fn(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
define internal signext i32 @trans_hash_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8, !tbaa !151
  store ptr %1, ptr %4, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #7
  store i32 0, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #7
  %7 = load ptr, ptr %4, align 8, !tbaa !168
  %8 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %7, i32 0, i32 2
  %9 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 0
  %10 = load ptr, ptr %9, align 8, !tbaa !110
  %11 = icmp ne ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %2
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, ptr %6, align 4, !tbaa !10
  %15 = load ptr, ptr %3, align 8, !tbaa !151
  %16 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds nuw %struct.VecAction, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !155
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load ptr, ptr %3, align 8, !tbaa !151
  %22 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %21, i32 0, i32 1
  %23 = getelementptr inbounds nuw %struct.VecAction, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !153
  %25 = load i32, ptr %6, align 4, !tbaa !10
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = getelementptr inbounds nuw %struct.Action, ptr %28, i32 0, i32 4
  %30 = load i32, ptr %29, align 8, !tbaa !167
  %31 = mul i32 3, %30
  %32 = load i32, ptr %5, align 4, !tbaa !10
  %33 = add i32 %32, %31
  store i32 %33, ptr %5, align 4, !tbaa !10
  br label %34

34:                                               ; preds = %20
  %35 = load i32, ptr %6, align 4, !tbaa !10
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %6, align 4, !tbaa !10
  br label %13, !llvm.loop !170

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37, %2
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, ptr %6, align 4, !tbaa !10
  %41 = load ptr, ptr %3, align 8, !tbaa !151
  %42 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %41, i32 0, i32 2
  %43 = getelementptr inbounds nuw %struct.VecAction, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !157
  %45 = icmp ult i32 %40, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %39
  %47 = load ptr, ptr %3, align 8, !tbaa !151
  %48 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %47, i32 0, i32 2
  %49 = getelementptr inbounds nuw %struct.VecAction, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !156
  %51 = load i32, ptr %6, align 4, !tbaa !10
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = getelementptr inbounds nuw %struct.Action, ptr %54, i32 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !167
  %57 = mul i32 3, %56
  %58 = load i32, ptr %5, align 4, !tbaa !10
  %59 = add i32 %58, %57
  store i32 %59, ptr %5, align 4, !tbaa !10
  br label %60

60:                                               ; preds = %46
  %61 = load i32, ptr %6, align 4, !tbaa !10
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %6, align 4, !tbaa !10
  br label %39, !llvm.loop !171

63:                                               ; preds = %39
  %64 = load i32, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #7
  ret i32 %64
}

; Function Attrs: nounwind
define internal signext i32 @trans_cmp_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !151
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %2, ptr %7, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !168
  %11 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %10, i32 0, i32 2
  %12 = getelementptr inbounds [2 x ptr], ptr %11, i64 0, i64 0
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = icmp ne ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr %5, align 8, !tbaa !151
  %17 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds nuw %struct.VecAction, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8, !tbaa !155
  %20 = load ptr, ptr %6, align 8, !tbaa !151
  %21 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %20, i32 0, i32 1
  %22 = getelementptr inbounds nuw %struct.VecAction, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !155
  %24 = icmp ne i32 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %108

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load ptr, ptr %5, align 8, !tbaa !151
  %29 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %28, i32 0, i32 2
  %30 = getelementptr inbounds nuw %struct.VecAction, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8, !tbaa !157
  %32 = load ptr, ptr %6, align 8, !tbaa !151
  %33 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %32, i32 0, i32 2
  %34 = getelementptr inbounds nuw %struct.VecAction, ptr %33, i32 0, i32 0
  %35 = load i32, ptr %34, align 8, !tbaa !157
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %108

38:                                               ; preds = %27
  %39 = load ptr, ptr %7, align 8, !tbaa !168
  %40 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %39, i32 0, i32 2
  %41 = getelementptr inbounds [2 x ptr], ptr %40, i64 0, i64 0
  %42 = load ptr, ptr %41, align 8, !tbaa !110
  %43 = icmp ne ptr %42, null
  br i1 %43, label %76, label %44

44:                                               ; preds = %38
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, ptr %8, align 4, !tbaa !10
  %47 = load ptr, ptr %5, align 8, !tbaa !151
  %48 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %47, i32 0, i32 1
  %49 = getelementptr inbounds nuw %struct.VecAction, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8, !tbaa !155
  %51 = icmp ult i32 %46, %50
  br i1 %51, label %52, label %75

52:                                               ; preds = %45
  %53 = load ptr, ptr %5, align 8, !tbaa !151
  %54 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %53, i32 0, i32 1
  %55 = getelementptr inbounds nuw %struct.VecAction, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !153
  %57 = load i32, ptr %8, align 4, !tbaa !10
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds ptr, ptr %56, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = load ptr, ptr %6, align 8, !tbaa !151
  %62 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %61, i32 0, i32 1
  %63 = getelementptr inbounds nuw %struct.VecAction, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !153
  %65 = load i32, ptr %8, align 4, !tbaa !10
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = icmp ne ptr %60, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  store i32 1, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %108

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %8, align 4, !tbaa !10
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %8, align 4, !tbaa !10
  br label %45, !llvm.loop !172

75:                                               ; preds = %45
  br label %76

76:                                               ; preds = %75, %38
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %77

77:                                               ; preds = %104, %76
  %78 = load i32, ptr %8, align 4, !tbaa !10
  %79 = load ptr, ptr %5, align 8, !tbaa !151
  %80 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %79, i32 0, i32 2
  %81 = getelementptr inbounds nuw %struct.VecAction, ptr %80, i32 0, i32 0
  %82 = load i32, ptr %81, align 8, !tbaa !157
  %83 = icmp ult i32 %78, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %77
  %85 = load ptr, ptr %5, align 8, !tbaa !151
  %86 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %85, i32 0, i32 2
  %87 = getelementptr inbounds nuw %struct.VecAction, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !156
  %89 = load i32, ptr %8, align 4, !tbaa !10
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds ptr, ptr %88, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !52
  %93 = load ptr, ptr %6, align 8, !tbaa !151
  %94 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %93, i32 0, i32 2
  %95 = getelementptr inbounds nuw %struct.VecAction, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !156
  %97 = load i32, ptr %8, align 4, !tbaa !10
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  %101 = icmp ne ptr %92, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %84
  store i32 1, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %108

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, ptr %8, align 4, !tbaa !10
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %8, align 4, !tbaa !10
  br label %77, !llvm.loop !173

107:                                              ; preds = %77
  store i32 0, ptr %4, align 4
  store i32 1, ptr %9, align 4
  br label %108

108:                                              ; preds = %107, %102, %70, %37, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #7
  %109 = load i32, ptr %4, align 4
  ret i32 %109
}

; Function Attrs: nounwind
define internal void @free_NFAState(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %3) #7
  store i32 0, ptr %3, align 4, !tbaa !10
  br label %4

4:                                                ; preds = %59, %1
  %5 = load i32, ptr %3, align 4, !tbaa !10
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %62

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr %2, align 8, !tbaa !71
  %10 = getelementptr inbounds nuw %struct.NFAState, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %3, align 4, !tbaa !10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [256 x %struct.anon.6], ptr %10, i64 0, i64 %12
  %14 = getelementptr inbounds nuw %struct.anon.6, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %8
  %18 = load ptr, ptr %2, align 8, !tbaa !71
  %19 = getelementptr inbounds nuw %struct.NFAState, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %3, align 4, !tbaa !10
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [256 x %struct.anon.6], ptr %19, i64 0, i64 %21
  %23 = getelementptr inbounds nuw %struct.anon.6, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  %25 = load ptr, ptr %2, align 8, !tbaa !71
  %26 = getelementptr inbounds nuw %struct.NFAState, ptr %25, i32 0, i32 1
  %27 = load i32, ptr %3, align 4, !tbaa !10
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [256 x %struct.anon.6], ptr %26, i64 0, i64 %28
  %30 = getelementptr inbounds nuw %struct.anon.6, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds [3 x ptr], ptr %30, i64 0, i64 0
  %32 = icmp ne ptr %24, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load ptr, ptr %2, align 8, !tbaa !71
  %35 = getelementptr inbounds nuw %struct.NFAState, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %3, align 4, !tbaa !10
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x %struct.anon.6], ptr %35, i64 0, i64 %37
  %39 = getelementptr inbounds nuw %struct.anon.6, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !75
  call void @free(ptr noundef %40) #7
  br label %41

41:                                               ; preds = %33, %17, %8
  br label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %2, align 8, !tbaa !71
  %44 = getelementptr inbounds nuw %struct.NFAState, ptr %43, i32 0, i32 1
  %45 = load i32, ptr %3, align 4, !tbaa !10
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [256 x %struct.anon.6], ptr %44, i64 0, i64 %46
  %48 = getelementptr inbounds nuw %struct.anon.6, ptr %47, i32 0, i32 0
  store i32 0, ptr %48, align 8, !tbaa !74
  %49 = load ptr, ptr %2, align 8, !tbaa !71
  %50 = getelementptr inbounds nuw %struct.NFAState, ptr %49, i32 0, i32 1
  %51 = load i32, ptr %3, align 4, !tbaa !10
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [256 x %struct.anon.6], ptr %50, i64 0, i64 %52
  %54 = getelementptr inbounds nuw %struct.anon.6, ptr %53, i32 0, i32 2
  store ptr null, ptr %54, align 8, !tbaa !75
  br label %55

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load i32, ptr %3, align 4, !tbaa !10
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %3, align 4, !tbaa !10
  br label %4, !llvm.loop !174

62:                                               ; preds = %4
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %2, align 8, !tbaa !71
  %65 = getelementptr inbounds nuw %struct.NFAState, ptr %64, i32 0, i32 2
  %66 = getelementptr inbounds nuw %struct.anon.7, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  %68 = icmp ne ptr %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load ptr, ptr %2, align 8, !tbaa !71
  %71 = getelementptr inbounds nuw %struct.NFAState, ptr %70, i32 0, i32 2
  %72 = getelementptr inbounds nuw %struct.anon.7, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !92
  %74 = load ptr, ptr %2, align 8, !tbaa !71
  %75 = getelementptr inbounds nuw %struct.NFAState, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds nuw %struct.anon.7, ptr %75, i32 0, i32 3
  %77 = getelementptr inbounds [3 x ptr], ptr %76, i64 0, i64 0
  %78 = icmp ne ptr %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %69
  %80 = load ptr, ptr %2, align 8, !tbaa !71
  %81 = getelementptr inbounds nuw %struct.NFAState, ptr %80, i32 0, i32 2
  %82 = getelementptr inbounds nuw %struct.anon.7, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !92
  call void @free(ptr noundef %83) #7
  br label %84

84:                                               ; preds = %79, %69, %63
  br label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %2, align 8, !tbaa !71
  %87 = getelementptr inbounds nuw %struct.NFAState, ptr %86, i32 0, i32 2
  %88 = getelementptr inbounds nuw %struct.anon.7, ptr %87, i32 0, i32 0
  store i32 0, ptr %88, align 8, !tbaa !93
  %89 = load ptr, ptr %2, align 8, !tbaa !71
  %90 = getelementptr inbounds nuw %struct.NFAState, ptr %89, i32 0, i32 2
  %91 = getelementptr inbounds nuw %struct.anon.7, ptr %90, i32 0, i32 2
  store ptr null, ptr %91, align 8, !tbaa !92
  br label %92

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %2, align 8, !tbaa !71
  %98 = getelementptr inbounds nuw %struct.NFAState, ptr %97, i32 0, i32 3
  %99 = getelementptr inbounds nuw %struct.anon.8, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !76
  %101 = icmp ne ptr %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %96
  %103 = load ptr, ptr %2, align 8, !tbaa !71
  %104 = getelementptr inbounds nuw %struct.NFAState, ptr %103, i32 0, i32 3
  %105 = getelementptr inbounds nuw %struct.anon.8, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !76
  %107 = load ptr, ptr %2, align 8, !tbaa !71
  %108 = getelementptr inbounds nuw %struct.NFAState, ptr %107, i32 0, i32 3
  %109 = getelementptr inbounds nuw %struct.anon.8, ptr %108, i32 0, i32 3
  %110 = getelementptr inbounds [3 x ptr], ptr %109, i64 0, i64 0
  %111 = icmp ne ptr %106, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %102
  %113 = load ptr, ptr %2, align 8, !tbaa !71
  %114 = getelementptr inbounds nuw %struct.NFAState, ptr %113, i32 0, i32 3
  %115 = getelementptr inbounds nuw %struct.anon.8, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  call void @free(ptr noundef %116) #7
  br label %117

117:                                              ; preds = %112, %102, %96
  br label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr %2, align 8, !tbaa !71
  %120 = getelementptr inbounds nuw %struct.NFAState, ptr %119, i32 0, i32 3
  %121 = getelementptr inbounds nuw %struct.anon.8, ptr %120, i32 0, i32 0
  store i32 0, ptr %121, align 8, !tbaa !78
  %122 = load ptr, ptr %2, align 8, !tbaa !71
  %123 = getelementptr inbounds nuw %struct.NFAState, ptr %122, i32 0, i32 3
  %124 = getelementptr inbounds nuw %struct.anon.8, ptr %123, i32 0, i32 2
  store ptr null, ptr %124, align 8, !tbaa !76
  br label %125

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load ptr, ptr %2, align 8, !tbaa !71
  call void @free(ptr noundef %129) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %3) #7
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS7Grammar", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS8LexState", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 88}
!13 = !{!"Grammar", !14, i64 0, !15, i64 8, !18, i64 48, !20, i64 88, !22, i64 128, !23, i64 144, !11, i64 152, !24, i64 160, !26, i64 200, !14, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !6, i64 276, !11, i64 532, !11, i64 536, !11, i64 540, !11, i64 544, !11, i64 548, !28, i64 552, !29, i64 560, !30, i64 568, !11, i64 576, !11, i64 580, !11, i64 584, !11, i64 588}
!14 = !{!"p1 omnipotent char", !5, i64 0}
!15 = !{!"", !11, i64 0, !11, i64 4, !16, i64 8, !6, i64 16}
!16 = !{!"p2 _ZTS10Production", !17, i64 0}
!17 = !{!"any p2 pointer", !5, i64 0}
!18 = !{!"", !11, i64 0, !11, i64 4, !19, i64 8, !6, i64 16}
!19 = !{!"p2 _ZTS4Term", !17, i64 0}
!20 = !{!"", !11, i64 0, !11, i64 4, !21, i64 8, !6, i64 16}
!21 = !{!"p2 _ZTS5State", !17, i64 0}
!22 = !{!"Code", !14, i64 0, !11, i64 8}
!23 = !{!"p1 _ZTS4Code", !5, i64 0}
!24 = !{!"", !11, i64 0, !11, i64 4, !25, i64 8, !6, i64 16}
!25 = !{!"p2 _ZTS11Declaration", !17, i64 0}
!26 = !{!"", !11, i64 0, !11, i64 4, !27, i64 8, !6, i64 16}
!27 = !{!"p2 _ZTS6D_Pass", !17, i64 0}
!28 = !{!"p1 _ZTS10Production", !5, i64 0}
!29 = !{!"p1 _ZTS4Rule", !5, i64 0}
!30 = !{!"p1 _ZTS4Elem", !5, i64 0}
!31 = !{!13, !21, i64 96}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTS5State", !5, i64 0}
!34 = !{!35, !33, i64 400}
!35 = !{!"State", !11, i64 0, !36, i64 8, !37, i64 16, !37, i64 56, !39, i64 96, !41, i64 136, !41, i64 176, !43, i64 216, !43, i64 256, !45, i64 296, !11, i64 376, !11, i64 376, !11, i64 376, !11, i64 376, !14, i64 384, !11, i64 392, !33, i64 400, !33, i64 408, !29, i64 416, !29, i64 424}
!36 = !{!"long long", !6, i64 0}
!37 = !{!"", !11, i64 0, !11, i64 4, !38, i64 8, !6, i64 16}
!38 = !{!"p2 _ZTS4Elem", !17, i64 0}
!39 = !{!"", !11, i64 0, !11, i64 4, !40, i64 8, !6, i64 16}
!40 = !{!"p2 _ZTS4Goto", !17, i64 0}
!41 = !{!"", !11, i64 0, !11, i64 4, !42, i64 8, !6, i64 16}
!42 = !{!"p2 _ZTS6Action", !17, i64 0}
!43 = !{!"", !11, i64 0, !11, i64 4, !44, i64 8, !6, i64 16}
!44 = !{!"p2 _ZTS4Hint", !17, i64 0}
!45 = !{!"Scanner", !46, i64 0, !48, i64 40}
!46 = !{!"", !11, i64 0, !11, i64 4, !47, i64 8, !6, i64 16}
!47 = !{!"p2 _ZTS9ScanState", !17, i64 0}
!48 = !{!"", !11, i64 0, !11, i64 4, !49, i64 8, !6, i64 16}
!49 = !{!"p2 _ZTS19ScanStateTransition", !17, i64 0}
!50 = !{!35, !11, i64 136}
!51 = !{!35, !42, i64 144}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS6Action", !5, i64 0}
!54 = !{!55, !56, i64 8}
!55 = !{!"Action", !11, i64 0, !56, i64 8, !29, i64 16, !33, i64 24, !11, i64 32, !14, i64 40}
!56 = !{!"p1 _ZTS4Term", !5, i64 0}
!57 = distinct !{!57, !58}
!58 = !{!"llvm.loop.mustprogress"}
!59 = distinct !{!59, !58}
!60 = distinct !{!60, !58}
!61 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 8, !62, i64 16, i64 24, !63, i64 40, i64 4, !10, i64 44, i64 4, !10, i64 48, i64 8, !64, i64 56, i64 24, !63}
!62 = !{!47, !47, i64 0}
!63 = !{!6, !6, i64 0}
!64 = !{!49, !49, i64 0}
!65 = distinct !{!65, !58}
!66 = !{!67, !11, i64 52}
!67 = !{!"LexState", !11, i64 0, !68, i64 8, !11, i64 48, !11, i64 52, !11, i64 56}
!68 = !{!"", !11, i64 0, !11, i64 4, !69, i64 8, !6, i64 16}
!69 = !{!"p2 _ZTS8NFAState", !17, i64 0}
!70 = !{!67, !11, i64 48}
!71 = !{!72, !72, i64 0}
!72 = !{!"p1 _ZTS8NFAState", !5, i64 0}
!73 = !{!55, !11, i64 0}
!74 = !{!68, !11, i64 0}
!75 = !{!68, !69, i64 8}
!76 = !{!77, !42, i64 10296}
!77 = !{!"NFAState", !11, i64 0, !6, i64 8, !68, i64 10248, !41, i64 10288, !41, i64 10328}
!78 = !{!77, !11, i64 10288}
!79 = !{!80, !11, i64 0}
!80 = !{!"Term", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !14, i64 24, !11, i64 32, !11, i64 36, !11, i64 36, !28, i64 40}
!81 = !{!80, !14, i64 24}
!82 = !{!14, !14, i64 0}
!83 = distinct !{!83, !58}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 short", !5, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !6, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"p1 int", !5, i64 0}
!90 = distinct !{!90, !58}
!91 = distinct !{!91, !58}
!92 = !{!77, !69, i64 10256}
!93 = !{!77, !11, i64 10248}
!94 = !{!67, !11, i64 56}
!95 = distinct !{!95, !58}
!96 = !{!67, !11, i64 8}
!97 = !{!67, !69, i64 16}
!98 = !{!67, !11, i64 0}
!99 = !{!77, !11, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p2 omnipotent char", !17, i64 0}
!102 = distinct !{!102, !58}
!103 = distinct !{!103, !58}
!104 = distinct !{!104, !58}
!105 = distinct !{!105, !58}
!106 = !{!107, !107, i64 0}
!107 = !{!"p1 _ZTS7Scanner", !5, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"p1 _ZTS8DFAState", !5, i64 0}
!110 = !{!5, !5, i64 0}
!111 = !{!112, !69, i64 8}
!112 = !{!"DFAState", !68, i64 0, !6, i64 40, !113, i64 2088}
!113 = !{!"p1 _ZTS9ScanState", !5, i64 0}
!114 = !{!112, !11, i64 0}
!115 = !{!116, !117, i64 8}
!116 = !{!"", !11, i64 0, !11, i64 4, !117, i64 8, !6, i64 16}
!117 = !{!"p2 _ZTS8DFAState", !17, i64 0}
!118 = !{!116, !11, i64 0}
!119 = distinct !{!119, !58}
!120 = distinct !{!120, !58}
!121 = distinct !{!121, !58}
!122 = distinct !{!122, !58}
!123 = distinct !{!123, !58}
!124 = distinct !{!124, !58}
!125 = distinct !{!125, !58}
!126 = distinct !{!126, !58}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !58}
!129 = !{!46, !11, i64 0}
!130 = !{!46, !47, i64 8}
!131 = !{!112, !113, i64 2088}
!132 = !{!133, !11, i64 0}
!133 = !{!"ScanState", !11, i64 0, !6, i64 8, !41, i64 2056, !41, i64 2096, !6, i64 2136}
!134 = !{!113, !113, i64 0}
!135 = distinct !{!135, !58}
!136 = distinct !{!136, !58}
!137 = !{!80, !11, i64 8}
!138 = distinct !{!138, !58}
!139 = distinct !{!139, !58}
!140 = !{!133, !42, i64 2064}
!141 = !{!133, !11, i64 2056}
!142 = distinct !{!142, !58}
!143 = distinct !{!143, !58}
!144 = distinct !{!144, !58}
!145 = distinct !{!145, !58}
!146 = distinct !{!146, !58}
!147 = distinct !{!147, !58}
!148 = distinct !{!148, !58}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !58}
!151 = !{!152, !152, i64 0}
!152 = !{!"p1 _ZTS19ScanStateTransition", !5, i64 0}
!153 = !{!154, !42, i64 16}
!154 = !{!"ScanStateTransition", !11, i64 0, !41, i64 8, !41, i64 48}
!155 = !{!154, !11, i64 8}
!156 = !{!154, !42, i64 56}
!157 = !{!154, !11, i64 48}
!158 = distinct !{!158, !58}
!159 = distinct !{!159, !58}
!160 = !{!45, !11, i64 40}
!161 = !{!45, !49, i64 48}
!162 = !{!154, !11, i64 0}
!163 = distinct !{!163, !58}
!164 = !{!41, !11, i64 0}
!165 = !{!41, !42, i64 8}
!166 = distinct !{!166, !58}
!167 = !{!55, !11, i64 32}
!168 = !{!169, !169, i64 0}
!169 = !{!"p1 _ZTS10hash_fns_t", !5, i64 0}
!170 = distinct !{!170, !58}
!171 = distinct !{!171, !58}
!172 = distinct !{!172, !58}
!173 = distinct !{!173, !58}
!174 = distinct !{!174, !58}
