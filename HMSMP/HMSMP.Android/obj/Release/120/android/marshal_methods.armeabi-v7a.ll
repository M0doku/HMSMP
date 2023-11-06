; ModuleID = 'obj\Release\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\120\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [116 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 54
	i32 39852199, ; 1: Plugin.Permissions => 0x26018a7 => 20
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 49
	i32 182336117, ; 3: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 44
	i32 269982372, ; 4: HMSMP.Android => 0x10179aa4 => 0
	i32 293579439, ; 5: ExoPlayer.Dash.dll => 0x117faaaf => 4
	i32 318968648, ; 6: Xamarin.AndroidX.Activity.dll => 0x13031348 => 26
	i32 321597661, ; 7: System.Numerics => 0x132b30dd => 23
	i32 342366114, ; 8: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 37
	i32 398801395, ; 9: MediaManager.FFmpegMediaMetadataRetriever => 0x17c539f3 => 15
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 48
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 35
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 13: System.dll => 0x1bff388e => 22
	i32 522682503, ; 14: TagLibSharp => 0x1f278087 => 25
	i32 627609679, ; 15: Xamarin.AndroidX.CustomView => 0x2568904f => 33
	i32 663517072, ; 16: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 45
	i32 759451189, ; 17: MediaManager => 0x2d444e35 => 14
	i32 809851609, ; 18: System.Drawing.Common.dll => 0x30455ad9 => 56
	i32 812693636, ; 19: ExoPlayer.Dash => 0x3070b884 => 4
	i32 915551335, ; 20: ExoPlayer.Ext.MediaSession => 0x36923467 => 6
	i32 928116545, ; 21: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 54
	i32 957807352, ; 22: Plugin.CurrentActivity => 0x3916faf8 => 19
	i32 967690846, ; 23: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 37
	i32 974778368, ; 24: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 1012816738, ; 25: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 43
	i32 1014083006, ; 26: FFmpegMediaMetadataRetriever => 0x3c71adbe => 10
	i32 1028013380, ; 27: ExoPlayer.UI.dll => 0x3d463d44 => 9
	i32 1035644815, ; 28: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 28
	i32 1042160112, ; 29: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 51
	i32 1052210849, ; 30: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 39
	i32 1098259244, ; 31: System => 0x41761b2c => 22
	i32 1119014807, ; 32: HMSMP.dll => 0x42b2cf97 => 12
	i32 1137654822, ; 33: Plugin.Permissions.dll => 0x43cf3c26 => 20
	i32 1179519184, ; 34: MediaManager.Forms => 0x464e08d0 => 16
	i32 1278070001, ; 35: HMSMP => 0x4c2dccf1 => 12
	i32 1293217323, ; 36: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 34
	i32 1365406463, ; 37: System.ServiceModel.Internals.dll => 0x516272ff => 55
	i32 1376866003, ; 38: Xamarin.AndroidX.SavedState => 0x52114ed3 => 43
	i32 1395857551, ; 39: Xamarin.AndroidX.Media.dll => 0x5333188f => 41
	i32 1406073936, ; 40: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 30
	i32 1460219004, ; 41: Xamarin.Forms.Xaml => 0x57092c7c => 52
	i32 1466720129, ; 42: FFmpegMediaMetadataRetriever.dll => 0x576c5f81 => 10
	i32 1469204771, ; 43: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 27
	i32 1592978981, ; 44: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 45: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 40
	i32 1636350590, ; 46: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 32
	i32 1639515021, ; 47: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 48: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 53
	i32 1729485958, ; 49: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 29
	i32 1765620304, ; 50: ExoPlayer.Core => 0x693d3a50 => 3
	i32 1766324549, ; 51: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 44
	i32 1776026572, ; 52: System.Core.dll => 0x69dc03cc => 21
	i32 1788241197, ; 53: Xamarin.AndroidX.Fragment => 0x6a96652d => 35
	i32 1808609942, ; 54: Xamarin.AndroidX.Loader => 0x6bcd3296 => 40
	i32 1813201214, ; 55: Xamarin.Google.Android.Material => 0x6c13413e => 53
	i32 1850226322, ; 56: MediaManager.dll => 0x6e483692 => 14
	i32 1867746548, ; 57: Xamarin.Essentials.dll => 0x6f538cf4 => 48
	i32 1878053835, ; 58: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 52
	i32 1984283898, ; 59: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 6
	i32 2019465201, ; 60: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 39
	i32 2055257422, ; 61: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 38
	i32 2097448633, ; 62: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 36
	i32 2113912252, ; 63: ExoPlayer.UI => 0x7dffbdbc => 9
	i32 2126786730, ; 64: Xamarin.Forms.Platform.Android => 0x7ec430aa => 50
	i32 2201231467, ; 65: System.Net.Http => 0x8334206b => 1
	i32 2202964214, ; 66: ExoPlayer.dll => 0x834e90f6 => 5
	i32 2239138732, ; 67: ExoPlayer.SmoothStreaming => 0x85768bac => 8
	i32 2243643888, ; 68: TagLibSharp.dll => 0x85bb49f0 => 25
	i32 2279755925, ; 69: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 42
	i32 2297326322, ; 70: MediaManager.Forms.dll => 0x88ee6af2 => 16
	i32 2475788418, ; 71: Java.Interop.dll => 0x93918882 => 13
	i32 2476233210, ; 72: ExoPlayer => 0x939851fa => 5
	i32 2620871830, ; 73: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 32
	i32 2713040075, ; 74: ExoPlayer.Hls => 0xa1b5b4cb => 7
	i32 2732626843, ; 75: Xamarin.AndroidX.Activity => 0xa2e0939b => 26
	i32 2737747696, ; 76: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 27
	i32 2766581644, ; 77: Xamarin.Forms.Core => 0xa4e6af8c => 49
	i32 2778768386, ; 78: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 46
	i32 2806986428, ; 79: Plugin.CurrentActivity.dll => 0xa74f36bc => 19
	i32 2810250172, ; 80: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 30
	i32 2819470561, ; 81: System.Xml.dll => 0xa80db4e1 => 24
	i32 2853208004, ; 82: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 46
	i32 2905242038, ; 83: mscorlib.dll => 0xad2a79b6 => 18
	i32 2978675010, ; 84: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 34
	i32 3044182254, ; 85: FormsViewGroup => 0xb57288ee => 11
	i32 3111772706, ; 86: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3144327419, ; 87: ExoPlayer.Hls.dll => 0xbb6aa0fb => 7
	i32 3247949154, ; 88: Mono.Security => 0xc197c562 => 57
	i32 3258312781, ; 89: Xamarin.AndroidX.CardView => 0xc235e84d => 29
	i32 3317135071, ; 90: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 33
	i32 3353484488, ; 91: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 36
	i32 3353544232, ; 92: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 47
	i32 3362522851, ; 93: Xamarin.AndroidX.Core => 0xc86c06e3 => 31
	i32 3366347497, ; 94: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 95: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 42
	i32 3404865022, ; 96: System.ServiceModel.Internals => 0xcaf21dfe => 55
	i32 3407215217, ; 97: Xamarin.CommunityToolkit => 0xcb15fa71 => 47
	i32 3429136800, ; 98: System.Xml => 0xcc6479a0 => 24
	i32 3476120550, ; 99: Mono.Android => 0xcf3163e6 => 17
	i32 3505188696, ; 100: HMSMP.Android.dll => 0xd0ecef58 => 0
	i32 3536029504, ; 101: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 50
	i32 3632359727, ; 102: Xamarin.Forms.Platform => 0xd881692f => 51
	i32 3641597786, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 38
	i32 3672681054, ; 104: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3689375977, ; 105: System.Drawing.Common => 0xdbe768e9 => 56
	i32 3822602673, ; 106: Xamarin.AndroidX.Media => 0xe3d849b1 => 41
	i32 3829621856, ; 107: System.Numerics.dll => 0xe4436460 => 23
	i32 3896760992, ; 108: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 31
	i32 3921031405, ; 109: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 45
	i32 3955647286, ; 110: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 28
	i32 4105002889, ; 111: Mono.Security.dll => 0xf4ad5f89 => 57
	i32 4151237749, ; 112: System.Core => 0xf76edc75 => 21
	i32 4159714777, ; 113: MediaManager.FFmpegMediaMetadataRetriever.dll => 0xf7f035d9 => 15
	i32 4173364138, ; 114: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 8
	i32 4190597220 ; 115: ExoPlayer.Core.dll => 0xf9c77064 => 3
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [116 x i32] [
	i32 54, i32 20, i32 49, i32 44, i32 0, i32 4, i32 26, i32 23, ; 0..7
	i32 37, i32 15, i32 48, i32 35, i32 18, i32 22, i32 25, i32 33, ; 8..15
	i32 45, i32 14, i32 56, i32 4, i32 6, i32 54, i32 19, i32 37, ; 16..23
	i32 11, i32 43, i32 10, i32 9, i32 28, i32 51, i32 39, i32 22, ; 24..31
	i32 12, i32 20, i32 16, i32 12, i32 34, i32 55, i32 43, i32 41, ; 32..39
	i32 30, i32 52, i32 10, i32 27, i32 2, i32 40, i32 32, i32 1, ; 40..47
	i32 53, i32 29, i32 3, i32 44, i32 21, i32 35, i32 40, i32 53, ; 48..55
	i32 14, i32 48, i32 52, i32 6, i32 39, i32 38, i32 36, i32 9, ; 56..63
	i32 50, i32 1, i32 5, i32 8, i32 25, i32 42, i32 16, i32 13, ; 64..71
	i32 5, i32 32, i32 7, i32 26, i32 27, i32 49, i32 46, i32 19, ; 72..79
	i32 30, i32 24, i32 46, i32 18, i32 34, i32 11, i32 2, i32 7, ; 80..87
	i32 57, i32 29, i32 33, i32 36, i32 47, i32 31, i32 13, i32 42, ; 88..95
	i32 55, i32 47, i32 24, i32 17, i32 0, i32 50, i32 51, i32 38, ; 96..103
	i32 17, i32 56, i32 41, i32 23, i32 31, i32 45, i32 28, i32 57, ; 104..111
	i32 21, i32 15, i32 8, i32 3 ; 112..115
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
