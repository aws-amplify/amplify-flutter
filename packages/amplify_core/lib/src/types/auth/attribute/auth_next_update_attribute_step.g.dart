// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_update_attribute_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AuthNextUpdateAttributeStepToJson(
    AuthNextUpdateAttributeStep instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('additionalInfo', instance.additionalInfo);
  writeNotNull('codeDeliveryDetails', instance.codeDeliveryDetails?.toJson());
  val['updateAttributeStep'] =
      _$AuthUpdateAttributeStepEnumMap[instance.updateAttributeStep]!;
  return val;
}

const _$AuthUpdateAttributeStepEnumMap = {
  AuthUpdateAttributeStep.confirmAttributeWithCode: 'confirmAttributeWithCode',
  AuthUpdateAttributeStep.done: 'done',
};
