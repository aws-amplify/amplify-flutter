// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_get_url_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3GetUrlPluginOptions _$S3GetUrlPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'S3GetUrlPluginOptions',
      json,
      ($checkedConvert) {
        final val = S3GetUrlPluginOptions(
          expiresIn: $checkedConvert(
              'expiresIn',
              (v) => v == null
                  ? const Duration(minutes: 15)
                  : Duration(microseconds: v as int)),
          validateObjectExistence: $checkedConvert(
              'validateObjectExistence', (v) => v as bool? ?? false),
          useAccelerateEndpoint: $checkedConvert(
              'useAccelerateEndpoint', (v) => v as bool? ?? false),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3GetUrlPluginOptionsToJson(
        S3GetUrlPluginOptions instance) =>
    <String, dynamic>{
      'expiresIn': instance.expiresIn.inMicroseconds,
      'validateObjectExistence': instance.validateObjectExistence,
      'useAccelerateEndpoint': instance.useAccelerateEndpoint,
    };
