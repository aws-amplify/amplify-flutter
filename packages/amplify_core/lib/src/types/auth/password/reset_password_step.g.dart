// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'reset_password_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordStep _$ResetPasswordStepFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ResetPasswordStep', json, ($checkedConvert) {
      final val = ResetPasswordStep(
        additionalInfo: $checkedConvert(
          'additionalInfo',
          (v) => (v as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        ),
        codeDeliveryDetails: $checkedConvert(
          'codeDeliveryDetails',
          (v) => v == null
              ? null
              : AuthCodeDeliveryDetails.fromJson(v as Map<String, dynamic>),
        ),
        updateStep: $checkedConvert(
          'updateStep',
          (v) => $enumDecode(_$AuthResetPasswordStepEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ResetPasswordStepToJson(ResetPasswordStep instance) =>
    <String, dynamic>{
      'additionalInfo': instance.additionalInfo,
      if (instance.codeDeliveryDetails?.toJson() case final value?)
        'codeDeliveryDetails': value,
      'updateStep': _$AuthResetPasswordStepEnumMap[instance.updateStep]!,
    };

const _$AuthResetPasswordStepEnumMap = {
  AuthResetPasswordStep.confirmResetPasswordWithCode:
      'confirmResetPasswordWithCode',
  AuthResetPasswordStep.done: 'done',
};
