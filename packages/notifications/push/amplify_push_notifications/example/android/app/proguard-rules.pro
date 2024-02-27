-keep class kotlinx.parcelize.Parcelize { *; }
-keep @kotlinx.parcelize.Parcelize class * { *; }
-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}
