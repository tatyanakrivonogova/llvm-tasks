; ModuleID = 'new_opts/opt4/check.cpp'
source_filename = "new_opts/opt4/check.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [34 x i8] c"\D0\92\D1\80\D0\B5\D0\BC\D1\8F \D0\B2\D1\8B\D0\BF\D0\BE\D0\BB\D0\BD\D0\B5\D0\BD\D0\B8\D1\8F: \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" \D1\81\D0\B5\D0\BA\D1\83\D0\BD\D0\B4\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_check.cpp, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z11one_is_zeroii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %0, 0
  %4 = icmp eq i32 %1, 0
  %5 = xor i1 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call i64 @strtoll(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #12
  tail call void @srand(i32 noundef 42416) #12
  %6 = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #13
          to label %7 unwind label %20

7:                                                ; preds = %2
  %8 = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #13
          to label %9 unwind label %20

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, ptr %6, i64 4000
  %11 = getelementptr inbounds i8, ptr %8, i64 4000
  br label %23

12:                                               ; preds = %102
  %13 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %14 = icmp sgt i64 %5, 0
  br i1 %14, label %15, label %134

15:                                               ; preds = %12
  %16 = and i64 %5, 1
  %17 = icmp eq i64 %5, 1
  br i1 %17, label %119, label %18

18:                                               ; preds = %15
  %19 = and i64 %5, 9223372036854775806
  br label %138

20:                                               ; preds = %2, %7
  %21 = phi ptr [ %6, %7 ], [ null, %2 ]
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %220

23:                                               ; preds = %9, %102
  %24 = phi i32 [ 0, %9 ], [ %107, %102 ]
  %25 = phi ptr [ %6, %9 ], [ %67, %102 ]
  %26 = phi ptr [ %6, %9 ], [ %68, %102 ]
  %27 = phi ptr [ %10, %9 ], [ %65, %102 ]
  %28 = phi ptr [ %8, %9 ], [ %105, %102 ]
  %29 = phi ptr [ %8, %9 ], [ %106, %102 ]
  %30 = phi ptr [ %11, %9 ], [ %103, %102 ]
  %31 = tail call i32 @rand() #12
  %32 = srem i32 %31, 1000
  %33 = icmp eq ptr %26, %27
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  store i32 %32, ptr %26, align 4, !tbaa !9
  br label %64

35:                                               ; preds = %23
  %36 = ptrtoint ptr %26 to i64
  %37 = ptrtoint ptr %25 to i64
  %38 = sub i64 %36, %37
  %39 = icmp eq i64 %38, 9223372036854775804
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %41 unwind label %111

41:                                               ; preds = %40
  unreachable

42:                                               ; preds = %35
  %43 = ashr exact i64 %38, 2
  %44 = tail call i64 @llvm.umax.i64(i64 %43, i64 1)
  %45 = add nsw i64 %44, %43
  %46 = icmp ult i64 %45, %43
  %47 = tail call i64 @llvm.umin.i64(i64 %45, i64 2305843009213693951)
  %48 = select i1 %46, i64 2305843009213693951, i64 %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = shl nuw nsw i64 %48, 2
  %52 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %51) #13
          to label %53 unwind label %109

53:                                               ; preds = %50, %42
  %54 = phi ptr [ null, %42 ], [ %52, %50 ]
  %55 = getelementptr inbounds i32, ptr %54, i64 %43
  store i32 %32, ptr %55, align 4, !tbaa !9
  %56 = icmp sgt i64 %38, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %54, ptr align 4 %25, i64 %38, i1 false)
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds i8, ptr %54, i64 %38
  %60 = icmp eq ptr %25, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @_ZdlPv(ptr noundef nonnull %25) #12
  br label %62

62:                                               ; preds = %61, %58
  %63 = getelementptr inbounds i32, ptr %54, i64 %48
  br label %64

64:                                               ; preds = %62, %34
  %65 = phi ptr [ %63, %62 ], [ %27, %34 ]
  %66 = phi ptr [ %59, %62 ], [ %26, %34 ]
  %67 = phi ptr [ %54, %62 ], [ %25, %34 ]
  %68 = getelementptr inbounds i8, ptr %66, i64 4
  %69 = tail call i32 @rand() #12
  %70 = srem i32 %69, 1000
  %71 = icmp eq ptr %29, %30
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  store i32 %70, ptr %29, align 4, !tbaa !9
  br label %102

73:                                               ; preds = %64
  %74 = ptrtoint ptr %29 to i64
  %75 = ptrtoint ptr %28 to i64
  %76 = sub i64 %74, %75
  %77 = icmp eq i64 %76, 9223372036854775804
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %79 unwind label %115

79:                                               ; preds = %78
  unreachable

80:                                               ; preds = %73
  %81 = ashr exact i64 %76, 2
  %82 = tail call i64 @llvm.umax.i64(i64 %81, i64 1)
  %83 = add nsw i64 %82, %81
  %84 = icmp ult i64 %83, %81
  %85 = tail call i64 @llvm.umin.i64(i64 %83, i64 2305843009213693951)
  %86 = select i1 %84, i64 2305843009213693951, i64 %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = shl nuw nsw i64 %86, 2
  %90 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %89) #13
          to label %91 unwind label %113

91:                                               ; preds = %88, %80
  %92 = phi ptr [ null, %80 ], [ %90, %88 ]
  %93 = getelementptr inbounds i32, ptr %92, i64 %81
  store i32 %70, ptr %93, align 4, !tbaa !9
  %94 = icmp sgt i64 %76, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %92, ptr align 4 %28, i64 %76, i1 false)
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr inbounds i8, ptr %92, i64 %76
  %98 = icmp eq ptr %28, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call void @_ZdlPv(ptr noundef nonnull %28) #12
  br label %100

100:                                              ; preds = %99, %96
  %101 = getelementptr inbounds i32, ptr %92, i64 %86
  br label %102

102:                                              ; preds = %100, %72
  %103 = phi ptr [ %101, %100 ], [ %30, %72 ]
  %104 = phi ptr [ %97, %100 ], [ %29, %72 ]
  %105 = phi ptr [ %92, %100 ], [ %28, %72 ]
  %106 = getelementptr inbounds i8, ptr %104, i64 4
  %107 = add nuw nsw i32 %24, 1
  %108 = icmp eq i32 %107, 10000
  br i1 %108, label %12, label %23, !llvm.loop !11

109:                                              ; preds = %50
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %214

111:                                              ; preds = %40
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %214

113:                                              ; preds = %88
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %214

115:                                              ; preds = %78
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %214

117:                                              ; preds = %138
  %118 = urem i64 %163, 10000
  br label %119

119:                                              ; preds = %117, %15
  %120 = phi i64 [ undef, %15 ], [ %162, %117 ]
  %121 = phi i64 [ 0, %15 ], [ %118, %117 ]
  %122 = phi i64 [ 0, %15 ], [ %162, %117 ]
  %123 = icmp eq i64 %16, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds i32, ptr %67, i64 %121
  %126 = load i32, ptr %125, align 4, !tbaa !9
  %127 = getelementptr inbounds i32, ptr %105, i64 %121
  %128 = load i32, ptr %127, align 4, !tbaa !9
  %129 = icmp eq i32 %126, 0
  %130 = icmp eq i32 %128, 0
  %131 = xor i1 %129, %130
  %132 = zext i1 %131 to i64
  %133 = add nuw nsw i64 %122, %132
  br label %134

134:                                              ; preds = %124, %119, %12
  %135 = phi i64 [ 0, %12 ], [ %120, %119 ], [ %133, %124 ]
  %136 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %137 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %135)
          to label %166 unwind label %210

138:                                              ; preds = %138, %18
  %139 = phi i64 [ 0, %18 ], [ %163, %138 ]
  %140 = phi i64 [ 0, %18 ], [ %162, %138 ]
  %141 = phi i64 [ 0, %18 ], [ %164, %138 ]
  %142 = urem i64 %139, 10000
  %143 = getelementptr inbounds i32, ptr %67, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !9
  %145 = getelementptr inbounds i32, ptr %105, i64 %142
  %146 = load i32, ptr %145, align 4, !tbaa !9
  %147 = icmp eq i32 %144, 0
  %148 = icmp eq i32 %146, 0
  %149 = xor i1 %147, %148
  %150 = zext i1 %149 to i64
  %151 = add nuw nsw i64 %140, %150
  %152 = or disjoint i64 %139, 1
  %153 = urem i64 %152, 10000
  %154 = getelementptr inbounds i32, ptr %67, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !9
  %156 = getelementptr inbounds i32, ptr %105, i64 %153
  %157 = load i32, ptr %156, align 4, !tbaa !9
  %158 = icmp eq i32 %155, 0
  %159 = icmp eq i32 %157, 0
  %160 = xor i1 %158, %159
  %161 = zext i1 %160 to i64
  %162 = add nuw nsw i64 %151, %161
  %163 = add nuw nsw i64 %139, 2
  %164 = add i64 %141, 2
  %165 = icmp eq i64 %164, %19
  br i1 %165, label %117, label %138, !llvm.loop !13

166:                                              ; preds = %134
  %167 = load ptr, ptr %137, align 8, !tbaa !14
  %168 = getelementptr i8, ptr %167, i64 -24
  %169 = load i64, ptr %168, align 8
  %170 = getelementptr inbounds i8, ptr %137, i64 %169
  %171 = getelementptr inbounds i8, ptr %170, i64 240
  %172 = load ptr, ptr %171, align 8, !tbaa !16
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %175 unwind label %210

175:                                              ; preds = %174
  unreachable

176:                                              ; preds = %166
  %177 = getelementptr inbounds i8, ptr %172, i64 56
  %178 = load i8, ptr %177, align 8, !tbaa !25
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %172, i64 67
  %182 = load i8, ptr %181, align 1, !tbaa !28
  br label %189

183:                                              ; preds = %176
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %172)
          to label %184 unwind label %210

184:                                              ; preds = %183
  %185 = load ptr, ptr %172, align 8, !tbaa !14
  %186 = getelementptr inbounds i8, ptr %185, i64 48
  %187 = load ptr, ptr %186, align 8
  %188 = invoke noundef signext i8 %187(ptr noundef nonnull align 8 dereferenceable(570) %172, i8 noundef signext 10)
          to label %189 unwind label %210

189:                                              ; preds = %184, %180
  %190 = phi i8 [ %182, %180 ], [ %188, %184 ]
  %191 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %137, i8 noundef signext %190)
          to label %192 unwind label %210

192:                                              ; preds = %189
  %193 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %191)
          to label %194 unwind label %210

194:                                              ; preds = %192
  %195 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 33)
          to label %196 unwind label %212

196:                                              ; preds = %194
  %197 = sub nsw i64 %136, %13
  %198 = sitofp i64 %197 to double
  %199 = fdiv double %198, 1.000000e+09
  %200 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %199)
          to label %201 unwind label %212

201:                                              ; preds = %196
  %202 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %203 unwind label %212

203:                                              ; preds = %201
  %204 = icmp eq ptr %105, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %203
  tail call void @_ZdlPv(ptr noundef nonnull %105) #12
  br label %206

206:                                              ; preds = %203, %205
  %207 = icmp eq ptr %67, null
  br i1 %207, label %209, label %208

208:                                              ; preds = %206
  tail call void @_ZdlPv(ptr noundef nonnull %67) #12
  br label %209

209:                                              ; preds = %206, %208
  ret i32 0

210:                                              ; preds = %192, %189, %184, %183, %174, %134
  %211 = landingpad { ptr, i32 }
          cleanup
  br label %214

212:                                              ; preds = %201, %196, %194
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %214

214:                                              ; preds = %113, %115, %109, %111, %210, %212
  %215 = phi ptr [ %105, %212 ], [ %105, %210 ], [ %28, %109 ], [ %28, %111 ], [ %28, %113 ], [ %28, %115 ]
  %216 = phi ptr [ %67, %212 ], [ %67, %210 ], [ %25, %109 ], [ %25, %111 ], [ %67, %113 ], [ %67, %115 ]
  %217 = phi { ptr, i32 } [ %213, %212 ], [ %211, %210 ], [ %110, %109 ], [ %112, %111 ], [ %114, %113 ], [ %116, %115 ]
  %218 = icmp eq ptr %215, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %214
  tail call void @_ZdlPv(ptr noundef nonnull %215) #12
  br label %220

220:                                              ; preds = %20, %214, %219
  %221 = phi { ptr, i32 } [ %22, %20 ], [ %217, %214 ], [ %217, %219 ]
  %222 = phi ptr [ %21, %20 ], [ %216, %214 ], [ %216, %219 ]
  %223 = icmp eq ptr %222, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  tail call void @_ZdlPv(ptr noundef nonnull %222) #12
  br label %225

225:                                              ; preds = %220, %224
  resume { ptr, i32 } %221
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_check.cpp() #10 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { allocsize(0) }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 19.0.0git (git@github.com:tatyanakrivonogova/llvm_optimisations.git dbfae6c1c7b358ed9c065181e8a3ebc61568248d)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !6, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !6, i64 216, !7, i64 224, !24, i64 225, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !6, i64 40, !22, i64 48, !7, i64 64, !10, i64 192, !6, i64 200, !23, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !6, i64 0, !19, i64 8}
!23 = !{!"_ZTSSt6locale", !6, i64 0}
!24 = !{!"bool", !7, i64 0}
!25 = !{!26, !7, i64 56}
!26 = !{!"_ZTSSt5ctypeIcE", !27, i64 0, !6, i64 16, !24, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!27 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!28 = !{!7, !7, i64 0}
