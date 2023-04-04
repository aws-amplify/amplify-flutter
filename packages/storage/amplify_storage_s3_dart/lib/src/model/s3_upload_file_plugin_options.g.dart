// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_upload_file_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3UploadFilePluginOptions _$S3UploadFilePluginOptionsFromJson(
        Map<String, dynamic> json) =>
    S3UploadFilePluginOptions(
      getProperties: json['getProperties'] as bool? ?? false,
      useAccelerateEndpoint: json['useAccelerateEndpoint'] as bool? ?? false,
    );

Map<String, dynamic> _$S3UploadFilePluginOptionsToJson(
        S3UploadFilePluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
