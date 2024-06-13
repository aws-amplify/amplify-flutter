// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'reset_password_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordStep _$ResetPasswordStepFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ResetPasswordStep',
      json,
      ($checkedConvert) {
        final val = ResetPasswordStep(
          additionalInfo: $checkedConvert(
              'additionalInfo',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          codeDeliveryDetails: $checkedConvert(
              'codeDeliveryDetails',
              (v) => v == null
                  ? null
                  : AuthCodeDeliveryDetails.fromJson(
                      v as Map<String, dynamic>)),
          updateStep: $checkedConvert('updateStep',
              (v) => $enumDecode(_$AuthResetPasswordStepEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResetPasswordStepToJson(ResetPasswordStep instance) {
  final val = <String, dynamic>{
    'additionalInfo': instance.additionalInfo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['updateStep'] = _$AuthResetPasswordStepEnumMap[instance.updateStep]!;
  return val;
}

const _$AuthResetPasswordStepEnumMap = {
  AuthResetPasswordStep.confirmResetPasswordWithCode:
      'confirmResetPasswordWithCode',
  AuthResetPasswordStep.done: 'done',
};
