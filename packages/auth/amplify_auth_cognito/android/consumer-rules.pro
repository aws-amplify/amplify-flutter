# Keep HostedUiException names: their simpleName is sent to Dart as the error
# code (e.g. "CANCELLED"), which R8 would otherwise rename in release builds (#6395).
-keep class com.amazonaws.amplify.amplify_auth_cognito.HostedUiException { *; }
-keep class com.amazonaws.amplify.amplify_auth_cognito.HostedUiException$* { *; }
