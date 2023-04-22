// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:json_annotation/json_annotation.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pub_server/src/database.dart';
import 'package:yaml/yaml.dart';

part 'models.g.dart';

const serializable = JsonSerializable(
  explicitToJson: true,
  converters: [VersionSerializer()],
  fieldRename: FieldRename.snake,
);

class VersionSerializer implements JsonConverter<Version, String> {
  const VersionSerializer();

  @override
  Version fromJson(String json) => Version.parse(json);

  @override
  String toJson(Version object) => object.toString();
}

@serializable
class VersionResponse {
  VersionResponse({
    required this.version,
    required this.archiveUrl,
    required this.pubspec,
  });

  factory VersionResponse.fromJson(Map<String, dynamic> json) =>
      _$VersionResponseFromJson(json);

  factory VersionResponse.fromVersion(PubPackageVersion version) {
    return VersionResponse(
      version: version.version,
      archiveUrl: version.archiveUrl,
      pubspec: version.pubspec,
    );
  }

  final String archiveUrl;
  final Map<String, Object?> pubspec;
  final Version version;

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

  factory GetVersionResponse.fromVersion(PubPackageVersion version) {
    return GetVersionResponse(
      name: version.package,
      version: VersionResponse.fromVersion(version),
    );
  }

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

  factory PubPackage.fromDb(PackageWithVersions package) {
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
    required this.createdAt,
    required this.updatedAt,
  });

  PubPackageVersion.fromDb(PackageVersion version)
      : package = version.package,
        version = Version.parse(version.version),
        archiveUrl = version.archiveUrl,
        pubspec = (loadYaml(version.pubspec) as YamlMap).cast(),
        changelog = version.changelog,
        readme = version.readme,
        createdAt = version.createdAt,
        updatedAt = version.updatedAt;

  final String package;
  final Version version;
  final String archiveUrl;
  final Map<String, Object?> pubspec;
  final String? changelog;
  final String? readme;
  final DateTime createdAt;
  final DateTime updatedAt;
}
