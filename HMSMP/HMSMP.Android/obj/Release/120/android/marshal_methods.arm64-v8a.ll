; ModuleID = 'obj\Release\120\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Release\120\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [116 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 17
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 43
	i64 702024105029695270, ; 2: System.Drawing.Common => 0x9be17343c0e7726 => 56
	i64 720058930071658100, ; 3: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 36
	i64 872800313462103108, ; 4: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 34
	i64 943650302560566006, ; 5: ExoPlayer.Dash.dll => 0xd1884f3544ffaf6 => 4
	i64 996343623809489702, ; 6: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 51
	i64 1000557547492888992, ; 7: Mono.Security.dll => 0xde2b1c9cba651a0 => 57
	i64 1120440138749646132, ; 8: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 53
	i64 1400031058434376889, ; 9: Plugin.Permissions.dll => 0x136de8d4787ec4b9 => 20
	i64 1425944114962822056, ; 10: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1435054553028609000, ; 11: ExoPlayer.Ext.MediaSession => 0x13ea56834293c3e8 => 6
	i64 1624659445732251991, ; 12: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 27
	i64 1751582526438497037, ; 13: FFmpegMediaMetadataRetriever.dll => 0x184edf070b25db0d => 10
	i64 1795316252682057001, ; 14: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 28
	i64 1836611346387731153, ; 15: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 43
	i64 1842155237705951702, ; 16: MediaManager.FFmpegMediaMetadataRetriever.dll => 0x1990a66db496a9d6 => 15
	i64 1981742497975770890, ; 17: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 39
	i64 1986553961460820075, ; 18: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 47
	i64 2262844636196693701, ; 19: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 34
	i64 2329709569556905518, ; 20: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 38
	i64 2470498323731680442, ; 21: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 30
	i64 2547086958574651984, ; 22: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 26
	i64 2592350477072141967, ; 23: System.Xml.dll => 0x23f9e10627330e8f => 24
	i64 2624866290265602282, ; 24: mscorlib.dll => 0x246d65fbde2db8ea => 18
	i64 2801558180824670388, ; 25: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 19
	i64 2960931600190307745, ; 26: Xamarin.Forms.Core => 0x2917579a49927da1 => 49
	i64 3017704767998173186, ; 27: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 53
	i64 3289520064315143713, ; 28: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 37
	i64 3469002468507867831, ; 29: MediaManager.Forms.dll => 0x30245f5d945d5ab7 => 16
	i64 3522470458906976663, ; 30: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 44
	i64 3531994851595924923, ; 31: System.Numerics => 0x31042a9aade235bb => 23
	i64 3609787854626478660, ; 32: Plugin.CurrentActivity => 0x32188aeda587da44 => 19
	i64 3727469159507183293, ; 33: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 42
	i64 4525561845656915374, ; 34: System.ServiceModel.Internals => 0x3ece06856b710dae => 55
	i64 4636684751163556186, ; 35: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 45
	i64 4794310189461587505, ; 36: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 26
	i64 4795410492532947900, ; 37: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 44
	i64 5142919913060024034, ; 38: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 50
	i64 5203618020066742981, ; 39: Xamarin.Essentials => 0x4836f704f0e652c5 => 48
	i64 5272717148637201210, ; 40: ExoPlayer.UI => 0x492c744f85a1833a => 9
	i64 5348796042099802469, ; 41: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 41
	i64 5389233738419247641, ; 42: ExoPlayer.UI.dll => 0x4aca67881e079a19 => 9
	i64 5507995362134886206, ; 43: System.Core.dll => 0x4c705499688c873e => 21
	i64 5703838680789880885, ; 44: ExoPlayer.SmoothStreaming.dll => 0x4f281b0f589d1035 => 8
	i64 6085203216496545422, ; 45: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 51
	i64 6086316965293125504, ; 46: FormsViewGroup.dll => 0x5476f10882baef80 => 11
	i64 6220802374652022071, ; 47: HMSMP.dll => 0x5654baccef0a4d37 => 12
	i64 6401687960814735282, ; 48: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 38
	i64 6548213210057960872, ; 49: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 33
	i64 6597152804937602598, ; 50: ExoPlayer.Dash => 0x5b8dcb85db471626 => 4
	i64 6659513131007730089, ; 51: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 36
	i64 7622925023546851381, ; 52: HMSMP.Android.dll => 0x69ca11ebc1f24035 => 0
	i64 7635363394907363464, ; 53: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 49
	i64 7637365915383206639, ; 54: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 48
	i64 7654504624184590948, ; 55: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7836164640616011524, ; 56: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 27
	i64 8083354569033831015, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 37
	i64 8167236081217502503, ; 58: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 13
	i64 8626175481042262068, ; 59: Java.Interop => 0x77b654e585b55834 => 13
	i64 8690461831448123647, ; 60: ExoPlayer.Hls => 0x789ab8fddd8e58ff => 7
	i64 9225789786819666723, ; 61: ExoPlayer.SmoothStreaming => 0x800896ee47d02323 => 8
	i64 9324707631942237306, ; 62: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 28
	i64 9407713158712485736, ; 63: HMSMP.Android => 0x828ee9460dd36768 => 0
	i64 9662334977499516867, ; 64: System.Numerics.dll => 0x8617827802b0cfc3 => 23
	i64 9678050649315576968, ; 65: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 30
	i64 9711637524876806384, ; 66: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 41
	i64 9722368759809762166, ; 67: ExoPlayer.Core => 0x86eccae02fd0e376 => 3
	i64 9808709177481450983, ; 68: Mono.Android.dll => 0x881f890734e555e7 => 17
	i64 9944345468791389265, ; 69: ExoPlayer.Core.dll => 0x8a01698437137c51 => 3
	i64 9998632235833408227, ; 70: Mono.Security => 0x8ac2470b209ebae3 => 57
	i64 10038780035334861115, ; 71: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10075958396420552332, ; 72: ExoPlayer => 0x8bd4fec6de42f68c => 5
	i64 10229024438826829339, ; 73: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 33
	i64 10430153318873392755, ; 74: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 31
	i64 11023048688141570732, ; 75: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 76: System.Xml => 0x992e31d0412bf7fc => 24
	i64 11122995063473561350, ; 77: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 47
	i64 11135835130310974646, ; 78: MediaManager.FFmpegMediaMetadataRetriever => 0x9a8a6f0d03805cb6 => 15
	i64 11162124722117608902, ; 79: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 46
	i64 11340910727871153756, ; 80: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 32
	i64 11387716764763632936, ; 81: ExoPlayer.dll => 0x9e094c10167f3528 => 5
	i64 11529969570048099689, ; 82: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 46
	i64 12451044538927396471, ; 83: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 35
	i64 12466513435562512481, ; 84: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 40
	i64 12538491095302438457, ; 85: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 29
	i64 12963446364377008305, ; 86: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 56
	i64 13016036766500420526, ; 87: TagLibSharp => 0xb4a2407a2aae7bae => 25
	i64 13370592475155966277, ; 88: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13454009404024712428, ; 89: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 54
	i64 13572454107664307259, ; 90: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 42
	i64 13623872570554826473, ; 91: MediaManager.Forms => 0xbd11b7eba91bbee9 => 16
	i64 13959074834287824816, ; 92: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 35
	i64 13967638549803255703, ; 93: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 50
	i64 13982638193275851912, ; 94: ExoPlayer.Hls.dll => 0xc20c4f5a85045488 => 7
	i64 14124974489674258913, ; 95: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 29
	i64 14230721242854339319, ; 96: MediaManager.dll => 0xc57dad92a1f032f7 => 14
	i64 14263654270978673267, ; 97: MediaManager => 0xc5f2adfcc4aaca73 => 14
	i64 14792063746108907174, ; 98: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 54
	i64 14804023792409196729, ; 99: HMSMP => 0xcd72753440fb38b9 => 12
	i64 14852515768018889994, ; 100: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 32
	i64 15310474576322227775, ; 101: ExoPlayer.Ext.MediaSession.dll => 0xd479bb824055ee3f => 6
	i64 15370334346939861994, ; 102: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 31
	i64 15609085926864131306, ; 103: System.dll => 0xd89e9cf3334914ea => 22
	i64 15782572795770306012, ; 104: FFmpegMediaMetadataRetriever => 0xdb06f6568da1fddc => 10
	i64 15810740023422282496, ; 105: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 52
	i64 16154507427712707110, ; 106: System => 0xe03056ea4e39aa26 => 22
	i64 16292659890489081673, ; 107: TagLibSharp.dll => 0xe21b27d922db3f49 => 25
	i64 16833383113903931215, ; 108: mscorlib => 0xe99c30c1484d7f4f => 18
	i64 16895806301542741427, ; 109: Plugin.Permissions => 0xea79f6503d42f5b3 => 20
	i64 17704177640604968747, ; 110: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 40
	i64 17710060891934109755, ; 111: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 39
	i64 17882897186074144999, ; 112: FormsViewGroup => 0xf82cd03e3ac830e7 => 11
	i64 17892495832318972303, ; 113: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 52
	i64 18129453464017766560, ; 114: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 55
	i64 18380184030268848184 ; 115: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 45
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [116 x i32] [
	i32 17, i32 43, i32 56, i32 36, i32 34, i32 4, i32 51, i32 57, ; 0..7
	i32 53, i32 20, i32 2, i32 6, i32 27, i32 10, i32 28, i32 43, ; 8..15
	i32 15, i32 39, i32 47, i32 34, i32 38, i32 30, i32 26, i32 24, ; 16..23
	i32 18, i32 19, i32 49, i32 53, i32 37, i32 16, i32 44, i32 23, ; 24..31
	i32 19, i32 42, i32 55, i32 45, i32 26, i32 44, i32 50, i32 48, ; 32..39
	i32 9, i32 41, i32 9, i32 21, i32 8, i32 51, i32 11, i32 12, ; 40..47
	i32 38, i32 33, i32 4, i32 36, i32 0, i32 49, i32 48, i32 1, ; 48..55
	i32 27, i32 37, i32 13, i32 13, i32 7, i32 8, i32 28, i32 0, ; 56..63
	i32 23, i32 30, i32 41, i32 3, i32 17, i32 3, i32 57, i32 1, ; 64..71
	i32 5, i32 33, i32 31, i32 21, i32 24, i32 47, i32 15, i32 46, ; 72..79
	i32 32, i32 5, i32 46, i32 35, i32 40, i32 29, i32 56, i32 25, ; 80..87
	i32 2, i32 54, i32 42, i32 16, i32 35, i32 50, i32 7, i32 29, ; 88..95
	i32 14, i32 14, i32 54, i32 12, i32 32, i32 6, i32 31, i32 22, ; 96..103
	i32 10, i32 52, i32 22, i32 25, i32 18, i32 20, i32 40, i32 39, ; 104..111
	i32 11, i32 52, i32 55, i32 45 ; 112..115
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
