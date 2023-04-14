// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3Item _$S3ItemFromJson(Map<String, dynamic> json) => S3Item(
      key: json['key'] as String,
      size: json['size'] as int?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      eTag: json['eTag'] as String?,
      metadata: (json['metadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      versionId: json['versionId'] as String?,
      contentType: json['contentType'] as String?,
    );

Map<String, dynamic> _$S3ItemToJson(S3Item instance) {
  final val = <String, dynamic>{
    'key': instance.key,
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
