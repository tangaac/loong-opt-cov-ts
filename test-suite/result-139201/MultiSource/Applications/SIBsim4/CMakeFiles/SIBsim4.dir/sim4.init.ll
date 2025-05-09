; ModuleID = './MultiSource/Applications/SIBsim4/CMakeFiles/SIBsim4.dir/sim4.init.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/SIBsim4/sim4.init.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct._options_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._seq_t = type { ptr, ptr, ptr, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { ptr, i32, i32, i32, [4096 x i8] }
%struct._hash_env_t = type { ptr, ptr, i32, ptr, i32, i32 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { ptr }
%struct._result_t = type { ptr, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._sim4_stats = type { i32, i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._edit_script_list = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }

@argv0 = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@stderr = external global ptr, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"%s: Warning: could not set locale to POSIX\0A\00", align 1
@options = dso_local global %struct._options_t zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"GTAG,GCAG,GTAC,ATAC\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"A:C:c:E:f:g:I:K:L:M:o:q:R:r:W:X:\00", align 1
@optarg = external global ptr, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"A must be one of 0, 1, 2, 3, or 4.\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Value for option C must be non-negative.\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Value for option c must be non-negative.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Cutoff (E) must be within [3,10].\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"Filter in percent (f) must be within [0,100].\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Value for option K must be non-negative.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Splice types list has illegal length (%zu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Comma expected instead of %c at position %zuin splice types list.\0A\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"Expected 'A', 'C', 'G' or 'T' instead of '%c' atposition %zu in splice types list.\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Value for option M must be non-negative.\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"R must be one of 0, 1, or 2.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"W must be within [1,15].\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"X must be positive.\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"?? getopt returned character code 0%o ??\0A\00", align 1
@optind = external global i32, align 4
@Usage = internal constant [1399 x i8] c"%s [options] dna est_db\0A\0AThis is SIBsim4 version 0.14.\0A\0AAvailable options (default value in braces[]):\0A  -A <int>  output format\0A             0: exon endpoints only\0A             1: alignment text\0A             3: both exon endpoints and alignment text\0A             4: both exon endpoints and alignment text with polyA info\0A            Note that 2 is unimplemented [%d]\0A  -C <int>  MSP score threshold for the second pass [%d]\0A  -c <int>  minimum score cutoff [%d]\0A  -E <int>  cutoff value [%d]\0A  -f <int>  score filter in percent (0 to disable filtering) [%d]\0A  -g <int>  join exons when gap on genomic and RNA have lengths which\0A            differ at most by this percentage [%d]\0A  -I <int>  window width in which to search for intron splicing [%d]\0A  -K <int>  MSP score threshold for the first pass [%d]\0A  -L <str>  a comma separated list of forward splice-types [%s]\0A  -M <int>  scoring splice sites, evaluate match within M nucleotides [%d]\0A  -o <int>  offset nt positions in dna sequence by this amount [%u]\0A  -q <int>  penalty for a nucleotide mismatch [%d]\0A  -R <int>  direction of search\0A             0: search the '+' (direct) strand only\0A             1: search the '-' strand only\0A             2: search both strands and report the best match\0A            [%d]\0A  -r <int>  reward for a nucleotide match [%d]\0A  -W <int>  word size [%d]\0A  -X <int>  value for terminating word extensions [%d]\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Cannot read sequence from %s.\0A\00", align 1
@dna_seq_head = dso_local global [256 x i8] zeroinitializer, align 1
@rna_seq_head = dso_local global [256 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Unrecognized request for EST orientation.\0A\00", align 1
@dna_complement = internal constant [256 x i8] c"                                                                 TVGH  CD  M KN   YSA BWXR       tvgh  cd  m kn   ysa bwxr                                                                                                                                      ", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\0A%s%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"(complement)\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Unrecognized option for alignment output.\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"\0APolyA site %u nt, %u/%u A's %u\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"AATAAA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ATTAAA\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"PolyA signal %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"\0APolyA site %u nt, %u/%u A's %u minus strand\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"TTTATT\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"TTTAAT\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"PolyA signal %u minus strand\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Could not open file %s: %s(%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Could not read from %d: %s(%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [239 x i8] c"\0A***  WARNING                                           ***\0A***  there appears to be several sequences in the DNA  ***\0A***  sequence file.  Only the first one will be used,  ***\0A***  which might not be what was intended.             ***\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"; LEN=\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"; LEN=%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Sequence too long: %u\0A\00", align 1
@stdout = external global ptr, align 8
@.str.38 = private unnamed_addr constant [51 x i8] c"\0ACaught signal %d while processing:\0A%.256s\0A%.256s\0A\00", align 1

; Function Attrs: nounwind
define dso_local signext i32 @main(i32 noundef signext %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._seq_t, align 8
  %8 = alloca %struct._seq_t, align 8
  %9 = alloca %struct._hash_env_t, align 8
  %10 = alloca %struct._collec_t, align 8
  %11 = alloca %struct._collec_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4, !tbaa !3
  store ptr %1, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #9
  call void @llvm.lifetime.start.p0(i64 4160, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 4160, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 40, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %10) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr %11) #9
  %26 = load ptr, ptr %5, align 8, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %26, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  store ptr %28, ptr @argv0, align 8, !tbaa !11
  %29 = call ptr @setlocale(i32 noundef signext 6, ptr noundef @.str) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load ptr, ptr @stderr, align 8, !tbaa !13
  %33 = load ptr, ptr %5, align 8, !tbaa !7
  %34 = getelementptr inbounds ptr, ptr %33, i64 0
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.1, ptr noundef %35) #9
  br label %37

37:                                               ; preds = %31, %2
  %38 = call ptr @signal(i32 noundef signext 11, ptr noundef @bug_handler) #9
  %39 = call ptr @signal(i32 noundef signext 7, ptr noundef @bug_handler) #9
  store i32 15, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 4), align 8, !tbaa !15
  store i32 3, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 5), align 4, !tbaa !18
  store i32 10, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 6), align 8, !tbaa !19
  store i32 6, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 7), align 4, !tbaa !20
  store i32 15, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !21
  store ptr @.str.2, ptr @options, align 8, !tbaa !22
  store i32 4, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !23
  store i32 10, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !24
  store i32 -5, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !25
  store i32 2, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  store i32 1, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !27
  store i32 12, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 13), align 4, !tbaa !28
  store i32 12, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 14), align 8, !tbaa !29
  store i32 75, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !30
  store i32 50, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 17), align 4, !tbaa !31
  br label %40

40:                                               ; preds = %234, %37
  br label %41

41:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  %42 = load i32, ptr %4, align 4, !tbaa !3
  %43 = load ptr, ptr %5, align 8, !tbaa !7
  %44 = call signext i32 @getopt(i32 noundef signext %42, ptr noundef %43, ptr noundef @.str.3) #9
  store i32 %44, ptr %12, align 4, !tbaa !3
  %45 = load i32, ptr %12, align 4, !tbaa !3
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 3, ptr %13, align 4
  br label %232

48:                                               ; preds = %41
  %49 = load i32, ptr %12, align 4, !tbaa !3
  switch i32 %49, label %227 [
    i32 65, label %50
    i32 67, label %60
    i32 99, label %68
    i32 69, label %76
    i32 102, label %86
    i32 103, label %93
    i32 73, label %96
    i32 75, label %99
    i32 76, label %107
    i32 77, label %183
    i32 111, label %191
    i32 113, label %194
    i32 82, label %197
    i32 114, label %207
    i32 87, label %210
    i32 88, label %220
    i32 63, label %231
  ]

50:                                               ; preds = %48
  %51 = load ptr, ptr @optarg, align 8, !tbaa !11
  %52 = call signext i32 @atoi(ptr noundef %51) #10
  store i32 %52, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !32
  %53 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !32
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !32
  %57 = icmp sgt i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %55, %50
  call void (ptr, ...) @fatal(ptr noundef @.str.4) #11
  unreachable

59:                                               ; preds = %55
  br label %231

60:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  %61 = load ptr, ptr @optarg, align 8, !tbaa !11
  %62 = call signext i32 @atoi(ptr noundef %61) #10
  store i32 %62, ptr %14, align 4, !tbaa !3
  %63 = load i32, ptr %14, align 4, !tbaa !3
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void (ptr, ...) @fatal(ptr noundef @.str.5) #11
  unreachable

66:                                               ; preds = %60
  %67 = load i32, ptr %14, align 4, !tbaa !3
  store i32 %67, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 4), align 8, !tbaa !15
  store i32 4, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  br label %231

68:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #9
  %69 = load ptr, ptr @optarg, align 8, !tbaa !11
  %70 = call signext i32 @atoi(ptr noundef %69) #10
  store i32 %70, ptr %15, align 4, !tbaa !3
  %71 = load i32, ptr %15, align 4, !tbaa !3
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  call void (ptr, ...) @fatal(ptr noundef @.str.6) #11
  unreachable

74:                                               ; preds = %68
  %75 = load i32, ptr %15, align 4, !tbaa !3
  store i32 %75, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 17), align 4, !tbaa !31
  store i32 4, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #9
  br label %231

76:                                               ; preds = %48
  %77 = load ptr, ptr @optarg, align 8, !tbaa !11
  %78 = call signext i32 @atoi(ptr noundef %77) #10
  store i32 %78, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 5), align 4, !tbaa !18
  %79 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 5), align 4, !tbaa !18
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 5), align 4, !tbaa !18
  %83 = icmp sgt i32 %82, 10
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %76
  call void (ptr, ...) @fatal(ptr noundef @.str.7) #11
  unreachable

85:                                               ; preds = %81
  br label %231

86:                                               ; preds = %48
  %87 = load ptr, ptr @optarg, align 8, !tbaa !11
  %88 = call signext i32 @atoi(ptr noundef %87) #10
  store i32 %88, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !30
  %89 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !30
  %90 = icmp ugt i32 %89, 100
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  call void (ptr, ...) @fatal(ptr noundef @.str.8) #11
  unreachable

92:                                               ; preds = %86
  br label %231

93:                                               ; preds = %48
  %94 = load ptr, ptr @optarg, align 8, !tbaa !11
  %95 = call signext i32 @atoi(ptr noundef %94) #10
  store i32 %95, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 6), align 8, !tbaa !19
  br label %231

96:                                               ; preds = %48
  %97 = load ptr, ptr @optarg, align 8, !tbaa !11
  %98 = call signext i32 @atoi(ptr noundef %97) #10
  store i32 %98, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 7), align 4, !tbaa !20
  br label %231

99:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #9
  %100 = load ptr, ptr @optarg, align 8, !tbaa !11
  %101 = call signext i32 @atoi(ptr noundef %100) #10
  store i32 %101, ptr %16, align 4, !tbaa !3
  %102 = load i32, ptr %16, align 4, !tbaa !3
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  call void (ptr, ...) @fatal(ptr noundef @.str.9) #11
  unreachable

105:                                              ; preds = %99
  %106 = load i32, ptr %16, align 4, !tbaa !3
  store i32 %106, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !21
  store i32 4, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #9
  br label %231

107:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #9
  %108 = load ptr, ptr @optarg, align 8, !tbaa !11
  %109 = call i64 @strlen(ptr noundef %108) #10
  store i64 %109, ptr %18, align 8, !tbaa !33
  %110 = load ptr, ptr @optarg, align 8, !tbaa !11
  store ptr %110, ptr @options, align 8, !tbaa !22
  store i32 1, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !23
  %111 = load i64, ptr %18, align 8, !tbaa !33
  %112 = urem i64 %111, 5
  %113 = icmp ne i64 %112, 4
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i64, ptr %18, align 8, !tbaa !33
  call void (ptr, ...) @fatal(ptr noundef @.str.10, i64 noundef %115) #11
  unreachable

116:                                              ; preds = %107
  store i64 0, ptr %17, align 8, !tbaa !33
  br label %117

117:                                              ; preds = %179, %116
  %118 = load i64, ptr %17, align 8, !tbaa !33
  %119 = load i64, ptr %18, align 8, !tbaa !33
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %182

121:                                              ; preds = %117
  %122 = load i64, ptr %17, align 8, !tbaa !33
  %123 = urem i64 %122, 5
  %124 = icmp eq i64 %123, 4
  br i1 %124, label %125, label %142

125:                                              ; preds = %121
  %126 = load ptr, ptr @options, align 8, !tbaa !22
  %127 = load i64, ptr %17, align 8, !tbaa !33
  %128 = getelementptr inbounds nuw i8, ptr %126, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !35
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 44
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load ptr, ptr @options, align 8, !tbaa !22
  %134 = load i64, ptr %17, align 8, !tbaa !33
  %135 = getelementptr inbounds nuw i8, ptr %133, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !35
  %137 = sext i8 %136 to i32
  %138 = load i64, ptr %17, align 8, !tbaa !33
  call void (ptr, ...) @fatal(ptr noundef @.str.11, i32 noundef signext %137, i64 noundef %138) #11
  unreachable

139:                                              ; preds = %125
  %140 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !23
  %141 = add i32 %140, 1
  store i32 %141, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !23
  br label %178

142:                                              ; preds = %121
  %143 = load ptr, ptr @options, align 8, !tbaa !22
  %144 = load i64, ptr %17, align 8, !tbaa !33
  %145 = getelementptr inbounds nuw i8, ptr %143, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !35
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 65
  br i1 %148, label %149, label %177

149:                                              ; preds = %142
  %150 = load ptr, ptr @options, align 8, !tbaa !22
  %151 = load i64, ptr %17, align 8, !tbaa !33
  %152 = getelementptr inbounds nuw i8, ptr %150, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !35
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 67
  br i1 %155, label %156, label %177

156:                                              ; preds = %149
  %157 = load ptr, ptr @options, align 8, !tbaa !22
  %158 = load i64, ptr %17, align 8, !tbaa !33
  %159 = getelementptr inbounds nuw i8, ptr %157, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !35
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 71
  br i1 %162, label %163, label %177

163:                                              ; preds = %156
  %164 = load ptr, ptr @options, align 8, !tbaa !22
  %165 = load i64, ptr %17, align 8, !tbaa !33
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !35
  %168 = sext i8 %167 to i32
  %169 = icmp ne i32 %168, 84
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load ptr, ptr @options, align 8, !tbaa !22
  %172 = load i64, ptr %17, align 8, !tbaa !33
  %173 = getelementptr inbounds nuw i8, ptr %171, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !35
  %175 = sext i8 %174 to i32
  %176 = load i64, ptr %17, align 8, !tbaa !33
  call void (ptr, ...) @fatal(ptr noundef @.str.12, i32 noundef signext %175, i64 noundef %176) #11
  unreachable

177:                                              ; preds = %163, %156, %149, %142
  br label %178

178:                                              ; preds = %177, %139
  br label %179

179:                                              ; preds = %178
  %180 = load i64, ptr %17, align 8, !tbaa !33
  %181 = add i64 %180, 1
  store i64 %181, ptr %17, align 8, !tbaa !33
  br label %117, !llvm.loop !36

182:                                              ; preds = %117
  store i32 4, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #9
  br label %231

183:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  %184 = load ptr, ptr @optarg, align 8, !tbaa !11
  %185 = call signext i32 @atoi(ptr noundef %184) #10
  store i32 %185, ptr %19, align 4, !tbaa !3
  %186 = load i32, ptr %19, align 4, !tbaa !3
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  call void (ptr, ...) @fatal(ptr noundef @.str.13) #11
  unreachable

189:                                              ; preds = %183
  %190 = load i32, ptr %19, align 4, !tbaa !3
  store i32 %190, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !24
  store i32 4, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  br label %231

191:                                              ; preds = %48
  %192 = load ptr, ptr @optarg, align 8, !tbaa !11
  %193 = call signext i32 @atoi(ptr noundef %192) #10
  store i32 %193, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  br label %231

194:                                              ; preds = %48
  %195 = load ptr, ptr @optarg, align 8, !tbaa !11
  %196 = call signext i32 @atoi(ptr noundef %195) #10
  store i32 %196, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !25
  br label %231

197:                                              ; preds = %48
  %198 = load ptr, ptr @optarg, align 8, !tbaa !11
  %199 = call signext i32 @atoi(ptr noundef %198) #10
  store i32 %199, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  %200 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  %204 = icmp sgt i32 %203, 2
  br i1 %204, label %205, label %206

205:                                              ; preds = %202, %197
  call void (ptr, ...) @fatal(ptr noundef @.str.14) #11
  unreachable

206:                                              ; preds = %202
  br label %231

207:                                              ; preds = %48
  %208 = load ptr, ptr @optarg, align 8, !tbaa !11
  %209 = call signext i32 @atoi(ptr noundef %208) #10
  store i32 %209, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !27
  br label %231

210:                                              ; preds = %48
  %211 = load ptr, ptr @optarg, align 8, !tbaa !11
  %212 = call signext i32 @atoi(ptr noundef %211) #10
  store i32 %212, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 13), align 4, !tbaa !28
  %213 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 13), align 4, !tbaa !28
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 13), align 4, !tbaa !28
  %217 = icmp sgt i32 %216, 15
  br i1 %217, label %218, label %219

218:                                              ; preds = %215, %210
  call void (ptr, ...) @fatal(ptr noundef @.str.15) #11
  unreachable

219:                                              ; preds = %215
  br label %231

220:                                              ; preds = %48
  %221 = load ptr, ptr @optarg, align 8, !tbaa !11
  %222 = call signext i32 @atoi(ptr noundef %221) #10
  store i32 %222, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 14), align 8, !tbaa !29
  %223 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 14), align 8, !tbaa !29
  %224 = icmp slt i32 %223, 1
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  call void (ptr, ...) @fatal(ptr noundef @.str.16) #11
  unreachable

226:                                              ; preds = %220
  br label %231

227:                                              ; preds = %48
  %228 = load ptr, ptr @stderr, align 8, !tbaa !13
  %229 = load i32, ptr %12, align 4, !tbaa !3
  %230 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef @.str.17, i32 noundef signext %229) #9
  br label %231

231:                                              ; preds = %227, %48, %226, %219, %207, %206, %194, %191, %189, %182, %105, %96, %93, %92, %85, %74, %66, %59
  store i32 0, ptr %13, align 4
  br label %232

232:                                              ; preds = %231, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  %233 = load i32, ptr %13, align 4
  switch i32 %233, label %484 [
    i32 0, label %234
    i32 3, label %235
  ]

234:                                              ; preds = %232
  br label %40

235:                                              ; preds = %232
  %236 = load i32, ptr @optind, align 4, !tbaa !3
  %237 = add nsw i32 %236, 2
  %238 = load i32, ptr %4, align 4, !tbaa !3
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %262

240:                                              ; preds = %235
  %241 = load ptr, ptr @stderr, align 8, !tbaa !13
  %242 = load ptr, ptr %5, align 8, !tbaa !7
  %243 = getelementptr inbounds ptr, ptr %242, i64 0
  %244 = load ptr, ptr %243, align 8, !tbaa !11
  %245 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !32
  %246 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 4), align 8, !tbaa !15
  %247 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 17), align 4, !tbaa !31
  %248 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 5), align 4, !tbaa !18
  %249 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !30
  %250 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 6), align 8, !tbaa !19
  %251 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 7), align 4, !tbaa !20
  %252 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 8), align 8, !tbaa !21
  %253 = load ptr, ptr @options, align 8, !tbaa !22
  %254 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 9), align 4, !tbaa !24
  %255 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %256 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 10), align 8, !tbaa !25
  %257 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  %258 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 12), align 8, !tbaa !27
  %259 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 13), align 4, !tbaa !28
  %260 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 14), align 8, !tbaa !29
  %261 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef @Usage, ptr noundef %244, i32 noundef signext %245, i32 noundef signext %246, i32 noundef signext %247, i32 noundef signext %248, i32 noundef signext %249, i32 noundef signext %250, i32 noundef signext %251, i32 noundef signext %252, ptr noundef %253, i32 noundef signext %254, i32 noundef signext %255, i32 noundef signext %256, i32 noundef signext %257, i32 noundef signext %258, i32 noundef signext %259, i32 noundef signext %260) #9
  store i32 1, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %482

262:                                              ; preds = %235
  %263 = load ptr, ptr %5, align 8, !tbaa !7
  %264 = load i32, ptr @optind, align 4, !tbaa !3
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds ptr, ptr %263, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !11
  call void @init_seq(ptr noundef %267, ptr noundef %7)
  %268 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %269 = call signext i32 @get_next_seq(ptr noundef %7, i32 noundef signext %268, i32 noundef signext 1)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %262
  %272 = load ptr, ptr %5, align 8, !tbaa !7
  %273 = load i32, ptr @optind, align 4, !tbaa !3
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds ptr, ptr %272, i64 %274
  %276 = load ptr, ptr %275, align 8, !tbaa !11
  call void (ptr, ...) @fatal(ptr noundef @.str.18, ptr noundef %276) #11
  unreachable

277:                                              ; preds = %262
  %278 = getelementptr inbounds nuw %struct._seq_t, ptr %7, i32 0, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !39
  %280 = call ptr @strncpy(ptr noundef @dna_seq_head, ptr noundef %279, i64 noundef 256) #9
  %281 = load ptr, ptr %5, align 8, !tbaa !7
  %282 = load i32, ptr @optind, align 4, !tbaa !3
  %283 = add nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds ptr, ptr %281, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !11
  call void @init_seq(ptr noundef %286, ptr noundef %8)
  %287 = call signext i32 @get_next_seq(ptr noundef %8, i32 noundef signext 0, i32 noundef signext 0)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %296

289:                                              ; preds = %277
  %290 = load ptr, ptr %5, align 8, !tbaa !7
  %291 = load i32, ptr @optind, align 4, !tbaa !3
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds ptr, ptr %290, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !11
  call void (ptr, ...) @fatal(ptr noundef @.str.18, ptr noundef %295) #11
  unreachable

296:                                              ; preds = %277
  call void @init_encoding()
  %297 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 13), align 4, !tbaa !28
  %298 = getelementptr inbounds nuw %struct._seq_t, ptr %7, i32 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !42
  %300 = getelementptr inbounds nuw %struct._seq_t, ptr %7, i32 0, i32 5
  %301 = load i32, ptr %300, align 4, !tbaa !43
  call void @init_hash_env(ptr noundef %9, i32 noundef signext %297, ptr noundef %299, i32 noundef signext %301)
  call void @init_col(ptr noundef %10, i32 noundef signext 1)
  call void @init_col(ptr noundef %11, i32 noundef signext 1)
  call void @bld_table(ptr noundef %9)
  call void @init_splice_junctions()
  store i32 0, ptr %6, align 4, !tbaa !3
  br label %302

302:                                              ; preds = %479, %296
  %303 = load i32, ptr %6, align 4, !tbaa !3
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = call signext i32 @get_next_seq(ptr noundef %8, i32 noundef signext 0, i32 noundef signext 0)
  %307 = icmp eq i32 %306, 0
  br label %308

308:                                              ; preds = %305, %302
  %309 = phi i1 [ true, %302 ], [ %307, %305 ]
  br i1 %309, label %310, label %481

310:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #9
  %311 = getelementptr inbounds nuw %struct._seq_t, ptr %8, i32 0, i32 1
  %312 = load ptr, ptr %311, align 8, !tbaa !39
  %313 = call ptr @strncpy(ptr noundef @rna_seq_head, ptr noundef %312, i64 noundef 256) #9
  %314 = load i32, ptr %6, align 4, !tbaa !3
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %6, align 4, !tbaa !3
  %316 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  switch i32 %316, label %320 [
    i32 0, label %317
    i32 2, label %318
    i32 1, label %319
  ]

317:                                              ; preds = %310
  call void @SIM4(ptr noundef %9, ptr noundef %8, ptr noundef %10)
  br label %321

318:                                              ; preds = %310
  call void @SIM4(ptr noundef %9, ptr noundef %8, ptr noundef %10)
  br label %319

319:                                              ; preds = %310, %318
  call void @seq_revcomp_inplace(ptr noundef %8)
  call void @SIM4(ptr noundef %9, ptr noundef %8, ptr noundef %11)
  br label %321

320:                                              ; preds = %310
  call void (ptr, ...) @fatal(ptr noundef @.str.19) #11
  unreachable

321:                                              ; preds = %319, %317
  %322 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !30
  %323 = icmp ugt i32 %322, 0
  br i1 %323, label %324, label %439

324:                                              ; preds = %321
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #9
  store i32 0, ptr %21, align 4, !tbaa !3
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %325

325:                                              ; preds = %349, %324
  %326 = load i32, ptr %20, align 4, !tbaa !3
  %327 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 1
  %328 = load i32, ptr %327, align 8, !tbaa !44
  %329 = icmp ult i32 %326, %328
  br i1 %329, label %330, label %352

330:                                              ; preds = %325
  call void @llvm.lifetime.start.p0(i64 8, ptr %22) #9
  %331 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 0
  %332 = load ptr, ptr %331, align 8, !tbaa !35
  %333 = load i32, ptr %20, align 4, !tbaa !3
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds nuw ptr, ptr %332, i64 %334
  %336 = load ptr, ptr %335, align 8, !tbaa !46
  store ptr %336, ptr %22, align 8, !tbaa !46
  %337 = load ptr, ptr %22, align 8, !tbaa !46
  %338 = getelementptr inbounds nuw %struct._result_t, ptr %337, i32 0, i32 5
  %339 = getelementptr inbounds nuw %struct._sim4_stats, ptr %338, i32 0, i32 0
  %340 = load i32, ptr %339, align 4, !tbaa !48
  %341 = load i32, ptr %21, align 4, !tbaa !3
  %342 = icmp ugt i32 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %330
  %344 = load ptr, ptr %22, align 8, !tbaa !46
  %345 = getelementptr inbounds nuw %struct._result_t, ptr %344, i32 0, i32 5
  %346 = getelementptr inbounds nuw %struct._sim4_stats, ptr %345, i32 0, i32 0
  %347 = load i32, ptr %346, align 4, !tbaa !48
  store i32 %347, ptr %21, align 4, !tbaa !3
  br label %348

348:                                              ; preds = %343, %330
  call void @llvm.lifetime.end.p0(i64 8, ptr %22) #9
  br label %349

349:                                              ; preds = %348
  %350 = load i32, ptr %20, align 4, !tbaa !3
  %351 = add i32 %350, 1
  store i32 %351, ptr %20, align 4, !tbaa !3
  br label %325, !llvm.loop !52

352:                                              ; preds = %325
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %353

353:                                              ; preds = %377, %352
  %354 = load i32, ptr %20, align 4, !tbaa !3
  %355 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 1
  %356 = load i32, ptr %355, align 8, !tbaa !44
  %357 = icmp ult i32 %354, %356
  br i1 %357, label %358, label %380

358:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #9
  %359 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 0
  %360 = load ptr, ptr %359, align 8, !tbaa !35
  %361 = load i32, ptr %20, align 4, !tbaa !3
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds nuw ptr, ptr %360, i64 %362
  %364 = load ptr, ptr %363, align 8, !tbaa !46
  store ptr %364, ptr %23, align 8, !tbaa !46
  %365 = load ptr, ptr %23, align 8, !tbaa !46
  %366 = getelementptr inbounds nuw %struct._result_t, ptr %365, i32 0, i32 5
  %367 = getelementptr inbounds nuw %struct._sim4_stats, ptr %366, i32 0, i32 0
  %368 = load i32, ptr %367, align 4, !tbaa !48
  %369 = load i32, ptr %21, align 4, !tbaa !3
  %370 = icmp ugt i32 %368, %369
  br i1 %370, label %371, label %376

371:                                              ; preds = %358
  %372 = load ptr, ptr %23, align 8, !tbaa !46
  %373 = getelementptr inbounds nuw %struct._result_t, ptr %372, i32 0, i32 5
  %374 = getelementptr inbounds nuw %struct._sim4_stats, ptr %373, i32 0, i32 0
  %375 = load i32, ptr %374, align 4, !tbaa !48
  store i32 %375, ptr %21, align 4, !tbaa !3
  br label %376

376:                                              ; preds = %371, %358
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #9
  br label %377

377:                                              ; preds = %376
  %378 = load i32, ptr %20, align 4, !tbaa !3
  %379 = add i32 %378, 1
  store i32 %379, ptr %20, align 4, !tbaa !3
  br label %353, !llvm.loop !53

380:                                              ; preds = %353
  %381 = load i32, ptr %21, align 4, !tbaa !3
  %382 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 16), align 8, !tbaa !30
  %383 = mul i32 %381, %382
  %384 = udiv i32 %383, 100
  store i32 %384, ptr %21, align 4, !tbaa !3
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %385

385:                                              ; preds = %408, %380
  %386 = load i32, ptr %20, align 4, !tbaa !3
  %387 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 1
  %388 = load i32, ptr %387, align 8, !tbaa !44
  %389 = icmp ult i32 %386, %388
  br i1 %389, label %390, label %411

390:                                              ; preds = %385
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #9
  %391 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 0
  %392 = load ptr, ptr %391, align 8, !tbaa !35
  %393 = load i32, ptr %20, align 4, !tbaa !3
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds nuw ptr, ptr %392, i64 %394
  %396 = load ptr, ptr %395, align 8, !tbaa !46
  store ptr %396, ptr %24, align 8, !tbaa !46
  %397 = load ptr, ptr %24, align 8, !tbaa !46
  %398 = getelementptr inbounds nuw %struct._result_t, ptr %397, i32 0, i32 5
  %399 = getelementptr inbounds nuw %struct._sim4_stats, ptr %398, i32 0, i32 0
  %400 = load i32, ptr %399, align 4, !tbaa !48
  %401 = load i32, ptr %21, align 4, !tbaa !3
  %402 = icmp ult i32 %400, %401
  br i1 %402, label %403, label %407

403:                                              ; preds = %390
  %404 = load ptr, ptr %24, align 8, !tbaa !46
  %405 = getelementptr inbounds nuw %struct._result_t, ptr %404, i32 0, i32 5
  %406 = getelementptr inbounds nuw %struct._sim4_stats, ptr %405, i32 0, i32 0
  store i32 0, ptr %406, align 4, !tbaa !48
  br label %407

407:                                              ; preds = %403, %390
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #9
  br label %408

408:                                              ; preds = %407
  %409 = load i32, ptr %20, align 4, !tbaa !3
  %410 = add i32 %409, 1
  store i32 %410, ptr %20, align 4, !tbaa !3
  br label %385, !llvm.loop !54

411:                                              ; preds = %385
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %412

412:                                              ; preds = %435, %411
  %413 = load i32, ptr %20, align 4, !tbaa !3
  %414 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 1
  %415 = load i32, ptr %414, align 8, !tbaa !44
  %416 = icmp ult i32 %413, %415
  br i1 %416, label %417, label %438

417:                                              ; preds = %412
  call void @llvm.lifetime.start.p0(i64 8, ptr %25) #9
  %418 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 0
  %419 = load ptr, ptr %418, align 8, !tbaa !35
  %420 = load i32, ptr %20, align 4, !tbaa !3
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds nuw ptr, ptr %419, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !46
  store ptr %423, ptr %25, align 8, !tbaa !46
  %424 = load ptr, ptr %25, align 8, !tbaa !46
  %425 = getelementptr inbounds nuw %struct._result_t, ptr %424, i32 0, i32 5
  %426 = getelementptr inbounds nuw %struct._sim4_stats, ptr %425, i32 0, i32 0
  %427 = load i32, ptr %426, align 4, !tbaa !48
  %428 = load i32, ptr %21, align 4, !tbaa !3
  %429 = icmp ult i32 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %417
  %431 = load ptr, ptr %25, align 8, !tbaa !46
  %432 = getelementptr inbounds nuw %struct._result_t, ptr %431, i32 0, i32 5
  %433 = getelementptr inbounds nuw %struct._sim4_stats, ptr %432, i32 0, i32 0
  store i32 0, ptr %433, align 4, !tbaa !48
  br label %434

434:                                              ; preds = %430, %417
  call void @llvm.lifetime.end.p0(i64 8, ptr %25) #9
  br label %435

435:                                              ; preds = %434
  %436 = load i32, ptr %20, align 4, !tbaa !3
  %437 = add i32 %436, 1
  store i32 %437, ptr %20, align 4, !tbaa !3
  br label %412, !llvm.loop !55

438:                                              ; preds = %412
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #9
  br label %439

439:                                              ; preds = %438, %321
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %440

440:                                              ; preds = %452, %439
  %441 = load i32, ptr %20, align 4, !tbaa !3
  %442 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 1
  %443 = load i32, ptr %442, align 8, !tbaa !44
  %444 = icmp ult i32 %441, %443
  br i1 %444, label %445, label %455

445:                                              ; preds = %440
  %446 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 0
  %447 = load ptr, ptr %446, align 8, !tbaa !35
  %448 = load i32, ptr %20, align 4, !tbaa !3
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds nuw ptr, ptr %447, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !46
  call void @print_res(ptr noundef %451, i32 noundef signext 1, ptr noundef %7, ptr noundef %8)
  br label %452

452:                                              ; preds = %445
  %453 = load i32, ptr %20, align 4, !tbaa !3
  %454 = add i32 %453, 1
  store i32 %454, ptr %20, align 4, !tbaa !3
  br label %440, !llvm.loop !56

455:                                              ; preds = %440
  %456 = getelementptr inbounds nuw %struct._collec_t, ptr %11, i32 0, i32 1
  store i32 0, ptr %456, align 8, !tbaa !44
  %457 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 11), align 4, !tbaa !26
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %463

459:                                              ; preds = %455
  %460 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !32
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  call void @seq_revcomp_inplace(ptr noundef %8)
  br label %463

463:                                              ; preds = %462, %459, %455
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %464

464:                                              ; preds = %476, %463
  %465 = load i32, ptr %20, align 4, !tbaa !3
  %466 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 1
  %467 = load i32, ptr %466, align 8, !tbaa !44
  %468 = icmp ult i32 %465, %467
  br i1 %468, label %469, label %479

469:                                              ; preds = %464
  %470 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 0
  %471 = load ptr, ptr %470, align 8, !tbaa !35
  %472 = load i32, ptr %20, align 4, !tbaa !3
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds nuw ptr, ptr %471, i64 %473
  %475 = load ptr, ptr %474, align 8, !tbaa !46
  call void @print_res(ptr noundef %475, i32 noundef signext 0, ptr noundef %7, ptr noundef %8)
  br label %476

476:                                              ; preds = %469
  %477 = load i32, ptr %20, align 4, !tbaa !3
  %478 = add i32 %477, 1
  store i32 %478, ptr %20, align 4, !tbaa !3
  br label %464, !llvm.loop !57

479:                                              ; preds = %464
  %480 = getelementptr inbounds nuw %struct._collec_t, ptr %10, i32 0, i32 1
  store i32 0, ptr %480, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #9
  br label %302, !llvm.loop !58

481:                                              ; preds = %308
  store i32 0, ptr %3, align 4
  store i32 1, ptr %13, align 4
  br label %482

482:                                              ; preds = %481, %240
  call void @llvm.lifetime.end.p0(i64 16, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4160, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 4160, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #9
  %483 = load i32, ptr %3, align 4
  ret i32 %483

484:                                              ; preds = %232
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef signext, ptr noundef) #0

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
declare ptr @signal(i32 noundef signext, ptr noundef) #0

; Function Attrs: nounwind
define internal void @bug_handler(i32 noundef signext %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4, !tbaa !3
  %3 = load ptr, ptr @stdout, align 8, !tbaa !13
  %4 = call signext i32 @fflush(ptr noundef %3)
  %5 = load ptr, ptr @stderr, align 8, !tbaa !13
  %6 = call signext i32 @fflush(ptr noundef %5)
  %7 = load ptr, ptr @stderr, align 8, !tbaa !13
  %8 = load i32, ptr %2, align 4, !tbaa !3
  %9 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.38, i32 noundef signext %8, ptr noundef @dna_seq_head, ptr noundef @rna_seq_head) #9
  call void @abort() #12
  unreachable
}

; Function Attrs: nounwind
declare signext i32 @getopt(i32 noundef signext, ptr noundef, ptr noundef) #0

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally signext i32 @atoi(ptr noundef nonnull %0) #2 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #9
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
define internal void @init_seq(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  store ptr %1, ptr %4, align 8, !tbaa !59
  %5 = load ptr, ptr %3, align 8, !tbaa !11
  %6 = load ptr, ptr %4, align 8, !tbaa !59
  %7 = getelementptr inbounds nuw %struct._seq_t, ptr %6, i32 0, i32 0
  store ptr %5, ptr %7, align 8, !tbaa !61
  %8 = load ptr, ptr %4, align 8, !tbaa !59
  %9 = getelementptr inbounds nuw %struct._seq_t, ptr %8, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !39
  %10 = load ptr, ptr %4, align 8, !tbaa !59
  %11 = getelementptr inbounds nuw %struct._seq_t, ptr %10, i32 0, i32 2
  store ptr null, ptr %11, align 8, !tbaa !42
  %12 = load ptr, ptr %4, align 8, !tbaa !59
  %13 = getelementptr inbounds nuw %struct._seq_t, ptr %12, i32 0, i32 3
  call void @init_buf(ptr noundef %13)
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = call signext i32 (ptr, i32, ...) @open(ptr noundef %17, i32 noundef signext 0)
  %19 = load ptr, ptr %4, align 8, !tbaa !59
  %20 = getelementptr inbounds nuw %struct._seq_t, ptr %19, i32 0, i32 4
  store i32 %18, ptr %20, align 8, !tbaa !62
  %21 = load ptr, ptr %4, align 8, !tbaa !59
  %22 = getelementptr inbounds nuw %struct._seq_t, ptr %21, i32 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !62
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load ptr, ptr %3, align 8, !tbaa !11
  %27 = call ptr @__errno_location() #13
  %28 = load i32, ptr %27, align 4, !tbaa !3
  %29 = call ptr @strerror(i32 noundef signext %28) #9
  %30 = call ptr @__errno_location() #13
  %31 = load i32, ptr %30, align 4, !tbaa !3
  call void (ptr, ...) @fatal(ptr noundef @.str.32, ptr noundef %26, ptr noundef %29, i32 noundef signext %31) #11
  unreachable

32:                                               ; preds = %16
  br label %36

33:                                               ; preds = %2
  %34 = load ptr, ptr %4, align 8, !tbaa !59
  %35 = getelementptr inbounds nuw %struct._seq_t, ptr %34, i32 0, i32 4
  store i32 0, ptr %35, align 8, !tbaa !62
  br label %36

36:                                               ; preds = %33, %32
  %37 = load ptr, ptr %4, align 8, !tbaa !59
  %38 = getelementptr inbounds nuw %struct._seq_t, ptr %37, i32 0, i32 5
  store i32 0, ptr %38, align 4, !tbaa !43
  %39 = load ptr, ptr %4, align 8, !tbaa !59
  %40 = getelementptr inbounds nuw %struct._seq_t, ptr %39, i32 0, i32 6
  store i32 0, ptr %40, align 8, !tbaa !63
  %41 = load ptr, ptr %4, align 8, !tbaa !59
  %42 = getelementptr inbounds nuw %struct._seq_t, ptr %41, i32 0, i32 7
  store i32 0, ptr %42, align 4, !tbaa !64
  %43 = load ptr, ptr %4, align 8, !tbaa !59
  %44 = getelementptr inbounds nuw %struct._seq_t, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %4, align 8, !tbaa !59
  %46 = getelementptr inbounds nuw %struct._seq_t, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !62
  %48 = call ptr @read_line_buf(ptr noundef %44, i32 noundef signext %47)
  ret void
}

; Function Attrs: nounwind
define internal signext i32 @get_next_seq(ptr noundef %0, i32 noundef signext %1, i32 noundef signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !59
  store i32 %1, ptr %6, align 4, !tbaa !3
  store i32 %2, ptr %7, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #9
  store i32 24, ptr %8, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #9
  %17 = load ptr, ptr %5, align 8, !tbaa !59
  %18 = getelementptr inbounds nuw %struct._seq_t, ptr %17, i32 0, i32 3
  %19 = getelementptr inbounds nuw %struct._read_buf_t, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8, !tbaa !65
  store ptr %20, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  br label %21

21:                                               ; preds = %35, %3
  %22 = load ptr, ptr %5, align 8, !tbaa !59
  %23 = getelementptr inbounds nuw %struct._seq_t, ptr %22, i32 0, i32 3
  %24 = getelementptr inbounds nuw %struct._read_buf_t, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !66
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load ptr, ptr %10, align 8, !tbaa !11
  %29 = getelementptr inbounds i8, ptr %28, i64 0
  %30 = load i8, ptr %29, align 1, !tbaa !35
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 62
  br label %33

33:                                               ; preds = %27, %21
  %34 = phi i1 [ false, %21 ], [ %32, %27 ]
  br i1 %34, label %35, label %42

35:                                               ; preds = %33
  %36 = load ptr, ptr %5, align 8, !tbaa !59
  %37 = getelementptr inbounds nuw %struct._seq_t, ptr %36, i32 0, i32 3
  %38 = load ptr, ptr %5, align 8, !tbaa !59
  %39 = getelementptr inbounds nuw %struct._seq_t, ptr %38, i32 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !62
  %41 = call ptr @read_line_buf(ptr noundef %37, i32 noundef signext %40)
  store ptr %41, ptr %10, align 8, !tbaa !11
  br label %21, !llvm.loop !67

42:                                               ; preds = %33
  %43 = load ptr, ptr %5, align 8, !tbaa !59
  %44 = getelementptr inbounds nuw %struct._seq_t, ptr %43, i32 0, i32 3
  %45 = getelementptr inbounds nuw %struct._read_buf_t, ptr %44, i32 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !66
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 -1, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %363

49:                                               ; preds = %42
  %50 = load ptr, ptr %5, align 8, !tbaa !59
  %51 = getelementptr inbounds nuw %struct._seq_t, ptr %50, i32 0, i32 3
  %52 = getelementptr inbounds nuw %struct._read_buf_t, ptr %51, i32 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !66
  %54 = add i32 %53, 24
  %55 = add i32 %54, 1
  %56 = load ptr, ptr %5, align 8, !tbaa !59
  %57 = getelementptr inbounds nuw %struct._seq_t, ptr %56, i32 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !63
  %59 = icmp ugt i32 %55, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %49
  %61 = load ptr, ptr %5, align 8, !tbaa !59
  %62 = getelementptr inbounds nuw %struct._seq_t, ptr %61, i32 0, i32 3
  %63 = getelementptr inbounds nuw %struct._read_buf_t, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !66
  %65 = add i32 %64, 24
  %66 = add i32 %65, 1
  %67 = load ptr, ptr %5, align 8, !tbaa !59
  %68 = getelementptr inbounds nuw %struct._seq_t, ptr %67, i32 0, i32 6
  store i32 %66, ptr %68, align 8, !tbaa !63
  %69 = load ptr, ptr %5, align 8, !tbaa !59
  %70 = getelementptr inbounds nuw %struct._seq_t, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !39
  %72 = load ptr, ptr %5, align 8, !tbaa !59
  %73 = getelementptr inbounds nuw %struct._seq_t, ptr %72, i32 0, i32 6
  %74 = load i32, ptr %73, align 8, !tbaa !63
  %75 = zext i32 %74 to i64
  %76 = mul i64 %75, 1
  %77 = call ptr @xrealloc(ptr noundef %71, i64 noundef %76)
  %78 = load ptr, ptr %5, align 8, !tbaa !59
  %79 = getelementptr inbounds nuw %struct._seq_t, ptr %78, i32 0, i32 1
  store ptr %77, ptr %79, align 8, !tbaa !39
  br label %80

80:                                               ; preds = %60, %49
  %81 = load ptr, ptr %5, align 8, !tbaa !59
  %82 = getelementptr inbounds nuw %struct._seq_t, ptr %81, i32 0, i32 3
  %83 = getelementptr inbounds nuw %struct._read_buf_t, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !66
  store i32 %84, ptr %9, align 4, !tbaa !3
  %85 = load ptr, ptr %5, align 8, !tbaa !59
  %86 = getelementptr inbounds nuw %struct._seq_t, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !39
  %88 = load ptr, ptr %10, align 8, !tbaa !11
  %89 = load ptr, ptr %5, align 8, !tbaa !59
  %90 = getelementptr inbounds nuw %struct._seq_t, ptr %89, i32 0, i32 3
  %91 = getelementptr inbounds nuw %struct._read_buf_t, ptr %90, i32 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !66
  %93 = add i32 %92, 1
  %94 = zext i32 %93 to i64
  %95 = mul i64 %94, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %87, ptr align 1 %88, i64 %95, i1 false)
  %96 = load ptr, ptr %5, align 8, !tbaa !59
  %97 = getelementptr inbounds nuw %struct._seq_t, ptr %96, i32 0, i32 5
  store i32 0, ptr %97, align 4, !tbaa !43
  %98 = load ptr, ptr %5, align 8, !tbaa !59
  %99 = getelementptr inbounds nuw %struct._seq_t, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %5, align 8, !tbaa !59
  %101 = getelementptr inbounds nuw %struct._seq_t, ptr %100, i32 0, i32 4
  %102 = load i32, ptr %101, align 8, !tbaa !62
  %103 = call ptr @read_line_buf(ptr noundef %99, i32 noundef signext %102)
  store ptr %103, ptr %10, align 8, !tbaa !11
  br label %104

104:                                              ; preds = %239, %80
  %105 = load ptr, ptr %5, align 8, !tbaa !59
  %106 = getelementptr inbounds nuw %struct._seq_t, ptr %105, i32 0, i32 3
  %107 = getelementptr inbounds nuw %struct._read_buf_t, ptr %106, i32 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !66
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load ptr, ptr %10, align 8, !tbaa !11
  %112 = getelementptr inbounds i8, ptr %111, i64 0
  %113 = load i8, ptr %112, align 1, !tbaa !35
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 62
  br label %116

116:                                              ; preds = %110, %104
  %117 = phi i1 [ false, %104 ], [ %115, %110 ]
  br i1 %117, label %118, label %246

118:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 1, ptr %13) #9
  %119 = load ptr, ptr %5, align 8, !tbaa !59
  %120 = getelementptr inbounds nuw %struct._seq_t, ptr %119, i32 0, i32 5
  %121 = load i32, ptr %120, align 4, !tbaa !43
  %122 = load ptr, ptr %5, align 8, !tbaa !59
  %123 = getelementptr inbounds nuw %struct._seq_t, ptr %122, i32 0, i32 3
  %124 = getelementptr inbounds nuw %struct._read_buf_t, ptr %123, i32 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !66
  %126 = add i32 %121, %125
  %127 = add i32 %126, 1
  %128 = load ptr, ptr %5, align 8, !tbaa !59
  %129 = getelementptr inbounds nuw %struct._seq_t, ptr %128, i32 0, i32 7
  %130 = load i32, ptr %129, align 4, !tbaa !64
  %131 = icmp ugt i32 %127, %130
  br i1 %131, label %132, label %177

132:                                              ; preds = %118
  %133 = load ptr, ptr %5, align 8, !tbaa !59
  %134 = getelementptr inbounds nuw %struct._seq_t, ptr %133, i32 0, i32 5
  %135 = load i32, ptr %134, align 4, !tbaa !43
  %136 = load ptr, ptr %5, align 8, !tbaa !59
  %137 = getelementptr inbounds nuw %struct._seq_t, ptr %136, i32 0, i32 3
  %138 = getelementptr inbounds nuw %struct._read_buf_t, ptr %137, i32 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !66
  %140 = add i32 %135, %139
  %141 = add i32 %140, 1
  %142 = load ptr, ptr %5, align 8, !tbaa !59
  %143 = getelementptr inbounds nuw %struct._seq_t, ptr %142, i32 0, i32 7
  %144 = load i32, ptr %143, align 4, !tbaa !64
  %145 = add i32 %144, 262144
  %146 = icmp ult i32 %141, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %132
  %148 = load ptr, ptr %5, align 8, !tbaa !59
  %149 = getelementptr inbounds nuw %struct._seq_t, ptr %148, i32 0, i32 7
  %150 = load i32, ptr %149, align 4, !tbaa !64
  %151 = add i32 %150, 262144
  br label %162

152:                                              ; preds = %132
  %153 = load ptr, ptr %5, align 8, !tbaa !59
  %154 = getelementptr inbounds nuw %struct._seq_t, ptr %153, i32 0, i32 5
  %155 = load i32, ptr %154, align 4, !tbaa !43
  %156 = load ptr, ptr %5, align 8, !tbaa !59
  %157 = getelementptr inbounds nuw %struct._seq_t, ptr %156, i32 0, i32 3
  %158 = getelementptr inbounds nuw %struct._read_buf_t, ptr %157, i32 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !66
  %160 = add i32 %155, %159
  %161 = add i32 %160, 1
  br label %162

162:                                              ; preds = %152, %147
  %163 = phi i32 [ %151, %147 ], [ %161, %152 ]
  %164 = load ptr, ptr %5, align 8, !tbaa !59
  %165 = getelementptr inbounds nuw %struct._seq_t, ptr %164, i32 0, i32 7
  store i32 %163, ptr %165, align 4, !tbaa !64
  %166 = load ptr, ptr %5, align 8, !tbaa !59
  %167 = getelementptr inbounds nuw %struct._seq_t, ptr %166, i32 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !42
  %169 = load ptr, ptr %5, align 8, !tbaa !59
  %170 = getelementptr inbounds nuw %struct._seq_t, ptr %169, i32 0, i32 7
  %171 = load i32, ptr %170, align 4, !tbaa !64
  %172 = zext i32 %171 to i64
  %173 = mul i64 %172, 1
  %174 = call ptr @xrealloc(ptr noundef %168, i64 noundef %173)
  %175 = load ptr, ptr %5, align 8, !tbaa !59
  %176 = getelementptr inbounds nuw %struct._seq_t, ptr %175, i32 0, i32 2
  store ptr %174, ptr %176, align 8, !tbaa !42
  br label %177

177:                                              ; preds = %162, %118
  br label %178

178:                                              ; preds = %238, %177
  %179 = load ptr, ptr %10, align 8, !tbaa !11
  %180 = getelementptr inbounds nuw i8, ptr %179, i32 1
  store ptr %180, ptr %10, align 8, !tbaa !11
  %181 = load i8, ptr %179, align 1, !tbaa !35
  store i8 %181, ptr %13, align 1, !tbaa !35
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %239

184:                                              ; preds = %178
  %185 = call ptr @__ctype_b_loc() #13
  %186 = load ptr, ptr %185, align 8, !tbaa !68
  %187 = load i8, ptr %13, align 1, !tbaa !35
  %188 = zext i8 %187 to i32
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i16, ptr %186, i64 %189
  %191 = load i16, ptr %190, align 2, !tbaa !70
  %192 = zext i16 %191 to i32
  %193 = and i32 %192, 256
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %184
  %196 = load i8, ptr %13, align 1, !tbaa !35
  %197 = load ptr, ptr %5, align 8, !tbaa !59
  %198 = getelementptr inbounds nuw %struct._seq_t, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !42
  %200 = load ptr, ptr %5, align 8, !tbaa !59
  %201 = getelementptr inbounds nuw %struct._seq_t, ptr %200, i32 0, i32 5
  %202 = load i32, ptr %201, align 4, !tbaa !43
  %203 = add i32 %202, 1
  store i32 %203, ptr %201, align 4, !tbaa !43
  %204 = zext i32 %202 to i64
  %205 = getelementptr inbounds nuw i8, ptr %199, i64 %204
  store i8 %196, ptr %205, align 1, !tbaa !35
  br label %238

206:                                              ; preds = %184
  %207 = call ptr @__ctype_b_loc() #13
  %208 = load ptr, ptr %207, align 8, !tbaa !68
  %209 = load i8, ptr %13, align 1, !tbaa !35
  %210 = zext i8 %209 to i32
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i16, ptr %208, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !70
  %214 = zext i16 %213 to i32
  %215 = and i32 %214, 512
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %237

217:                                              ; preds = %206
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #9
  %218 = call ptr @__ctype_toupper_loc() #13
  %219 = load ptr, ptr %218, align 8, !tbaa !72
  %220 = load i8, ptr %13, align 1, !tbaa !35
  %221 = zext i8 %220 to i32
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, ptr %219, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !3
  store i32 %224, ptr %14, align 4, !tbaa !3
  %225 = load i32, ptr %14, align 4, !tbaa !3
  store i32 %225, ptr %15, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #9
  %226 = load i32, ptr %15, align 4, !tbaa !3
  %227 = trunc i32 %226 to i8
  %228 = load ptr, ptr %5, align 8, !tbaa !59
  %229 = getelementptr inbounds nuw %struct._seq_t, ptr %228, i32 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !42
  %231 = load ptr, ptr %5, align 8, !tbaa !59
  %232 = getelementptr inbounds nuw %struct._seq_t, ptr %231, i32 0, i32 5
  %233 = load i32, ptr %232, align 4, !tbaa !43
  %234 = add i32 %233, 1
  store i32 %234, ptr %232, align 4, !tbaa !43
  %235 = zext i32 %233 to i64
  %236 = getelementptr inbounds nuw i8, ptr %230, i64 %235
  store i8 %227, ptr %236, align 1, !tbaa !35
  br label %237

237:                                              ; preds = %217, %206
  br label %238

238:                                              ; preds = %237, %195
  br label %178, !llvm.loop !74

239:                                              ; preds = %178
  %240 = load ptr, ptr %5, align 8, !tbaa !59
  %241 = getelementptr inbounds nuw %struct._seq_t, ptr %240, i32 0, i32 3
  %242 = load ptr, ptr %5, align 8, !tbaa !59
  %243 = getelementptr inbounds nuw %struct._seq_t, ptr %242, i32 0, i32 4
  %244 = load i32, ptr %243, align 8, !tbaa !62
  %245 = call ptr @read_line_buf(ptr noundef %241, i32 noundef signext %244)
  store ptr %245, ptr %10, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 1, ptr %13) #9
  br label %104, !llvm.loop !75

246:                                              ; preds = %116
  %247 = load i32, ptr %7, align 4, !tbaa !3
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %258

249:                                              ; preds = %246
  %250 = load ptr, ptr %5, align 8, !tbaa !59
  %251 = getelementptr inbounds nuw %struct._seq_t, ptr %250, i32 0, i32 3
  %252 = getelementptr inbounds nuw %struct._read_buf_t, ptr %251, i32 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !66
  %254 = icmp ugt i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load ptr, ptr @stderr, align 8, !tbaa !13
  %257 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef @.str.34) #9
  br label %258

258:                                              ; preds = %255, %249, %246
  %259 = load ptr, ptr %5, align 8, !tbaa !59
  %260 = getelementptr inbounds nuw %struct._seq_t, ptr %259, i32 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !42
  %262 = load ptr, ptr %5, align 8, !tbaa !59
  %263 = getelementptr inbounds nuw %struct._seq_t, ptr %262, i32 0, i32 5
  %264 = load i32, ptr %263, align 4, !tbaa !43
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds nuw i8, ptr %261, i64 %265
  store i8 0, ptr %266, align 1, !tbaa !35
  %267 = load ptr, ptr %5, align 8, !tbaa !59
  %268 = getelementptr inbounds nuw %struct._seq_t, ptr %267, i32 0, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !39
  %270 = call ptr @strstr(ptr noundef %269, ptr noundef @.str.35) #10
  store ptr %270, ptr %10, align 8, !tbaa !11
  %271 = load ptr, ptr %10, align 8, !tbaa !11
  %272 = icmp ne ptr %271, null
  br i1 %272, label %273, label %307

273:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #9
  %274 = load ptr, ptr %10, align 8, !tbaa !11
  %275 = getelementptr inbounds i8, ptr %274, i64 6
  store ptr %275, ptr %16, align 8, !tbaa !11
  %276 = load i32, ptr %9, align 4, !tbaa !3
  %277 = sub i32 %276, 6
  store i32 %277, ptr %9, align 4, !tbaa !3
  br label %278

278:                                              ; preds = %290, %273
  %279 = call ptr @__ctype_b_loc() #13
  %280 = load ptr, ptr %279, align 8, !tbaa !68
  %281 = load ptr, ptr %16, align 8, !tbaa !11
  %282 = load i8, ptr %281, align 1, !tbaa !35
  %283 = sext i8 %282 to i32
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i16, ptr %280, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !70
  %287 = zext i16 %286 to i32
  %288 = and i32 %287, 2048
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %278
  %291 = load ptr, ptr %16, align 8, !tbaa !11
  %292 = getelementptr inbounds i8, ptr %291, i64 1
  store ptr %292, ptr %16, align 8, !tbaa !11
  %293 = load i32, ptr %9, align 4, !tbaa !3
  %294 = sub i32 %293, 1
  store i32 %294, ptr %9, align 4, !tbaa !3
  br label %278, !llvm.loop !76

295:                                              ; preds = %278
  br label %296

296:                                              ; preds = %300, %295
  %297 = load ptr, ptr %16, align 8, !tbaa !11
  %298 = load i8, ptr %297, align 1, !tbaa !35
  %299 = icmp ne i8 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %296
  %301 = load ptr, ptr %16, align 8, !tbaa !11
  %302 = getelementptr inbounds nuw i8, ptr %301, i32 1
  store ptr %302, ptr %16, align 8, !tbaa !11
  %303 = load i8, ptr %301, align 1, !tbaa !35
  %304 = load ptr, ptr %10, align 8, !tbaa !11
  %305 = getelementptr inbounds nuw i8, ptr %304, i32 1
  store ptr %305, ptr %10, align 8, !tbaa !11
  store i8 %303, ptr %304, align 1, !tbaa !35
  br label %296, !llvm.loop !77

306:                                              ; preds = %296
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #9
  br label %307

307:                                              ; preds = %306, %258
  %308 = load ptr, ptr %5, align 8, !tbaa !59
  %309 = getelementptr inbounds nuw %struct._seq_t, ptr %308, i32 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !39
  %311 = load i32, ptr %9, align 4, !tbaa !3
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds nuw i8, ptr %310, i64 %312
  %314 = getelementptr inbounds i8, ptr %313, i64 -1
  store ptr %314, ptr %10, align 8, !tbaa !11
  br label %315

315:                                              ; preds = %341, %307
  %316 = call ptr @__ctype_b_loc() #13
  %317 = load ptr, ptr %316, align 8, !tbaa !68
  %318 = load ptr, ptr %10, align 8, !tbaa !11
  %319 = load i8, ptr %318, align 1, !tbaa !35
  %320 = sext i8 %319 to i32
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i16, ptr %317, i64 %321
  %323 = load i16, ptr %322, align 2, !tbaa !70
  %324 = zext i16 %323 to i32
  %325 = and i32 %324, 2
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %339, label %327

327:                                              ; preds = %315
  %328 = call ptr @__ctype_b_loc() #13
  %329 = load ptr, ptr %328, align 8, !tbaa !68
  %330 = load ptr, ptr %10, align 8, !tbaa !11
  %331 = load i8, ptr %330, align 1, !tbaa !35
  %332 = sext i8 %331 to i32
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i16, ptr %329, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !70
  %336 = zext i16 %335 to i32
  %337 = and i32 %336, 8192
  %338 = icmp ne i32 %337, 0
  br label %339

339:                                              ; preds = %327, %315
  %340 = phi i1 [ true, %315 ], [ %338, %327 ]
  br i1 %340, label %341, label %344

341:                                              ; preds = %339
  %342 = load ptr, ptr %10, align 8, !tbaa !11
  %343 = getelementptr inbounds i8, ptr %342, i64 -1
  store ptr %343, ptr %10, align 8, !tbaa !11
  br label %315, !llvm.loop !78

344:                                              ; preds = %339
  %345 = load ptr, ptr %10, align 8, !tbaa !11
  %346 = getelementptr inbounds i8, ptr %345, i64 1
  %347 = load ptr, ptr %5, align 8, !tbaa !59
  %348 = getelementptr inbounds nuw %struct._seq_t, ptr %347, i32 0, i32 5
  %349 = load i32, ptr %348, align 4, !tbaa !43
  %350 = load i32, ptr %6, align 4, !tbaa !3
  %351 = add i32 %349, %350
  %352 = call signext i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %346, i64 noundef 24, ptr noundef @.str.36, i32 noundef signext %351) #9
  store i32 %352, ptr %11, align 4, !tbaa !3
  %353 = load i32, ptr %11, align 4, !tbaa !3
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %344
  %356 = load i32, ptr %11, align 4, !tbaa !3
  %357 = icmp sge i32 %356, 24
  br i1 %357, label %358, label %362

358:                                              ; preds = %355, %344
  %359 = load ptr, ptr %5, align 8, !tbaa !59
  %360 = getelementptr inbounds nuw %struct._seq_t, ptr %359, i32 0, i32 5
  %361 = load i32, ptr %360, align 4, !tbaa !43
  call void (ptr, ...) @fatal(ptr noundef @.str.37, i32 noundef signext %361) #11
  unreachable

362:                                              ; preds = %355
  store i32 0, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %363

363:                                              ; preds = %362, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #9
  %364 = load i32, ptr %4, align 4
  ret i32 %364
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #0

declare void @init_encoding() #5

declare void @init_hash_env(ptr noundef, i32 noundef signext, ptr noundef, i32 noundef signext) #5

declare void @init_col(ptr noundef, i32 noundef signext) #5

declare void @bld_table(ptr noundef) #5

; Function Attrs: nounwind
define internal void @init_splice_junctions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr %1) #9
  %4 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !23
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = call ptr @xmalloc(i64 noundef %6)
  store ptr %7, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !79
  store i32 0, ptr %1, align 4, !tbaa !3
  br label %8

8:                                                ; preds = %51, %0
  %9 = load i32, ptr %1, align 4, !tbaa !3
  %10 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 2), align 8, !tbaa !23
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr %2) #9
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %13

13:                                               ; preds = %47, %12
  %14 = load i32, ptr %2, align 4, !tbaa !3
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 1, ptr %3) #9
  %17 = load ptr, ptr @options, align 8, !tbaa !22
  %18 = load i32, ptr %1, align 4, !tbaa !3
  %19 = mul i32 %18, 5
  %20 = load i32, ptr %2, align 4, !tbaa !3
  %21 = add i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds nuw i8, ptr %17, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !35
  store i8 %24, ptr %3, align 1, !tbaa !35
  %25 = load i8, ptr %3, align 1, !tbaa !35
  %26 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !79
  %27 = load i32, ptr %1, align 4, !tbaa !3
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds nuw %struct._junction_t, ptr %26, i64 %28
  %30 = getelementptr inbounds nuw %struct._junction_t, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %2, align 4, !tbaa !3
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds nuw [4 x i8], ptr %30, i64 0, i64 %32
  store i8 %25, ptr %33, align 1, !tbaa !35
  %34 = load i8, ptr %3, align 1, !tbaa !35
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds nuw [256 x i8], ptr @dna_complement, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !35
  %38 = load ptr, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 1), align 8, !tbaa !79
  %39 = load i32, ptr %1, align 4, !tbaa !3
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds nuw %struct._junction_t, ptr %38, i64 %40
  %42 = getelementptr inbounds nuw %struct._junction_t, ptr %41, i32 0, i32 1
  %43 = load i32, ptr %2, align 4, !tbaa !3
  %44 = sub i32 3, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds nuw [4 x i8], ptr %42, i64 0, i64 %45
  store i8 %37, ptr %46, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 1, ptr %3) #9
  br label %47

47:                                               ; preds = %16
  %48 = load i32, ptr %2, align 4, !tbaa !3
  %49 = add i32 %48, 1
  store i32 %49, ptr %2, align 4, !tbaa !3
  br label %13, !llvm.loop !80

50:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 4, ptr %2) #9
  br label %51

51:                                               ; preds = %50
  %52 = load i32, ptr %1, align 4, !tbaa !3
  %53 = add i32 %52, 1
  store i32 %53, ptr %1, align 4, !tbaa !3
  br label %8, !llvm.loop !81

54:                                               ; preds = %8
  call void @llvm.lifetime.end.p0(i64 4, ptr %1) #9
  ret void
}

declare void @SIM4(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
define internal void @seq_revcomp_inplace(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #9
  %6 = load ptr, ptr %2, align 8, !tbaa !59
  %7 = getelementptr inbounds nuw %struct._seq_t, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  store ptr %8, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %4) #9
  %9 = load ptr, ptr %2, align 8, !tbaa !59
  %10 = getelementptr inbounds nuw %struct._seq_t, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = load ptr, ptr %2, align 8, !tbaa !59
  %13 = getelementptr inbounds nuw %struct._seq_t, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds nuw i8, ptr %11, i64 %15
  store ptr %16, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr %5) #9
  br label %17

17:                                               ; preds = %21, %1
  %18 = load ptr, ptr %3, align 8, !tbaa !11
  %19 = load ptr, ptr %4, align 8, !tbaa !11
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load ptr, ptr %4, align 8, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %23, ptr %4, align 8, !tbaa !11
  %24 = load i8, ptr %23, align 1, !tbaa !35
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds nuw [256 x i8], ptr @dna_complement, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !35
  store i8 %27, ptr %5, align 1, !tbaa !35
  %28 = load ptr, ptr %3, align 8, !tbaa !11
  %29 = load i8, ptr %28, align 1, !tbaa !35
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds nuw [256 x i8], ptr @dna_complement, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !35
  %33 = load ptr, ptr %4, align 8, !tbaa !11
  store i8 %32, ptr %33, align 1, !tbaa !35
  %34 = load i8, ptr %5, align 1, !tbaa !35
  %35 = load ptr, ptr %3, align 8, !tbaa !11
  %36 = getelementptr inbounds nuw i8, ptr %35, i32 1
  store ptr %36, ptr %3, align 8, !tbaa !11
  store i8 %34, ptr %35, align 1, !tbaa !35
  br label %17, !llvm.loop !82

37:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 1, ptr %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %4) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #9
  ret void
}

; Function Attrs: nounwind
define internal void @print_res(ptr noundef %0, i32 noundef signext %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !46
  store i32 %1, ptr %6, align 4, !tbaa !3
  store ptr %2, ptr %7, align 8, !tbaa !59
  store ptr %3, ptr %8, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  %10 = load ptr, ptr %5, align 8, !tbaa !46
  %11 = getelementptr inbounds nuw %struct._result_t, ptr %10, i32 0, i32 5
  %12 = getelementptr inbounds nuw %struct._sim4_stats, ptr %11, i32 0, i32 0
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 17), align 4, !tbaa !31
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %4
  %17 = load ptr, ptr %7, align 8, !tbaa !59
  %18 = getelementptr inbounds nuw %struct._seq_t, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = load ptr, ptr %8, align 8, !tbaa !59
  %21 = getelementptr inbounds nuw %struct._seq_t, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.20, ptr noundef %19, ptr noundef %22)
  %24 = load i32, ptr %6, align 4, !tbaa !3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.21)
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 3), align 4, !tbaa !32
  switch i32 %29, label %76 [
    i32 0, label %30
    i32 1, label %36
    i32 3, label %44
    i32 4, label %57
  ]

30:                                               ; preds = %28
  %31 = load ptr, ptr %5, align 8, !tbaa !46
  %32 = getelementptr inbounds nuw %struct._result_t, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %5, align 8, !tbaa !46
  %34 = getelementptr inbounds nuw %struct._result_t, ptr %33, i32 0, i32 4
  %35 = load i32, ptr %34, align 8, !tbaa !83
  call void @print_exons(ptr noundef %32, i32 noundef signext %35)
  br label %77

36:                                               ; preds = %28
  %37 = load ptr, ptr %7, align 8, !tbaa !59
  %38 = getelementptr inbounds nuw %struct._seq_t, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = load ptr, ptr %8, align 8, !tbaa !59
  %41 = getelementptr inbounds nuw %struct._seq_t, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = load ptr, ptr %5, align 8, !tbaa !46
  call void @print_align_lat(ptr noundef %39, ptr noundef %42, ptr noundef %43)
  br label %77

44:                                               ; preds = %28
  %45 = load ptr, ptr %5, align 8, !tbaa !46
  %46 = getelementptr inbounds nuw %struct._result_t, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %5, align 8, !tbaa !46
  %48 = getelementptr inbounds nuw %struct._result_t, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !83
  call void @print_exons(ptr noundef %46, i32 noundef signext %49)
  %50 = load ptr, ptr %7, align 8, !tbaa !59
  %51 = getelementptr inbounds nuw %struct._seq_t, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !42
  %53 = load ptr, ptr %8, align 8, !tbaa !59
  %54 = getelementptr inbounds nuw %struct._seq_t, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !42
  %56 = load ptr, ptr %5, align 8, !tbaa !46
  call void @print_align_lat(ptr noundef %52, ptr noundef %55, ptr noundef %56)
  br label %77

57:                                               ; preds = %28
  %58 = load ptr, ptr %5, align 8, !tbaa !46
  %59 = getelementptr inbounds nuw %struct._result_t, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %5, align 8, !tbaa !46
  %61 = getelementptr inbounds nuw %struct._result_t, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 8, !tbaa !83
  call void @print_exons(ptr noundef %59, i32 noundef signext %62)
  %63 = load ptr, ptr %7, align 8, !tbaa !59
  %64 = load ptr, ptr %8, align 8, !tbaa !59
  %65 = load ptr, ptr %5, align 8, !tbaa !46
  %66 = getelementptr inbounds nuw %struct._result_t, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %5, align 8, !tbaa !46
  %68 = getelementptr inbounds nuw %struct._result_t, ptr %67, i32 0, i32 5
  call void @print_polyA_info(ptr noundef %63, ptr noundef %64, ptr noundef %66, ptr noundef %68)
  %69 = load ptr, ptr %7, align 8, !tbaa !59
  %70 = getelementptr inbounds nuw %struct._seq_t, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = load ptr, ptr %8, align 8, !tbaa !59
  %73 = getelementptr inbounds nuw %struct._seq_t, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = load ptr, ptr %5, align 8, !tbaa !46
  call void @print_align_lat(ptr noundef %71, ptr noundef %74, ptr noundef %75)
  br label %77

76:                                               ; preds = %28
  call void (ptr, ...) @fatal(ptr noundef @.str.22) #11
  unreachable

77:                                               ; preds = %57, %44, %36, %30
  %78 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.23)
  br label %79

79:                                               ; preds = %77, %4
  store i32 0, ptr %9, align 4, !tbaa !3
  br label %80

80:                                               ; preds = %96, %79
  %81 = load i32, ptr %9, align 4, !tbaa !3
  %82 = load ptr, ptr %5, align 8, !tbaa !46
  %83 = getelementptr inbounds nuw %struct._result_t, ptr %82, i32 0, i32 1
  %84 = getelementptr inbounds nuw %struct._collec_t, ptr %83, i32 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !84
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load ptr, ptr %5, align 8, !tbaa !46
  %89 = getelementptr inbounds nuw %struct._result_t, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds nuw %struct._collec_t, ptr %89, i32 0, i32 0
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = load i32, ptr %9, align 4, !tbaa !3
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds nuw ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !85
  call void @free(ptr noundef %95) #9
  br label %96

96:                                               ; preds = %87
  %97 = load i32, ptr %9, align 4, !tbaa !3
  %98 = add i32 %97, 1
  store i32 %98, ptr %9, align 4, !tbaa !3
  br label %80, !llvm.loop !86

99:                                               ; preds = %80
  %100 = load ptr, ptr %5, align 8, !tbaa !46
  %101 = getelementptr inbounds nuw %struct._result_t, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds nuw %struct._collec_t, ptr %101, i32 0, i32 0
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  call void @free(ptr noundef %103) #9
  %104 = load ptr, ptr %5, align 8, !tbaa !46
  %105 = getelementptr inbounds nuw %struct._result_t, ptr %104, i32 0, i32 0
  %106 = load ptr, ptr %105, align 8, !tbaa !87
  %107 = icmp ne ptr %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %99
  %109 = load ptr, ptr %5, align 8, !tbaa !46
  %110 = getelementptr inbounds nuw %struct._result_t, ptr %109, i32 0, i32 0
  %111 = load ptr, ptr %110, align 8, !tbaa !87
  call void @free_align(ptr noundef %111)
  br label %112

112:                                              ; preds = %108, %99
  %113 = load ptr, ptr %5, align 8, !tbaa !46
  call void @free(ptr noundef %113) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  ret void
}

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

declare ptr @xmalloc(i64 noundef) #5

declare signext i32 @printf(ptr noundef, ...) #5

declare void @print_exons(ptr noundef, i32 noundef signext) #5

; Function Attrs: nounwind
define internal void @print_align_lat(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !11
  store ptr %1, ptr %5, align 8, !tbaa !11
  store ptr %2, ptr %6, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #9
  %11 = load ptr, ptr %6, align 8, !tbaa !46
  %12 = getelementptr inbounds nuw %struct._result_t, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, ptr %10, align 4
  br label %86

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8, !tbaa !46
  %18 = getelementptr inbounds nuw %struct._result_t, ptr %17, i32 0, i32 0
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  store ptr %19, ptr %9, align 8, !tbaa !88
  br label %20

20:                                               ; preds = %23, %16
  %21 = load ptr, ptr %9, align 8, !tbaa !88
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %83

23:                                               ; preds = %20
  %24 = load ptr, ptr %9, align 8, !tbaa !88
  store ptr %24, ptr %8, align 8, !tbaa !88
  %25 = load ptr, ptr %9, align 8, !tbaa !88
  %26 = getelementptr inbounds nuw %struct._edit_script_list, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  store ptr %27, ptr %9, align 8, !tbaa !88
  %28 = load ptr, ptr %8, align 8, !tbaa !88
  %29 = getelementptr inbounds nuw %struct._edit_script_list, ptr %28, i32 0, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !92
  %31 = mul i32 2, %30
  %32 = add i32 %31, 1
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = call ptr @xmalloc(i64 noundef %35)
  store ptr %36, ptr %7, align 8, !tbaa !72
  %37 = load ptr, ptr %7, align 8, !tbaa !72
  %38 = getelementptr inbounds nuw i32, ptr %37, i32 1
  store ptr %38, ptr %7, align 8, !tbaa !72
  %39 = load ptr, ptr %8, align 8, !tbaa !88
  %40 = getelementptr inbounds nuw %struct._edit_script_list, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !93
  %42 = load ptr, ptr %7, align 8, !tbaa !72
  call void @S2A(ptr noundef %41, ptr noundef %42, i32 noundef signext 0)
  %43 = load ptr, ptr %8, align 8, !tbaa !88
  %44 = getelementptr inbounds nuw %struct._edit_script_list, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  call void @Free_script(ptr noundef %45)
  %46 = load ptr, ptr %4, align 8, !tbaa !11
  %47 = load ptr, ptr %8, align 8, !tbaa !88
  %48 = getelementptr inbounds nuw %struct._edit_script_list, ptr %47, i32 0, i32 2
  %49 = load i32, ptr %48, align 8, !tbaa !94
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds nuw i8, ptr %46, i64 %50
  %52 = getelementptr inbounds i8, ptr %51, i64 -1
  %53 = getelementptr inbounds i8, ptr %52, i64 -1
  %54 = load ptr, ptr %5, align 8, !tbaa !11
  %55 = load ptr, ptr %8, align 8, !tbaa !88
  %56 = getelementptr inbounds nuw %struct._edit_script_list, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !95
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds nuw i8, ptr %54, i64 %58
  %60 = getelementptr inbounds i8, ptr %59, i64 -1
  %61 = getelementptr inbounds i8, ptr %60, i64 -1
  %62 = load ptr, ptr %8, align 8, !tbaa !88
  %63 = getelementptr inbounds nuw %struct._edit_script_list, ptr %62, i32 0, i32 4
  %64 = load i32, ptr %63, align 8, !tbaa !96
  %65 = load ptr, ptr %8, align 8, !tbaa !88
  %66 = getelementptr inbounds nuw %struct._edit_script_list, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !92
  %68 = load ptr, ptr %7, align 8, !tbaa !72
  %69 = load ptr, ptr %8, align 8, !tbaa !88
  %70 = getelementptr inbounds nuw %struct._edit_script_list, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !94
  %72 = load ptr, ptr %8, align 8, !tbaa !88
  %73 = getelementptr inbounds nuw %struct._edit_script_list, ptr %72, i32 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !95
  %75 = load ptr, ptr %6, align 8, !tbaa !46
  %76 = getelementptr inbounds nuw %struct._result_t, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %6, align 8, !tbaa !46
  %78 = getelementptr inbounds nuw %struct._result_t, ptr %77, i32 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !83
  call void @IDISPLAY(ptr noundef %53, ptr noundef %61, i32 noundef signext %64, i32 noundef signext %67, ptr noundef %68, i32 noundef signext %71, i32 noundef signext %74, ptr noundef %76, i32 noundef signext %79)
  %80 = load ptr, ptr %7, align 8, !tbaa !72
  %81 = getelementptr inbounds i32, ptr %80, i64 -1
  call void @free(ptr noundef %81) #9
  %82 = load ptr, ptr %8, align 8, !tbaa !88
  call void @free(ptr noundef %82) #9
  br label %20, !llvm.loop !97

83:                                               ; preds = %20
  %84 = load ptr, ptr %6, align 8, !tbaa !46
  %85 = getelementptr inbounds nuw %struct._result_t, ptr %84, i32 0, i32 0
  store ptr null, ptr %85, align 8, !tbaa !87
  store i32 0, ptr %10, align 4
  br label %86

86:                                               ; preds = %83, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  %87 = load i32, ptr %10, align 4
  switch i32 %87, label %89 [
    i32 0, label %88
    i32 1, label %88
  ]

88:                                               ; preds = %86, %86
  ret void

89:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
define internal void @print_polyA_info(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca [51 x i8], align 1
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca ptr, align 8
  %22 = alloca [51 x i8], align 1
  %23 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !59
  store ptr %1, ptr %6, align 8, !tbaa !59
  store ptr %2, ptr %7, align 8, !tbaa !98
  store ptr %3, ptr %8, align 8, !tbaa !100
  %24 = load ptr, ptr %8, align 8, !tbaa !100
  %25 = getelementptr inbounds nuw %struct._sim4_stats, ptr %24, i32 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !102
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %241

28:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #9
  store i32 0, ptr %9, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #9
  store i32 0, ptr %10, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #9
  store i32 50, ptr %13, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #9
  call void @llvm.lifetime.start.p0(i64 51, ptr %15) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #9
  %29 = load ptr, ptr %7, align 8, !tbaa !98
  %30 = getelementptr inbounds nuw %struct._collec_t, ptr %29, i32 0, i32 0
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = load ptr, ptr %7, align 8, !tbaa !98
  %33 = getelementptr inbounds nuw %struct._collec_t, ptr %32, i32 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds nuw ptr, ptr %31, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  store ptr %38, ptr %16, align 8, !tbaa !103
  store i32 0, ptr %11, align 4, !tbaa !3
  br label %39

39:                                               ; preds = %72, %28
  %40 = load i32, ptr %11, align 4, !tbaa !3
  %41 = icmp ult i32 %40, 10
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load ptr, ptr %16, align 8, !tbaa !103
  %44 = getelementptr inbounds nuw %struct._exon_t, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !105
  %46 = load i32, ptr %11, align 4, !tbaa !3
  %47 = add i32 %45, %46
  %48 = load ptr, ptr %6, align 8, !tbaa !59
  %49 = getelementptr inbounds nuw %struct._seq_t, ptr %48, i32 0, i32 5
  %50 = load i32, ptr %49, align 4, !tbaa !43
  %51 = icmp ult i32 %47, %50
  br label %52

52:                                               ; preds = %42, %39
  %53 = phi i1 [ false, %39 ], [ %51, %42 ]
  br i1 %53, label %54, label %75

54:                                               ; preds = %52
  %55 = load ptr, ptr %6, align 8, !tbaa !59
  %56 = getelementptr inbounds nuw %struct._seq_t, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !42
  %58 = load ptr, ptr %16, align 8, !tbaa !103
  %59 = getelementptr inbounds nuw %struct._exon_t, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !105
  %61 = load i32, ptr %11, align 4, !tbaa !3
  %62 = add i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds nuw i8, ptr %57, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 65
  br i1 %67, label %68, label %71

68:                                               ; preds = %54
  %69 = load i32, ptr %9, align 4, !tbaa !3
  %70 = add i32 %69, 1
  store i32 %70, ptr %9, align 4, !tbaa !3
  br label %71

71:                                               ; preds = %68, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %11, align 4, !tbaa !3
  %74 = add i32 %73, 1
  store i32 %74, ptr %11, align 4, !tbaa !3
  br label %39, !llvm.loop !107

75:                                               ; preds = %52
  br label %76

76:                                               ; preds = %102, %75
  %77 = load ptr, ptr %16, align 8, !tbaa !103
  %78 = getelementptr inbounds nuw %struct._exon_t, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !105
  %80 = load i32, ptr %11, align 4, !tbaa !3
  %81 = add i32 %79, %80
  %82 = load ptr, ptr %6, align 8, !tbaa !59
  %83 = getelementptr inbounds nuw %struct._seq_t, ptr %82, i32 0, i32 5
  %84 = load i32, ptr %83, align 4, !tbaa !43
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %76
  %87 = load ptr, ptr %6, align 8, !tbaa !59
  %88 = getelementptr inbounds nuw %struct._seq_t, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !42
  %90 = load ptr, ptr %16, align 8, !tbaa !103
  %91 = getelementptr inbounds nuw %struct._exon_t, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 4, !tbaa !105
  %93 = load i32, ptr %11, align 4, !tbaa !3
  %94 = add i32 %92, %93
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds nuw i8, ptr %89, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !35
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 65
  br label %100

100:                                              ; preds = %86, %76
  %101 = phi i1 [ false, %76 ], [ %99, %86 ]
  br i1 %101, label %102, label %107

102:                                              ; preds = %100
  %103 = load i32, ptr %11, align 4, !tbaa !3
  %104 = add i32 %103, 1
  store i32 %104, ptr %11, align 4, !tbaa !3
  %105 = load i32, ptr %9, align 4, !tbaa !3
  %106 = add i32 %105, 1
  store i32 %106, ptr %9, align 4, !tbaa !3
  br label %76, !llvm.loop !108

107:                                              ; preds = %100
  store i32 0, ptr %12, align 4, !tbaa !3
  br label %108

108:                                              ; preds = %138, %107
  %109 = load i32, ptr %12, align 4, !tbaa !3
  %110 = load ptr, ptr %5, align 8, !tbaa !59
  %111 = getelementptr inbounds nuw %struct._seq_t, ptr %110, i32 0, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !43
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, ptr %12, align 4, !tbaa !3
  %116 = load i32, ptr %11, align 4, !tbaa !3
  %117 = icmp ult i32 %115, %116
  br label %118

118:                                              ; preds = %114, %108
  %119 = phi i1 [ false, %108 ], [ %117, %114 ]
  br i1 %119, label %120, label %141

120:                                              ; preds = %118
  %121 = load ptr, ptr %5, align 8, !tbaa !59
  %122 = getelementptr inbounds nuw %struct._seq_t, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !42
  %124 = load ptr, ptr %16, align 8, !tbaa !103
  %125 = getelementptr inbounds nuw %struct._exon_t, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !109
  %127 = load i32, ptr %12, align 4, !tbaa !3
  %128 = add i32 %126, %127
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds nuw i8, ptr %123, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !35
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 65
  br i1 %133, label %134, label %137

134:                                              ; preds = %120
  %135 = load i32, ptr %10, align 4, !tbaa !3
  %136 = add i32 %135, 1
  store i32 %136, ptr %10, align 4, !tbaa !3
  br label %137

137:                                              ; preds = %134, %120
  br label %138

138:                                              ; preds = %137
  %139 = load i32, ptr %12, align 4, !tbaa !3
  %140 = add i32 %139, 1
  store i32 %140, ptr %12, align 4, !tbaa !3
  br label %108, !llvm.loop !110

141:                                              ; preds = %118
  %142 = load i32, ptr %11, align 4, !tbaa !3
  %143 = load i32, ptr %9, align 4, !tbaa !3
  %144 = load i32, ptr %10, align 4, !tbaa !3
  %145 = load ptr, ptr %16, align 8, !tbaa !103
  %146 = getelementptr inbounds nuw %struct._exon_t, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 4, !tbaa !109
  %148 = add i32 %147, 1
  %149 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %150 = add i32 %148, %149
  %151 = load i32, ptr %11, align 4, !tbaa !3
  %152 = load ptr, ptr %6, align 8, !tbaa !59
  %153 = getelementptr inbounds nuw %struct._seq_t, ptr %152, i32 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !42
  %155 = load ptr, ptr %16, align 8, !tbaa !103
  %156 = getelementptr inbounds nuw %struct._exon_t, ptr %155, i32 0, i32 3
  %157 = load i32, ptr %156, align 4, !tbaa !105
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds nuw i8, ptr %154, i64 %158
  %160 = load ptr, ptr %16, align 8, !tbaa !103
  %161 = getelementptr inbounds nuw %struct._exon_t, ptr %160, i32 0, i32 3
  %162 = load i32, ptr %161, align 4, !tbaa !105
  %163 = add i32 %162, 1
  %164 = load i32, ptr %11, align 4, !tbaa !3
  %165 = load i32, ptr %12, align 4, !tbaa !3
  %166 = load ptr, ptr %5, align 8, !tbaa !59
  %167 = getelementptr inbounds nuw %struct._seq_t, ptr %166, i32 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !42
  %169 = load ptr, ptr %16, align 8, !tbaa !103
  %170 = getelementptr inbounds nuw %struct._exon_t, ptr %169, i32 0, i32 2
  %171 = load i32, ptr %170, align 4, !tbaa !109
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds nuw i8, ptr %168, i64 %172
  %174 = load ptr, ptr %16, align 8, !tbaa !103
  %175 = getelementptr inbounds nuw %struct._exon_t, ptr %174, i32 0, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !109
  %177 = add i32 %176, 1
  %178 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %179 = add i32 %177, %178
  %180 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.24, i32 noundef signext %142, i32 noundef signext %143, i32 noundef signext %144, i32 noundef signext %150, i32 noundef signext %151, ptr noundef %159, i32 noundef signext %163, i32 noundef signext %164, i32 noundef signext %165, ptr noundef %173, i32 noundef signext %179)
  %181 = load ptr, ptr %16, align 8, !tbaa !103
  %182 = getelementptr inbounds nuw %struct._exon_t, ptr %181, i32 0, i32 2
  %183 = load i32, ptr %182, align 4, !tbaa !109
  %184 = load i32, ptr %13, align 4, !tbaa !3
  %185 = icmp ult i32 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %141
  %187 = load ptr, ptr %16, align 8, !tbaa !103
  %188 = getelementptr inbounds nuw %struct._exon_t, ptr %187, i32 0, i32 2
  %189 = load i32, ptr %188, align 4, !tbaa !109
  store i32 %189, ptr %13, align 4, !tbaa !3
  br label %190

190:                                              ; preds = %186, %141
  %191 = getelementptr inbounds [51 x i8], ptr %15, i64 0, i64 0
  %192 = load ptr, ptr %5, align 8, !tbaa !59
  %193 = getelementptr inbounds nuw %struct._seq_t, ptr %192, i32 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !42
  %195 = load ptr, ptr %16, align 8, !tbaa !103
  %196 = getelementptr inbounds nuw %struct._exon_t, ptr %195, i32 0, i32 2
  %197 = load i32, ptr %196, align 4, !tbaa !109
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds nuw i8, ptr %194, i64 %198
  %200 = load i32, ptr %13, align 4, !tbaa !3
  %201 = zext i32 %200 to i64
  %202 = sub i64 0, %201
  %203 = getelementptr inbounds i8, ptr %199, i64 %202
  %204 = load i32, ptr %13, align 4, !tbaa !3
  %205 = zext i32 %204 to i64
  %206 = call ptr @strncpy(ptr noundef %191, ptr noundef %203, i64 noundef %205) #9
  %207 = load i32, ptr %13, align 4, !tbaa !3
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds nuw [51 x i8], ptr %15, i64 0, i64 %208
  store i8 0, ptr %209, align 1, !tbaa !35
  %210 = getelementptr inbounds [51 x i8], ptr %15, i64 0, i64 0
  %211 = call ptr @strstr(ptr noundef %210, ptr noundef @.str.25) #10
  store ptr %211, ptr %14, align 8, !tbaa !11
  %212 = load ptr, ptr %14, align 8, !tbaa !11
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %190
  %215 = getelementptr inbounds [51 x i8], ptr %15, i64 0, i64 0
  %216 = call ptr @strstr(ptr noundef %215, ptr noundef @.str.26) #10
  store ptr %216, ptr %14, align 8, !tbaa !11
  br label %217

217:                                              ; preds = %214, %190
  %218 = load ptr, ptr %14, align 8, !tbaa !11
  %219 = icmp ne ptr %218, null
  br i1 %219, label %220, label %240

220:                                              ; preds = %217
  %221 = load ptr, ptr %14, align 8, !tbaa !11
  %222 = getelementptr inbounds [51 x i8], ptr %15, i64 0, i64 0
  %223 = ptrtoint ptr %221 to i64
  %224 = ptrtoint ptr %222 to i64
  %225 = sub i64 %223, %224
  %226 = load ptr, ptr %16, align 8, !tbaa !103
  %227 = getelementptr inbounds nuw %struct._exon_t, ptr %226, i32 0, i32 2
  %228 = load i32, ptr %227, align 4, !tbaa !109
  %229 = zext i32 %228 to i64
  %230 = add nsw i64 %225, %229
  %231 = load i32, ptr %13, align 4, !tbaa !3
  %232 = zext i32 %231 to i64
  %233 = sub nsw i64 %230, %232
  %234 = add nsw i64 %233, 1
  %235 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %236 = zext i32 %235 to i64
  %237 = add nsw i64 %234, %236
  %238 = trunc i64 %237 to i32
  %239 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.27, i32 noundef signext %238)
  br label %240

240:                                              ; preds = %220, %217
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #9
  call void @llvm.lifetime.end.p0(i64 51, ptr %15) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #9
  br label %241

241:                                              ; preds = %240, %4
  %242 = load ptr, ptr %8, align 8, !tbaa !100
  %243 = getelementptr inbounds nuw %struct._sim4_stats, ptr %242, i32 0, i32 2
  %244 = load i32, ptr %243, align 4, !tbaa !111
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %438

246:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #9
  store i32 0, ptr %17, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #9
  store i32 0, ptr %18, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %21) #9
  call void @llvm.lifetime.start.p0(i64 51, ptr %22) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #9
  %247 = load ptr, ptr %7, align 8, !tbaa !98
  %248 = getelementptr inbounds nuw %struct._collec_t, ptr %247, i32 0, i32 0
  %249 = load ptr, ptr %248, align 8, !tbaa !35
  %250 = getelementptr inbounds ptr, ptr %249, i64 0
  %251 = load ptr, ptr %250, align 8, !tbaa !103
  store ptr %251, ptr %23, align 8, !tbaa !103
  store i32 0, ptr %19, align 4, !tbaa !3
  br label %252

252:                                              ; preds = %283, %246
  %253 = load i32, ptr %19, align 4, !tbaa !3
  %254 = icmp ult i32 %253, 10
  br i1 %254, label %255, label %262

255:                                              ; preds = %252
  %256 = load i32, ptr %19, align 4, !tbaa !3
  %257 = load ptr, ptr %23, align 8, !tbaa !103
  %258 = getelementptr inbounds nuw %struct._exon_t, ptr %257, i32 0, i32 1
  %259 = load i32, ptr %258, align 4, !tbaa !112
  %260 = sub i32 %259, 1
  %261 = icmp ult i32 %256, %260
  br label %262

262:                                              ; preds = %255, %252
  %263 = phi i1 [ false, %252 ], [ %261, %255 ]
  br i1 %263, label %264, label %286

264:                                              ; preds = %262
  %265 = load ptr, ptr %6, align 8, !tbaa !59
  %266 = getelementptr inbounds nuw %struct._seq_t, ptr %265, i32 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !42
  %268 = load ptr, ptr %23, align 8, !tbaa !103
  %269 = getelementptr inbounds nuw %struct._exon_t, ptr %268, i32 0, i32 1
  %270 = load i32, ptr %269, align 4, !tbaa !112
  %271 = sub i32 %270, 2
  %272 = load i32, ptr %19, align 4, !tbaa !3
  %273 = sub i32 %271, %272
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds nuw i8, ptr %267, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !35
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %277, 84
  br i1 %278, label %279, label %282

279:                                              ; preds = %264
  %280 = load i32, ptr %17, align 4, !tbaa !3
  %281 = add i32 %280, 1
  store i32 %281, ptr %17, align 4, !tbaa !3
  br label %282

282:                                              ; preds = %279, %264
  br label %283

283:                                              ; preds = %282
  %284 = load i32, ptr %19, align 4, !tbaa !3
  %285 = add i32 %284, 1
  store i32 %285, ptr %19, align 4, !tbaa !3
  br label %252, !llvm.loop !113

286:                                              ; preds = %262
  br label %287

287:                                              ; preds = %311, %286
  %288 = load i32, ptr %19, align 4, !tbaa !3
  %289 = load ptr, ptr %23, align 8, !tbaa !103
  %290 = getelementptr inbounds nuw %struct._exon_t, ptr %289, i32 0, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !112
  %292 = sub i32 %291, 1
  %293 = icmp ult i32 %288, %292
  br i1 %293, label %294, label %309

294:                                              ; preds = %287
  %295 = load ptr, ptr %6, align 8, !tbaa !59
  %296 = getelementptr inbounds nuw %struct._seq_t, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !42
  %298 = load ptr, ptr %23, align 8, !tbaa !103
  %299 = getelementptr inbounds nuw %struct._exon_t, ptr %298, i32 0, i32 1
  %300 = load i32, ptr %299, align 4, !tbaa !112
  %301 = sub i32 %300, 2
  %302 = load i32, ptr %19, align 4, !tbaa !3
  %303 = sub i32 %301, %302
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds nuw i8, ptr %297, i64 %304
  %306 = load i8, ptr %305, align 1, !tbaa !35
  %307 = zext i8 %306 to i32
  %308 = icmp eq i32 %307, 84
  br label %309

309:                                              ; preds = %294, %287
  %310 = phi i1 [ false, %287 ], [ %308, %294 ]
  br i1 %310, label %311, label %316

311:                                              ; preds = %309
  %312 = load i32, ptr %19, align 4, !tbaa !3
  %313 = add i32 %312, 1
  store i32 %313, ptr %19, align 4, !tbaa !3
  %314 = load i32, ptr %17, align 4, !tbaa !3
  %315 = add i32 %314, 1
  store i32 %315, ptr %17, align 4, !tbaa !3
  br label %287, !llvm.loop !114

316:                                              ; preds = %309
  store i32 0, ptr %20, align 4, !tbaa !3
  br label %317

317:                                              ; preds = %349, %316
  %318 = load i32, ptr %20, align 4, !tbaa !3
  %319 = load ptr, ptr %23, align 8, !tbaa !103
  %320 = getelementptr inbounds nuw %struct._exon_t, ptr %319, i32 0, i32 0
  %321 = load i32, ptr %320, align 4, !tbaa !115
  %322 = sub i32 %321, 1
  %323 = icmp ult i32 %318, %322
  br i1 %323, label %324, label %328

324:                                              ; preds = %317
  %325 = load i32, ptr %20, align 4, !tbaa !3
  %326 = load i32, ptr %19, align 4, !tbaa !3
  %327 = icmp ult i32 %325, %326
  br label %328

328:                                              ; preds = %324, %317
  %329 = phi i1 [ false, %317 ], [ %327, %324 ]
  br i1 %329, label %330, label %352

330:                                              ; preds = %328
  %331 = load ptr, ptr %5, align 8, !tbaa !59
  %332 = getelementptr inbounds nuw %struct._seq_t, ptr %331, i32 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !42
  %334 = load ptr, ptr %23, align 8, !tbaa !103
  %335 = getelementptr inbounds nuw %struct._exon_t, ptr %334, i32 0, i32 0
  %336 = load i32, ptr %335, align 4, !tbaa !115
  %337 = sub i32 %336, 2
  %338 = load i32, ptr %20, align 4, !tbaa !3
  %339 = sub i32 %337, %338
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds nuw i8, ptr %333, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !35
  %343 = zext i8 %342 to i32
  %344 = icmp eq i32 %343, 84
  br i1 %344, label %345, label %348

345:                                              ; preds = %330
  %346 = load i32, ptr %18, align 4, !tbaa !3
  %347 = add i32 %346, 1
  store i32 %347, ptr %18, align 4, !tbaa !3
  br label %348

348:                                              ; preds = %345, %330
  br label %349

349:                                              ; preds = %348
  %350 = load i32, ptr %20, align 4, !tbaa !3
  %351 = add i32 %350, 1
  store i32 %351, ptr %20, align 4, !tbaa !3
  br label %317, !llvm.loop !116

352:                                              ; preds = %328
  %353 = load i32, ptr %19, align 4, !tbaa !3
  %354 = load i32, ptr %17, align 4, !tbaa !3
  %355 = load i32, ptr %18, align 4, !tbaa !3
  %356 = load ptr, ptr %23, align 8, !tbaa !103
  %357 = getelementptr inbounds nuw %struct._exon_t, ptr %356, i32 0, i32 0
  %358 = load i32, ptr %357, align 4, !tbaa !115
  %359 = sub i32 %358, 1
  %360 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %361 = add i32 %359, %360
  %362 = load i32, ptr %19, align 4, !tbaa !3
  %363 = load ptr, ptr %6, align 8, !tbaa !59
  %364 = getelementptr inbounds nuw %struct._seq_t, ptr %363, i32 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !42
  %366 = load ptr, ptr %23, align 8, !tbaa !103
  %367 = getelementptr inbounds nuw %struct._exon_t, ptr %366, i32 0, i32 1
  %368 = load i32, ptr %367, align 4, !tbaa !112
  %369 = sub i32 %368, 1
  %370 = load i32, ptr %19, align 4, !tbaa !3
  %371 = sub i32 %369, %370
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds nuw i8, ptr %365, i64 %372
  %374 = load ptr, ptr %23, align 8, !tbaa !103
  %375 = getelementptr inbounds nuw %struct._exon_t, ptr %374, i32 0, i32 1
  %376 = load i32, ptr %375, align 4, !tbaa !112
  %377 = sub i32 %376, 1
  %378 = load i32, ptr %19, align 4, !tbaa !3
  %379 = load i32, ptr %20, align 4, !tbaa !3
  %380 = load ptr, ptr %5, align 8, !tbaa !59
  %381 = getelementptr inbounds nuw %struct._seq_t, ptr %380, i32 0, i32 2
  %382 = load ptr, ptr %381, align 8, !tbaa !42
  %383 = load ptr, ptr %23, align 8, !tbaa !103
  %384 = getelementptr inbounds nuw %struct._exon_t, ptr %383, i32 0, i32 0
  %385 = load i32, ptr %384, align 4, !tbaa !115
  %386 = sub i32 %385, 1
  %387 = load i32, ptr %20, align 4, !tbaa !3
  %388 = sub i32 %386, %387
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds nuw i8, ptr %382, i64 %389
  %391 = load ptr, ptr %23, align 8, !tbaa !103
  %392 = getelementptr inbounds nuw %struct._exon_t, ptr %391, i32 0, i32 0
  %393 = load i32, ptr %392, align 4, !tbaa !115
  %394 = sub i32 %393, 1
  %395 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %396 = add i32 %394, %395
  %397 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.28, i32 noundef signext %353, i32 noundef signext %354, i32 noundef signext %355, i32 noundef signext %361, i32 noundef signext %362, ptr noundef %373, i32 noundef signext %377, i32 noundef signext %378, i32 noundef signext %379, ptr noundef %390, i32 noundef signext %396)
  %398 = getelementptr inbounds [51 x i8], ptr %22, i64 0, i64 0
  %399 = load ptr, ptr %5, align 8, !tbaa !59
  %400 = getelementptr inbounds nuw %struct._seq_t, ptr %399, i32 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !42
  %402 = load ptr, ptr %23, align 8, !tbaa !103
  %403 = getelementptr inbounds nuw %struct._exon_t, ptr %402, i32 0, i32 0
  %404 = load i32, ptr %403, align 4, !tbaa !115
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds nuw i8, ptr %401, i64 %405
  %407 = getelementptr inbounds i8, ptr %406, i64 -1
  %408 = call ptr @strncpy(ptr noundef %398, ptr noundef %407, i64 noundef 50) #9
  %409 = getelementptr inbounds [51 x i8], ptr %22, i64 0, i64 50
  store i8 0, ptr %409, align 1, !tbaa !35
  %410 = getelementptr inbounds [51 x i8], ptr %22, i64 0, i64 0
  %411 = call ptr @strstr(ptr noundef %410, ptr noundef @.str.29) #10
  store ptr %411, ptr %21, align 8, !tbaa !11
  %412 = load ptr, ptr %21, align 8, !tbaa !11
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %417

414:                                              ; preds = %352
  %415 = getelementptr inbounds [51 x i8], ptr %22, i64 0, i64 0
  %416 = call ptr @strstr(ptr noundef %415, ptr noundef @.str.30) #10
  store ptr %416, ptr %21, align 8, !tbaa !11
  br label %417

417:                                              ; preds = %414, %352
  %418 = load ptr, ptr %21, align 8, !tbaa !11
  %419 = icmp ne ptr %418, null
  br i1 %419, label %420, label %437

420:                                              ; preds = %417
  %421 = load ptr, ptr %21, align 8, !tbaa !11
  %422 = getelementptr inbounds [51 x i8], ptr %22, i64 0, i64 0
  %423 = ptrtoint ptr %421 to i64
  %424 = ptrtoint ptr %422 to i64
  %425 = sub i64 %423, %424
  %426 = load ptr, ptr %23, align 8, !tbaa !103
  %427 = getelementptr inbounds nuw %struct._exon_t, ptr %426, i32 0, i32 0
  %428 = load i32, ptr %427, align 4, !tbaa !115
  %429 = zext i32 %428 to i64
  %430 = add nsw i64 %425, %429
  %431 = add nsw i64 %430, 5
  %432 = load i32, ptr getelementptr inbounds nuw (%struct._options_t, ptr @options, i32 0, i32 15), align 4, !tbaa !38
  %433 = zext i32 %432 to i64
  %434 = add nsw i64 %431, %433
  %435 = trunc i64 %434 to i32
  %436 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.31, i32 noundef signext %435)
  br label %437

437:                                              ; preds = %420, %417
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #9
  call void @llvm.lifetime.end.p0(i64 51, ptr %22) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %21) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #9
  br label %438

438:                                              ; preds = %437, %241
  ret void
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

declare void @free_align(ptr noundef) #5

declare void @S2A(ptr noundef, ptr noundef, i32 noundef signext) #5

declare void @Free_script(ptr noundef) #5

declare void @IDISPLAY(ptr noundef, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext, i32 noundef signext, ptr noundef, i32 noundef signext) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
define internal void @init_buf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !117
  %3 = call ptr @xmalloc(i64 noundef 4096)
  %4 = load ptr, ptr %2, align 8, !tbaa !117
  %5 = getelementptr inbounds nuw %struct._read_buf_t, ptr %4, i32 0, i32 0
  store ptr %3, ptr %5, align 8, !tbaa !119
  %6 = load ptr, ptr %2, align 8, !tbaa !117
  %7 = getelementptr inbounds nuw %struct._read_buf_t, ptr %6, i32 0, i32 1
  store i32 4096, ptr %7, align 8, !tbaa !120
  %8 = load ptr, ptr %2, align 8, !tbaa !117
  %9 = getelementptr inbounds nuw %struct._read_buf_t, ptr %8, i32 0, i32 2
  store i32 0, ptr %9, align 4, !tbaa !121
  %10 = load ptr, ptr %2, align 8, !tbaa !117
  %11 = getelementptr inbounds nuw %struct._read_buf_t, ptr %10, i32 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !122
  ret void
}

declare signext i32 @open(ptr noundef, i32 noundef signext, ...) #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef signext) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: nounwind
define internal ptr @read_line_buf(ptr noundef %0, i32 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !117
  store i32 %1, ptr %5, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(i64 8, ptr %6) #9
  store ptr null, ptr %6, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #9
  store i64 0, ptr %8, align 8, !tbaa !33
  %10 = load ptr, ptr %4, align 8, !tbaa !117
  %11 = getelementptr inbounds nuw %struct._read_buf_t, ptr %10, i32 0, i32 2
  store i32 0, ptr %11, align 4, !tbaa !121
  %12 = load ptr, ptr %4, align 8, !tbaa !117
  %13 = call ptr @shuffle_line(ptr noundef %12, ptr noundef %8)
  store ptr %13, ptr %6, align 8, !tbaa !11
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !tbaa !11
  store ptr %16, ptr %3, align 8
  store i32 1, ptr %9, align 4
  br label %82

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %77, %17
  %19 = load i32, ptr %5, align 4, !tbaa !3
  %20 = load ptr, ptr %4, align 8, !tbaa !117
  %21 = getelementptr inbounds nuw %struct._read_buf_t, ptr %20, i32 0, i32 4
  %22 = getelementptr inbounds [4096 x i8], ptr %21, i64 0, i64 0
  %23 = load ptr, ptr %4, align 8, !tbaa !117
  %24 = getelementptr inbounds nuw %struct._read_buf_t, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !122
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds nuw i8, ptr %22, i64 %26
  %28 = load ptr, ptr %4, align 8, !tbaa !117
  %29 = getelementptr inbounds nuw %struct._read_buf_t, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !122
  %31 = sub i32 4096, %30
  %32 = sub i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = call i64 @read(i32 noundef signext %19, ptr noundef %27, i64 noundef %33)
  store i64 %34, ptr %7, align 8, !tbaa !33
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %48

36:                                               ; preds = %18
  %37 = call ptr @__errno_location() #13
  %38 = load i32, ptr %37, align 4, !tbaa !3
  %39 = icmp ne i32 %38, 4
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, ptr %5, align 4, !tbaa !3
  %42 = call ptr @__errno_location() #13
  %43 = load i32, ptr %42, align 4, !tbaa !3
  %44 = call ptr @strerror(i32 noundef signext %43) #9
  %45 = call ptr @__errno_location() #13
  %46 = load i32, ptr %45, align 4, !tbaa !3
  call void (ptr, ...) @fatal(ptr noundef @.str.33, i32 noundef signext %41, ptr noundef %44, i32 noundef signext %46) #11
  unreachable

47:                                               ; preds = %36
  br label %56

48:                                               ; preds = %18
  %49 = load i64, ptr %7, align 8, !tbaa !33
  %50 = load ptr, ptr %4, align 8, !tbaa !117
  %51 = getelementptr inbounds nuw %struct._read_buf_t, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !122
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr %51, align 8, !tbaa !122
  br label %56

56:                                               ; preds = %48, %47
  %57 = load ptr, ptr %4, align 8, !tbaa !117
  %58 = call ptr @shuffle_line(ptr noundef %57, ptr noundef %8)
  store ptr %58, ptr %6, align 8, !tbaa !11
  %59 = load ptr, ptr %6, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %56
  %62 = load i64, ptr %7, align 8, !tbaa !33
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load ptr, ptr %4, align 8, !tbaa !117
  %66 = getelementptr inbounds nuw %struct._read_buf_t, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8, !tbaa !119
  %68 = load ptr, ptr %4, align 8, !tbaa !117
  %69 = getelementptr inbounds nuw %struct._read_buf_t, ptr %68, i32 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !121
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds nuw i8, ptr %67, i64 %71
  store i8 0, ptr %72, align 1, !tbaa !35
  %73 = load ptr, ptr %4, align 8, !tbaa !117
  %74 = getelementptr inbounds nuw %struct._read_buf_t, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8, !tbaa !119
  store ptr %75, ptr %6, align 8, !tbaa !11
  br label %76

76:                                               ; preds = %64, %61, %56
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %6, align 8, !tbaa !11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %18, label %80, !llvm.loop !123

80:                                               ; preds = %77
  %81 = load ptr, ptr %6, align 8, !tbaa !11
  store ptr %81, ptr %3, align 8
  store i32 1, ptr %9, align 4
  br label %82

82:                                               ; preds = %80, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr %6) #9
  %83 = load ptr, ptr %3, align 8
  ret ptr %83
}

; Function Attrs: nounwind
define internal ptr @shuffle_line(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !117
  store ptr %1, ptr %5, align 8, !tbaa !124
  %6 = load ptr, ptr %4, align 8, !tbaa !117
  %7 = getelementptr inbounds nuw %struct._read_buf_t, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !tbaa !124
  %12 = load i64, ptr %11, align 8, !tbaa !33
  %13 = load ptr, ptr %4, align 8, !tbaa !117
  %14 = getelementptr inbounds nuw %struct._read_buf_t, ptr %13, i32 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !122
  %16 = zext i32 %15 to i64
  %17 = icmp uge i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %2
  store ptr null, ptr %3, align 8
  br label %154

19:                                               ; preds = %10
  %20 = load ptr, ptr %4, align 8, !tbaa !117
  %21 = getelementptr inbounds nuw %struct._read_buf_t, ptr %20, i32 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !120
  %23 = zext i32 %22 to i64
  %24 = load ptr, ptr %4, align 8, !tbaa !117
  %25 = getelementptr inbounds nuw %struct._read_buf_t, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !121
  %27 = zext i32 %26 to i64
  %28 = load ptr, ptr %4, align 8, !tbaa !117
  %29 = getelementptr inbounds nuw %struct._read_buf_t, ptr %28, i32 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !122
  %31 = zext i32 %30 to i64
  %32 = load ptr, ptr %5, align 8, !tbaa !124
  %33 = load i64, ptr %32, align 8, !tbaa !33
  %34 = sub i64 %31, %33
  %35 = add i64 %27, %34
  %36 = icmp ule i64 %23, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load ptr, ptr %4, align 8, !tbaa !117
  call void @grow_read_buf(ptr noundef %38)
  br label %39

39:                                               ; preds = %37, %19
  br label %40

40:                                               ; preds = %59, %39
  %41 = load ptr, ptr %5, align 8, !tbaa !124
  %42 = load i64, ptr %41, align 8, !tbaa !33
  %43 = load ptr, ptr %4, align 8, !tbaa !117
  %44 = getelementptr inbounds nuw %struct._read_buf_t, ptr %43, i32 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !122
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load ptr, ptr %4, align 8, !tbaa !117
  %50 = getelementptr inbounds nuw %struct._read_buf_t, ptr %49, i32 0, i32 4
  %51 = load ptr, ptr %5, align 8, !tbaa !124
  %52 = load i64, ptr %51, align 8, !tbaa !33
  %53 = getelementptr inbounds nuw [4096 x i8], ptr %50, i64 0, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !35
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 10
  br label %57

57:                                               ; preds = %48, %40
  %58 = phi i1 [ false, %40 ], [ %56, %48 ]
  br i1 %58, label %59, label %76

59:                                               ; preds = %57
  %60 = load ptr, ptr %4, align 8, !tbaa !117
  %61 = getelementptr inbounds nuw %struct._read_buf_t, ptr %60, i32 0, i32 4
  %62 = load ptr, ptr %5, align 8, !tbaa !124
  %63 = load i64, ptr %62, align 8, !tbaa !33
  %64 = add i64 %63, 1
  store i64 %64, ptr %62, align 8, !tbaa !33
  %65 = getelementptr inbounds nuw [4096 x i8], ptr %61, i64 0, i64 %63
  %66 = load i8, ptr %65, align 1, !tbaa !35
  %67 = load ptr, ptr %4, align 8, !tbaa !117
  %68 = getelementptr inbounds nuw %struct._read_buf_t, ptr %67, i32 0, i32 0
  %69 = load ptr, ptr %68, align 8, !tbaa !119
  %70 = load ptr, ptr %4, align 8, !tbaa !117
  %71 = getelementptr inbounds nuw %struct._read_buf_t, ptr %70, i32 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !121
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 4, !tbaa !121
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds nuw i8, ptr %69, i64 %74
  store i8 %66, ptr %75, align 1, !tbaa !35
  br label %40, !llvm.loop !126

76:                                               ; preds = %57
  %77 = load ptr, ptr %5, align 8, !tbaa !124
  %78 = load i64, ptr %77, align 8, !tbaa !33
  %79 = load ptr, ptr %4, align 8, !tbaa !117
  %80 = getelementptr inbounds nuw %struct._read_buf_t, ptr %79, i32 0, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !122
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %84, label %150

84:                                               ; preds = %76
  %85 = load ptr, ptr %4, align 8, !tbaa !117
  %86 = getelementptr inbounds nuw %struct._read_buf_t, ptr %85, i32 0, i32 4
  %87 = load ptr, ptr %5, align 8, !tbaa !124
  %88 = load i64, ptr %87, align 8, !tbaa !33
  %89 = add i64 %88, 1
  store i64 %89, ptr %87, align 8, !tbaa !33
  %90 = getelementptr inbounds nuw [4096 x i8], ptr %86, i64 0, i64 %88
  %91 = load i8, ptr %90, align 1, !tbaa !35
  %92 = load ptr, ptr %4, align 8, !tbaa !117
  %93 = getelementptr inbounds nuw %struct._read_buf_t, ptr %92, i32 0, i32 0
  %94 = load ptr, ptr %93, align 8, !tbaa !119
  %95 = load ptr, ptr %4, align 8, !tbaa !117
  %96 = getelementptr inbounds nuw %struct._read_buf_t, ptr %95, i32 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !121
  %98 = add i32 %97, 1
  store i32 %98, ptr %96, align 4, !tbaa !121
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds nuw i8, ptr %94, i64 %99
  store i8 %91, ptr %100, align 1, !tbaa !35
  %101 = load ptr, ptr %4, align 8, !tbaa !117
  %102 = getelementptr inbounds nuw %struct._read_buf_t, ptr %101, i32 0, i32 0
  %103 = load ptr, ptr %102, align 8, !tbaa !119
  %104 = load ptr, ptr %4, align 8, !tbaa !117
  %105 = getelementptr inbounds nuw %struct._read_buf_t, ptr %104, i32 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !121
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds nuw i8, ptr %103, i64 %107
  store i8 0, ptr %108, align 1, !tbaa !35
  %109 = load ptr, ptr %5, align 8, !tbaa !124
  %110 = load i64, ptr %109, align 8, !tbaa !33
  %111 = load ptr, ptr %4, align 8, !tbaa !117
  %112 = getelementptr inbounds nuw %struct._read_buf_t, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 8, !tbaa !122
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %84
  %117 = load ptr, ptr %4, align 8, !tbaa !117
  %118 = getelementptr inbounds nuw %struct._read_buf_t, ptr %117, i32 0, i32 4
  %119 = getelementptr inbounds [4096 x i8], ptr %118, i64 0, i64 0
  %120 = load ptr, ptr %4, align 8, !tbaa !117
  %121 = getelementptr inbounds nuw %struct._read_buf_t, ptr %120, i32 0, i32 4
  %122 = getelementptr inbounds [4096 x i8], ptr %121, i64 0, i64 0
  %123 = load ptr, ptr %5, align 8, !tbaa !124
  %124 = load i64, ptr %123, align 8, !tbaa !33
  %125 = getelementptr inbounds nuw i8, ptr %122, i64 %124
  %126 = load ptr, ptr %4, align 8, !tbaa !117
  %127 = getelementptr inbounds nuw %struct._read_buf_t, ptr %126, i32 0, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !122
  %129 = zext i32 %128 to i64
  %130 = load ptr, ptr %5, align 8, !tbaa !124
  %131 = load i64, ptr %130, align 8, !tbaa !33
  %132 = sub i64 %129, %131
  %133 = mul i64 %132, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %119, ptr align 1 %125, i64 %133, i1 false)
  %134 = load ptr, ptr %5, align 8, !tbaa !124
  %135 = load i64, ptr %134, align 8, !tbaa !33
  %136 = load ptr, ptr %4, align 8, !tbaa !117
  %137 = getelementptr inbounds nuw %struct._read_buf_t, ptr %136, i32 0, i32 3
  %138 = load i32, ptr %137, align 8, !tbaa !122
  %139 = zext i32 %138 to i64
  %140 = sub i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, ptr %137, align 8, !tbaa !122
  br label %145

142:                                              ; preds = %84
  %143 = load ptr, ptr %4, align 8, !tbaa !117
  %144 = getelementptr inbounds nuw %struct._read_buf_t, ptr %143, i32 0, i32 3
  store i32 0, ptr %144, align 8, !tbaa !122
  br label %145

145:                                              ; preds = %142, %116
  %146 = load ptr, ptr %5, align 8, !tbaa !124
  store i64 0, ptr %146, align 8, !tbaa !33
  %147 = load ptr, ptr %4, align 8, !tbaa !117
  %148 = getelementptr inbounds nuw %struct._read_buf_t, ptr %147, i32 0, i32 0
  %149 = load ptr, ptr %148, align 8, !tbaa !119
  store ptr %149, ptr %3, align 8
  br label %154

150:                                              ; preds = %76
  %151 = load ptr, ptr %4, align 8, !tbaa !117
  %152 = getelementptr inbounds nuw %struct._read_buf_t, ptr %151, i32 0, i32 3
  store i32 0, ptr %152, align 8, !tbaa !122
  %153 = load ptr, ptr %5, align 8, !tbaa !124
  store i64 0, ptr %153, align 8, !tbaa !33
  store ptr null, ptr %3, align 8
  br label %154

154:                                              ; preds = %150, %145, %18
  %155 = load ptr, ptr %3, align 8
  ret ptr %155
}

declare i64 @read(i32 noundef signext, ptr noundef, i64 noundef) #5

; Function Attrs: nounwind
define internal void @grow_read_buf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !117
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds nuw %struct._read_buf_t, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !120
  %6 = add i32 %5, 4096
  store i32 %6, ptr %4, align 8, !tbaa !120
  %7 = load ptr, ptr %2, align 8, !tbaa !117
  %8 = getelementptr inbounds nuw %struct._read_buf_t, ptr %7, i32 0, i32 0
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = load ptr, ptr %2, align 8, !tbaa !117
  %11 = getelementptr inbounds nuw %struct._read_buf_t, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !120
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = call ptr @xrealloc(ptr noundef %9, i64 noundef %14)
  %16 = load ptr, ptr %2, align 8, !tbaa !117
  %17 = getelementptr inbounds nuw %struct._read_buf_t, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8, !tbaa !119
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

declare ptr @xrealloc(ptr noundef, i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #6

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() #6

; Function Attrs: nounwind
declare signext i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #0

declare signext i32 @fflush(ptr noundef) #5

; Function Attrs: noreturn nounwind
declare void @abort() #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(none) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!15 = !{!16, !4, i64 24}
!16 = !{!"_options_t", !12, i64 0, !17, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76}
!17 = !{!"p1 _ZTS11_junction_t", !10, i64 0}
!18 = !{!16, !4, i64 28}
!19 = !{!16, !4, i64 32}
!20 = !{!16, !4, i64 36}
!21 = !{!16, !4, i64 40}
!22 = !{!16, !12, i64 0}
!23 = !{!16, !4, i64 16}
!24 = !{!16, !4, i64 44}
!25 = !{!16, !4, i64 48}
!26 = !{!16, !4, i64 52}
!27 = !{!16, !4, i64 56}
!28 = !{!16, !4, i64 60}
!29 = !{!16, !4, i64 64}
!30 = !{!16, !4, i64 72}
!31 = !{!16, !4, i64 76}
!32 = !{!16, !4, i64 20}
!33 = !{!34, !34, i64 0}
!34 = !{!"long", !5, i64 0}
!35 = !{!5, !5, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!16, !4, i64 68}
!39 = !{!40, !12, i64 8}
!40 = !{!"_seq_t", !12, i64 0, !12, i64 8, !12, i64 16, !41, i64 24, !4, i64 4144, !4, i64 4148, !4, i64 4152, !4, i64 4156}
!41 = !{!"_read_buf_t", !12, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20}
!42 = !{!40, !12, i64 16}
!43 = !{!40, !4, i64 4148}
!44 = !{!45, !4, i64 8}
!45 = !{!"_collec_t", !5, i64 0, !4, i64 8, !4, i64 12}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTS9_result_t", !10, i64 0}
!48 = !{!49, !4, i64 36}
!49 = !{!"_result_t", !50, i64 0, !45, i64 8, !4, i64 24, !4, i64 28, !4, i64 32, !51, i64 36}
!50 = !{!"p1 _ZTS17_edit_script_list", !10, i64 0}
!51 = !{!"_sim4_stats", !4, i64 0, !4, i64 4, !4, i64 8}
!52 = distinct !{!52, !37}
!53 = distinct !{!53, !37}
!54 = distinct !{!54, !37}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !37}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTS6_seq_t", !10, i64 0}
!61 = !{!40, !12, i64 0}
!62 = !{!40, !4, i64 4144}
!63 = !{!40, !4, i64 4152}
!64 = !{!40, !4, i64 4156}
!65 = !{!40, !12, i64 24}
!66 = !{!40, !4, i64 36}
!67 = distinct !{!67, !37}
!68 = !{!69, !69, i64 0}
!69 = !{!"p1 short", !10, i64 0}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !5, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"p1 int", !10, i64 0}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !37}
!76 = distinct !{!76, !37}
!77 = distinct !{!77, !37}
!78 = distinct !{!78, !37}
!79 = !{!16, !17, i64 8}
!80 = distinct !{!80, !37}
!81 = distinct !{!81, !37}
!82 = distinct !{!82, !37}
!83 = !{!49, !4, i64 32}
!84 = !{!49, !4, i64 16}
!85 = !{!10, !10, i64 0}
!86 = distinct !{!86, !37}
!87 = !{!49, !50, i64 0}
!88 = !{!50, !50, i64 0}
!89 = !{!90, !50, i64 0}
!90 = !{!"_edit_script_list", !50, i64 0, !91, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32}
!91 = !{!"p1 _ZTS12_edit_script", !10, i64 0}
!92 = !{!90, !4, i64 28}
!93 = !{!90, !91, i64 8}
!94 = !{!90, !4, i64 16}
!95 = !{!90, !4, i64 20}
!96 = !{!90, !4, i64 24}
!97 = distinct !{!97, !37}
!98 = !{!99, !99, i64 0}
!99 = !{!"p1 _ZTS9_collec_t", !10, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"p1 _ZTS11_sim4_stats", !10, i64 0}
!102 = !{!51, !4, i64 4}
!103 = !{!104, !104, i64 0}
!104 = !{!"p1 _ZTS7_exon_t", !10, i64 0}
!105 = !{!106, !4, i64 12}
!106 = !{!"_exon_t", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 24, !4, i64 24, !4, i64 28, !4, i64 28, !4, i64 31}
!107 = distinct !{!107, !37}
!108 = distinct !{!108, !37}
!109 = !{!106, !4, i64 8}
!110 = distinct !{!110, !37}
!111 = !{!51, !4, i64 8}
!112 = !{!106, !4, i64 4}
!113 = distinct !{!113, !37}
!114 = distinct !{!114, !37}
!115 = !{!106, !4, i64 0}
!116 = distinct !{!116, !37}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTS11_read_buf_t", !10, i64 0}
!119 = !{!41, !12, i64 0}
!120 = !{!41, !4, i64 8}
!121 = !{!41, !4, i64 12}
!122 = !{!41, !4, i64 16}
!123 = distinct !{!123, !37}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 long", !10, i64 0}
!126 = distinct !{!126, !37}
