// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_resend_user_attribute_confirmation_code_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResendUserAttributeConfirmationCodeOptions
    _$CognitoResendUserAttributeConfirmationCodeOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoResendUserAttributeConfirmationCodeOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$CognitoResendUserAttributeConfirmationCodeOptionsToJson(
    CognitoResendUserAttributeConfirmationCodeOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
