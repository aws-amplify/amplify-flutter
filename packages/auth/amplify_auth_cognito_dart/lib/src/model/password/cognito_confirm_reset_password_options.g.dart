// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_reset_password_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmResetPasswordOptions _$CognitoConfirmResetPasswordOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoConfirmResetPasswordOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoConfirmResetPasswordOptionsToJson(
    CognitoConfirmResetPasswordOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
