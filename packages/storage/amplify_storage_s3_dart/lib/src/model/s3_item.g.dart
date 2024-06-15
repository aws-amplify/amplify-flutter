// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3Item _$S3ItemFromJson(Map<String, dynamic> json) => $checkedCreate(
      'S3Item',
      json,
      ($checkedConvert) {
        final val = S3Item(
          path: $checkedConvert('path', (v) => v as String),
          size: $checkedConvert('size', (v) => v as int?),
          lastModified: $checkedConvert('lastModified',
              (v) => v == null ? null : DateTime.parse(v as String)),
          eTag: $checkedConvert('eTag', (v) => v as String?),
          metadata: $checkedConvert(
              'metadata',
              (v) =>
                  (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  ) ??
                  const <String, String>{}),
          versionId: $checkedConvert('versionId', (v) => v as String?),
          contentType: $checkedConvert('contentType', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3ItemToJson(S3Item instance) {
  final val = <String, dynamic>{
    'path': instance.path,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('size', instance.size);
  writeNotNull('lastModified', instance.lastModified?.toIso8601String());
  writeNotNull('eTag', instance.eTag);
  val['metadata'] = instance.metadata;
  writeNotNull('versionId', instance.versionId);
  writeNotNull('contentType', instance.contentType);
  return val;
}
