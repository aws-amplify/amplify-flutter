// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_resend_sign_up_code_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResendSignUpCodeOptions _$CognitoResendSignUpCodeOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoResendSignUpCodeOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoResendSignUpCodeOptionsToJson(
    CognitoResendSignUpCodeOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
