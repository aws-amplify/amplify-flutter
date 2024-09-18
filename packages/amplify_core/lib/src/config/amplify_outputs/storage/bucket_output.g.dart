// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'bucket_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BucketOutput _$BucketOutputFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'BucketOutput',
      json,
      ($checkedConvert) {
        final val = BucketOutput(
          name: $checkedConvert('name', (v) => v as String),
          bucketName: $checkedConvert('bucket_name', (v) => v as String),
          awsRegion: $checkedConvert('aws_region', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'bucketName': 'bucket_name',
        'awsRegion': 'aws_region'
      },
    );

Map<String, dynamic> _$BucketOutputToJson(BucketOutput instance) =>
    <String, dynamic>{
      'name': instance.name,
      'bucket_name': instance.bucketName,
      'aws_region': instance.awsRegion,
    };
