// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amazon_connect_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmazonConnectOutputs _$AmazonConnectOutputsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AmazonConnectOutputs', json, ($checkedConvert) {
  final val = AmazonConnectOutputs(
    awsRegion: $checkedConvert('aws_region', (v) => v as String),
    endpoint: $checkedConvert('endpoint', (v) => v as String),
  );
  return val;
}, fieldKeyMap: const {'awsRegion': 'aws_region'});

Map<String, dynamic> _$AmazonConnectOutputsToJson(
  AmazonConnectOutputs instance,
) => <String, dynamic>{
  'aws_region': instance.awsRegion,
  'endpoint': instance.endpoint,
};
