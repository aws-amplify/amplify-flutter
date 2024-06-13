// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_reset_password_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResetPasswordResult _$CognitoResetPasswordResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoResetPasswordResult',
      json,
      ($checkedConvert) {
        final val = CognitoResetPasswordResult(
          isPasswordReset: $checkedConvert('isPasswordReset', (v) => v as bool),
          nextStep: $checkedConvert('nextStep',
              (v) => ResetPasswordStep.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoResetPasswordResultToJson(
        CognitoResetPasswordResult instance) =>
    <String, dynamic>{
      'isPasswordReset': instance.isPasswordReset,
      'nextStep': instance.nextStep.toJson(),
    };
