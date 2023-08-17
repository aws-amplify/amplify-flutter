// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pub_server/src/database.dart';
import 'package:yaml/yaml.dart';

part 'models.g.dart';

const serializable = JsonSerializable(
  explicitToJson: true,
  converters: [VersionSerializer(), DateTimeSerializer()],
  fieldRename: FieldRename.snake,
);

class VersionSerializer implements JsonConverter<Version, String> {
  const VersionSerializer();

  @override
  Version fromJson(String json) => Version.parse(json);

  @override
  String toJson(Version object) => object.toString();
}

class DateTimeSerializer implements JsonConverter<DateTime, String> {
  const DateTimeSerializer();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}

@serializable
class VersionResponse {
  VersionResponse({
    required this.version,
    required this.archiveUrl,
    required this.pubspec,
    required this.published,
  });

  factory VersionResponse.fromJson(Map<String, dynamic> json) =>
      _$VersionResponseFromJson(json);

  factory VersionResponse.fromVersion(PubPackageVersion version) {
    return VersionResponse(
      version: version.version,
      archiveUrl: version.archiveUrl,
      pubspec: version.pubspec,
      published: version.published,
    );
  }

  final String archiveUrl;
  final Map<String, Object?> pubspec;
  final Version version;
  final DateTime published;

  Map<String, dynamic> toJson() => _$VersionResponseToJson(this);
}

@serializable
class GetVersionResponse {
  GetVersionResponse({
    required this.name,
    required this.version,
  });

  factory GetVersionResponse.fromJson(Map<String, dynamic> json) =>
      _$GetVersionResponseFromJson(json);

  final String name;
  final VersionResponse version;

  Map<String, dynamic> toJson() => _$GetVersionResponseToJson(this);
}

@serializable
class GetVersionsResponse {
  GetVersionsResponse({
    required this.name,
    required this.latest,
    required this.versions,
  });

  factory GetVersionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetVersionsResponseFromJson(json);

  final String name;
  final VersionResponse latest;
  final List<VersionResponse> versions;

  Map<String, dynamic> toJson() => _$GetVersionsResponseToJson(this);
}

class PubPackage {
  const PubPackage({
    required this.name,
    required this.latest,
    required this.versions,
  });

  factory PubPackage.fromDb(DatabasePackage package) {
    return PubPackage(
      name: package.package.name,
      latest: PubPackageVersion.fromDb(package.latest),
      versions: package.versions.map(PubPackageVersion.fromDb).toList(),
    );
  }

  final String name;
  final PubPackageVersion latest;
  final List<PubPackageVersion> versions;
}

class PubPackageVersion {
  const PubPackageVersion({
    required this.package,
    required this.version,
    required this.archiveUrl,
    required this.pubspec,
    required this.changelog,
    required this.readme,
    required this.published,
  });

  PubPackageVersion.fromDb(PackageVersion version)
      : package = version.package,
        version = Version.parse(version.version),
        archiveUrl = version.archiveUrl,
        pubspec = (loadYaml(version.pubspec) as YamlMap).cast(),
        changelog = version.changelog,
        readme = version.readme,
        published = version.published;

  final String package;
  final Version version;
  final String archiveUrl;
  final Map<String, Object?> pubspec;
  final String? changelog;
  final String? readme;
  final DateTime published;
}
