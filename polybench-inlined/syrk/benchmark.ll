; ModuleID = 'benchmark.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !26, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i8** %argv, metadata !27, metadata !DIExpression()), !dbg !38
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !39
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !39, !tbaa !40
  call void @llvm.dbg.value(metadata i8* %0, metadata !44, metadata !DIExpression()) #5, !dbg !51
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #5, !dbg !53
  %conv.i = trunc i64 %call.i to i32, !dbg !54
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !28, metadata !DIExpression()), !dbg !38
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !55
  %1 = load i8*, i8** %arrayidx1, align 8, !dbg !55, !tbaa !40
  call void @llvm.dbg.value(metadata i8* %1, metadata !44, metadata !DIExpression()) #5, !dbg !56
  %call.i215 = tail call i64 @strtol(i8* nocapture nonnull %1, i8** null, i32 10) #5, !dbg !58
  %conv.i216 = trunc i64 %call.i215 to i32, !dbg !59
  call void @llvm.dbg.value(metadata i32 %conv.i216, metadata !29, metadata !DIExpression()), !dbg !38
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 3, !dbg !60
  %2 = load i8*, i8** %arrayidx3, align 8, !dbg !60, !tbaa !40
  call void @llvm.dbg.value(metadata i8* %2, metadata !44, metadata !DIExpression()) #5, !dbg !61
  %call.i217 = tail call i64 @strtol(i8* nocapture nonnull %2, i8** null, i32 10) #5, !dbg !63
  %conv.i218 = trunc i64 %call.i217 to i32, !dbg !64
  call void @llvm.dbg.value(metadata i32 %conv.i218, metadata !30, metadata !DIExpression()), !dbg !38
  %3 = and i64 %call.i215, 4294967295, !dbg !65
  %mul = shl i64 %call.i215, 3, !dbg !66
  %conv = mul i64 %mul, %call.i215, !dbg !67
  %mul5 = and i64 %conv, 34359738360, !dbg !67
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #5, !dbg !68
  %4 = bitcast i8* %call6 to double*, !dbg !69
  call void @llvm.dbg.value(metadata double* %4, metadata !33, metadata !DIExpression()), !dbg !38
  %5 = and i64 %call.i217, 4294967295, !dbg !70
  %mul7 = shl i64 %call.i215, 32, !dbg !71
  %sext = mul i64 %mul7, %call.i217, !dbg !72
  %mul9 = ashr exact i64 %sext, 29, !dbg !73
  %call10 = tail call noalias i8* @malloc(i64 %mul9) #5, !dbg !74
  %6 = bitcast i8* %call10 to double*, !dbg !75
  call void @llvm.dbg.value(metadata double* %6, metadata !34, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !31, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !32, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !38
  %cmp244 = icmp sgt i32 %conv.i216, 0, !dbg !76
  br i1 %cmp244, label %for.cond12.preheader.lr.ph, label %for.end102, !dbg !79

for.cond12.preheader.lr.ph:                       ; preds = %entry
  %cmp13242 = icmp sgt i32 %conv.i218, 0, !dbg !80
  %conv19 = sitofp i32 %conv.i216 to double, !dbg !80
  %wide.trip.count286 = and i64 %call.i215, 4294967295, !dbg !76
  %wide.trip.count282 = and i64 %call.i217, 4294967295, !dbg !80
  br label %for.cond12.preheader, !dbg !79

for.cond12.preheader:                             ; preds = %for.inc23, %for.cond12.preheader.lr.ph
  %indvars.iv284 = phi i64 [ 0, %for.cond12.preheader.lr.ph ], [ %indvars.iv.next285, %for.inc23 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv284, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !38
  br i1 %cmp13242, label %for.body15.lr.ph, label %for.inc23, !dbg !83

for.body15.lr.ph:                                 ; preds = %for.cond12.preheader
  %7 = trunc i64 %indvars.iv284 to i32, !dbg !80
  %conv16 = sitofp i32 %7 to double, !dbg !80
  %8 = mul nuw nsw i64 %5, %indvars.iv284, !dbg !80
  %arrayidx20 = getelementptr inbounds double, double* %6, i64 %8, !dbg !80
  br label %for.body15, !dbg !83

for.cond26.preheader:                             ; preds = %for.inc23
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !38
  br i1 %cmp244, label %for.cond30.preheader.lr.ph, label %for.end102, !dbg !84

for.cond30.preheader.lr.ph:                       ; preds = %for.cond26.preheader
  %conv37 = sitofp i32 %conv.i216 to double, !dbg !86
  %wide.trip.count278 = and i64 %call.i215, 4294967295, !dbg !90
  br label %for.body33.lr.ph, !dbg !84

for.body15:                                       ; preds = %for.body15, %for.body15.lr.ph
  %indvars.iv280 = phi i64 [ 0, %for.body15.lr.ph ], [ %indvars.iv.next281, %for.body15 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv280, metadata !36, metadata !DIExpression()), !dbg !38
  %9 = trunc i64 %indvars.iv280 to i32, !dbg !91
  %conv17 = sitofp i32 %9 to double, !dbg !91
  %mul18 = fmul double %conv16, %conv17, !dbg !92
  %div = fdiv double %mul18, %conv19, !dbg !93
  %arrayidx22 = getelementptr inbounds double, double* %arrayidx20, i64 %indvars.iv280, !dbg !94
  store double %div, double* %arrayidx22, align 8, !dbg !95, !tbaa !96
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1, !dbg !98
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next281, metadata !36, metadata !DIExpression()), !dbg !38
  %exitcond283 = icmp eq i64 %indvars.iv.next281, %wide.trip.count282, !dbg !99
  br i1 %exitcond283, label %for.inc23.loopexit, label %for.body15, !dbg !83, !llvm.loop !100

for.inc23.loopexit:                               ; preds = %for.body15
  br label %for.inc23, !dbg !102

for.inc23:                                        ; preds = %for.inc23.loopexit, %for.cond12.preheader
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1, !dbg !102
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next285, metadata !35, metadata !DIExpression()), !dbg !38
  %exitcond287 = icmp eq i64 %indvars.iv.next285, %wide.trip.count286, !dbg !76
  br i1 %exitcond287, label %for.cond26.preheader, label %for.cond12.preheader, !dbg !79, !llvm.loop !103

for.body33.lr.ph:                                 ; preds = %for.inc46, %for.cond30.preheader.lr.ph
  %indvars.iv276 = phi i64 [ 0, %for.cond30.preheader.lr.ph ], [ %indvars.iv.next277, %for.inc46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv276, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !38
  %10 = trunc i64 %indvars.iv276 to i32, !dbg !86
  %conv34 = sitofp i32 %10 to double, !dbg !86
  %11 = mul nuw nsw i64 %3, %indvars.iv276, !dbg !86
  %arrayidx40 = getelementptr inbounds double, double* %4, i64 %11, !dbg !86
  br label %for.body33, !dbg !105

for.cond49.preheader:                             ; preds = %for.inc46
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !38
  br i1 %cmp244, label %for.cond53.preheader.lr.ph, label %for.end102, !dbg !106

for.cond53.preheader.lr.ph:                       ; preds = %for.cond49.preheader
  %wide.trip.count270 = and i64 %call.i215, 4294967295, !dbg !108
  br label %for.body56.lr.ph, !dbg !106

for.body33:                                       ; preds = %for.body33, %for.body33.lr.ph
  %indvars.iv272 = phi i64 [ 0, %for.body33.lr.ph ], [ %indvars.iv.next273, %for.body33 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv272, metadata !36, metadata !DIExpression()), !dbg !38
  %12 = trunc i64 %indvars.iv272 to i32, !dbg !110
  %conv35 = sitofp i32 %12 to double, !dbg !110
  %mul36 = fmul double %conv34, %conv35, !dbg !111
  %div38 = fdiv double %mul36, %conv37, !dbg !112
  %arrayidx42 = getelementptr inbounds double, double* %arrayidx40, i64 %indvars.iv272, !dbg !113
  store double %div38, double* %arrayidx42, align 8, !dbg !114, !tbaa !96
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1, !dbg !115
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next273, metadata !36, metadata !DIExpression()), !dbg !38
  %exitcond275 = icmp eq i64 %indvars.iv.next273, %wide.trip.count278, !dbg !116
  br i1 %exitcond275, label %for.inc46, label %for.body33, !dbg !105, !llvm.loop !117

for.inc46:                                        ; preds = %for.body33
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1, !dbg !119
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next277, metadata !35, metadata !DIExpression()), !dbg !38
  %exitcond279 = icmp eq i64 %indvars.iv.next277, %wide.trip.count278, !dbg !90
  br i1 %exitcond279, label %for.cond49.preheader, label %for.body33.lr.ph, !dbg !84, !llvm.loop !120

for.body56.lr.ph:                                 ; preds = %for.inc65, %for.cond53.preheader.lr.ph
  %indvars.iv268 = phi i64 [ 0, %for.cond53.preheader.lr.ph ], [ %indvars.iv.next269, %for.inc65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv268, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !38
  %13 = mul nuw nsw i64 %3, %indvars.iv268, !dbg !122
  %arrayidx58 = getelementptr inbounds double, double* %4, i64 %13, !dbg !122
  br label %for.body56, !dbg !125

for.cond68.preheader:                             ; preds = %for.inc65
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !38
  br i1 %cmp244, label %for.cond72.preheader.lr.ph, label %for.end102, !dbg !126

for.cond72.preheader.lr.ph:                       ; preds = %for.cond68.preheader
  %cmp77224 = icmp sgt i32 %conv.i218, 0, !dbg !128
  %wide.trip.count262 = and i64 %call.i215, 4294967295, !dbg !134
  %wide.trip.count254 = and i64 %call.i217, 4294967295, !dbg !128
  br label %for.cond76.preheader.lr.ph, !dbg !126

for.body56:                                       ; preds = %for.body56, %for.body56.lr.ph
  %indvars.iv264 = phi i64 [ 0, %for.body56.lr.ph ], [ %indvars.iv.next265, %for.body56 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv264, metadata !36, metadata !DIExpression()), !dbg !38
  %arrayidx60 = getelementptr inbounds double, double* %arrayidx58, i64 %indvars.iv264, !dbg !135
  %14 = load double, double* %arrayidx60, align 8, !dbg !136, !tbaa !96
  %mul61 = fmul double %14, 2.123000e+03, !dbg !136
  store double %mul61, double* %arrayidx60, align 8, !dbg !136, !tbaa !96
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1, !dbg !137
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next265, metadata !36, metadata !DIExpression()), !dbg !38
  %exitcond267 = icmp eq i64 %indvars.iv.next265, %wide.trip.count270, !dbg !138
  br i1 %exitcond267, label %for.inc65, label %for.body56, !dbg !125, !llvm.loop !139

for.inc65:                                        ; preds = %for.body56
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next269, metadata !35, metadata !DIExpression()), !dbg !38
  %exitcond271 = icmp eq i64 %indvars.iv.next269, %wide.trip.count270, !dbg !108
  br i1 %exitcond271, label %for.cond68.preheader, label %for.body56.lr.ph, !dbg !106, !llvm.loop !142

for.cond76.preheader.lr.ph:                       ; preds = %for.inc100, %for.cond72.preheader.lr.ph
  %indvars.iv260 = phi i64 [ 0, %for.cond72.preheader.lr.ph ], [ %indvars.iv.next261, %for.inc100 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv260, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !38
  %15 = mul nuw nsw i64 %5, %indvars.iv260, !dbg !128
  %arrayidx81 = getelementptr inbounds double, double* %6, i64 %15, !dbg !128
  %16 = mul nuw nsw i64 %3, %indvars.iv260, !dbg !128
  %arrayidx91 = getelementptr inbounds double, double* %4, i64 %16, !dbg !128
  br label %for.cond76.preheader, !dbg !144

for.cond76.preheader:                             ; preds = %for.inc97, %for.cond76.preheader.lr.ph
  %indvars.iv256 = phi i64 [ 0, %for.cond76.preheader.lr.ph ], [ %indvars.iv.next257, %for.inc97 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv256, metadata !36, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !38
  br i1 %cmp77224, label %for.body79.lr.ph, label %for.inc97, !dbg !145

for.body79.lr.ph:                                 ; preds = %for.cond76.preheader
  %17 = mul nuw nsw i64 %5, %indvars.iv256, !dbg !128
  %arrayidx86 = getelementptr inbounds double, double* %6, i64 %17, !dbg !128
  %arrayidx93 = getelementptr inbounds double, double* %arrayidx91, i64 %indvars.iv256, !dbg !128
  %arrayidx93.promoted = load double, double* %arrayidx93, align 8, !dbg !146, !tbaa !96
  br label %for.body79, !dbg !145

for.body79:                                       ; preds = %for.body79, %for.body79.lr.ph
  %indvars.iv252 = phi i64 [ 0, %for.body79.lr.ph ], [ %indvars.iv.next253, %for.body79 ], !dbg !38
  %add247 = phi double [ %arrayidx93.promoted, %for.body79.lr.ph ], [ %add, %for.body79 ], !dbg !38
  call void @llvm.dbg.value(metadata i64 %indvars.iv252, metadata !37, metadata !DIExpression()), !dbg !38
  %arrayidx83 = getelementptr inbounds double, double* %arrayidx81, i64 %indvars.iv252, !dbg !147
  %18 = load double, double* %arrayidx83, align 8, !dbg !147, !tbaa !96
  %mul84 = fmul double %18, 3.241200e+04, !dbg !148
  %arrayidx88 = getelementptr inbounds double, double* %arrayidx86, i64 %indvars.iv252, !dbg !149
  %19 = load double, double* %arrayidx88, align 8, !dbg !149, !tbaa !96
  %mul89 = fmul double %mul84, %19, !dbg !150
  %add = fadd double %add247, %mul89, !dbg !146
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1, !dbg !151
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next253, metadata !37, metadata !DIExpression()), !dbg !38
  %exitcond255 = icmp eq i64 %indvars.iv.next253, %wide.trip.count254, !dbg !152
  br i1 %exitcond255, label %for.cond76.for.inc97_crit_edge, label %for.body79, !dbg !145, !llvm.loop !153

for.cond76.for.inc97_crit_edge:                   ; preds = %for.body79
  store double %add, double* %arrayidx93, align 8, !dbg !146, !tbaa !96
  br label %for.inc97, !dbg !145

for.inc97:                                        ; preds = %for.cond76.for.inc97_crit_edge, %for.cond76.preheader
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1, !dbg !155
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next257, metadata !36, metadata !DIExpression()), !dbg !38
  %exitcond259 = icmp eq i64 %indvars.iv.next257, %wide.trip.count262, !dbg !156
  br i1 %exitcond259, label %for.inc100, label %for.cond76.preheader, !dbg !144, !llvm.loop !157

for.inc100:                                       ; preds = %for.inc97
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next261, metadata !35, metadata !DIExpression()), !dbg !38
  %exitcond263 = icmp eq i64 %indvars.iv.next261, %wide.trip.count262, !dbg !134
  br i1 %exitcond263, label %for.end102.loopexit, label %for.cond76.preheader.lr.ph, !dbg !126, !llvm.loop !160

for.end102.loopexit:                              ; preds = %for.inc100
  br label %for.end102, !dbg !162

for.end102:                                       ; preds = %for.end102.loopexit, %for.cond68.preheader, %for.cond49.preheader, %for.cond26.preheader, %entry
  %cmp103 = icmp eq i32 %conv.i, 1, !dbg !162
  br i1 %cmp103, label %for.cond105.preheader, label %if.end131, !dbg !164

for.cond105.preheader:                            ; preds = %for.end102
  call void @llvm.dbg.value(metadata i32 0, metadata !35, metadata !DIExpression()), !dbg !38
  br i1 %cmp244, label %for.cond109.preheader.lr.ph, label %for.end129, !dbg !165

for.cond109.preheader.lr.ph:                      ; preds = %for.cond105.preheader
  %wide.trip.count250 = and i64 %call.i215, 4294967295, !dbg !168
  br label %for.body112.lr.ph, !dbg !165

for.body112.lr.ph:                                ; preds = %for.inc127, %for.cond109.preheader.lr.ph
  %indvars.iv248 = phi i64 [ 0, %for.cond109.preheader.lr.ph ], [ %indvars.iv.next249, %for.inc127 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv248, metadata !35, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !38
  %20 = mul nuw nsw i64 %3, %indvars.iv248, !dbg !170
  %arrayidx114 = getelementptr inbounds double, double* %4, i64 %20, !dbg !170
  %21 = trunc i64 %indvars.iv248 to i32, !dbg !174
  %mul118 = mul nsw i32 %21, %conv.i216, !dbg !174
  br label %for.body112, !dbg !176

for.body112:                                      ; preds = %for.inc124, %for.body112.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body112.lr.ph ], [ %indvars.iv.next, %for.inc124 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !36, metadata !DIExpression()), !dbg !38
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !177, !tbaa !40
  %arrayidx116 = getelementptr inbounds double, double* %arrayidx114, i64 %indvars.iv, !dbg !178
  %23 = load double, double* %arrayidx116, align 8, !dbg !178, !tbaa !96
  %call117 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %23) #6, !dbg !179
  %24 = trunc i64 %indvars.iv to i32, !dbg !180
  %add119 = add nsw i32 %mul118, %24, !dbg !180
  %rem = srem i32 %add119, 20, !dbg !181
  %cmp120 = icmp eq i32 %rem, 0, !dbg !182
  br i1 %cmp120, label %if.then122, label %for.inc124, !dbg !183

if.then122:                                       ; preds = %for.body112
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !184, !tbaa !40
  %fputc214 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %25) #6, !dbg !185
  br label %for.inc124, !dbg !185

for.inc124:                                       ; preds = %if.then122, %for.body112
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !186
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !36, metadata !DIExpression()), !dbg !38
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count250, !dbg !187
  br i1 %exitcond, label %for.inc127, label %for.body112, !dbg !176, !llvm.loop !188

for.inc127:                                       ; preds = %for.inc124
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1, !dbg !190
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next249, metadata !35, metadata !DIExpression()), !dbg !38
  %exitcond251 = icmp eq i64 %indvars.iv.next249, %wide.trip.count250, !dbg !168
  br i1 %exitcond251, label %for.end129.loopexit, label %for.body112.lr.ph, !dbg !165, !llvm.loop !191

for.end129.loopexit:                              ; preds = %for.inc127
  br label %for.end129, !dbg !193

for.end129:                                       ; preds = %for.end129.loopexit, %for.cond105.preheader
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !193, !tbaa !40
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %26) #6, !dbg !194
  br label %if.end131, !dbg !195

if.end131:                                        ; preds = %for.end129, %for.end102
  tail call void @free(i8* %call6) #5, !dbg !196
  tail call void @free(i8* %call10) #5, !dbg !197
  ret i32 0, !dbg !198
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !10 dso_local void @free(i8* nocapture) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { cold }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!18}
!llvm.module.flags = !{!19, !20, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "syrk.c", directory: "/u/zujunt/xstack/xstack-benchmark/polybench-inlined/syrk")
!2 = !{}
!3 = !{!4, !6, !9, !10, !14, !15}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !7)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{!8, !8}
!8 = !DISubrange(count: -1)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DISubprogram(name: "free", scope: !11, file: !11, line: 565, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!11 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !9}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 61, type: !23, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!14, !14, !15}
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!26 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !1, line: 61, type: !14)
!27 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !1, line: 61, type: !15)
!28 = !DILocalVariable(name: "dump_code", scope: !22, file: !1, line: 63, type: !14)
!29 = !DILocalVariable(name: "ni", scope: !22, file: !1, line: 64, type: !14)
!30 = !DILocalVariable(name: "nj", scope: !22, file: !1, line: 65, type: !14)
!31 = !DILocalVariable(name: "alpha", scope: !22, file: !1, line: 67, type: !6)
!32 = !DILocalVariable(name: "beta", scope: !22, file: !1, line: 68, type: !6)
!33 = !DILocalVariable(name: "C", scope: !22, file: !1, line: 69, type: !4)
!34 = !DILocalVariable(name: "A", scope: !22, file: !1, line: 70, type: !4)
!35 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 72, type: !14)
!36 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 72, type: !14)
!37 = !DILocalVariable(name: "k", scope: !22, file: !1, line: 72, type: !14)
!38 = !DILocation(line: 0, scope: !22)
!39 = !DILocation(line: 63, column: 24, scope: !22)
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !DILocalVariable(name: "__nptr", arg: 1, scope: !45, file: !11, line: 361, type: !48)
!45 = distinct !DISubprogram(name: "atoi", scope: !11, file: !11, line: 361, type: !46, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!46 = !DISubroutineType(types: !47)
!47 = !{!14, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!50 = !{!44}
!51 = !DILocation(line: 0, scope: !45, inlinedAt: !52)
!52 = distinct !DILocation(line: 63, column: 19, scope: !22)
!53 = !DILocation(line: 363, column: 16, scope: !45, inlinedAt: !52)
!54 = !DILocation(line: 363, column: 10, scope: !45, inlinedAt: !52)
!55 = !DILocation(line: 64, column: 17, scope: !22)
!56 = !DILocation(line: 0, scope: !45, inlinedAt: !57)
!57 = distinct !DILocation(line: 64, column: 12, scope: !22)
!58 = !DILocation(line: 363, column: 16, scope: !45, inlinedAt: !57)
!59 = !DILocation(line: 363, column: 10, scope: !45, inlinedAt: !57)
!60 = !DILocation(line: 65, column: 17, scope: !22)
!61 = !DILocation(line: 0, scope: !45, inlinedAt: !62)
!62 = distinct !DILocation(line: 65, column: 12, scope: !22)
!63 = !DILocation(line: 363, column: 16, scope: !45, inlinedAt: !62)
!64 = !DILocation(line: 363, column: 10, scope: !45, inlinedAt: !62)
!65 = !DILocation(line: 69, column: 3, scope: !22)
!66 = !DILocation(line: 69, column: 59, scope: !22)
!67 = !DILocation(line: 69, column: 66, scope: !22)
!68 = !DILocation(line: 69, column: 47, scope: !22)
!69 = !DILocation(line: 69, column: 28, scope: !22)
!70 = !DILocation(line: 70, column: 3, scope: !22)
!71 = !DILocation(line: 70, column: 59, scope: !22)
!72 = !DILocation(line: 70, column: 54, scope: !22)
!73 = !DILocation(line: 70, column: 66, scope: !22)
!74 = !DILocation(line: 70, column: 47, scope: !22)
!75 = !DILocation(line: 70, column: 28, scope: !22)
!76 = !DILocation(line: 76, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 76, column: 3)
!78 = distinct !DILexicalBlock(scope: !22, file: !1, line: 76, column: 3)
!79 = !DILocation(line: 76, column: 3, scope: !78)
!80 = !DILocation(line: 0, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 77, column: 5)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 77, column: 5)
!83 = !DILocation(line: 77, column: 5, scope: !82)
!84 = !DILocation(line: 79, column: 3, scope: !85)
!85 = distinct !DILexicalBlock(scope: !22, file: !1, line: 79, column: 3)
!86 = !DILocation(line: 0, scope: !87)
!87 = distinct !DILexicalBlock(scope: !88, file: !1, line: 80, column: 5)
!88 = distinct !DILexicalBlock(scope: !89, file: !1, line: 80, column: 5)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 79, column: 3)
!90 = !DILocation(line: 79, column: 17, scope: !89)
!91 = !DILocation(line: 78, column: 32, scope: !81)
!92 = !DILocation(line: 78, column: 31, scope: !81)
!93 = !DILocation(line: 78, column: 35, scope: !81)
!94 = !DILocation(line: 78, column: 7, scope: !81)
!95 = !DILocation(line: 78, column: 18, scope: !81)
!96 = !{!97, !97, i64 0}
!97 = !{!"double", !42, i64 0}
!98 = !DILocation(line: 77, column: 26, scope: !81)
!99 = !DILocation(line: 77, column: 19, scope: !81)
!100 = distinct !{!100, !83, !101}
!101 = !DILocation(line: 78, column: 37, scope: !82)
!102 = !DILocation(line: 76, column: 24, scope: !77)
!103 = distinct !{!103, !79, !104}
!104 = !DILocation(line: 78, column: 37, scope: !78)
!105 = !DILocation(line: 80, column: 5, scope: !88)
!106 = !DILocation(line: 84, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !22, file: !1, line: 84, column: 3)
!108 = !DILocation(line: 84, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !107, file: !1, line: 84, column: 3)
!110 = !DILocation(line: 81, column: 32, scope: !87)
!111 = !DILocation(line: 81, column: 31, scope: !87)
!112 = !DILocation(line: 81, column: 35, scope: !87)
!113 = !DILocation(line: 81, column: 7, scope: !87)
!114 = !DILocation(line: 81, column: 18, scope: !87)
!115 = !DILocation(line: 80, column: 26, scope: !87)
!116 = !DILocation(line: 80, column: 19, scope: !87)
!117 = distinct !{!117, !105, !118}
!118 = !DILocation(line: 81, column: 37, scope: !88)
!119 = !DILocation(line: 79, column: 24, scope: !89)
!120 = distinct !{!120, !84, !121}
!121 = !DILocation(line: 81, column: 37, scope: !85)
!122 = !DILocation(line: 0, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 85, column: 5)
!124 = distinct !DILexicalBlock(scope: !109, file: !1, line: 85, column: 5)
!125 = !DILocation(line: 85, column: 5, scope: !124)
!126 = !DILocation(line: 88, column: 3, scope: !127)
!127 = distinct !DILexicalBlock(scope: !22, file: !1, line: 88, column: 3)
!128 = !DILocation(line: 0, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 90, column: 7)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 90, column: 7)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 89, column: 5)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 89, column: 5)
!133 = distinct !DILexicalBlock(scope: !127, file: !1, line: 88, column: 3)
!134 = !DILocation(line: 88, column: 17, scope: !133)
!135 = !DILocation(line: 86, column: 7, scope: !123)
!136 = !DILocation(line: 86, column: 18, scope: !123)
!137 = !DILocation(line: 85, column: 26, scope: !123)
!138 = !DILocation(line: 85, column: 19, scope: !123)
!139 = distinct !{!139, !125, !140}
!140 = !DILocation(line: 86, column: 21, scope: !124)
!141 = !DILocation(line: 84, column: 24, scope: !109)
!142 = distinct !{!142, !106, !143}
!143 = !DILocation(line: 86, column: 21, scope: !107)
!144 = !DILocation(line: 89, column: 5, scope: !132)
!145 = !DILocation(line: 90, column: 7, scope: !130)
!146 = !DILocation(line: 91, column: 20, scope: !129)
!147 = !DILocation(line: 91, column: 31, scope: !129)
!148 = !DILocation(line: 91, column: 29, scope: !129)
!149 = !DILocation(line: 91, column: 44, scope: !129)
!150 = !DILocation(line: 91, column: 42, scope: !129)
!151 = !DILocation(line: 90, column: 28, scope: !129)
!152 = !DILocation(line: 90, column: 21, scope: !129)
!153 = distinct !{!153, !145, !154}
!154 = !DILocation(line: 91, column: 53, scope: !130)
!155 = !DILocation(line: 89, column: 26, scope: !131)
!156 = !DILocation(line: 89, column: 19, scope: !131)
!157 = distinct !{!157, !144, !158}
!158 = !DILocation(line: 91, column: 53, scope: !132)
!159 = !DILocation(line: 88, column: 24, scope: !133)
!160 = distinct !{!160, !126, !161}
!161 = !DILocation(line: 91, column: 53, scope: !127)
!162 = !DILocation(line: 95, column: 17, scope: !163)
!163 = distinct !DILexicalBlock(scope: !22, file: !1, line: 95, column: 7)
!164 = !DILocation(line: 95, column: 7, scope: !22)
!165 = !DILocation(line: 96, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 96, column: 3)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 95, column: 22)
!168 = !DILocation(line: 96, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 96, column: 3)
!170 = !DILocation(line: 0, scope: !171)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 97, column: 30)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 97, column: 5)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 97, column: 5)
!174 = !DILocation(line: 0, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 99, column: 11)
!176 = !DILocation(line: 97, column: 5, scope: !173)
!177 = !DILocation(line: 98, column: 16, scope: !171)
!178 = !DILocation(line: 98, column: 35, scope: !171)
!179 = !DILocation(line: 98, column: 7, scope: !171)
!180 = !DILocation(line: 99, column: 19, scope: !175)
!181 = !DILocation(line: 99, column: 24, scope: !175)
!182 = !DILocation(line: 99, column: 29, scope: !175)
!183 = !DILocation(line: 99, column: 11, scope: !171)
!184 = !DILocation(line: 99, column: 44, scope: !175)
!185 = !DILocation(line: 99, column: 35, scope: !175)
!186 = !DILocation(line: 97, column: 26, scope: !172)
!187 = !DILocation(line: 97, column: 19, scope: !172)
!188 = distinct !{!188, !176, !189}
!189 = !DILocation(line: 100, column: 5, scope: !173)
!190 = !DILocation(line: 96, column: 24, scope: !169)
!191 = distinct !{!191, !165, !192}
!192 = !DILocation(line: 100, column: 5, scope: !166)
!193 = !DILocation(line: 101, column: 12, scope: !167)
!194 = !DILocation(line: 101, column: 3, scope: !167)
!195 = !DILocation(line: 102, column: 3, scope: !167)
!196 = !DILocation(line: 105, column: 3, scope: !22)
!197 = !DILocation(line: 106, column: 3, scope: !22)
!198 = !DILocation(line: 108, column: 3, scope: !22)
