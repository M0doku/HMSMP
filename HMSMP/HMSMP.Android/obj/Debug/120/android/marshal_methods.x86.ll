; ModuleID = 'obj\Debug\120\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\120\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [200 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 58
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 88
	i32 39852199, ; 2: Plugin.Permissions => 0x26018a7 => 20
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 83
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 72
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 72
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 39
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 73
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 37
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 53
	i32 232815796, ; 10: System.Web.Services => 0xde07cb4 => 98
	i32 261689757, ; 11: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 42
	i32 269982372, ; 12: HMSMP.Android => 0x10179aa4 => 0
	i32 278686392, ; 13: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 57
	i32 280482487, ; 14: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 51
	i32 293579439, ; 15: ExoPlayer.Dash.dll => 0x117faaaf => 4
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 29
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 23
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 55
	i32 398801395, ; 19: MediaManager.FFmpegMediaMetadataRetriever => 0x17c539f3 => 15
	i32 441335492, ; 20: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 41
	i32 442521989, ; 21: Xamarin.Essentials => 0x1a605985 => 82
	i32 450948140, ; 22: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 50
	i32 465846621, ; 23: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 24: System.dll => 0x1bff388e => 22
	i32 476646585, ; 25: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 51
	i32 486930444, ; 26: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 62
	i32 522682503, ; 27: TagLibSharp => 0x1f278087 => 28
	i32 526420162, ; 28: System.Transactions.dll => 0x1f6088c2 => 92
	i32 605376203, ; 29: System.IO.Compression.FileSystem => 0x24154ecb => 96
	i32 627609679, ; 30: Xamarin.AndroidX.CustomView => 0x2568904f => 46
	i32 663517072, ; 31: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 78
	i32 666292255, ; 32: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 34
	i32 690569205, ; 33: System.Xml.Linq.dll => 0x29293ff5 => 27
	i32 759451189, ; 34: MediaManager => 0x2d444e35 => 14
	i32 775507847, ; 35: System.IO.Compression => 0x2e394f87 => 95
	i32 809851609, ; 36: System.Drawing.Common.dll => 0x30455ad9 => 94
	i32 812693636, ; 37: ExoPlayer.Dash => 0x3070b884 => 4
	i32 843511501, ; 38: Xamarin.AndroidX.Print => 0x3246f6cd => 69
	i32 915551335, ; 39: ExoPlayer.Ext.MediaSession => 0x36923467 => 6
	i32 928116545, ; 40: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 88
	i32 957807352, ; 41: Plugin.CurrentActivity => 0x3916faf8 => 19
	i32 967690846, ; 42: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 55
	i32 974778368, ; 43: FormsViewGroup.dll => 0x3a19f000 => 11
	i32 1012816738, ; 44: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 71
	i32 1014083006, ; 45: FFmpegMediaMetadataRetriever => 0x3c71adbe => 10
	i32 1028013380, ; 46: ExoPlayer.UI.dll => 0x3d463d44 => 9
	i32 1035644815, ; 47: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 33
	i32 1042160112, ; 48: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 85
	i32 1052210849, ; 49: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 59
	i32 1098259244, ; 50: System => 0x41761b2c => 22
	i32 1119014807, ; 51: HMSMP.dll => 0x42b2cf97 => 12
	i32 1137654822, ; 52: Plugin.Permissions.dll => 0x43cf3c26 => 20
	i32 1175144683, ; 53: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 76
	i32 1178241025, ; 54: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 66
	i32 1179519184, ; 55: MediaManager.Forms => 0x464e08d0 => 16
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 34
	i32 1267360935, ; 57: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 77
	i32 1278070001, ; 58: HMSMP => 0x4c2dccf1 => 12
	i32 1293217323, ; 59: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 48
	i32 1365406463, ; 60: System.ServiceModel.Internals.dll => 0x516272ff => 89
	i32 1376866003, ; 61: Xamarin.AndroidX.SavedState => 0x52114ed3 => 71
	i32 1395857551, ; 62: Xamarin.AndroidX.Media.dll => 0x5333188f => 63
	i32 1406073936, ; 63: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 43
	i32 1460219004, ; 64: Xamarin.Forms.Xaml => 0x57092c7c => 86
	i32 1462112819, ; 65: System.IO.Compression.dll => 0x57261233 => 95
	i32 1466720129, ; 66: FFmpegMediaMetadataRetriever.dll => 0x576c5f81 => 10
	i32 1469204771, ; 67: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 32
	i32 1582372066, ; 68: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 47
	i32 1592978981, ; 69: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 70: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 61
	i32 1624863272, ; 71: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 80
	i32 1636350590, ; 72: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 45
	i32 1639515021, ; 73: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 74: System.Runtime => 0x62c6282e => 25
	i32 1658241508, ; 75: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 74
	i32 1658251792, ; 76: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 87
	i32 1670060433, ; 77: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 42
	i32 1729485958, ; 78: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 38
	i32 1765620304, ; 79: ExoPlayer.Core => 0x693d3a50 => 3
	i32 1766324549, ; 80: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 73
	i32 1776026572, ; 81: System.Core.dll => 0x69dc03cc => 21
	i32 1788241197, ; 82: Xamarin.AndroidX.Fragment => 0x6a96652d => 50
	i32 1808609942, ; 83: Xamarin.AndroidX.Loader => 0x6bcd3296 => 61
	i32 1813201214, ; 84: Xamarin.Google.Android.Material => 0x6c13413e => 87
	i32 1818569960, ; 85: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 67
	i32 1850226322, ; 86: MediaManager.dll => 0x6e483692 => 14
	i32 1867746548, ; 87: Xamarin.Essentials.dll => 0x6f538cf4 => 82
	i32 1878053835, ; 88: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 86
	i32 1885316902, ; 89: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 35
	i32 1919157823, ; 90: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 64
	i32 1984283898, ; 91: ExoPlayer.Ext.MediaSession.dll => 0x7645c4fa => 6
	i32 2019465201, ; 92: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 59
	i32 2055257422, ; 93: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 56
	i32 2079903147, ; 94: System.Runtime.dll => 0x7bf8cdab => 25
	i32 2090596640, ; 95: System.Numerics.Vectors => 0x7c9bf920 => 24
	i32 2097448633, ; 96: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 52
	i32 2113912252, ; 97: ExoPlayer.UI => 0x7dffbdbc => 9
	i32 2126786730, ; 98: Xamarin.Forms.Platform.Android => 0x7ec430aa => 84
	i32 2201231467, ; 99: System.Net.Http => 0x8334206b => 1
	i32 2202964214, ; 100: ExoPlayer.dll => 0x834e90f6 => 5
	i32 2217644978, ; 101: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 76
	i32 2239138732, ; 102: ExoPlayer.SmoothStreaming => 0x85768bac => 8
	i32 2243643888, ; 103: TagLibSharp.dll => 0x85bb49f0 => 28
	i32 2244775296, ; 104: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 62
	i32 2256548716, ; 105: Xamarin.AndroidX.MultiDex => 0x8680336c => 64
	i32 2261435625, ; 106: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 54
	i32 2279755925, ; 107: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 70
	i32 2297326322, ; 108: MediaManager.Forms.dll => 0x88ee6af2 => 16
	i32 2315684594, ; 109: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 30
	i32 2409053734, ; 110: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 68
	i32 2465532216, ; 111: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 41
	i32 2471841756, ; 112: netstandard.dll => 0x93554fdc => 90
	i32 2475788418, ; 113: Java.Interop.dll => 0x93918882 => 13
	i32 2476233210, ; 114: ExoPlayer => 0x939851fa => 5
	i32 2501346920, ; 115: System.Data.DataSetExtensions => 0x95178668 => 93
	i32 2505896520, ; 116: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 58
	i32 2581819634, ; 117: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 77
	i32 2620871830, ; 118: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 45
	i32 2624644809, ; 119: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 49
	i32 2633051222, ; 120: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 57
	i32 2701096212, ; 121: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 74
	i32 2713040075, ; 122: ExoPlayer.Hls => 0xa1b5b4cb => 7
	i32 2732626843, ; 123: Xamarin.AndroidX.Activity => 0xa2e0939b => 29
	i32 2737747696, ; 124: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 32
	i32 2766581644, ; 125: Xamarin.Forms.Core => 0xa4e6af8c => 83
	i32 2778768386, ; 126: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 79
	i32 2806986428, ; 127: Plugin.CurrentActivity.dll => 0xa74f36bc => 19
	i32 2810250172, ; 128: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 43
	i32 2819470561, ; 129: System.Xml.dll => 0xa80db4e1 => 26
	i32 2853208004, ; 130: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 79
	i32 2855708567, ; 131: Xamarin.AndroidX.Transition => 0xaa36a797 => 75
	i32 2903344695, ; 132: System.ComponentModel.Composition => 0xad0d8637 => 97
	i32 2905242038, ; 133: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 134: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 80
	i32 2919462931, ; 135: System.Numerics.Vectors.dll => 0xae037813 => 24
	i32 2921128767, ; 136: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 31
	i32 2978675010, ; 137: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 48
	i32 3024354802, ; 138: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 53
	i32 3044182254, ; 139: FormsViewGroup => 0xb57288ee => 11
	i32 3057625584, ; 140: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 65
	i32 3111772706, ; 141: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3144327419, ; 142: ExoPlayer.Hls.dll => 0xbb6aa0fb => 7
	i32 3204380047, ; 143: System.Data.dll => 0xbefef58f => 91
	i32 3211777861, ; 144: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 47
	i32 3247949154, ; 145: Mono.Security => 0xc197c562 => 99
	i32 3258312781, ; 146: Xamarin.AndroidX.CardView => 0xc235e84d => 38
	i32 3267021929, ; 147: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 36
	i32 3317135071, ; 148: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 46
	i32 3317144872, ; 149: System.Data => 0xc5b79d28 => 91
	i32 3340431453, ; 150: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 35
	i32 3346324047, ; 151: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 66
	i32 3353484488, ; 152: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 52
	i32 3353544232, ; 153: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 81
	i32 3362522851, ; 154: Xamarin.AndroidX.Core => 0xc86c06e3 => 44
	i32 3366347497, ; 155: Java.Interop => 0xc8a662e9 => 13
	i32 3374999561, ; 156: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 70
	i32 3404865022, ; 157: System.ServiceModel.Internals => 0xcaf21dfe => 89
	i32 3407215217, ; 158: Xamarin.CommunityToolkit => 0xcb15fa71 => 81
	i32 3429136800, ; 159: System.Xml => 0xcc6479a0 => 26
	i32 3430777524, ; 160: netstandard => 0xcc7d82b4 => 90
	i32 3441283291, ; 161: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 49
	i32 3476120550, ; 162: Mono.Android => 0xcf3163e6 => 17
	i32 3486566296, ; 163: System.Transactions => 0xcfd0c798 => 92
	i32 3493954962, ; 164: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 40
	i32 3501239056, ; 165: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 36
	i32 3505188696, ; 166: HMSMP.Android.dll => 0xd0ecef58 => 0
	i32 3509114376, ; 167: System.Xml.Linq => 0xd128d608 => 27
	i32 3536029504, ; 168: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 84
	i32 3567349600, ; 169: System.ComponentModel.Composition.dll => 0xd4a16f60 => 97
	i32 3618140916, ; 170: Xamarin.AndroidX.Preference => 0xd7a872f4 => 68
	i32 3627220390, ; 171: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 69
	i32 3632359727, ; 172: Xamarin.Forms.Platform => 0xd881692f => 85
	i32 3633644679, ; 173: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 31
	i32 3641597786, ; 174: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 56
	i32 3672681054, ; 175: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 176: System.Web.Services.dll => 0xdb2009fe => 98
	i32 3682565725, ; 177: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 37
	i32 3684561358, ; 178: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 40
	i32 3689375977, ; 179: System.Drawing.Common => 0xdbe768e9 => 94
	i32 3718780102, ; 180: Xamarin.AndroidX.Annotation => 0xdda814c6 => 30
	i32 3724971120, ; 181: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 65
	i32 3758932259, ; 182: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 54
	i32 3786282454, ; 183: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 39
	i32 3822602673, ; 184: Xamarin.AndroidX.Media => 0xe3d849b1 => 63
	i32 3829621856, ; 185: System.Numerics.dll => 0xe4436460 => 23
	i32 3885922214, ; 186: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 75
	i32 3896760992, ; 187: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 44
	i32 3920810846, ; 188: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 96
	i32 3921031405, ; 189: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 78
	i32 3931092270, ; 190: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 67
	i32 3945713374, ; 191: System.Data.DataSetExtensions.dll => 0xeb2ecede => 93
	i32 3955647286, ; 192: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 33
	i32 4105002889, ; 193: Mono.Security.dll => 0xf4ad5f89 => 99
	i32 4151237749, ; 194: System.Core => 0xf76edc75 => 21
	i32 4159714777, ; 195: MediaManager.FFmpegMediaMetadataRetriever.dll => 0xf7f035d9 => 15
	i32 4173364138, ; 196: ExoPlayer.SmoothStreaming.dll => 0xf8c07baa => 8
	i32 4182413190, ; 197: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 60
	i32 4190597220, ; 198: ExoPlayer.Core.dll => 0xf9c77064 => 3
	i32 4292120959 ; 199: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 60
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [200 x i32] [
	i32 58, i32 88, i32 20, i32 83, i32 72, i32 72, i32 39, i32 73, ; 0..7
	i32 37, i32 53, i32 98, i32 42, i32 0, i32 57, i32 51, i32 4, ; 8..15
	i32 29, i32 23, i32 55, i32 15, i32 41, i32 82, i32 50, i32 18, ; 16..23
	i32 22, i32 51, i32 62, i32 28, i32 92, i32 96, i32 46, i32 78, ; 24..31
	i32 34, i32 27, i32 14, i32 95, i32 94, i32 4, i32 69, i32 6, ; 32..39
	i32 88, i32 19, i32 55, i32 11, i32 71, i32 10, i32 9, i32 33, ; 40..47
	i32 85, i32 59, i32 22, i32 12, i32 20, i32 76, i32 66, i32 16, ; 48..55
	i32 34, i32 77, i32 12, i32 48, i32 89, i32 71, i32 63, i32 43, ; 56..63
	i32 86, i32 95, i32 10, i32 32, i32 47, i32 2, i32 61, i32 80, ; 64..71
	i32 45, i32 1, i32 25, i32 74, i32 87, i32 42, i32 38, i32 3, ; 72..79
	i32 73, i32 21, i32 50, i32 61, i32 87, i32 67, i32 14, i32 82, ; 80..87
	i32 86, i32 35, i32 64, i32 6, i32 59, i32 56, i32 25, i32 24, ; 88..95
	i32 52, i32 9, i32 84, i32 1, i32 5, i32 76, i32 8, i32 28, ; 96..103
	i32 62, i32 64, i32 54, i32 70, i32 16, i32 30, i32 68, i32 41, ; 104..111
	i32 90, i32 13, i32 5, i32 93, i32 58, i32 77, i32 45, i32 49, ; 112..119
	i32 57, i32 74, i32 7, i32 29, i32 32, i32 83, i32 79, i32 19, ; 120..127
	i32 43, i32 26, i32 79, i32 75, i32 97, i32 18, i32 80, i32 24, ; 128..135
	i32 31, i32 48, i32 53, i32 11, i32 65, i32 2, i32 7, i32 91, ; 136..143
	i32 47, i32 99, i32 38, i32 36, i32 46, i32 91, i32 35, i32 66, ; 144..151
	i32 52, i32 81, i32 44, i32 13, i32 70, i32 89, i32 81, i32 26, ; 152..159
	i32 90, i32 49, i32 17, i32 92, i32 40, i32 36, i32 0, i32 27, ; 160..167
	i32 84, i32 97, i32 68, i32 69, i32 85, i32 31, i32 56, i32 17, ; 168..175
	i32 98, i32 37, i32 40, i32 94, i32 30, i32 65, i32 54, i32 39, ; 176..183
	i32 63, i32 23, i32 75, i32 44, i32 96, i32 78, i32 67, i32 93, ; 184..191
	i32 33, i32 99, i32 21, i32 15, i32 8, i32 60, i32 3, i32 60 ; 200..199
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
