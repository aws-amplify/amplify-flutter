// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionResponse _$VersionResponseFromJson(Map<String, dynamic> json) =>
    VersionResponse(
      version: const VersionSerializer().fromJson(json['version'] as String),
      archiveUrl: json['archive_url'] as String,
      pubspec: json['pubspec'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$VersionResponseToJson(VersionResponse instance) =>
    <String, dynamic>{
      'archive_url': instance.archiveUrl,
      'pubspec': instance.pubspec,
      'version': const VersionSerializer().toJson(instance.version),
    };

GetVersionResponse _$GetVersionResponseFromJson(Map<String, dynamic> json) =>
    GetVersionResponse(
      name: json['name'] as String,
      version:
          VersionResponse.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetVersionResponseToJson(GetVersionResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version.toJson(),
    };

GetVersionsResponse _$GetVersionsResponseFromJson(Map<String, dynamic> json) =>
    GetVersionsResponse(
      name: json['name'] as String,
      latest: VersionResponse.fromJson(json['latest'] as Map<String, dynamic>),
      versions: (json['versions'] as List<dynamic>)
          .map((e) => VersionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetVersionsResponseToJson(
        GetVersionsResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest.toJson(),
      'versions': instance.versions.map((e) => e.toJson()).toList(),
    };
