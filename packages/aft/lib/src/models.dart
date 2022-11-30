// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';

import 'package:aft/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:yaml_edit/yaml_edit.dart';

part 'models.g.dart';

/// Packages which report as an example app, but should be considered as
/// publishable for some purposes.
const falsePositiveExamples = [
  'aft',
  'smithy_codegen',
  'smoke_test',
  'amplify_auth_cognito_test',
  'amplify_secure_storage_test',

  // Smithy Golden packages
  'aws_json1_0_v1',
  'aws_json1_1_v1',
  'rest_json1_v1',
  'rest_xml_v1',
  'rest_xml_with_namespace_v1',
  'aws_json1_0_v2',
  'aws_json1_1_v2',
  'rest_json1_v2',
  'rest_xml_v2',
  'rest_xml_with_namespace_v2',
];

/// The flavor of a package, e.g. Dart/Flutter.
enum PackageFlavor {
  flutter('Flutter', 'flutter'),
  dart('Dart', 'dart');

  const PackageFlavor(this.displayName, this.entrypoint);

  final String displayName;
  final String entrypoint;
}

/// {@template amplify_tools.package_info}
/// Information about a Dart/Flutter package in the repo.
/// {@endtemplate}
class PackageInfo
    with AWSEquatable<PackageInfo>
    implements Comparable<PackageInfo> {
  /// {@macro amplify_tools.package_info}
  const PackageInfo({
    required this.name,
    required this.path,
    required this.pubspecInfo,
    required this.flavor,
  });

  /// Returns the [PackageInfo] found in [dir].
  static PackageInfo? fromDirectory(Directory dir) {
    final pubspecInfo = dir.pubspec;
    if (pubspecInfo == null) {
      return null;
    }
    final pubspec = pubspecInfo.pubspec;
    return PackageInfo(
      name: pubspec.name,
      path: dir.path,
      pubspecInfo: pubspecInfo,
      flavor: pubspec.flavor,
    );
  }

  /// The name of the package.
  final String name;

  /// Absolute path to the package.
  final String path;

  /// The package's pubspec.
  final PubspecInfo pubspecInfo;

  /// The package flavor, e.g. Dart or Flutter.
  final PackageFlavor flavor;

  /// The unit test directory within the enclosing directory, if any
  Directory? get unitTestDirectory {
    final expectedPath = p.join(path, 'test');
    final unitTestDir = Directory(expectedPath);
    if (!unitTestDir.existsSync()) {
      return null;
    }
    return unitTestDir;
  }

  /// Whether the package needs `build_runner` to be run.
  ///
  /// Used as a pre-publish check to ensure that generated code is
  /// up-to-date before publishing.
  bool get needsBuildRunner {
    return pubspecInfo.pubspec.devDependencies.containsKey('build_runner') &&
        // aft should not be used to run `build_runner` in example projects
        (pubspecInfo.pubspec.publishTo != 'none' ||
            falsePositiveExamples.contains(name));
  }

  /// Skip package checks for Flutter packages when running in CI without
  /// Flutter, which may happen when testing Dart-only packages or specific
  /// Dart versions.
  bool get skipChecks {
    final isCI = getEnv('CI') == 'true' || getEnv('CI') == '1';
    return isCI &&
        getEnv('FLUTTER_ROOT') == null &&
        flavor == PackageFlavor.flutter;
  }

  @override
  List<Object?> get props => [
        name,
        path,
        pubspecInfo,
        flavor,
      ];

  @override
  int compareTo(PackageInfo other) {
    return path.compareTo(other.path);
  }
}

/// The package's pubspec and metadata.
class PubspecInfo {
  PubspecInfo({
    required this.pubspec,
    required this.pubspecYaml,
    required this.uri,
  });

  /// The package's parsed pubspec.
  final Pubspec pubspec;

  /// The URI of the `pubspec.yaml` file.
  final Uri uri;

  /// The package's pubspec as YAML.
  final String pubspecYaml;

  /// The pubspec as a YAML editor, used to alter dependencies or other info.
  late final YamlEditor pubspecYamlEditor = YamlEditor(pubspecYaml);
}

enum DependencyType {
  dependency('dependencies', 'dependency'),
  devDependency('dev_dependencies', 'dev dependency'),
  dependencyOverride('dependency_overrides', 'dependency override');

  const DependencyType(this.key, this.description);

  /// The key in the `pubspec.yaml`.
  final String key;

  /// The human description of a dependency of this type.
  final String description;
}

extension DirectoryX on Directory {
  /// The pubspec for the package in this directory, if any.
  PubspecInfo? get pubspec {
    final pubspecPath = p.join(path, 'pubspec.yaml');
    final pubspecFile = File(pubspecPath);
    if (!pubspecFile.existsSync()) {
      return null;
    }
    final pubspecYaml = pubspecFile.readAsStringSync();
    final pubspec = Pubspec.parse(pubspecYaml, sourceUrl: pubspecFile.uri);
    return PubspecInfo(
      pubspec: pubspec,
      pubspecYaml: pubspecYaml,
      uri: pubspecFile.uri,
    );
  }
}

extension PubspecX on Pubspec {
  /// The package flavor of this pubspec.
  PackageFlavor get flavor {
    if (dependencies.keys.contains('flutter')) {
      return PackageFlavor.flutter;
    }
    return PackageFlavor.dart;
  }
}

const yamlSerializable = JsonSerializable(
  anyMap: true,
  checked: true,
  disallowUnrecognizedKeys: true,
);

/// The typed representation of the `aft.yaml` file.
@yamlSerializable
@_VersionConstraintConverter()
class AftConfig {
  const AftConfig({
    this.dependencies = const {},
    this.ignore = const [],
  });

  factory AftConfig.fromJson(Map<Object?, Object?>? json) =>
      _$AftConfigFromJson(json ?? const {});

  final Map<String, VersionConstraint> dependencies;
  final List<String> ignore;

  Map<String, Object?> toJson() => _$AftConfigToJson(this);
}

/// Typed representation of the `sdk.yaml` file.
@yamlSerializable
@ShapeIdConverter()
class SdkConfig
    with
        AWSEquatable<SdkConfig>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const SdkConfig({
    this.ref = 'master',
    required this.apis,
  });

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const {});

  /// The `aws-models` ref to pull.
  ///
  /// Defaults to `master`.
  final String ref;
  final Map<String, List<ShapeId>?> apis;

  @override
  Map<String, Object?> toJson() => _$SdkConfigToJson(this);

  @override
  List<Object?> get props => [apis];

  @override
  String get runtimeTypeName => 'SdkConfig';
}

class _VersionConstraintConverter
    implements JsonConverter<VersionConstraint, String> {
  const _VersionConstraintConverter();

  @override
  VersionConstraint fromJson(String json) => VersionConstraint.parse(json);

  @override
  String toJson(VersionConstraint object) => object.toString();
}
