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
          buckets: $checkedConvert(
            'buckets',
            (v) => (v as List<dynamic>?)
                ?.map((e) => BucketOutputs.fromJson(e as Map<String, dynamic>))
                .toList(),
          ),
        );
        return val;
      },
      fieldKeyMap: const {
        'awsRegion': 'aws_region',
        'bucketName': 'bucket_name',
      },
    );

Map<String, dynamic> _$StorageOutputsToJson(StorageOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'bucket_name': instance.bucketName,
      if (instance.buckets?.map((e) => e.toJson()).toList() case final value?)
        'buckets': value,
    };
