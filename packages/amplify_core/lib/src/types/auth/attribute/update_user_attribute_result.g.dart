// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_attribute_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserAttributeResult _$UpdateUserAttributeResultFromJson(
        Map<String, dynamic> json) =>
    UpdateUserAttributeResult(
      isUpdated: json['isUpdated'] as bool,
      nextStep: AuthNextUpdateAttributeStep.fromJson(
          json['nextStep'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UpdateUserAttributeResultToJson(
        UpdateUserAttributeResult instance) =>
    <String, dynamic>{
      'isUpdated': instance.isUpdated,
      'nextStep': instance.nextStep.toJson(),
    };
