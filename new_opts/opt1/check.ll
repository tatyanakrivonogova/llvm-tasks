; ModuleID = 'new_opts/opt1/check.cpp'
source_filename = "new_opts/opt1/check.cpp"
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
define dso_local noundef i32 @_Z12brackets_muliii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %1, %0
  %5 = add i32 %4, %2
  %6 = mul i32 %5, %0
  %7 = mul nsw i32 %2, %1
  %8 = add nsw i32 %6, %7
  ret i32 %8
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call i64 @strtoll(ptr nocapture noundef nonnull %4, ptr noundef null, i32 noundef 10) #12
  tail call void @srand(i32 noundef 42416) #12
  %6 = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #13
          to label %7 unwind label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %6, i64 4000
  %9 = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #13
          to label %10 unwind label %18

10:                                               ; preds = %7
  %11 = invoke noalias noundef nonnull dereferenceable(4000) ptr @_Znwm(i64 noundef 4000) #13
          to label %12 unwind label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %9, i64 4000
  %14 = getelementptr inbounds i8, ptr %11, i64 4000
  br label %22

15:                                               ; preds = %142
  %16 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %17 = icmp sgt i64 %5, 0
  br i1 %17, label %165, label %161

18:                                               ; preds = %2, %7, %10
  %19 = phi ptr [ %9, %10 ], [ null, %7 ], [ null, %2 ]
  %20 = phi ptr [ %6, %10 ], [ %6, %7 ], [ null, %2 ]
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %243

22:                                               ; preds = %12, %142
  %23 = phi i32 [ 0, %12 ], [ %147, %142 ]
  %24 = phi ptr [ %6, %12 ], [ %69, %142 ]
  %25 = phi ptr [ %6, %12 ], [ %70, %142 ]
  %26 = phi ptr [ %8, %12 ], [ %67, %142 ]
  %27 = phi ptr [ %9, %12 ], [ %107, %142 ]
  %28 = phi ptr [ %9, %12 ], [ %108, %142 ]
  %29 = phi ptr [ %13, %12 ], [ %105, %142 ]
  %30 = phi ptr [ %11, %12 ], [ %145, %142 ]
  %31 = phi ptr [ %14, %12 ], [ %144, %142 ]
  %32 = phi ptr [ %11, %12 ], [ %146, %142 ]
  %33 = tail call i32 @rand() #12
  %34 = srem i32 %33, 1000
  %35 = icmp eq ptr %25, %26
  br i1 %35, label %37, label %36

36:                                               ; preds = %22
  store i32 %34, ptr %25, align 4, !tbaa !9
  br label %66

37:                                               ; preds = %22
  %38 = ptrtoint ptr %25 to i64
  %39 = ptrtoint ptr %24 to i64
  %40 = sub i64 %38, %39
  %41 = icmp eq i64 %40, 9223372036854775804
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %43 unwind label %151

43:                                               ; preds = %42
  unreachable

44:                                               ; preds = %37
  %45 = ashr exact i64 %40, 2
  %46 = tail call i64 @llvm.umax.i64(i64 %45, i64 1)
  %47 = add nsw i64 %46, %45
  %48 = icmp ult i64 %47, %45
  %49 = tail call i64 @llvm.umin.i64(i64 %47, i64 2305843009213693951)
  %50 = select i1 %48, i64 2305843009213693951, i64 %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %44
  %53 = shl nuw nsw i64 %50, 2
  %54 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %53) #13
          to label %55 unwind label %149

55:                                               ; preds = %52, %44
  %56 = phi ptr [ null, %44 ], [ %54, %52 ]
  %57 = getelementptr inbounds i32, ptr %56, i64 %45
  store i32 %34, ptr %57, align 4, !tbaa !9
  %58 = icmp sgt i64 %40, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %56, ptr align 4 %24, i64 %40, i1 false)
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds i8, ptr %56, i64 %40
  %62 = icmp eq ptr %24, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @_ZdlPv(ptr noundef nonnull %24) #12
  br label %64

64:                                               ; preds = %63, %60
  %65 = getelementptr inbounds i32, ptr %56, i64 %50
  br label %66

66:                                               ; preds = %64, %36
  %67 = phi ptr [ %65, %64 ], [ %26, %36 ]
  %68 = phi ptr [ %61, %64 ], [ %25, %36 ]
  %69 = phi ptr [ %56, %64 ], [ %24, %36 ]
  %70 = getelementptr inbounds i8, ptr %68, i64 4
  %71 = tail call i32 @rand() #12
  %72 = srem i32 %71, 1000
  %73 = icmp eq ptr %28, %29
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  store i32 %72, ptr %28, align 4, !tbaa !9
  br label %104

75:                                               ; preds = %66
  %76 = ptrtoint ptr %28 to i64
  %77 = ptrtoint ptr %27 to i64
  %78 = sub i64 %76, %77
  %79 = icmp eq i64 %78, 9223372036854775804
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %81 unwind label %155

81:                                               ; preds = %80
  unreachable

82:                                               ; preds = %75
  %83 = ashr exact i64 %78, 2
  %84 = tail call i64 @llvm.umax.i64(i64 %83, i64 1)
  %85 = add nsw i64 %84, %83
  %86 = icmp ult i64 %85, %83
  %87 = tail call i64 @llvm.umin.i64(i64 %85, i64 2305843009213693951)
  %88 = select i1 %86, i64 2305843009213693951, i64 %87
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %82
  %91 = shl nuw nsw i64 %88, 2
  %92 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %91) #13
          to label %93 unwind label %153

93:                                               ; preds = %90, %82
  %94 = phi ptr [ null, %82 ], [ %92, %90 ]
  %95 = getelementptr inbounds i32, ptr %94, i64 %83
  store i32 %72, ptr %95, align 4, !tbaa !9
  %96 = icmp sgt i64 %78, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %94, ptr align 4 %27, i64 %78, i1 false)
  br label %98

98:                                               ; preds = %97, %93
  %99 = getelementptr inbounds i8, ptr %94, i64 %78
  %100 = icmp eq ptr %27, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void @_ZdlPv(ptr noundef nonnull %27) #12
  br label %102

102:                                              ; preds = %101, %98
  %103 = getelementptr inbounds i32, ptr %94, i64 %88
  br label %104

104:                                              ; preds = %102, %74
  %105 = phi ptr [ %103, %102 ], [ %29, %74 ]
  %106 = phi ptr [ %99, %102 ], [ %28, %74 ]
  %107 = phi ptr [ %94, %102 ], [ %27, %74 ]
  %108 = getelementptr inbounds i8, ptr %106, i64 4
  %109 = tail call i32 @rand() #12
  %110 = srem i32 %109, 1000
  %111 = icmp eq ptr %32, %31
  br i1 %111, label %113, label %112

112:                                              ; preds = %104
  store i32 %110, ptr %32, align 4, !tbaa !9
  br label %142

113:                                              ; preds = %104
  %114 = ptrtoint ptr %31 to i64
  %115 = ptrtoint ptr %30 to i64
  %116 = sub i64 %114, %115
  %117 = icmp eq i64 %116, 9223372036854775804
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #14
          to label %119 unwind label %159

119:                                              ; preds = %118
  unreachable

120:                                              ; preds = %113
  %121 = ashr exact i64 %116, 2
  %122 = tail call i64 @llvm.umax.i64(i64 %121, i64 1)
  %123 = add nsw i64 %122, %121
  %124 = icmp ult i64 %123, %121
  %125 = tail call i64 @llvm.umin.i64(i64 %123, i64 2305843009213693951)
  %126 = select i1 %124, i64 2305843009213693951, i64 %125
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %120
  %129 = shl nuw nsw i64 %126, 2
  %130 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %129) #13
          to label %131 unwind label %157

131:                                              ; preds = %128, %120
  %132 = phi ptr [ null, %120 ], [ %130, %128 ]
  %133 = getelementptr inbounds i32, ptr %132, i64 %121
  store i32 %110, ptr %133, align 4, !tbaa !9
  %134 = icmp sgt i64 %116, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %132, ptr align 4 %30, i64 %116, i1 false)
  br label %136

136:                                              ; preds = %135, %131
  %137 = getelementptr inbounds i8, ptr %132, i64 %116
  %138 = icmp eq ptr %30, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %136
  tail call void @_ZdlPv(ptr noundef nonnull %30) #12
  br label %140

140:                                              ; preds = %139, %136
  %141 = getelementptr inbounds i32, ptr %132, i64 %126
  br label %142

142:                                              ; preds = %140, %112
  %143 = phi ptr [ %137, %140 ], [ %32, %112 ]
  %144 = phi ptr [ %141, %140 ], [ %31, %112 ]
  %145 = phi ptr [ %132, %140 ], [ %30, %112 ]
  %146 = getelementptr inbounds i8, ptr %143, i64 4
  %147 = add nuw nsw i32 %23, 1
  %148 = icmp eq i32 %147, 10000
  br i1 %148, label %15, label %22, !llvm.loop !11

149:                                              ; preds = %52
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %236

151:                                              ; preds = %42
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %236

153:                                              ; preds = %90
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %236

155:                                              ; preds = %80
  %156 = landingpad { ptr, i32 }
          cleanup
  br label %236

157:                                              ; preds = %128
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %236

159:                                              ; preds = %118
  %160 = landingpad { ptr, i32 }
          cleanup
  br label %236

161:                                              ; preds = %165, %15
  %162 = phi i64 [ 0, %15 ], [ %182, %165 ]
  %163 = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #12
  %164 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %162)
          to label %185 unwind label %232

165:                                              ; preds = %15, %165
  %166 = phi i64 [ %183, %165 ], [ 0, %15 ]
  %167 = phi i64 [ %182, %165 ], [ 0, %15 ]
  %168 = urem i64 %166, 10000
  %169 = getelementptr inbounds i32, ptr %69, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !9
  %171 = getelementptr inbounds i32, ptr %107, i64 %168
  %172 = load i32, ptr %171, align 4, !tbaa !9
  %173 = getelementptr inbounds i32, ptr %145, i64 %168
  %174 = load i32, ptr %173, align 4, !tbaa !9
  %175 = add i32 %172, %170
  %176 = add i32 %175, %174
  %177 = mul i32 %176, %170
  %178 = mul nsw i32 %174, %172
  %179 = add nsw i32 %177, %178
  %180 = srem i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %167, %181
  %183 = add nuw nsw i64 %166, 1
  %184 = icmp eq i64 %183, %5
  br i1 %184, label %161, label %165, !llvm.loop !13

185:                                              ; preds = %161
  %186 = load ptr, ptr %164, align 8, !tbaa !14
  %187 = getelementptr i8, ptr %186, i64 -24
  %188 = load i64, ptr %187, align 8
  %189 = getelementptr inbounds i8, ptr %164, i64 %188
  %190 = getelementptr inbounds i8, ptr %189, i64 240
  %191 = load ptr, ptr %190, align 8, !tbaa !16
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %185
  invoke void @_ZSt16__throw_bad_castv() #14
          to label %194 unwind label %232

194:                                              ; preds = %193
  unreachable

195:                                              ; preds = %185
  %196 = getelementptr inbounds i8, ptr %191, i64 56
  %197 = load i8, ptr %196, align 8, !tbaa !25
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds i8, ptr %191, i64 67
  %201 = load i8, ptr %200, align 1, !tbaa !28
  br label %208

202:                                              ; preds = %195
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %191)
          to label %203 unwind label %232

203:                                              ; preds = %202
  %204 = load ptr, ptr %191, align 8, !tbaa !14
  %205 = getelementptr inbounds i8, ptr %204, i64 48
  %206 = load ptr, ptr %205, align 8
  %207 = invoke noundef signext i8 %206(ptr noundef nonnull align 8 dereferenceable(570) %191, i8 noundef signext 10)
          to label %208 unwind label %232

208:                                              ; preds = %203, %199
  %209 = phi i8 [ %201, %199 ], [ %207, %203 ]
  %210 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %164, i8 noundef signext %209)
          to label %211 unwind label %232

211:                                              ; preds = %208
  %212 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %210)
          to label %213 unwind label %232

213:                                              ; preds = %211
  %214 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 33)
          to label %215 unwind label %234

215:                                              ; preds = %213
  %216 = sub nsw i64 %163, %16
  %217 = sitofp i64 %216 to double
  %218 = fdiv double %217, 1.000000e+09
  %219 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %218)
          to label %220 unwind label %234

220:                                              ; preds = %215
  %221 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %219, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %222 unwind label %234

222:                                              ; preds = %220
  %223 = icmp eq ptr %145, null
  br i1 %223, label %225, label %224

224:                                              ; preds = %222
  tail call void @_ZdlPv(ptr noundef nonnull %145) #12
  br label %225

225:                                              ; preds = %222, %224
  %226 = icmp eq ptr %107, null
  br i1 %226, label %228, label %227

227:                                              ; preds = %225
  tail call void @_ZdlPv(ptr noundef nonnull %107) #12
  br label %228

228:                                              ; preds = %225, %227
  %229 = icmp eq ptr %69, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %228
  tail call void @_ZdlPv(ptr noundef nonnull %69) #12
  br label %231

231:                                              ; preds = %228, %230
  ret i32 0

232:                                              ; preds = %211, %208, %203, %202, %193, %161
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %236

234:                                              ; preds = %220, %215, %213
  %235 = landingpad { ptr, i32 }
          cleanup
  br label %236

236:                                              ; preds = %157, %159, %153, %155, %149, %151, %232, %234
  %237 = phi ptr [ %145, %234 ], [ %145, %232 ], [ %30, %149 ], [ %30, %151 ], [ %30, %153 ], [ %30, %155 ], [ %30, %157 ], [ %30, %159 ]
  %238 = phi ptr [ %107, %234 ], [ %107, %232 ], [ %27, %149 ], [ %27, %151 ], [ %27, %153 ], [ %27, %155 ], [ %107, %157 ], [ %107, %159 ]
  %239 = phi ptr [ %69, %234 ], [ %69, %232 ], [ %24, %149 ], [ %24, %151 ], [ %69, %153 ], [ %69, %155 ], [ %69, %157 ], [ %69, %159 ]
  %240 = phi { ptr, i32 } [ %235, %234 ], [ %233, %232 ], [ %150, %149 ], [ %152, %151 ], [ %154, %153 ], [ %156, %155 ], [ %158, %157 ], [ %160, %159 ]
  %241 = icmp eq ptr %237, null
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  tail call void @_ZdlPv(ptr noundef nonnull %237) #12
  br label %243

243:                                              ; preds = %18, %236, %242
  %244 = phi { ptr, i32 } [ %21, %18 ], [ %240, %236 ], [ %240, %242 ]
  %245 = phi ptr [ %20, %18 ], [ %239, %236 ], [ %239, %242 ]
  %246 = phi ptr [ %19, %18 ], [ %238, %236 ], [ %238, %242 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %243
  tail call void @_ZdlPv(ptr noundef nonnull %246) #12
  br label %249

249:                                              ; preds = %243, %248
  %250 = icmp eq ptr %245, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %249
  tail call void @_ZdlPv(ptr noundef nonnull %245) #12
  br label %252

252:                                              ; preds = %249, %251
  resume { ptr, i32 } %244
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
