// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'pinpoint_targeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoPinpointTargetingConfig _$CognitoPinpointTargetingConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoPinpointTargetingConfig',
      json,
      ($checkedConvert) {
        final val = CognitoPinpointTargetingConfig(
          region: $checkedConvert('Region', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'region': 'Region'},
    );

Map<String, dynamic> _$CognitoPinpointTargetingConfigToJson(
        CognitoPinpointTargetingConfig instance) =>
    <String, dynamic>{
      'Region': instance.region,
    };
