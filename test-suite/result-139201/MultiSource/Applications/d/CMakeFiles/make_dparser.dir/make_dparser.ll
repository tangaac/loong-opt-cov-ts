; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/make_dparser.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/make_dparser.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.D_ParserTables = type { i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.ArgumentState = type { ptr, i32, ptr, ptr }
%struct.Grammar = type { ptr, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.Code, ptr, i32, %struct.anon.2, %struct.anon.3, ptr, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.1 = type { i32, i32, ptr, [3 x ptr] }
%struct.Code = type { ptr, i32 }
%struct.anon.2 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }

@set_op_priority_from_rule = internal global i32 0, align 4
@right_recursive_BNF = internal global i32 0, align 4
@states_for_whitespace = internal global i32 1, align 4
@states_for_all_nterms = internal global i32 0, align 4
@tokenizer = internal global i32 0, align 4
@longest_match = internal global i32 0, align 4
@grammar_ident = internal global [256 x i8] c"gram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@scanner_blocks = internal global i32 4, align 4
@scanner_block_size = internal global i32 0, align 4
@write_line_directives = internal global i32 1, align 4
@write_header = internal global i32 -1, align 4
@token_type = internal global i32 0, align 4
@parser_tables_dparser_gram = external global %struct.D_ParserTables, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to parse grammar '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to load grammar '%s'\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to write C tables '%s'\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@arg_state = internal global { ptr, i32, [4 x i8], ptr, ptr } { ptr null, i32 0, [4 x i8] zeroinitializer, ptr @.str.3, ptr @arg_desc }, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"longest_match\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Use Longest Match Rule for Tokens\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"D_MAKE_LONGEST_MATCH\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"tokenizer\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Tokenizer for START\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"D_MAKE_PARSER_TOKENIZER\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"write_header\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Write Header (-1:if not empty)\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"D_MAKE_PARSER_HEADER\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"token_type\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Token Type (0:define, 1:enum)\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"D_MAKE_PARSER_TOKEN\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"whitespace_states\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Compute Whitespace States\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"D_MAKE_PARSER_WHITESPACE\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"all_states\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Compute States For All NTERMs\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"D_MAKE_PARSER_ALL_NTERMS\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"grammar_ident\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Grammar Identifier\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"S255\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"D_MAKE_PARSER_GRAMMAR_IDENT\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"scanner_blocks\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"Scanner Blocks\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"D_MAKE_PARSER_SCANNER_BLOCKS\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"op_pri_from_rule\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Set Operator Priority From Rule\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"D_MAKE_PARSER_SET_PRIORITY\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"right_recurse_BNF\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"Use Right Recursion For */+\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"D_MAKE_PARSER_RIGHT_RECURSIVE_BNF\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"write_lines\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"Write #line(s)\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"D_MAKE_PARSER_WRITE_LINE_DIRECTIVES\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Verbose\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@verbose_level = external global i32, align 4
@.str.44 = private unnamed_addr constant [22 x i8] c"D_MAKE_PARSER_VERBOSE\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@debug_level = external global i32, align 4
@.str.47 = private unnamed_addr constant [20 x i8] c"D_MAKE_PARSER_DEBUG\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@arg_desc = internal global [15 x { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr }] [{ ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.5, i8 108, [7 x i8] zeroinitializer, ptr @.str.6, ptr @.str.7, ptr @longest_match, ptr @.str.8, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.9, i8 84, [7 x i8] zeroinitializer, ptr @.str.10, ptr @.str.7, ptr @tokenizer, ptr @.str.11, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.12, i8 72, [7 x i8] zeroinitializer, ptr @.str.13, ptr @.str.14, ptr @write_header, ptr @.str.15, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.16, i8 116, [7 x i8] zeroinitializer, ptr @.str.17, ptr @.str.14, ptr @token_type, ptr @.str.18, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.19, i8 67, [7 x i8] zeroinitializer, ptr @.str.20, ptr @.str.7, ptr @states_for_whitespace, ptr @.str.21, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.22, i8 65, [7 x i8] zeroinitializer, ptr @.str.23, ptr @.str.7, ptr @states_for_all_nterms, ptr @.str.24, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.25, i8 105, [7 x i8] zeroinitializer, ptr @.str.26, ptr @.str.27, ptr @grammar_ident, ptr @.str.28, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.29, i8 98, [7 x i8] zeroinitializer, ptr @.str.30, ptr @.str.14, ptr @scanner_blocks, ptr @.str.31, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.32, i8 112, [7 x i8] zeroinitializer, ptr @.str.33, ptr @.str.7, ptr @set_op_priority_from_rule, ptr @.str.34, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.35, i8 114, [7 x i8] zeroinitializer, ptr @.str.36, ptr @.str.7, ptr @right_recursive_BNF, ptr @.str.37, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.38, i8 76, [7 x i8] zeroinitializer, ptr @.str.39, ptr @.str.7, ptr @write_line_directives, ptr @.str.40, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.41, i8 118, [7 x i8] zeroinitializer, ptr @.str.42, ptr @.str.43, ptr @verbose_level, ptr @.str.44, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.45, i8 100, [7 x i8] zeroinitializer, ptr @.str.46, ptr @.str.43, ptr @debug_level, ptr @.str.47, ptr null }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } { ptr @.str.48, i8 104, [7 x i8] zeroinitializer, ptr @.str.49, ptr null, ptr null, ptr null, ptr @help }, { ptr, i8, [7 x i8], ptr, ptr, ptr, ptr, ptr } zeroinitializer], align 8
@stderr = external global ptr, align 8
@.str.51 = private unnamed_addr constant [26 x i8] c"D Make Parser Version %s \00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"Copyright (c) 2002-2003 John Plevyak\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #3
  %8 = load ptr, ptr %5, align 8, !tbaa !7
  call void @process_args(ptr noundef @arg_state, ptr noundef %8)
  %9 = load i32, ptr getelementptr inbounds nuw (%struct.ArgumentState, ptr @arg_state, i32 0, i32 1), align 8, !tbaa !11
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @help(ptr noundef @arg_state, ptr noundef null)
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr @arg_state, align 8, !tbaa !14
  %14 = getelementptr inbounds ptr, ptr %13, i64 0
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  store ptr %15, ptr %6, align 8, !tbaa !15
  %16 = load ptr, ptr %6, align 8, !tbaa !15
  %17 = call ptr @new_D_Grammar(ptr noundef %16)
  store ptr %17, ptr %7, align 8, !tbaa !16
  %18 = load i32, ptr @set_op_priority_from_rule, align 4, !tbaa !3
  %19 = load ptr, ptr %7, align 8, !tbaa !16
  %20 = getelementptr inbounds nuw %struct.Grammar, ptr %19, i32 0, i32 10
  store i32 %18, ptr %20, align 8, !tbaa !18
  %21 = load i32, ptr @right_recursive_BNF, align 4, !tbaa !3
  %22 = load ptr, ptr %7, align 8, !tbaa !16
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 11
  store i32 %21, ptr %23, align 4, !tbaa !35
  %24 = load i32, ptr @states_for_whitespace, align 4, !tbaa !3
  %25 = load ptr, ptr %7, align 8, !tbaa !16
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 12
  store i32 %24, ptr %26, align 8, !tbaa !36
  %27 = load i32, ptr @states_for_all_nterms, align 4, !tbaa !3
  %28 = load ptr, ptr %7, align 8, !tbaa !16
  %29 = getelementptr inbounds nuw %struct.Grammar, ptr %28, i32 0, i32 13
  store i32 %27, ptr %29, align 4, !tbaa !37
  %30 = load i32, ptr @tokenizer, align 4, !tbaa !3
  %31 = load ptr, ptr %7, align 8, !tbaa !16
  %32 = getelementptr inbounds nuw %struct.Grammar, ptr %31, i32 0, i32 14
  store i32 %30, ptr %32, align 8, !tbaa !38
  %33 = load i32, ptr @longest_match, align 4, !tbaa !3
  %34 = load ptr, ptr %7, align 8, !tbaa !16
  %35 = getelementptr inbounds nuw %struct.Grammar, ptr %34, i32 0, i32 15
  store i32 %33, ptr %35, align 4, !tbaa !39
  %36 = load ptr, ptr %7, align 8, !tbaa !16
  %37 = getelementptr inbounds nuw %struct.Grammar, ptr %36, i32 0, i32 17
  %38 = getelementptr inbounds [256 x i8], ptr %37, i64 0, i64 0
  %39 = call ptr @strcpy(ptr noundef %38, ptr noundef @grammar_ident) #3
  %40 = load i32, ptr @scanner_blocks, align 4, !tbaa !3
  %41 = load ptr, ptr %7, align 8, !tbaa !16
  %42 = getelementptr inbounds nuw %struct.Grammar, ptr %41, i32 0, i32 18
  store i32 %40, ptr %42, align 4, !tbaa !40
  %43 = load i32, ptr @scanner_block_size, align 4, !tbaa !3
  %44 = load ptr, ptr %7, align 8, !tbaa !16
  %45 = getelementptr inbounds nuw %struct.Grammar, ptr %44, i32 0, i32 19
  store i32 %43, ptr %45, align 8, !tbaa !41
  %46 = load i32, ptr @write_line_directives, align 4, !tbaa !3
  %47 = load ptr, ptr %7, align 8, !tbaa !16
  %48 = getelementptr inbounds nuw %struct.Grammar, ptr %47, i32 0, i32 20
  store i32 %46, ptr %48, align 4, !tbaa !42
  %49 = load i32, ptr @write_header, align 4, !tbaa !3
  %50 = load ptr, ptr %7, align 8, !tbaa !16
  %51 = getelementptr inbounds nuw %struct.Grammar, ptr %50, i32 0, i32 21
  store i32 %49, ptr %51, align 8, !tbaa !43
  %52 = load i32, ptr @token_type, align 4, !tbaa !3
  %53 = load ptr, ptr %7, align 8, !tbaa !16
  %54 = getelementptr inbounds nuw %struct.Grammar, ptr %53, i32 0, i32 22
  store i32 %52, ptr %54, align 4, !tbaa !44
  %55 = load ptr, ptr %7, align 8, !tbaa !16
  %56 = call signext i32 @parse_grammar(ptr noundef %55, ptr noundef @parser_tables_dparser_gram, i32 noundef signext 32)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %12
  %59 = load ptr, ptr %6, align 8, !tbaa !15
  call void (ptr, ...) @d_fail(ptr noundef @.str, ptr noundef %59)
  br label %60

60:                                               ; preds = %58, %12
  %61 = load ptr, ptr %7, align 8, !tbaa !16
  %62 = call signext i32 @build_grammar(ptr noundef %61)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load ptr, ptr %6, align 8, !tbaa !15
  call void (ptr, ...) @d_fail(ptr noundef @.str.1, ptr noundef %65)
  br label %66

66:                                               ; preds = %64, %60
  %67 = load ptr, ptr %7, align 8, !tbaa !16
  %68 = call signext i32 @write_ctables(ptr noundef %67)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load ptr, ptr %6, align 8, !tbaa !15
  call void (ptr, ...) @d_fail(ptr noundef @.str.2, ptr noundef %71)
  br label %72

72:                                               ; preds = %70, %66
  %73 = load ptr, ptr %7, align 8, !tbaa !16
  call void @free_D_Grammar(ptr noundef %73)
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare void @process_args(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
define internal void @help(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [30 x i8], align 1
  store ptr %0, ptr %3, align 8, !tbaa !45
  store ptr %1, ptr %4, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 30, ptr %5) #3
  %6 = getelementptr inbounds [30 x i8], ptr %5, i64 0, i64 0
  call void @d_version(ptr noundef %6)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !47
  %8 = getelementptr inbounds [30 x i8], ptr %5, i64 0, i64 0
  %9 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.51, ptr noundef %8) #3
  %10 = load ptr, ptr @stderr, align 8, !tbaa !47
  %11 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.52) #3
  %12 = load ptr, ptr %3, align 8, !tbaa !45
  %13 = load ptr, ptr %4, align 8, !tbaa !15
  call void @usage(ptr noundef %12, ptr noundef %13)
  call void @llvm.lifetime.end.p0(i64 30, ptr %5) #3
  ret void
}

declare ptr @new_D_Grammar(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

declare signext i32 @parse_grammar(ptr noundef, ptr noundef, i32 noundef signext) #2

declare void @d_fail(ptr noundef, ...) #2

declare signext i32 @build_grammar(ptr noundef) #2

declare signext i32 @write_ctables(ptr noundef) #2

declare void @free_D_Grammar(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @d_version(ptr noundef) #2

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

declare void @usage(ptr noundef, ptr noundef) #2

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
!8 = !{!"p2 omnipotent char", !9, i64 0}
!9 = !{!"any p2 pointer", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!12, !4, i64 8}
!12 = !{!"ArgumentState", !8, i64 0, !4, i64 8, !13, i64 16, !10, i64 24}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!12, !8, i64 0}
!15 = !{!13, !13, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS7Grammar", !10, i64 0}
!18 = !{!19, !4, i64 248}
!19 = !{!"Grammar", !13, i64 0, !20, i64 8, !22, i64 48, !24, i64 88, !26, i64 128, !27, i64 144, !4, i64 152, !28, i64 160, !30, i64 200, !13, i64 240, !4, i64 248, !4, i64 252, !4, i64 256, !4, i64 260, !4, i64 264, !4, i64 268, !4, i64 272, !5, i64 276, !4, i64 532, !4, i64 536, !4, i64 540, !4, i64 544, !4, i64 548, !32, i64 552, !33, i64 560, !34, i64 568, !4, i64 576, !4, i64 580, !4, i64 584, !4, i64 588}
!20 = !{!"", !4, i64 0, !4, i64 4, !21, i64 8, !5, i64 16}
!21 = !{!"p2 _ZTS10Production", !9, i64 0}
!22 = !{!"", !4, i64 0, !4, i64 4, !23, i64 8, !5, i64 16}
!23 = !{!"p2 _ZTS4Term", !9, i64 0}
!24 = !{!"", !4, i64 0, !4, i64 4, !25, i64 8, !5, i64 16}
!25 = !{!"p2 _ZTS5State", !9, i64 0}
!26 = !{!"Code", !13, i64 0, !4, i64 8}
!27 = !{!"p1 _ZTS4Code", !10, i64 0}
!28 = !{!"", !4, i64 0, !4, i64 4, !29, i64 8, !5, i64 16}
!29 = !{!"p2 _ZTS11Declaration", !9, i64 0}
!30 = !{!"", !4, i64 0, !4, i64 4, !31, i64 8, !5, i64 16}
!31 = !{!"p2 _ZTS6D_Pass", !9, i64 0}
!32 = !{!"p1 _ZTS10Production", !10, i64 0}
!33 = !{!"p1 _ZTS4Rule", !10, i64 0}
!34 = !{!"p1 _ZTS4Elem", !10, i64 0}
!35 = !{!19, !4, i64 252}
!36 = !{!19, !4, i64 256}
!37 = !{!19, !4, i64 260}
!38 = !{!19, !4, i64 264}
!39 = !{!19, !4, i64 268}
!40 = !{!19, !4, i64 532}
!41 = !{!19, !4, i64 536}
!42 = !{!19, !4, i64 540}
!43 = !{!19, !4, i64 544}
!44 = !{!19, !4, i64 548}
!45 = !{!46, !46, i64 0}
!46 = !{!"p1 _ZTS13ArgumentState", !10, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
