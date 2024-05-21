// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amazon_pinpoint_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonPinpointOutputs _$AmazonPinpointOutputsFromJson(
        Map<String, dynamic> json) =>
    AmazonPinpointOutputs(
      awsRegion: json['aws_region'] as String,
      appId: json['app_id'] as String,
    );

Map<String, dynamic> _$AmazonPinpointOutputsToJson(
        AmazonPinpointOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'app_id': instance.appId,
    };
