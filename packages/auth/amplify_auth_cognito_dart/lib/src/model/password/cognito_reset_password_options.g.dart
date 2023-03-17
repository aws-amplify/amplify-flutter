// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_reset_password_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResetPasswordOptions _$CognitoResetPasswordOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoResetPasswordOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoResetPasswordOptionsToJson(
        CognitoResetPasswordOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };

CognitoResetPasswordPluginOptions _$CognitoResetPasswordPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoResetPasswordPluginOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoResetPasswordPluginOptionsToJson(
        CognitoResetPasswordPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
