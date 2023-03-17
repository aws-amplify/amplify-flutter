// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_in_with_web_ui_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignInWithWebUIOptions _$CognitoSignInWithWebUIOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignInWithWebUIOptions(
      isPreferPrivateSession: json['isPreferPrivateSession'] as bool? ?? false,
      browserPackageName: json['browserPackageName'] as String?,
    );

Map<String, dynamic> _$CognitoSignInWithWebUIOptionsToJson(
    CognitoSignInWithWebUIOptions instance) {
  final val = <String, dynamic>{
    'isPreferPrivateSession': instance.isPreferPrivateSession,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('browserPackageName', instance.browserPackageName);
  return val;
}

CognitoSignInWithWebUIPluginOptions
    _$CognitoSignInWithWebUIPluginOptionsFromJson(Map<String, dynamic> json) =>
        CognitoSignInWithWebUIPluginOptions(
          isPreferPrivateSession:
              json['isPreferPrivateSession'] as bool? ?? false,
          browserPackageName: json['browserPackageName'] as String?,
        );

Map<String, dynamic> _$CognitoSignInWithWebUIPluginOptionsToJson(
    CognitoSignInWithWebUIPluginOptions instance) {
  final val = <String, dynamic>{
    'isPreferPrivateSession': instance.isPreferPrivateSession,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('browserPackageName', instance.browserPackageName);
  return val;
}
