// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amazon_pinpoint_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonPinpointOutputs _$AmazonPinpointOutputsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AmazonPinpointOutputs',
      json,
      ($checkedConvert) {
        final val = AmazonPinpointOutputs(
          awsRegion: $checkedConvert('aws_region', (v) => v as String),
          appId: $checkedConvert('app_id', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'awsRegion': 'aws_region', 'appId': 'app_id'},
    );

Map<String, dynamic> _$AmazonPinpointOutputsToJson(
        AmazonPinpointOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'app_id': instance.appId,
    };
