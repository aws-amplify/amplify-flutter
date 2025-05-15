// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'bucket_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BucketOutputs _$BucketOutputsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BucketOutputs',
      json,
      ($checkedConvert) {
        final val = BucketOutputs(
          name: $checkedConvert('name', (v) => v as String),
          bucketName: $checkedConvert('bucket_name', (v) => v as String),
          awsRegion: $checkedConvert('aws_region', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'bucketName': 'bucket_name',
        'awsRegion': 'aws_region',
      },
    );

Map<String, dynamic> _$BucketOutputsToJson(BucketOutputs instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bucket_name': instance.bucketName,
      'aws_region': instance.awsRegion,
    };
