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
          ) ??
          const {},
    );

Map<String, dynamic> _$CognitoConfirmSignUpOptionsToJson(
        CognitoConfirmSignUpOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
