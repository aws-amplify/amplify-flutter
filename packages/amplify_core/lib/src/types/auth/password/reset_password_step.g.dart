// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'reset_password_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordStep _$ResetPasswordStepFromJson(Map<String, dynamic> json) =>
    ResetPasswordStep(
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      codeDeliveryDetails: json['codeDeliveryDetails'] == null
          ? null
          : AuthCodeDeliveryDetails.fromJson(
              json['codeDeliveryDetails'] as Map<String, dynamic>),
      updateStep:
          $enumDecode(_$AuthResetPasswordStepEnumMap, json['updateStep']),
    );

Map<String, dynamic> _$ResetPasswordStepToJson(ResetPasswordStep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['updateStep'] = _$AuthResetPasswordStepEnumMap[instance.updateStep]!;
  return val;
}

const _$AuthResetPasswordStepEnumMap = {
  AuthResetPasswordStep.confirmResetPasswordWithCode:
      'confirmResetPasswordWithCode',
  AuthResetPasswordStep.done: 'done',
};
