// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_upload_file_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3UploadFilePluginOptions _$S3UploadFilePluginOptionsFromJson(
        Map<String, dynamic> json) =>
    S3UploadFilePluginOptions(
      getProperties: json['getProperties'] as bool? ?? false,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      useAccelerateEndpoint: json['useAccelerateEndpoint'] as bool? ?? false,
    );

Map<String, dynamic> _$S3UploadFilePluginOptionsToJson(
    S3UploadFilePluginOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  val['getProperties'] = instance.getProperties;
  val['useAccelerateEndpoint'] = instance.useAccelerateEndpoint;
  return val;
}
