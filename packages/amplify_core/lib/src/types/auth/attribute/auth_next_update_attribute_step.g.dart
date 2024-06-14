// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_update_attribute_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextUpdateAttributeStep _$AuthNextUpdateAttributeStepFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthNextUpdateAttributeStep',
      json,
      ($checkedConvert) {
        final val = AuthNextUpdateAttributeStep(
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
          updateAttributeStep: $checkedConvert('updateAttributeStep',
              (v) => $enumDecode(_$AuthUpdateAttributeStepEnumMap, v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$AuthNextUpdateAttributeStepToJson(
    AuthNextUpdateAttributeStep instance) {
  final val = <String, dynamic>{
    'additionalInfo': instance.additionalInfo,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['updateAttributeStep'] =
      _$AuthUpdateAttributeStepEnumMap[instance.updateAttributeStep]!;
  return val;
}

const _$AuthUpdateAttributeStepEnumMap = {
  AuthUpdateAttributeStep.confirmAttributeWithCode: 'confirmAttributeWithCode',
  AuthUpdateAttributeStep.done: 'done',
};
