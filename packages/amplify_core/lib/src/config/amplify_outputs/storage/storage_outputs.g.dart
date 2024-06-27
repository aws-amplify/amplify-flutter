// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'storage_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageOutputs _$StorageOutputsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StorageOutputs',
      json,
      ($checkedConvert) {
        final val = StorageOutputs(
          awsRegion: $checkedConvert('aws_region', (v) => v as String),
          bucketName: $checkedConvert('bucket_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {
        'awsRegion': 'aws_region',
        'bucketName': 'bucket_name'
      },
    );

Map<String, dynamic> _$StorageOutputsToJson(StorageOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'bucket_name': instance.bucketName,
    };
