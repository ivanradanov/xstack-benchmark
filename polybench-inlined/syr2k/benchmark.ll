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
  call void @llvm.dbg.value(metadata i32 %argc, metadata !26, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i8** %argv, metadata !27, metadata !DIExpression()), !dbg !39
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !40
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !40, !tbaa !41
  call void @llvm.dbg.value(metadata i8* %0, metadata !45, metadata !DIExpression()) #5, !dbg !52
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #5, !dbg !54
  %conv.i = trunc i64 %call.i to i32, !dbg !55
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !28, metadata !DIExpression()), !dbg !39
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !56
  %1 = load i8*, i8** %arrayidx1, align 8, !dbg !56, !tbaa !41
  call void @llvm.dbg.value(metadata i8* %1, metadata !45, metadata !DIExpression()) #5, !dbg !57
  %call.i266 = tail call i64 @strtol(i8* nocapture nonnull %1, i8** null, i32 10) #5, !dbg !59
  %conv.i267 = trunc i64 %call.i266 to i32, !dbg !60
  call void @llvm.dbg.value(metadata i32 %conv.i267, metadata !29, metadata !DIExpression()), !dbg !39
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 3, !dbg !61
  %2 = load i8*, i8** %arrayidx3, align 8, !dbg !61, !tbaa !41
  call void @llvm.dbg.value(metadata i8* %2, metadata !45, metadata !DIExpression()) #5, !dbg !62
  %call.i268 = tail call i64 @strtol(i8* nocapture nonnull %2, i8** null, i32 10) #5, !dbg !64
  %conv.i269 = trunc i64 %call.i268 to i32, !dbg !65
  call void @llvm.dbg.value(metadata i32 %conv.i269, metadata !30, metadata !DIExpression()), !dbg !39
  %3 = and i64 %call.i266, 4294967295, !dbg !66
  %mul = shl i64 %call.i266, 3, !dbg !67
  %conv = mul i64 %mul, %call.i266, !dbg !68
  %mul5 = and i64 %conv, 34359738360, !dbg !68
  %call6 = tail call noalias i8* @malloc(i64 %mul5) #5, !dbg !69
  %4 = bitcast i8* %call6 to double*, !dbg !70
  call void @llvm.dbg.value(metadata double* %4, metadata !33, metadata !DIExpression()), !dbg !39
  %5 = and i64 %call.i268, 4294967295, !dbg !71
  %mul7 = shl i64 %call.i266, 32, !dbg !72
  %sext = mul i64 %mul7, %call.i268, !dbg !73
  %mul9 = ashr exact i64 %sext, 29, !dbg !74
  %call10 = tail call noalias i8* @malloc(i64 %mul9) #5, !dbg !75
  %6 = bitcast i8* %call10 to double*, !dbg !76
  call void @llvm.dbg.value(metadata double* %6, metadata !34, metadata !DIExpression()), !dbg !39
  %call14 = tail call noalias i8* @malloc(i64 %mul9) #5, !dbg !77
  %7 = bitcast i8* %call14 to double*, !dbg !78
  call void @llvm.dbg.value(metadata double* %7, metadata !35, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !31, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !32, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !39
  %cmp295 = icmp sgt i32 %conv.i267, 0, !dbg !79
  br i1 %cmp295, label %for.cond16.preheader.lr.ph, label %for.end130, !dbg !82

for.cond16.preheader.lr.ph:                       ; preds = %entry
  %cmp17293 = icmp sgt i32 %conv.i269, 0, !dbg !83
  %conv23 = sitofp i32 %conv.i267 to double, !dbg !86
  %wide.trip.count337 = and i64 %call.i266, 4294967295, !dbg !79
  %wide.trip.count333 = and i64 %call.i268, 4294967295, !dbg !83
  br label %for.cond16.preheader, !dbg !82

for.cond16.preheader:                             ; preds = %for.inc36, %for.cond16.preheader.lr.ph
  %indvars.iv335 = phi i64 [ 0, %for.cond16.preheader.lr.ph ], [ %indvars.iv.next336, %for.inc36 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv335, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !39
  br i1 %cmp17293, label %for.body19.lr.ph, label %for.inc36, !dbg !88

for.body19.lr.ph:                                 ; preds = %for.cond16.preheader
  %8 = trunc i64 %indvars.iv335 to i32, !dbg !86
  %conv20 = sitofp i32 %8 to double, !dbg !86
  %9 = mul nuw nsw i64 %5, %indvars.iv335, !dbg !86
  %arrayidx24 = getelementptr inbounds double, double* %6, i64 %9, !dbg !86
  %arrayidx33 = getelementptr inbounds double, double* %7, i64 %9, !dbg !86
  br label %for.body19, !dbg !88

for.cond39.preheader:                             ; preds = %for.inc36
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !39
  br i1 %cmp295, label %for.cond43.preheader.lr.ph, label %for.end130, !dbg !89

for.cond43.preheader.lr.ph:                       ; preds = %for.cond39.preheader
  %conv50 = sitofp i32 %conv.i267 to double, !dbg !91
  %wide.trip.count329 = and i64 %call.i266, 4294967295, !dbg !95
  br label %for.body46.lr.ph, !dbg !89

for.body19:                                       ; preds = %for.body19, %for.body19.lr.ph
  %indvars.iv331 = phi i64 [ 0, %for.body19.lr.ph ], [ %indvars.iv.next332, %for.body19 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv331, metadata !37, metadata !DIExpression()), !dbg !39
  %10 = trunc i64 %indvars.iv331 to i32, !dbg !96
  %conv21 = sitofp i32 %10 to double, !dbg !96
  %mul22 = fmul double %conv20, %conv21, !dbg !97
  %div = fdiv double %mul22, %conv23, !dbg !98
  %arrayidx26 = getelementptr inbounds double, double* %arrayidx24, i64 %indvars.iv331, !dbg !99
  store double %div, double* %arrayidx26, align 8, !dbg !100, !tbaa !101
  %arrayidx35 = getelementptr inbounds double, double* %arrayidx33, i64 %indvars.iv331, !dbg !103
  store double %div, double* %arrayidx35, align 8, !dbg !104, !tbaa !101
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1, !dbg !105
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next332, metadata !37, metadata !DIExpression()), !dbg !39
  %exitcond334 = icmp eq i64 %indvars.iv.next332, %wide.trip.count333, !dbg !106
  br i1 %exitcond334, label %for.inc36.loopexit, label %for.body19, !dbg !88, !llvm.loop !107

for.inc36.loopexit:                               ; preds = %for.body19
  br label %for.inc36, !dbg !109

for.inc36:                                        ; preds = %for.inc36.loopexit, %for.cond16.preheader
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next336, metadata !36, metadata !DIExpression()), !dbg !39
  %exitcond338 = icmp eq i64 %indvars.iv.next336, %wide.trip.count337, !dbg !79
  br i1 %exitcond338, label %for.cond39.preheader, label %for.cond16.preheader, !dbg !82, !llvm.loop !110

for.body46.lr.ph:                                 ; preds = %for.inc59, %for.cond43.preheader.lr.ph
  %indvars.iv327 = phi i64 [ 0, %for.cond43.preheader.lr.ph ], [ %indvars.iv.next328, %for.inc59 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv327, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !39
  %11 = trunc i64 %indvars.iv327 to i32, !dbg !91
  %conv47 = sitofp i32 %11 to double, !dbg !91
  %12 = mul nuw nsw i64 %3, %indvars.iv327, !dbg !91
  %arrayidx53 = getelementptr inbounds double, double* %4, i64 %12, !dbg !91
  br label %for.body46, !dbg !112

for.cond62.preheader:                             ; preds = %for.inc59
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !39
  br i1 %cmp295, label %for.cond66.preheader.lr.ph, label %for.end130, !dbg !113

for.cond66.preheader.lr.ph:                       ; preds = %for.cond62.preheader
  %wide.trip.count321 = and i64 %call.i266, 4294967295, !dbg !115
  br label %for.body69.lr.ph, !dbg !113

for.body46:                                       ; preds = %for.body46, %for.body46.lr.ph
  %indvars.iv323 = phi i64 [ 0, %for.body46.lr.ph ], [ %indvars.iv.next324, %for.body46 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv323, metadata !37, metadata !DIExpression()), !dbg !39
  %13 = trunc i64 %indvars.iv323 to i32, !dbg !117
  %conv48 = sitofp i32 %13 to double, !dbg !117
  %mul49 = fmul double %conv47, %conv48, !dbg !118
  %div51 = fdiv double %mul49, %conv50, !dbg !119
  %arrayidx55 = getelementptr inbounds double, double* %arrayidx53, i64 %indvars.iv323, !dbg !120
  store double %div51, double* %arrayidx55, align 8, !dbg !121, !tbaa !101
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1, !dbg !122
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next324, metadata !37, metadata !DIExpression()), !dbg !39
  %exitcond326 = icmp eq i64 %indvars.iv.next324, %wide.trip.count329, !dbg !123
  br i1 %exitcond326, label %for.inc59, label %for.body46, !dbg !112, !llvm.loop !124

for.inc59:                                        ; preds = %for.body46
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1, !dbg !126
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next328, metadata !36, metadata !DIExpression()), !dbg !39
  %exitcond330 = icmp eq i64 %indvars.iv.next328, %wide.trip.count329, !dbg !95
  br i1 %exitcond330, label %for.cond62.preheader, label %for.body46.lr.ph, !dbg !89, !llvm.loop !127

for.body69.lr.ph:                                 ; preds = %for.inc78, %for.cond66.preheader.lr.ph
  %indvars.iv319 = phi i64 [ 0, %for.cond66.preheader.lr.ph ], [ %indvars.iv.next320, %for.inc78 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv319, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !39
  %14 = mul nuw nsw i64 %3, %indvars.iv319, !dbg !129
  %arrayidx71 = getelementptr inbounds double, double* %4, i64 %14, !dbg !129
  br label %for.body69, !dbg !132

for.cond81.preheader:                             ; preds = %for.inc78
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !39
  br i1 %cmp295, label %for.cond85.preheader.lr.ph, label %for.end130, !dbg !133

for.cond85.preheader.lr.ph:                       ; preds = %for.cond81.preheader
  %cmp90275 = icmp sgt i32 %conv.i269, 0, !dbg !135
  %wide.trip.count313 = and i64 %call.i266, 4294967295, !dbg !141
  %wide.trip.count305 = and i64 %call.i268, 4294967295, !dbg !135
  br label %for.cond89.preheader.lr.ph, !dbg !133

for.body69:                                       ; preds = %for.body69, %for.body69.lr.ph
  %indvars.iv315 = phi i64 [ 0, %for.body69.lr.ph ], [ %indvars.iv.next316, %for.body69 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv315, metadata !37, metadata !DIExpression()), !dbg !39
  %arrayidx73 = getelementptr inbounds double, double* %arrayidx71, i64 %indvars.iv315, !dbg !142
  %15 = load double, double* %arrayidx73, align 8, !dbg !143, !tbaa !101
  %mul74 = fmul double %15, 2.123000e+03, !dbg !143
  store double %mul74, double* %arrayidx73, align 8, !dbg !143, !tbaa !101
  %indvars.iv.next316 = add nuw nsw i64 %indvars.iv315, 1, !dbg !144
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next316, metadata !37, metadata !DIExpression()), !dbg !39
  %exitcond318 = icmp eq i64 %indvars.iv.next316, %wide.trip.count321, !dbg !145
  br i1 %exitcond318, label %for.inc78, label %for.body69, !dbg !132, !llvm.loop !146

for.inc78:                                        ; preds = %for.body69
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1, !dbg !148
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next320, metadata !36, metadata !DIExpression()), !dbg !39
  %exitcond322 = icmp eq i64 %indvars.iv.next320, %wide.trip.count321, !dbg !115
  br i1 %exitcond322, label %for.cond81.preheader, label %for.body69.lr.ph, !dbg !113, !llvm.loop !149

for.cond89.preheader.lr.ph:                       ; preds = %for.inc128, %for.cond85.preheader.lr.ph
  %indvars.iv311 = phi i64 [ 0, %for.cond85.preheader.lr.ph ], [ %indvars.iv.next312, %for.inc128 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv311, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !39
  %16 = mul nuw nsw i64 %5, %indvars.iv311, !dbg !151
  %arrayidx94 = getelementptr inbounds double, double* %6, i64 %16, !dbg !151
  %17 = mul nuw nsw i64 %3, %indvars.iv311, !dbg !151
  %arrayidx104 = getelementptr inbounds double, double* %4, i64 %17, !dbg !151
  %arrayidx108 = getelementptr inbounds double, double* %7, i64 %16, !dbg !151
  br label %for.cond89.preheader, !dbg !153

for.cond89.preheader:                             ; preds = %for.inc125, %for.cond89.preheader.lr.ph
  %indvars.iv307 = phi i64 [ 0, %for.cond89.preheader.lr.ph ], [ %indvars.iv.next308, %for.inc125 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv307, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !38, metadata !DIExpression()), !dbg !39
  br i1 %cmp90275, label %for.body92.lr.ph, label %for.inc125, !dbg !154

for.body92.lr.ph:                                 ; preds = %for.cond89.preheader
  %18 = mul nuw nsw i64 %5, %indvars.iv307, !dbg !151
  %arrayidx99 = getelementptr inbounds double, double* %7, i64 %18, !dbg !151
  %arrayidx106 = getelementptr inbounds double, double* %arrayidx104, i64 %indvars.iv307, !dbg !151
  %arrayidx113 = getelementptr inbounds double, double* %6, i64 %18, !dbg !151
  %arrayidx106.promoted = load double, double* %arrayidx106, align 8, !dbg !155, !tbaa !101
  br label %for.body92, !dbg !154

for.body92:                                       ; preds = %for.body92, %for.body92.lr.ph
  %indvars.iv303 = phi i64 [ 0, %for.body92.lr.ph ], [ %indvars.iv.next304, %for.body92 ], !dbg !39
  %add121298 = phi double [ %arrayidx106.promoted, %for.body92.lr.ph ], [ %add121, %for.body92 ], !dbg !39
  call void @llvm.dbg.value(metadata i64 %indvars.iv303, metadata !38, metadata !DIExpression()), !dbg !39
  %arrayidx96 = getelementptr inbounds double, double* %arrayidx94, i64 %indvars.iv303, !dbg !156
  %19 = load double, double* %arrayidx96, align 8, !dbg !156, !tbaa !101
  %mul97 = fmul double %19, 3.241200e+04, !dbg !157
  %arrayidx101 = getelementptr inbounds double, double* %arrayidx99, i64 %indvars.iv303, !dbg !158
  %20 = load double, double* %arrayidx101, align 8, !dbg !158, !tbaa !101
  %mul102 = fmul double %mul97, %20, !dbg !159
  %add = fadd double %add121298, %mul102, !dbg !160
  %arrayidx110 = getelementptr inbounds double, double* %arrayidx108, i64 %indvars.iv303, !dbg !161
  %21 = load double, double* %arrayidx110, align 8, !dbg !161, !tbaa !101
  %mul111 = fmul double %21, 3.241200e+04, !dbg !162
  %arrayidx115 = getelementptr inbounds double, double* %arrayidx113, i64 %indvars.iv303, !dbg !163
  %22 = load double, double* %arrayidx115, align 8, !dbg !163, !tbaa !101
  %mul116 = fmul double %mul111, %22, !dbg !164
  %add121 = fadd double %add, %mul116, !dbg !155
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1, !dbg !165
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next304, metadata !38, metadata !DIExpression()), !dbg !39
  %exitcond306 = icmp eq i64 %indvars.iv.next304, %wide.trip.count305, !dbg !166
  br i1 %exitcond306, label %for.cond89.for.inc125_crit_edge, label %for.body92, !dbg !154, !llvm.loop !167

for.cond89.for.inc125_crit_edge:                  ; preds = %for.body92
  store double %add121, double* %arrayidx106, align 8, !dbg !155, !tbaa !101
  br label %for.inc125, !dbg !154

for.inc125:                                       ; preds = %for.cond89.for.inc125_crit_edge, %for.cond89.preheader
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1, !dbg !169
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next308, metadata !37, metadata !DIExpression()), !dbg !39
  %exitcond310 = icmp eq i64 %indvars.iv.next308, %wide.trip.count313, !dbg !170
  br i1 %exitcond310, label %for.inc128, label %for.cond89.preheader, !dbg !153, !llvm.loop !171

for.inc128:                                       ; preds = %for.inc125
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1, !dbg !173
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next312, metadata !36, metadata !DIExpression()), !dbg !39
  %exitcond314 = icmp eq i64 %indvars.iv.next312, %wide.trip.count313, !dbg !141
  br i1 %exitcond314, label %for.end130.loopexit, label %for.cond89.preheader.lr.ph, !dbg !133, !llvm.loop !174

for.end130.loopexit:                              ; preds = %for.inc128
  br label %for.end130, !dbg !176

for.end130:                                       ; preds = %for.end130.loopexit, %for.cond81.preheader, %for.cond62.preheader, %for.cond39.preheader, %entry
  %cmp131 = icmp eq i32 %conv.i, 1, !dbg !176
  br i1 %cmp131, label %for.cond133.preheader, label %if.end159, !dbg !178

for.cond133.preheader:                            ; preds = %for.end130
  call void @llvm.dbg.value(metadata i32 0, metadata !36, metadata !DIExpression()), !dbg !39
  br i1 %cmp295, label %for.cond137.preheader.lr.ph, label %for.end157, !dbg !179

for.cond137.preheader.lr.ph:                      ; preds = %for.cond133.preheader
  %wide.trip.count301 = and i64 %call.i266, 4294967295, !dbg !182
  br label %for.body140.lr.ph, !dbg !179

for.body140.lr.ph:                                ; preds = %for.inc155, %for.cond137.preheader.lr.ph
  %indvars.iv299 = phi i64 [ 0, %for.cond137.preheader.lr.ph ], [ %indvars.iv.next300, %for.inc155 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv299, metadata !36, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata i32 0, metadata !37, metadata !DIExpression()), !dbg !39
  %23 = mul nuw nsw i64 %3, %indvars.iv299, !dbg !184
  %arrayidx142 = getelementptr inbounds double, double* %4, i64 %23, !dbg !184
  %24 = trunc i64 %indvars.iv299 to i32, !dbg !188
  %mul146 = mul nsw i32 %24, %conv.i267, !dbg !188
  br label %for.body140, !dbg !190

for.body140:                                      ; preds = %for.inc152, %for.body140.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body140.lr.ph ], [ %indvars.iv.next, %for.inc152 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !37, metadata !DIExpression()), !dbg !39
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !191, !tbaa !41
  %arrayidx144 = getelementptr inbounds double, double* %arrayidx142, i64 %indvars.iv, !dbg !192
  %26 = load double, double* %arrayidx144, align 8, !dbg !192, !tbaa !101
  %call145 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %26) #6, !dbg !193
  %27 = trunc i64 %indvars.iv to i32, !dbg !194
  %add147 = add nsw i32 %mul146, %27, !dbg !194
  %rem = srem i32 %add147, 20, !dbg !195
  %cmp148 = icmp eq i32 %rem, 0, !dbg !196
  br i1 %cmp148, label %if.then150, label %for.inc152, !dbg !197

if.then150:                                       ; preds = %for.body140
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !198, !tbaa !41
  %fputc265 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %28) #6, !dbg !199
  br label %for.inc152, !dbg !199

for.inc152:                                       ; preds = %if.then150, %for.body140
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !200
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !37, metadata !DIExpression()), !dbg !39
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count301, !dbg !201
  br i1 %exitcond, label %for.inc155, label %for.body140, !dbg !190, !llvm.loop !202

for.inc155:                                       ; preds = %for.inc152
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1, !dbg !204
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next300, metadata !36, metadata !DIExpression()), !dbg !39
  %exitcond302 = icmp eq i64 %indvars.iv.next300, %wide.trip.count301, !dbg !182
  br i1 %exitcond302, label %for.end157.loopexit, label %for.body140.lr.ph, !dbg !179, !llvm.loop !205

for.end157.loopexit:                              ; preds = %for.inc155
  br label %for.end157, !dbg !207

for.end157:                                       ; preds = %for.end157.loopexit, %for.cond133.preheader
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !207, !tbaa !41
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %29) #6, !dbg !208
  br label %if.end159, !dbg !209

if.end159:                                        ; preds = %for.end157, %for.end130
  tail call void @free(i8* %call6) #5, !dbg !210
  tail call void @free(i8* %call10) #5, !dbg !211
  tail call void @free(i8* %call14) #5, !dbg !212
  ret i32 0, !dbg !213
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
!1 = !DIFile(filename: "syr2k.c", directory: "/u/zujunt/xstack/xstack-benchmark/polybench-inlined/syr2k")
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
!22 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !23, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!14, !14, !15}
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!26 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !1, line: 18, type: !14)
!27 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !1, line: 18, type: !15)
!28 = !DILocalVariable(name: "dump_code", scope: !22, file: !1, line: 20, type: !14)
!29 = !DILocalVariable(name: "ni", scope: !22, file: !1, line: 21, type: !14)
!30 = !DILocalVariable(name: "nj", scope: !22, file: !1, line: 22, type: !14)
!31 = !DILocalVariable(name: "alpha", scope: !22, file: !1, line: 24, type: !6)
!32 = !DILocalVariable(name: "beta", scope: !22, file: !1, line: 25, type: !6)
!33 = !DILocalVariable(name: "C", scope: !22, file: !1, line: 26, type: !4)
!34 = !DILocalVariable(name: "A", scope: !22, file: !1, line: 27, type: !4)
!35 = !DILocalVariable(name: "B", scope: !22, file: !1, line: 28, type: !4)
!36 = !DILocalVariable(name: "i", scope: !22, file: !1, line: 31, type: !14)
!37 = !DILocalVariable(name: "j", scope: !22, file: !1, line: 31, type: !14)
!38 = !DILocalVariable(name: "k", scope: !22, file: !1, line: 31, type: !14)
!39 = !DILocation(line: 0, scope: !22)
!40 = !DILocation(line: 20, column: 24, scope: !22)
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !DILocalVariable(name: "__nptr", arg: 1, scope: !46, file: !11, line: 361, type: !49)
!46 = distinct !DISubprogram(name: "atoi", scope: !11, file: !11, line: 361, type: !47, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!47 = !DISubroutineType(types: !48)
!48 = !{!14, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!51 = !{!45}
!52 = !DILocation(line: 0, scope: !46, inlinedAt: !53)
!53 = distinct !DILocation(line: 20, column: 19, scope: !22)
!54 = !DILocation(line: 363, column: 16, scope: !46, inlinedAt: !53)
!55 = !DILocation(line: 363, column: 10, scope: !46, inlinedAt: !53)
!56 = !DILocation(line: 21, column: 17, scope: !22)
!57 = !DILocation(line: 0, scope: !46, inlinedAt: !58)
!58 = distinct !DILocation(line: 21, column: 12, scope: !22)
!59 = !DILocation(line: 363, column: 16, scope: !46, inlinedAt: !58)
!60 = !DILocation(line: 363, column: 10, scope: !46, inlinedAt: !58)
!61 = !DILocation(line: 22, column: 17, scope: !22)
!62 = !DILocation(line: 0, scope: !46, inlinedAt: !63)
!63 = distinct !DILocation(line: 22, column: 12, scope: !22)
!64 = !DILocation(line: 363, column: 16, scope: !46, inlinedAt: !63)
!65 = !DILocation(line: 363, column: 10, scope: !46, inlinedAt: !63)
!66 = !DILocation(line: 26, column: 3, scope: !22)
!67 = !DILocation(line: 26, column: 59, scope: !22)
!68 = !DILocation(line: 26, column: 66, scope: !22)
!69 = !DILocation(line: 26, column: 47, scope: !22)
!70 = !DILocation(line: 26, column: 28, scope: !22)
!71 = !DILocation(line: 27, column: 3, scope: !22)
!72 = !DILocation(line: 27, column: 59, scope: !22)
!73 = !DILocation(line: 27, column: 54, scope: !22)
!74 = !DILocation(line: 27, column: 66, scope: !22)
!75 = !DILocation(line: 27, column: 47, scope: !22)
!76 = !DILocation(line: 27, column: 28, scope: !22)
!77 = !DILocation(line: 28, column: 47, scope: !22)
!78 = !DILocation(line: 28, column: 28, scope: !22)
!79 = !DILocation(line: 35, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 35, column: 3)
!81 = distinct !DILexicalBlock(scope: !22, file: !1, line: 35, column: 3)
!82 = !DILocation(line: 35, column: 3, scope: !81)
!83 = !DILocation(line: 0, scope: !84)
!84 = distinct !DILexicalBlock(scope: !85, file: !1, line: 36, column: 5)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 36, column: 5)
!86 = !DILocation(line: 0, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 36, column: 30)
!88 = !DILocation(line: 36, column: 5, scope: !85)
!89 = !DILocation(line: 40, column: 3, scope: !90)
!90 = distinct !DILexicalBlock(scope: !22, file: !1, line: 40, column: 3)
!91 = !DILocation(line: 0, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 41, column: 5)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 41, column: 5)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 40, column: 3)
!95 = !DILocation(line: 40, column: 17, scope: !94)
!96 = !DILocation(line: 37, column: 32, scope: !87)
!97 = !DILocation(line: 37, column: 31, scope: !87)
!98 = !DILocation(line: 37, column: 35, scope: !87)
!99 = !DILocation(line: 37, column: 7, scope: !87)
!100 = !DILocation(line: 37, column: 18, scope: !87)
!101 = !{!102, !102, i64 0}
!102 = !{!"double", !43, i64 0}
!103 = !DILocation(line: 38, column: 7, scope: !87)
!104 = !DILocation(line: 38, column: 18, scope: !87)
!105 = !DILocation(line: 36, column: 26, scope: !84)
!106 = !DILocation(line: 36, column: 19, scope: !84)
!107 = distinct !{!107, !88, !108}
!108 = !DILocation(line: 39, column: 5, scope: !85)
!109 = !DILocation(line: 35, column: 24, scope: !80)
!110 = distinct !{!110, !82, !111}
!111 = !DILocation(line: 39, column: 5, scope: !81)
!112 = !DILocation(line: 41, column: 5, scope: !93)
!113 = !DILocation(line: 44, column: 3, scope: !114)
!114 = distinct !DILexicalBlock(scope: !22, file: !1, line: 44, column: 3)
!115 = !DILocation(line: 44, column: 17, scope: !116)
!116 = distinct !DILexicalBlock(scope: !114, file: !1, line: 44, column: 3)
!117 = !DILocation(line: 42, column: 32, scope: !92)
!118 = !DILocation(line: 42, column: 31, scope: !92)
!119 = !DILocation(line: 42, column: 35, scope: !92)
!120 = !DILocation(line: 42, column: 7, scope: !92)
!121 = !DILocation(line: 42, column: 18, scope: !92)
!122 = !DILocation(line: 41, column: 26, scope: !92)
!123 = !DILocation(line: 41, column: 19, scope: !92)
!124 = distinct !{!124, !112, !125}
!125 = !DILocation(line: 42, column: 37, scope: !93)
!126 = !DILocation(line: 40, column: 24, scope: !94)
!127 = distinct !{!127, !89, !128}
!128 = !DILocation(line: 42, column: 37, scope: !90)
!129 = !DILocation(line: 0, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 45, column: 5)
!131 = distinct !DILexicalBlock(scope: !116, file: !1, line: 45, column: 5)
!132 = !DILocation(line: 45, column: 5, scope: !131)
!133 = !DILocation(line: 48, column: 3, scope: !134)
!134 = distinct !DILexicalBlock(scope: !22, file: !1, line: 48, column: 3)
!135 = !DILocation(line: 0, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 50, column: 7)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 50, column: 7)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 49, column: 5)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 49, column: 5)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 48, column: 3)
!141 = !DILocation(line: 48, column: 17, scope: !140)
!142 = !DILocation(line: 46, column: 7, scope: !130)
!143 = !DILocation(line: 46, column: 18, scope: !130)
!144 = !DILocation(line: 45, column: 26, scope: !130)
!145 = !DILocation(line: 45, column: 19, scope: !130)
!146 = distinct !{!146, !132, !147}
!147 = !DILocation(line: 46, column: 21, scope: !131)
!148 = !DILocation(line: 44, column: 24, scope: !116)
!149 = distinct !{!149, !113, !150}
!150 = !DILocation(line: 46, column: 21, scope: !114)
!151 = !DILocation(line: 0, scope: !152)
!152 = distinct !DILexicalBlock(scope: !136, file: !1, line: 51, column: 7)
!153 = !DILocation(line: 49, column: 5, scope: !139)
!154 = !DILocation(line: 50, column: 7, scope: !137)
!155 = !DILocation(line: 53, column: 20, scope: !152)
!156 = !DILocation(line: 52, column: 31, scope: !152)
!157 = !DILocation(line: 52, column: 29, scope: !152)
!158 = !DILocation(line: 52, column: 44, scope: !152)
!159 = !DILocation(line: 52, column: 42, scope: !152)
!160 = !DILocation(line: 52, column: 20, scope: !152)
!161 = !DILocation(line: 53, column: 31, scope: !152)
!162 = !DILocation(line: 53, column: 29, scope: !152)
!163 = !DILocation(line: 53, column: 44, scope: !152)
!164 = !DILocation(line: 53, column: 42, scope: !152)
!165 = !DILocation(line: 50, column: 28, scope: !136)
!166 = !DILocation(line: 50, column: 21, scope: !136)
!167 = distinct !{!167, !154, !168}
!168 = !DILocation(line: 54, column: 7, scope: !137)
!169 = !DILocation(line: 49, column: 26, scope: !138)
!170 = !DILocation(line: 49, column: 19, scope: !138)
!171 = distinct !{!171, !153, !172}
!172 = !DILocation(line: 54, column: 7, scope: !139)
!173 = !DILocation(line: 48, column: 24, scope: !140)
!174 = distinct !{!174, !133, !175}
!175 = !DILocation(line: 54, column: 7, scope: !134)
!176 = !DILocation(line: 59, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !22, file: !1, line: 59, column: 7)
!178 = !DILocation(line: 59, column: 7, scope: !22)
!179 = !DILocation(line: 60, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 60, column: 3)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 59, column: 22)
!182 = !DILocation(line: 60, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 60, column: 3)
!184 = !DILocation(line: 0, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 61, column: 30)
!186 = distinct !DILexicalBlock(scope: !187, file: !1, line: 61, column: 5)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 61, column: 5)
!188 = !DILocation(line: 0, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 63, column: 11)
!190 = !DILocation(line: 61, column: 5, scope: !187)
!191 = !DILocation(line: 62, column: 16, scope: !185)
!192 = !DILocation(line: 62, column: 35, scope: !185)
!193 = !DILocation(line: 62, column: 7, scope: !185)
!194 = !DILocation(line: 63, column: 19, scope: !189)
!195 = !DILocation(line: 63, column: 24, scope: !189)
!196 = !DILocation(line: 63, column: 29, scope: !189)
!197 = !DILocation(line: 63, column: 11, scope: !185)
!198 = !DILocation(line: 63, column: 44, scope: !189)
!199 = !DILocation(line: 63, column: 35, scope: !189)
!200 = !DILocation(line: 61, column: 26, scope: !186)
!201 = !DILocation(line: 61, column: 19, scope: !186)
!202 = distinct !{!202, !190, !203}
!203 = !DILocation(line: 64, column: 5, scope: !187)
!204 = !DILocation(line: 60, column: 24, scope: !183)
!205 = distinct !{!205, !179, !206}
!206 = !DILocation(line: 64, column: 5, scope: !180)
!207 = !DILocation(line: 65, column: 12, scope: !181)
!208 = !DILocation(line: 65, column: 3, scope: !181)
!209 = !DILocation(line: 66, column: 3, scope: !181)
!210 = !DILocation(line: 68, column: 3, scope: !22)
!211 = !DILocation(line: 69, column: 3, scope: !22)
!212 = !DILocation(line: 70, column: 3, scope: !22)
!213 = !DILocation(line: 72, column: 3, scope: !22)