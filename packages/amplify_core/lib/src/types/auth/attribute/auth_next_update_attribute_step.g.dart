// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_next_update_attribute_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthNextUpdateAttributeStep _$AuthNextUpdateAttributeStepFromJson(
        Map<String, dynamic> json) =>
    AuthNextUpdateAttributeStep(
      additionalInfo: (json['additionalInfo'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      codeDeliveryDetails: json['codeDeliveryDetails'] == null
          ? null
          : AuthCodeDeliveryDetails.fromJson(
              json['codeDeliveryDetails'] as Map<String, dynamic>),
      updateAttributeStep: json['updateAttributeStep'] as String,
    );

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
  val['updateAttributeStep'] = instance.updateAttributeStep;
  return val;
}
