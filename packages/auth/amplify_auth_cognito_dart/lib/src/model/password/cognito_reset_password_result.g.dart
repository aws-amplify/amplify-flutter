// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_reset_password_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResetPasswordResult _$CognitoResetPasswordResultFromJson(
        Map<String, dynamic> json) =>
    CognitoResetPasswordResult(
      isPasswordReset: json['isPasswordReset'] as bool,
      nextStep:
          ResetPasswordStep.fromJson(json['nextStep'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CognitoResetPasswordResultToJson(
        CognitoResetPasswordResult instance) =>
    <String, dynamic>{
      'isPasswordReset': instance.isPasswordReset,
      'nextStep': instance.nextStep.toJson(),
    };
