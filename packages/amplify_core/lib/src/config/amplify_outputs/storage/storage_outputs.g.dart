// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'storage_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageOutputs _$StorageOutputsFromJson(Map<String, dynamic> json) =>
    StorageOutputs(
      awsRegion: json['aws_region'] as String,
      bucketName: json['bucket_name'] as String,
    );

Map<String, dynamic> _$StorageOutputsToJson(StorageOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'bucket_name': instance.bucketName,
    };
