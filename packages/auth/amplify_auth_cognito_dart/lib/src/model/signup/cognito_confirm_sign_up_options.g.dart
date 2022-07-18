// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_up_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmSignUpOptions _$CognitoConfirmSignUpOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoConfirmSignUpOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoConfirmSignUpOptionsToJson(
    CognitoConfirmSignUpOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
