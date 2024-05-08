// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'analytics_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsOutputs _$AnalyticsOutputsFromJson(Map<String, dynamic> json) =>
    AnalyticsOutputs(
      amazonPinpoint: json['amazon_pinpoint'] == null
          ? null
          : AmazonPinpoint.fromJson(
              json['amazon_pinpoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnalyticsOutputsToJson(AnalyticsOutputs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amazon_pinpoint', instance.amazonPinpoint?.toJson());
  return val;
}
