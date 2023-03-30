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
        CognitoResendUserAttributeConfirmationCodeOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
