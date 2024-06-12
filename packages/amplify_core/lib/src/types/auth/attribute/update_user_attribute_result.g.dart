// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'update_user_attribute_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserAttributeResult _$UpdateUserAttributeResultFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateUserAttributeResult',
      json,
      ($checkedConvert) {
        final val = UpdateUserAttributeResult(
          isUpdated: $checkedConvert('isUpdated', (v) => v as bool),
          nextStep: $checkedConvert(
              'nextStep',
              (v) => AuthNextUpdateAttributeStep.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateUserAttributeResultToJson(
        UpdateUserAttributeResult instance) =>
    <String, dynamic>{
      'isUpdated': instance.isUpdated,
      'nextStep': instance.nextStep.toJson(),
    };
