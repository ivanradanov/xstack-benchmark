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
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 !dbg !25 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !29, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i8** %argv, metadata !30, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 3, metadata !31, metadata !DIExpression()), !dbg !46
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !47
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !47, !tbaa !48
  call void @llvm.dbg.value(metadata i8* %0, metadata !52, metadata !DIExpression()) #6, !dbg !59
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #6, !dbg !61
  call void @llvm.dbg.value(metadata i32 %conv.i, metadata !32, metadata !DIExpression()), !dbg !46
  %call2 = tail call noalias dereferenceable_or_null(72) i8* @malloc(i64 72) #6, !dbg !62
  %1 = bitcast i8* %call2 to double*, !dbg !63
  call void @llvm.dbg.value(metadata double* %1, metadata !35, metadata !DIExpression()), !dbg !46
  %call5 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !64
  %2 = bitcast i8* %call5 to double*, !dbg !65
  call void @llvm.dbg.value(metadata double* %2, metadata !36, metadata !DIExpression()), !dbg !46
  %call8 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !66
  %3 = bitcast i8* %call8 to double*, !dbg !67
  call void @llvm.dbg.value(metadata double* %3, metadata !37, metadata !DIExpression()), !dbg !46
  %call11 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !68
  %4 = bitcast i8* %call11 to double*, !dbg !69
  call void @llvm.dbg.value(metadata double* %4, metadata !38, metadata !DIExpression()), !dbg !46
  %call14 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !70
  %5 = bitcast i8* %call14 to double*, !dbg !71
  call void @llvm.dbg.value(metadata double* %5, metadata !39, metadata !DIExpression()), !dbg !46
  %call17 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !72
  %6 = bitcast i8* %call17 to double*, !dbg !73
  call void @llvm.dbg.value(metadata double* %6, metadata !40, metadata !DIExpression()), !dbg !46
  %call20 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !74
  %7 = bitcast i8* %call20 to double*, !dbg !75
  call void @llvm.dbg.value(metadata double* %7, metadata !41, metadata !DIExpression()), !dbg !46
  %call23 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !76
  %8 = bitcast i8* %call23 to double*, !dbg !77
  call void @llvm.dbg.value(metadata double* %8, metadata !42, metadata !DIExpression()), !dbg !46
  %call26 = tail call noalias dereferenceable_or_null(24) i8* @malloc(i64 24) #6, !dbg !78
  %9 = bitcast i8* %call26 to double*, !dbg !79
  call void @llvm.dbg.value(metadata double* %9, metadata !43, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata double 4.353200e+04, metadata !33, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata double 1.231300e+04, metadata !34, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %call20, i8 0, i64 24, i1 false), !dbg !80
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %call17, i8 0, i64 24, i1 false), !dbg !84
  br label %for.body, !dbg !85

for.cond.loopexit:                                ; preds = %for.body65
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next381, metadata !44, metadata !DIExpression()), !dbg !46
  %exitcond382 = icmp eq i64 %indvars.iv.next381, 3, !dbg !86
  br i1 %exitcond382, label %for.cond82.preheader.preheader, label %for.body, !dbg !85

for.cond82.preheader.preheader:                   ; preds = %for.cond.loopexit
  %conv.i = trunc i64 %call.i to i32, !dbg !87
  br label %for.cond82.preheader, !dbg !88

for.body:                                         ; preds = %for.cond.loopexit, %entry
  %indvars.iv380 = phi i64 [ 0, %entry ], [ %indvars.iv.next381, %for.cond.loopexit ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv380, metadata !44, metadata !DIExpression()), !dbg !46
  %10 = trunc i64 %indvars.iv380 to i32, !dbg !90
  %conv28 = sitofp i32 %10 to double, !dbg !90
  %arrayidx29 = getelementptr inbounds double, double* %2, i64 %indvars.iv380, !dbg !91
  store double %conv28, double* %arrayidx29, align 8, !dbg !92, !tbaa !93
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1, !dbg !95
  %11 = trunc i64 %indvars.iv.next381 to i8, !dbg !96
  %div342 = udiv i8 %11, 3, !dbg !96
  %conv30 = uitofp i8 %div342 to double, !dbg !97
  %div31 = fmul double %conv30, 5.000000e-01, !dbg !98
  %arrayidx33 = getelementptr inbounds double, double* %4, i64 %indvars.iv380, !dbg !99
  store double %div31, double* %arrayidx33, align 8, !dbg !100, !tbaa !93
  %div37 = fmul double %conv30, 2.500000e-01, !dbg !101
  %arrayidx39 = getelementptr inbounds double, double* %3, i64 %indvars.iv380, !dbg !102
  store double %div37, double* %arrayidx39, align 8, !dbg !103, !tbaa !93
  %div43 = fdiv double %conv30, 6.000000e+00, !dbg !104
  %arrayidx45 = getelementptr inbounds double, double* %5, i64 %indvars.iv380, !dbg !105
  store double %div43, double* %arrayidx45, align 8, !dbg !106, !tbaa !93
  %div49 = fmul double %conv30, 1.250000e-01, !dbg !107
  %arrayidx51 = getelementptr inbounds double, double* %8, i64 %indvars.iv380, !dbg !108
  store double %div49, double* %arrayidx51, align 8, !dbg !109, !tbaa !93
  %div55 = fdiv double %conv30, 9.000000e+00, !dbg !110
  %arrayidx57 = getelementptr inbounds double, double* %9, i64 %indvars.iv380, !dbg !111
  store double %div55, double* %arrayidx57, align 8, !dbg !112, !tbaa !93
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !46
  %12 = mul nuw nsw i64 %indvars.iv380, 3, !dbg !113
  %arrayidx72 = getelementptr inbounds double, double* %1, i64 %12, !dbg !113
  br label %for.body65, !dbg !116

for.body65:                                       ; preds = %for.body65, %for.body
  %indvars.iv377 = phi i64 [ 0, %for.body ], [ %indvars.iv.next378, %for.body65 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv377, metadata !45, metadata !DIExpression()), !dbg !46
  %13 = trunc i64 %indvars.iv377 to i32, !dbg !117
  %conv67 = sitofp i32 %13 to double, !dbg !117
  %mul68 = fmul double %conv28, %conv67, !dbg !118
  %div70 = fdiv double %mul68, 3.000000e+00, !dbg !119
  %arrayidx74 = getelementptr inbounds double, double* %arrayidx72, i64 %indvars.iv377, !dbg !120
  store double %div70, double* %arrayidx74, align 8, !dbg !121, !tbaa !93
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1, !dbg !122
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next378, metadata !45, metadata !DIExpression()), !dbg !46
  %exitcond379 = icmp eq i64 %indvars.iv.next378, 3, !dbg !123
  br i1 %exitcond379, label %for.cond.loopexit, label %for.body65, !dbg !116, !llvm.loop !124

for.cond82.preheader:                             ; preds = %for.inc109, %for.cond82.preheader.preheader
  %indvars.iv374 = phi i64 [ 0, %for.cond82.preheader.preheader ], [ %indvars.iv.next375, %for.inc109 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv374, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !46
  %14 = mul nuw nsw i64 %indvars.iv374, 3, !dbg !126
  %arrayidx87 = getelementptr inbounds double, double* %1, i64 %14, !dbg !126
  %arrayidx91 = getelementptr inbounds double, double* %2, i64 %indvars.iv374, !dbg !126
  %15 = load double, double* %arrayidx91, align 8, !dbg !126, !tbaa !93
  %arrayidx97 = getelementptr inbounds double, double* %4, i64 %indvars.iv374, !dbg !126
  %16 = load double, double* %arrayidx97, align 8, !dbg !126, !tbaa !93
  br label %for.body85, !dbg !130

for.body85:                                       ; preds = %for.body85, %for.cond82.preheader
  %indvars.iv371 = phi i64 [ 0, %for.cond82.preheader ], [ %indvars.iv.next372, %for.body85 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv371, metadata !45, metadata !DIExpression()), !dbg !46
  %arrayidx89 = getelementptr inbounds double, double* %arrayidx87, i64 %indvars.iv371, !dbg !131
  %17 = load double, double* %arrayidx89, align 8, !dbg !131, !tbaa !93
  %arrayidx93 = getelementptr inbounds double, double* %3, i64 %indvars.iv371, !dbg !132
  %18 = load double, double* %arrayidx93, align 8, !dbg !132, !tbaa !93
  %mul94 = fmul double %15, %18, !dbg !133
  %add95 = fadd double %17, %mul94, !dbg !134
  %arrayidx99 = getelementptr inbounds double, double* %5, i64 %indvars.iv371, !dbg !135
  %19 = load double, double* %arrayidx99, align 8, !dbg !135, !tbaa !93
  %mul100 = fmul double %16, %19, !dbg !136
  %add101 = fadd double %add95, %mul100, !dbg !137
  store double %add101, double* %arrayidx89, align 8, !dbg !138, !tbaa !93
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1, !dbg !139
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next372, metadata !45, metadata !DIExpression()), !dbg !46
  %exitcond373 = icmp eq i64 %indvars.iv.next372, 3, !dbg !140
  br i1 %exitcond373, label %for.inc109, label %for.body85, !dbg !130, !llvm.loop !141

for.inc109:                                       ; preds = %for.body85
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1, !dbg !143
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next375, metadata !44, metadata !DIExpression()), !dbg !46
  %exitcond376 = icmp eq i64 %indvars.iv.next375, 3, !dbg !144
  br i1 %exitcond376, label %for.cond116.preheader.preheader, label %for.cond82.preheader, !dbg !88, !llvm.loop !145

for.cond116.preheader.preheader:                  ; preds = %for.inc109
  br label %for.cond116.preheader, !dbg !147

for.cond116.preheader:                            ; preds = %for.inc136.for.cond116.preheader_crit_edge, %for.cond116.preheader.preheader
  %arrayidx121.promoted = phi double [ %arrayidx121.promoted.pre, %for.inc136.for.cond116.preheader_crit_edge ], [ 0.000000e+00, %for.cond116.preheader.preheader ], !dbg !151
  %indvars.iv368 = phi i64 [ %indvars.iv.next369, %for.inc136.for.cond116.preheader_crit_edge ], [ 0, %for.cond116.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv368, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !46
  %arrayidx121 = getelementptr inbounds double, double* %7, i64 %indvars.iv368, !dbg !153
  %arrayidx123 = getelementptr inbounds double, double* %1, i64 %indvars.iv368, !dbg !153
  br label %for.body119, !dbg !147

for.body119:                                      ; preds = %for.body119, %for.cond116.preheader
  %indvars.iv365 = phi i64 [ 0, %for.cond116.preheader ], [ %indvars.iv.next366, %for.body119 ], !dbg !46
  %add130355 = phi double [ %arrayidx121.promoted, %for.cond116.preheader ], [ %add130, %for.body119 ], !dbg !46
  call void @llvm.dbg.value(metadata i64 %indvars.iv365, metadata !45, metadata !DIExpression()), !dbg !46
  %20 = mul nuw nsw i64 %indvars.iv365, 3, !dbg !154
  %arrayidx125 = getelementptr inbounds double, double* %arrayidx123, i64 %20, !dbg !154
  %21 = load double, double* %arrayidx125, align 8, !dbg !154, !tbaa !93
  %mul126 = fmul double %21, 1.231300e+04, !dbg !155
  %arrayidx128 = getelementptr inbounds double, double* %8, i64 %indvars.iv365, !dbg !156
  %22 = load double, double* %arrayidx128, align 8, !dbg !156, !tbaa !93
  %mul129 = fmul double %mul126, %22, !dbg !157
  %add130 = fadd double %add130355, %mul129, !dbg !158
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1, !dbg !159
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next366, metadata !45, metadata !DIExpression()), !dbg !46
  %exitcond367 = icmp eq i64 %indvars.iv.next366, 3, !dbg !160
  br i1 %exitcond367, label %for.inc136, label %for.body119, !dbg !147, !llvm.loop !161

for.inc136:                                       ; preds = %for.body119
  store double %add130, double* %arrayidx121, align 8, !dbg !151, !tbaa !93
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next369, metadata !44, metadata !DIExpression()), !dbg !46
  %exitcond370 = icmp eq i64 %indvars.iv.next369, 3, !dbg !164
  br i1 %exitcond370, label %for.body142.preheader, label %for.inc136.for.cond116.preheader_crit_edge, !dbg !165, !llvm.loop !166

for.body142.preheader:                            ; preds = %for.inc136
  br label %for.body142, !dbg !168

for.inc136.for.cond116.preheader_crit_edge:       ; preds = %for.inc136
  %arrayidx121.phi.trans.insert = getelementptr inbounds double, double* %7, i64 %indvars.iv.next369, !dbg !153
  %arrayidx121.promoted.pre = load double, double* %arrayidx121.phi.trans.insert, align 8, !dbg !151, !tbaa !93
  br label %for.cond116.preheader, !dbg !165

for.body142:                                      ; preds = %for.body142, %for.body142.preheader
  %indvars.iv362 = phi i64 [ %indvars.iv.next363, %for.body142 ], [ 0, %for.body142.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv362, metadata !44, metadata !DIExpression()), !dbg !46
  %arrayidx144 = getelementptr inbounds double, double* %7, i64 %indvars.iv362, !dbg !170
  %23 = load double, double* %arrayidx144, align 8, !dbg !170, !tbaa !93
  %arrayidx146 = getelementptr inbounds double, double* %9, i64 %indvars.iv362, !dbg !172
  %24 = load double, double* %arrayidx146, align 8, !dbg !172, !tbaa !93
  %add147 = fadd double %23, %24, !dbg !173
  store double %add147, double* %arrayidx144, align 8, !dbg !174, !tbaa !93
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1, !dbg !175
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next363, metadata !44, metadata !DIExpression()), !dbg !46
  %exitcond364 = icmp eq i64 %indvars.iv.next363, 3, !dbg !176
  br i1 %exitcond364, label %for.cond157.preheader.preheader, label %for.body142, !dbg !168, !llvm.loop !177

for.cond157.preheader.preheader:                  ; preds = %for.body142
  br label %for.cond157.preheader, !dbg !179

for.cond157.preheader:                            ; preds = %for.inc177.for.cond157.preheader_crit_edge, %for.cond157.preheader.preheader
  %arrayidx162.promoted = phi double [ %arrayidx162.promoted.pre, %for.inc177.for.cond157.preheader_crit_edge ], [ 0.000000e+00, %for.cond157.preheader.preheader ], !dbg !183
  %indvars.iv359 = phi i64 [ %indvars.iv.next360, %for.inc177.for.cond157.preheader_crit_edge ], [ 0, %for.cond157.preheader.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv359, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !46
  %arrayidx162 = getelementptr inbounds double, double* %6, i64 %indvars.iv359, !dbg !185
  %25 = mul nuw nsw i64 %indvars.iv359, 3, !dbg !185
  %arrayidx164 = getelementptr inbounds double, double* %1, i64 %25, !dbg !185
  br label %for.body160, !dbg !179

for.body160:                                      ; preds = %for.body160, %for.cond157.preheader
  %indvars.iv356 = phi i64 [ 0, %for.cond157.preheader ], [ %indvars.iv.next357, %for.body160 ], !dbg !46
  %add171354 = phi double [ %arrayidx162.promoted, %for.cond157.preheader ], [ %add171, %for.body160 ], !dbg !46
  call void @llvm.dbg.value(metadata i64 %indvars.iv356, metadata !45, metadata !DIExpression()), !dbg !46
  %arrayidx166 = getelementptr inbounds double, double* %arrayidx164, i64 %indvars.iv356, !dbg !186
  %26 = load double, double* %arrayidx166, align 8, !dbg !186, !tbaa !93
  %mul167 = fmul double %26, 4.353200e+04, !dbg !187
  %arrayidx169 = getelementptr inbounds double, double* %7, i64 %indvars.iv356, !dbg !188
  %27 = load double, double* %arrayidx169, align 8, !dbg !188, !tbaa !93
  %mul170 = fmul double %mul167, %27, !dbg !189
  %add171 = fadd double %add171354, %mul170, !dbg !190
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1, !dbg !191
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next357, metadata !45, metadata !DIExpression()), !dbg !46
  %exitcond358 = icmp eq i64 %indvars.iv.next357, 3, !dbg !192
  br i1 %exitcond358, label %for.inc177, label %for.body160, !dbg !179, !llvm.loop !193

for.inc177:                                       ; preds = %for.body160
  store double %add171, double* %arrayidx162, align 8, !dbg !183, !tbaa !93
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1, !dbg !195
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next360, metadata !44, metadata !DIExpression()), !dbg !46
  %exitcond361 = icmp eq i64 %indvars.iv.next360, 3, !dbg !196
  br i1 %exitcond361, label %for.end179, label %for.inc177.for.cond157.preheader_crit_edge, !dbg !197, !llvm.loop !198

for.inc177.for.cond157.preheader_crit_edge:       ; preds = %for.inc177
  %arrayidx162.phi.trans.insert = getelementptr inbounds double, double* %6, i64 %indvars.iv.next360, !dbg !185
  %arrayidx162.promoted.pre = load double, double* %arrayidx162.phi.trans.insert, align 8, !dbg !183, !tbaa !93
  br label %for.cond157.preheader, !dbg !197

for.end179:                                       ; preds = %for.inc177
  %cmp180 = icmp eq i32 %conv.i, 1, !dbg !200
  br i1 %cmp180, label %for.body185.preheader, label %if.end196, !dbg !202

for.body185.preheader:                            ; preds = %for.end179
  br label %for.body185, !dbg !203

for.body185:                                      ; preds = %for.inc193, %for.body185.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc193 ], [ 0, %for.body185.preheader ]
  %i.5344 = phi i32 [ %inc194, %for.inc193 ], [ 0, %for.body185.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !44, metadata !DIExpression()), !dbg !46
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !206, !tbaa !48
  %arrayidx187 = getelementptr inbounds double, double* %6, i64 %indvars.iv, !dbg !209
  %29 = load double, double* %arrayidx187, align 8, !dbg !209, !tbaa !93
  %call188 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %29) #7, !dbg !210
  %rem.lhs.trunc = trunc i32 %i.5344 to i8, !dbg !211
  %rem343 = urem i8 %rem.lhs.trunc, 20, !dbg !211
  %cmp189 = icmp eq i8 %rem343, 0, !dbg !213
  br i1 %cmp189, label %if.then191, label %for.inc193, !dbg !214

if.then191:                                       ; preds = %for.body185
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !215, !tbaa !48
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %30) #7, !dbg !216
  br label %for.inc193, !dbg !216

for.inc193:                                       ; preds = %if.then191, %for.body185
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !217
  %inc194 = add nuw nsw i32 %i.5344, 1, !dbg !217
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !44, metadata !DIExpression()), !dbg !46
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !218
  br i1 %exitcond, label %if.end196.loopexit, label %for.body185, !dbg !203, !llvm.loop !219

if.end196.loopexit:                               ; preds = %for.inc193
  br label %if.end196, !dbg !221

if.end196:                                        ; preds = %if.end196.loopexit, %for.end179
  tail call void @free(i8* %call2) #6, !dbg !221
  tail call void @free(i8* %call5) #6, !dbg !222
  tail call void @free(i8* %call8) #6, !dbg !223
  tail call void @free(i8* %call11) #6, !dbg !224
  tail call void @free(i8* %call14) #6, !dbg !225
  tail call void @free(i8* nonnull %call17) #6, !dbg !226
  tail call void @free(i8* %call20) #6, !dbg !227
  tail call void @free(i8* %call23) #6, !dbg !228
  tail call void @free(i8* %call26) #6, !dbg !229
  ret i32 0, !dbg !230
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !13 dso_local void @free(i8* nocapture) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { cold }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!21}
!llvm.module.flags = !{!22, !23, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "gemver.c", directory: "/u/zujunt/xstack/xstack-benchmark/polybench-inlined/gemver")
!2 = !{}
!3 = !{!4, !9, !6, !12, !13, !17, !18}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !7)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{!8, !8}
!8 = !DISubrange(count: -1)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !11)
!11 = !{!8}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "free", scope: !14, file: !14, line: 565, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!"clang version 10.0.1 (https://github.com/SusanTan/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!22 = !{i32 7, !"Dwarf Version", i32 4}
!23 = !{i32 2, !"Debug Info Version", i32 3}
!24 = !{i32 1, !"wchar_size", i32 4}
!25 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !26, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{!17, !17, !18}
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!29 = !DILocalVariable(name: "argc", arg: 1, scope: !25, file: !1, line: 67, type: !17)
!30 = !DILocalVariable(name: "argv", arg: 2, scope: !25, file: !1, line: 67, type: !18)
!31 = !DILocalVariable(name: "n", scope: !25, file: !1, line: 70, type: !17)
!32 = !DILocalVariable(name: "dump_code", scope: !25, file: !1, line: 71, type: !17)
!33 = !DILocalVariable(name: "alpha", scope: !25, file: !1, line: 74, type: !6)
!34 = !DILocalVariable(name: "beta", scope: !25, file: !1, line: 75, type: !6)
!35 = !DILocalVariable(name: "A", scope: !25, file: !1, line: 76, type: !4)
!36 = !DILocalVariable(name: "u1", scope: !25, file: !1, line: 77, type: !9)
!37 = !DILocalVariable(name: "v1", scope: !25, file: !1, line: 78, type: !9)
!38 = !DILocalVariable(name: "u2", scope: !25, file: !1, line: 79, type: !9)
!39 = !DILocalVariable(name: "v2", scope: !25, file: !1, line: 80, type: !9)
!40 = !DILocalVariable(name: "w", scope: !25, file: !1, line: 81, type: !9)
!41 = !DILocalVariable(name: "x", scope: !25, file: !1, line: 82, type: !9)
!42 = !DILocalVariable(name: "y", scope: !25, file: !1, line: 83, type: !9)
!43 = !DILocalVariable(name: "z", scope: !25, file: !1, line: 84, type: !9)
!44 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 86, type: !17)
!45 = !DILocalVariable(name: "j", scope: !25, file: !1, line: 86, type: !17)
!46 = !DILocation(line: 0, scope: !25)
!47 = !DILocation(line: 71, column: 24, scope: !25)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocalVariable(name: "__nptr", arg: 1, scope: !53, file: !14, line: 361, type: !56)
!53 = distinct !DISubprogram(name: "atoi", scope: !14, file: !14, line: 361, type: !54, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!54 = !DISubroutineType(types: !55)
!55 = !{!17, !56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!58 = !{!52}
!59 = !DILocation(line: 0, scope: !53, inlinedAt: !60)
!60 = distinct !DILocation(line: 71, column: 19, scope: !25)
!61 = !DILocation(line: 363, column: 16, scope: !53, inlinedAt: !60)
!62 = !DILocation(line: 76, column: 43, scope: !25)
!63 = !DILocation(line: 76, column: 26, scope: !25)
!64 = !DILocation(line: 77, column: 39, scope: !25)
!65 = !DILocation(line: 77, column: 25, scope: !25)
!66 = !DILocation(line: 78, column: 39, scope: !25)
!67 = !DILocation(line: 78, column: 25, scope: !25)
!68 = !DILocation(line: 79, column: 39, scope: !25)
!69 = !DILocation(line: 79, column: 25, scope: !25)
!70 = !DILocation(line: 80, column: 39, scope: !25)
!71 = !DILocation(line: 80, column: 25, scope: !25)
!72 = !DILocation(line: 81, column: 37, scope: !25)
!73 = !DILocation(line: 81, column: 23, scope: !25)
!74 = !DILocation(line: 82, column: 37, scope: !25)
!75 = !DILocation(line: 82, column: 23, scope: !25)
!76 = !DILocation(line: 83, column: 37, scope: !25)
!77 = !DILocation(line: 83, column: 23, scope: !25)
!78 = !DILocation(line: 84, column: 37, scope: !25)
!79 = !DILocation(line: 84, column: 23, scope: !25)
!80 = !DILocation(line: 99, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 92, column: 5)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 91, column: 3)
!83 = distinct !DILexicalBlock(scope: !25, file: !1, line: 91, column: 3)
!84 = !DILocation(line: 100, column: 15, scope: !81)
!85 = !DILocation(line: 91, column: 3, scope: !83)
!86 = !DILocation(line: 91, column: 17, scope: !82)
!87 = !DILocation(line: 363, column: 10, scope: !53, inlinedAt: !60)
!88 = !DILocation(line: 105, column: 3, scope: !89)
!89 = distinct !DILexicalBlock(scope: !25, file: !1, line: 105, column: 3)
!90 = !DILocation(line: 93, column: 18, scope: !81)
!91 = !DILocation(line: 93, column: 7, scope: !81)
!92 = !DILocation(line: 93, column: 16, scope: !81)
!93 = !{!94, !94, i64 0}
!94 = !{!"double", !50, i64 0}
!95 = !DILocation(line: 94, column: 20, scope: !81)
!96 = !DILocation(line: 94, column: 23, scope: !81)
!97 = !DILocation(line: 94, column: 18, scope: !81)
!98 = !DILocation(line: 94, column: 25, scope: !81)
!99 = !DILocation(line: 94, column: 7, scope: !81)
!100 = !DILocation(line: 94, column: 16, scope: !81)
!101 = !DILocation(line: 95, column: 25, scope: !81)
!102 = !DILocation(line: 95, column: 7, scope: !81)
!103 = !DILocation(line: 95, column: 16, scope: !81)
!104 = !DILocation(line: 96, column: 25, scope: !81)
!105 = !DILocation(line: 96, column: 7, scope: !81)
!106 = !DILocation(line: 96, column: 16, scope: !81)
!107 = !DILocation(line: 97, column: 24, scope: !81)
!108 = !DILocation(line: 97, column: 7, scope: !81)
!109 = !DILocation(line: 97, column: 15, scope: !81)
!110 = !DILocation(line: 98, column: 24, scope: !81)
!111 = !DILocation(line: 98, column: 7, scope: !81)
!112 = !DILocation(line: 98, column: 15, scope: !81)
!113 = !DILocation(line: 0, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 101, column: 7)
!115 = distinct !DILexicalBlock(scope: !81, file: !1, line: 101, column: 7)
!116 = !DILocation(line: 101, column: 7, scope: !115)
!117 = !DILocation(line: 102, column: 27, scope: !114)
!118 = !DILocation(line: 102, column: 26, scope: !114)
!119 = !DILocation(line: 102, column: 30, scope: !114)
!120 = !DILocation(line: 102, column: 2, scope: !114)
!121 = !DILocation(line: 102, column: 13, scope: !114)
!122 = !DILocation(line: 101, column: 27, scope: !114)
!123 = !DILocation(line: 101, column: 21, scope: !114)
!124 = distinct !{!124, !116, !125}
!125 = !DILocation(line: 102, column: 32, scope: !115)
!126 = !DILocation(line: 0, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 106, column: 5)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 106, column: 5)
!129 = distinct !DILexicalBlock(scope: !89, file: !1, line: 105, column: 3)
!130 = !DILocation(line: 106, column: 5, scope: !128)
!131 = !DILocation(line: 107, column: 20, scope: !127)
!132 = !DILocation(line: 107, column: 44, scope: !127)
!133 = !DILocation(line: 107, column: 42, scope: !127)
!134 = !DILocation(line: 107, column: 31, scope: !127)
!135 = !DILocation(line: 107, column: 66, scope: !127)
!136 = !DILocation(line: 107, column: 64, scope: !127)
!137 = !DILocation(line: 107, column: 53, scope: !127)
!138 = !DILocation(line: 107, column: 18, scope: !127)
!139 = !DILocation(line: 106, column: 25, scope: !127)
!140 = !DILocation(line: 106, column: 19, scope: !127)
!141 = distinct !{!141, !130, !142}
!142 = !DILocation(line: 107, column: 73, scope: !128)
!143 = !DILocation(line: 105, column: 23, scope: !129)
!144 = !DILocation(line: 105, column: 17, scope: !129)
!145 = distinct !{!145, !88, !146}
!146 = !DILocation(line: 107, column: 73, scope: !89)
!147 = !DILocation(line: 110, column: 5, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !1, line: 110, column: 5)
!149 = distinct !DILexicalBlock(scope: !150, file: !1, line: 109, column: 3)
!150 = distinct !DILexicalBlock(scope: !25, file: !1, line: 109, column: 3)
!151 = !DILocation(line: 111, column: 15, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 110, column: 5)
!153 = !DILocation(line: 0, scope: !152)
!154 = !DILocation(line: 111, column: 34, scope: !152)
!155 = !DILocation(line: 111, column: 32, scope: !152)
!156 = !DILocation(line: 111, column: 47, scope: !152)
!157 = !DILocation(line: 111, column: 45, scope: !152)
!158 = !DILocation(line: 111, column: 25, scope: !152)
!159 = !DILocation(line: 110, column: 25, scope: !152)
!160 = !DILocation(line: 110, column: 19, scope: !152)
!161 = distinct !{!161, !147, !162}
!162 = !DILocation(line: 111, column: 53, scope: !148)
!163 = !DILocation(line: 109, column: 23, scope: !149)
!164 = !DILocation(line: 109, column: 17, scope: !149)
!165 = !DILocation(line: 109, column: 3, scope: !150)
!166 = distinct !{!166, !165, !167}
!167 = !DILocation(line: 111, column: 53, scope: !150)
!168 = !DILocation(line: 113, column: 3, scope: !169)
!169 = distinct !DILexicalBlock(scope: !25, file: !1, line: 113, column: 3)
!170 = !DILocation(line: 114, column: 15, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !1, line: 113, column: 3)
!172 = !DILocation(line: 114, column: 25, scope: !171)
!173 = !DILocation(line: 114, column: 23, scope: !171)
!174 = !DILocation(line: 114, column: 13, scope: !171)
!175 = !DILocation(line: 113, column: 23, scope: !171)
!176 = !DILocation(line: 113, column: 17, scope: !171)
!177 = distinct !{!177, !168, !178}
!178 = !DILocation(line: 114, column: 31, scope: !169)
!179 = !DILocation(line: 117, column: 5, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 117, column: 5)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 116, column: 3)
!182 = distinct !DILexicalBlock(scope: !25, file: !1, line: 116, column: 3)
!183 = !DILocation(line: 118, column: 15, scope: !184)
!184 = distinct !DILexicalBlock(scope: !180, file: !1, line: 117, column: 5)
!185 = !DILocation(line: 0, scope: !184)
!186 = !DILocation(line: 118, column: 36, scope: !184)
!187 = !DILocation(line: 118, column: 34, scope: !184)
!188 = !DILocation(line: 118, column: 49, scope: !184)
!189 = !DILocation(line: 118, column: 47, scope: !184)
!190 = !DILocation(line: 118, column: 25, scope: !184)
!191 = !DILocation(line: 117, column: 25, scope: !184)
!192 = !DILocation(line: 117, column: 19, scope: !184)
!193 = distinct !{!193, !179, !194}
!194 = !DILocation(line: 118, column: 55, scope: !180)
!195 = !DILocation(line: 116, column: 23, scope: !181)
!196 = !DILocation(line: 116, column: 17, scope: !181)
!197 = !DILocation(line: 116, column: 3, scope: !182)
!198 = distinct !{!198, !197, !199}
!199 = !DILocation(line: 118, column: 55, scope: !182)
!200 = !DILocation(line: 120, column: 16, scope: !201)
!201 = distinct !DILexicalBlock(scope: !25, file: !1, line: 120, column: 6)
!202 = !DILocation(line: 120, column: 6, scope: !25)
!203 = !DILocation(line: 121, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !1, line: 121, column: 3)
!205 = distinct !DILexicalBlock(scope: !201, file: !1, line: 120, column: 21)
!206 = !DILocation(line: 122, column: 14, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 121, column: 27)
!208 = distinct !DILexicalBlock(scope: !204, file: !1, line: 121, column: 3)
!209 = !DILocation(line: 122, column: 33, scope: !207)
!210 = !DILocation(line: 122, column: 5, scope: !207)
!211 = !DILocation(line: 123, column: 11, scope: !212)
!212 = distinct !DILexicalBlock(scope: !207, file: !1, line: 123, column: 9)
!213 = !DILocation(line: 123, column: 16, scope: !212)
!214 = !DILocation(line: 123, column: 9, scope: !207)
!215 = !DILocation(line: 123, column: 31, scope: !212)
!216 = !DILocation(line: 123, column: 22, scope: !212)
!217 = !DILocation(line: 121, column: 23, scope: !208)
!218 = !DILocation(line: 121, column: 17, scope: !208)
!219 = distinct !{!219, !203, !220}
!220 = !DILocation(line: 124, column: 3, scope: !204)
!221 = !DILocation(line: 129, column: 3, scope: !25)
!222 = !DILocation(line: 130, column: 3, scope: !25)
!223 = !DILocation(line: 131, column: 3, scope: !25)
!224 = !DILocation(line: 132, column: 3, scope: !25)
!225 = !DILocation(line: 133, column: 3, scope: !25)
!226 = !DILocation(line: 134, column: 3, scope: !25)
!227 = !DILocation(line: 135, column: 3, scope: !25)
!228 = !DILocation(line: 136, column: 3, scope: !25)
!229 = !DILocation(line: 137, column: 3, scope: !25)
!230 = !DILocation(line: 139, column: 3, scope: !25)