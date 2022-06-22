// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_out_with_web_ui_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignOutWithWebUIOptions _$CognitoSignOutWithWebUIOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignOutWithWebUIOptions(
      isPreferPrivateSession: json['isPreferPrivateSession'] as bool? ?? false,
      browserPackageName: json['browserPackageName'] as String?,
      globalSignOut: json['globalSignOut'] as bool? ?? false,
    );

Map<String, dynamic> _$CognitoSignOutWithWebUIOptionsToJson(
    CognitoSignOutWithWebUIOptions instance) {
  final val = <String, dynamic>{
    'globalSignOut': instance.globalSignOut,
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
