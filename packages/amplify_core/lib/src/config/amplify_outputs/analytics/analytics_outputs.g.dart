// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'analytics_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsOutputs _$AnalyticsOutputsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AnalyticsOutputs', json, ($checkedConvert) {
      final val = AnalyticsOutputs(
        amazonPinpoint: $checkedConvert(
          'amazon_pinpoint',
          (v) => v == null
              ? null
              : AmazonPinpointOutputs.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    }, fieldKeyMap: const {'amazonPinpoint': 'amazon_pinpoint'});

Map<String, dynamic> _$AnalyticsOutputsToJson(AnalyticsOutputs instance) =>
    <String, dynamic>{
      if (instance.amazonPinpoint?.toJson() case final value?)
        'amazon_pinpoint': value,
    };
