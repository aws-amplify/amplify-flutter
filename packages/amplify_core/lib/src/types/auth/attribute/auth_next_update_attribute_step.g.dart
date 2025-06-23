// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_update_attribute_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextUpdateAttributeStep _$AuthNextUpdateAttributeStepFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AuthNextUpdateAttributeStep', json, ($checkedConvert) {
  final val = AuthNextUpdateAttributeStep(
    additionalInfo: $checkedConvert(
      'additionalInfo',
      (v) =>
          (v as Map<String, dynamic>?)?.map((k, e) => MapEntry(k, e as String)),
    ),
    codeDeliveryDetails: $checkedConvert(
      'codeDeliveryDetails',
      (v) => v == null
          ? null
          : AuthCodeDeliveryDetails.fromJson(v as Map<String, dynamic>),
    ),
    updateAttributeStep: $checkedConvert(
      'updateAttributeStep',
      (v) => $enumDecode(_$AuthUpdateAttributeStepEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$AuthNextUpdateAttributeStepToJson(
  AuthNextUpdateAttributeStep instance,
) => <String, dynamic>{
  'additionalInfo': instance.additionalInfo,
  if (instance.codeDeliveryDetails?.toJson() case final value?)
    'codeDeliveryDetails': value,
  'updateAttributeStep':
      _$AuthUpdateAttributeStepEnumMap[instance.updateAttributeStep]!,
};

const _$AuthUpdateAttributeStepEnumMap = {
  AuthUpdateAttributeStep.confirmAttributeWithCode: 'confirmAttributeWithCode',
  AuthUpdateAttributeStep.done: 'done',
};
