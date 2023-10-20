// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_send_user_attribute_verification_code_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSendUserAttributeVerificationCodeOptions
    _$CognitoSendUserAttributeVerificationCodeOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoSendUserAttributeVerificationCodeOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$CognitoSendUserAttributeVerificationCodeOptionsToJson(
        CognitoSendUserAttributeVerificationCodeOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
