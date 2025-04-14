// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3Item _$S3ItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('S3Item', json, ($checkedConvert) {
      final val = S3Item(
        path: $checkedConvert('path', (v) => v as String),
        size: $checkedConvert('size', (v) => (v as num?)?.toInt()),
        lastModified: $checkedConvert(
          'lastModified',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        eTag: $checkedConvert('eTag', (v) => v as String?),
        metadata: $checkedConvert(
          'metadata',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const <String, String>{},
        ),
        versionId: $checkedConvert('versionId', (v) => v as String?),
        contentType: $checkedConvert('contentType', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$S3ItemToJson(S3Item instance) => <String, dynamic>{
  'path': instance.path,
  if (instance.size case final value?) 'size': value,
  if (instance.lastModified?.toIso8601String() case final value?)
    'lastModified': value,
  if (instance.eTag case final value?) 'eTag': value,
  'metadata': instance.metadata,
  if (instance.versionId case final value?) 'versionId': value,
  if (instance.contentType case final value?) 'contentType': value,
};
