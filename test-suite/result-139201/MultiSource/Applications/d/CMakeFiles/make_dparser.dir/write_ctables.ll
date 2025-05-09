; ModuleID = './MultiSource/Applications/d/CMakeFiles/make_dparser.dir/write_ctables.bc'
source_filename = "/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MultiSource/Applications/d/write_ctables.c"
target datalayout = "e-m:e-p:64:64-i64:64-i128:128-n32:64-S128"
target triple = "loongarch64-unknown-linux-gnu"

%struct.hash_fns_t = type { ptr, ptr, [2 x ptr] }
%struct.ScannerBlock = type { i32, i32, i32, ptr, ptr }
%struct.ScanState = type { i32, [256 x ptr], %struct.VecAction, %struct.VecAction, [256 x ptr] }
%struct.VecAction = type { i32, i32, ptr, [3 x ptr] }
%struct.ScanStateTransition = type { i32, %struct.VecAction, %struct.VecAction }
%struct.Action = type { i32, ptr, ptr, ptr, i32, ptr }
%struct.Term = type { i32, i32, i32, i32, i32, ptr, i32, i8, ptr }
%struct.State = type { i32, i64, %struct.anon.0, %struct.anon.1, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.0 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.1 = type { i32, i32, ptr, [3 x ptr] }
%struct.VecGoto = type { i32, i32, ptr, [3 x ptr] }
%struct.VecHint = type { i32, i32, ptr, [3 x ptr] }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, ptr, [3 x ptr] }
%struct.VecScanStateTransition = type { i32, i32, ptr, [3 x ptr] }
%struct.Hint = type { i32, ptr, ptr }
%struct.Rule = type { i32, ptr, i32, i32, i32, i32, %struct.anon.7, ptr, %struct.Code, %struct.Code, %struct.anon.8, i32, ptr }
%struct.anon.7 = type { i32, i32, ptr, [3 x ptr] }
%struct.Code = type { ptr, i32 }
%struct.anon.8 = type { i32, i32, ptr, [3 x ptr] }
%struct.Elem = type { i32, i32, ptr, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { ptr, i32 }
%struct.Production = type { ptr, i32, %struct.anon, i32, i8, ptr, [8 x ptr], [8 x ptr], ptr, ptr, ptr, ptr }
%struct.anon = type { i32, i32, ptr, [3 x ptr] }
%struct.VecState = type { i32, i32, ptr, [3 x ptr] }
%struct.Grammar = type { ptr, %struct.anon.2, %struct.anon.3, %struct.anon.4, %struct.Code, ptr, i32, %struct.anon.5, %struct.anon.6, ptr, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.anon.2 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.3 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.4 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.5 = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.6 = type { i32, i32, ptr, [3 x ptr] }
%struct.VecScannerBlock = type { i32, i32, ptr, [3 x ptr] }
%struct.anon.9 = type { i32, i32, ptr, [3 x i64] }
%struct.Goto = type { ptr, ptr }
%struct.D_Pass = type { ptr, i32, i32, i32 }

@scanner_block_fns = dso_local global %struct.hash_fns_t { ptr @scanner_block_hash_fn, ptr @scanner_block_cmp_fn, [2 x ptr] zeroinitializer }, align 8
@trans_scanner_block_fns = dso_local global %struct.hash_fns_t { ptr @trans_scanner_block_hash_fn, ptr @trans_scanner_block_cmp_fn, [2 x ptr] zeroinitializer }, align 8
@shift_fns = dso_local global %struct.hash_fns_t { ptr @shift_hash_fn, ptr @shift_cmp_fn, [2 x ptr] zeroinitializer }, align 8
@er_hint_hash_fns = dso_local global %struct.hash_fns_t { ptr @er_hint_hash_fn, ptr @er_hint_cmp_fn, [2 x ptr] zeroinitializer }, align 8
@.str = private unnamed_addr constant [12 x i8] c".d_parser.c\00", align 1
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to open `%s` for write\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#include \22dparse.h\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#include \22%s.d_parser.h\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"D_ParserTables parser_tables_%s = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"d_states_%s, \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"d_gotos_%s, \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"d_symbols_%s, \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"NULL, \00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"d_passes_%s, \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c".d_parser.h\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"#ifndef _%s_h\0A\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"#define _%s_h\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"#define %s \09%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"enum D_Tokens_%s {\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"%s = %d%s\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"#define D_START_STATE_%s \09%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"bad $ escape in code line %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [51 x i8] c"attempt to find symbol for non-unique string '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"int d_speculative_reduction_code_%d_%d_%s%s;\0A\00", align 1
@reduction_args = internal global ptr @.str.52, align 8
@.str.36 = private unnamed_addr constant [40 x i8] c"int d_final_reduction_code_%d_%d_%s%s;\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"extern D_ReductionCode d_pass_code_%d_%d_%s[];\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"int d_pass_code_%d_%d_%d_%s%s;\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"int d_speculative_reduction_code_%d_%d_%s%s \00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"int d_final_reduction_code_%d_%d_%s%s \00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"int d_pass_code_%d_%d_%d_%s%s \00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"d_speculative_reduction_code_%d_%d_%s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"d_final_reduction_code_%d_%d_%s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"d_pass_code_%d_%d_%s\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"D_ReductionCode %s[] = {\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"d_pass_code_%d_%d_%d_%s%s\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"NULL%s\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"D_Reduction d_reduction_%d_%s = \00", align 1
@.str.51 = private unnamed_addr constant [47 x i8] c"{%d, %d, %s, %s, %d, %d, %d, %d, %d, %d, %s};\0A\00", align 1
@.str.52 = private unnamed_addr constant [79 x i8] c"(void *_ps, void **_children, int _n_children, int _offset, D_Parser *_parser)\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"(_n_children)\00", align 1
@.str.55 = private unnamed_addr constant [30 x i8] c"(D_PN(_ps, _offset)->globals)\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"(*(D_PN(_children[%d], _offset)))\00", align 1
@.str.57 = private unnamed_addr constant [50 x i8] c"$nXXXX greater than number of children at line %d\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"(*(D_PN(_ps, _offset)))\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"(D_PN(_ps, _offset)->user)\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"(D_PN(_children[%d], _offset)->user)\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"reject\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" return -1 \00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"free_below\00", align 1
@.str.64 = private unnamed_addr constant [54 x i8] c" free_D_ParseTreeBelow(_parser, (D_PN(_ps, _offset)))\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"(D_PN(_ps, _offset)->scope)\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"_parser\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"unknown pass '%s' line %d\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"  return 0;\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [53 x i8] c"D_Shift d_shift_%d_%s = { %d, %d, %d, %d, %d, %s };\0A\00", align 1
@.str.74 = private unnamed_addr constant [31 x i8] c"D_Shift *d_shifts_%d_%s[] = {\0A\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c"&d_shift_%d_%s%s\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c", NULL\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"D_Shift *d_accepts_diff_%d_%d_%s[] = {\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"&d_shift_%d_%s,\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"0};\0A\00", align 1
@.str.80 = private unnamed_addr constant [38 x i8] c"D_Shift **d_accepts_diff_%d_%s[] = {\0A\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"d_accepts_diff_%d_%d_%s%s\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.83 = private unnamed_addr constant [50 x i8] c"%s d_scanner_%d_%d_%d_%s[SCANNER_BLOCK_SIZE] = {\0A\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"%s d_accepts_diff_%d_%d_%d_%s[SCANNER_BLOCK_SIZE] = {\0A\00", align 1
@.str.86 = private unnamed_addr constant [17 x i8] c"d_shift_%d_%d_%s\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"D_Shift *%s[] = { \00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c", NULL};\0A\0A\00", align 1
@.str.89 = private unnamed_addr constant [31 x i8] c"SB_%s d_scanner_%d_%s[%d] = {\0A\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"{ %s, {\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"{ d_shift_%d_%d_%s, {\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"{ NULL, {\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"d_scanner_%d_%d_%d_%s\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"}},\0A\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"}}\0A\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"SB_trans_%s d_transition_%d_%s[%d] = {\0A\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"{{ \00", align 1
@.str.99 = private unnamed_addr constant [27 x i8] c"d_accepts_diff_%d_%d_%d_%s\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"bad case\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"uint8\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"uint16\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"uint32\00", align 1
@.str.107 = private unnamed_addr constant [153 x i8] c"int d_scan_code_%d_%s(char **as, int *col, int *line,unsigned short *symbol, int *term_priority,unsigned char *op_assoc, int *op_priority) {\0A  int res;\0A\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"  if ((res = \00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.110 = private unnamed_addr constant [106 x i8] c"as, col, line, op_assoc, op_priority))) {\0A    *symbol = %d;\0A    *term_priority = %d;\0A    return res;\0A  }\0A\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"  return 0;\0A}\0A\0A\00", align 1
@.str.112 = private unnamed_addr constant [40 x i8] c"unsigned char d_goto_valid_%d_%s[] = {\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"0x%x%s\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"D_Reduction *d_reductions_%d_%s[] = {\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"&d_reduction_%d_%s%s\00", align 1
@.str.116 = private unnamed_addr constant [53 x i8] c"D_RightEpsilonHint d_right_epsilon_hints_%d_%s[] = {\00", align 1
@.str.117 = private unnamed_addr constant [32 x i8] c"{ %d, %d, &d_reduction_%d_%s}%s\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"unsigned short d_gotos_%s[%d] = {\0A\00", align 1
@.str.119 = private unnamed_addr constant [37 x i8] c"unsigned short d_gotos_%s[1] = {0};\0A\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"D_ErrorRecoveryHint d_error_recovery_hints_%d_%s[] = {%s\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"{ %d, %d, \22%s\22}%s\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"\0AD_State d_states_%s[] = \00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.124 = private unnamed_addr constant [21 x i8] c"d_goto_valid_%d_%s, \00", align 1
@.str.125 = private unnamed_addr constant [28 x i8] c"{ %d, d_reductions_%d_%s}, \00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"{ 0, NULL}, \00", align 1
@.str.127 = private unnamed_addr constant [37 x i8] c"{ %d, d_right_epsilon_hints_%d_%s}, \00", align 1
@.str.128 = private unnamed_addr constant [38 x i8] c"{ %d, d_error_recovery_hints_%d_%s}, \00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"d_shifts_%d_%s, \00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"D_SHIFTS_CODE, \00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"d_scan_code_%d_%s, \00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"(void*)d_scanner_%d_%s, \00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"sizeof(%s), \00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"1, \00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"0, \00", align 1
@scan_kind_strings = internal global [4 x ptr] [ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr null], align 8
@.str.136 = private unnamed_addr constant [28 x i8] c"(void*)d_transition_%d_%s, \00", align 1
@.str.137 = private unnamed_addr constant [23 x i8] c"d_accepts_diff_%d_%s, \00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"(D_Shift***)NULL, \00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"}%s\0A\00", align 1
@.str.141 = private unnamed_addr constant [29 x i8] c"{{0, {0, NULL}, 0, NULL}};\0A\0A\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"D_SCAN_ALL\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"D_SCAN_LONGEST\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"D_SCAN_MIXED\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"D_Symbol d_symbols_%s[] = {\0A\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"{%s, \22%s\22, %d},\0A\00", align 1
@d_internal = internal global [2 x ptr] [ptr @.str.147, ptr @.str.148], align 8
@d_symbol = internal global [4 x ptr] [ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], align 8
@.str.147 = private unnamed_addr constant [15 x i8] c"D_SYMBOL_NTERM\00", align 1
@.str.148 = private unnamed_addr constant [18 x i8] c"D_SYMBOL_INTERNAL\00", align 1
@.str.149 = private unnamed_addr constant [16 x i8] c"D_SYMBOL_STRING\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"D_SYMBOL_REGEX\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"D_SYMBOL_CODE\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"D_SYMBOL_TOKEN\00", align 1
@.str.153 = private unnamed_addr constant [26 x i8] c"D_Pass d_passes_%s[] = {\0A\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"{\22%s\22, %d, 0x%X, %d}%s\0A\00", align 1

; Function Attrs: nounwind
define internal signext i32 @scanner_block_hash_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  store i32 0, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 0
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = ptrtoint ptr %12 to i32
  store i32 %13, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  store ptr %16, ptr %8, align 8, !tbaa !18
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, ptr %6, align 4, !tbaa !10
  %19 = load i32, ptr %7, align 4, !tbaa !10
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4, !tbaa !10
  %23 = mul i32 %22, 17
  store i32 %23, ptr %5, align 4, !tbaa !10
  %24 = load ptr, ptr %8, align 8, !tbaa !18
  %25 = load i32, ptr %6, align 4, !tbaa !10
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load ptr, ptr %8, align 8, !tbaa !18
  %32 = load i32, ptr %6, align 4, !tbaa !10
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !19
  %36 = getelementptr inbounds nuw %struct.ScanState, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 8, !tbaa !21
  %38 = add i32 %37, 2
  br label %40

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %30
  %41 = phi i32 [ %38, %30 ], [ 1, %39 ]
  %42 = load i32, ptr %5, align 4, !tbaa !10
  %43 = add i32 %42, %41
  store i32 %43, ptr %5, align 4, !tbaa !10
  br label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %6, align 4, !tbaa !10
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4, !tbaa !10
  br label %17, !llvm.loop !25

47:                                               ; preds = %17
  %48 = load i32, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret i32 %48
}

; Function Attrs: nounwind
define internal signext i32 @scanner_block_cmp_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !3
  store ptr %2, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %13 = load ptr, ptr %7, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds [2 x ptr], ptr %14, i64 0, i64 0
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = ptrtoint ptr %16 to i32
  store i32 %17, ptr %9, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %18 = load ptr, ptr %5, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !13
  store ptr %20, ptr %10, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  %21 = load ptr, ptr %6, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  store ptr %23, ptr %11, align 8, !tbaa !18
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %74, %3
  %25 = load i32, ptr %8, align 4, !tbaa !10
  %26 = load i32, ptr %9, align 4, !tbaa !10
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8, !tbaa !18
  %30 = load i32, ptr %8, align 4, !tbaa !10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = load ptr, ptr %11, align 8, !tbaa !18
  %35 = load i32, ptr %8, align 4, !tbaa !10
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !19
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %74

41:                                               ; preds = %28
  %42 = load ptr, ptr %10, align 8, !tbaa !18
  %43 = load i32, ptr %8, align 4, !tbaa !10
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load ptr, ptr %11, align 8, !tbaa !18
  %50 = load i32, ptr %8, align 4, !tbaa !10
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !19
  %54 = icmp ne ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %41
  store i32 1, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %78

56:                                               ; preds = %48
  %57 = load ptr, ptr %10, align 8, !tbaa !18
  %58 = load i32, ptr %8, align 4, !tbaa !10
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !19
  %62 = getelementptr inbounds nuw %struct.ScanState, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !21
  %64 = load ptr, ptr %11, align 8, !tbaa !18
  %65 = load i32, ptr %8, align 4, !tbaa !10
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !19
  %69 = getelementptr inbounds nuw %struct.ScanState, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !21
  %71 = icmp ne i32 %63, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  store i32 1, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %78

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32, ptr %8, align 4, !tbaa !10
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %8, align 4, !tbaa !10
  br label %24, !llvm.loop !27

77:                                               ; preds = %24
  store i32 0, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %78

78:                                               ; preds = %77, %72, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  %79 = load i32, ptr %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
define internal signext i32 @trans_scanner_block_hash_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !3
  store ptr %1, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %5) #8
  store i32 0, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %9 = load ptr, ptr %4, align 8, !tbaa !8
  %10 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %9, i32 0, i32 2
  %11 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 0
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = ptrtoint ptr %12 to i32
  store i32 %13, ptr %7, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %14 = load ptr, ptr %3, align 8, !tbaa !3
  %15 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %14, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  store ptr %16, ptr %8, align 8, !tbaa !29
  store i32 0, ptr %6, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %44, %2
  %18 = load i32, ptr %6, align 4, !tbaa !10
  %19 = load i32, ptr %7, align 4, !tbaa !10
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4, !tbaa !10
  %23 = mul i32 %22, 3
  store i32 %23, ptr %5, align 4, !tbaa !10
  %24 = load ptr, ptr %8, align 8, !tbaa !29
  %25 = load i32, ptr %6, align 4, !tbaa !10
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !30
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = load ptr, ptr %8, align 8, !tbaa !29
  %32 = load i32, ptr %6, align 4, !tbaa !10
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !30
  %36 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %35, i32 0, i32 0
  %37 = load i32, ptr %36, align 8, !tbaa !32
  %38 = add i32 %37, 1
  br label %40

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %30
  %41 = phi i32 [ %38, %30 ], [ 0, %39 ]
  %42 = load i32, ptr %5, align 4, !tbaa !10
  %43 = add i32 %42, %41
  store i32 %43, ptr %5, align 4, !tbaa !10
  br label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %6, align 4, !tbaa !10
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %6, align 4, !tbaa !10
  br label %17, !llvm.loop !34

47:                                               ; preds = %17
  %48 = load i32, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %5) #8
  ret i32 %48
}

; Function Attrs: nounwind
define internal signext i32 @trans_scanner_block_cmp_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !3
  store ptr %1, ptr %6, align 8, !tbaa !3
  store ptr %2, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  %13 = load ptr, ptr %7, align 8, !tbaa !8
  %14 = getelementptr inbounds nuw %struct.hash_fns_t, ptr %13, i32 0, i32 2
  %15 = getelementptr inbounds [2 x ptr], ptr %14, i64 0, i64 0
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = ptrtoint ptr %16 to i32
  store i32 %17, ptr %9, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %18 = load ptr, ptr %5, align 8, !tbaa !3
  %19 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %18, i32 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !28
  store ptr %20, ptr %10, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  %21 = load ptr, ptr %6, align 8, !tbaa !3
  %22 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  store ptr %23, ptr %11, align 8, !tbaa !29
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %74, %3
  %25 = load i32, ptr %8, align 4, !tbaa !10
  %26 = load i32, ptr %9, align 4, !tbaa !10
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %24
  %29 = load ptr, ptr %10, align 8, !tbaa !29
  %30 = load i32, ptr %8, align 4, !tbaa !10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  %34 = load ptr, ptr %11, align 8, !tbaa !29
  %35 = load i32, ptr %8, align 4, !tbaa !10
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = icmp eq ptr %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %74

41:                                               ; preds = %28
  %42 = load ptr, ptr %10, align 8, !tbaa !29
  %43 = load i32, ptr %8, align 4, !tbaa !10
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = icmp ne ptr %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load ptr, ptr %11, align 8, !tbaa !29
  %50 = load i32, ptr %8, align 4, !tbaa !10
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !30
  %54 = icmp ne ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %41
  store i32 1, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %78

56:                                               ; preds = %48
  %57 = load ptr, ptr %10, align 8, !tbaa !29
  %58 = load i32, ptr %8, align 4, !tbaa !10
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %57, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !30
  %62 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !32
  %64 = load ptr, ptr %11, align 8, !tbaa !29
  %65 = load i32, ptr %8, align 4, !tbaa !10
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %64, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !30
  %69 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !32
  %71 = icmp ne i32 %63, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %56
  store i32 1, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %78

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %40
  %75 = load i32, ptr %8, align 4, !tbaa !10
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr %8, align 4, !tbaa !10
  br label %24, !llvm.loop !35

77:                                               ; preds = %24
  store i32 0, ptr %4, align 4
  store i32 1, ptr %12, align 4
  br label %78

78:                                               ; preds = %77, %72, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  %79 = load i32, ptr %4, align 4
  ret i32 %79
}

; Function Attrs: nounwind
define internal signext i32 @shift_hash_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !36
  store ptr %1, ptr %4, align 8, !tbaa !8
  %5 = load ptr, ptr %3, align 8, !tbaa !36
  %6 = getelementptr inbounds nuw %struct.Action, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds nuw %struct.Term, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !44
  ret i32 %9
}

; Function Attrs: nounwind
define internal signext i32 @shift_cmp_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !36
  store ptr %1, ptr %5, align 8, !tbaa !36
  store ptr %2, ptr %6, align 8, !tbaa !8
  %7 = load ptr, ptr %4, align 8, !tbaa !36
  %8 = getelementptr inbounds nuw %struct.Action, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds nuw %struct.Term, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = load ptr, ptr %5, align 8, !tbaa !36
  %13 = getelementptr inbounds nuw %struct.Action, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds nuw %struct.Term, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !44
  %17 = icmp ne i32 %11, %16
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: nounwind
define internal signext i32 @er_hint_hash_fn(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !47
  store ptr %1, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr %5) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !47
  %10 = getelementptr inbounds nuw %struct.State, ptr %9, i32 0, i32 8
  store ptr %10, ptr %5, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %6) #8
  store i32 0, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %11

11:                                               ; preds = %98, %2
  %12 = load i32, ptr %7, align 4, !tbaa !10
  %13 = load ptr, ptr %5, align 8, !tbaa !12
  %14 = getelementptr inbounds nuw %struct.VecHint, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !48
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %101

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 8, !tbaa !12
  %19 = getelementptr inbounds nuw %struct.VecHint, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !51
  %21 = load i32, ptr %7, align 4, !tbaa !10
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds nuw ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  %25 = getelementptr inbounds nuw %struct.Hint, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = getelementptr inbounds nuw %struct.Rule, ptr %26, i32 0, i32 6
  %28 = getelementptr inbounds nuw %struct.anon.7, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = load ptr, ptr %5, align 8, !tbaa !12
  %31 = getelementptr inbounds nuw %struct.VecHint, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = load i32, ptr %7, align 4, !tbaa !10
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds nuw ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds nuw %struct.Hint, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !54
  %39 = getelementptr inbounds nuw %struct.Rule, ptr %38, i32 0, i32 6
  %40 = getelementptr inbounds nuw %struct.anon.7, ptr %39, i32 0, i32 0
  %41 = load i32, ptr %40, align 8, !tbaa !64
  %42 = sub i32 %41, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds nuw ptr, ptr %29, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !65
  %46 = getelementptr inbounds nuw %struct.Elem, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !66
  store ptr %47, ptr %8, align 8, !tbaa !67
  %48 = load ptr, ptr %5, align 8, !tbaa !12
  %49 = getelementptr inbounds nuw %struct.VecHint, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = load i32, ptr %7, align 4, !tbaa !10
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds nuw ptr, ptr %50, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !52
  %55 = getelementptr inbounds nuw %struct.Hint, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !68
  %57 = add i32 %56, 1
  %58 = mul i32 %57, 13
  %59 = load i32, ptr %6, align 4, !tbaa !10
  %60 = add i32 %59, %58
  store i32 %60, ptr %6, align 4, !tbaa !10
  %61 = load ptr, ptr %8, align 8, !tbaa !67
  %62 = getelementptr inbounds nuw %struct.Term, ptr %61, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8, !tbaa !69
  %64 = load ptr, ptr %8, align 8, !tbaa !67
  %65 = getelementptr inbounds nuw %struct.Term, ptr %64, i32 0, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !70
  %67 = call signext i32 @strhashl(ptr noundef %63, i32 noundef signext %66)
  %68 = load i32, ptr %6, align 4, !tbaa !10
  %69 = add i32 %68, %67
  store i32 %69, ptr %6, align 4, !tbaa !10
  %70 = load ptr, ptr %5, align 8, !tbaa !12
  %71 = getelementptr inbounds nuw %struct.VecHint, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !51
  %73 = load i32, ptr %7, align 4, !tbaa !10
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds nuw ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !52
  %77 = getelementptr inbounds nuw %struct.Hint, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !54
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %97

80:                                               ; preds = %17
  %81 = load ptr, ptr %5, align 8, !tbaa !12
  %82 = getelementptr inbounds nuw %struct.VecHint, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !51
  %84 = load i32, ptr %7, align 4, !tbaa !10
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds nuw ptr, ptr %83, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !52
  %88 = getelementptr inbounds nuw %struct.Hint, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !54
  %90 = getelementptr inbounds nuw %struct.Rule, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !71
  %92 = getelementptr inbounds nuw %struct.Production, ptr %91, i32 0, i32 3
  %93 = load i32, ptr %92, align 8, !tbaa !72
  %94 = mul i32 %93, 10007
  %95 = load i32, ptr %6, align 4, !tbaa !10
  %96 = add i32 %95, %94
  store i32 %96, ptr %6, align 4, !tbaa !10
  br label %97

97:                                               ; preds = %80, %17
  br label %98

98:                                               ; preds = %97
  %99 = load i32, ptr %7, align 4, !tbaa !10
  %100 = add i32 %99, 1
  store i32 %100, ptr %7, align 4, !tbaa !10
  br label %11, !llvm.loop !76

101:                                              ; preds = %11
  %102 = load i32, ptr %6, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %5) #8
  ret i32 %102
}

; Function Attrs: nounwind
define internal signext i32 @er_hint_cmp_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !47
  store ptr %1, ptr %6, align 8, !tbaa !47
  store ptr %2, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %14 = load ptr, ptr %5, align 8, !tbaa !47
  %15 = getelementptr inbounds nuw %struct.State, ptr %14, i32 0, i32 8
  store ptr %15, ptr %9, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %16 = load ptr, ptr %6, align 8, !tbaa !47
  %17 = getelementptr inbounds nuw %struct.State, ptr %16, i32 0, i32 8
  store ptr %17, ptr %10, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  %18 = load ptr, ptr %9, align 8, !tbaa !12
  %19 = getelementptr inbounds nuw %struct.VecHint, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !48
  %21 = load ptr, ptr %10, align 8, !tbaa !12
  %22 = getelementptr inbounds nuw %struct.VecHint, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !48
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 1, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %156

26:                                               ; preds = %3
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %27

27:                                               ; preds = %152, %26
  %28 = load i32, ptr %8, align 4, !tbaa !10
  %29 = load ptr, ptr %9, align 8, !tbaa !12
  %30 = getelementptr inbounds nuw %struct.VecHint, ptr %29, i32 0, i32 0
  %31 = load i32, ptr %30, align 8, !tbaa !48
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %155

33:                                               ; preds = %27
  %34 = load ptr, ptr %9, align 8, !tbaa !12
  %35 = getelementptr inbounds nuw %struct.VecHint, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = load i32, ptr %8, align 4, !tbaa !10
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !52
  %41 = getelementptr inbounds nuw %struct.Hint, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !54
  %43 = getelementptr inbounds nuw %struct.Rule, ptr %42, i32 0, i32 6
  %44 = getelementptr inbounds nuw %struct.anon.7, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !56
  %46 = load ptr, ptr %9, align 8, !tbaa !12
  %47 = getelementptr inbounds nuw %struct.VecHint, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !51
  %49 = load i32, ptr %8, align 4, !tbaa !10
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !52
  %53 = getelementptr inbounds nuw %struct.Hint, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !54
  %55 = getelementptr inbounds nuw %struct.Rule, ptr %54, i32 0, i32 6
  %56 = getelementptr inbounds nuw %struct.anon.7, ptr %55, i32 0, i32 0
  %57 = load i32, ptr %56, align 8, !tbaa !64
  %58 = sub i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds nuw ptr, ptr %45, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = getelementptr inbounds nuw %struct.Elem, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  store ptr %63, ptr %11, align 8, !tbaa !67
  %64 = load ptr, ptr %10, align 8, !tbaa !12
  %65 = getelementptr inbounds nuw %struct.VecHint, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = load i32, ptr %8, align 4, !tbaa !10
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  %71 = getelementptr inbounds nuw %struct.Hint, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !54
  %73 = getelementptr inbounds nuw %struct.Rule, ptr %72, i32 0, i32 6
  %74 = getelementptr inbounds nuw %struct.anon.7, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !56
  %76 = load ptr, ptr %10, align 8, !tbaa !12
  %77 = getelementptr inbounds nuw %struct.VecHint, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !51
  %79 = load i32, ptr %8, align 4, !tbaa !10
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %78, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !52
  %83 = getelementptr inbounds nuw %struct.Hint, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !54
  %85 = getelementptr inbounds nuw %struct.Rule, ptr %84, i32 0, i32 6
  %86 = getelementptr inbounds nuw %struct.anon.7, ptr %85, i32 0, i32 0
  %87 = load i32, ptr %86, align 8, !tbaa !64
  %88 = sub i32 %87, 1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds nuw ptr, ptr %75, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !65
  %92 = getelementptr inbounds nuw %struct.Elem, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !66
  store ptr %93, ptr %12, align 8, !tbaa !67
  %94 = load ptr, ptr %9, align 8, !tbaa !12
  %95 = getelementptr inbounds nuw %struct.VecHint, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !51
  %97 = load i32, ptr %8, align 4, !tbaa !10
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds ptr, ptr %96, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !52
  %101 = getelementptr inbounds nuw %struct.Hint, ptr %100, i32 0, i32 0
  %102 = load i32, ptr %101, align 8, !tbaa !68
  %103 = load ptr, ptr %10, align 8, !tbaa !12
  %104 = getelementptr inbounds nuw %struct.VecHint, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !51
  %106 = load i32, ptr %8, align 4, !tbaa !10
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107
  %109 = load ptr, ptr %108, align 8, !tbaa !52
  %110 = getelementptr inbounds nuw %struct.Hint, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 8, !tbaa !68
  %112 = icmp ne i32 %102, %111
  br i1 %112, label %150, label %113

113:                                              ; preds = %33
  %114 = load ptr, ptr %11, align 8, !tbaa !67
  %115 = getelementptr inbounds nuw %struct.Term, ptr %114, i32 0, i32 5
  %116 = load ptr, ptr %115, align 8, !tbaa !69
  %117 = load ptr, ptr %12, align 8, !tbaa !67
  %118 = getelementptr inbounds nuw %struct.Term, ptr %117, i32 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !69
  %120 = call signext i32 @strcmp(ptr noundef %116, ptr noundef %119) #9
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %150, label %122

122:                                              ; preds = %113
  %123 = load ptr, ptr %9, align 8, !tbaa !12
  %124 = getelementptr inbounds nuw %struct.VecHint, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !51
  %126 = load i32, ptr %8, align 4, !tbaa !10
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds ptr, ptr %125, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !52
  %130 = getelementptr inbounds nuw %struct.Hint, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !54
  %132 = getelementptr inbounds nuw %struct.Rule, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !71
  %134 = getelementptr inbounds nuw %struct.Production, ptr %133, i32 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !72
  %136 = load ptr, ptr %10, align 8, !tbaa !12
  %137 = getelementptr inbounds nuw %struct.VecHint, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !51
  %139 = load i32, ptr %8, align 4, !tbaa !10
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %138, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !52
  %143 = getelementptr inbounds nuw %struct.Hint, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !54
  %145 = getelementptr inbounds nuw %struct.Rule, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !71
  %147 = getelementptr inbounds nuw %struct.Production, ptr %146, i32 0, i32 3
  %148 = load i32, ptr %147, align 8, !tbaa !72
  %149 = icmp ne i32 %135, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %122, %113, %33
  store i32 1, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %156

151:                                              ; preds = %122
  br label %152

152:                                              ; preds = %151
  %153 = load i32, ptr %8, align 4, !tbaa !10
  %154 = add nsw i32 %153, 1
  store i32 %154, ptr %8, align 4, !tbaa !10
  br label %27, !llvm.loop !77

155:                                              ; preds = %27
  store i32 0, ptr %4, align 4
  store i32 1, ptr %13, align 4
  br label %156

156:                                              ; preds = %155, %150, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  %157 = load i32, ptr %4, align 4
  ret i32 %157
}

; Function Attrs: nounwind
define dso_local void @write_parser_tables_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 1
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.VecState, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !78
  store ptr %1, ptr %5, align 8, !tbaa !80
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4096, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  store i32 0, ptr %9, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  br label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds nuw %struct.VecState, ptr %11, i32 0, i32 0
  store i32 0, ptr %14, align 8, !tbaa !81
  %15 = getelementptr inbounds nuw %struct.VecState, ptr %11, i32 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !84
  br label %16

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  %19 = load ptr, ptr %5, align 8, !tbaa !80
  %20 = call ptr @strcpy(ptr noundef %18, ptr noundef %19) #8
  %21 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  %22 = call ptr @strcat(ptr noundef %21, ptr noundef @.str) #8
  %23 = load ptr, ptr @stdout, align 8, !tbaa !85
  store ptr %23, ptr %8, align 8, !tbaa !85
  %24 = load ptr, ptr %8, align 8, !tbaa !85
  %25 = icmp ne ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  call void (ptr, ...) @d_fail(ptr noundef @.str.1, ptr noundef %27)
  br label %28

28:                                               ; preds = %26, %17
  %29 = load ptr, ptr %4, align 8, !tbaa !78
  %30 = load ptr, ptr %5, align 8, !tbaa !80
  %31 = load ptr, ptr %6, align 8, !tbaa !80
  %32 = call signext i32 @write_header_as_C(ptr noundef %29, ptr noundef %30, ptr noundef %31)
  store i32 %32, ptr %10, align 4, !tbaa !10
  %33 = load ptr, ptr %8, align 8, !tbaa !85
  %34 = load ptr, ptr %4, align 8, !tbaa !78
  %35 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_global_code_as_C(ptr noundef %33, ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %8, align 8, !tbaa !85
  %37 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2) #8
  %38 = load i32, ptr %10, align 4, !tbaa !10
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load ptr, ptr %8, align 8, !tbaa !85
  %42 = load ptr, ptr %5, align 8, !tbaa !80
  %43 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.3, ptr noundef %42) #8
  br label %44

44:                                               ; preds = %40, %28
  %45 = load ptr, ptr %8, align 8, !tbaa !85
  %46 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.4) #8
  %47 = load ptr, ptr %8, align 8, !tbaa !85
  %48 = load ptr, ptr %4, align 8, !tbaa !78
  %49 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_reductions_as_C(ptr noundef %47, ptr noundef %48, ptr noundef %49)
  %50 = load ptr, ptr %8, align 8, !tbaa !85
  %51 = load ptr, ptr %4, align 8, !tbaa !78
  %52 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_scanner_data_as_C(ptr noundef %50, ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %8, align 8, !tbaa !85
  %54 = load ptr, ptr %4, align 8, !tbaa !78
  %55 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_scanner_code_as_C(ptr noundef %53, ptr noundef %54, ptr noundef %55)
  %56 = load ptr, ptr %8, align 8, !tbaa !85
  %57 = load ptr, ptr %4, align 8, !tbaa !78
  %58 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_goto_data_as_C(ptr noundef %56, ptr noundef %57, ptr noundef %58)
  %59 = load ptr, ptr %8, align 8, !tbaa !85
  %60 = load ptr, ptr %4, align 8, !tbaa !78
  %61 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_error_data_as_C(ptr noundef %59, ptr noundef %60, ptr noundef %11, ptr noundef %61)
  %62 = load ptr, ptr %8, align 8, !tbaa !85
  %63 = load ptr, ptr %4, align 8, !tbaa !78
  %64 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_state_data_as_C(ptr noundef %62, ptr noundef %63, ptr noundef %11, ptr noundef %64)
  %65 = load ptr, ptr %8, align 8, !tbaa !85
  %66 = load ptr, ptr %4, align 8, !tbaa !78
  %67 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_symbol_data_as_C(ptr noundef %65, ptr noundef %66, ptr noundef %67)
  %68 = load ptr, ptr %8, align 8, !tbaa !85
  %69 = load ptr, ptr %4, align 8, !tbaa !78
  %70 = load ptr, ptr %6, align 8, !tbaa !80
  call void @write_passes_as_C(ptr noundef %68, ptr noundef %69, ptr noundef %70)
  %71 = load ptr, ptr %4, align 8, !tbaa !78
  %72 = call ptr @lookup_production(ptr noundef %71, ptr noundef @.str.5, i32 noundef signext 10)
  store ptr %72, ptr %12, align 8, !tbaa !87
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %44
  %75 = load ptr, ptr %12, align 8, !tbaa !87
  %76 = getelementptr inbounds nuw %struct.Production, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !88
  %78 = getelementptr inbounds nuw %struct.State, ptr %77, i32 0, i32 0
  %79 = load i32, ptr %78, align 8, !tbaa !89
  store i32 %79, ptr %9, align 4, !tbaa !10
  br label %80

80:                                               ; preds = %74, %44
  %81 = load ptr, ptr %8, align 8, !tbaa !85
  %82 = load ptr, ptr %6, align 8, !tbaa !80
  %83 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.6, ptr noundef %82) #8
  %84 = load ptr, ptr %8, align 8, !tbaa !85
  %85 = load ptr, ptr %4, align 8, !tbaa !78
  %86 = getelementptr inbounds nuw %struct.Grammar, ptr %85, i32 0, i32 3
  %87 = getelementptr inbounds nuw %struct.anon.4, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8, !tbaa !97
  %89 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.7, i32 noundef signext %88) #8
  %90 = load ptr, ptr %8, align 8, !tbaa !85
  %91 = load ptr, ptr %6, align 8, !tbaa !80
  %92 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str.8, ptr noundef %91) #8
  %93 = load ptr, ptr %8, align 8, !tbaa !85
  %94 = load ptr, ptr %6, align 8, !tbaa !80
  %95 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef @.str.9, ptr noundef %94) #8
  %96 = load ptr, ptr %8, align 8, !tbaa !85
  %97 = load i32, ptr %9, align 4, !tbaa !10
  %98 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef @.str.7, i32 noundef signext %97) #8
  %99 = load ptr, ptr %8, align 8, !tbaa !85
  %100 = load ptr, ptr %4, align 8, !tbaa !78
  %101 = getelementptr inbounds nuw %struct.Grammar, ptr %100, i32 0, i32 1
  %102 = getelementptr inbounds nuw %struct.anon.2, ptr %101, i32 0, i32 0
  %103 = load i32, ptr %102, align 8, !tbaa !108
  %104 = load ptr, ptr %4, align 8, !tbaa !78
  %105 = getelementptr inbounds nuw %struct.Grammar, ptr %104, i32 0, i32 2
  %106 = getelementptr inbounds nuw %struct.anon.3, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !109
  %108 = add i32 %103, %107
  %109 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef @.str.7, i32 noundef signext %108) #8
  %110 = load ptr, ptr %8, align 8, !tbaa !85
  %111 = load ptr, ptr %6, align 8, !tbaa !80
  %112 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.10, ptr noundef %111) #8
  %113 = load ptr, ptr %4, align 8, !tbaa !78
  %114 = getelementptr inbounds nuw %struct.Grammar, ptr %113, i32 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !110
  %116 = icmp ne ptr %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %80
  %118 = load ptr, ptr %8, align 8, !tbaa !85
  %119 = load ptr, ptr %4, align 8, !tbaa !78
  %120 = getelementptr inbounds nuw %struct.Grammar, ptr %119, i32 0, i32 9
  %121 = load ptr, ptr %120, align 8, !tbaa !110
  %122 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef @.str.11, ptr noundef %121) #8
  br label %126

123:                                              ; preds = %80
  %124 = load ptr, ptr %8, align 8, !tbaa !85
  %125 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef @.str.12) #8
  br label %126

126:                                              ; preds = %123, %117
  %127 = load ptr, ptr %8, align 8, !tbaa !85
  %128 = load ptr, ptr %4, align 8, !tbaa !78
  %129 = getelementptr inbounds nuw %struct.Grammar, ptr %128, i32 0, i32 8
  %130 = getelementptr inbounds nuw %struct.anon.6, ptr %129, i32 0, i32 0
  %131 = load i32, ptr %130, align 8, !tbaa !111
  %132 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.7, i32 noundef signext %131) #8
  %133 = load ptr, ptr %4, align 8, !tbaa !78
  %134 = getelementptr inbounds nuw %struct.Grammar, ptr %133, i32 0, i32 8
  %135 = getelementptr inbounds nuw %struct.anon.6, ptr %134, i32 0, i32 0
  %136 = load i32, ptr %135, align 8, !tbaa !111
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %126
  %139 = load ptr, ptr %8, align 8, !tbaa !85
  %140 = load ptr, ptr %6, align 8, !tbaa !80
  %141 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef @.str.13, ptr noundef %140) #8
  br label %145

142:                                              ; preds = %126
  %143 = load ptr, ptr %8, align 8, !tbaa !85
  %144 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str.12) #8
  br label %145

145:                                              ; preds = %142, %138
  %146 = load ptr, ptr %4, align 8, !tbaa !78
  %147 = getelementptr inbounds nuw %struct.Grammar, ptr %146, i32 0, i32 16
  %148 = load i32, ptr %147, align 8, !tbaa !112
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load ptr, ptr %8, align 8, !tbaa !85
  %152 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef @.str.14) #8
  br label %156

153:                                              ; preds = %145
  %154 = load ptr, ptr %8, align 8, !tbaa !85
  %155 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef @.str.15) #8
  br label %156

156:                                              ; preds = %153, %150
  %157 = load ptr, ptr %8, align 8, !tbaa !85
  %158 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr %7) #8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #0

declare void @d_fail(ptr noundef, ...) #2

; Function Attrs: nounwind
define internal signext i32 @write_header_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8, !tbaa !78
  store ptr %1, ptr %6, align 8, !tbaa !80
  store ptr %2, ptr %7, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4096, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  store i32 0, ptr %10, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  store i32 0, ptr %11, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %15

15:                                               ; preds = %36, %3
  %16 = load i32, ptr %9, align 4, !tbaa !10
  %17 = load ptr, ptr %5, align 8, !tbaa !78
  %18 = getelementptr inbounds nuw %struct.Grammar, ptr %17, i32 0, i32 2
  %19 = getelementptr inbounds nuw %struct.anon.3, ptr %18, i32 0, i32 0
  %20 = load i32, ptr %19, align 8, !tbaa !109
  %21 = icmp ult i32 %16, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load ptr, ptr %5, align 8, !tbaa !78
  %24 = getelementptr inbounds nuw %struct.Grammar, ptr %23, i32 0, i32 2
  %25 = getelementptr inbounds nuw %struct.anon.3, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = load i32, ptr %9, align 4, !tbaa !10
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = getelementptr inbounds nuw %struct.Term, ptr %30, i32 0, i32 0
  %32 = load i32, ptr %31, align 8, !tbaa !114
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  store i32 1, ptr %10, align 4, !tbaa !10
  br label %35

35:                                               ; preds = %34, %22
  br label %36

36:                                               ; preds = %35
  %37 = load i32, ptr %9, align 4, !tbaa !10
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %9, align 4, !tbaa !10
  br label %15, !llvm.loop !115

39:                                               ; preds = %15
  %40 = load ptr, ptr %5, align 8, !tbaa !78
  %41 = getelementptr inbounds nuw %struct.Grammar, ptr %40, i32 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !116
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, ptr %11, align 4, !tbaa !10
  br label %64

45:                                               ; preds = %39
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, ptr %9, align 4, !tbaa !10
  %48 = load ptr, ptr %5, align 8, !tbaa !78
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 1
  %50 = getelementptr inbounds nuw %struct.anon.2, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !108
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load ptr, ptr %5, align 8, !tbaa !78
  %55 = load i32, ptr %9, align 4, !tbaa !10
  %56 = call signext i32 @state_for_declaration(ptr noundef %54, i32 noundef signext %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, ptr %11, align 4, !tbaa !10
  br label %59

59:                                               ; preds = %58, %53
  br label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %9, align 4, !tbaa !10
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %9, align 4, !tbaa !10
  br label %46, !llvm.loop !117

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %44
  %65 = load ptr, ptr %5, align 8, !tbaa !78
  %66 = getelementptr inbounds nuw %struct.Grammar, ptr %65, i32 0, i32 21
  %67 = load i32, ptr %66, align 8, !tbaa !118
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 8, !tbaa !78
  %71 = getelementptr inbounds nuw %struct.Grammar, ptr %70, i32 0, i32 21
  %72 = load i32, ptr %71, align 8, !tbaa !118
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %315

74:                                               ; preds = %69
  %75 = load i32, ptr %10, align 4, !tbaa !10
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %11, align 4, !tbaa !10
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %315

80:                                               ; preds = %77, %74, %64
  %81 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %82 = load ptr, ptr %6, align 8, !tbaa !80
  %83 = call ptr @strcpy(ptr noundef %81, ptr noundef %82) #8
  %84 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  %85 = call ptr @strcat(ptr noundef %84, ptr noundef @.str.17) #8
  %86 = load ptr, ptr @stdout, align 8, !tbaa !85
  store ptr %86, ptr %13, align 8, !tbaa !85
  %87 = load ptr, ptr %13, align 8, !tbaa !85
  %88 = icmp ne ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %80
  %90 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0
  call void (ptr, ...) @d_fail(ptr noundef @.str.1, ptr noundef %90)
  br label %91

91:                                               ; preds = %89, %80
  %92 = load ptr, ptr %13, align 8, !tbaa !85
  %93 = load ptr, ptr %7, align 8, !tbaa !80
  %94 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef @.str.18, ptr noundef %93) #8
  %95 = load ptr, ptr %13, align 8, !tbaa !85
  %96 = load ptr, ptr %7, align 8, !tbaa !80
  %97 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.19, ptr noundef %96) #8
  %98 = load i32, ptr %10, align 4, !tbaa !10
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %244

100:                                              ; preds = %91
  %101 = load ptr, ptr %5, align 8, !tbaa !78
  %102 = getelementptr inbounds nuw %struct.Grammar, ptr %101, i32 0, i32 22
  %103 = load i32, ptr %102, align 4, !tbaa !119
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %158, label %105

105:                                              ; preds = %100
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %106

106:                                              ; preds = %154, %105
  %107 = load i32, ptr %9, align 4, !tbaa !10
  %108 = load ptr, ptr %5, align 8, !tbaa !78
  %109 = getelementptr inbounds nuw %struct.Grammar, ptr %108, i32 0, i32 2
  %110 = getelementptr inbounds nuw %struct.anon.3, ptr %109, i32 0, i32 0
  %111 = load i32, ptr %110, align 8, !tbaa !109
  %112 = icmp ult i32 %107, %111
  br i1 %112, label %113, label %157

113:                                              ; preds = %106
  %114 = load ptr, ptr %5, align 8, !tbaa !78
  %115 = getelementptr inbounds nuw %struct.Grammar, ptr %114, i32 0, i32 2
  %116 = getelementptr inbounds nuw %struct.anon.3, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !113
  %118 = load i32, ptr %9, align 4, !tbaa !10
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds ptr, ptr %117, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !67
  %122 = getelementptr inbounds nuw %struct.Term, ptr %121, i32 0, i32 0
  %123 = load i32, ptr %122, align 8, !tbaa !114
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %153

125:                                              ; preds = %113
  %126 = load ptr, ptr %13, align 8, !tbaa !85
  %127 = load ptr, ptr %5, align 8, !tbaa !78
  %128 = getelementptr inbounds nuw %struct.Grammar, ptr %127, i32 0, i32 2
  %129 = getelementptr inbounds nuw %struct.anon.3, ptr %128, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !113
  %131 = load i32, ptr %9, align 4, !tbaa !10
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds ptr, ptr %130, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !67
  %135 = getelementptr inbounds nuw %struct.Term, ptr %134, i32 0, i32 5
  %136 = load ptr, ptr %135, align 8, !tbaa !69
  %137 = load ptr, ptr %5, align 8, !tbaa !78
  %138 = getelementptr inbounds nuw %struct.Grammar, ptr %137, i32 0, i32 2
  %139 = getelementptr inbounds nuw %struct.anon.3, ptr %138, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !113
  %141 = load i32, ptr %9, align 4, !tbaa !10
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !67
  %145 = getelementptr inbounds nuw %struct.Term, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !44
  %147 = load ptr, ptr %5, align 8, !tbaa !78
  %148 = getelementptr inbounds nuw %struct.Grammar, ptr %147, i32 0, i32 1
  %149 = getelementptr inbounds nuw %struct.anon.2, ptr %148, i32 0, i32 0
  %150 = load i32, ptr %149, align 8, !tbaa !108
  %151 = add i32 %146, %150
  %152 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.20, ptr noundef %136, i32 noundef signext %151) #8
  br label %153

153:                                              ; preds = %125, %113
  br label %154

154:                                              ; preds = %153
  %155 = load i32, ptr %9, align 4, !tbaa !10
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %9, align 4, !tbaa !10
  br label %106, !llvm.loop !120

157:                                              ; preds = %106
  br label %243

158:                                              ; preds = %100
  %159 = load ptr, ptr %13, align 8, !tbaa !85
  %160 = load ptr, ptr %7, align 8, !tbaa !80
  %161 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %159, ptr noundef @.str.21, ptr noundef %160) #8
  store i32 0, ptr %12, align 4, !tbaa !10
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %162

162:                                              ; preds = %237, %158
  %163 = load i32, ptr %9, align 4, !tbaa !10
  %164 = load ptr, ptr %5, align 8, !tbaa !78
  %165 = getelementptr inbounds nuw %struct.Grammar, ptr %164, i32 0, i32 2
  %166 = getelementptr inbounds nuw %struct.anon.3, ptr %165, i32 0, i32 0
  %167 = load i32, ptr %166, align 8, !tbaa !109
  %168 = icmp ult i32 %163, %167
  br i1 %168, label %169, label %240

169:                                              ; preds = %162
  %170 = load ptr, ptr %5, align 8, !tbaa !78
  %171 = getelementptr inbounds nuw %struct.Grammar, ptr %170, i32 0, i32 2
  %172 = getelementptr inbounds nuw %struct.anon.3, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !113
  %174 = load i32, ptr %9, align 4, !tbaa !10
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds ptr, ptr %173, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !67
  %178 = getelementptr inbounds nuw %struct.Term, ptr %177, i32 0, i32 0
  %179 = load i32, ptr %178, align 8, !tbaa !114
  %180 = icmp eq i32 %179, 3
  br i1 %180, label %181, label %236

181:                                              ; preds = %169
  %182 = load ptr, ptr %5, align 8, !tbaa !78
  %183 = getelementptr inbounds nuw %struct.Grammar, ptr %182, i32 0, i32 2
  %184 = getelementptr inbounds nuw %struct.anon.3, ptr %183, i32 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !113
  %186 = load i32, ptr %9, align 4, !tbaa !10
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds ptr, ptr %185, i64 %187
  %189 = load ptr, ptr %188, align 8, !tbaa !67
  %190 = getelementptr inbounds nuw %struct.Term, ptr %189, i32 0, i32 6
  %191 = load i32, ptr %190, align 8, !tbaa !70
  %192 = add nsw i32 %191, 7
  %193 = load i32, ptr %12, align 4, !tbaa !10
  %194 = add nsw i32 %193, %192
  store i32 %194, ptr %12, align 4, !tbaa !10
  %195 = load i32, ptr %12, align 4, !tbaa !10
  %196 = icmp sgt i32 %195, 70
  br i1 %196, label %197, label %199

197:                                              ; preds = %181
  %198 = call signext i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %12, align 4, !tbaa !10
  br label %199

199:                                              ; preds = %197, %181
  %200 = load ptr, ptr %13, align 8, !tbaa !85
  %201 = load ptr, ptr %5, align 8, !tbaa !78
  %202 = getelementptr inbounds nuw %struct.Grammar, ptr %201, i32 0, i32 2
  %203 = getelementptr inbounds nuw %struct.anon.3, ptr %202, i32 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !113
  %205 = load i32, ptr %9, align 4, !tbaa !10
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds ptr, ptr %204, i64 %206
  %208 = load ptr, ptr %207, align 8, !tbaa !67
  %209 = getelementptr inbounds nuw %struct.Term, ptr %208, i32 0, i32 5
  %210 = load ptr, ptr %209, align 8, !tbaa !69
  %211 = load ptr, ptr %5, align 8, !tbaa !78
  %212 = getelementptr inbounds nuw %struct.Grammar, ptr %211, i32 0, i32 2
  %213 = getelementptr inbounds nuw %struct.anon.3, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !113
  %215 = load i32, ptr %9, align 4, !tbaa !10
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %214, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !67
  %219 = getelementptr inbounds nuw %struct.Term, ptr %218, i32 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !44
  %221 = load ptr, ptr %5, align 8, !tbaa !78
  %222 = getelementptr inbounds nuw %struct.Grammar, ptr %221, i32 0, i32 1
  %223 = getelementptr inbounds nuw %struct.anon.2, ptr %222, i32 0, i32 0
  %224 = load i32, ptr %223, align 8, !tbaa !108
  %225 = add i32 %220, %224
  %226 = load i32, ptr %9, align 4, !tbaa !10
  %227 = load ptr, ptr %5, align 8, !tbaa !78
  %228 = getelementptr inbounds nuw %struct.Grammar, ptr %227, i32 0, i32 2
  %229 = getelementptr inbounds nuw %struct.anon.3, ptr %228, i32 0, i32 0
  %230 = load i32, ptr %229, align 8, !tbaa !109
  %231 = sub i32 %230, 1
  %232 = icmp eq i32 %226, %231
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, ptr @.str.23, ptr @.str.24
  %235 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %200, ptr noundef @.str.22, ptr noundef %210, i32 noundef signext %225, ptr noundef %234) #8
  br label %236

236:                                              ; preds = %199, %169
  br label %237

237:                                              ; preds = %236
  %238 = load i32, ptr %9, align 4, !tbaa !10
  %239 = add nsw i32 %238, 1
  store i32 %239, ptr %9, align 4, !tbaa !10
  br label %162, !llvm.loop !121

240:                                              ; preds = %162
  %241 = load ptr, ptr %13, align 8, !tbaa !85
  %242 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef @.str.25) #8
  br label %243

243:                                              ; preds = %240, %157
  br label %244

244:                                              ; preds = %243, %91
  %245 = load i32, ptr %11, align 4, !tbaa !10
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %312

247:                                              ; preds = %244
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %248

248:                                              ; preds = %308, %247
  %249 = load i32, ptr %9, align 4, !tbaa !10
  %250 = load ptr, ptr %5, align 8, !tbaa !78
  %251 = getelementptr inbounds nuw %struct.Grammar, ptr %250, i32 0, i32 1
  %252 = getelementptr inbounds nuw %struct.anon.2, ptr %251, i32 0, i32 0
  %253 = load i32, ptr %252, align 8, !tbaa !108
  %254 = icmp ult i32 %249, %253
  br i1 %254, label %255, label %311

255:                                              ; preds = %248
  %256 = load ptr, ptr %5, align 8, !tbaa !78
  %257 = getelementptr inbounds nuw %struct.Grammar, ptr %256, i32 0, i32 1
  %258 = getelementptr inbounds nuw %struct.anon.2, ptr %257, i32 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !122
  %260 = load i32, ptr %9, align 4, !tbaa !10
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds ptr, ptr %259, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !87
  %264 = getelementptr inbounds nuw %struct.Production, ptr %263, i32 0, i32 4
  %265 = load i8, ptr %264, align 4
  %266 = lshr i8 %265, 2
  %267 = and i8 %266, 7
  %268 = zext i8 %267 to i32
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %307, label %270

270:                                              ; preds = %255
  %271 = load ptr, ptr %5, align 8, !tbaa !78
  %272 = getelementptr inbounds nuw %struct.Grammar, ptr %271, i32 0, i32 1
  %273 = getelementptr inbounds nuw %struct.anon.2, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !122
  %275 = load i32, ptr %9, align 4, !tbaa !10
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds ptr, ptr %274, i64 %276
  %278 = load ptr, ptr %277, align 8, !tbaa !87
  %279 = getelementptr inbounds nuw %struct.Production, ptr %278, i32 0, i32 9
  %280 = load ptr, ptr %279, align 8, !tbaa !123
  %281 = icmp ne ptr %280, null
  br i1 %281, label %282, label %307

282:                                              ; preds = %270
  %283 = load ptr, ptr %13, align 8, !tbaa !85
  %284 = load ptr, ptr %5, align 8, !tbaa !78
  %285 = getelementptr inbounds nuw %struct.Grammar, ptr %284, i32 0, i32 1
  %286 = getelementptr inbounds nuw %struct.anon.2, ptr %285, i32 0, i32 2
  %287 = load ptr, ptr %286, align 8, !tbaa !122
  %288 = load i32, ptr %9, align 4, !tbaa !10
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds ptr, ptr %287, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !87
  %292 = getelementptr inbounds nuw %struct.Production, ptr %291, i32 0, i32 0
  %293 = load ptr, ptr %292, align 8, !tbaa !124
  %294 = load ptr, ptr %5, align 8, !tbaa !78
  %295 = getelementptr inbounds nuw %struct.Grammar, ptr %294, i32 0, i32 1
  %296 = getelementptr inbounds nuw %struct.anon.2, ptr %295, i32 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !122
  %298 = load i32, ptr %9, align 4, !tbaa !10
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds ptr, ptr %297, i64 %299
  %301 = load ptr, ptr %300, align 8, !tbaa !87
  %302 = getelementptr inbounds nuw %struct.Production, ptr %301, i32 0, i32 8
  %303 = load ptr, ptr %302, align 8, !tbaa !88
  %304 = getelementptr inbounds nuw %struct.State, ptr %303, i32 0, i32 0
  %305 = load i32, ptr %304, align 8, !tbaa !89
  %306 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef @.str.26, ptr noundef %293, i32 noundef signext %305) #8
  br label %307

307:                                              ; preds = %282, %270, %255
  br label %308

308:                                              ; preds = %307
  %309 = load i32, ptr %9, align 4, !tbaa !10
  %310 = add nsw i32 %309, 1
  store i32 %310, ptr %9, align 4, !tbaa !10
  br label %248, !llvm.loop !125

311:                                              ; preds = %248
  br label %312

312:                                              ; preds = %311, %244
  %313 = load ptr, ptr %13, align 8, !tbaa !85
  %314 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %313, ptr noundef @.str.27) #8
  store i32 1, ptr %4, align 4
  store i32 1, ptr %14, align 4
  br label %316

315:                                              ; preds = %77, %69
  store i32 0, ptr %4, align 4
  store i32 1, ptr %14, align 4
  br label %316

316:                                              ; preds = %315, %312
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4096, ptr %8) #8
  %317 = load i32, ptr %4, align 4
  ret i32 %317
}

; Function Attrs: nounwind
define internal void @write_global_code_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %11

11:                                               ; preds = %200, %3
  %12 = load i32, ptr %7, align 4, !tbaa !10
  %13 = load ptr, ptr %5, align 8, !tbaa !78
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !126
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %203

17:                                               ; preds = %11
  %18 = load ptr, ptr %5, align 8, !tbaa !78
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 20
  %20 = load i32, ptr %19, align 4, !tbaa !127
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load ptr, ptr %4, align 8, !tbaa !85
  %24 = load ptr, ptr %5, align 8, !tbaa !78
  %25 = getelementptr inbounds nuw %struct.Grammar, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !128
  %27 = load i32, ptr %7, align 4, !tbaa !10
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.Code, ptr %26, i64 %28
  %30 = getelementptr inbounds nuw %struct.Code, ptr %29, i32 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !129
  %32 = load ptr, ptr %5, align 8, !tbaa !78
  %33 = getelementptr inbounds nuw %struct.Grammar, ptr %32, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8, !tbaa !130
  %35 = call ptr @mybasename(ptr noundef %34)
  %36 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef @.str.28, i32 noundef signext %31, ptr noundef %35) #8
  br label %37

37:                                               ; preds = %22, %17
  %38 = load ptr, ptr %5, align 8, !tbaa !78
  %39 = getelementptr inbounds nuw %struct.Grammar, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !128
  %41 = load i32, ptr %7, align 4, !tbaa !10
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Code, ptr %40, i64 %42
  %44 = getelementptr inbounds nuw %struct.Code, ptr %43, i32 0, i32 0
  %45 = load ptr, ptr %44, align 8, !tbaa !131
  store ptr %45, ptr %8, align 8, !tbaa !80
  br label %46

46:                                               ; preds = %196, %37
  %47 = load ptr, ptr %8, align 8, !tbaa !80
  %48 = load i8, ptr %47, align 1, !tbaa !66
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %197

50:                                               ; preds = %46
  %51 = load ptr, ptr %8, align 8, !tbaa !80
  %52 = load i8, ptr %51, align 1, !tbaa !66
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 36
  br i1 %54, label %55, label %188

55:                                               ; preds = %50
  %56 = load ptr, ptr %8, align 8, !tbaa !80
  %57 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %57, ptr %8, align 8, !tbaa !80
  %58 = load ptr, ptr %8, align 8, !tbaa !80
  %59 = load i8, ptr %58, align 1, !tbaa !66
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 123
  br i1 %61, label %62, label %176

62:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %63 = load ptr, ptr %8, align 8, !tbaa !80
  %64 = getelementptr inbounds nuw i8, ptr %63, i32 1
  store ptr %64, ptr %8, align 8, !tbaa !80
  store ptr %64, ptr %9, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  br label %65

65:                                               ; preds = %90, %62
  %66 = load ptr, ptr %9, align 8, !tbaa !80
  %67 = load i8, ptr %66, align 1, !tbaa !66
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load ptr, ptr %9, align 8, !tbaa !80
  %72 = load i8, ptr %71, align 1, !tbaa !66
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 125
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = call ptr @__ctype_b_loc() #10
  %77 = load ptr, ptr %76, align 8, !tbaa !132
  %78 = load ptr, ptr %9, align 8, !tbaa !80
  %79 = load i8, ptr %78, align 1, !tbaa !66
  %80 = sext i8 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i16, ptr %77, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !134
  %84 = zext i16 %83 to i32
  %85 = and i32 %84, 8192
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %75, %70, %65
  %89 = phi i1 [ false, %70 ], [ false, %65 ], [ %87, %75 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load ptr, ptr %9, align 8, !tbaa !80
  %92 = getelementptr inbounds nuw i8, ptr %91, i32 1
  store ptr %92, ptr %9, align 8, !tbaa !80
  br label %65, !llvm.loop !136

93:                                               ; preds = %88
  %94 = load ptr, ptr %9, align 8, !tbaa !80
  store ptr %94, ptr %10, align 8, !tbaa !80
  %95 = call ptr @__ctype_b_loc() #10
  %96 = load ptr, ptr %95, align 8, !tbaa !132
  %97 = load ptr, ptr %10, align 8, !tbaa !80
  %98 = load i8, ptr %97, align 1, !tbaa !66
  %99 = sext i8 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, ptr %96, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !134
  %103 = zext i16 %102 to i32
  %104 = and i32 %103, 8192
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load ptr, ptr %10, align 8, !tbaa !80
  %108 = getelementptr inbounds nuw i8, ptr %107, i32 1
  store ptr %108, ptr %10, align 8, !tbaa !80
  br label %109

109:                                              ; preds = %106, %93
  br label %110

110:                                              ; preds = %122, %109
  %111 = load ptr, ptr %10, align 8, !tbaa !80
  %112 = load i8, ptr %111, align 1, !tbaa !66
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load ptr, ptr %10, align 8, !tbaa !80
  %117 = load i8, ptr %116, align 1, !tbaa !66
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 125
  br label %120

120:                                              ; preds = %115, %110
  %121 = phi i1 [ false, %110 ], [ %119, %115 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load ptr, ptr %10, align 8, !tbaa !80
  %124 = getelementptr inbounds nuw i8, ptr %123, i32 1
  store ptr %124, ptr %10, align 8, !tbaa !80
  br label %110, !llvm.loop !137

125:                                              ; preds = %120
  %126 = load ptr, ptr %9, align 8, !tbaa !80
  %127 = load ptr, ptr %8, align 8, !tbaa !80
  %128 = ptrtoint ptr %126 to i64
  %129 = ptrtoint ptr %127 to i64
  %130 = sub i64 %128, %129
  %131 = icmp eq i64 %130, 5
  br i1 %131, label %132, label %143

132:                                              ; preds = %125
  %133 = load ptr, ptr %8, align 8, !tbaa !80
  %134 = call signext i32 @strncasecmp(ptr noundef %133, ptr noundef @.str.29, i64 noundef 5) #9
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %143, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %4, align 8, !tbaa !85
  %138 = load ptr, ptr %5, align 8, !tbaa !78
  %139 = load ptr, ptr %9, align 8, !tbaa !80
  %140 = load ptr, ptr %10, align 8, !tbaa !80
  %141 = call signext i32 @find_symbol(ptr noundef %138, ptr noundef %139, ptr noundef %140, i32 noundef signext 1)
  %142 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef @.str.30, i32 noundef signext %141) #8
  br label %173

143:                                              ; preds = %132, %125
  %144 = load ptr, ptr %9, align 8, !tbaa !80
  %145 = load ptr, ptr %8, align 8, !tbaa !80
  %146 = ptrtoint ptr %144 to i64
  %147 = ptrtoint ptr %145 to i64
  %148 = sub i64 %146, %147
  %149 = icmp eq i64 %148, 6
  br i1 %149, label %150, label %161

150:                                              ; preds = %143
  %151 = load ptr, ptr %8, align 8, !tbaa !80
  %152 = call signext i32 @strncasecmp(ptr noundef %151, ptr noundef @.str.31, i64 noundef 6) #9
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %4, align 8, !tbaa !85
  %156 = load ptr, ptr %5, align 8, !tbaa !78
  %157 = load ptr, ptr %9, align 8, !tbaa !80
  %158 = load ptr, ptr %10, align 8, !tbaa !80
  %159 = call signext i32 @find_symbol(ptr noundef %156, ptr noundef %157, ptr noundef %158, i32 noundef signext 3)
  %160 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef @.str.30, i32 noundef signext %159) #8
  br label %172

161:                                              ; preds = %150, %143
  %162 = load ptr, ptr %5, align 8, !tbaa !78
  %163 = getelementptr inbounds nuw %struct.Grammar, ptr %162, i32 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !128
  %165 = load i32, ptr %7, align 4, !tbaa !10
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.Code, ptr %164, i64 %166
  %168 = getelementptr inbounds nuw %struct.Code, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !129
  %170 = load i32, ptr %7, align 4, !tbaa !10
  %171 = add nsw i32 %169, %170
  call void (ptr, ...) @d_fail(ptr noundef @.str.32, i32 noundef signext %171)
  br label %172

172:                                              ; preds = %161, %154
  br label %173

173:                                              ; preds = %172, %136
  %174 = load ptr, ptr %10, align 8, !tbaa !80
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  store ptr %175, ptr %8, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  br label %187

176:                                              ; preds = %55
  %177 = load ptr, ptr %5, align 8, !tbaa !78
  %178 = getelementptr inbounds nuw %struct.Grammar, ptr %177, i32 0, i32 5
  %179 = load ptr, ptr %178, align 8, !tbaa !128
  %180 = load i32, ptr %7, align 4, !tbaa !10
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.Code, ptr %179, i64 %181
  %183 = getelementptr inbounds nuw %struct.Code, ptr %182, i32 0, i32 1
  %184 = load i32, ptr %183, align 8, !tbaa !129
  %185 = load i32, ptr %7, align 4, !tbaa !10
  %186 = add nsw i32 %184, %185
  call void (ptr, ...) @d_fail(ptr noundef @.str.32, i32 noundef signext %186)
  br label %187

187:                                              ; preds = %176, %173
  br label %196

188:                                              ; preds = %50
  %189 = load ptr, ptr %8, align 8, !tbaa !80
  %190 = load i8, ptr %189, align 1, !tbaa !66
  %191 = sext i8 %190 to i32
  %192 = load ptr, ptr %4, align 8, !tbaa !85
  %193 = call signext i32 @fputc(i32 noundef signext %191, ptr noundef %192)
  %194 = load ptr, ptr %8, align 8, !tbaa !80
  %195 = getelementptr inbounds nuw i8, ptr %194, i32 1
  store ptr %195, ptr %8, align 8, !tbaa !80
  br label %196

196:                                              ; preds = %188, %187
  br label %46, !llvm.loop !138

197:                                              ; preds = %46
  %198 = load ptr, ptr %4, align 8, !tbaa !85
  %199 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef @.str.4) #8
  br label %200

200:                                              ; preds = %197
  %201 = load i32, ptr %7, align 4, !tbaa !10
  %202 = add nsw i32 %201, 1
  store i32 %202, ptr %7, align 4, !tbaa !10
  br label %11, !llvm.loop !139

203:                                              ; preds = %11
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
declare signext i32 @fprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind
define internal void @write_reductions_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [256 x i8], align 1
  %17 = alloca [256 x i8], align 1
  %18 = alloca [256 x i8], align 1
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %15) #8
  store ptr null, ptr %15, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 256, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr %18) #8
  %19 = load ptr, ptr %5, align 8, !tbaa !78
  %20 = call ptr @lookup_production(ptr noundef %19, ptr noundef @.str.34, i32 noundef signext 1)
  store ptr %20, ptr %13, align 8, !tbaa !87
  %21 = load ptr, ptr %13, align 8, !tbaa !87
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %90

23:                                               ; preds = %3
  %24 = load ptr, ptr %13, align 8, !tbaa !87
  %25 = getelementptr inbounds nuw %struct.Production, ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds nuw %struct.anon, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !141
  %28 = getelementptr inbounds ptr, ptr %27, i64 0
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  store ptr %29, ptr %15, align 8, !tbaa !140
  %30 = load ptr, ptr %4, align 8, !tbaa !85
  %31 = load ptr, ptr %15, align 8, !tbaa !140
  %32 = getelementptr inbounds nuw %struct.Rule, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = getelementptr inbounds nuw %struct.Production, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !72
  %36 = load ptr, ptr %15, align 8, !tbaa !140
  %37 = getelementptr inbounds nuw %struct.Rule, ptr %36, i32 0, i32 0
  %38 = load i32, ptr %37, align 8, !tbaa !142
  %39 = load ptr, ptr %6, align 8, !tbaa !80
  %40 = load ptr, ptr @reduction_args, align 8, !tbaa !80
  %41 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.35, i32 noundef signext %35, i32 noundef signext %38, ptr noundef %39, ptr noundef %40) #8
  %42 = load ptr, ptr %4, align 8, !tbaa !85
  %43 = load ptr, ptr %15, align 8, !tbaa !140
  %44 = getelementptr inbounds nuw %struct.Rule, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds nuw %struct.Production, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !72
  %48 = load ptr, ptr %15, align 8, !tbaa !140
  %49 = getelementptr inbounds nuw %struct.Rule, ptr %48, i32 0, i32 0
  %50 = load i32, ptr %49, align 8, !tbaa !142
  %51 = load ptr, ptr %6, align 8, !tbaa !80
  %52 = load ptr, ptr @reduction_args, align 8, !tbaa !80
  %53 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.36, i32 noundef signext %47, i32 noundef signext %50, ptr noundef %51, ptr noundef %52) #8
  %54 = load ptr, ptr %4, align 8, !tbaa !85
  %55 = load ptr, ptr %15, align 8, !tbaa !140
  %56 = getelementptr inbounds nuw %struct.Rule, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = getelementptr inbounds nuw %struct.Production, ptr %57, i32 0, i32 3
  %59 = load i32, ptr %58, align 8, !tbaa !72
  %60 = load ptr, ptr %15, align 8, !tbaa !140
  %61 = getelementptr inbounds nuw %struct.Rule, ptr %60, i32 0, i32 0
  %62 = load i32, ptr %61, align 8, !tbaa !142
  %63 = load ptr, ptr %6, align 8, !tbaa !80
  %64 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef @.str.37, i32 noundef signext %59, i32 noundef signext %62, ptr noundef %63) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %65

65:                                               ; preds = %86, %23
  %66 = load i32, ptr %7, align 4, !tbaa !10
  %67 = load ptr, ptr %15, align 8, !tbaa !140
  %68 = getelementptr inbounds nuw %struct.Rule, ptr %67, i32 0, i32 10
  %69 = getelementptr inbounds nuw %struct.anon.8, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !143
  %71 = icmp ult i32 %66, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  %73 = load ptr, ptr %4, align 8, !tbaa !85
  %74 = load i32, ptr %7, align 4, !tbaa !10
  %75 = load ptr, ptr %15, align 8, !tbaa !140
  %76 = getelementptr inbounds nuw %struct.Rule, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !71
  %78 = getelementptr inbounds nuw %struct.Production, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !72
  %80 = load ptr, ptr %15, align 8, !tbaa !140
  %81 = getelementptr inbounds nuw %struct.Rule, ptr %80, i32 0, i32 0
  %82 = load i32, ptr %81, align 8, !tbaa !142
  %83 = load ptr, ptr %6, align 8, !tbaa !80
  %84 = load ptr, ptr @reduction_args, align 8, !tbaa !80
  %85 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.38, i32 noundef signext %74, i32 noundef signext %79, i32 noundef signext %82, ptr noundef %83, ptr noundef %84) #8
  br label %86

86:                                               ; preds = %72
  %87 = load i32, ptr %7, align 4, !tbaa !10
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr %7, align 4, !tbaa !10
  br label %65, !llvm.loop !144

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89, %3
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %91

91:                                               ; preds = %847, %90
  %92 = load i32, ptr %7, align 4, !tbaa !10
  %93 = load ptr, ptr %5, align 8, !tbaa !78
  %94 = getelementptr inbounds nuw %struct.Grammar, ptr %93, i32 0, i32 1
  %95 = getelementptr inbounds nuw %struct.anon.2, ptr %94, i32 0, i32 0
  %96 = load i32, ptr %95, align 8, !tbaa !108
  %97 = icmp ult i32 %92, %96
  br i1 %97, label %98, label %850

98:                                               ; preds = %91
  %99 = load ptr, ptr %5, align 8, !tbaa !78
  %100 = getelementptr inbounds nuw %struct.Grammar, ptr %99, i32 0, i32 1
  %101 = getelementptr inbounds nuw %struct.anon.2, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !122
  %103 = load i32, ptr %7, align 4, !tbaa !10
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !87
  store ptr %106, ptr %12, align 8, !tbaa !87
  %107 = load ptr, ptr %12, align 8, !tbaa !87
  %108 = getelementptr inbounds nuw %struct.Production, ptr %107, i32 0, i32 2
  %109 = getelementptr inbounds nuw %struct.anon, ptr %108, i32 0, i32 0
  %110 = load i32, ptr %109, align 8, !tbaa !145
  %111 = sub i32 %110, 1
  store i32 %111, ptr %8, align 4, !tbaa !10
  br label %112

112:                                              ; preds = %387, %98
  %113 = load i32, ptr %8, align 4, !tbaa !10
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %390

115:                                              ; preds = %112
  %116 = load ptr, ptr %12, align 8, !tbaa !87
  %117 = getelementptr inbounds nuw %struct.Production, ptr %116, i32 0, i32 2
  %118 = getelementptr inbounds nuw %struct.anon, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !141
  %120 = load i32, ptr %8, align 4, !tbaa !10
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !140
  store ptr %123, ptr %14, align 8, !tbaa !140
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %124

124:                                              ; preds = %383, %115
  %125 = load i32, ptr %9, align 4, !tbaa !10
  %126 = load i32, ptr %8, align 4, !tbaa !10
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %386

128:                                              ; preds = %124
  %129 = load ptr, ptr %14, align 8, !tbaa !140
  %130 = getelementptr inbounds nuw %struct.Rule, ptr %129, i32 0, i32 6
  %131 = getelementptr inbounds nuw %struct.anon.7, ptr %130, i32 0, i32 0
  %132 = load i32, ptr %131, align 8, !tbaa !64
  %133 = load ptr, ptr %12, align 8, !tbaa !87
  %134 = getelementptr inbounds nuw %struct.Production, ptr %133, i32 0, i32 2
  %135 = getelementptr inbounds nuw %struct.anon, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !141
  %137 = load i32, ptr %9, align 4, !tbaa !10
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds ptr, ptr %136, i64 %138
  %140 = load ptr, ptr %139, align 8, !tbaa !140
  %141 = getelementptr inbounds nuw %struct.Rule, ptr %140, i32 0, i32 6
  %142 = getelementptr inbounds nuw %struct.anon.7, ptr %141, i32 0, i32 0
  %143 = load i32, ptr %142, align 8, !tbaa !64
  %144 = icmp eq i32 %132, %143
  br i1 %144, label %145, label %382

145:                                              ; preds = %128
  %146 = load ptr, ptr %14, align 8, !tbaa !140
  %147 = getelementptr inbounds nuw %struct.Rule, ptr %146, i32 0, i32 8
  %148 = getelementptr inbounds nuw %struct.Code, ptr %147, i32 0, i32 0
  %149 = load ptr, ptr %148, align 8, !tbaa !146
  %150 = load ptr, ptr %12, align 8, !tbaa !87
  %151 = getelementptr inbounds nuw %struct.Production, ptr %150, i32 0, i32 2
  %152 = getelementptr inbounds nuw %struct.anon, ptr %151, i32 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !141
  %154 = load i32, ptr %9, align 4, !tbaa !10
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %153, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !140
  %158 = getelementptr inbounds nuw %struct.Rule, ptr %157, i32 0, i32 8
  %159 = getelementptr inbounds nuw %struct.Code, ptr %158, i32 0, i32 0
  %160 = load ptr, ptr %159, align 8, !tbaa !146
  %161 = icmp eq ptr %149, %160
  br i1 %161, label %162, label %382

162:                                              ; preds = %145
  %163 = load ptr, ptr %14, align 8, !tbaa !140
  %164 = getelementptr inbounds nuw %struct.Rule, ptr %163, i32 0, i32 9
  %165 = getelementptr inbounds nuw %struct.Code, ptr %164, i32 0, i32 0
  %166 = load ptr, ptr %165, align 8, !tbaa !147
  %167 = load ptr, ptr %12, align 8, !tbaa !87
  %168 = getelementptr inbounds nuw %struct.Production, ptr %167, i32 0, i32 2
  %169 = getelementptr inbounds nuw %struct.anon, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !141
  %171 = load i32, ptr %9, align 4, !tbaa !10
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !140
  %175 = getelementptr inbounds nuw %struct.Rule, ptr %174, i32 0, i32 9
  %176 = getelementptr inbounds nuw %struct.Code, ptr %175, i32 0, i32 0
  %177 = load ptr, ptr %176, align 8, !tbaa !147
  %178 = icmp eq ptr %166, %177
  br i1 %178, label %179, label %382

179:                                              ; preds = %162
  %180 = load ptr, ptr %14, align 8, !tbaa !140
  %181 = getelementptr inbounds nuw %struct.Rule, ptr %180, i32 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !148
  %183 = load ptr, ptr %12, align 8, !tbaa !87
  %184 = getelementptr inbounds nuw %struct.Production, ptr %183, i32 0, i32 2
  %185 = getelementptr inbounds nuw %struct.anon, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !141
  %187 = load i32, ptr %9, align 4, !tbaa !10
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds ptr, ptr %186, i64 %188
  %190 = load ptr, ptr %189, align 8, !tbaa !140
  %191 = getelementptr inbounds nuw %struct.Rule, ptr %190, i32 0, i32 2
  %192 = load i32, ptr %191, align 8, !tbaa !148
  %193 = icmp eq i32 %182, %192
  br i1 %193, label %194, label %382

194:                                              ; preds = %179
  %195 = load ptr, ptr %14, align 8, !tbaa !140
  %196 = getelementptr inbounds nuw %struct.Rule, ptr %195, i32 0, i32 3
  %197 = load i32, ptr %196, align 4, !tbaa !149
  %198 = load ptr, ptr %12, align 8, !tbaa !87
  %199 = getelementptr inbounds nuw %struct.Production, ptr %198, i32 0, i32 2
  %200 = getelementptr inbounds nuw %struct.anon, ptr %199, i32 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !141
  %202 = load i32, ptr %9, align 4, !tbaa !10
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %201, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !140
  %206 = getelementptr inbounds nuw %struct.Rule, ptr %205, i32 0, i32 3
  %207 = load i32, ptr %206, align 4, !tbaa !149
  %208 = icmp eq i32 %197, %207
  br i1 %208, label %209, label %382

209:                                              ; preds = %194
  %210 = load ptr, ptr %14, align 8, !tbaa !140
  %211 = getelementptr inbounds nuw %struct.Rule, ptr %210, i32 0, i32 4
  %212 = load i32, ptr %211, align 8, !tbaa !150
  %213 = load ptr, ptr %12, align 8, !tbaa !87
  %214 = getelementptr inbounds nuw %struct.Production, ptr %213, i32 0, i32 2
  %215 = getelementptr inbounds nuw %struct.anon, ptr %214, i32 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !141
  %217 = load i32, ptr %9, align 4, !tbaa !10
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds ptr, ptr %216, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !140
  %221 = getelementptr inbounds nuw %struct.Rule, ptr %220, i32 0, i32 4
  %222 = load i32, ptr %221, align 8, !tbaa !150
  %223 = icmp eq i32 %212, %222
  br i1 %223, label %224, label %382

224:                                              ; preds = %209
  %225 = load ptr, ptr %14, align 8, !tbaa !140
  %226 = getelementptr inbounds nuw %struct.Rule, ptr %225, i32 0, i32 5
  %227 = load i32, ptr %226, align 4, !tbaa !151
  %228 = load ptr, ptr %12, align 8, !tbaa !87
  %229 = getelementptr inbounds nuw %struct.Production, ptr %228, i32 0, i32 2
  %230 = getelementptr inbounds nuw %struct.anon, ptr %229, i32 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !141
  %232 = load i32, ptr %9, align 4, !tbaa !10
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %231, i64 %233
  %235 = load ptr, ptr %234, align 8, !tbaa !140
  %236 = getelementptr inbounds nuw %struct.Rule, ptr %235, i32 0, i32 5
  %237 = load i32, ptr %236, align 4, !tbaa !151
  %238 = icmp eq i32 %227, %237
  br i1 %238, label %239, label %382

239:                                              ; preds = %224
  %240 = load ptr, ptr %14, align 8, !tbaa !140
  %241 = getelementptr inbounds nuw %struct.Rule, ptr %240, i32 0, i32 11
  %242 = load i32, ptr %241, align 8, !tbaa !152
  %243 = load ptr, ptr %12, align 8, !tbaa !87
  %244 = getelementptr inbounds nuw %struct.Production, ptr %243, i32 0, i32 2
  %245 = getelementptr inbounds nuw %struct.anon, ptr %244, i32 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !141
  %247 = load i32, ptr %9, align 4, !tbaa !10
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds ptr, ptr %246, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !140
  %251 = getelementptr inbounds nuw %struct.Rule, ptr %250, i32 0, i32 11
  %252 = load i32, ptr %251, align 8, !tbaa !152
  %253 = icmp eq i32 %242, %252
  br i1 %253, label %254, label %382

254:                                              ; preds = %239
  %255 = load ptr, ptr %14, align 8, !tbaa !140
  %256 = getelementptr inbounds nuw %struct.Rule, ptr %255, i32 0, i32 10
  %257 = getelementptr inbounds nuw %struct.anon.8, ptr %256, i32 0, i32 0
  %258 = load i32, ptr %257, align 8, !tbaa !143
  %259 = load ptr, ptr %12, align 8, !tbaa !87
  %260 = getelementptr inbounds nuw %struct.Production, ptr %259, i32 0, i32 2
  %261 = getelementptr inbounds nuw %struct.anon, ptr %260, i32 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !141
  %263 = load i32, ptr %9, align 4, !tbaa !10
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %262, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !140
  %267 = getelementptr inbounds nuw %struct.Rule, ptr %266, i32 0, i32 10
  %268 = getelementptr inbounds nuw %struct.anon.8, ptr %267, i32 0, i32 0
  %269 = load i32, ptr %268, align 8, !tbaa !143
  %270 = icmp ne i32 %258, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %254
  br label %383

272:                                              ; preds = %254
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %273

273:                                              ; preds = %367, %272
  %274 = load i32, ptr %10, align 4, !tbaa !10
  %275 = load ptr, ptr %14, align 8, !tbaa !140
  %276 = getelementptr inbounds nuw %struct.Rule, ptr %275, i32 0, i32 10
  %277 = getelementptr inbounds nuw %struct.anon.8, ptr %276, i32 0, i32 0
  %278 = load i32, ptr %277, align 8, !tbaa !143
  %279 = icmp ult i32 %274, %278
  br i1 %279, label %280, label %370

280:                                              ; preds = %273
  %281 = load ptr, ptr %14, align 8, !tbaa !140
  %282 = getelementptr inbounds nuw %struct.Rule, ptr %281, i32 0, i32 10
  %283 = getelementptr inbounds nuw %struct.anon.8, ptr %282, i32 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !153
  %285 = load i32, ptr %10, align 4, !tbaa !10
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds ptr, ptr %284, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !154
  %289 = icmp ne ptr %288, null
  br i1 %289, label %308, label %290

290:                                              ; preds = %280
  %291 = load ptr, ptr %12, align 8, !tbaa !87
  %292 = getelementptr inbounds nuw %struct.Production, ptr %291, i32 0, i32 2
  %293 = getelementptr inbounds nuw %struct.anon, ptr %292, i32 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !141
  %295 = load i32, ptr %9, align 4, !tbaa !10
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %294, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !140
  %299 = getelementptr inbounds nuw %struct.Rule, ptr %298, i32 0, i32 10
  %300 = getelementptr inbounds nuw %struct.anon.8, ptr %299, i32 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !153
  %302 = load i32, ptr %10, align 4, !tbaa !10
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds ptr, ptr %301, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !154
  %306 = icmp ne ptr %305, null
  br i1 %306, label %308, label %307

307:                                              ; preds = %290
  br label %367

308:                                              ; preds = %290, %280
  %309 = load ptr, ptr %14, align 8, !tbaa !140
  %310 = getelementptr inbounds nuw %struct.Rule, ptr %309, i32 0, i32 10
  %311 = getelementptr inbounds nuw %struct.anon.8, ptr %310, i32 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !153
  %313 = load i32, ptr %10, align 4, !tbaa !10
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %312, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !154
  %317 = icmp ne ptr %316, null
  br i1 %317, label %318, label %335

318:                                              ; preds = %308
  %319 = load ptr, ptr %12, align 8, !tbaa !87
  %320 = getelementptr inbounds nuw %struct.Production, ptr %319, i32 0, i32 2
  %321 = getelementptr inbounds nuw %struct.anon, ptr %320, i32 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !141
  %323 = load i32, ptr %9, align 4, !tbaa !10
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds ptr, ptr %322, i64 %324
  %326 = load ptr, ptr %325, align 8, !tbaa !140
  %327 = getelementptr inbounds nuw %struct.Rule, ptr %326, i32 0, i32 10
  %328 = getelementptr inbounds nuw %struct.anon.8, ptr %327, i32 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !153
  %330 = load i32, ptr %10, align 4, !tbaa !10
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds ptr, ptr %329, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !154
  %334 = icmp ne ptr %333, null
  br i1 %334, label %336, label %335

335:                                              ; preds = %318, %308
  br label %381

336:                                              ; preds = %318
  %337 = load ptr, ptr %14, align 8, !tbaa !140
  %338 = getelementptr inbounds nuw %struct.Rule, ptr %337, i32 0, i32 10
  %339 = getelementptr inbounds nuw %struct.anon.8, ptr %338, i32 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !153
  %341 = load i32, ptr %10, align 4, !tbaa !10
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds ptr, ptr %340, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !154
  %345 = getelementptr inbounds nuw %struct.Code, ptr %344, i32 0, i32 0
  %346 = load ptr, ptr %345, align 8, !tbaa !131
  %347 = load ptr, ptr %12, align 8, !tbaa !87
  %348 = getelementptr inbounds nuw %struct.Production, ptr %347, i32 0, i32 2
  %349 = getelementptr inbounds nuw %struct.anon, ptr %348, i32 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !141
  %351 = load i32, ptr %9, align 4, !tbaa !10
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds ptr, ptr %350, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !140
  %355 = getelementptr inbounds nuw %struct.Rule, ptr %354, i32 0, i32 10
  %356 = getelementptr inbounds nuw %struct.anon.8, ptr %355, i32 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !153
  %358 = load i32, ptr %10, align 4, !tbaa !10
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds ptr, ptr %357, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !154
  %362 = getelementptr inbounds nuw %struct.Code, ptr %361, i32 0, i32 0
  %363 = load ptr, ptr %362, align 8, !tbaa !131
  %364 = icmp ne ptr %346, %363
  br i1 %364, label %365, label %366

365:                                              ; preds = %336
  br label %381

366:                                              ; preds = %336
  br label %367

367:                                              ; preds = %366, %307
  %368 = load i32, ptr %10, align 4, !tbaa !10
  %369 = add nsw i32 %368, 1
  store i32 %369, ptr %10, align 4, !tbaa !10
  br label %273, !llvm.loop !155

370:                                              ; preds = %273
  %371 = load ptr, ptr %12, align 8, !tbaa !87
  %372 = getelementptr inbounds nuw %struct.Production, ptr %371, i32 0, i32 2
  %373 = getelementptr inbounds nuw %struct.anon, ptr %372, i32 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !141
  %375 = load i32, ptr %9, align 4, !tbaa !10
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds ptr, ptr %374, i64 %376
  %378 = load ptr, ptr %377, align 8, !tbaa !140
  %379 = load ptr, ptr %14, align 8, !tbaa !140
  %380 = getelementptr inbounds nuw %struct.Rule, ptr %379, i32 0, i32 12
  store ptr %378, ptr %380, align 8, !tbaa !156
  br label %386

381:                                              ; preds = %365, %335
  br label %382

382:                                              ; preds = %381, %239, %224, %209, %194, %179, %162, %145, %128
  br label %383

383:                                              ; preds = %382, %271
  %384 = load i32, ptr %9, align 4, !tbaa !10
  %385 = add nsw i32 %384, 1
  store i32 %385, ptr %9, align 4, !tbaa !10
  br label %124, !llvm.loop !157

386:                                              ; preds = %370, %124
  br label %387

387:                                              ; preds = %386
  %388 = load i32, ptr %8, align 4, !tbaa !10
  %389 = add nsw i32 %388, -1
  store i32 %389, ptr %8, align 4, !tbaa !10
  br label %112, !llvm.loop !158

390:                                              ; preds = %112
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %391

391:                                              ; preds = %843, %390
  %392 = load i32, ptr %8, align 4, !tbaa !10
  %393 = load ptr, ptr %12, align 8, !tbaa !87
  %394 = getelementptr inbounds nuw %struct.Production, ptr %393, i32 0, i32 2
  %395 = getelementptr inbounds nuw %struct.anon, ptr %394, i32 0, i32 0
  %396 = load i32, ptr %395, align 8, !tbaa !145
  %397 = icmp ult i32 %392, %396
  br i1 %397, label %398, label %846

398:                                              ; preds = %391
  %399 = load ptr, ptr %12, align 8, !tbaa !87
  %400 = getelementptr inbounds nuw %struct.Production, ptr %399, i32 0, i32 2
  %401 = getelementptr inbounds nuw %struct.anon, ptr %400, i32 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !141
  %403 = load i32, ptr %8, align 4, !tbaa !10
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds ptr, ptr %402, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !140
  store ptr %406, ptr %14, align 8, !tbaa !140
  %407 = load ptr, ptr %14, align 8, !tbaa !140
  %408 = getelementptr inbounds nuw %struct.Rule, ptr %407, i32 0, i32 12
  %409 = load ptr, ptr %408, align 8, !tbaa !156
  %410 = icmp ne ptr %409, null
  br i1 %410, label %411, label %412

411:                                              ; preds = %398
  br label %843

412:                                              ; preds = %398
  %413 = load ptr, ptr %14, align 8, !tbaa !140
  %414 = getelementptr inbounds nuw %struct.Rule, ptr %413, i32 0, i32 8
  %415 = getelementptr inbounds nuw %struct.Code, ptr %414, i32 0, i32 0
  %416 = load ptr, ptr %415, align 8, !tbaa !146
  %417 = icmp ne ptr %416, null
  br i1 %417, label %418, label %445

418:                                              ; preds = %412
  %419 = load ptr, ptr %4, align 8, !tbaa !85
  %420 = load ptr, ptr %14, align 8, !tbaa !140
  %421 = getelementptr inbounds nuw %struct.Rule, ptr %420, i32 0, i32 1
  %422 = load ptr, ptr %421, align 8, !tbaa !71
  %423 = getelementptr inbounds nuw %struct.Production, ptr %422, i32 0, i32 3
  %424 = load i32, ptr %423, align 8, !tbaa !72
  %425 = load ptr, ptr %14, align 8, !tbaa !140
  %426 = getelementptr inbounds nuw %struct.Rule, ptr %425, i32 0, i32 0
  %427 = load i32, ptr %426, align 8, !tbaa !142
  %428 = load ptr, ptr %6, align 8, !tbaa !80
  %429 = load ptr, ptr @reduction_args, align 8, !tbaa !80
  %430 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef @.str.39, i32 noundef signext %424, i32 noundef signext %427, ptr noundef %428, ptr noundef %429) #8
  %431 = load ptr, ptr %4, align 8, !tbaa !85
  %432 = load ptr, ptr %5, align 8, !tbaa !78
  %433 = load ptr, ptr %14, align 8, !tbaa !140
  %434 = load ptr, ptr %14, align 8, !tbaa !140
  %435 = getelementptr inbounds nuw %struct.Rule, ptr %434, i32 0, i32 8
  %436 = getelementptr inbounds nuw %struct.Code, ptr %435, i32 0, i32 0
  %437 = load ptr, ptr %436, align 8, !tbaa !146
  %438 = load ptr, ptr %14, align 8, !tbaa !140
  %439 = getelementptr inbounds nuw %struct.Rule, ptr %438, i32 0, i32 8
  %440 = getelementptr inbounds nuw %struct.Code, ptr %439, i32 0, i32 1
  %441 = load i32, ptr %440, align 8, !tbaa !159
  %442 = load ptr, ptr %5, align 8, !tbaa !78
  %443 = getelementptr inbounds nuw %struct.Grammar, ptr %442, i32 0, i32 0
  %444 = load ptr, ptr %443, align 8, !tbaa !130
  call void @write_code_as_C(ptr noundef %431, ptr noundef %432, ptr noundef %433, ptr noundef %437, i32 noundef signext %441, ptr noundef %444)
  br label %445

445:                                              ; preds = %418, %412
  %446 = load ptr, ptr %14, align 8, !tbaa !140
  %447 = getelementptr inbounds nuw %struct.Rule, ptr %446, i32 0, i32 9
  %448 = getelementptr inbounds nuw %struct.Code, ptr %447, i32 0, i32 0
  %449 = load ptr, ptr %448, align 8, !tbaa !147
  %450 = icmp ne ptr %449, null
  br i1 %450, label %451, label %478

451:                                              ; preds = %445
  %452 = load ptr, ptr %4, align 8, !tbaa !85
  %453 = load ptr, ptr %14, align 8, !tbaa !140
  %454 = getelementptr inbounds nuw %struct.Rule, ptr %453, i32 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !71
  %456 = getelementptr inbounds nuw %struct.Production, ptr %455, i32 0, i32 3
  %457 = load i32, ptr %456, align 8, !tbaa !72
  %458 = load ptr, ptr %14, align 8, !tbaa !140
  %459 = getelementptr inbounds nuw %struct.Rule, ptr %458, i32 0, i32 0
  %460 = load i32, ptr %459, align 8, !tbaa !142
  %461 = load ptr, ptr %6, align 8, !tbaa !80
  %462 = load ptr, ptr @reduction_args, align 8, !tbaa !80
  %463 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef @.str.40, i32 noundef signext %457, i32 noundef signext %460, ptr noundef %461, ptr noundef %462) #8
  %464 = load ptr, ptr %4, align 8, !tbaa !85
  %465 = load ptr, ptr %5, align 8, !tbaa !78
  %466 = load ptr, ptr %14, align 8, !tbaa !140
  %467 = load ptr, ptr %14, align 8, !tbaa !140
  %468 = getelementptr inbounds nuw %struct.Rule, ptr %467, i32 0, i32 9
  %469 = getelementptr inbounds nuw %struct.Code, ptr %468, i32 0, i32 0
  %470 = load ptr, ptr %469, align 8, !tbaa !147
  %471 = load ptr, ptr %14, align 8, !tbaa !140
  %472 = getelementptr inbounds nuw %struct.Rule, ptr %471, i32 0, i32 9
  %473 = getelementptr inbounds nuw %struct.Code, ptr %472, i32 0, i32 1
  %474 = load i32, ptr %473, align 8, !tbaa !160
  %475 = load ptr, ptr %5, align 8, !tbaa !78
  %476 = getelementptr inbounds nuw %struct.Grammar, ptr %475, i32 0, i32 0
  %477 = load ptr, ptr %476, align 8, !tbaa !130
  call void @write_code_as_C(ptr noundef %464, ptr noundef %465, ptr noundef %466, ptr noundef %470, i32 noundef signext %474, ptr noundef %477)
  br label %478

478:                                              ; preds = %451, %445
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %479

479:                                              ; preds = %537, %478
  %480 = load i32, ptr %9, align 4, !tbaa !10
  %481 = load ptr, ptr %14, align 8, !tbaa !140
  %482 = getelementptr inbounds nuw %struct.Rule, ptr %481, i32 0, i32 10
  %483 = getelementptr inbounds nuw %struct.anon.8, ptr %482, i32 0, i32 0
  %484 = load i32, ptr %483, align 8, !tbaa !143
  %485 = icmp ult i32 %480, %484
  br i1 %485, label %486, label %540

486:                                              ; preds = %479
  %487 = load ptr, ptr %14, align 8, !tbaa !140
  %488 = getelementptr inbounds nuw %struct.Rule, ptr %487, i32 0, i32 10
  %489 = getelementptr inbounds nuw %struct.anon.8, ptr %488, i32 0, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !153
  %491 = load i32, ptr %9, align 4, !tbaa !10
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds ptr, ptr %490, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !154
  %495 = icmp ne ptr %494, null
  br i1 %495, label %496, label %536

496:                                              ; preds = %486
  %497 = load ptr, ptr %4, align 8, !tbaa !85
  %498 = load i32, ptr %9, align 4, !tbaa !10
  %499 = load ptr, ptr %14, align 8, !tbaa !140
  %500 = getelementptr inbounds nuw %struct.Rule, ptr %499, i32 0, i32 1
  %501 = load ptr, ptr %500, align 8, !tbaa !71
  %502 = getelementptr inbounds nuw %struct.Production, ptr %501, i32 0, i32 3
  %503 = load i32, ptr %502, align 8, !tbaa !72
  %504 = load ptr, ptr %14, align 8, !tbaa !140
  %505 = getelementptr inbounds nuw %struct.Rule, ptr %504, i32 0, i32 0
  %506 = load i32, ptr %505, align 8, !tbaa !142
  %507 = load ptr, ptr %6, align 8, !tbaa !80
  %508 = load ptr, ptr @reduction_args, align 8, !tbaa !80
  %509 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %497, ptr noundef @.str.41, i32 noundef signext %498, i32 noundef signext %503, i32 noundef signext %506, ptr noundef %507, ptr noundef %508) #8
  %510 = load ptr, ptr %4, align 8, !tbaa !85
  %511 = load ptr, ptr %5, align 8, !tbaa !78
  %512 = load ptr, ptr %14, align 8, !tbaa !140
  %513 = load ptr, ptr %14, align 8, !tbaa !140
  %514 = getelementptr inbounds nuw %struct.Rule, ptr %513, i32 0, i32 10
  %515 = getelementptr inbounds nuw %struct.anon.8, ptr %514, i32 0, i32 2
  %516 = load ptr, ptr %515, align 8, !tbaa !153
  %517 = load i32, ptr %9, align 4, !tbaa !10
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds ptr, ptr %516, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !154
  %521 = getelementptr inbounds nuw %struct.Code, ptr %520, i32 0, i32 0
  %522 = load ptr, ptr %521, align 8, !tbaa !131
  %523 = load ptr, ptr %14, align 8, !tbaa !140
  %524 = getelementptr inbounds nuw %struct.Rule, ptr %523, i32 0, i32 10
  %525 = getelementptr inbounds nuw %struct.anon.8, ptr %524, i32 0, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !153
  %527 = load i32, ptr %9, align 4, !tbaa !10
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds ptr, ptr %526, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !154
  %531 = getelementptr inbounds nuw %struct.Code, ptr %530, i32 0, i32 1
  %532 = load i32, ptr %531, align 8, !tbaa !129
  %533 = load ptr, ptr %5, align 8, !tbaa !78
  %534 = getelementptr inbounds nuw %struct.Grammar, ptr %533, i32 0, i32 0
  %535 = load ptr, ptr %534, align 8, !tbaa !130
  call void @write_code_as_C(ptr noundef %510, ptr noundef %511, ptr noundef %512, ptr noundef %522, i32 noundef signext %532, ptr noundef %535)
  br label %536

536:                                              ; preds = %496, %486
  br label %537

537:                                              ; preds = %536
  %538 = load i32, ptr %9, align 4, !tbaa !10
  %539 = add nsw i32 %538, 1
  store i32 %539, ptr %9, align 4, !tbaa !10
  br label %479, !llvm.loop !161

540:                                              ; preds = %479
  %541 = load ptr, ptr %14, align 8, !tbaa !140
  %542 = getelementptr inbounds nuw %struct.Rule, ptr %541, i32 0, i32 8
  %543 = getelementptr inbounds nuw %struct.Code, ptr %542, i32 0, i32 0
  %544 = load ptr, ptr %543, align 8, !tbaa !146
  %545 = icmp ne ptr %544, null
  br i1 %545, label %546, label %558

546:                                              ; preds = %540
  %547 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 0
  %548 = load ptr, ptr %14, align 8, !tbaa !140
  %549 = getelementptr inbounds nuw %struct.Rule, ptr %548, i32 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !71
  %551 = getelementptr inbounds nuw %struct.Production, ptr %550, i32 0, i32 3
  %552 = load i32, ptr %551, align 8, !tbaa !72
  %553 = load ptr, ptr %14, align 8, !tbaa !140
  %554 = getelementptr inbounds nuw %struct.Rule, ptr %553, i32 0, i32 0
  %555 = load i32, ptr %554, align 8, !tbaa !142
  %556 = load ptr, ptr %6, align 8, !tbaa !80
  %557 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %547, ptr noundef @.str.42, i32 noundef signext %552, i32 noundef signext %555, ptr noundef %556) #8
  br label %583

558:                                              ; preds = %540
  %559 = load ptr, ptr %15, align 8, !tbaa !140
  %560 = icmp ne ptr %559, null
  br i1 %560, label %561, label %579

561:                                              ; preds = %558
  %562 = load ptr, ptr %15, align 8, !tbaa !140
  %563 = getelementptr inbounds nuw %struct.Rule, ptr %562, i32 0, i32 8
  %564 = getelementptr inbounds nuw %struct.Code, ptr %563, i32 0, i32 0
  %565 = load ptr, ptr %564, align 8, !tbaa !146
  %566 = icmp ne ptr %565, null
  br i1 %566, label %567, label %579

567:                                              ; preds = %561
  %568 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 0
  %569 = load ptr, ptr %15, align 8, !tbaa !140
  %570 = getelementptr inbounds nuw %struct.Rule, ptr %569, i32 0, i32 1
  %571 = load ptr, ptr %570, align 8, !tbaa !71
  %572 = getelementptr inbounds nuw %struct.Production, ptr %571, i32 0, i32 3
  %573 = load i32, ptr %572, align 8, !tbaa !72
  %574 = load ptr, ptr %15, align 8, !tbaa !140
  %575 = getelementptr inbounds nuw %struct.Rule, ptr %574, i32 0, i32 0
  %576 = load i32, ptr %575, align 8, !tbaa !142
  %577 = load ptr, ptr %6, align 8, !tbaa !80
  %578 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %568, ptr noundef @.str.42, i32 noundef signext %573, i32 noundef signext %576, ptr noundef %577) #8
  br label %582

579:                                              ; preds = %561, %558
  %580 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 0
  %581 = call ptr @strcpy(ptr noundef %580, ptr noundef @.str.43) #8
  br label %582

582:                                              ; preds = %579, %567
  br label %583

583:                                              ; preds = %582, %546
  %584 = load ptr, ptr %14, align 8, !tbaa !140
  %585 = getelementptr inbounds nuw %struct.Rule, ptr %584, i32 0, i32 9
  %586 = getelementptr inbounds nuw %struct.Code, ptr %585, i32 0, i32 0
  %587 = load ptr, ptr %586, align 8, !tbaa !147
  %588 = icmp ne ptr %587, null
  br i1 %588, label %589, label %601

589:                                              ; preds = %583
  %590 = getelementptr inbounds [256 x i8], ptr %16, i64 0, i64 0
  %591 = load ptr, ptr %14, align 8, !tbaa !140
  %592 = getelementptr inbounds nuw %struct.Rule, ptr %591, i32 0, i32 1
  %593 = load ptr, ptr %592, align 8, !tbaa !71
  %594 = getelementptr inbounds nuw %struct.Production, ptr %593, i32 0, i32 3
  %595 = load i32, ptr %594, align 8, !tbaa !72
  %596 = load ptr, ptr %14, align 8, !tbaa !140
  %597 = getelementptr inbounds nuw %struct.Rule, ptr %596, i32 0, i32 0
  %598 = load i32, ptr %597, align 8, !tbaa !142
  %599 = load ptr, ptr %6, align 8, !tbaa !80
  %600 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %590, ptr noundef @.str.44, i32 noundef signext %595, i32 noundef signext %598, ptr noundef %599) #8
  br label %626

601:                                              ; preds = %583
  %602 = load ptr, ptr %15, align 8, !tbaa !140
  %603 = icmp ne ptr %602, null
  br i1 %603, label %604, label %622

604:                                              ; preds = %601
  %605 = load ptr, ptr %15, align 8, !tbaa !140
  %606 = getelementptr inbounds nuw %struct.Rule, ptr %605, i32 0, i32 9
  %607 = getelementptr inbounds nuw %struct.Code, ptr %606, i32 0, i32 0
  %608 = load ptr, ptr %607, align 8, !tbaa !147
  %609 = icmp ne ptr %608, null
  br i1 %609, label %610, label %622

610:                                              ; preds = %604
  %611 = getelementptr inbounds [256 x i8], ptr %16, i64 0, i64 0
  %612 = load ptr, ptr %15, align 8, !tbaa !140
  %613 = getelementptr inbounds nuw %struct.Rule, ptr %612, i32 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !71
  %615 = getelementptr inbounds nuw %struct.Production, ptr %614, i32 0, i32 3
  %616 = load i32, ptr %615, align 8, !tbaa !72
  %617 = load ptr, ptr %15, align 8, !tbaa !140
  %618 = getelementptr inbounds nuw %struct.Rule, ptr %617, i32 0, i32 0
  %619 = load i32, ptr %618, align 8, !tbaa !142
  %620 = load ptr, ptr %6, align 8, !tbaa !80
  %621 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %611, ptr noundef @.str.44, i32 noundef signext %616, i32 noundef signext %619, ptr noundef %620) #8
  br label %625

622:                                              ; preds = %604, %601
  %623 = getelementptr inbounds [256 x i8], ptr %16, i64 0, i64 0
  %624 = call ptr @strcpy(ptr noundef %623, ptr noundef @.str.43) #8
  br label %625

625:                                              ; preds = %622, %610
  br label %626

626:                                              ; preds = %625, %589
  %627 = load ptr, ptr %14, align 8, !tbaa !140
  %628 = getelementptr inbounds nuw %struct.Rule, ptr %627, i32 0, i32 10
  %629 = getelementptr inbounds nuw %struct.anon.8, ptr %628, i32 0, i32 0
  %630 = load i32, ptr %629, align 8, !tbaa !143
  store i32 %630, ptr %11, align 4, !tbaa !10
  %631 = load ptr, ptr %14, align 8, !tbaa !140
  %632 = getelementptr inbounds nuw %struct.Rule, ptr %631, i32 0, i32 10
  %633 = getelementptr inbounds nuw %struct.anon.8, ptr %632, i32 0, i32 0
  %634 = load i32, ptr %633, align 8, !tbaa !143
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %645, label %636

636:                                              ; preds = %626
  %637 = load ptr, ptr %15, align 8, !tbaa !140
  %638 = icmp ne ptr %637, null
  br i1 %638, label %639, label %790

639:                                              ; preds = %636
  %640 = load ptr, ptr %15, align 8, !tbaa !140
  %641 = getelementptr inbounds nuw %struct.Rule, ptr %640, i32 0, i32 10
  %642 = getelementptr inbounds nuw %struct.anon.8, ptr %641, i32 0, i32 0
  %643 = load i32, ptr %642, align 8, !tbaa !143
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %790

645:                                              ; preds = %639, %626
  %646 = load ptr, ptr %15, align 8, !tbaa !140
  %647 = icmp ne ptr %646, null
  br i1 %647, label %648, label %660

648:                                              ; preds = %645
  %649 = load ptr, ptr %15, align 8, !tbaa !140
  %650 = getelementptr inbounds nuw %struct.Rule, ptr %649, i32 0, i32 10
  %651 = getelementptr inbounds nuw %struct.anon.8, ptr %650, i32 0, i32 0
  %652 = load i32, ptr %651, align 8, !tbaa !143
  %653 = load i32, ptr %11, align 4, !tbaa !10
  %654 = icmp ugt i32 %652, %653
  br i1 %654, label %655, label %660

655:                                              ; preds = %648
  %656 = load ptr, ptr %15, align 8, !tbaa !140
  %657 = getelementptr inbounds nuw %struct.Rule, ptr %656, i32 0, i32 10
  %658 = getelementptr inbounds nuw %struct.anon.8, ptr %657, i32 0, i32 0
  %659 = load i32, ptr %658, align 8, !tbaa !143
  store i32 %659, ptr %11, align 4, !tbaa !10
  br label %660

660:                                              ; preds = %655, %648, %645
  %661 = load ptr, ptr %14, align 8, !tbaa !140
  %662 = getelementptr inbounds nuw %struct.Rule, ptr %661, i32 0, i32 10
  %663 = getelementptr inbounds nuw %struct.anon.8, ptr %662, i32 0, i32 0
  %664 = load i32, ptr %663, align 8, !tbaa !143
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %678, label %666

666:                                              ; preds = %660
  %667 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0
  %668 = load ptr, ptr %15, align 8, !tbaa !140
  %669 = getelementptr inbounds nuw %struct.Rule, ptr %668, i32 0, i32 1
  %670 = load ptr, ptr %669, align 8, !tbaa !71
  %671 = getelementptr inbounds nuw %struct.Production, ptr %670, i32 0, i32 3
  %672 = load i32, ptr %671, align 8, !tbaa !72
  %673 = load ptr, ptr %15, align 8, !tbaa !140
  %674 = getelementptr inbounds nuw %struct.Rule, ptr %673, i32 0, i32 0
  %675 = load i32, ptr %674, align 8, !tbaa !142
  %676 = load ptr, ptr %6, align 8, !tbaa !80
  %677 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %667, ptr noundef @.str.45, i32 noundef signext %672, i32 noundef signext %675, ptr noundef %676) #8
  br label %789

678:                                              ; preds = %660
  %679 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0
  %680 = load ptr, ptr %14, align 8, !tbaa !140
  %681 = getelementptr inbounds nuw %struct.Rule, ptr %680, i32 0, i32 1
  %682 = load ptr, ptr %681, align 8, !tbaa !71
  %683 = getelementptr inbounds nuw %struct.Production, ptr %682, i32 0, i32 3
  %684 = load i32, ptr %683, align 8, !tbaa !72
  %685 = load ptr, ptr %14, align 8, !tbaa !140
  %686 = getelementptr inbounds nuw %struct.Rule, ptr %685, i32 0, i32 0
  %687 = load i32, ptr %686, align 8, !tbaa !142
  %688 = load ptr, ptr %6, align 8, !tbaa !80
  %689 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %679, ptr noundef @.str.45, i32 noundef signext %684, i32 noundef signext %687, ptr noundef %688) #8
  %690 = load ptr, ptr %4, align 8, !tbaa !85
  %691 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0
  %692 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %690, ptr noundef @.str.46, ptr noundef %691) #8
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %693

693:                                              ; preds = %783, %678
  %694 = load i32, ptr %9, align 4, !tbaa !10
  %695 = load i32, ptr %11, align 4, !tbaa !10
  %696 = icmp slt i32 %694, %695
  br i1 %696, label %697, label %786

697:                                              ; preds = %693
  %698 = load ptr, ptr %14, align 8, !tbaa !140
  %699 = getelementptr inbounds nuw %struct.Rule, ptr %698, i32 0, i32 10
  %700 = getelementptr inbounds nuw %struct.anon.8, ptr %699, i32 0, i32 0
  %701 = load i32, ptr %700, align 8, !tbaa !143
  %702 = load i32, ptr %9, align 4, !tbaa !10
  %703 = icmp ugt i32 %701, %702
  br i1 %703, label %704, label %733

704:                                              ; preds = %697
  %705 = load ptr, ptr %14, align 8, !tbaa !140
  %706 = getelementptr inbounds nuw %struct.Rule, ptr %705, i32 0, i32 10
  %707 = getelementptr inbounds nuw %struct.anon.8, ptr %706, i32 0, i32 2
  %708 = load ptr, ptr %707, align 8, !tbaa !153
  %709 = load i32, ptr %9, align 4, !tbaa !10
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds ptr, ptr %708, i64 %710
  %712 = load ptr, ptr %711, align 8, !tbaa !154
  %713 = icmp ne ptr %712, null
  br i1 %713, label %714, label %733

714:                                              ; preds = %704
  %715 = load ptr, ptr %4, align 8, !tbaa !85
  %716 = load i32, ptr %9, align 4, !tbaa !10
  %717 = load ptr, ptr %14, align 8, !tbaa !140
  %718 = getelementptr inbounds nuw %struct.Rule, ptr %717, i32 0, i32 1
  %719 = load ptr, ptr %718, align 8, !tbaa !71
  %720 = getelementptr inbounds nuw %struct.Production, ptr %719, i32 0, i32 3
  %721 = load i32, ptr %720, align 8, !tbaa !72
  %722 = load ptr, ptr %14, align 8, !tbaa !140
  %723 = getelementptr inbounds nuw %struct.Rule, ptr %722, i32 0, i32 0
  %724 = load i32, ptr %723, align 8, !tbaa !142
  %725 = load ptr, ptr %6, align 8, !tbaa !80
  %726 = load i32, ptr %9, align 4, !tbaa !10
  %727 = load i32, ptr %11, align 4, !tbaa !10
  %728 = sub nsw i32 %727, 1
  %729 = icmp slt i32 %726, %728
  %730 = zext i1 %729 to i64
  %731 = select i1 %729, ptr @.str.24, ptr @.str.23
  %732 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %715, ptr noundef @.str.47, i32 noundef signext %716, i32 noundef signext %721, i32 noundef signext %724, ptr noundef %725, ptr noundef %731) #8
  br label %782

733:                                              ; preds = %704, %697
  %734 = load ptr, ptr %15, align 8, !tbaa !140
  %735 = icmp ne ptr %734, null
  br i1 %735, label %736, label %772

736:                                              ; preds = %733
  %737 = load ptr, ptr %15, align 8, !tbaa !140
  %738 = getelementptr inbounds nuw %struct.Rule, ptr %737, i32 0, i32 10
  %739 = getelementptr inbounds nuw %struct.anon.8, ptr %738, i32 0, i32 0
  %740 = load i32, ptr %739, align 8, !tbaa !143
  %741 = load i32, ptr %9, align 4, !tbaa !10
  %742 = icmp ugt i32 %740, %741
  br i1 %742, label %743, label %772

743:                                              ; preds = %736
  %744 = load ptr, ptr %15, align 8, !tbaa !140
  %745 = getelementptr inbounds nuw %struct.Rule, ptr %744, i32 0, i32 10
  %746 = getelementptr inbounds nuw %struct.anon.8, ptr %745, i32 0, i32 2
  %747 = load ptr, ptr %746, align 8, !tbaa !153
  %748 = load i32, ptr %9, align 4, !tbaa !10
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds ptr, ptr %747, i64 %749
  %751 = load ptr, ptr %750, align 8, !tbaa !154
  %752 = icmp ne ptr %751, null
  br i1 %752, label %753, label %772

753:                                              ; preds = %743
  %754 = load ptr, ptr %4, align 8, !tbaa !85
  %755 = load i32, ptr %9, align 4, !tbaa !10
  %756 = load ptr, ptr %15, align 8, !tbaa !140
  %757 = getelementptr inbounds nuw %struct.Rule, ptr %756, i32 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !71
  %759 = getelementptr inbounds nuw %struct.Production, ptr %758, i32 0, i32 3
  %760 = load i32, ptr %759, align 8, !tbaa !72
  %761 = load ptr, ptr %15, align 8, !tbaa !140
  %762 = getelementptr inbounds nuw %struct.Rule, ptr %761, i32 0, i32 0
  %763 = load i32, ptr %762, align 8, !tbaa !142
  %764 = load ptr, ptr %6, align 8, !tbaa !80
  %765 = load i32, ptr %9, align 4, !tbaa !10
  %766 = load i32, ptr %11, align 4, !tbaa !10
  %767 = sub nsw i32 %766, 1
  %768 = icmp slt i32 %765, %767
  %769 = zext i1 %768 to i64
  %770 = select i1 %768, ptr @.str.24, ptr @.str.23
  %771 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %754, ptr noundef @.str.47, i32 noundef signext %755, i32 noundef signext %760, i32 noundef signext %763, ptr noundef %764, ptr noundef %770) #8
  br label %781

772:                                              ; preds = %743, %736, %733
  %773 = load ptr, ptr %4, align 8, !tbaa !85
  %774 = load i32, ptr %9, align 4, !tbaa !10
  %775 = load i32, ptr %11, align 4, !tbaa !10
  %776 = sub nsw i32 %775, 1
  %777 = icmp slt i32 %774, %776
  %778 = zext i1 %777 to i64
  %779 = select i1 %777, ptr @.str.24, ptr @.str.23
  %780 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %773, ptr noundef @.str.48, ptr noundef %779) #8
  br label %781

781:                                              ; preds = %772, %753
  br label %782

782:                                              ; preds = %781, %714
  br label %783

783:                                              ; preds = %782
  %784 = load i32, ptr %9, align 4, !tbaa !10
  %785 = add nsw i32 %784, 1
  store i32 %785, ptr %9, align 4, !tbaa !10
  br label %693, !llvm.loop !162

786:                                              ; preds = %693
  %787 = load ptr, ptr %4, align 8, !tbaa !85
  %788 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %787, ptr noundef @.str.49) #8
  br label %789

789:                                              ; preds = %786, %666
  br label %793

790:                                              ; preds = %639, %636
  %791 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0
  %792 = call ptr @strcpy(ptr noundef %791, ptr noundef @.str.43) #8
  br label %793

793:                                              ; preds = %790, %789
  %794 = load ptr, ptr %4, align 8, !tbaa !85
  %795 = load ptr, ptr %14, align 8, !tbaa !140
  %796 = getelementptr inbounds nuw %struct.Rule, ptr %795, i32 0, i32 0
  %797 = load i32, ptr %796, align 8, !tbaa !142
  %798 = load ptr, ptr %6, align 8, !tbaa !80
  %799 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %794, ptr noundef @.str.50, i32 noundef signext %797, ptr noundef %798) #8
  %800 = load ptr, ptr %4, align 8, !tbaa !85
  %801 = load ptr, ptr %14, align 8, !tbaa !140
  %802 = getelementptr inbounds nuw %struct.Rule, ptr %801, i32 0, i32 6
  %803 = getelementptr inbounds nuw %struct.anon.7, ptr %802, i32 0, i32 0
  %804 = load i32, ptr %803, align 8, !tbaa !64
  %805 = load ptr, ptr %14, align 8, !tbaa !140
  %806 = getelementptr inbounds nuw %struct.Rule, ptr %805, i32 0, i32 1
  %807 = load ptr, ptr %806, align 8, !tbaa !71
  %808 = getelementptr inbounds nuw %struct.Production, ptr %807, i32 0, i32 3
  %809 = load i32, ptr %808, align 8, !tbaa !72
  %810 = getelementptr inbounds [256 x i8], ptr %17, i64 0, i64 0
  %811 = getelementptr inbounds [256 x i8], ptr %16, i64 0, i64 0
  %812 = load ptr, ptr %14, align 8, !tbaa !140
  %813 = getelementptr inbounds nuw %struct.Rule, ptr %812, i32 0, i32 3
  %814 = load i32, ptr %813, align 4, !tbaa !149
  %815 = load ptr, ptr %14, align 8, !tbaa !140
  %816 = getelementptr inbounds nuw %struct.Rule, ptr %815, i32 0, i32 5
  %817 = load i32, ptr %816, align 4, !tbaa !151
  %818 = load ptr, ptr %14, align 8, !tbaa !140
  %819 = getelementptr inbounds nuw %struct.Rule, ptr %818, i32 0, i32 2
  %820 = load i32, ptr %819, align 8, !tbaa !148
  %821 = load ptr, ptr %14, align 8, !tbaa !140
  %822 = getelementptr inbounds nuw %struct.Rule, ptr %821, i32 0, i32 4
  %823 = load i32, ptr %822, align 8, !tbaa !150
  %824 = load ptr, ptr %14, align 8, !tbaa !140
  %825 = getelementptr inbounds nuw %struct.Rule, ptr %824, i32 0, i32 1
  %826 = load ptr, ptr %825, align 8, !tbaa !71
  %827 = getelementptr inbounds nuw %struct.Production, ptr %826, i32 0, i32 4
  %828 = load i8, ptr %827, align 4
  %829 = lshr i8 %828, 2
  %830 = and i8 %829, 7
  %831 = zext i8 %830 to i32
  %832 = icmp ne i32 %831, 0
  br i1 %832, label %833, label %834

833:                                              ; preds = %793
  br label %838

834:                                              ; preds = %793
  %835 = load ptr, ptr %14, align 8, !tbaa !140
  %836 = getelementptr inbounds nuw %struct.Rule, ptr %835, i32 0, i32 11
  %837 = load i32, ptr %836, align 8, !tbaa !152
  br label %838

838:                                              ; preds = %834, %833
  %839 = phi i32 [ -1, %833 ], [ %837, %834 ]
  %840 = load i32, ptr %11, align 4, !tbaa !10
  %841 = getelementptr inbounds [256 x i8], ptr %18, i64 0, i64 0
  %842 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %800, ptr noundef @.str.51, i32 noundef signext %804, i32 noundef signext %809, ptr noundef %810, ptr noundef %811, i32 noundef signext %814, i32 noundef signext %817, i32 noundef signext %820, i32 noundef signext %823, i32 noundef signext %839, i32 noundef signext %840, ptr noundef %841) #8
  br label %843

843:                                              ; preds = %838, %411
  %844 = load i32, ptr %8, align 4, !tbaa !10
  %845 = add nsw i32 %844, 1
  store i32 %845, ptr %8, align 4, !tbaa !10
  br label %391, !llvm.loop !163

846:                                              ; preds = %391
  br label %847

847:                                              ; preds = %846
  %848 = load i32, ptr %7, align 4, !tbaa !10
  %849 = add nsw i32 %848, 1
  store i32 %849, ptr %7, align 4, !tbaa !10
  br label %91, !llvm.loop !164

850:                                              ; preds = %91
  call void @llvm.lifetime.end.p0(i64 256, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define internal void @write_scanner_data_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [4 x %struct.VecScannerBlock], align 8
  %12 = alloca ptr, align 8
  %13 = alloca [4 x %struct.VecScannerBlock], align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.VecAction, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca [256 x i8], align 1
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca [256 x i8], align 1
  %31 = alloca i32, align 4
  %32 = alloca ptr, align 8
  %33 = alloca %struct.ScannerBlock, align 8
  %34 = alloca %struct.ScannerBlock, align 8
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 160, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 160, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %24) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr %25) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %26) #8
  store i32 0, ptr %18, align 4, !tbaa !10
  br label %35

35:                                               ; preds = %153, %3
  %36 = load i32, ptr %18, align 4, !tbaa !10
  %37 = load ptr, ptr %5, align 8, !tbaa !78
  %38 = getelementptr inbounds nuw %struct.Grammar, ptr %37, i32 0, i32 2
  %39 = getelementptr inbounds nuw %struct.anon.3, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !109
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %156

42:                                               ; preds = %35
  %43 = load ptr, ptr %5, align 8, !tbaa !78
  %44 = getelementptr inbounds nuw %struct.Grammar, ptr %43, i32 0, i32 2
  %45 = getelementptr inbounds nuw %struct.anon.3, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !113
  %47 = load i32, ptr %18, align 4, !tbaa !10
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %46, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !67
  store ptr %50, ptr %26, align 8, !tbaa !67
  %51 = load ptr, ptr %26, align 8, !tbaa !67
  %52 = getelementptr inbounds nuw %struct.Term, ptr %51, i32 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !165
  %54 = icmp ne ptr %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %42
  %56 = load ptr, ptr %26, align 8, !tbaa !67
  %57 = getelementptr inbounds nuw %struct.Term, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 8, !tbaa !165
  %59 = getelementptr inbounds nuw %struct.Production, ptr %58, i32 0, i32 2
  %60 = getelementptr inbounds nuw %struct.anon, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !141
  %62 = getelementptr inbounds ptr, ptr %61, i64 0
  %63 = load ptr, ptr %62, align 8, !tbaa !140
  %64 = getelementptr inbounds nuw %struct.Rule, ptr %63, i32 0, i32 8
  %65 = getelementptr inbounds nuw %struct.Code, ptr %64, i32 0, i32 0
  %66 = load ptr, ptr %65, align 8, !tbaa !146
  %67 = icmp ne ptr %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %55
  %69 = getelementptr inbounds [256 x i8], ptr %25, i64 0, i64 0
  %70 = load ptr, ptr %26, align 8, !tbaa !67
  %71 = getelementptr inbounds nuw %struct.Term, ptr %70, i32 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !165
  %73 = getelementptr inbounds nuw %struct.Production, ptr %72, i32 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !72
  %75 = load ptr, ptr %26, align 8, !tbaa !67
  %76 = getelementptr inbounds nuw %struct.Term, ptr %75, i32 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !165
  %78 = getelementptr inbounds nuw %struct.Production, ptr %77, i32 0, i32 2
  %79 = getelementptr inbounds nuw %struct.anon, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !141
  %81 = getelementptr inbounds ptr, ptr %80, i64 0
  %82 = load ptr, ptr %81, align 8, !tbaa !140
  %83 = getelementptr inbounds nuw %struct.Rule, ptr %82, i32 0, i32 0
  %84 = load i32, ptr %83, align 8, !tbaa !142
  %85 = load ptr, ptr %6, align 8, !tbaa !80
  %86 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %69, ptr noundef @.str.42, i32 noundef signext %74, i32 noundef signext %84, ptr noundef %85) #8
  br label %90

87:                                               ; preds = %55, %42
  %88 = getelementptr inbounds [256 x i8], ptr %25, i64 0, i64 0
  %89 = call ptr @strcpy(ptr noundef %88, ptr noundef @.str.43) #8
  br label %90

90:                                               ; preds = %87, %68
  %91 = load ptr, ptr %4, align 8, !tbaa !85
  %92 = load i32, ptr %18, align 4, !tbaa !10
  %93 = load ptr, ptr %6, align 8, !tbaa !80
  %94 = load ptr, ptr %5, align 8, !tbaa !78
  %95 = getelementptr inbounds nuw %struct.Grammar, ptr %94, i32 0, i32 2
  %96 = getelementptr inbounds nuw %struct.anon.3, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !113
  %98 = load i32, ptr %18, align 4, !tbaa !10
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !67
  %102 = getelementptr inbounds nuw %struct.Term, ptr %101, i32 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !44
  %104 = load ptr, ptr %5, align 8, !tbaa !78
  %105 = getelementptr inbounds nuw %struct.Grammar, ptr %104, i32 0, i32 1
  %106 = getelementptr inbounds nuw %struct.anon.2, ptr %105, i32 0, i32 0
  %107 = load i32, ptr %106, align 8, !tbaa !108
  %108 = add i32 %103, %107
  %109 = load ptr, ptr %5, align 8, !tbaa !78
  %110 = getelementptr inbounds nuw %struct.Grammar, ptr %109, i32 0, i32 2
  %111 = getelementptr inbounds nuw %struct.anon.3, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !113
  %113 = load i32, ptr %18, align 4, !tbaa !10
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %112, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !67
  %117 = getelementptr inbounds nuw %struct.Term, ptr %116, i32 0, i32 7
  %118 = load i8, ptr %117, align 4
  %119 = and i8 %118, 7
  %120 = zext i8 %119 to i32
  %121 = load ptr, ptr %5, align 8, !tbaa !78
  %122 = getelementptr inbounds nuw %struct.Grammar, ptr %121, i32 0, i32 2
  %123 = getelementptr inbounds nuw %struct.anon.3, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !113
  %125 = load i32, ptr %18, align 4, !tbaa !10
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126
  %128 = load ptr, ptr %127, align 8, !tbaa !67
  %129 = getelementptr inbounds nuw %struct.Term, ptr %128, i32 0, i32 3
  %130 = load i32, ptr %129, align 4, !tbaa !166
  %131 = load ptr, ptr %5, align 8, !tbaa !78
  %132 = getelementptr inbounds nuw %struct.Grammar, ptr %131, i32 0, i32 2
  %133 = getelementptr inbounds nuw %struct.anon.3, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !113
  %135 = load i32, ptr %18, align 4, !tbaa !10
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds ptr, ptr %134, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !67
  %139 = getelementptr inbounds nuw %struct.Term, ptr %138, i32 0, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !167
  %141 = load ptr, ptr %5, align 8, !tbaa !78
  %142 = getelementptr inbounds nuw %struct.Grammar, ptr %141, i32 0, i32 2
  %143 = getelementptr inbounds nuw %struct.anon.3, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !113
  %145 = load i32, ptr %18, align 4, !tbaa !10
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %144, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !67
  %149 = getelementptr inbounds nuw %struct.Term, ptr %148, i32 0, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !168
  %151 = getelementptr inbounds [256 x i8], ptr %25, i64 0, i64 0
  %152 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.73, i32 noundef signext %92, ptr noundef %93, i32 noundef signext %108, i32 noundef signext %120, i32 noundef signext %130, i32 noundef signext %140, i32 noundef signext %150, ptr noundef %151) #8
  br label %153

153:                                              ; preds = %90
  %154 = load i32, ptr %18, align 4, !tbaa !10
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %18, align 4, !tbaa !10
  br label %35, !llvm.loop !169

156:                                              ; preds = %35
  %157 = load ptr, ptr %4, align 8, !tbaa !85
  %158 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef @.str.4) #8
  store i32 0, ptr %16, align 4, !tbaa !10
  store i32 0, ptr %18, align 4, !tbaa !10
  br label %159

159:                                              ; preds = %185, %156
  %160 = load i32, ptr %18, align 4, !tbaa !10
  %161 = load ptr, ptr %5, align 8, !tbaa !78
  %162 = getelementptr inbounds nuw %struct.Grammar, ptr %161, i32 0, i32 3
  %163 = getelementptr inbounds nuw %struct.anon.4, ptr %162, i32 0, i32 0
  %164 = load i32, ptr %163, align 8, !tbaa !97
  %165 = icmp ult i32 %160, %164
  br i1 %165, label %166, label %188

166:                                              ; preds = %159
  %167 = load ptr, ptr %5, align 8, !tbaa !78
  %168 = getelementptr inbounds nuw %struct.Grammar, ptr %167, i32 0, i32 3
  %169 = getelementptr inbounds nuw %struct.anon.4, ptr %168, i32 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !170
  %171 = load i32, ptr %18, align 4, !tbaa !10
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds ptr, ptr %170, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !47
  %175 = getelementptr inbounds nuw %struct.State, ptr %174, i32 0, i32 9
  %176 = getelementptr inbounds nuw %struct.Scanner, ptr %175, i32 0, i32 0
  %177 = getelementptr inbounds nuw %struct.VecScanState, ptr %176, i32 0, i32 0
  %178 = load i32, ptr %177, align 8, !tbaa !171
  %179 = load ptr, ptr %5, align 8, !tbaa !78
  %180 = getelementptr inbounds nuw %struct.Grammar, ptr %179, i32 0, i32 18
  %181 = load i32, ptr %180, align 4, !tbaa !172
  %182 = mul i32 %178, %181
  %183 = load i32, ptr %16, align 4, !tbaa !10
  %184 = add i32 %183, %182
  store i32 %184, ptr %16, align 4, !tbaa !10
  br label %185

185:                                              ; preds = %166
  %186 = load i32, ptr %18, align 4, !tbaa !10
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %18, align 4, !tbaa !10
  br label %159, !llvm.loop !173

188:                                              ; preds = %159
  %189 = load i32, ptr %16, align 4, !tbaa !10
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, ptr %16, align 4, !tbaa !10
  br label %194

193:                                              ; preds = %188
  br label %194

194:                                              ; preds = %193, %191
  %195 = phi i32 [ %192, %191 ], [ 1, %193 ]
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 32
  %198 = call noalias ptr @malloc(i64 noundef %197) #11
  store ptr %198, ptr %8, align 8, !tbaa !3
  store i32 0, ptr %18, align 4, !tbaa !10
  br label %199

199:                                              ; preds = %225, %194
  %200 = load i32, ptr %18, align 4, !tbaa !10
  %201 = icmp slt i32 %200, 4
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  br label %203

203:                                              ; preds = %202
  %204 = load i32, ptr %18, align 4, !tbaa !10
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %205
  %207 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %206, i32 0, i32 0
  store i32 0, ptr %207, align 8, !tbaa !174
  %208 = load i32, ptr %18, align 4, !tbaa !10
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %209
  %211 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %210, i32 0, i32 2
  store ptr null, ptr %211, align 8, !tbaa !177
  br label %212

212:                                              ; preds = %203
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  %215 = load i32, ptr %18, align 4, !tbaa !10
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %13, i64 0, i64 %216
  %218 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %217, i32 0, i32 0
  store i32 0, ptr %218, align 8, !tbaa !174
  %219 = load i32, ptr %18, align 4, !tbaa !10
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %13, i64 0, i64 %220
  %222 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %221, i32 0, i32 2
  store ptr null, ptr %222, align 8, !tbaa !177
  br label %223

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223
  br label %225

225:                                              ; preds = %224
  %226 = load i32, ptr %18, align 4, !tbaa !10
  %227 = add nsw i32 %226, 1
  store i32 %227, ptr %18, align 4, !tbaa !10
  br label %199, !llvm.loop !178

228:                                              ; preds = %199
  %229 = load ptr, ptr %5, align 8, !tbaa !78
  %230 = getelementptr inbounds nuw %struct.Grammar, ptr %229, i32 0, i32 19
  %231 = load i32, ptr %230, align 8, !tbaa !179
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to ptr
  store ptr %233, ptr getelementptr inbounds nuw (%struct.hash_fns_t, ptr @scanner_block_fns, i32 0, i32 2), align 8, !tbaa !12
  %234 = load ptr, ptr %5, align 8, !tbaa !78
  store ptr %234, ptr getelementptr inbounds ([2 x ptr], ptr getelementptr inbounds nuw (%struct.hash_fns_t, ptr @scanner_block_fns, i32 0, i32 2), i64 0, i64 1), align 8, !tbaa !12
  %235 = load ptr, ptr %5, align 8, !tbaa !78
  %236 = getelementptr inbounds nuw %struct.Grammar, ptr %235, i32 0, i32 19
  %237 = load i32, ptr %236, align 8, !tbaa !179
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to ptr
  store ptr %239, ptr getelementptr inbounds nuw (%struct.hash_fns_t, ptr @trans_scanner_block_fns, i32 0, i32 2), align 8, !tbaa !12
  %240 = load ptr, ptr %5, align 8, !tbaa !78
  store ptr %240, ptr getelementptr inbounds ([2 x ptr], ptr getelementptr inbounds nuw (%struct.hash_fns_t, ptr @trans_scanner_block_fns, i32 0, i32 2), i64 0, i64 1), align 8, !tbaa !12
  br label %241

241:                                              ; preds = %228
  %242 = getelementptr inbounds nuw %struct.VecAction, ptr %15, i32 0, i32 0
  store i32 0, ptr %242, align 8, !tbaa !180
  %243 = getelementptr inbounds nuw %struct.VecAction, ptr %15, i32 0, i32 2
  store ptr null, ptr %243, align 8, !tbaa !181
  br label %244

244:                                              ; preds = %241
  br label %245

245:                                              ; preds = %244
  store i32 0, ptr %17, align 4, !tbaa !10
  store i32 0, ptr %18, align 4, !tbaa !10
  br label %246

246:                                              ; preds = %791, %245
  %247 = load i32, ptr %18, align 4, !tbaa !10
  %248 = load ptr, ptr %5, align 8, !tbaa !78
  %249 = getelementptr inbounds nuw %struct.Grammar, ptr %248, i32 0, i32 3
  %250 = getelementptr inbounds nuw %struct.anon.4, ptr %249, i32 0, i32 0
  %251 = load i32, ptr %250, align 8, !tbaa !97
  %252 = icmp ult i32 %247, %251
  br i1 %252, label %253, label %794

253:                                              ; preds = %246
  %254 = load ptr, ptr %5, align 8, !tbaa !78
  %255 = getelementptr inbounds nuw %struct.Grammar, ptr %254, i32 0, i32 3
  %256 = getelementptr inbounds nuw %struct.anon.4, ptr %255, i32 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !170
  %258 = load i32, ptr %18, align 4, !tbaa !10
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds ptr, ptr %257, i64 %259
  %261 = load ptr, ptr %260, align 8, !tbaa !47
  store ptr %261, ptr %7, align 8, !tbaa !47
  %262 = load ptr, ptr %7, align 8, !tbaa !47
  %263 = getelementptr inbounds nuw %struct.State, ptr %262, i32 0, i32 9
  %264 = getelementptr inbounds nuw %struct.Scanner, ptr %263, i32 0, i32 0
  store ptr %264, ptr %24, align 8, !tbaa !12
  %265 = load ptr, ptr %7, align 8, !tbaa !47
  %266 = getelementptr inbounds nuw %struct.State, ptr %265, i32 0, i32 5
  %267 = getelementptr inbounds nuw %struct.VecAction, ptr %266, i32 0, i32 0
  %268 = load i32, ptr %267, align 8, !tbaa !182
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %319

270:                                              ; preds = %253
  %271 = load ptr, ptr %7, align 8, !tbaa !47
  %272 = getelementptr inbounds nuw %struct.State, ptr %271, i32 0, i32 13
  %273 = load ptr, ptr %272, align 8, !tbaa !183
  %274 = icmp ne ptr %273, null
  br i1 %274, label %319, label %275

275:                                              ; preds = %270
  %276 = load ptr, ptr %4, align 8, !tbaa !85
  %277 = load i32, ptr %18, align 4, !tbaa !10
  %278 = load ptr, ptr %6, align 8, !tbaa !80
  %279 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %276, ptr noundef @.str.74, i32 noundef signext %277, ptr noundef %278) #8
  store i32 0, ptr %19, align 4, !tbaa !10
  br label %280

280:                                              ; preds = %313, %275
  %281 = load i32, ptr %19, align 4, !tbaa !10
  %282 = load ptr, ptr %7, align 8, !tbaa !47
  %283 = getelementptr inbounds nuw %struct.State, ptr %282, i32 0, i32 5
  %284 = getelementptr inbounds nuw %struct.VecAction, ptr %283, i32 0, i32 0
  %285 = load i32, ptr %284, align 8, !tbaa !182
  %286 = icmp ult i32 %281, %285
  br i1 %286, label %287, label %316

287:                                              ; preds = %280
  %288 = load ptr, ptr %7, align 8, !tbaa !47
  %289 = getelementptr inbounds nuw %struct.State, ptr %288, i32 0, i32 5
  %290 = getelementptr inbounds nuw %struct.VecAction, ptr %289, i32 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !184
  %292 = load i32, ptr %19, align 4, !tbaa !10
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds ptr, ptr %291, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !36
  store ptr %295, ptr %23, align 8, !tbaa !36
  %296 = load ptr, ptr %4, align 8, !tbaa !85
  %297 = load ptr, ptr %23, align 8, !tbaa !36
  %298 = getelementptr inbounds nuw %struct.Action, ptr %297, i32 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !38
  %300 = getelementptr inbounds nuw %struct.Term, ptr %299, i32 0, i32 1
  %301 = load i32, ptr %300, align 4, !tbaa !44
  %302 = load ptr, ptr %6, align 8, !tbaa !80
  %303 = load i32, ptr %19, align 4, !tbaa !10
  %304 = load ptr, ptr %7, align 8, !tbaa !47
  %305 = getelementptr inbounds nuw %struct.State, ptr %304, i32 0, i32 5
  %306 = getelementptr inbounds nuw %struct.VecAction, ptr %305, i32 0, i32 0
  %307 = load i32, ptr %306, align 8, !tbaa !182
  %308 = sub i32 %307, 1
  %309 = icmp eq i32 %303, %308
  %310 = zext i1 %309 to i64
  %311 = select i1 %309, ptr @.str.76, ptr @.str.24
  %312 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef @.str.75, i32 noundef signext %301, ptr noundef %302, ptr noundef %311) #8
  br label %313

313:                                              ; preds = %287
  %314 = load i32, ptr %19, align 4, !tbaa !10
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %19, align 4, !tbaa !10
  br label %280, !llvm.loop !185

316:                                              ; preds = %280
  %317 = load ptr, ptr %4, align 8, !tbaa !85
  %318 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef @.str.49) #8
  br label %319

319:                                              ; preds = %316, %270, %253
  store i32 0, ptr %19, align 4, !tbaa !10
  br label %320

320:                                              ; preds = %371, %319
  %321 = load i32, ptr %19, align 4, !tbaa !10
  %322 = load ptr, ptr %7, align 8, !tbaa !47
  %323 = getelementptr inbounds nuw %struct.State, ptr %322, i32 0, i32 9
  %324 = getelementptr inbounds nuw %struct.Scanner, ptr %323, i32 0, i32 1
  %325 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %324, i32 0, i32 0
  %326 = load i32, ptr %325, align 8, !tbaa !186
  %327 = icmp ult i32 %321, %326
  br i1 %327, label %328, label %374

328:                                              ; preds = %320
  call void @llvm.lifetime.start.p0(i64 8, ptr %27) #8
  %329 = load ptr, ptr %7, align 8, !tbaa !47
  %330 = getelementptr inbounds nuw %struct.State, ptr %329, i32 0, i32 9
  %331 = getelementptr inbounds nuw %struct.Scanner, ptr %330, i32 0, i32 1
  %332 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %331, i32 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !187
  %334 = load i32, ptr %19, align 4, !tbaa !10
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds ptr, ptr %333, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !30
  %338 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %337, i32 0, i32 2
  store ptr %338, ptr %27, align 8, !tbaa !12
  %339 = load ptr, ptr %4, align 8, !tbaa !85
  %340 = load i32, ptr %18, align 4, !tbaa !10
  %341 = load i32, ptr %19, align 4, !tbaa !10
  %342 = load ptr, ptr %6, align 8, !tbaa !80
  %343 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef @.str.77, i32 noundef signext %340, i32 noundef signext %341, ptr noundef %342) #8
  store i32 0, ptr %20, align 4, !tbaa !10
  br label %344

344:                                              ; preds = %365, %328
  %345 = load i32, ptr %20, align 4, !tbaa !10
  %346 = load ptr, ptr %27, align 8, !tbaa !12
  %347 = getelementptr inbounds nuw %struct.VecAction, ptr %346, i32 0, i32 0
  %348 = load i32, ptr %347, align 8, !tbaa !180
  %349 = icmp ult i32 %345, %348
  br i1 %349, label %350, label %368

350:                                              ; preds = %344
  %351 = load ptr, ptr %4, align 8, !tbaa !85
  %352 = load ptr, ptr %27, align 8, !tbaa !12
  %353 = getelementptr inbounds nuw %struct.VecAction, ptr %352, i32 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !181
  %355 = load i32, ptr %20, align 4, !tbaa !10
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds ptr, ptr %354, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !36
  %359 = getelementptr inbounds nuw %struct.Action, ptr %358, i32 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !38
  %361 = getelementptr inbounds nuw %struct.Term, ptr %360, i32 0, i32 1
  %362 = load i32, ptr %361, align 4, !tbaa !44
  %363 = load ptr, ptr %6, align 8, !tbaa !80
  %364 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %351, ptr noundef @.str.78, i32 noundef signext %362, ptr noundef %363) #8
  br label %365

365:                                              ; preds = %350
  %366 = load i32, ptr %20, align 4, !tbaa !10
  %367 = add nsw i32 %366, 1
  store i32 %367, ptr %20, align 4, !tbaa !10
  br label %344, !llvm.loop !188

368:                                              ; preds = %344
  %369 = load ptr, ptr %4, align 8, !tbaa !85
  %370 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef @.str.79) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %27) #8
  br label %371

371:                                              ; preds = %368
  %372 = load i32, ptr %19, align 4, !tbaa !10
  %373 = add nsw i32 %372, 1
  store i32 %373, ptr %19, align 4, !tbaa !10
  br label %320, !llvm.loop !189

374:                                              ; preds = %320
  %375 = load ptr, ptr %7, align 8, !tbaa !47
  %376 = getelementptr inbounds nuw %struct.State, ptr %375, i32 0, i32 9
  %377 = getelementptr inbounds nuw %struct.Scanner, ptr %376, i32 0, i32 1
  %378 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %377, i32 0, i32 0
  %379 = load i32, ptr %378, align 8, !tbaa !186
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %416

381:                                              ; preds = %374
  %382 = load ptr, ptr %4, align 8, !tbaa !85
  %383 = load i32, ptr %18, align 4, !tbaa !10
  %384 = load ptr, ptr %6, align 8, !tbaa !80
  %385 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %382, ptr noundef @.str.80, i32 noundef signext %383, ptr noundef %384) #8
  store i32 0, ptr %19, align 4, !tbaa !10
  br label %386

386:                                              ; preds = %410, %381
  %387 = load i32, ptr %19, align 4, !tbaa !10
  %388 = load ptr, ptr %7, align 8, !tbaa !47
  %389 = getelementptr inbounds nuw %struct.State, ptr %388, i32 0, i32 9
  %390 = getelementptr inbounds nuw %struct.Scanner, ptr %389, i32 0, i32 1
  %391 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %390, i32 0, i32 0
  %392 = load i32, ptr %391, align 8, !tbaa !186
  %393 = icmp ult i32 %387, %392
  br i1 %393, label %394, label %413

394:                                              ; preds = %386
  %395 = load ptr, ptr %4, align 8, !tbaa !85
  %396 = load i32, ptr %18, align 4, !tbaa !10
  %397 = load i32, ptr %19, align 4, !tbaa !10
  %398 = load ptr, ptr %6, align 8, !tbaa !80
  %399 = load i32, ptr %19, align 4, !tbaa !10
  %400 = load ptr, ptr %7, align 8, !tbaa !47
  %401 = getelementptr inbounds nuw %struct.State, ptr %400, i32 0, i32 9
  %402 = getelementptr inbounds nuw %struct.Scanner, ptr %401, i32 0, i32 1
  %403 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %402, i32 0, i32 0
  %404 = load i32, ptr %403, align 8, !tbaa !186
  %405 = sub i32 %404, 1
  %406 = icmp eq i32 %399, %405
  %407 = zext i1 %406 to i64
  %408 = select i1 %406, ptr @.str.4, ptr @.str.82
  %409 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef @.str.81, i32 noundef signext %396, i32 noundef signext %397, ptr noundef %398, ptr noundef %408) #8
  br label %410

410:                                              ; preds = %394
  %411 = load i32, ptr %19, align 4, !tbaa !10
  %412 = add nsw i32 %411, 1
  store i32 %412, ptr %19, align 4, !tbaa !10
  br label %386, !llvm.loop !190

413:                                              ; preds = %386
  %414 = load ptr, ptr %4, align 8, !tbaa !85
  %415 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %414, ptr noundef @.str.49) #8
  br label %416

416:                                              ; preds = %413, %374
  %417 = load ptr, ptr %7, align 8, !tbaa !47
  %418 = call signext i32 @scanner_size(ptr noundef %417)
  %419 = sub nsw i32 %418, 1
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %420
  store ptr %421, ptr %12, align 8, !tbaa !12
  %422 = load ptr, ptr %7, align 8, !tbaa !47
  %423 = call signext i32 @scanner_size(ptr noundef %422)
  %424 = sub nsw i32 %423, 1
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %13, i64 0, i64 %425
  store ptr %426, ptr %14, align 8, !tbaa !12
  store i32 0, ptr %19, align 4, !tbaa !10
  br label %427

427:                                              ; preds = %787, %416
  %428 = load i32, ptr %19, align 4, !tbaa !10
  %429 = load ptr, ptr %24, align 8, !tbaa !12
  %430 = getelementptr inbounds nuw %struct.VecScanState, ptr %429, i32 0, i32 0
  %431 = load i32, ptr %430, align 8, !tbaa !191
  %432 = icmp ult i32 %428, %431
  br i1 %432, label %433, label %790

433:                                              ; preds = %427
  %434 = load ptr, ptr %7, align 8, !tbaa !47
  %435 = getelementptr inbounds nuw %struct.State, ptr %434, i32 0, i32 13
  %436 = load ptr, ptr %435, align 8, !tbaa !183
  %437 = icmp ne ptr %436, null
  br i1 %437, label %786, label %438

438:                                              ; preds = %433
  store i32 0, ptr %20, align 4, !tbaa !10
  br label %439

439:                                              ; preds = %675, %438
  %440 = load i32, ptr %20, align 4, !tbaa !10
  %441 = load ptr, ptr %5, align 8, !tbaa !78
  %442 = getelementptr inbounds nuw %struct.Grammar, ptr %441, i32 0, i32 18
  %443 = load i32, ptr %442, align 4, !tbaa !172
  %444 = icmp slt i32 %440, %443
  br i1 %444, label %445, label %678

445:                                              ; preds = %439
  %446 = load ptr, ptr %7, align 8, !tbaa !47
  %447 = getelementptr inbounds nuw %struct.State, ptr %446, i32 0, i32 0
  %448 = load i32, ptr %447, align 8, !tbaa !89
  %449 = load ptr, ptr %8, align 8, !tbaa !3
  %450 = load i32, ptr %17, align 4, !tbaa !10
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds %struct.ScannerBlock, ptr %449, i64 %451
  %453 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %452, i32 0, i32 0
  store i32 %448, ptr %453, align 8, !tbaa !192
  %454 = load i32, ptr %19, align 4, !tbaa !10
  %455 = load ptr, ptr %8, align 8, !tbaa !3
  %456 = load i32, ptr %17, align 4, !tbaa !10
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.ScannerBlock, ptr %455, i64 %457
  %459 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %458, i32 0, i32 1
  store i32 %454, ptr %459, align 4, !tbaa !193
  %460 = load i32, ptr %20, align 4, !tbaa !10
  %461 = load ptr, ptr %8, align 8, !tbaa !3
  %462 = load i32, ptr %17, align 4, !tbaa !10
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.ScannerBlock, ptr %461, i64 %463
  %465 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %464, i32 0, i32 2
  store i32 %460, ptr %465, align 8, !tbaa !194
  %466 = load ptr, ptr %24, align 8, !tbaa !12
  %467 = getelementptr inbounds nuw %struct.VecScanState, ptr %466, i32 0, i32 2
  %468 = load ptr, ptr %467, align 8, !tbaa !195
  %469 = load i32, ptr %19, align 4, !tbaa !10
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds ptr, ptr %468, i64 %470
  %472 = load ptr, ptr %471, align 8, !tbaa !19
  %473 = getelementptr inbounds nuw %struct.ScanState, ptr %472, i32 0, i32 1
  %474 = load i32, ptr %20, align 4, !tbaa !10
  %475 = load ptr, ptr %5, align 8, !tbaa !78
  %476 = getelementptr inbounds nuw %struct.Grammar, ptr %475, i32 0, i32 19
  %477 = load i32, ptr %476, align 8, !tbaa !179
  %478 = mul nsw i32 %474, %477
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [256 x ptr], ptr %473, i64 0, i64 %479
  %481 = load ptr, ptr %8, align 8, !tbaa !3
  %482 = load i32, ptr %17, align 4, !tbaa !10
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.ScannerBlock, ptr %481, i64 %483
  %485 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %484, i32 0, i32 3
  store ptr %480, ptr %485, align 8, !tbaa !13
  %486 = load ptr, ptr %24, align 8, !tbaa !12
  %487 = getelementptr inbounds nuw %struct.VecScanState, ptr %486, i32 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !195
  %489 = load i32, ptr %19, align 4, !tbaa !10
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds ptr, ptr %488, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !19
  %493 = getelementptr inbounds nuw %struct.ScanState, ptr %492, i32 0, i32 4
  %494 = load i32, ptr %20, align 4, !tbaa !10
  %495 = load ptr, ptr %5, align 8, !tbaa !78
  %496 = getelementptr inbounds nuw %struct.Grammar, ptr %495, i32 0, i32 19
  %497 = load i32, ptr %496, align 8, !tbaa !179
  %498 = mul nsw i32 %494, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [256 x ptr], ptr %493, i64 0, i64 %499
  %501 = load ptr, ptr %8, align 8, !tbaa !3
  %502 = load i32, ptr %17, align 4, !tbaa !10
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.ScannerBlock, ptr %501, i64 %503
  %505 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %504, i32 0, i32 4
  store ptr %500, ptr %505, align 8, !tbaa !28
  %506 = load ptr, ptr %8, align 8, !tbaa !3
  %507 = load i32, ptr %17, align 4, !tbaa !10
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.ScannerBlock, ptr %506, i64 %508
  store ptr %509, ptr %9, align 8, !tbaa !3
  %510 = load i32, ptr %17, align 4, !tbaa !10
  %511 = add nsw i32 %510, 1
  store i32 %511, ptr %17, align 4, !tbaa !10
  %512 = load ptr, ptr %12, align 8, !tbaa !12
  %513 = load ptr, ptr %9, align 8, !tbaa !3
  %514 = call ptr @set_add_fn(ptr noundef %512, ptr noundef %513, ptr noundef @scanner_block_fns)
  store ptr %514, ptr %10, align 8, !tbaa !3
  %515 = load ptr, ptr %9, align 8, !tbaa !3
  %516 = load ptr, ptr %10, align 8, !tbaa !3
  %517 = icmp eq ptr %515, %516
  br i1 %517, label %518, label %597

518:                                              ; preds = %445
  %519 = load ptr, ptr %4, align 8, !tbaa !85
  %520 = load ptr, ptr %7, align 8, !tbaa !47
  %521 = call ptr @scanner_type(ptr noundef %520)
  %522 = load i32, ptr %18, align 4, !tbaa !10
  %523 = load i32, ptr %19, align 4, !tbaa !10
  %524 = load i32, ptr %20, align 4, !tbaa !10
  %525 = load ptr, ptr %6, align 8, !tbaa !80
  %526 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %519, ptr noundef @.str.83, ptr noundef %521, i32 noundef signext %522, i32 noundef signext %523, i32 noundef signext %524, ptr noundef %525) #8
  store i32 0, ptr %21, align 4, !tbaa !10
  br label %527

527:                                              ; preds = %591, %518
  %528 = load i32, ptr %21, align 4, !tbaa !10
  %529 = load ptr, ptr %5, align 8, !tbaa !78
  %530 = getelementptr inbounds nuw %struct.Grammar, ptr %529, i32 0, i32 19
  %531 = load i32, ptr %530, align 8, !tbaa !179
  %532 = icmp slt i32 %528, %531
  br i1 %532, label %533, label %594

533:                                              ; preds = %527
  %534 = load i32, ptr %21, align 4, !tbaa !10
  %535 = load i32, ptr %20, align 4, !tbaa !10
  %536 = load ptr, ptr %5, align 8, !tbaa !78
  %537 = getelementptr inbounds nuw %struct.Grammar, ptr %536, i32 0, i32 19
  %538 = load i32, ptr %537, align 8, !tbaa !179
  %539 = mul nsw i32 %535, %538
  %540 = add nsw i32 %534, %539
  store i32 %540, ptr %22, align 4, !tbaa !10
  %541 = load ptr, ptr %4, align 8, !tbaa !85
  %542 = load ptr, ptr %24, align 8, !tbaa !12
  %543 = getelementptr inbounds nuw %struct.VecScanState, ptr %542, i32 0, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !195
  %545 = load i32, ptr %19, align 4, !tbaa !10
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds ptr, ptr %544, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !19
  %549 = getelementptr inbounds nuw %struct.ScanState, ptr %548, i32 0, i32 1
  %550 = load i32, ptr %22, align 4, !tbaa !10
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [256 x ptr], ptr %549, i64 0, i64 %551
  %553 = load ptr, ptr %552, align 8, !tbaa !19
  %554 = icmp ne ptr %553, null
  br i1 %554, label %555, label %571

555:                                              ; preds = %533
  %556 = load ptr, ptr %24, align 8, !tbaa !12
  %557 = getelementptr inbounds nuw %struct.VecScanState, ptr %556, i32 0, i32 2
  %558 = load ptr, ptr %557, align 8, !tbaa !195
  %559 = load i32, ptr %19, align 4, !tbaa !10
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %558, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !19
  %563 = getelementptr inbounds nuw %struct.ScanState, ptr %562, i32 0, i32 1
  %564 = load i32, ptr %22, align 4, !tbaa !10
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [256 x ptr], ptr %563, i64 0, i64 %565
  %567 = load ptr, ptr %566, align 8, !tbaa !19
  %568 = getelementptr inbounds nuw %struct.ScanState, ptr %567, i32 0, i32 0
  %569 = load i32, ptr %568, align 8, !tbaa !21
  %570 = add i32 %569, 1
  br label %572

571:                                              ; preds = %533
  br label %572

572:                                              ; preds = %571, %555
  %573 = phi i32 [ %570, %555 ], [ 0, %571 ]
  %574 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %541, ptr noundef @.str.30, i32 noundef signext %573) #8
  %575 = load i32, ptr %21, align 4, !tbaa !10
  %576 = load ptr, ptr %5, align 8, !tbaa !78
  %577 = getelementptr inbounds nuw %struct.Grammar, ptr %576, i32 0, i32 19
  %578 = load i32, ptr %577, align 8, !tbaa !179
  %579 = icmp ne i32 %575, %578
  br i1 %579, label %580, label %583

580:                                              ; preds = %572
  %581 = load ptr, ptr %4, align 8, !tbaa !85
  %582 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %581, ptr noundef @.str.84) #8
  br label %583

583:                                              ; preds = %580, %572
  %584 = load i32, ptr %21, align 4, !tbaa !10
  %585 = srem i32 %584, 16
  %586 = icmp eq i32 %585, 15
  br i1 %586, label %587, label %590

587:                                              ; preds = %583
  %588 = load ptr, ptr %4, align 8, !tbaa !85
  %589 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %588, ptr noundef @.str.4) #8
  br label %590

590:                                              ; preds = %587, %583
  br label %591

591:                                              ; preds = %590
  %592 = load i32, ptr %21, align 4, !tbaa !10
  %593 = add nsw i32 %592, 1
  store i32 %593, ptr %21, align 4, !tbaa !10
  br label %527, !llvm.loop !196

594:                                              ; preds = %527
  %595 = load ptr, ptr %4, align 8, !tbaa !85
  %596 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %595, ptr noundef @.str.49) #8
  br label %597

597:                                              ; preds = %594, %445
  %598 = load ptr, ptr %7, align 8, !tbaa !47
  %599 = getelementptr inbounds nuw %struct.State, ptr %598, i32 0, i32 10
  %600 = load i8, ptr %599, align 8
  %601 = lshr i8 %600, 3
  %602 = and i8 %601, 3
  %603 = zext i8 %602 to i32
  %604 = icmp ne i32 %603, 1
  br i1 %604, label %605, label %674

605:                                              ; preds = %597
  %606 = load ptr, ptr %14, align 8, !tbaa !12
  %607 = load ptr, ptr %9, align 8, !tbaa !3
  %608 = call ptr @set_add_fn(ptr noundef %606, ptr noundef %607, ptr noundef @trans_scanner_block_fns)
  store ptr %608, ptr %10, align 8, !tbaa !3
  %609 = load ptr, ptr %9, align 8, !tbaa !3
  %610 = load ptr, ptr %10, align 8, !tbaa !3
  %611 = icmp eq ptr %609, %610
  br i1 %611, label %612, label %673

612:                                              ; preds = %605
  %613 = load ptr, ptr %4, align 8, !tbaa !85
  %614 = load ptr, ptr %7, align 8, !tbaa !47
  %615 = call ptr @scanner_type(ptr noundef %614)
  %616 = load i32, ptr %18, align 4, !tbaa !10
  %617 = load i32, ptr %19, align 4, !tbaa !10
  %618 = load i32, ptr %20, align 4, !tbaa !10
  %619 = load ptr, ptr %6, align 8, !tbaa !80
  %620 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %613, ptr noundef @.str.85, ptr noundef %615, i32 noundef signext %616, i32 noundef signext %617, i32 noundef signext %618, ptr noundef %619) #8
  store i32 0, ptr %21, align 4, !tbaa !10
  br label %621

621:                                              ; preds = %667, %612
  %622 = load i32, ptr %21, align 4, !tbaa !10
  %623 = load ptr, ptr %5, align 8, !tbaa !78
  %624 = getelementptr inbounds nuw %struct.Grammar, ptr %623, i32 0, i32 19
  %625 = load i32, ptr %624, align 8, !tbaa !179
  %626 = icmp slt i32 %622, %625
  br i1 %626, label %627, label %670

627:                                              ; preds = %621
  %628 = load i32, ptr %21, align 4, !tbaa !10
  %629 = load i32, ptr %20, align 4, !tbaa !10
  %630 = load ptr, ptr %5, align 8, !tbaa !78
  %631 = getelementptr inbounds nuw %struct.Grammar, ptr %630, i32 0, i32 19
  %632 = load i32, ptr %631, align 8, !tbaa !179
  %633 = mul nsw i32 %629, %632
  %634 = add nsw i32 %628, %633
  store i32 %634, ptr %22, align 4, !tbaa !10
  %635 = load ptr, ptr %4, align 8, !tbaa !85
  %636 = load ptr, ptr %24, align 8, !tbaa !12
  %637 = getelementptr inbounds nuw %struct.VecScanState, ptr %636, i32 0, i32 2
  %638 = load ptr, ptr %637, align 8, !tbaa !195
  %639 = load i32, ptr %19, align 4, !tbaa !10
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds ptr, ptr %638, i64 %640
  %642 = load ptr, ptr %641, align 8, !tbaa !19
  %643 = getelementptr inbounds nuw %struct.ScanState, ptr %642, i32 0, i32 4
  %644 = load i32, ptr %22, align 4, !tbaa !10
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [256 x ptr], ptr %643, i64 0, i64 %645
  %647 = load ptr, ptr %646, align 8, !tbaa !30
  %648 = getelementptr inbounds nuw %struct.ScanStateTransition, ptr %647, i32 0, i32 0
  %649 = load i32, ptr %648, align 8, !tbaa !32
  %650 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %635, ptr noundef @.str.30, i32 noundef signext %649) #8
  %651 = load i32, ptr %21, align 4, !tbaa !10
  %652 = load ptr, ptr %5, align 8, !tbaa !78
  %653 = getelementptr inbounds nuw %struct.Grammar, ptr %652, i32 0, i32 19
  %654 = load i32, ptr %653, align 8, !tbaa !179
  %655 = icmp ne i32 %651, %654
  br i1 %655, label %656, label %659

656:                                              ; preds = %627
  %657 = load ptr, ptr %4, align 8, !tbaa !85
  %658 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %657, ptr noundef @.str.84) #8
  br label %659

659:                                              ; preds = %656, %627
  %660 = load i32, ptr %21, align 4, !tbaa !10
  %661 = srem i32 %660, 16
  %662 = icmp eq i32 %661, 15
  br i1 %662, label %663, label %666

663:                                              ; preds = %659
  %664 = load ptr, ptr %4, align 8, !tbaa !85
  %665 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %664, ptr noundef @.str.4) #8
  br label %666

666:                                              ; preds = %663, %659
  br label %667

667:                                              ; preds = %666
  %668 = load i32, ptr %21, align 4, !tbaa !10
  %669 = add nsw i32 %668, 1
  store i32 %669, ptr %21, align 4, !tbaa !10
  br label %621, !llvm.loop !197

670:                                              ; preds = %621
  %671 = load ptr, ptr %4, align 8, !tbaa !85
  %672 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %671, ptr noundef @.str.49) #8
  br label %673

673:                                              ; preds = %670, %605
  br label %674

674:                                              ; preds = %673, %597
  br label %675

675:                                              ; preds = %674
  %676 = load i32, ptr %20, align 4, !tbaa !10
  %677 = add nsw i32 %676, 1
  store i32 %677, ptr %20, align 4, !tbaa !10
  br label %439, !llvm.loop !198

678:                                              ; preds = %439
  %679 = load ptr, ptr %24, align 8, !tbaa !12
  %680 = getelementptr inbounds nuw %struct.VecScanState, ptr %679, i32 0, i32 2
  %681 = load ptr, ptr %680, align 8, !tbaa !195
  %682 = load i32, ptr %19, align 4, !tbaa !10
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds ptr, ptr %681, i64 %683
  %685 = load ptr, ptr %684, align 8, !tbaa !19
  %686 = getelementptr inbounds nuw %struct.ScanState, ptr %685, i32 0, i32 2
  %687 = getelementptr inbounds nuw %struct.VecAction, ptr %686, i32 0, i32 0
  %688 = load i32, ptr %687, align 8, !tbaa !199
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %785

690:                                              ; preds = %678
  store i32 0, ptr %20, align 4, !tbaa !10
  br label %691

691:                                              ; preds = %781, %690
  %692 = load i32, ptr %20, align 4, !tbaa !10
  %693 = load ptr, ptr %24, align 8, !tbaa !12
  %694 = getelementptr inbounds nuw %struct.VecScanState, ptr %693, i32 0, i32 2
  %695 = load ptr, ptr %694, align 8, !tbaa !195
  %696 = load i32, ptr %19, align 4, !tbaa !10
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds ptr, ptr %695, i64 %697
  %699 = load ptr, ptr %698, align 8, !tbaa !19
  %700 = getelementptr inbounds nuw %struct.ScanState, ptr %699, i32 0, i32 2
  %701 = getelementptr inbounds nuw %struct.VecAction, ptr %700, i32 0, i32 0
  %702 = load i32, ptr %701, align 8, !tbaa !199
  %703 = icmp ult i32 %692, %702
  br i1 %703, label %704, label %784

704:                                              ; preds = %691
  call void @llvm.lifetime.start.p0(i64 8, ptr %28) #8
  %705 = load ptr, ptr %24, align 8, !tbaa !12
  %706 = getelementptr inbounds nuw %struct.VecScanState, ptr %705, i32 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !195
  %708 = load i32, ptr %19, align 4, !tbaa !10
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds ptr, ptr %707, i64 %709
  %711 = load ptr, ptr %710, align 8, !tbaa !19
  %712 = getelementptr inbounds nuw %struct.ScanState, ptr %711, i32 0, i32 2
  %713 = getelementptr inbounds nuw %struct.VecAction, ptr %712, i32 0, i32 2
  %714 = load ptr, ptr %713, align 8, !tbaa !200
  %715 = load i32, ptr %20, align 4, !tbaa !10
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds ptr, ptr %714, i64 %716
  %718 = load ptr, ptr %717, align 8, !tbaa !36
  store ptr %718, ptr %28, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.start.p0(i64 256, ptr %30) #8
  %719 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  %720 = load i32, ptr %18, align 4, !tbaa !10
  %721 = load i32, ptr %19, align 4, !tbaa !10
  %722 = load ptr, ptr %6, align 8, !tbaa !80
  %723 = call signext i32 (ptr, ptr, ...) @sprintf(ptr noundef %719, ptr noundef @.str.86, i32 noundef signext %720, i32 noundef signext %721, ptr noundef %722) #8
  %724 = load ptr, ptr %24, align 8, !tbaa !12
  %725 = getelementptr inbounds nuw %struct.VecScanState, ptr %724, i32 0, i32 2
  %726 = load ptr, ptr %725, align 8, !tbaa !195
  %727 = load i32, ptr %19, align 4, !tbaa !10
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds ptr, ptr %726, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !19
  %731 = getelementptr inbounds nuw %struct.ScanState, ptr %730, i32 0, i32 2
  %732 = getelementptr inbounds nuw %struct.VecAction, ptr %731, i32 0, i32 0
  %733 = load i32, ptr %732, align 8, !tbaa !199
  %734 = icmp eq i32 %733, 1
  br i1 %734, label %735, label %747

735:                                              ; preds = %704
  %736 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  %737 = call noalias ptr @strdup(ptr noundef %736) #8
  %738 = load ptr, ptr %28, align 8, !tbaa !36
  %739 = getelementptr inbounds nuw %struct.Action, ptr %738, i32 0, i32 5
  store ptr %737, ptr %739, align 8, !tbaa !201
  %740 = load ptr, ptr %28, align 8, !tbaa !36
  %741 = call ptr @set_add_fn(ptr noundef %15, ptr noundef %740, ptr noundef @shift_fns)
  store ptr %741, ptr %29, align 8, !tbaa !36
  %742 = load ptr, ptr %29, align 8, !tbaa !36
  %743 = load ptr, ptr %28, align 8, !tbaa !36
  %744 = icmp ne ptr %742, %743
  br i1 %744, label %745, label %746

745:                                              ; preds = %735
  store i32 46, ptr %31, align 4
  br label %778

746:                                              ; preds = %735
  br label %747

747:                                              ; preds = %746, %704
  %748 = load i32, ptr %20, align 4, !tbaa !10
  %749 = icmp ne i32 %748, 0
  br i1 %749, label %754, label %750

750:                                              ; preds = %747
  %751 = load ptr, ptr %4, align 8, !tbaa !85
  %752 = getelementptr inbounds [256 x i8], ptr %30, i64 0, i64 0
  %753 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %751, ptr noundef @.str.87, ptr noundef %752) #8
  br label %754

754:                                              ; preds = %750, %747
  %755 = load ptr, ptr %4, align 8, !tbaa !85
  %756 = load ptr, ptr %28, align 8, !tbaa !36
  %757 = getelementptr inbounds nuw %struct.Action, ptr %756, i32 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !38
  %759 = getelementptr inbounds nuw %struct.Term, ptr %758, i32 0, i32 1
  %760 = load i32, ptr %759, align 4, !tbaa !44
  %761 = load ptr, ptr %6, align 8, !tbaa !80
  %762 = load i32, ptr %20, align 4, !tbaa !10
  %763 = load ptr, ptr %24, align 8, !tbaa !12
  %764 = getelementptr inbounds nuw %struct.VecScanState, ptr %763, i32 0, i32 2
  %765 = load ptr, ptr %764, align 8, !tbaa !195
  %766 = load i32, ptr %19, align 4, !tbaa !10
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds ptr, ptr %765, i64 %767
  %769 = load ptr, ptr %768, align 8, !tbaa !19
  %770 = getelementptr inbounds nuw %struct.ScanState, ptr %769, i32 0, i32 2
  %771 = getelementptr inbounds nuw %struct.VecAction, ptr %770, i32 0, i32 0
  %772 = load i32, ptr %771, align 8, !tbaa !199
  %773 = sub i32 %772, 1
  %774 = icmp eq i32 %762, %773
  %775 = zext i1 %774 to i64
  %776 = select i1 %774, ptr @.str.88, ptr @.str.24
  %777 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %755, ptr noundef @.str.75, i32 noundef signext %760, ptr noundef %761, ptr noundef %776) #8
  store i32 0, ptr %31, align 4
  br label %778

778:                                              ; preds = %754, %745
  call void @llvm.lifetime.end.p0(i64 256, ptr %30) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %29) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %28) #8
  %779 = load i32, ptr %31, align 4
  switch i32 %779, label %1188 [
    i32 0, label %780
    i32 46, label %781
  ]

780:                                              ; preds = %778
  br label %781

781:                                              ; preds = %780, %778
  %782 = load i32, ptr %20, align 4, !tbaa !10
  %783 = add nsw i32 %782, 1
  store i32 %783, ptr %20, align 4, !tbaa !10
  br label %691, !llvm.loop !202

784:                                              ; preds = %691
  br label %785

785:                                              ; preds = %784, %678
  br label %786

786:                                              ; preds = %785, %433
  br label %787

787:                                              ; preds = %786
  %788 = load i32, ptr %19, align 4, !tbaa !10
  %789 = add nsw i32 %788, 1
  store i32 %789, ptr %19, align 4, !tbaa !10
  br label %427, !llvm.loop !203

790:                                              ; preds = %427
  br label %791

791:                                              ; preds = %790
  %792 = load i32, ptr %18, align 4, !tbaa !10
  %793 = add nsw i32 %792, 1
  store i32 %793, ptr %18, align 4, !tbaa !10
  br label %246, !llvm.loop !204

794:                                              ; preds = %246
  store i32 0, ptr %18, align 4, !tbaa !10
  br label %795

795:                                              ; preds = %1136, %794
  %796 = load i32, ptr %18, align 4, !tbaa !10
  %797 = load ptr, ptr %5, align 8, !tbaa !78
  %798 = getelementptr inbounds nuw %struct.Grammar, ptr %797, i32 0, i32 3
  %799 = getelementptr inbounds nuw %struct.anon.4, ptr %798, i32 0, i32 0
  %800 = load i32, ptr %799, align 8, !tbaa !97
  %801 = icmp ult i32 %796, %800
  br i1 %801, label %802, label %1139

802:                                              ; preds = %795
  %803 = load ptr, ptr %5, align 8, !tbaa !78
  %804 = getelementptr inbounds nuw %struct.Grammar, ptr %803, i32 0, i32 3
  %805 = getelementptr inbounds nuw %struct.anon.4, ptr %804, i32 0, i32 2
  %806 = load ptr, ptr %805, align 8, !tbaa !170
  %807 = load i32, ptr %18, align 4, !tbaa !10
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds ptr, ptr %806, i64 %808
  %810 = load ptr, ptr %809, align 8, !tbaa !47
  store ptr %810, ptr %7, align 8, !tbaa !47
  %811 = load ptr, ptr %7, align 8, !tbaa !47
  %812 = getelementptr inbounds nuw %struct.State, ptr %811, i32 0, i32 9
  %813 = getelementptr inbounds nuw %struct.Scanner, ptr %812, i32 0, i32 0
  store ptr %813, ptr %24, align 8, !tbaa !12
  store i32 0, ptr %17, align 4, !tbaa !10
  %814 = load ptr, ptr %24, align 8, !tbaa !12
  %815 = getelementptr inbounds nuw %struct.VecScanState, ptr %814, i32 0, i32 0
  %816 = load i32, ptr %815, align 8, !tbaa !191
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %818, label %1135

818:                                              ; preds = %802
  %819 = load ptr, ptr %7, align 8, !tbaa !47
  %820 = getelementptr inbounds nuw %struct.State, ptr %819, i32 0, i32 13
  %821 = load ptr, ptr %820, align 8, !tbaa !183
  %822 = icmp ne ptr %821, null
  br i1 %822, label %1135, label %823

823:                                              ; preds = %818
  %824 = load ptr, ptr %4, align 8, !tbaa !85
  %825 = load ptr, ptr %7, align 8, !tbaa !47
  %826 = call ptr @scanner_u_type(ptr noundef %825)
  %827 = load i32, ptr %18, align 4, !tbaa !10
  %828 = load ptr, ptr %6, align 8, !tbaa !80
  %829 = load ptr, ptr %24, align 8, !tbaa !12
  %830 = getelementptr inbounds nuw %struct.VecScanState, ptr %829, i32 0, i32 0
  %831 = load i32, ptr %830, align 8, !tbaa !191
  %832 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %824, ptr noundef @.str.89, ptr noundef %826, i32 noundef signext %827, ptr noundef %828, i32 noundef signext %831) #8
  %833 = load ptr, ptr %7, align 8, !tbaa !47
  %834 = call signext i32 @scanner_size(ptr noundef %833)
  %835 = sub nsw i32 %834, 1
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %836
  store ptr %837, ptr %12, align 8, !tbaa !12
  store i32 0, ptr %19, align 4, !tbaa !10
  br label %838

838:                                              ; preds = %995, %823
  %839 = load i32, ptr %19, align 4, !tbaa !10
  %840 = load ptr, ptr %24, align 8, !tbaa !12
  %841 = getelementptr inbounds nuw %struct.VecScanState, ptr %840, i32 0, i32 0
  %842 = load i32, ptr %841, align 8, !tbaa !191
  %843 = icmp ult i32 %839, %842
  br i1 %843, label %844, label %998

844:                                              ; preds = %838
  call void @llvm.lifetime.start.p0(i64 8, ptr %32) #8
  %845 = load ptr, ptr %24, align 8, !tbaa !12
  %846 = getelementptr inbounds nuw %struct.VecScanState, ptr %845, i32 0, i32 2
  %847 = load ptr, ptr %846, align 8, !tbaa !195
  %848 = load i32, ptr %19, align 4, !tbaa !10
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds ptr, ptr %847, i64 %849
  %851 = load ptr, ptr %850, align 8, !tbaa !19
  %852 = getelementptr inbounds nuw %struct.ScanState, ptr %851, i32 0, i32 2
  %853 = getelementptr inbounds nuw %struct.VecAction, ptr %852, i32 0, i32 0
  %854 = load i32, ptr %853, align 8, !tbaa !199
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %895

856:                                              ; preds = %844
  %857 = load ptr, ptr %24, align 8, !tbaa !12
  %858 = getelementptr inbounds nuw %struct.VecScanState, ptr %857, i32 0, i32 2
  %859 = load ptr, ptr %858, align 8, !tbaa !195
  %860 = load i32, ptr %19, align 4, !tbaa !10
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds ptr, ptr %859, i64 %861
  %863 = load ptr, ptr %862, align 8, !tbaa !19
  %864 = getelementptr inbounds nuw %struct.ScanState, ptr %863, i32 0, i32 2
  %865 = getelementptr inbounds nuw %struct.VecAction, ptr %864, i32 0, i32 2
  %866 = load ptr, ptr %865, align 8, !tbaa !200
  %867 = getelementptr inbounds ptr, ptr %866, i64 0
  %868 = load ptr, ptr %867, align 8, !tbaa !36
  store ptr %868, ptr %32, align 8, !tbaa !36
  %869 = load ptr, ptr %24, align 8, !tbaa !12
  %870 = getelementptr inbounds nuw %struct.VecScanState, ptr %869, i32 0, i32 2
  %871 = load ptr, ptr %870, align 8, !tbaa !195
  %872 = load i32, ptr %19, align 4, !tbaa !10
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds ptr, ptr %871, i64 %873
  %875 = load ptr, ptr %874, align 8, !tbaa !19
  %876 = getelementptr inbounds nuw %struct.ScanState, ptr %875, i32 0, i32 2
  %877 = getelementptr inbounds nuw %struct.VecAction, ptr %876, i32 0, i32 0
  %878 = load i32, ptr %877, align 8, !tbaa !199
  %879 = icmp eq i32 %878, 1
  br i1 %879, label %880, label %888

880:                                              ; preds = %856
  %881 = load ptr, ptr %32, align 8, !tbaa !36
  %882 = call ptr @set_add_fn(ptr noundef %15, ptr noundef %881, ptr noundef @shift_fns)
  store ptr %882, ptr %32, align 8, !tbaa !36
  %883 = load ptr, ptr %4, align 8, !tbaa !85
  %884 = load ptr, ptr %32, align 8, !tbaa !36
  %885 = getelementptr inbounds nuw %struct.Action, ptr %884, i32 0, i32 5
  %886 = load ptr, ptr %885, align 8, !tbaa !201
  %887 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %883, ptr noundef @.str.90, ptr noundef %886) #8
  br label %894

888:                                              ; preds = %856
  %889 = load ptr, ptr %4, align 8, !tbaa !85
  %890 = load i32, ptr %18, align 4, !tbaa !10
  %891 = load i32, ptr %19, align 4, !tbaa !10
  %892 = load ptr, ptr %6, align 8, !tbaa !80
  %893 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %889, ptr noundef @.str.91, i32 noundef signext %890, i32 noundef signext %891, ptr noundef %892) #8
  br label %894

894:                                              ; preds = %888, %880
  br label %898

895:                                              ; preds = %844
  %896 = load ptr, ptr %4, align 8, !tbaa !85
  %897 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %896, ptr noundef @.str.92) #8
  br label %898

898:                                              ; preds = %895, %894
  store i32 0, ptr %20, align 4, !tbaa !10
  br label %899

899:                                              ; preds = %978, %898
  %900 = load i32, ptr %20, align 4, !tbaa !10
  %901 = load ptr, ptr %5, align 8, !tbaa !78
  %902 = getelementptr inbounds nuw %struct.Grammar, ptr %901, i32 0, i32 18
  %903 = load i32, ptr %902, align 4, !tbaa !172
  %904 = icmp slt i32 %900, %903
  br i1 %904, label %905, label %981

905:                                              ; preds = %899
  call void @llvm.lifetime.start.p0(i64 32, ptr %33) #8
  %906 = load ptr, ptr %7, align 8, !tbaa !47
  %907 = getelementptr inbounds nuw %struct.State, ptr %906, i32 0, i32 0
  %908 = load i32, ptr %907, align 8, !tbaa !89
  %909 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %33, i32 0, i32 0
  store i32 %908, ptr %909, align 8, !tbaa !192
  %910 = load i32, ptr %19, align 4, !tbaa !10
  %911 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %33, i32 0, i32 1
  store i32 %910, ptr %911, align 4, !tbaa !193
  %912 = load i32, ptr %20, align 4, !tbaa !10
  %913 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %33, i32 0, i32 2
  store i32 %912, ptr %913, align 8, !tbaa !194
  %914 = load ptr, ptr %24, align 8, !tbaa !12
  %915 = getelementptr inbounds nuw %struct.VecScanState, ptr %914, i32 0, i32 2
  %916 = load ptr, ptr %915, align 8, !tbaa !195
  %917 = load i32, ptr %19, align 4, !tbaa !10
  %918 = sext i32 %917 to i64
  %919 = getelementptr inbounds ptr, ptr %916, i64 %918
  %920 = load ptr, ptr %919, align 8, !tbaa !19
  %921 = getelementptr inbounds nuw %struct.ScanState, ptr %920, i32 0, i32 1
  %922 = load i32, ptr %20, align 4, !tbaa !10
  %923 = load ptr, ptr %5, align 8, !tbaa !78
  %924 = getelementptr inbounds nuw %struct.Grammar, ptr %923, i32 0, i32 19
  %925 = load i32, ptr %924, align 8, !tbaa !179
  %926 = mul nsw i32 %922, %925
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds [256 x ptr], ptr %921, i64 0, i64 %927
  %929 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %33, i32 0, i32 3
  store ptr %928, ptr %929, align 8, !tbaa !13
  %930 = load ptr, ptr %24, align 8, !tbaa !12
  %931 = getelementptr inbounds nuw %struct.VecScanState, ptr %930, i32 0, i32 2
  %932 = load ptr, ptr %931, align 8, !tbaa !195
  %933 = load i32, ptr %19, align 4, !tbaa !10
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds ptr, ptr %932, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !19
  %937 = getelementptr inbounds nuw %struct.ScanState, ptr %936, i32 0, i32 4
  %938 = load i32, ptr %20, align 4, !tbaa !10
  %939 = load ptr, ptr %5, align 8, !tbaa !78
  %940 = getelementptr inbounds nuw %struct.Grammar, ptr %939, i32 0, i32 19
  %941 = load i32, ptr %940, align 8, !tbaa !179
  %942 = mul nsw i32 %938, %941
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds [256 x ptr], ptr %937, i64 0, i64 %943
  %945 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %33, i32 0, i32 4
  store ptr %944, ptr %945, align 8, !tbaa !28
  store ptr %33, ptr %9, align 8, !tbaa !3
  %946 = load ptr, ptr %12, align 8, !tbaa !12
  %947 = load ptr, ptr %9, align 8, !tbaa !3
  %948 = call ptr @set_add_fn(ptr noundef %946, ptr noundef %947, ptr noundef @scanner_block_fns)
  store ptr %948, ptr %10, align 8, !tbaa !3
  %949 = load ptr, ptr %4, align 8, !tbaa !85
  %950 = load ptr, ptr %10, align 8, !tbaa !3
  %951 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %950, i32 0, i32 0
  %952 = load i32, ptr %951, align 8, !tbaa !192
  %953 = load ptr, ptr %10, align 8, !tbaa !3
  %954 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %953, i32 0, i32 1
  %955 = load i32, ptr %954, align 4, !tbaa !193
  %956 = load ptr, ptr %10, align 8, !tbaa !3
  %957 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %956, i32 0, i32 2
  %958 = load i32, ptr %957, align 8, !tbaa !194
  %959 = load ptr, ptr %6, align 8, !tbaa !80
  %960 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %949, ptr noundef @.str.93, i32 noundef signext %952, i32 noundef signext %955, i32 noundef signext %958, ptr noundef %959) #8
  %961 = load i32, ptr %20, align 4, !tbaa !10
  %962 = load ptr, ptr %5, align 8, !tbaa !78
  %963 = getelementptr inbounds nuw %struct.Grammar, ptr %962, i32 0, i32 18
  %964 = load i32, ptr %963, align 4, !tbaa !172
  %965 = sub nsw i32 %964, 1
  %966 = icmp ne i32 %961, %965
  br i1 %966, label %967, label %977

967:                                              ; preds = %905
  %968 = load ptr, ptr %4, align 8, !tbaa !85
  %969 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %968, ptr noundef @.str.24) #8
  %970 = load i32, ptr %20, align 4, !tbaa !10
  %971 = srem i32 %970, 2
  %972 = icmp eq i32 %971, 1
  br i1 %972, label %973, label %976

973:                                              ; preds = %967
  %974 = load ptr, ptr %4, align 8, !tbaa !85
  %975 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %974, ptr noundef @.str.94) #8
  br label %976

976:                                              ; preds = %973, %967
  br label %977

977:                                              ; preds = %976, %905
  call void @llvm.lifetime.end.p0(i64 32, ptr %33) #8
  br label %978

978:                                              ; preds = %977
  %979 = load i32, ptr %20, align 4, !tbaa !10
  %980 = add nsw i32 %979, 1
  store i32 %980, ptr %20, align 4, !tbaa !10
  br label %899, !llvm.loop !205

981:                                              ; preds = %899
  %982 = load i32, ptr %19, align 4, !tbaa !10
  %983 = load ptr, ptr %24, align 8, !tbaa !12
  %984 = getelementptr inbounds nuw %struct.VecScanState, ptr %983, i32 0, i32 0
  %985 = load i32, ptr %984, align 8, !tbaa !191
  %986 = sub i32 %985, 1
  %987 = icmp ne i32 %982, %986
  br i1 %987, label %988, label %991

988:                                              ; preds = %981
  %989 = load ptr, ptr %4, align 8, !tbaa !85
  %990 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %989, ptr noundef @.str.95) #8
  br label %994

991:                                              ; preds = %981
  %992 = load ptr, ptr %4, align 8, !tbaa !85
  %993 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %992, ptr noundef @.str.96) #8
  br label %994

994:                                              ; preds = %991, %988
  call void @llvm.lifetime.end.p0(i64 8, ptr %32) #8
  br label %995

995:                                              ; preds = %994
  %996 = load i32, ptr %19, align 4, !tbaa !10
  %997 = add nsw i32 %996, 1
  store i32 %997, ptr %19, align 4, !tbaa !10
  br label %838, !llvm.loop !206

998:                                              ; preds = %838
  %999 = load ptr, ptr %4, align 8, !tbaa !85
  %1000 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %999, ptr noundef @.str.49) #8
  %1001 = load ptr, ptr %7, align 8, !tbaa !47
  %1002 = getelementptr inbounds nuw %struct.State, ptr %1001, i32 0, i32 10
  %1003 = load i8, ptr %1002, align 8
  %1004 = lshr i8 %1003, 3
  %1005 = and i8 %1004, 3
  %1006 = zext i8 %1005 to i32
  %1007 = icmp ne i32 %1006, 1
  br i1 %1007, label %1008, label %1134

1008:                                             ; preds = %998
  %1009 = load ptr, ptr %4, align 8, !tbaa !85
  %1010 = load ptr, ptr %7, align 8, !tbaa !47
  %1011 = call ptr @scanner_u_type(ptr noundef %1010)
  %1012 = load i32, ptr %18, align 4, !tbaa !10
  %1013 = load ptr, ptr %6, align 8, !tbaa !80
  %1014 = load ptr, ptr %24, align 8, !tbaa !12
  %1015 = getelementptr inbounds nuw %struct.VecScanState, ptr %1014, i32 0, i32 0
  %1016 = load i32, ptr %1015, align 8, !tbaa !191
  %1017 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1009, ptr noundef @.str.97, ptr noundef %1011, i32 noundef signext %1012, ptr noundef %1013, i32 noundef signext %1016) #8
  %1018 = load ptr, ptr %7, align 8, !tbaa !47
  %1019 = call signext i32 @scanner_size(ptr noundef %1018)
  %1020 = sub nsw i32 %1019, 1
  %1021 = sext i32 %1020 to i64
  %1022 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %13, i64 0, i64 %1021
  store ptr %1022, ptr %14, align 8, !tbaa !12
  store i32 0, ptr %19, align 4, !tbaa !10
  br label %1023

1023:                                             ; preds = %1128, %1008
  %1024 = load i32, ptr %19, align 4, !tbaa !10
  %1025 = load ptr, ptr %24, align 8, !tbaa !12
  %1026 = getelementptr inbounds nuw %struct.VecScanState, ptr %1025, i32 0, i32 0
  %1027 = load i32, ptr %1026, align 8, !tbaa !191
  %1028 = icmp ult i32 %1024, %1027
  br i1 %1028, label %1029, label %1131

1029:                                             ; preds = %1023
  %1030 = load ptr, ptr %4, align 8, !tbaa !85
  %1031 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1030, ptr noundef @.str.98) #8
  store i32 0, ptr %20, align 4, !tbaa !10
  br label %1032

1032:                                             ; preds = %1111, %1029
  %1033 = load i32, ptr %20, align 4, !tbaa !10
  %1034 = load ptr, ptr %5, align 8, !tbaa !78
  %1035 = getelementptr inbounds nuw %struct.Grammar, ptr %1034, i32 0, i32 18
  %1036 = load i32, ptr %1035, align 4, !tbaa !172
  %1037 = icmp slt i32 %1033, %1036
  br i1 %1037, label %1038, label %1114

1038:                                             ; preds = %1032
  call void @llvm.lifetime.start.p0(i64 32, ptr %34) #8
  %1039 = load ptr, ptr %7, align 8, !tbaa !47
  %1040 = getelementptr inbounds nuw %struct.State, ptr %1039, i32 0, i32 0
  %1041 = load i32, ptr %1040, align 8, !tbaa !89
  %1042 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %34, i32 0, i32 0
  store i32 %1041, ptr %1042, align 8, !tbaa !192
  %1043 = load i32, ptr %19, align 4, !tbaa !10
  %1044 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %34, i32 0, i32 1
  store i32 %1043, ptr %1044, align 4, !tbaa !193
  %1045 = load i32, ptr %20, align 4, !tbaa !10
  %1046 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %34, i32 0, i32 2
  store i32 %1045, ptr %1046, align 8, !tbaa !194
  %1047 = load ptr, ptr %24, align 8, !tbaa !12
  %1048 = getelementptr inbounds nuw %struct.VecScanState, ptr %1047, i32 0, i32 2
  %1049 = load ptr, ptr %1048, align 8, !tbaa !195
  %1050 = load i32, ptr %19, align 4, !tbaa !10
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds ptr, ptr %1049, i64 %1051
  %1053 = load ptr, ptr %1052, align 8, !tbaa !19
  %1054 = getelementptr inbounds nuw %struct.ScanState, ptr %1053, i32 0, i32 1
  %1055 = load i32, ptr %20, align 4, !tbaa !10
  %1056 = load ptr, ptr %5, align 8, !tbaa !78
  %1057 = getelementptr inbounds nuw %struct.Grammar, ptr %1056, i32 0, i32 19
  %1058 = load i32, ptr %1057, align 8, !tbaa !179
  %1059 = mul nsw i32 %1055, %1058
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds [256 x ptr], ptr %1054, i64 0, i64 %1060
  %1062 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %34, i32 0, i32 3
  store ptr %1061, ptr %1062, align 8, !tbaa !13
  %1063 = load ptr, ptr %24, align 8, !tbaa !12
  %1064 = getelementptr inbounds nuw %struct.VecScanState, ptr %1063, i32 0, i32 2
  %1065 = load ptr, ptr %1064, align 8, !tbaa !195
  %1066 = load i32, ptr %19, align 4, !tbaa !10
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds ptr, ptr %1065, i64 %1067
  %1069 = load ptr, ptr %1068, align 8, !tbaa !19
  %1070 = getelementptr inbounds nuw %struct.ScanState, ptr %1069, i32 0, i32 4
  %1071 = load i32, ptr %20, align 4, !tbaa !10
  %1072 = load ptr, ptr %5, align 8, !tbaa !78
  %1073 = getelementptr inbounds nuw %struct.Grammar, ptr %1072, i32 0, i32 19
  %1074 = load i32, ptr %1073, align 8, !tbaa !179
  %1075 = mul nsw i32 %1071, %1074
  %1076 = sext i32 %1075 to i64
  %1077 = getelementptr inbounds [256 x ptr], ptr %1070, i64 0, i64 %1076
  %1078 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %34, i32 0, i32 4
  store ptr %1077, ptr %1078, align 8, !tbaa !28
  store ptr %34, ptr %9, align 8, !tbaa !3
  %1079 = load ptr, ptr %14, align 8, !tbaa !12
  %1080 = load ptr, ptr %9, align 8, !tbaa !3
  %1081 = call ptr @set_add_fn(ptr noundef %1079, ptr noundef %1080, ptr noundef @trans_scanner_block_fns)
  store ptr %1081, ptr %10, align 8, !tbaa !3
  %1082 = load ptr, ptr %4, align 8, !tbaa !85
  %1083 = load ptr, ptr %10, align 8, !tbaa !3
  %1084 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %1083, i32 0, i32 0
  %1085 = load i32, ptr %1084, align 8, !tbaa !192
  %1086 = load ptr, ptr %10, align 8, !tbaa !3
  %1087 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %1086, i32 0, i32 1
  %1088 = load i32, ptr %1087, align 4, !tbaa !193
  %1089 = load ptr, ptr %10, align 8, !tbaa !3
  %1090 = getelementptr inbounds nuw %struct.ScannerBlock, ptr %1089, i32 0, i32 2
  %1091 = load i32, ptr %1090, align 8, !tbaa !194
  %1092 = load ptr, ptr %6, align 8, !tbaa !80
  %1093 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1082, ptr noundef @.str.99, i32 noundef signext %1085, i32 noundef signext %1088, i32 noundef signext %1091, ptr noundef %1092) #8
  %1094 = load i32, ptr %20, align 4, !tbaa !10
  %1095 = load ptr, ptr %5, align 8, !tbaa !78
  %1096 = getelementptr inbounds nuw %struct.Grammar, ptr %1095, i32 0, i32 18
  %1097 = load i32, ptr %1096, align 4, !tbaa !172
  %1098 = sub nsw i32 %1097, 1
  %1099 = icmp ne i32 %1094, %1098
  br i1 %1099, label %1100, label %1110

1100:                                             ; preds = %1038
  %1101 = load ptr, ptr %4, align 8, !tbaa !85
  %1102 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1101, ptr noundef @.str.24) #8
  %1103 = load i32, ptr %20, align 4, !tbaa !10
  %1104 = srem i32 %1103, 2
  %1105 = icmp eq i32 %1104, 1
  br i1 %1105, label %1106, label %1109

1106:                                             ; preds = %1100
  %1107 = load ptr, ptr %4, align 8, !tbaa !85
  %1108 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1107, ptr noundef @.str.94) #8
  br label %1109

1109:                                             ; preds = %1106, %1100
  br label %1110

1110:                                             ; preds = %1109, %1038
  call void @llvm.lifetime.end.p0(i64 32, ptr %34) #8
  br label %1111

1111:                                             ; preds = %1110
  %1112 = load i32, ptr %20, align 4, !tbaa !10
  %1113 = add nsw i32 %1112, 1
  store i32 %1113, ptr %20, align 4, !tbaa !10
  br label %1032, !llvm.loop !207

1114:                                             ; preds = %1032
  %1115 = load i32, ptr %19, align 4, !tbaa !10
  %1116 = load ptr, ptr %24, align 8, !tbaa !12
  %1117 = getelementptr inbounds nuw %struct.VecScanState, ptr %1116, i32 0, i32 0
  %1118 = load i32, ptr %1117, align 8, !tbaa !191
  %1119 = sub i32 %1118, 1
  %1120 = icmp ne i32 %1115, %1119
  br i1 %1120, label %1121, label %1124

1121:                                             ; preds = %1114
  %1122 = load ptr, ptr %4, align 8, !tbaa !85
  %1123 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1122, ptr noundef @.str.95) #8
  br label %1127

1124:                                             ; preds = %1114
  %1125 = load ptr, ptr %4, align 8, !tbaa !85
  %1126 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1125, ptr noundef @.str.96) #8
  br label %1127

1127:                                             ; preds = %1124, %1121
  br label %1128

1128:                                             ; preds = %1127
  %1129 = load i32, ptr %19, align 4, !tbaa !10
  %1130 = add nsw i32 %1129, 1
  store i32 %1130, ptr %19, align 4, !tbaa !10
  br label %1023, !llvm.loop !208

1131:                                             ; preds = %1023
  %1132 = load ptr, ptr %4, align 8, !tbaa !85
  %1133 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %1132, ptr noundef @.str.49) #8
  br label %1134

1134:                                             ; preds = %1131, %998
  br label %1135

1135:                                             ; preds = %1134, %818, %802
  br label %1136

1136:                                             ; preds = %1135
  %1137 = load i32, ptr %18, align 4, !tbaa !10
  %1138 = add nsw i32 %1137, 1
  store i32 %1138, ptr %18, align 4, !tbaa !10
  br label %795, !llvm.loop !209

1139:                                             ; preds = %795
  store i32 0, ptr %18, align 4, !tbaa !10
  br label %1140

1140:                                             ; preds = %1183, %1139
  %1141 = load i32, ptr %18, align 4, !tbaa !10
  %1142 = icmp slt i32 %1141, 4
  br i1 %1142, label %1143, label %1186

1143:                                             ; preds = %1140
  br label %1144

1144:                                             ; preds = %1143
  %1145 = load i32, ptr %18, align 4, !tbaa !10
  %1146 = sext i32 %1145 to i64
  %1147 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %1146
  %1148 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %1147, i32 0, i32 2
  %1149 = load ptr, ptr %1148, align 8, !tbaa !177
  %1150 = icmp ne ptr %1149, null
  br i1 %1150, label %1151, label %1169

1151:                                             ; preds = %1144
  %1152 = load i32, ptr %18, align 4, !tbaa !10
  %1153 = sext i32 %1152 to i64
  %1154 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %1153
  %1155 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %1154, i32 0, i32 2
  %1156 = load ptr, ptr %1155, align 8, !tbaa !177
  %1157 = load i32, ptr %18, align 4, !tbaa !10
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %1158
  %1160 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %1159, i32 0, i32 3
  %1161 = getelementptr inbounds [3 x ptr], ptr %1160, i64 0, i64 0
  %1162 = icmp ne ptr %1156, %1161
  br i1 %1162, label %1163, label %1169

1163:                                             ; preds = %1151
  %1164 = load i32, ptr %18, align 4, !tbaa !10
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %1165
  %1167 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %1166, i32 0, i32 2
  %1168 = load ptr, ptr %1167, align 8, !tbaa !177
  call void @free(ptr noundef %1168) #8
  br label %1169

1169:                                             ; preds = %1163, %1151, %1144
  br label %1170

1170:                                             ; preds = %1169
  %1171 = load i32, ptr %18, align 4, !tbaa !10
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %1172
  %1174 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %1173, i32 0, i32 0
  store i32 0, ptr %1174, align 8, !tbaa !174
  %1175 = load i32, ptr %18, align 4, !tbaa !10
  %1176 = sext i32 %1175 to i64
  %1177 = getelementptr inbounds [4 x %struct.VecScannerBlock], ptr %11, i64 0, i64 %1176
  %1178 = getelementptr inbounds nuw %struct.VecScannerBlock, ptr %1177, i32 0, i32 2
  store ptr null, ptr %1178, align 8, !tbaa !177
  br label %1179

1179:                                             ; preds = %1170
  br label %1180

1180:                                             ; preds = %1179
  br label %1181

1181:                                             ; preds = %1180
  br label %1182

1182:                                             ; preds = %1181
  br label %1183

1183:                                             ; preds = %1182
  %1184 = load i32, ptr %18, align 4, !tbaa !10
  %1185 = add nsw i32 %1184, 1
  store i32 %1185, ptr %18, align 4, !tbaa !10
  br label %1140, !llvm.loop !210

1186:                                             ; preds = %1140
  %1187 = load ptr, ptr %8, align 8, !tbaa !3
  call void @free(ptr noundef %1187) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %26) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr %25) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %24) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %23) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %22) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %21) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %20) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 160, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 160, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %7) #8
  ret void

1188:                                             ; preds = %778
  unreachable
}

; Function Attrs: nounwind
define internal void @write_scanner_code_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %150, %3
  %13 = load i32, ptr %7, align 4, !tbaa !10
  %14 = load ptr, ptr %5, align 8, !tbaa !78
  %15 = getelementptr inbounds nuw %struct.Grammar, ptr %14, i32 0, i32 3
  %16 = getelementptr inbounds nuw %struct.anon.4, ptr %15, i32 0, i32 0
  %17 = load i32, ptr %16, align 8, !tbaa !97
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %153

19:                                               ; preds = %12
  %20 = load ptr, ptr %5, align 8, !tbaa !78
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 3
  %22 = getelementptr inbounds nuw %struct.anon.4, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = load i32, ptr %7, align 4, !tbaa !10
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %23, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  store ptr %27, ptr %11, align 8, !tbaa !47
  store i32 0, ptr %8, align 4, !tbaa !10
  br label %28

28:                                               ; preds = %135, %19
  %29 = load i32, ptr %8, align 4, !tbaa !10
  %30 = load ptr, ptr %11, align 8, !tbaa !47
  %31 = getelementptr inbounds nuw %struct.State, ptr %30, i32 0, i32 5
  %32 = getelementptr inbounds nuw %struct.VecAction, ptr %31, i32 0, i32 0
  %33 = load i32, ptr %32, align 8, !tbaa !182
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %28
  %36 = load ptr, ptr %11, align 8, !tbaa !47
  %37 = getelementptr inbounds nuw %struct.State, ptr %36, i32 0, i32 5
  %38 = getelementptr inbounds nuw %struct.VecAction, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !184
  %40 = load i32, ptr %8, align 4, !tbaa !10
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  store ptr %43, ptr %10, align 8, !tbaa !36
  %44 = load ptr, ptr %10, align 8, !tbaa !36
  %45 = getelementptr inbounds nuw %struct.Action, ptr %44, i32 0, i32 0
  %46 = load i32, ptr %45, align 8, !tbaa !211
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %134

48:                                               ; preds = %35
  %49 = load ptr, ptr %10, align 8, !tbaa !36
  %50 = getelementptr inbounds nuw %struct.Action, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = getelementptr inbounds nuw %struct.Term, ptr %51, i32 0, i32 0
  %53 = load i32, ptr %52, align 8, !tbaa !114
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %134

55:                                               ; preds = %48
  %56 = load ptr, ptr %11, align 8, !tbaa !47
  %57 = getelementptr inbounds nuw %struct.State, ptr %56, i32 0, i32 10
  %58 = load i8, ptr %57, align 8
  %59 = lshr i8 %58, 1
  %60 = and i8 %59, 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %11, align 8, !tbaa !47
  %65 = getelementptr inbounds nuw %struct.State, ptr %64, i32 0, i32 10
  %66 = load i8, ptr %65, align 8
  %67 = and i8 %66, -3
  %68 = or i8 %67, 2
  store i8 %68, ptr %65, align 8
  %69 = load ptr, ptr %4, align 8, !tbaa !85
  %70 = load i32, ptr %7, align 4, !tbaa !10
  %71 = load ptr, ptr %6, align 8, !tbaa !80
  %72 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.107, i32 noundef signext %70, ptr noundef %71) #8
  br label %73

73:                                               ; preds = %63, %55
  %74 = load ptr, ptr %4, align 8, !tbaa !85
  %75 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.108) #8
  %76 = load ptr, ptr %10, align 8, !tbaa !36
  %77 = getelementptr inbounds nuw %struct.Action, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds nuw %struct.Term, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !69
  %81 = call i64 @strlen(ptr noundef %80) #9
  %82 = trunc i64 %81 to i32
  store i32 %82, ptr %9, align 4, !tbaa !10
  %83 = load ptr, ptr %10, align 8, !tbaa !36
  %84 = getelementptr inbounds nuw %struct.Action, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !38
  %86 = getelementptr inbounds nuw %struct.Term, ptr %85, i32 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !69
  %88 = load i32, ptr %9, align 4, !tbaa !10
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %87, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !66
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 41
  br i1 %94, label %95, label %108

95:                                               ; preds = %73
  %96 = load ptr, ptr %10, align 8, !tbaa !36
  %97 = getelementptr inbounds nuw %struct.Action, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !38
  %99 = getelementptr inbounds nuw %struct.Term, ptr %98, i32 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !69
  %101 = load i32, ptr %9, align 4, !tbaa !10
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = load ptr, ptr %4, align 8, !tbaa !85
  %105 = call i64 @fwrite(ptr noundef %100, i64 noundef %103, i64 noundef 1, ptr noundef %104)
  %106 = load ptr, ptr %4, align 8, !tbaa !85
  %107 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.24) #8
  br label %116

108:                                              ; preds = %73
  %109 = load ptr, ptr %4, align 8, !tbaa !85
  %110 = load ptr, ptr %10, align 8, !tbaa !36
  %111 = getelementptr inbounds nuw %struct.Action, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !38
  %113 = getelementptr inbounds nuw %struct.Term, ptr %112, i32 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !69
  %115 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef @.str.109, ptr noundef %114) #8
  br label %116

116:                                              ; preds = %108, %95
  %117 = load ptr, ptr %4, align 8, !tbaa !85
  %118 = load ptr, ptr %10, align 8, !tbaa !36
  %119 = getelementptr inbounds nuw %struct.Action, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !38
  %121 = getelementptr inbounds nuw %struct.Term, ptr %120, i32 0, i32 1
  %122 = load i32, ptr %121, align 4, !tbaa !44
  %123 = load ptr, ptr %5, align 8, !tbaa !78
  %124 = getelementptr inbounds nuw %struct.Grammar, ptr %123, i32 0, i32 1
  %125 = getelementptr inbounds nuw %struct.anon.2, ptr %124, i32 0, i32 0
  %126 = load i32, ptr %125, align 8, !tbaa !108
  %127 = add i32 %122, %126
  %128 = load ptr, ptr %10, align 8, !tbaa !36
  %129 = getelementptr inbounds nuw %struct.Action, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !38
  %131 = getelementptr inbounds nuw %struct.Term, ptr %130, i32 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !168
  %133 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str.110, i32 noundef signext %127, i32 noundef signext %132) #8
  br label %134

134:                                              ; preds = %116, %48, %35
  br label %135

135:                                              ; preds = %134
  %136 = load i32, ptr %8, align 4, !tbaa !10
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %8, align 4, !tbaa !10
  br label %28, !llvm.loop !212

138:                                              ; preds = %28
  %139 = load ptr, ptr %11, align 8, !tbaa !47
  %140 = getelementptr inbounds nuw %struct.State, ptr %139, i32 0, i32 10
  %141 = load i8, ptr %140, align 8
  %142 = lshr i8 %141, 1
  %143 = and i8 %142, 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load ptr, ptr %4, align 8, !tbaa !85
  %148 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str.111) #8
  br label %149

149:                                              ; preds = %146, %138
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %7, align 4, !tbaa !10
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %7, align 4, !tbaa !10
  br label %12, !llvm.loop !213

153:                                              ; preds = %12
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define internal void @write_goto_data_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.anon.9, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 40, ptr %7) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  store ptr null, ptr %9, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %17) #8
  %18 = load ptr, ptr %5, align 8, !tbaa !78
  %19 = getelementptr inbounds nuw %struct.Grammar, ptr %18, i32 0, i32 1
  %20 = getelementptr inbounds nuw %struct.anon.2, ptr %19, i32 0, i32 0
  %21 = load i32, ptr %20, align 8, !tbaa !108
  %22 = load ptr, ptr %5, align 8, !tbaa !78
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 2
  %24 = getelementptr inbounds nuw %struct.anon.3, ptr %23, i32 0, i32 0
  %25 = load i32, ptr %24, align 8, !tbaa !109
  %26 = add i32 %21, %25
  %27 = add i32 %26, 7
  %28 = udiv i32 %27, 8
  store i32 %28, ptr %15, align 4, !tbaa !10
  %29 = load i32, ptr %15, align 4, !tbaa !10
  %30 = sext i32 %29 to i64
  %31 = call noalias ptr @malloc(i64 noundef %30) #11
  store ptr %31, ptr %9, align 8, !tbaa !80
  br label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  store i32 0, ptr %33, align 8, !tbaa !214
  %34 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  store ptr null, ptr %34, align 8, !tbaa !217
  br label %35

35:                                               ; preds = %32
  br label %36

36:                                               ; preds = %35
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %37

37:                                               ; preds = %543, %36
  %38 = load i32, ptr %10, align 4, !tbaa !10
  %39 = load ptr, ptr %5, align 8, !tbaa !78
  %40 = getelementptr inbounds nuw %struct.Grammar, ptr %39, i32 0, i32 3
  %41 = getelementptr inbounds nuw %struct.anon.4, ptr %40, i32 0, i32 0
  %42 = load i32, ptr %41, align 8, !tbaa !97
  %43 = icmp ult i32 %38, %42
  br i1 %43, label %44, label %546

44:                                               ; preds = %37
  %45 = load ptr, ptr %5, align 8, !tbaa !78
  %46 = getelementptr inbounds nuw %struct.Grammar, ptr %45, i32 0, i32 3
  %47 = getelementptr inbounds nuw %struct.anon.4, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !170
  %49 = load i32, ptr %10, align 4, !tbaa !10
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %48, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !47
  store ptr %52, ptr %8, align 8, !tbaa !47
  %53 = load ptr, ptr %8, align 8, !tbaa !47
  %54 = getelementptr inbounds nuw %struct.State, ptr %53, i32 0, i32 4
  %55 = getelementptr inbounds nuw %struct.VecGoto, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !218
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %357

58:                                               ; preds = %44
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %59

59:                                               ; preds = %103, %58
  %60 = load i32, ptr %11, align 4, !tbaa !10
  %61 = load ptr, ptr %8, align 8, !tbaa !47
  %62 = getelementptr inbounds nuw %struct.State, ptr %61, i32 0, i32 4
  %63 = getelementptr inbounds nuw %struct.VecGoto, ptr %62, i32 0, i32 0
  %64 = load i32, ptr %63, align 8, !tbaa !218
  %65 = icmp ult i32 %60, %64
  br i1 %65, label %66, label %106

66:                                               ; preds = %59
  %67 = load ptr, ptr %8, align 8, !tbaa !47
  %68 = getelementptr inbounds nuw %struct.State, ptr %67, i32 0, i32 4
  %69 = getelementptr inbounds nuw %struct.VecGoto, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !219
  %71 = load i32, ptr %11, align 4, !tbaa !10
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds ptr, ptr %70, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !220
  %75 = getelementptr inbounds nuw %struct.Goto, ptr %74, i32 0, i32 0
  %76 = load ptr, ptr %75, align 8, !tbaa !222
  %77 = getelementptr inbounds nuw %struct.Elem, ptr %76, i32 0, i32 0
  %78 = load i32, ptr %77, align 8, !tbaa !224
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %102

80:                                               ; preds = %66
  %81 = load ptr, ptr %8, align 8, !tbaa !47
  %82 = getelementptr inbounds nuw %struct.State, ptr %81, i32 0, i32 4
  %83 = getelementptr inbounds nuw %struct.VecGoto, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !219
  %85 = load i32, ptr %11, align 4, !tbaa !10
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %84, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !220
  %89 = getelementptr inbounds nuw %struct.Goto, ptr %88, i32 0, i32 0
  %90 = load ptr, ptr %89, align 8, !tbaa !222
  %91 = getelementptr inbounds nuw %struct.Elem, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = getelementptr inbounds nuw %struct.Term, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !114
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %102

96:                                               ; preds = %80
  %97 = load ptr, ptr %8, align 8, !tbaa !47
  %98 = getelementptr inbounds nuw %struct.State, ptr %97, i32 0, i32 10
  %99 = load i8, ptr %98, align 8
  %100 = and i8 %99, -5
  %101 = or i8 %100, 4
  store i8 %101, ptr %98, align 8
  br label %102

102:                                              ; preds = %96, %80, %66
  br label %103

103:                                              ; preds = %102
  %104 = load i32, ptr %11, align 4, !tbaa !10
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %11, align 4, !tbaa !10
  br label %59, !llvm.loop !226

106:                                              ; preds = %59
  %107 = load ptr, ptr %9, align 8, !tbaa !80
  %108 = load i32, ptr %15, align 4, !tbaa !10
  %109 = sext i32 %108 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %107, i8 0, i64 %109, i1 false)
  store i32 0, ptr %14, align 4, !tbaa !10
  %110 = load ptr, ptr %5, align 8, !tbaa !78
  %111 = load ptr, ptr %8, align 8, !tbaa !47
  %112 = getelementptr inbounds nuw %struct.State, ptr %111, i32 0, i32 4
  %113 = getelementptr inbounds nuw %struct.VecGoto, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !219
  %115 = getelementptr inbounds ptr, ptr %114, i64 0
  %116 = load ptr, ptr %115, align 8, !tbaa !220
  %117 = getelementptr inbounds nuw %struct.Goto, ptr %116, i32 0, i32 0
  %118 = load ptr, ptr %117, align 8, !tbaa !222
  %119 = call signext i32 @elem_symbol(ptr noundef %110, ptr noundef %118)
  store i32 %119, ptr %17, align 4, !tbaa !10
  %120 = load i32, ptr %17, align 4, !tbaa !10
  %121 = srem i32 %120, 8
  %122 = shl i32 1, %121
  %123 = load ptr, ptr %9, align 8, !tbaa !80
  %124 = load i32, ptr %17, align 4, !tbaa !10
  %125 = sdiv i32 %124, 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %123, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !66
  %129 = zext i8 %128 to i32
  %130 = or i32 %129, %122
  %131 = trunc i32 %130 to i8
  store i8 %131, ptr %127, align 1, !tbaa !66
  store i32 1, ptr %11, align 4, !tbaa !10
  br label %132

132:                                              ; preds = %171, %106
  %133 = load i32, ptr %11, align 4, !tbaa !10
  %134 = load ptr, ptr %8, align 8, !tbaa !47
  %135 = getelementptr inbounds nuw %struct.State, ptr %134, i32 0, i32 4
  %136 = getelementptr inbounds nuw %struct.VecGoto, ptr %135, i32 0, i32 0
  %137 = load i32, ptr %136, align 8, !tbaa !218
  %138 = icmp ult i32 %133, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %132
  %140 = load ptr, ptr %5, align 8, !tbaa !78
  %141 = load ptr, ptr %8, align 8, !tbaa !47
  %142 = getelementptr inbounds nuw %struct.State, ptr %141, i32 0, i32 4
  %143 = getelementptr inbounds nuw %struct.VecGoto, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !219
  %145 = load i32, ptr %11, align 4, !tbaa !10
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %144, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !220
  %149 = getelementptr inbounds nuw %struct.Goto, ptr %148, i32 0, i32 0
  %150 = load ptr, ptr %149, align 8, !tbaa !222
  %151 = call signext i32 @elem_symbol(ptr noundef %140, ptr noundef %150)
  store i32 %151, ptr %16, align 4, !tbaa !10
  %152 = load i32, ptr %16, align 4, !tbaa !10
  %153 = srem i32 %152, 8
  %154 = shl i32 1, %153
  %155 = load ptr, ptr %9, align 8, !tbaa !80
  %156 = load i32, ptr %16, align 4, !tbaa !10
  %157 = sdiv i32 %156, 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %155, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !66
  %161 = zext i8 %160 to i32
  %162 = or i32 %161, %154
  %163 = trunc i32 %162 to i8
  store i8 %163, ptr %159, align 1, !tbaa !66
  %164 = load i32, ptr %16, align 4, !tbaa !10
  %165 = load i32, ptr %17, align 4, !tbaa !10
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %139
  %168 = load i32, ptr %11, align 4, !tbaa !10
  store i32 %168, ptr %14, align 4, !tbaa !10
  %169 = load i32, ptr %16, align 4, !tbaa !10
  store i32 %169, ptr %17, align 4, !tbaa !10
  br label %170

170:                                              ; preds = %167, %139
  br label %171

171:                                              ; preds = %170
  %172 = load i32, ptr %11, align 4, !tbaa !10
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %11, align 4, !tbaa !10
  br label %132, !llvm.loop !227

174:                                              ; preds = %132
  store i32 1, ptr %13, align 4, !tbaa !10
  br label %175

175:                                              ; preds = %323, %174
  %176 = load i32, ptr %13, align 4, !tbaa !10
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %324

178:                                              ; preds = %175
  store i32 0, ptr %13, align 4, !tbaa !10
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %179

179:                                              ; preds = %320, %178
  %180 = load i32, ptr %11, align 4, !tbaa !10
  %181 = load ptr, ptr %8, align 8, !tbaa !47
  %182 = getelementptr inbounds nuw %struct.State, ptr %181, i32 0, i32 4
  %183 = getelementptr inbounds nuw %struct.VecGoto, ptr %182, i32 0, i32 0
  %184 = load i32, ptr %183, align 8, !tbaa !218
  %185 = icmp ult i32 %180, %184
  br i1 %185, label %186, label %323

186:                                              ; preds = %179
  %187 = load ptr, ptr %5, align 8, !tbaa !78
  %188 = load ptr, ptr %8, align 8, !tbaa !47
  %189 = getelementptr inbounds nuw %struct.State, ptr %188, i32 0, i32 4
  %190 = getelementptr inbounds nuw %struct.VecGoto, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !219
  %192 = load i32, ptr %11, align 4, !tbaa !10
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %191, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !220
  %196 = getelementptr inbounds nuw %struct.Goto, ptr %195, i32 0, i32 0
  %197 = load ptr, ptr %196, align 8, !tbaa !222
  %198 = call signext i32 @elem_symbol(ptr noundef %187, ptr noundef %197)
  store i32 %198, ptr %12, align 4, !tbaa !10
  %199 = load i32, ptr %17, align 4, !tbaa !10
  %200 = load i32, ptr %12, align 4, !tbaa !10
  %201 = sub nsw i32 %200, %199
  store i32 %201, ptr %12, align 4, !tbaa !10
  br label %202

202:                                              ; preds = %257, %186
  %203 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %204 = load i32, ptr %203, align 8, !tbaa !214
  %205 = load i32, ptr %12, align 4, !tbaa !10
  %206 = icmp ule i32 %204, %205
  br i1 %206, label %207, label %258

207:                                              ; preds = %202
  br label %208

208:                                              ; preds = %207
  %209 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !217
  %211 = icmp ne ptr %210, null
  br i1 %211, label %221, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 3
  %214 = getelementptr inbounds [3 x i64], ptr %213, i64 0, i64 0
  %215 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  store ptr %214, ptr %215, align 8, !tbaa !217
  %216 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %217 = load i32, ptr %216, align 8, !tbaa !214
  %218 = add i32 %217, 1
  store i32 %218, ptr %216, align 8, !tbaa !214
  %219 = zext i32 %217 to i64
  %220 = getelementptr inbounds nuw i64, ptr %214, i64 %219
  store i64 0, ptr %220, align 8, !tbaa !228
  br label %257

221:                                              ; preds = %208
  %222 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !217
  %224 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 3
  %225 = getelementptr inbounds [3 x i64], ptr %224, i64 0, i64 0
  %226 = icmp eq ptr %223, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %221
  %228 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %229 = load i32, ptr %228, align 8, !tbaa !214
  %230 = icmp ult i32 %229, 3
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !217
  %234 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %235 = load i32, ptr %234, align 8, !tbaa !214
  %236 = add i32 %235, 1
  store i32 %236, ptr %234, align 8, !tbaa !214
  %237 = zext i32 %235 to i64
  %238 = getelementptr inbounds nuw i64, ptr %233, i64 %237
  store i64 0, ptr %238, align 8, !tbaa !228
  br label %257

239:                                              ; preds = %227
  br label %254

240:                                              ; preds = %221
  %241 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %242 = load i32, ptr %241, align 8, !tbaa !214
  %243 = and i32 %242, 7
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %247 = load ptr, ptr %246, align 8, !tbaa !217
  %248 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %249 = load i32, ptr %248, align 8, !tbaa !214
  %250 = add i32 %249, 1
  store i32 %250, ptr %248, align 8, !tbaa !214
  %251 = zext i32 %249 to i64
  %252 = getelementptr inbounds nuw i64, ptr %247, i64 %251
  store i64 0, ptr %252, align 8, !tbaa !228
  br label %257

253:                                              ; preds = %240
  br label %254

254:                                              ; preds = %253, %239
  br label %255

255:                                              ; preds = %254
  call void @vec_add_internal(ptr noundef %7, ptr noundef null)
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256, %245, %231, %212
  br label %202, !llvm.loop !230

258:                                              ; preds = %202
  %259 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !217
  %261 = load i32, ptr %12, align 4, !tbaa !10
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, ptr %260, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !228
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %299

266:                                              ; preds = %258
  store i32 1, ptr %13, align 4, !tbaa !10
  %267 = load i32, ptr %11, align 4, !tbaa !10
  %268 = add nsw i32 %267, -1
  store i32 %268, ptr %11, align 4, !tbaa !10
  br label %269

269:                                              ; preds = %293, %266
  %270 = load i32, ptr %11, align 4, !tbaa !10
  %271 = icmp sge i32 %270, 0
  br i1 %271, label %272, label %296

272:                                              ; preds = %269
  %273 = load ptr, ptr %5, align 8, !tbaa !78
  %274 = load ptr, ptr %8, align 8, !tbaa !47
  %275 = getelementptr inbounds nuw %struct.State, ptr %274, i32 0, i32 4
  %276 = getelementptr inbounds nuw %struct.VecGoto, ptr %275, i32 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !219
  %278 = load i32, ptr %11, align 4, !tbaa !10
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds ptr, ptr %277, i64 %279
  %281 = load ptr, ptr %280, align 8, !tbaa !220
  %282 = getelementptr inbounds nuw %struct.Goto, ptr %281, i32 0, i32 0
  %283 = load ptr, ptr %282, align 8, !tbaa !222
  %284 = call signext i32 @elem_symbol(ptr noundef %273, ptr noundef %283)
  store i32 %284, ptr %12, align 4, !tbaa !10
  %285 = load i32, ptr %17, align 4, !tbaa !10
  %286 = load i32, ptr %12, align 4, !tbaa !10
  %287 = sub nsw i32 %286, %285
  store i32 %287, ptr %12, align 4, !tbaa !10
  %288 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !217
  %290 = load i32, ptr %12, align 4, !tbaa !10
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64, ptr %289, i64 %291
  store i64 0, ptr %292, align 8, !tbaa !228
  br label %293

293:                                              ; preds = %272
  %294 = load i32, ptr %11, align 4, !tbaa !10
  %295 = add nsw i32 %294, -1
  store i32 %295, ptr %11, align 4, !tbaa !10
  br label %269, !llvm.loop !231

296:                                              ; preds = %269
  %297 = load i32, ptr %17, align 4, !tbaa !10
  %298 = add nsw i32 %297, -1
  store i32 %298, ptr %17, align 4, !tbaa !10
  br label %323

299:                                              ; preds = %258
  %300 = load ptr, ptr %8, align 8, !tbaa !47
  %301 = getelementptr inbounds nuw %struct.State, ptr %300, i32 0, i32 4
  %302 = getelementptr inbounds nuw %struct.VecGoto, ptr %301, i32 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !219
  %304 = load i32, ptr %11, align 4, !tbaa !10
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds ptr, ptr %303, i64 %305
  %307 = load ptr, ptr %306, align 8, !tbaa !220
  %308 = getelementptr inbounds nuw %struct.Goto, ptr %307, i32 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !232
  %310 = getelementptr inbounds nuw %struct.State, ptr %309, i32 0, i32 0
  %311 = load i32, ptr %310, align 8, !tbaa !89
  %312 = add i32 %311, 1
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !217
  %316 = load i32, ptr %12, align 4, !tbaa !10
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, ptr %315, i64 %317
  store i64 %313, ptr %318, align 8, !tbaa !228
  br label %319

319:                                              ; preds = %299
  br label %320

320:                                              ; preds = %319
  %321 = load i32, ptr %11, align 4, !tbaa !10
  %322 = add nsw i32 %321, 1
  store i32 %322, ptr %11, align 4, !tbaa !10
  br label %179, !llvm.loop !233

323:                                              ; preds = %296, %179
  br label %175, !llvm.loop !234

324:                                              ; preds = %175
  %325 = load i32, ptr %17, align 4, !tbaa !10
  %326 = load ptr, ptr %8, align 8, !tbaa !47
  %327 = getelementptr inbounds nuw %struct.State, ptr %326, i32 0, i32 12
  store i32 %325, ptr %327, align 8, !tbaa !235
  %328 = load ptr, ptr %4, align 8, !tbaa !85
  %329 = load i32, ptr %10, align 4, !tbaa !10
  %330 = load ptr, ptr %6, align 8, !tbaa !80
  %331 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef @.str.112, i32 noundef signext %329, ptr noundef %330) #8
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %332

332:                                              ; preds = %351, %324
  %333 = load i32, ptr %11, align 4, !tbaa !10
  %334 = load i32, ptr %15, align 4, !tbaa !10
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %354

336:                                              ; preds = %332
  %337 = load ptr, ptr %4, align 8, !tbaa !85
  %338 = load ptr, ptr %9, align 8, !tbaa !80
  %339 = load i32, ptr %11, align 4, !tbaa !10
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, ptr %338, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !66
  %343 = zext i8 %342 to i32
  %344 = load i32, ptr %11, align 4, !tbaa !10
  %345 = load i32, ptr %15, align 4, !tbaa !10
  %346 = sub nsw i32 %345, 1
  %347 = icmp eq i32 %344, %346
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, ptr @.str.23, ptr @.str.24
  %350 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %337, ptr noundef @.str.113, i32 noundef signext %343, ptr noundef %349) #8
  br label %351

351:                                              ; preds = %336
  %352 = load i32, ptr %11, align 4, !tbaa !10
  %353 = add nsw i32 %352, 1
  store i32 %353, ptr %11, align 4, !tbaa !10
  br label %332, !llvm.loop !236

354:                                              ; preds = %332
  %355 = load ptr, ptr %4, align 8, !tbaa !85
  %356 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %355, ptr noundef @.str.16) #8
  br label %360

357:                                              ; preds = %44
  %358 = load ptr, ptr %8, align 8, !tbaa !47
  %359 = getelementptr inbounds nuw %struct.State, ptr %358, i32 0, i32 12
  store i32 -2147483647, ptr %359, align 8, !tbaa !235
  br label %360

360:                                              ; preds = %357, %354
  %361 = load ptr, ptr %8, align 8, !tbaa !47
  %362 = getelementptr inbounds nuw %struct.State, ptr %361, i32 0, i32 6
  %363 = getelementptr inbounds nuw %struct.VecAction, ptr %362, i32 0, i32 0
  %364 = load i32, ptr %363, align 8, !tbaa !237
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %440

366:                                              ; preds = %360
  %367 = load ptr, ptr %4, align 8, !tbaa !85
  %368 = load i32, ptr %10, align 4, !tbaa !10
  %369 = load ptr, ptr %6, align 8, !tbaa !80
  %370 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %367, ptr noundef @.str.114, i32 noundef signext %368, ptr noundef %369) #8
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %371

371:                                              ; preds = %434, %366
  %372 = load i32, ptr %11, align 4, !tbaa !10
  %373 = load ptr, ptr %8, align 8, !tbaa !47
  %374 = getelementptr inbounds nuw %struct.State, ptr %373, i32 0, i32 6
  %375 = getelementptr inbounds nuw %struct.VecAction, ptr %374, i32 0, i32 0
  %376 = load i32, ptr %375, align 8, !tbaa !237
  %377 = icmp ult i32 %372, %376
  br i1 %377, label %378, label %437

378:                                              ; preds = %371
  %379 = load ptr, ptr %4, align 8, !tbaa !85
  %380 = load ptr, ptr %8, align 8, !tbaa !47
  %381 = getelementptr inbounds nuw %struct.State, ptr %380, i32 0, i32 6
  %382 = getelementptr inbounds nuw %struct.VecAction, ptr %381, i32 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !238
  %384 = load i32, ptr %11, align 4, !tbaa !10
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds ptr, ptr %383, i64 %385
  %387 = load ptr, ptr %386, align 8, !tbaa !36
  %388 = getelementptr inbounds nuw %struct.Action, ptr %387, i32 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !239
  %390 = getelementptr inbounds nuw %struct.Rule, ptr %389, i32 0, i32 12
  %391 = load ptr, ptr %390, align 8, !tbaa !156
  %392 = icmp ne ptr %391, null
  br i1 %392, label %393, label %408

393:                                              ; preds = %378
  %394 = load ptr, ptr %8, align 8, !tbaa !47
  %395 = getelementptr inbounds nuw %struct.State, ptr %394, i32 0, i32 6
  %396 = getelementptr inbounds nuw %struct.VecAction, ptr %395, i32 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !238
  %398 = load i32, ptr %11, align 4, !tbaa !10
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds ptr, ptr %397, i64 %399
  %401 = load ptr, ptr %400, align 8, !tbaa !36
  %402 = getelementptr inbounds nuw %struct.Action, ptr %401, i32 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !239
  %404 = getelementptr inbounds nuw %struct.Rule, ptr %403, i32 0, i32 12
  %405 = load ptr, ptr %404, align 8, !tbaa !156
  %406 = getelementptr inbounds nuw %struct.Rule, ptr %405, i32 0, i32 0
  %407 = load i32, ptr %406, align 8, !tbaa !142
  br label %421

408:                                              ; preds = %378
  %409 = load ptr, ptr %8, align 8, !tbaa !47
  %410 = getelementptr inbounds nuw %struct.State, ptr %409, i32 0, i32 6
  %411 = getelementptr inbounds nuw %struct.VecAction, ptr %410, i32 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !238
  %413 = load i32, ptr %11, align 4, !tbaa !10
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds ptr, ptr %412, i64 %414
  %416 = load ptr, ptr %415, align 8, !tbaa !36
  %417 = getelementptr inbounds nuw %struct.Action, ptr %416, i32 0, i32 2
  %418 = load ptr, ptr %417, align 8, !tbaa !239
  %419 = getelementptr inbounds nuw %struct.Rule, ptr %418, i32 0, i32 0
  %420 = load i32, ptr %419, align 8, !tbaa !142
  br label %421

421:                                              ; preds = %408, %393
  %422 = phi i32 [ %407, %393 ], [ %420, %408 ]
  %423 = load ptr, ptr %6, align 8, !tbaa !80
  %424 = load i32, ptr %11, align 4, !tbaa !10
  %425 = load ptr, ptr %8, align 8, !tbaa !47
  %426 = getelementptr inbounds nuw %struct.State, ptr %425, i32 0, i32 6
  %427 = getelementptr inbounds nuw %struct.VecAction, ptr %426, i32 0, i32 0
  %428 = load i32, ptr %427, align 8, !tbaa !237
  %429 = sub i32 %428, 1
  %430 = icmp eq i32 %424, %429
  %431 = zext i1 %430 to i64
  %432 = select i1 %430, ptr @.str.23, ptr @.str.24
  %433 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %379, ptr noundef @.str.115, i32 noundef signext %422, ptr noundef %423, ptr noundef %432) #8
  br label %434

434:                                              ; preds = %421
  %435 = load i32, ptr %11, align 4, !tbaa !10
  %436 = add nsw i32 %435, 1
  store i32 %436, ptr %11, align 4, !tbaa !10
  br label %371, !llvm.loop !240

437:                                              ; preds = %371
  %438 = load ptr, ptr %4, align 8, !tbaa !85
  %439 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %438, ptr noundef @.str.16) #8
  br label %440

440:                                              ; preds = %437, %360
  %441 = load ptr, ptr %8, align 8, !tbaa !47
  %442 = getelementptr inbounds nuw %struct.State, ptr %441, i32 0, i32 7
  %443 = getelementptr inbounds nuw %struct.VecHint, ptr %442, i32 0, i32 0
  %444 = load i32, ptr %443, align 8, !tbaa !241
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %542

446:                                              ; preds = %440
  %447 = load ptr, ptr %4, align 8, !tbaa !85
  %448 = load i32, ptr %10, align 4, !tbaa !10
  %449 = load ptr, ptr %6, align 8, !tbaa !80
  %450 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %447, ptr noundef @.str.116, i32 noundef signext %448, ptr noundef %449) #8
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %451

451:                                              ; preds = %536, %446
  %452 = load i32, ptr %11, align 4, !tbaa !10
  %453 = load ptr, ptr %8, align 8, !tbaa !47
  %454 = getelementptr inbounds nuw %struct.State, ptr %453, i32 0, i32 7
  %455 = getelementptr inbounds nuw %struct.VecHint, ptr %454, i32 0, i32 0
  %456 = load i32, ptr %455, align 8, !tbaa !241
  %457 = icmp ult i32 %452, %456
  br i1 %457, label %458, label %539

458:                                              ; preds = %451
  %459 = load ptr, ptr %4, align 8, !tbaa !85
  %460 = load ptr, ptr %8, align 8, !tbaa !47
  %461 = getelementptr inbounds nuw %struct.State, ptr %460, i32 0, i32 7
  %462 = getelementptr inbounds nuw %struct.VecHint, ptr %461, i32 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !242
  %464 = load i32, ptr %11, align 4, !tbaa !10
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %463, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !52
  %468 = getelementptr inbounds nuw %struct.Hint, ptr %467, i32 0, i32 0
  %469 = load i32, ptr %468, align 8, !tbaa !68
  %470 = load ptr, ptr %8, align 8, !tbaa !47
  %471 = getelementptr inbounds nuw %struct.State, ptr %470, i32 0, i32 7
  %472 = getelementptr inbounds nuw %struct.VecHint, ptr %471, i32 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !242
  %474 = load i32, ptr %11, align 4, !tbaa !10
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds ptr, ptr %473, i64 %475
  %477 = load ptr, ptr %476, align 8, !tbaa !52
  %478 = getelementptr inbounds nuw %struct.Hint, ptr %477, i32 0, i32 1
  %479 = load ptr, ptr %478, align 8, !tbaa !243
  %480 = getelementptr inbounds nuw %struct.State, ptr %479, i32 0, i32 0
  %481 = load i32, ptr %480, align 8, !tbaa !89
  %482 = load ptr, ptr %8, align 8, !tbaa !47
  %483 = getelementptr inbounds nuw %struct.State, ptr %482, i32 0, i32 7
  %484 = getelementptr inbounds nuw %struct.VecHint, ptr %483, i32 0, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !242
  %486 = load i32, ptr %11, align 4, !tbaa !10
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds ptr, ptr %485, i64 %487
  %489 = load ptr, ptr %488, align 8, !tbaa !52
  %490 = getelementptr inbounds nuw %struct.Hint, ptr %489, i32 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !54
  %492 = getelementptr inbounds nuw %struct.Rule, ptr %491, i32 0, i32 12
  %493 = load ptr, ptr %492, align 8, !tbaa !156
  %494 = icmp ne ptr %493, null
  br i1 %494, label %495, label %510

495:                                              ; preds = %458
  %496 = load ptr, ptr %8, align 8, !tbaa !47
  %497 = getelementptr inbounds nuw %struct.State, ptr %496, i32 0, i32 7
  %498 = getelementptr inbounds nuw %struct.VecHint, ptr %497, i32 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !242
  %500 = load i32, ptr %11, align 4, !tbaa !10
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds ptr, ptr %499, i64 %501
  %503 = load ptr, ptr %502, align 8, !tbaa !52
  %504 = getelementptr inbounds nuw %struct.Hint, ptr %503, i32 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !54
  %506 = getelementptr inbounds nuw %struct.Rule, ptr %505, i32 0, i32 12
  %507 = load ptr, ptr %506, align 8, !tbaa !156
  %508 = getelementptr inbounds nuw %struct.Rule, ptr %507, i32 0, i32 0
  %509 = load i32, ptr %508, align 8, !tbaa !142
  br label %523

510:                                              ; preds = %458
  %511 = load ptr, ptr %8, align 8, !tbaa !47
  %512 = getelementptr inbounds nuw %struct.State, ptr %511, i32 0, i32 7
  %513 = getelementptr inbounds nuw %struct.VecHint, ptr %512, i32 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !242
  %515 = load i32, ptr %11, align 4, !tbaa !10
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds ptr, ptr %514, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !52
  %519 = getelementptr inbounds nuw %struct.Hint, ptr %518, i32 0, i32 2
  %520 = load ptr, ptr %519, align 8, !tbaa !54
  %521 = getelementptr inbounds nuw %struct.Rule, ptr %520, i32 0, i32 0
  %522 = load i32, ptr %521, align 8, !tbaa !142
  br label %523

523:                                              ; preds = %510, %495
  %524 = phi i32 [ %509, %495 ], [ %522, %510 ]
  %525 = load ptr, ptr %6, align 8, !tbaa !80
  %526 = load i32, ptr %11, align 4, !tbaa !10
  %527 = load ptr, ptr %8, align 8, !tbaa !47
  %528 = getelementptr inbounds nuw %struct.State, ptr %527, i32 0, i32 7
  %529 = getelementptr inbounds nuw %struct.VecHint, ptr %528, i32 0, i32 0
  %530 = load i32, ptr %529, align 8, !tbaa !241
  %531 = sub i32 %530, 1
  %532 = icmp eq i32 %526, %531
  %533 = zext i1 %532 to i64
  %534 = select i1 %532, ptr @.str.23, ptr @.str.24
  %535 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %459, ptr noundef @.str.117, i32 noundef signext %469, i32 noundef signext %481, i32 noundef signext %524, ptr noundef %525, ptr noundef %534) #8
  br label %536

536:                                              ; preds = %523
  %537 = load i32, ptr %11, align 4, !tbaa !10
  %538 = add nsw i32 %537, 1
  store i32 %538, ptr %11, align 4, !tbaa !10
  br label %451, !llvm.loop !244

539:                                              ; preds = %451
  %540 = load ptr, ptr %4, align 8, !tbaa !85
  %541 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %540, ptr noundef @.str.16) #8
  br label %542

542:                                              ; preds = %539, %440
  br label %543

543:                                              ; preds = %542
  %544 = load i32, ptr %10, align 4, !tbaa !10
  %545 = add nsw i32 %544, 1
  store i32 %545, ptr %10, align 4, !tbaa !10
  br label %37, !llvm.loop !245

546:                                              ; preds = %37
  %547 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %548 = load i32, ptr %547, align 8, !tbaa !214
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %592

550:                                              ; preds = %546
  %551 = load ptr, ptr %4, align 8, !tbaa !85
  %552 = load ptr, ptr %6, align 8, !tbaa !80
  %553 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %554 = load i32, ptr %553, align 8, !tbaa !214
  %555 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %551, ptr noundef @.str.118, ptr noundef %552, i32 noundef signext %554) #8
  store i32 0, ptr %11, align 4, !tbaa !10
  br label %556

556:                                              ; preds = %586, %550
  %557 = load i32, ptr %11, align 4, !tbaa !10
  %558 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %559 = load i32, ptr %558, align 8, !tbaa !214
  %560 = icmp ult i32 %557, %559
  br i1 %560, label %561, label %589

561:                                              ; preds = %556
  %562 = load ptr, ptr %4, align 8, !tbaa !85
  %563 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 2
  %564 = load ptr, ptr %563, align 8, !tbaa !217
  %565 = load i32, ptr %11, align 4, !tbaa !10
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i64, ptr %564, i64 %566
  %568 = load i64, ptr %567, align 8, !tbaa !228
  %569 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %562, ptr noundef @.str.30, i64 noundef %568) #8
  %570 = load i32, ptr %11, align 4, !tbaa !10
  %571 = getelementptr inbounds nuw %struct.anon.9, ptr %7, i32 0, i32 0
  %572 = load i32, ptr %571, align 8, !tbaa !214
  %573 = sub i32 %572, 1
  %574 = icmp ne i32 %570, %573
  br i1 %574, label %575, label %578

575:                                              ; preds = %561
  %576 = load ptr, ptr %4, align 8, !tbaa !85
  %577 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %576, ptr noundef @.str.84) #8
  br label %578

578:                                              ; preds = %575, %561
  %579 = load i32, ptr %11, align 4, !tbaa !10
  %580 = srem i32 %579, 16
  %581 = icmp eq i32 %580, 15
  br i1 %581, label %582, label %585

582:                                              ; preds = %578
  %583 = load ptr, ptr %4, align 8, !tbaa !85
  %584 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %583, ptr noundef @.str.4) #8
  br label %585

585:                                              ; preds = %582, %578
  br label %586

586:                                              ; preds = %585
  %587 = load i32, ptr %11, align 4, !tbaa !10
  %588 = add nsw i32 %587, 1
  store i32 %588, ptr %11, align 4, !tbaa !10
  br label %556, !llvm.loop !246

589:                                              ; preds = %556
  %590 = load ptr, ptr %4, align 8, !tbaa !85
  %591 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %590, ptr noundef @.str.49) #8
  br label %596

592:                                              ; preds = %546
  %593 = load ptr, ptr %4, align 8, !tbaa !85
  %594 = load ptr, ptr %6, align 8, !tbaa !80
  %595 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %593, ptr noundef @.str.119, ptr noundef %594) #8
  br label %596

596:                                              ; preds = %592, %589
  call void @llvm.lifetime.end.p0(i64 4, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %16) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define internal void @write_error_data_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !85
  store ptr %1, ptr %6, align 8, !tbaa !78
  store ptr %2, ptr %7, align 8, !tbaa !12
  store ptr %3, ptr %8, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %14) #8
  %15 = load ptr, ptr %6, align 8, !tbaa !78
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds nuw %struct.anon.4, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !97
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %154

20:                                               ; preds = %4
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %21

21:                                               ; preds = %150, %20
  %22 = load i32, ptr %9, align 4, !tbaa !10
  %23 = load ptr, ptr %6, align 8, !tbaa !78
  %24 = getelementptr inbounds nuw %struct.Grammar, ptr %23, i32 0, i32 3
  %25 = getelementptr inbounds nuw %struct.anon.4, ptr %24, i32 0, i32 0
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %21
  %29 = load ptr, ptr %6, align 8, !tbaa !78
  %30 = getelementptr inbounds nuw %struct.Grammar, ptr %29, i32 0, i32 3
  %31 = getelementptr inbounds nuw %struct.anon.4, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !170
  %33 = load i32, ptr %9, align 4, !tbaa !10
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %32, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  store ptr %36, ptr %11, align 8, !tbaa !47
  %37 = load ptr, ptr %11, align 8, !tbaa !47
  %38 = getelementptr inbounds nuw %struct.State, ptr %37, i32 0, i32 8
  %39 = getelementptr inbounds nuw %struct.VecHint, ptr %38, i32 0, i32 0
  %40 = load i32, ptr %39, align 8, !tbaa !247
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %149

42:                                               ; preds = %28
  %43 = load ptr, ptr %7, align 8, !tbaa !12
  %44 = load ptr, ptr %11, align 8, !tbaa !47
  %45 = call ptr @set_add_fn(ptr noundef %43, ptr noundef %44, ptr noundef @er_hint_hash_fns)
  store ptr %45, ptr %13, align 8, !tbaa !47
  %46 = load ptr, ptr %13, align 8, !tbaa !47
  %47 = load ptr, ptr %11, align 8, !tbaa !47
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %49, label %148

49:                                               ; preds = %42
  %50 = load ptr, ptr %5, align 8, !tbaa !85
  %51 = load i32, ptr %9, align 4, !tbaa !10
  %52 = load ptr, ptr %8, align 8, !tbaa !80
  %53 = load ptr, ptr %11, align 8, !tbaa !47
  %54 = getelementptr inbounds nuw %struct.State, ptr %53, i32 0, i32 8
  %55 = getelementptr inbounds nuw %struct.VecHint, ptr %54, i32 0, i32 0
  %56 = load i32, ptr %55, align 8, !tbaa !247
  %57 = icmp ugt i32 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, ptr @.str.4, ptr @.str.23
  %60 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.120, i32 noundef signext %51, ptr noundef %52, ptr noundef %59) #8
  store i32 0, ptr %10, align 4, !tbaa !10
  br label %61

61:                                               ; preds = %142, %49
  %62 = load i32, ptr %10, align 4, !tbaa !10
  %63 = load ptr, ptr %11, align 8, !tbaa !47
  %64 = getelementptr inbounds nuw %struct.State, ptr %63, i32 0, i32 8
  %65 = getelementptr inbounds nuw %struct.VecHint, ptr %64, i32 0, i32 0
  %66 = load i32, ptr %65, align 8, !tbaa !247
  %67 = icmp ult i32 %62, %66
  br i1 %67, label %68, label %145

68:                                               ; preds = %61
  %69 = load ptr, ptr %11, align 8, !tbaa !47
  %70 = getelementptr inbounds nuw %struct.State, ptr %69, i32 0, i32 8
  %71 = getelementptr inbounds nuw %struct.VecHint, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !248
  %73 = load i32, ptr %10, align 4, !tbaa !10
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %72, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !52
  %77 = getelementptr inbounds nuw %struct.Hint, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !54
  %79 = getelementptr inbounds nuw %struct.Rule, ptr %78, i32 0, i32 6
  %80 = getelementptr inbounds nuw %struct.anon.7, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !56
  %82 = load ptr, ptr %11, align 8, !tbaa !47
  %83 = getelementptr inbounds nuw %struct.State, ptr %82, i32 0, i32 8
  %84 = getelementptr inbounds nuw %struct.VecHint, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !248
  %86 = load i32, ptr %10, align 4, !tbaa !10
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %85, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !52
  %90 = getelementptr inbounds nuw %struct.Hint, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = getelementptr inbounds nuw %struct.Rule, ptr %91, i32 0, i32 6
  %93 = getelementptr inbounds nuw %struct.anon.7, ptr %92, i32 0, i32 0
  %94 = load i32, ptr %93, align 8, !tbaa !64
  %95 = sub i32 %94, 1
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds nuw ptr, ptr %81, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !65
  %99 = getelementptr inbounds nuw %struct.Elem, ptr %98, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !66
  store ptr %100, ptr %12, align 8, !tbaa !67
  %101 = load ptr, ptr %12, align 8, !tbaa !67
  %102 = getelementptr inbounds nuw %struct.Term, ptr %101, i32 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !69
  %104 = call ptr @escape_string(ptr noundef %103)
  store ptr %104, ptr %14, align 8, !tbaa !80
  %105 = load ptr, ptr %5, align 8, !tbaa !85
  %106 = load ptr, ptr %11, align 8, !tbaa !47
  %107 = getelementptr inbounds nuw %struct.State, ptr %106, i32 0, i32 8
  %108 = getelementptr inbounds nuw %struct.VecHint, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !248
  %110 = load i32, ptr %10, align 4, !tbaa !10
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds ptr, ptr %109, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !52
  %114 = getelementptr inbounds nuw %struct.Hint, ptr %113, i32 0, i32 0
  %115 = load i32, ptr %114, align 8, !tbaa !68
  %116 = load ptr, ptr %11, align 8, !tbaa !47
  %117 = getelementptr inbounds nuw %struct.State, ptr %116, i32 0, i32 8
  %118 = getelementptr inbounds nuw %struct.VecHint, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !248
  %120 = load i32, ptr %10, align 4, !tbaa !10
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds ptr, ptr %119, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  %124 = getelementptr inbounds nuw %struct.Hint, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !54
  %126 = getelementptr inbounds nuw %struct.Rule, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !71
  %128 = getelementptr inbounds nuw %struct.Production, ptr %127, i32 0, i32 3
  %129 = load i32, ptr %128, align 8, !tbaa !72
  %130 = load ptr, ptr %14, align 8, !tbaa !80
  %131 = load i32, ptr %10, align 4, !tbaa !10
  %132 = load ptr, ptr %11, align 8, !tbaa !47
  %133 = getelementptr inbounds nuw %struct.State, ptr %132, i32 0, i32 8
  %134 = getelementptr inbounds nuw %struct.VecHint, ptr %133, i32 0, i32 0
  %135 = load i32, ptr %134, align 8, !tbaa !247
  %136 = sub i32 %135, 1
  %137 = icmp eq i32 %131, %136
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, ptr @.str.23, ptr @.str.82
  %140 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.121, i32 noundef signext %115, i32 noundef signext %129, ptr noundef %130, ptr noundef %139) #8
  %141 = load ptr, ptr %14, align 8, !tbaa !80
  call void @free(ptr noundef %141) #8
  br label %142

142:                                              ; preds = %68
  %143 = load i32, ptr %10, align 4, !tbaa !10
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr %10, align 4, !tbaa !10
  br label %61, !llvm.loop !249

145:                                              ; preds = %61
  %146 = load ptr, ptr %5, align 8, !tbaa !85
  %147 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %146, ptr noundef @.str.16) #8
  br label %148

148:                                              ; preds = %145, %42
  br label %149

149:                                              ; preds = %148, %28
  br label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %9, align 4, !tbaa !10
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr %9, align 4, !tbaa !10
  br label %21, !llvm.loop !250

153:                                              ; preds = %21
  br label %154

154:                                              ; preds = %153, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr %14) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %12) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  ret void
}

; Function Attrs: nounwind
define internal void @write_state_data_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !85
  store ptr %1, ptr %6, align 8, !tbaa !78
  store ptr %2, ptr %7, align 8, !tbaa !12
  store ptr %3, ptr %8, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %9) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr %11) #8
  %12 = load ptr, ptr %5, align 8, !tbaa !85
  %13 = load ptr, ptr %8, align 8, !tbaa !80
  %14 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.122, ptr noundef %13) #8
  %15 = load ptr, ptr %6, align 8, !tbaa !78
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 3
  %17 = getelementptr inbounds nuw %struct.anon.4, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !97
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %372

20:                                               ; preds = %4
  %21 = load ptr, ptr %5, align 8, !tbaa !85
  %22 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.53) #8
  store i32 0, ptr %9, align 4, !tbaa !10
  br label %23

23:                                               ; preds = %366, %20
  %24 = load i32, ptr %9, align 4, !tbaa !10
  %25 = load ptr, ptr %6, align 8, !tbaa !78
  %26 = getelementptr inbounds nuw %struct.Grammar, ptr %25, i32 0, i32 3
  %27 = getelementptr inbounds nuw %struct.anon.4, ptr %26, i32 0, i32 0
  %28 = load i32, ptr %27, align 8, !tbaa !97
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %369

30:                                               ; preds = %23
  %31 = load ptr, ptr %6, align 8, !tbaa !78
  %32 = getelementptr inbounds nuw %struct.Grammar, ptr %31, i32 0, i32 3
  %33 = getelementptr inbounds nuw %struct.anon.4, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !170
  %35 = load i32, ptr %9, align 4, !tbaa !10
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  store ptr %38, ptr %10, align 8, !tbaa !47
  %39 = load ptr, ptr %5, align 8, !tbaa !85
  %40 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef @.str.123) #8
  %41 = load ptr, ptr %10, align 8, !tbaa !47
  %42 = getelementptr inbounds nuw %struct.State, ptr %41, i32 0, i32 4
  %43 = getelementptr inbounds nuw %struct.VecGoto, ptr %42, i32 0, i32 0
  %44 = load i32, ptr %43, align 8, !tbaa !218
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load ptr, ptr %5, align 8, !tbaa !85
  %48 = load i32, ptr %9, align 4, !tbaa !10
  %49 = load ptr, ptr %8, align 8, !tbaa !80
  %50 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str.124, i32 noundef signext %48, ptr noundef %49) #8
  br label %54

51:                                               ; preds = %30
  %52 = load ptr, ptr %5, align 8, !tbaa !85
  %53 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef @.str.12) #8
  br label %54

54:                                               ; preds = %51, %46
  %55 = load ptr, ptr %5, align 8, !tbaa !85
  %56 = load ptr, ptr %10, align 8, !tbaa !47
  %57 = getelementptr inbounds nuw %struct.State, ptr %56, i32 0, i32 12
  %58 = load i32, ptr %57, align 8, !tbaa !235
  %59 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.7, i32 noundef signext %58) #8
  %60 = load ptr, ptr %10, align 8, !tbaa !47
  %61 = getelementptr inbounds nuw %struct.State, ptr %60, i32 0, i32 6
  %62 = getelementptr inbounds nuw %struct.VecAction, ptr %61, i32 0, i32 0
  %63 = load i32, ptr %62, align 8, !tbaa !237
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load ptr, ptr %5, align 8, !tbaa !85
  %67 = load ptr, ptr %10, align 8, !tbaa !47
  %68 = getelementptr inbounds nuw %struct.State, ptr %67, i32 0, i32 6
  %69 = getelementptr inbounds nuw %struct.VecAction, ptr %68, i32 0, i32 0
  %70 = load i32, ptr %69, align 8, !tbaa !237
  %71 = load i32, ptr %9, align 4, !tbaa !10
  %72 = load ptr, ptr %8, align 8, !tbaa !80
  %73 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.125, i32 noundef signext %70, i32 noundef signext %71, ptr noundef %72) #8
  br label %77

74:                                               ; preds = %54
  %75 = load ptr, ptr %5, align 8, !tbaa !85
  %76 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.126) #8
  br label %77

77:                                               ; preds = %74, %65
  %78 = load ptr, ptr %10, align 8, !tbaa !47
  %79 = getelementptr inbounds nuw %struct.State, ptr %78, i32 0, i32 7
  %80 = getelementptr inbounds nuw %struct.VecHint, ptr %79, i32 0, i32 0
  %81 = load i32, ptr %80, align 8, !tbaa !241
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load ptr, ptr %5, align 8, !tbaa !85
  %85 = load ptr, ptr %10, align 8, !tbaa !47
  %86 = getelementptr inbounds nuw %struct.State, ptr %85, i32 0, i32 7
  %87 = getelementptr inbounds nuw %struct.VecHint, ptr %86, i32 0, i32 0
  %88 = load i32, ptr %87, align 8, !tbaa !241
  %89 = load i32, ptr %9, align 4, !tbaa !10
  %90 = load ptr, ptr %8, align 8, !tbaa !80
  %91 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef @.str.127, i32 noundef signext %88, i32 noundef signext %89, ptr noundef %90) #8
  br label %95

92:                                               ; preds = %77
  %93 = load ptr, ptr %5, align 8, !tbaa !85
  %94 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef @.str.126) #8
  br label %95

95:                                               ; preds = %92, %83
  %96 = load ptr, ptr %10, align 8, !tbaa !47
  %97 = getelementptr inbounds nuw %struct.State, ptr %96, i32 0, i32 8
  %98 = getelementptr inbounds nuw %struct.VecHint, ptr %97, i32 0, i32 0
  %99 = load i32, ptr %98, align 8, !tbaa !247
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load ptr, ptr %7, align 8, !tbaa !12
  %103 = load ptr, ptr %10, align 8, !tbaa !47
  %104 = call ptr @set_add_fn(ptr noundef %102, ptr noundef %103, ptr noundef @er_hint_hash_fns)
  store ptr %104, ptr %11, align 8, !tbaa !47
  %105 = load ptr, ptr %5, align 8, !tbaa !85
  %106 = load ptr, ptr %10, align 8, !tbaa !47
  %107 = getelementptr inbounds nuw %struct.State, ptr %106, i32 0, i32 8
  %108 = getelementptr inbounds nuw %struct.VecHint, ptr %107, i32 0, i32 0
  %109 = load i32, ptr %108, align 8, !tbaa !247
  %110 = load ptr, ptr %11, align 8, !tbaa !47
  %111 = getelementptr inbounds nuw %struct.State, ptr %110, i32 0, i32 0
  %112 = load i32, ptr %111, align 8, !tbaa !89
  %113 = load ptr, ptr %8, align 8, !tbaa !80
  %114 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.128, i32 noundef signext %109, i32 noundef signext %112, ptr noundef %113) #8
  br label %118

115:                                              ; preds = %95
  %116 = load ptr, ptr %5, align 8, !tbaa !85
  %117 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.126) #8
  br label %118

118:                                              ; preds = %115, %101
  %119 = load ptr, ptr %10, align 8, !tbaa !47
  %120 = getelementptr inbounds nuw %struct.State, ptr %119, i32 0, i32 5
  %121 = getelementptr inbounds nuw %struct.VecAction, ptr %120, i32 0, i32 0
  %122 = load i32, ptr %121, align 8, !tbaa !182
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load ptr, ptr %5, align 8, !tbaa !85
  %126 = load ptr, ptr %10, align 8, !tbaa !47
  %127 = getelementptr inbounds nuw %struct.State, ptr %126, i32 0, i32 13
  %128 = load ptr, ptr %127, align 8, !tbaa !183
  %129 = icmp ne ptr %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load ptr, ptr %10, align 8, !tbaa !47
  %132 = getelementptr inbounds nuw %struct.State, ptr %131, i32 0, i32 13
  %133 = load ptr, ptr %132, align 8, !tbaa !183
  %134 = getelementptr inbounds nuw %struct.State, ptr %133, i32 0, i32 0
  %135 = load i32, ptr %134, align 8, !tbaa !89
  br label %138

136:                                              ; preds = %124
  %137 = load i32, ptr %9, align 4, !tbaa !10
  br label %138

138:                                              ; preds = %136, %130
  %139 = phi i32 [ %135, %130 ], [ %137, %136 ]
  %140 = load ptr, ptr %8, align 8, !tbaa !80
  %141 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef @.str.129, i32 noundef signext %139, ptr noundef %140) #8
  br label %171

142:                                              ; preds = %118
  %143 = load ptr, ptr %10, align 8, !tbaa !47
  %144 = getelementptr inbounds nuw %struct.State, ptr %143, i32 0, i32 10
  %145 = load i8, ptr %144, align 8
  %146 = lshr i8 %145, 1
  %147 = and i8 %146, 1
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %164, label %150

150:                                              ; preds = %142
  %151 = load ptr, ptr %6, align 8, !tbaa !78
  %152 = getelementptr inbounds nuw %struct.Grammar, ptr %151, i32 0, i32 4
  %153 = getelementptr inbounds nuw %struct.Code, ptr %152, i32 0, i32 0
  %154 = load ptr, ptr %153, align 8, !tbaa !251
  %155 = icmp ne ptr %154, null
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load ptr, ptr %10, align 8, !tbaa !47
  %158 = getelementptr inbounds nuw %struct.State, ptr %157, i32 0, i32 10
  %159 = load i8, ptr %158, align 8
  %160 = lshr i8 %159, 2
  %161 = and i8 %160, 1
  %162 = zext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %156, %142
  %165 = load ptr, ptr %5, align 8, !tbaa !85
  %166 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef @.str.130) #8
  br label %170

167:                                              ; preds = %156, %150
  %168 = load ptr, ptr %5, align 8, !tbaa !85
  %169 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.12) #8
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %138
  %172 = load ptr, ptr %6, align 8, !tbaa !78
  %173 = getelementptr inbounds nuw %struct.Grammar, ptr %172, i32 0, i32 4
  %174 = getelementptr inbounds nuw %struct.Code, ptr %173, i32 0, i32 0
  %175 = load ptr, ptr %174, align 8, !tbaa !251
  %176 = icmp ne ptr %175, null
  br i1 %176, label %177, label %196

177:                                              ; preds = %171
  %178 = load ptr, ptr %10, align 8, !tbaa !47
  %179 = getelementptr inbounds nuw %struct.State, ptr %178, i32 0, i32 10
  %180 = load i8, ptr %179, align 8
  %181 = lshr i8 %180, 2
  %182 = and i8 %181, 1
  %183 = zext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %177
  %186 = load ptr, ptr %5, align 8, !tbaa !85
  %187 = load ptr, ptr %6, align 8, !tbaa !78
  %188 = getelementptr inbounds nuw %struct.Grammar, ptr %187, i32 0, i32 4
  %189 = getelementptr inbounds nuw %struct.Code, ptr %188, i32 0, i32 0
  %190 = load ptr, ptr %189, align 8, !tbaa !251
  %191 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef @.str.11, ptr noundef %190) #8
  br label %195

192:                                              ; preds = %177
  %193 = load ptr, ptr %5, align 8, !tbaa !85
  %194 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef @.str.12) #8
  br label %195

195:                                              ; preds = %192, %185
  br label %213

196:                                              ; preds = %171
  %197 = load ptr, ptr %10, align 8, !tbaa !47
  %198 = getelementptr inbounds nuw %struct.State, ptr %197, i32 0, i32 10
  %199 = load i8, ptr %198, align 8
  %200 = lshr i8 %199, 1
  %201 = and i8 %200, 1
  %202 = zext i8 %201 to i32
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %196
  %205 = load ptr, ptr %5, align 8, !tbaa !85
  %206 = load i32, ptr %9, align 4, !tbaa !10
  %207 = load ptr, ptr %8, align 8, !tbaa !80
  %208 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef @.str.131, i32 noundef signext %206, ptr noundef %207) #8
  br label %212

209:                                              ; preds = %196
  %210 = load ptr, ptr %5, align 8, !tbaa !85
  %211 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.12) #8
  br label %212

212:                                              ; preds = %209, %204
  br label %213

213:                                              ; preds = %212, %195
  %214 = load ptr, ptr %10, align 8, !tbaa !47
  %215 = getelementptr inbounds nuw %struct.State, ptr %214, i32 0, i32 9
  %216 = getelementptr inbounds nuw %struct.Scanner, ptr %215, i32 0, i32 0
  %217 = getelementptr inbounds nuw %struct.VecScanState, ptr %216, i32 0, i32 0
  %218 = load i32, ptr %217, align 8, !tbaa !171
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %213
  %221 = load ptr, ptr %5, align 8, !tbaa !85
  %222 = load ptr, ptr %10, align 8, !tbaa !47
  %223 = getelementptr inbounds nuw %struct.State, ptr %222, i32 0, i32 13
  %224 = load ptr, ptr %223, align 8, !tbaa !183
  %225 = icmp ne ptr %224, null
  br i1 %225, label %226, label %232

226:                                              ; preds = %220
  %227 = load ptr, ptr %10, align 8, !tbaa !47
  %228 = getelementptr inbounds nuw %struct.State, ptr %227, i32 0, i32 13
  %229 = load ptr, ptr %228, align 8, !tbaa !183
  %230 = getelementptr inbounds nuw %struct.State, ptr %229, i32 0, i32 0
  %231 = load i32, ptr %230, align 8, !tbaa !89
  br label %234

232:                                              ; preds = %220
  %233 = load i32, ptr %9, align 4, !tbaa !10
  br label %234

234:                                              ; preds = %232, %226
  %235 = phi i32 [ %231, %226 ], [ %233, %232 ]
  %236 = load ptr, ptr %8, align 8, !tbaa !80
  %237 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %221, ptr noundef @.str.132, i32 noundef signext %235, ptr noundef %236) #8
  br label %241

238:                                              ; preds = %213
  %239 = load ptr, ptr %5, align 8, !tbaa !85
  %240 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef @.str.12) #8
  br label %241

241:                                              ; preds = %238, %234
  %242 = load ptr, ptr %5, align 8, !tbaa !85
  %243 = load ptr, ptr %10, align 8, !tbaa !47
  %244 = call ptr @scanner_type(ptr noundef %243)
  %245 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef @.str.133, ptr noundef %244) #8
  %246 = load ptr, ptr %5, align 8, !tbaa !85
  %247 = load ptr, ptr %10, align 8, !tbaa !47
  %248 = getelementptr inbounds nuw %struct.State, ptr %247, i32 0, i32 10
  %249 = load i8, ptr %248, align 8
  %250 = and i8 %249, 1
  %251 = zext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, ptr @.str.134, ptr @.str.135
  %255 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef %254) #8
  %256 = load ptr, ptr %5, align 8, !tbaa !85
  %257 = load ptr, ptr %10, align 8, !tbaa !47
  %258 = getelementptr inbounds nuw %struct.State, ptr %257, i32 0, i32 10
  %259 = load i8, ptr %258, align 8
  %260 = lshr i8 %259, 3
  %261 = and i8 %260, 3
  %262 = zext i8 %261 to i32
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds nuw [4 x ptr], ptr @scan_kind_strings, i64 0, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !80
  %266 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef @.str.11, ptr noundef %265) #8
  %267 = load ptr, ptr %10, align 8, !tbaa !47
  %268 = getelementptr inbounds nuw %struct.State, ptr %267, i32 0, i32 10
  %269 = load i8, ptr %268, align 8
  %270 = lshr i8 %269, 3
  %271 = and i8 %270, 3
  %272 = zext i8 %271 to i32
  %273 = icmp ne i32 %272, 1
  br i1 %273, label %274, label %299

274:                                              ; preds = %241
  %275 = load ptr, ptr %10, align 8, !tbaa !47
  %276 = getelementptr inbounds nuw %struct.State, ptr %275, i32 0, i32 9
  %277 = getelementptr inbounds nuw %struct.Scanner, ptr %276, i32 0, i32 0
  %278 = getelementptr inbounds nuw %struct.VecScanState, ptr %277, i32 0, i32 0
  %279 = load i32, ptr %278, align 8, !tbaa !171
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %299

281:                                              ; preds = %274
  %282 = load ptr, ptr %5, align 8, !tbaa !85
  %283 = load ptr, ptr %10, align 8, !tbaa !47
  %284 = getelementptr inbounds nuw %struct.State, ptr %283, i32 0, i32 13
  %285 = load ptr, ptr %284, align 8, !tbaa !183
  %286 = icmp ne ptr %285, null
  br i1 %286, label %287, label %293

287:                                              ; preds = %281
  %288 = load ptr, ptr %10, align 8, !tbaa !47
  %289 = getelementptr inbounds nuw %struct.State, ptr %288, i32 0, i32 13
  %290 = load ptr, ptr %289, align 8, !tbaa !183
  %291 = getelementptr inbounds nuw %struct.State, ptr %290, i32 0, i32 0
  %292 = load i32, ptr %291, align 8, !tbaa !89
  br label %295

293:                                              ; preds = %281
  %294 = load i32, ptr %9, align 4, !tbaa !10
  br label %295

295:                                              ; preds = %293, %287
  %296 = phi i32 [ %292, %287 ], [ %294, %293 ]
  %297 = load ptr, ptr %8, align 8, !tbaa !80
  %298 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %282, ptr noundef @.str.136, i32 noundef signext %296, ptr noundef %297) #8
  br label %302

299:                                              ; preds = %274, %241
  %300 = load ptr, ptr %5, align 8, !tbaa !85
  %301 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef @.str.12) #8
  br label %302

302:                                              ; preds = %299, %295
  %303 = load ptr, ptr %10, align 8, !tbaa !47
  %304 = getelementptr inbounds nuw %struct.State, ptr %303, i32 0, i32 10
  %305 = load i8, ptr %304, align 8
  %306 = lshr i8 %305, 3
  %307 = and i8 %306, 3
  %308 = zext i8 %307 to i32
  %309 = icmp ne i32 %308, 1
  br i1 %309, label %310, label %335

310:                                              ; preds = %302
  %311 = load ptr, ptr %10, align 8, !tbaa !47
  %312 = getelementptr inbounds nuw %struct.State, ptr %311, i32 0, i32 9
  %313 = getelementptr inbounds nuw %struct.Scanner, ptr %312, i32 0, i32 0
  %314 = getelementptr inbounds nuw %struct.VecScanState, ptr %313, i32 0, i32 0
  %315 = load i32, ptr %314, align 8, !tbaa !171
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %335

317:                                              ; preds = %310
  %318 = load ptr, ptr %5, align 8, !tbaa !85
  %319 = load ptr, ptr %10, align 8, !tbaa !47
  %320 = getelementptr inbounds nuw %struct.State, ptr %319, i32 0, i32 13
  %321 = load ptr, ptr %320, align 8, !tbaa !183
  %322 = icmp ne ptr %321, null
  br i1 %322, label %323, label %329

323:                                              ; preds = %317
  %324 = load ptr, ptr %10, align 8, !tbaa !47
  %325 = getelementptr inbounds nuw %struct.State, ptr %324, i32 0, i32 13
  %326 = load ptr, ptr %325, align 8, !tbaa !183
  %327 = getelementptr inbounds nuw %struct.State, ptr %326, i32 0, i32 0
  %328 = load i32, ptr %327, align 8, !tbaa !89
  br label %331

329:                                              ; preds = %317
  %330 = load i32, ptr %9, align 4, !tbaa !10
  br label %331

331:                                              ; preds = %329, %323
  %332 = phi i32 [ %328, %323 ], [ %330, %329 ]
  %333 = load ptr, ptr %8, align 8, !tbaa !80
  %334 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef @.str.137, i32 noundef signext %332, ptr noundef %333) #8
  br label %338

335:                                              ; preds = %310, %302
  %336 = load ptr, ptr %5, align 8, !tbaa !85
  %337 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %336, ptr noundef @.str.138) #8
  br label %338

338:                                              ; preds = %335, %331
  %339 = load ptr, ptr %10, align 8, !tbaa !47
  %340 = getelementptr inbounds nuw %struct.State, ptr %339, i32 0, i32 14
  %341 = load ptr, ptr %340, align 8, !tbaa !252
  %342 = icmp ne ptr %341, null
  br i1 %342, label %343, label %351

343:                                              ; preds = %338
  %344 = load ptr, ptr %5, align 8, !tbaa !85
  %345 = load ptr, ptr %10, align 8, !tbaa !47
  %346 = getelementptr inbounds nuw %struct.State, ptr %345, i32 0, i32 14
  %347 = load ptr, ptr %346, align 8, !tbaa !252
  %348 = getelementptr inbounds nuw %struct.State, ptr %347, i32 0, i32 0
  %349 = load i32, ptr %348, align 8, !tbaa !89
  %350 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef @.str.30, i32 noundef signext %349) #8
  br label %354

351:                                              ; preds = %338
  %352 = load ptr, ptr %5, align 8, !tbaa !85
  %353 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %352, ptr noundef @.str.139) #8
  br label %354

354:                                              ; preds = %351, %343
  %355 = load ptr, ptr %5, align 8, !tbaa !85
  %356 = load i32, ptr %9, align 4, !tbaa !10
  %357 = load ptr, ptr %6, align 8, !tbaa !78
  %358 = getelementptr inbounds nuw %struct.Grammar, ptr %357, i32 0, i32 3
  %359 = getelementptr inbounds nuw %struct.anon.4, ptr %358, i32 0, i32 0
  %360 = load i32, ptr %359, align 8, !tbaa !97
  %361 = sub i32 %360, 1
  %362 = icmp eq i32 %356, %361
  %363 = zext i1 %362 to i64
  %364 = select i1 %362, ptr @.str.23, ptr @.str.84
  %365 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %355, ptr noundef @.str.140, ptr noundef %364) #8
  br label %366

366:                                              ; preds = %354
  %367 = load i32, ptr %9, align 4, !tbaa !10
  %368 = add nsw i32 %367, 1
  store i32 %368, ptr %9, align 4, !tbaa !10
  br label %23, !llvm.loop !253

369:                                              ; preds = %23
  %370 = load ptr, ptr %5, align 8, !tbaa !85
  %371 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %370, ptr noundef @.str.49) #8
  br label %375

372:                                              ; preds = %4
  %373 = load ptr, ptr %5, align 8, !tbaa !85
  %374 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %373, ptr noundef @.str.141) #8
  br label %375

375:                                              ; preds = %372, %369
  call void @llvm.lifetime.end.p0(i64 8, ptr %11) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %9) #8
  ret void
}

; Function Attrs: nounwind
define internal void @write_symbol_data_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %10 = load ptr, ptr %4, align 8, !tbaa !85
  %11 = load ptr, ptr %6, align 8, !tbaa !80
  %12 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.145, ptr noundef %11) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %13

13:                                               ; preds = %62, %3
  %14 = load i32, ptr %7, align 4, !tbaa !10
  %15 = load ptr, ptr %5, align 8, !tbaa !78
  %16 = getelementptr inbounds nuw %struct.Grammar, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds nuw %struct.anon.2, ptr %16, i32 0, i32 0
  %18 = load i32, ptr %17, align 8, !tbaa !108
  %19 = icmp ult i32 %14, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %13
  %21 = load ptr, ptr %4, align 8, !tbaa !85
  %22 = load ptr, ptr %5, align 8, !tbaa !78
  %23 = getelementptr inbounds nuw %struct.Grammar, ptr %22, i32 0, i32 1
  %24 = getelementptr inbounds nuw %struct.anon.2, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  %26 = load i32, ptr %7, align 4, !tbaa !10
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  %30 = getelementptr inbounds nuw %struct.Production, ptr %29, i32 0, i32 4
  %31 = load i8, ptr %30, align 4
  %32 = lshr i8 %31, 2
  %33 = and i8 %32, 7
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x ptr], ptr @d_internal, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !80
  %41 = load ptr, ptr %5, align 8, !tbaa !78
  %42 = getelementptr inbounds nuw %struct.Grammar, ptr %41, i32 0, i32 1
  %43 = getelementptr inbounds nuw %struct.anon.2, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !122
  %45 = load i32, ptr %7, align 4, !tbaa !10
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  %49 = getelementptr inbounds nuw %struct.Production, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8, !tbaa !124
  %51 = load ptr, ptr %5, align 8, !tbaa !78
  %52 = getelementptr inbounds nuw %struct.Grammar, ptr %51, i32 0, i32 1
  %53 = getelementptr inbounds nuw %struct.anon.2, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !122
  %55 = load i32, ptr %7, align 4, !tbaa !10
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !87
  %59 = getelementptr inbounds nuw %struct.Production, ptr %58, i32 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !254
  %61 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.146, ptr noundef %40, ptr noundef %50, i32 noundef signext %60) #8
  br label %62

62:                                               ; preds = %20
  %63 = load i32, ptr %7, align 4, !tbaa !10
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %7, align 4, !tbaa !10
  br label %13, !llvm.loop !255

65:                                               ; preds = %13
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %66

66:                                               ; preds = %108, %65
  %67 = load i32, ptr %7, align 4, !tbaa !10
  %68 = load ptr, ptr %5, align 8, !tbaa !78
  %69 = getelementptr inbounds nuw %struct.Grammar, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds nuw %struct.anon.3, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 8, !tbaa !109
  %72 = icmp ult i32 %67, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %74 = load ptr, ptr %5, align 8, !tbaa !78
  %75 = getelementptr inbounds nuw %struct.Grammar, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds nuw %struct.anon.3, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !113
  %78 = load i32, ptr %7, align 4, !tbaa !10
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !67
  %82 = getelementptr inbounds nuw %struct.Term, ptr %81, i32 0, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = call ptr @escape_string(ptr noundef %83)
  store ptr %84, ptr %8, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %9) #8
  %85 = load ptr, ptr %8, align 8, !tbaa !80
  %86 = call ptr @escape_string(ptr noundef %85)
  store ptr %86, ptr %9, align 8, !tbaa !80
  %87 = load ptr, ptr %4, align 8, !tbaa !85
  %88 = load ptr, ptr %5, align 8, !tbaa !78
  %89 = getelementptr inbounds nuw %struct.Grammar, ptr %88, i32 0, i32 2
  %90 = getelementptr inbounds nuw %struct.anon.3, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !113
  %92 = load i32, ptr %7, align 4, !tbaa !10
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !67
  %96 = getelementptr inbounds nuw %struct.Term, ptr %95, i32 0, i32 0
  %97 = load i32, ptr %96, align 8, !tbaa !114
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds nuw [4 x ptr], ptr @d_symbol, i64 0, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !80
  %101 = load ptr, ptr %9, align 8, !tbaa !80
  %102 = load ptr, ptr %9, align 8, !tbaa !80
  %103 = call i64 @strlen(ptr noundef %102) #9
  %104 = trunc i64 %103 to i32
  %105 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.146, ptr noundef %100, ptr noundef %101, i32 noundef signext %104) #8
  %106 = load ptr, ptr %8, align 8, !tbaa !80
  call void @free(ptr noundef %106) #8
  %107 = load ptr, ptr %9, align 8, !tbaa !80
  call void @free(ptr noundef %107) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %9) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  br label %108

108:                                              ; preds = %73
  %109 = load i32, ptr %7, align 4, !tbaa !10
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %7, align 4, !tbaa !10
  br label %66, !llvm.loop !256

111:                                              ; preds = %66
  %112 = load ptr, ptr %4, align 8, !tbaa !85
  %113 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef @.str.49) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void
}

; Function Attrs: nounwind
define internal void @write_passes_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !85
  store ptr %1, ptr %5, align 8, !tbaa !78
  store ptr %2, ptr %6, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %7) #8
  %9 = load ptr, ptr %5, align 8, !tbaa !78
  %10 = getelementptr inbounds nuw %struct.Grammar, ptr %9, i32 0, i32 8
  %11 = getelementptr inbounds nuw %struct.anon.6, ptr %10, i32 0, i32 0
  %12 = load i32, ptr %11, align 8, !tbaa !111
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 8, !tbaa !85
  %16 = load ptr, ptr %6, align 8, !tbaa !80
  %17 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.153, ptr noundef %16) #8
  store i32 0, ptr %7, align 4, !tbaa !10
  br label %18

18:                                               ; preds = %57, %14
  %19 = load i32, ptr %7, align 4, !tbaa !10
  %20 = load ptr, ptr %5, align 8, !tbaa !78
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 8
  %22 = getelementptr inbounds nuw %struct.anon.6, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !111
  %24 = icmp ult i32 %19, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr %8) #8
  %26 = load ptr, ptr %5, align 8, !tbaa !78
  %27 = getelementptr inbounds nuw %struct.Grammar, ptr %26, i32 0, i32 8
  %28 = getelementptr inbounds nuw %struct.anon.6, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !257
  %30 = load i32, ptr %7, align 4, !tbaa !10
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !258
  store ptr %33, ptr %8, align 8, !tbaa !258
  %34 = load ptr, ptr %4, align 8, !tbaa !85
  %35 = load ptr, ptr %8, align 8, !tbaa !258
  %36 = getelementptr inbounds nuw %struct.D_Pass, ptr %35, i32 0, i32 0
  %37 = load ptr, ptr %36, align 8, !tbaa !260
  %38 = load ptr, ptr %8, align 8, !tbaa !258
  %39 = getelementptr inbounds nuw %struct.D_Pass, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !262
  %41 = load ptr, ptr %8, align 8, !tbaa !258
  %42 = getelementptr inbounds nuw %struct.D_Pass, ptr %41, i32 0, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !263
  %44 = load ptr, ptr %8, align 8, !tbaa !258
  %45 = getelementptr inbounds nuw %struct.D_Pass, ptr %44, i32 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !264
  %47 = load i32, ptr %7, align 4, !tbaa !10
  %48 = load ptr, ptr %5, align 8, !tbaa !78
  %49 = getelementptr inbounds nuw %struct.Grammar, ptr %48, i32 0, i32 8
  %50 = getelementptr inbounds nuw %struct.anon.6, ptr %49, i32 0, i32 0
  %51 = load i32, ptr %50, align 8, !tbaa !111
  %52 = sub i32 %51, 1
  %53 = icmp ult i32 %47, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, ptr @.str.24, ptr @.str.23
  %56 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.154, ptr noundef %37, i32 noundef signext %40, i32 noundef signext %43, i32 noundef signext %46, ptr noundef %55) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %8) #8
  br label %57

57:                                               ; preds = %25
  %58 = load i32, ptr %7, align 4, !tbaa !10
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %7, align 4, !tbaa !10
  br label %18, !llvm.loop !265

60:                                               ; preds = %18
  %61 = load ptr, ptr %4, align 8, !tbaa !85
  %62 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.49) #8
  br label %63

63:                                               ; preds = %60, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr %7) #8
  ret void
}

declare ptr @lookup_production(ptr noundef, ptr noundef, i32 noundef signext) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind
define dso_local signext i32 @write_ctables(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !78
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = getelementptr inbounds nuw %struct.Grammar, ptr %3, i32 0, i32 18
  %5 = load i32, ptr %4, align 4, !tbaa !172
  %6 = sdiv i32 256, %5
  %7 = load ptr, ptr %2, align 8, !tbaa !78
  %8 = getelementptr inbounds nuw %struct.Grammar, ptr %7, i32 0, i32 19
  store i32 %6, ptr %8, align 8, !tbaa !179
  %9 = load ptr, ptr %2, align 8, !tbaa !78
  %10 = load ptr, ptr %2, align 8, !tbaa !78
  %11 = getelementptr inbounds nuw %struct.Grammar, ptr %10, i32 0, i32 0
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = load ptr, ptr %2, align 8, !tbaa !78
  %14 = getelementptr inbounds nuw %struct.Grammar, ptr %13, i32 0, i32 17
  %15 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 0
  %16 = load i8, ptr %15, align 4, !tbaa !66
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load ptr, ptr %2, align 8, !tbaa !78
  %21 = getelementptr inbounds nuw %struct.Grammar, ptr %20, i32 0, i32 17
  %22 = getelementptr inbounds [256 x i8], ptr %21, i64 0, i64 0
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi ptr [ %22, %19 ], [ null, %23 ]
  call void @write_parser_tables_as_C(ptr noundef %9, ptr noundef %12, ptr noundef %25)
  ret i32 0
}

declare signext i32 @strhashl(ptr noundef, i32 noundef signext) #2

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strcmp(ptr noundef, ptr noundef) #3

declare signext i32 @state_for_declaration(ptr noundef, i32 noundef signext) #2

declare signext i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
define internal ptr @mybasename(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %3) #8
  %4 = load ptr, ptr %2, align 8, !tbaa !80
  %5 = call ptr @strrchr(ptr noundef %4, i32 noundef signext 47) #9
  store ptr %5, ptr %3, align 8, !tbaa !80
  %6 = load ptr, ptr %3, align 8, !tbaa !80
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !80
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  br label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr %2, align 8, !tbaa !80
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %10, %8 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %3) #8
  ret ptr %14
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #4

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncasecmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
define internal signext i32 @find_symbol(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8, !tbaa !78
  store ptr %1, ptr %7, align 8, !tbaa !80
  store ptr %2, ptr %8, align 8, !tbaa !80
  store i32 %3, ptr %9, align 4, !tbaa !10
  br label %14

14:                                               ; preds = %33, %4
  %15 = load ptr, ptr %7, align 8, !tbaa !80
  %16 = load i8, ptr %15, align 1, !tbaa !66
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = call ptr @__ctype_b_loc() #10
  %21 = load ptr, ptr %20, align 8, !tbaa !132
  %22 = load ptr, ptr %7, align 8, !tbaa !80
  %23 = load i8, ptr %22, align 1, !tbaa !66
  %24 = sext i8 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %21, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !134
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 8192
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %19, %14
  %32 = phi i1 [ false, %14 ], [ %30, %19 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load ptr, ptr %7, align 8, !tbaa !80
  %35 = getelementptr inbounds nuw i8, ptr %34, i32 1
  store ptr %35, ptr %7, align 8, !tbaa !80
  br label %14, !llvm.loop !266

36:                                               ; preds = %31
  %37 = load ptr, ptr %8, align 8, !tbaa !80
  %38 = load ptr, ptr %7, align 8, !tbaa !80
  %39 = icmp ugt ptr %37, %38
  br i1 %39, label %40, label %159

40:                                               ; preds = %36
  %41 = load i32, ptr %9, align 4, !tbaa !10
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr %10) #8
  %44 = load ptr, ptr %6, align 8, !tbaa !78
  %45 = load ptr, ptr %7, align 8, !tbaa !80
  %46 = load ptr, ptr %8, align 8, !tbaa !80
  %47 = load ptr, ptr %7, align 8, !tbaa !80
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = call ptr @lookup_production(ptr noundef %44, ptr noundef %45, i32 noundef signext %51)
  store ptr %52, ptr %10, align 8, !tbaa !87
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load ptr, ptr %10, align 8, !tbaa !87
  %56 = getelementptr inbounds nuw %struct.Production, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 8, !tbaa !72
  store i32 %57, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %59

58:                                               ; preds = %43
  store i32 0, ptr %11, align 4
  br label %59

59:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0(i64 8, ptr %10) #8
  %60 = load i32, ptr %11, align 4
  switch i32 %60, label %162 [
    i32 0, label %61
    i32 1, label %160
  ]

61:                                               ; preds = %59
  br label %158

62:                                               ; preds = %40
  %63 = load i32, ptr %9, align 4, !tbaa !10
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %157

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 4, ptr %12) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr %13) #8
  store i32 -1, ptr %13, align 4, !tbaa !10
  store i32 0, ptr %12, align 4, !tbaa !10
  br label %66

66:                                               ; preds = %140, %65
  %67 = load i32, ptr %12, align 4, !tbaa !10
  %68 = load ptr, ptr %6, align 8, !tbaa !78
  %69 = getelementptr inbounds nuw %struct.Grammar, ptr %68, i32 0, i32 2
  %70 = getelementptr inbounds nuw %struct.anon.3, ptr %69, i32 0, i32 0
  %71 = load i32, ptr %70, align 8, !tbaa !109
  %72 = icmp ult i32 %67, %71
  br i1 %72, label %73, label %143

73:                                               ; preds = %66
  %74 = load ptr, ptr %6, align 8, !tbaa !78
  %75 = getelementptr inbounds nuw %struct.Grammar, ptr %74, i32 0, i32 2
  %76 = getelementptr inbounds nuw %struct.anon.3, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !113
  %78 = load i32, ptr %12, align 4, !tbaa !10
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds ptr, ptr %77, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !67
  %82 = getelementptr inbounds nuw %struct.Term, ptr %81, i32 0, i32 0
  %83 = load i32, ptr %82, align 8, !tbaa !114
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %139

85:                                               ; preds = %73
  %86 = load ptr, ptr %6, align 8, !tbaa !78
  %87 = getelementptr inbounds nuw %struct.Grammar, ptr %86, i32 0, i32 2
  %88 = getelementptr inbounds nuw %struct.anon.3, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !113
  %90 = load i32, ptr %12, align 4, !tbaa !10
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds ptr, ptr %89, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !67
  %94 = getelementptr inbounds nuw %struct.Term, ptr %93, i32 0, i32 6
  %95 = load i32, ptr %94, align 8, !tbaa !70
  %96 = sext i32 %95 to i64
  %97 = load ptr, ptr %8, align 8, !tbaa !80
  %98 = load ptr, ptr %7, align 8, !tbaa !80
  %99 = ptrtoint ptr %97 to i64
  %100 = ptrtoint ptr %98 to i64
  %101 = sub i64 %99, %100
  %102 = icmp eq i64 %96, %101
  br i1 %102, label %103, label %139

103:                                              ; preds = %85
  %104 = load ptr, ptr %7, align 8, !tbaa !80
  %105 = load ptr, ptr %6, align 8, !tbaa !78
  %106 = getelementptr inbounds nuw %struct.Grammar, ptr %105, i32 0, i32 2
  %107 = getelementptr inbounds nuw %struct.anon.3, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !113
  %109 = load i32, ptr %12, align 4, !tbaa !10
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds ptr, ptr %108, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !67
  %113 = getelementptr inbounds nuw %struct.Term, ptr %112, i32 0, i32 5
  %114 = load ptr, ptr %113, align 8, !tbaa !69
  %115 = load ptr, ptr %8, align 8, !tbaa !80
  %116 = load ptr, ptr %7, align 8, !tbaa !80
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %116 to i64
  %119 = sub i64 %117, %118
  %120 = call signext i32 @strncmp(ptr noundef %104, ptr noundef %114, i64 noundef %119) #9
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %139, label %122

122:                                              ; preds = %103
  %123 = load i32, ptr %13, align 4, !tbaa !10
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load ptr, ptr %6, align 8, !tbaa !78
  %127 = getelementptr inbounds nuw %struct.Grammar, ptr %126, i32 0, i32 2
  %128 = getelementptr inbounds nuw %struct.anon.3, ptr %127, i32 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !113
  %130 = load i32, ptr %12, align 4, !tbaa !10
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %129, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !67
  %134 = getelementptr inbounds nuw %struct.Term, ptr %133, i32 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !69
  call void (ptr, ...) @d_fail(ptr noundef @.str.33, ptr noundef %135)
  br label %138

136:                                              ; preds = %122
  %137 = load i32, ptr %12, align 4, !tbaa !10
  store i32 %137, ptr %13, align 4, !tbaa !10
  br label %138

138:                                              ; preds = %136, %125
  br label %139

139:                                              ; preds = %138, %103, %85, %73
  br label %140

140:                                              ; preds = %139
  %141 = load i32, ptr %12, align 4, !tbaa !10
  %142 = add nsw i32 %141, 1
  store i32 %142, ptr %12, align 4, !tbaa !10
  br label %66, !llvm.loop !267

143:                                              ; preds = %66
  %144 = load i32, ptr %13, align 4, !tbaa !10
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32, ptr %13, align 4, !tbaa !10
  %148 = load ptr, ptr %6, align 8, !tbaa !78
  %149 = getelementptr inbounds nuw %struct.Grammar, ptr %148, i32 0, i32 1
  %150 = getelementptr inbounds nuw %struct.anon.2, ptr %149, i32 0, i32 0
  %151 = load i32, ptr %150, align 8, !tbaa !108
  %152 = add i32 %147, %151
  store i32 %152, ptr %5, align 4
  store i32 1, ptr %11, align 4
  br label %154

153:                                              ; preds = %143
  store i32 0, ptr %11, align 4
  br label %154

154:                                              ; preds = %153, %146
  call void @llvm.lifetime.end.p0(i64 4, ptr %13) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr %12) #8
  %155 = load i32, ptr %11, align 4
  switch i32 %155, label %162 [
    i32 0, label %156
    i32 1, label %160
  ]

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %156, %62
  br label %158

158:                                              ; preds = %157, %61
  br label %159

159:                                              ; preds = %158, %36
  store i32 -1, ptr %5, align 4
  br label %160

160:                                              ; preds = %159, %154, %59
  %161 = load i32, ptr %5, align 4
  ret i32 %161

162:                                              ; preds = %154, %59
  unreachable
}

declare signext i32 @fputc(i32 noundef signext, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef signext) #3

; Function Attrs: nounwind willreturn memory(read)
declare signext i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
define internal void @write_code_as_C(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef signext %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8, !tbaa !85
  store ptr %1, ptr %8, align 8, !tbaa !78
  store ptr %2, ptr %9, align 8, !tbaa !140
  store ptr %3, ptr %10, align 8, !tbaa !80
  store i32 %4, ptr %11, align 4, !tbaa !10
  store ptr %5, ptr %12, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %13) #8
  %19 = load ptr, ptr %7, align 8, !tbaa !85
  %20 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.53) #8
  %21 = load ptr, ptr %8, align 8, !tbaa !78
  %22 = getelementptr inbounds nuw %struct.Grammar, ptr %21, i32 0, i32 20
  %23 = load i32, ptr %22, align 4, !tbaa !127
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load ptr, ptr %7, align 8, !tbaa !85
  %27 = load i32, ptr %11, align 4, !tbaa !10
  %28 = load ptr, ptr %12, align 8, !tbaa !80
  %29 = call ptr @mybasename(ptr noundef %28)
  %30 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.28, i32 noundef signext %27, ptr noundef %29) #8
  br label %31

31:                                               ; preds = %25, %6
  %32 = load ptr, ptr %10, align 8, !tbaa !80
  store ptr %32, ptr %13, align 8, !tbaa !80
  br label %33

33:                                               ; preds = %379, %31
  %34 = load ptr, ptr %13, align 8, !tbaa !80
  %35 = load i8, ptr %34, align 1, !tbaa !66
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %380

37:                                               ; preds = %33
  %38 = load ptr, ptr %13, align 8, !tbaa !80
  %39 = load i8, ptr %38, align 1, !tbaa !66
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 36
  br i1 %41, label %42, label %371

42:                                               ; preds = %37
  %43 = load ptr, ptr %13, align 8, !tbaa !80
  %44 = getelementptr inbounds nuw i8, ptr %43, i32 1
  store ptr %44, ptr %13, align 8, !tbaa !80
  %45 = load ptr, ptr %13, align 8, !tbaa !80
  %46 = load i8, ptr %45, align 1, !tbaa !66
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 35
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load ptr, ptr %7, align 8, !tbaa !85
  %51 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.54) #8
  %52 = load ptr, ptr %13, align 8, !tbaa !80
  %53 = getelementptr inbounds nuw i8, ptr %52, i32 1
  store ptr %53, ptr %13, align 8, !tbaa !80
  br label %370

54:                                               ; preds = %42
  %55 = load ptr, ptr %13, align 8, !tbaa !80
  %56 = load i8, ptr %55, align 1, !tbaa !66
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 103
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load ptr, ptr %7, align 8, !tbaa !85
  %61 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.55) #8
  %62 = load ptr, ptr %13, align 8, !tbaa !80
  %63 = getelementptr inbounds nuw i8, ptr %62, i32 1
  store ptr %63, ptr %13, align 8, !tbaa !80
  br label %369

64:                                               ; preds = %54
  %65 = load ptr, ptr %13, align 8, !tbaa !80
  %66 = load i8, ptr %65, align 1, !tbaa !66
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 110
  br i1 %68, label %69, label %119

69:                                               ; preds = %64
  %70 = load ptr, ptr %13, align 8, !tbaa !80
  %71 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %71, ptr %13, align 8, !tbaa !80
  %72 = call ptr @__ctype_b_loc() #10
  %73 = load ptr, ptr %72, align 8, !tbaa !132
  %74 = load ptr, ptr %13, align 8, !tbaa !80
  %75 = load i8, ptr %74, align 1, !tbaa !66
  %76 = sext i8 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %73, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !134
  %80 = zext i16 %79 to i32
  %81 = and i32 %80, 2048
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr %14) #8
  %84 = load ptr, ptr %13, align 8, !tbaa !80
  %85 = call signext i32 @atoi(ptr noundef %84) #9
  store i32 %85, ptr %14, align 4, !tbaa !10
  %86 = load ptr, ptr %7, align 8, !tbaa !85
  %87 = load i32, ptr %14, align 4, !tbaa !10
  %88 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.56, i32 noundef signext %87) #8
  %89 = load i32, ptr %14, align 4, !tbaa !10
  %90 = load ptr, ptr %9, align 8, !tbaa !140
  %91 = getelementptr inbounds nuw %struct.Rule, ptr %90, i32 0, i32 6
  %92 = getelementptr inbounds nuw %struct.anon.7, ptr %91, i32 0, i32 0
  %93 = load i32, ptr %92, align 8, !tbaa !64
  %94 = sub i32 %93, 1
  %95 = icmp ugt i32 %89, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %83
  %97 = load i32, ptr %11, align 4, !tbaa !10
  call void (ptr, ...) @d_fail(ptr noundef @.str.57, i32 noundef signext %97)
  br label %98

98:                                               ; preds = %96, %83
  br label %99

99:                                               ; preds = %111, %98
  %100 = call ptr @__ctype_b_loc() #10
  %101 = load ptr, ptr %100, align 8, !tbaa !132
  %102 = load ptr, ptr %13, align 8, !tbaa !80
  %103 = load i8, ptr %102, align 1, !tbaa !66
  %104 = sext i8 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %101, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !134
  %108 = zext i16 %107 to i32
  %109 = and i32 %108, 2048
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load ptr, ptr %13, align 8, !tbaa !80
  %113 = getelementptr inbounds nuw i8, ptr %112, i32 1
  store ptr %113, ptr %13, align 8, !tbaa !80
  br label %99, !llvm.loop !268

114:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 4, ptr %14) #8
  br label %118

115:                                              ; preds = %69
  %116 = load ptr, ptr %7, align 8, !tbaa !85
  %117 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %116, ptr noundef @.str.58) #8
  br label %118

118:                                              ; preds = %115, %114
  br label %368

119:                                              ; preds = %64
  %120 = load ptr, ptr %13, align 8, !tbaa !80
  %121 = load i8, ptr %120, align 1, !tbaa !66
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 36
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load ptr, ptr %7, align 8, !tbaa !85
  %126 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef @.str.59) #8
  %127 = load ptr, ptr %13, align 8, !tbaa !80
  %128 = getelementptr inbounds nuw i8, ptr %127, i32 1
  store ptr %128, ptr %13, align 8, !tbaa !80
  br label %367

129:                                              ; preds = %119
  %130 = call ptr @__ctype_b_loc() #10
  %131 = load ptr, ptr %130, align 8, !tbaa !132
  %132 = load ptr, ptr %13, align 8, !tbaa !80
  %133 = load i8, ptr %132, align 1, !tbaa !66
  %134 = sext i8 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i16, ptr %131, i64 %135
  %137 = load i16, ptr %136, align 2, !tbaa !134
  %138 = zext i16 %137 to i32
  %139 = and i32 %138, 2048
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 4, ptr %15) #8
  %142 = load ptr, ptr %13, align 8, !tbaa !80
  %143 = call signext i32 @atoi(ptr noundef %142) #9
  store i32 %143, ptr %15, align 4, !tbaa !10
  %144 = load ptr, ptr %7, align 8, !tbaa !85
  %145 = load i32, ptr %15, align 4, !tbaa !10
  %146 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.60, i32 noundef signext %145) #8
  br label %147

147:                                              ; preds = %159, %141
  %148 = call ptr @__ctype_b_loc() #10
  %149 = load ptr, ptr %148, align 8, !tbaa !132
  %150 = load ptr, ptr %13, align 8, !tbaa !80
  %151 = load i8, ptr %150, align 1, !tbaa !66
  %152 = sext i8 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, ptr %149, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !134
  %156 = zext i16 %155 to i32
  %157 = and i32 %156, 2048
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %147
  %160 = load ptr, ptr %13, align 8, !tbaa !80
  %161 = getelementptr inbounds nuw i8, ptr %160, i32 1
  store ptr %161, ptr %13, align 8, !tbaa !80
  br label %147, !llvm.loop !269

162:                                              ; preds = %147
  call void @llvm.lifetime.end.p0(i64 4, ptr %15) #8
  br label %366

163:                                              ; preds = %129
  %164 = load ptr, ptr %13, align 8, !tbaa !80
  %165 = load i8, ptr %164, align 1, !tbaa !66
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 123
  br i1 %167, label %168, label %363

168:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 8, ptr %16) #8
  %169 = load ptr, ptr %13, align 8, !tbaa !80
  %170 = getelementptr inbounds nuw i8, ptr %169, i32 1
  store ptr %170, ptr %13, align 8, !tbaa !80
  store ptr %170, ptr %16, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 8, ptr %17) #8
  br label %171

171:                                              ; preds = %196, %168
  %172 = load ptr, ptr %16, align 8, !tbaa !80
  %173 = load i8, ptr %172, align 1, !tbaa !66
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %171
  %177 = load ptr, ptr %16, align 8, !tbaa !80
  %178 = load i8, ptr %177, align 1, !tbaa !66
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 125
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = call ptr @__ctype_b_loc() #10
  %183 = load ptr, ptr %182, align 8, !tbaa !132
  %184 = load ptr, ptr %16, align 8, !tbaa !80
  %185 = load i8, ptr %184, align 1, !tbaa !66
  %186 = sext i8 %185 to i32
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i16, ptr %183, i64 %187
  %189 = load i16, ptr %188, align 2, !tbaa !134
  %190 = zext i16 %189 to i32
  %191 = and i32 %190, 8192
  %192 = icmp ne i32 %191, 0
  %193 = xor i1 %192, true
  br label %194

194:                                              ; preds = %181, %176, %171
  %195 = phi i1 [ false, %176 ], [ false, %171 ], [ %193, %181 ]
  br i1 %195, label %196, label %199

196:                                              ; preds = %194
  %197 = load ptr, ptr %16, align 8, !tbaa !80
  %198 = getelementptr inbounds nuw i8, ptr %197, i32 1
  store ptr %198, ptr %16, align 8, !tbaa !80
  br label %171, !llvm.loop !270

199:                                              ; preds = %194
  %200 = load ptr, ptr %16, align 8, !tbaa !80
  store ptr %200, ptr %17, align 8, !tbaa !80
  %201 = call ptr @__ctype_b_loc() #10
  %202 = load ptr, ptr %201, align 8, !tbaa !132
  %203 = load ptr, ptr %17, align 8, !tbaa !80
  %204 = load i8, ptr %203, align 1, !tbaa !66
  %205 = sext i8 %204 to i32
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i16, ptr %202, i64 %206
  %208 = load i16, ptr %207, align 2, !tbaa !134
  %209 = zext i16 %208 to i32
  %210 = and i32 %209, 8192
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %199
  %213 = load ptr, ptr %17, align 8, !tbaa !80
  %214 = getelementptr inbounds nuw i8, ptr %213, i32 1
  store ptr %214, ptr %17, align 8, !tbaa !80
  br label %215

215:                                              ; preds = %212, %199
  br label %216

216:                                              ; preds = %228, %215
  %217 = load ptr, ptr %17, align 8, !tbaa !80
  %218 = load i8, ptr %217, align 1, !tbaa !66
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load ptr, ptr %17, align 8, !tbaa !80
  %223 = load i8, ptr %222, align 1, !tbaa !66
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 125
  br label %226

226:                                              ; preds = %221, %216
  %227 = phi i1 [ false, %216 ], [ %225, %221 ]
  br i1 %227, label %228, label %231

228:                                              ; preds = %226
  %229 = load ptr, ptr %17, align 8, !tbaa !80
  %230 = getelementptr inbounds nuw i8, ptr %229, i32 1
  store ptr %230, ptr %17, align 8, !tbaa !80
  br label %216, !llvm.loop !271

231:                                              ; preds = %226
  %232 = load ptr, ptr %16, align 8, !tbaa !80
  %233 = load ptr, ptr %13, align 8, !tbaa !80
  %234 = ptrtoint ptr %232 to i64
  %235 = ptrtoint ptr %233 to i64
  %236 = sub i64 %234, %235
  %237 = icmp eq i64 %236, 6
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = load ptr, ptr %13, align 8, !tbaa !80
  %240 = call signext i32 @strncasecmp(ptr noundef %239, ptr noundef @.str.61, i64 noundef 6) #9
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = load ptr, ptr %7, align 8, !tbaa !85
  %244 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef @.str.62) #8
  br label %360

245:                                              ; preds = %238, %231
  %246 = load ptr, ptr %16, align 8, !tbaa !80
  %247 = load ptr, ptr %13, align 8, !tbaa !80
  %248 = ptrtoint ptr %246 to i64
  %249 = ptrtoint ptr %247 to i64
  %250 = sub i64 %248, %249
  %251 = icmp eq i64 %250, 10
  br i1 %251, label %252, label %259

252:                                              ; preds = %245
  %253 = load ptr, ptr %13, align 8, !tbaa !80
  %254 = call signext i32 @strncasecmp(ptr noundef %253, ptr noundef @.str.63, i64 noundef 10) #9
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = load ptr, ptr %7, align 8, !tbaa !85
  %258 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef @.str.64) #8
  br label %359

259:                                              ; preds = %252, %245
  %260 = load ptr, ptr %16, align 8, !tbaa !80
  %261 = load ptr, ptr %13, align 8, !tbaa !80
  %262 = ptrtoint ptr %260 to i64
  %263 = ptrtoint ptr %261 to i64
  %264 = sub i64 %262, %263
  %265 = icmp eq i64 %264, 5
  br i1 %265, label %266, label %273

266:                                              ; preds = %259
  %267 = load ptr, ptr %13, align 8, !tbaa !80
  %268 = call signext i32 @strncasecmp(ptr noundef %267, ptr noundef @.str.65, i64 noundef 5) #9
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %7, align 8, !tbaa !85
  %272 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %271, ptr noundef @.str.66) #8
  br label %358

273:                                              ; preds = %266, %259
  %274 = load ptr, ptr %16, align 8, !tbaa !80
  %275 = load ptr, ptr %13, align 8, !tbaa !80
  %276 = ptrtoint ptr %274 to i64
  %277 = ptrtoint ptr %275 to i64
  %278 = sub i64 %276, %277
  %279 = icmp eq i64 %278, 6
  br i1 %279, label %280, label %287

280:                                              ; preds = %273
  %281 = load ptr, ptr %13, align 8, !tbaa !80
  %282 = call signext i32 @strncasecmp(ptr noundef %281, ptr noundef @.str.67, i64 noundef 6) #9
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = load ptr, ptr %7, align 8, !tbaa !85
  %286 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %285, ptr noundef @.str.68) #8
  br label %357

287:                                              ; preds = %280, %273
  %288 = load ptr, ptr %16, align 8, !tbaa !80
  %289 = load ptr, ptr %13, align 8, !tbaa !80
  %290 = ptrtoint ptr %288 to i64
  %291 = ptrtoint ptr %289 to i64
  %292 = sub i64 %290, %291
  %293 = icmp eq i64 %292, 5
  br i1 %293, label %294, label %305

294:                                              ; preds = %287
  %295 = load ptr, ptr %13, align 8, !tbaa !80
  %296 = call signext i32 @strncasecmp(ptr noundef %295, ptr noundef @.str.29, i64 noundef 5) #9
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %305, label %298

298:                                              ; preds = %294
  %299 = load ptr, ptr %7, align 8, !tbaa !85
  %300 = load ptr, ptr %8, align 8, !tbaa !78
  %301 = load ptr, ptr %16, align 8, !tbaa !80
  %302 = load ptr, ptr %17, align 8, !tbaa !80
  %303 = call signext i32 @find_symbol(ptr noundef %300, ptr noundef %301, ptr noundef %302, i32 noundef signext 1)
  %304 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %299, ptr noundef @.str.30, i32 noundef signext %303) #8
  br label %356

305:                                              ; preds = %294, %287
  %306 = load ptr, ptr %16, align 8, !tbaa !80
  %307 = load ptr, ptr %13, align 8, !tbaa !80
  %308 = ptrtoint ptr %306 to i64
  %309 = ptrtoint ptr %307 to i64
  %310 = sub i64 %308, %309
  %311 = icmp eq i64 %310, 6
  br i1 %311, label %312, label %323

312:                                              ; preds = %305
  %313 = load ptr, ptr %13, align 8, !tbaa !80
  %314 = call signext i32 @strncasecmp(ptr noundef %313, ptr noundef @.str.31, i64 noundef 6) #9
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %312
  %317 = load ptr, ptr %7, align 8, !tbaa !85
  %318 = load ptr, ptr %8, align 8, !tbaa !78
  %319 = load ptr, ptr %16, align 8, !tbaa !80
  %320 = load ptr, ptr %17, align 8, !tbaa !80
  %321 = call signext i32 @find_symbol(ptr noundef %318, ptr noundef %319, ptr noundef %320, i32 noundef signext 3)
  %322 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef @.str.30, i32 noundef signext %321) #8
  br label %355

323:                                              ; preds = %312, %305
  %324 = load ptr, ptr %16, align 8, !tbaa !80
  %325 = load ptr, ptr %13, align 8, !tbaa !80
  %326 = ptrtoint ptr %324 to i64
  %327 = ptrtoint ptr %325 to i64
  %328 = sub i64 %326, %327
  %329 = icmp eq i64 %328, 4
  br i1 %329, label %330, label %352

330:                                              ; preds = %323
  %331 = load ptr, ptr %13, align 8, !tbaa !80
  %332 = call signext i32 @strncasecmp(ptr noundef %331, ptr noundef @.str.69, i64 noundef 4) #9
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %352, label %334

334:                                              ; preds = %330
  call void @llvm.lifetime.start.p0(i64 8, ptr %18) #8
  %335 = load ptr, ptr %8, align 8, !tbaa !78
  %336 = load ptr, ptr %16, align 8, !tbaa !80
  %337 = load ptr, ptr %17, align 8, !tbaa !80
  %338 = call ptr @find_pass(ptr noundef %335, ptr noundef %336, ptr noundef %337)
  store ptr %338, ptr %18, align 8, !tbaa !258
  %339 = load ptr, ptr %18, align 8, !tbaa !258
  %340 = icmp ne ptr %339, null
  br i1 %340, label %346, label %341

341:                                              ; preds = %334
  %342 = load ptr, ptr %16, align 8, !tbaa !80
  %343 = load ptr, ptr %17, align 8, !tbaa !80
  %344 = call ptr @dup_str(ptr noundef %342, ptr noundef %343)
  %345 = load i32, ptr %11, align 4, !tbaa !10
  call void (ptr, ...) @d_fail(ptr noundef @.str.70, ptr noundef %344, i32 noundef signext %345)
  br label %346

346:                                              ; preds = %341, %334
  %347 = load ptr, ptr %7, align 8, !tbaa !85
  %348 = load ptr, ptr %18, align 8, !tbaa !258
  %349 = getelementptr inbounds nuw %struct.D_Pass, ptr %348, i32 0, i32 3
  %350 = load i32, ptr %349, align 8, !tbaa !264
  %351 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef @.str.30, i32 noundef signext %350) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %18) #8
  br label %354

352:                                              ; preds = %330, %323
  %353 = load i32, ptr %11, align 4, !tbaa !10
  call void (ptr, ...) @d_fail(ptr noundef @.str.32, i32 noundef signext %353)
  br label %354

354:                                              ; preds = %352, %346
  br label %355

355:                                              ; preds = %354, %316
  br label %356

356:                                              ; preds = %355, %298
  br label %357

357:                                              ; preds = %356, %284
  br label %358

358:                                              ; preds = %357, %270
  br label %359

359:                                              ; preds = %358, %256
  br label %360

360:                                              ; preds = %359, %242
  %361 = load ptr, ptr %17, align 8, !tbaa !80
  %362 = getelementptr inbounds i8, ptr %361, i64 1
  store ptr %362, ptr %13, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 8, ptr %17) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %16) #8
  br label %365

363:                                              ; preds = %163
  %364 = load i32, ptr %11, align 4, !tbaa !10
  call void (ptr, ...) @d_fail(ptr noundef @.str.32, i32 noundef signext %364)
  br label %365

365:                                              ; preds = %363, %360
  br label %366

366:                                              ; preds = %365, %162
  br label %367

367:                                              ; preds = %366, %124
  br label %368

368:                                              ; preds = %367, %118
  br label %369

369:                                              ; preds = %368, %59
  br label %370

370:                                              ; preds = %369, %49
  br label %379

371:                                              ; preds = %37
  %372 = load ptr, ptr %13, align 8, !tbaa !80
  %373 = load i8, ptr %372, align 1, !tbaa !66
  %374 = sext i8 %373 to i32
  %375 = load ptr, ptr %7, align 8, !tbaa !85
  %376 = call signext i32 @fputc(i32 noundef signext %374, ptr noundef %375)
  %377 = load ptr, ptr %13, align 8, !tbaa !80
  %378 = getelementptr inbounds nuw i8, ptr %377, i32 1
  store ptr %378, ptr %13, align 8, !tbaa !80
  br label %379

379:                                              ; preds = %371, %370
  br label %33, !llvm.loop !272

380:                                              ; preds = %33
  %381 = load ptr, ptr %7, align 8, !tbaa !85
  %382 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %381, ptr noundef @.str.71) #8
  %383 = load ptr, ptr %7, align 8, !tbaa !85
  %384 = call signext i32 (ptr, ptr, ...) @fprintf(ptr noundef %383, ptr noundef @.str.72) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr %13) #8
  ret void
}

; Function Attrs: nounwind
declare signext i32 @sprintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: inlinehint nounwind willreturn memory(read)
define available_externally signext i32 @atoi(ptr noundef nonnull %0) #5 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !80
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = call i64 @strtol(ptr noundef %3, ptr noundef null, i32 noundef signext 10) #8
  %5 = trunc i64 %4 to i32
  ret i32 %5
}

declare ptr @find_pass(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @dup_str(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef signext) #0

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
define internal signext i32 @scanner_size(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !47
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds nuw %struct.State, ptr %4, i32 0, i32 9
  %6 = getelementptr inbounds nuw %struct.Scanner, ptr %5, i32 0, i32 0
  %7 = getelementptr inbounds nuw %struct.VecScanState, ptr %6, i32 0, i32 0
  %8 = load i32, ptr %7, align 8, !tbaa !171
  %9 = icmp ult i32 %8, 255
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !tbaa !47
  %12 = getelementptr inbounds nuw %struct.State, ptr %11, i32 0, i32 9
  %13 = getelementptr inbounds nuw %struct.Scanner, ptr %12, i32 0, i32 1
  %14 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %13, i32 0, i32 0
  %15 = load i32, ptr %14, align 8, !tbaa !186
  %16 = icmp ult i32 %15, 255
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 1, ptr %2, align 4
  br label %34

18:                                               ; preds = %10, %1
  %19 = load ptr, ptr %3, align 8, !tbaa !47
  %20 = getelementptr inbounds nuw %struct.State, ptr %19, i32 0, i32 9
  %21 = getelementptr inbounds nuw %struct.Scanner, ptr %20, i32 0, i32 0
  %22 = getelementptr inbounds nuw %struct.VecScanState, ptr %21, i32 0, i32 0
  %23 = load i32, ptr %22, align 8, !tbaa !171
  %24 = icmp ult i32 %23, 32384
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load ptr, ptr %3, align 8, !tbaa !47
  %27 = getelementptr inbounds nuw %struct.State, ptr %26, i32 0, i32 9
  %28 = getelementptr inbounds nuw %struct.Scanner, ptr %27, i32 0, i32 1
  %29 = getelementptr inbounds nuw %struct.VecScanStateTransition, ptr %28, i32 0, i32 0
  %30 = load i32, ptr %29, align 8, !tbaa !186
  %31 = icmp ult i32 %30, 32384
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 2, ptr %2, align 4
  br label %34

33:                                               ; preds = %25, %18
  store i32 4, ptr %2, align 4
  br label %34

34:                                               ; preds = %33, %32, %17
  %35 = load i32, ptr %2, align 4
  ret i32 %35
}

declare ptr @set_add_fn(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
define internal ptr @scanner_type(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !47
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = call signext i32 @scanner_size(ptr noundef %3)
  %5 = call ptr @make_type(i32 noundef signext %4)
  ret ptr %5
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #0

; Function Attrs: nounwind
define internal ptr @scanner_u_type(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !47
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = call signext i32 @scanner_size(ptr noundef %3)
  %5 = call ptr @make_u_type(i32 noundef signext %4)
  ret ptr %5
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #0

; Function Attrs: nounwind
define internal ptr @make_type(i32 noundef signext %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  %4 = load i32, ptr %3, align 4, !tbaa !10
  switch i32 %4, label %8 [
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ]

5:                                                ; preds = %1
  store ptr @.str.100, ptr %2, align 8
  br label %9

6:                                                ; preds = %1
  store ptr @.str.101, ptr %2, align 8
  br label %9

7:                                                ; preds = %1
  store ptr @.str.102, ptr %2, align 8
  br label %9

8:                                                ; preds = %1
  call void (ptr, ...) @d_fail(ptr noundef @.str.103)
  store ptr @.str.23, ptr %2, align 8
  br label %9

9:                                                ; preds = %8, %7, %6, %5
  %10 = load ptr, ptr %2, align 8
  ret ptr %10
}

; Function Attrs: nounwind
define internal ptr @make_u_type(i32 noundef signext %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store i32 %0, ptr %3, align 4, !tbaa !10
  %4 = load i32, ptr %3, align 4, !tbaa !10
  switch i32 %4, label %8 [
    i32 1, label %5
    i32 2, label %6
    i32 4, label %7
  ]

5:                                                ; preds = %1
  store ptr @.str.104, ptr %2, align 8
  br label %9

6:                                                ; preds = %1
  store ptr @.str.105, ptr %2, align 8
  br label %9

7:                                                ; preds = %1
  store ptr @.str.106, ptr %2, align 8
  br label %9

8:                                                ; preds = %1
  call void (ptr, ...) @d_fail(ptr noundef @.str.103)
  store ptr @.str.23, ptr %2, align 8
  br label %9

9:                                                ; preds = %8, %7, %6, %5
  %10 = load ptr, ptr %2, align 8
  ret ptr %10
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare signext i32 @elem_symbol(ptr noundef, ptr noundef) #2

declare void @vec_add_internal(ptr noundef, ptr noundef) #2

declare ptr @escape_string(ptr noundef) #2

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #4 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #5 = { inlinehint nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="loongarch64" "target-features"="+64bit,+d,+f,+lasx,+lsx,+ual" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind willreturn memory(none) }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"p1 _ZTS12ScannerBlock", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10hash_fns_t", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"ScannerBlock", !11, i64 0, !11, i64 4, !11, i64 8, !15, i64 16, !17, i64 24}
!15 = !{!"p2 _ZTS9ScanState", !16, i64 0}
!16 = !{!"any p2 pointer", !5, i64 0}
!17 = !{!"p2 _ZTS19ScanStateTransition", !16, i64 0}
!18 = !{!15, !15, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS9ScanState", !5, i64 0}
!21 = !{!22, !11, i64 0}
!22 = !{!"ScanState", !11, i64 0, !6, i64 8, !23, i64 2056, !23, i64 2096, !6, i64 2136}
!23 = !{!"", !11, i64 0, !11, i64 4, !24, i64 8, !6, i64 16}
!24 = !{!"p2 _ZTS6Action", !16, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!14, !17, i64 24}
!29 = !{!17, !17, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS19ScanStateTransition", !5, i64 0}
!32 = !{!33, !11, i64 0}
!33 = !{!"ScanStateTransition", !11, i64 0, !23, i64 8, !23, i64 48}
!34 = distinct !{!34, !26}
!35 = distinct !{!35, !26}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS6Action", !5, i64 0}
!38 = !{!39, !40, i64 8}
!39 = !{!"Action", !11, i64 0, !40, i64 8, !41, i64 16, !42, i64 24, !11, i64 32, !43, i64 40}
!40 = !{!"p1 _ZTS4Term", !5, i64 0}
!41 = !{!"p1 _ZTS4Rule", !5, i64 0}
!42 = !{!"p1 _ZTS5State", !5, i64 0}
!43 = !{!"p1 omnipotent char", !5, i64 0}
!44 = !{!45, !11, i64 4}
!45 = !{!"Term", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !43, i64 24, !11, i64 32, !11, i64 36, !11, i64 36, !46, i64 40}
!46 = !{!"p1 _ZTS10Production", !5, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!49, !11, i64 0}
!49 = !{!"", !11, i64 0, !11, i64 4, !50, i64 8, !6, i64 16}
!50 = !{!"p2 _ZTS4Hint", !16, i64 0}
!51 = !{!49, !50, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS4Hint", !5, i64 0}
!54 = !{!55, !41, i64 16}
!55 = !{!"Hint", !11, i64 0, !42, i64 8, !41, i64 16}
!56 = !{!57, !59, i64 40}
!57 = !{!"Rule", !11, i64 0, !46, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !58, i64 32, !60, i64 72, !61, i64 80, !61, i64 96, !62, i64 112, !11, i64 152, !41, i64 160}
!58 = !{!"", !11, i64 0, !11, i64 4, !59, i64 8, !6, i64 16}
!59 = !{!"p2 _ZTS4Elem", !16, i64 0}
!60 = !{!"p1 _ZTS4Elem", !5, i64 0}
!61 = !{!"Code", !43, i64 0, !11, i64 8}
!62 = !{!"", !11, i64 0, !11, i64 4, !63, i64 8, !6, i64 16}
!63 = !{!"p2 _ZTS4Code", !16, i64 0}
!64 = !{!57, !11, i64 32}
!65 = !{!60, !60, i64 0}
!66 = !{!6, !6, i64 0}
!67 = !{!40, !40, i64 0}
!68 = !{!55, !11, i64 0}
!69 = !{!45, !43, i64 24}
!70 = !{!45, !11, i64 32}
!71 = !{!57, !46, i64 8}
!72 = !{!73, !11, i64 56}
!73 = !{!"Production", !43, i64 0, !11, i64 8, !74, i64 16, !11, i64 56, !11, i64 60, !11, i64 60, !11, i64 60, !41, i64 64, !6, i64 72, !6, i64 136, !42, i64 200, !60, i64 208, !40, i64 216, !46, i64 224}
!74 = !{!"", !11, i64 0, !11, i64 4, !75, i64 8, !6, i64 16}
!75 = !{!"p2 _ZTS4Rule", !16, i64 0}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = !{!79, !79, i64 0}
!79 = !{!"p1 _ZTS7Grammar", !5, i64 0}
!80 = !{!43, !43, i64 0}
!81 = !{!82, !11, i64 0}
!82 = !{!"", !11, i64 0, !11, i64 4, !83, i64 8, !6, i64 16}
!83 = !{!"p2 _ZTS5State", !16, i64 0}
!84 = !{!82, !83, i64 8}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTS8_IO_FILE", !5, i64 0}
!87 = !{!46, !46, i64 0}
!88 = !{!73, !42, i64 200}
!89 = !{!90, !11, i64 0}
!90 = !{!"State", !11, i64 0, !91, i64 8, !58, i64 16, !58, i64 56, !92, i64 96, !23, i64 136, !23, i64 176, !49, i64 216, !49, i64 256, !94, i64 296, !11, i64 376, !11, i64 376, !11, i64 376, !11, i64 376, !43, i64 384, !11, i64 392, !42, i64 400, !42, i64 408, !41, i64 416, !41, i64 424}
!91 = !{!"long long", !6, i64 0}
!92 = !{!"", !11, i64 0, !11, i64 4, !93, i64 8, !6, i64 16}
!93 = !{!"p2 _ZTS4Goto", !16, i64 0}
!94 = !{!"Scanner", !95, i64 0, !96, i64 40}
!95 = !{!"", !11, i64 0, !11, i64 4, !15, i64 8, !6, i64 16}
!96 = !{!"", !11, i64 0, !11, i64 4, !17, i64 8, !6, i64 16}
!97 = !{!98, !11, i64 88}
!98 = !{!"Grammar", !43, i64 0, !99, i64 8, !101, i64 48, !82, i64 88, !61, i64 128, !103, i64 144, !11, i64 152, !104, i64 160, !106, i64 200, !43, i64 240, !11, i64 248, !11, i64 252, !11, i64 256, !11, i64 260, !11, i64 264, !11, i64 268, !11, i64 272, !6, i64 276, !11, i64 532, !11, i64 536, !11, i64 540, !11, i64 544, !11, i64 548, !46, i64 552, !41, i64 560, !60, i64 568, !11, i64 576, !11, i64 580, !11, i64 584, !11, i64 588}
!99 = !{!"", !11, i64 0, !11, i64 4, !100, i64 8, !6, i64 16}
!100 = !{!"p2 _ZTS10Production", !16, i64 0}
!101 = !{!"", !11, i64 0, !11, i64 4, !102, i64 8, !6, i64 16}
!102 = !{!"p2 _ZTS4Term", !16, i64 0}
!103 = !{!"p1 _ZTS4Code", !5, i64 0}
!104 = !{!"", !11, i64 0, !11, i64 4, !105, i64 8, !6, i64 16}
!105 = !{!"p2 _ZTS11Declaration", !16, i64 0}
!106 = !{!"", !11, i64 0, !11, i64 4, !107, i64 8, !6, i64 16}
!107 = !{!"p2 _ZTS6D_Pass", !16, i64 0}
!108 = !{!98, !11, i64 8}
!109 = !{!98, !11, i64 48}
!110 = !{!98, !43, i64 240}
!111 = !{!98, !11, i64 200}
!112 = !{!98, !11, i64 272}
!113 = !{!98, !102, i64 56}
!114 = !{!45, !11, i64 0}
!115 = distinct !{!115, !26}
!116 = !{!98, !11, i64 260}
!117 = distinct !{!117, !26}
!118 = !{!98, !11, i64 544}
!119 = !{!98, !11, i64 548}
!120 = distinct !{!120, !26}
!121 = distinct !{!121, !26}
!122 = !{!98, !100, i64 16}
!123 = !{!73, !60, i64 208}
!124 = !{!73, !43, i64 0}
!125 = distinct !{!125, !26}
!126 = !{!98, !11, i64 152}
!127 = !{!98, !11, i64 540}
!128 = !{!98, !103, i64 144}
!129 = !{!61, !11, i64 8}
!130 = !{!98, !43, i64 0}
!131 = !{!61, !43, i64 0}
!132 = !{!133, !133, i64 0}
!133 = !{!"p1 short", !5, i64 0}
!134 = !{!135, !135, i64 0}
!135 = !{!"short", !6, i64 0}
!136 = distinct !{!136, !26}
!137 = distinct !{!137, !26}
!138 = distinct !{!138, !26}
!139 = distinct !{!139, !26}
!140 = !{!41, !41, i64 0}
!141 = !{!73, !75, i64 24}
!142 = !{!57, !11, i64 0}
!143 = !{!57, !11, i64 112}
!144 = distinct !{!144, !26}
!145 = !{!73, !11, i64 16}
!146 = !{!57, !43, i64 80}
!147 = !{!57, !43, i64 96}
!148 = !{!57, !11, i64 16}
!149 = !{!57, !11, i64 20}
!150 = !{!57, !11, i64 24}
!151 = !{!57, !11, i64 28}
!152 = !{!57, !11, i64 152}
!153 = !{!57, !63, i64 120}
!154 = !{!103, !103, i64 0}
!155 = distinct !{!155, !26}
!156 = !{!57, !41, i64 160}
!157 = distinct !{!157, !26}
!158 = distinct !{!158, !26}
!159 = !{!57, !11, i64 88}
!160 = !{!57, !11, i64 104}
!161 = distinct !{!161, !26}
!162 = distinct !{!162, !26}
!163 = distinct !{!163, !26}
!164 = distinct !{!164, !26}
!165 = !{!45, !46, i64 40}
!166 = !{!45, !11, i64 12}
!167 = !{!45, !11, i64 16}
!168 = !{!45, !11, i64 8}
!169 = distinct !{!169, !26}
!170 = !{!98, !83, i64 96}
!171 = !{!90, !11, i64 296}
!172 = !{!98, !11, i64 532}
!173 = distinct !{!173, !26}
!174 = !{!175, !11, i64 0}
!175 = !{!"", !11, i64 0, !11, i64 4, !176, i64 8, !6, i64 16}
!176 = !{!"p2 _ZTS12ScannerBlock", !16, i64 0}
!177 = !{!175, !176, i64 8}
!178 = distinct !{!178, !26}
!179 = !{!98, !11, i64 536}
!180 = !{!23, !11, i64 0}
!181 = !{!23, !24, i64 8}
!182 = !{!90, !11, i64 136}
!183 = !{!90, !42, i64 400}
!184 = !{!90, !24, i64 144}
!185 = distinct !{!185, !26}
!186 = !{!90, !11, i64 336}
!187 = !{!90, !17, i64 344}
!188 = distinct !{!188, !26}
!189 = distinct !{!189, !26}
!190 = distinct !{!190, !26}
!191 = !{!95, !11, i64 0}
!192 = !{!14, !11, i64 0}
!193 = !{!14, !11, i64 4}
!194 = !{!14, !11, i64 8}
!195 = !{!95, !15, i64 8}
!196 = distinct !{!196, !26}
!197 = distinct !{!197, !26}
!198 = distinct !{!198, !26}
!199 = !{!22, !11, i64 2056}
!200 = !{!22, !24, i64 2064}
!201 = !{!39, !43, i64 40}
!202 = distinct !{!202, !26}
!203 = distinct !{!203, !26}
!204 = distinct !{!204, !26}
!205 = distinct !{!205, !26}
!206 = distinct !{!206, !26}
!207 = distinct !{!207, !26}
!208 = distinct !{!208, !26}
!209 = distinct !{!209, !26}
!210 = distinct !{!210, !26}
!211 = !{!39, !11, i64 0}
!212 = distinct !{!212, !26}
!213 = distinct !{!213, !26}
!214 = !{!215, !11, i64 0}
!215 = !{!"", !11, i64 0, !11, i64 4, !216, i64 8, !6, i64 16}
!216 = !{!"p1 long", !5, i64 0}
!217 = !{!215, !216, i64 8}
!218 = !{!90, !11, i64 96}
!219 = !{!90, !93, i64 104}
!220 = !{!221, !221, i64 0}
!221 = !{!"p1 _ZTS4Goto", !5, i64 0}
!222 = !{!223, !60, i64 0}
!223 = !{!"Goto", !60, i64 0, !42, i64 8}
!224 = !{!225, !11, i64 0}
!225 = !{!"Elem", !11, i64 0, !11, i64 4, !41, i64 8, !6, i64 16}
!226 = distinct !{!226, !26}
!227 = distinct !{!227, !26}
!228 = !{!229, !229, i64 0}
!229 = !{!"long", !6, i64 0}
!230 = distinct !{!230, !26}
!231 = distinct !{!231, !26}
!232 = !{!223, !42, i64 8}
!233 = distinct !{!233, !26}
!234 = distinct !{!234, !26}
!235 = !{!90, !11, i64 392}
!236 = distinct !{!236, !26}
!237 = !{!90, !11, i64 176}
!238 = !{!90, !24, i64 184}
!239 = !{!39, !41, i64 16}
!240 = distinct !{!240, !26}
!241 = !{!90, !11, i64 216}
!242 = !{!90, !50, i64 224}
!243 = !{!55, !42, i64 8}
!244 = distinct !{!244, !26}
!245 = distinct !{!245, !26}
!246 = distinct !{!246, !26}
!247 = !{!90, !11, i64 256}
!248 = !{!90, !50, i64 264}
!249 = distinct !{!249, !26}
!250 = distinct !{!250, !26}
!251 = !{!98, !43, i64 128}
!252 = !{!90, !42, i64 408}
!253 = distinct !{!253, !26}
!254 = !{!73, !11, i64 8}
!255 = distinct !{!255, !26}
!256 = distinct !{!256, !26}
!257 = !{!98, !107, i64 208}
!258 = !{!259, !259, i64 0}
!259 = !{!"p1 _ZTS6D_Pass", !5, i64 0}
!260 = !{!261, !43, i64 0}
!261 = !{!"D_Pass", !43, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!262 = !{!261, !11, i64 8}
!263 = !{!261, !11, i64 12}
!264 = !{!261, !11, i64 16}
!265 = distinct !{!265, !26}
!266 = distinct !{!266, !26}
!267 = distinct !{!267, !26}
!268 = distinct !{!268, !26}
!269 = distinct !{!269, !26}
!270 = distinct !{!270, !26}
!271 = distinct !{!271, !26}
!272 = distinct !{!272, !26}
