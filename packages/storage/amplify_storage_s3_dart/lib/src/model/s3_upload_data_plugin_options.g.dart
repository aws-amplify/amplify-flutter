// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_upload_data_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3UploadDataPluginOptions _$S3UploadDataPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    S3UploadDataPluginOptions(
      getProperties: json['getProperties'] as bool? ?? false,
      useAccelerateEndpoint: json['useAccelerateEndpoint'] as bool? ?? false,
    );

Map<String, dynamic> _$S3UploadDataPluginOptionsToJson(
        S3UploadDataPluginOptions instance) =>
    <String, dynamic>{
      'getProperties': instance.getProperties,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
