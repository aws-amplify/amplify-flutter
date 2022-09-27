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
const falsePositiveExamples = ['aft', 'smithy_codegen'];

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
    required this.usesMonoRepo,
    required this.pubspecInfo,
    required this.flavor,
  });

  /// The name of the package.
  final String name;

  /// Absolute path to the package.
  final String path;

  /// Whether the package uses the mono_repo tool.
  final bool usesMonoRepo;

  /// The package's pubspec.
  final PubspecInfo pubspecInfo;

  /// The package flavor, e.g. Dart or Flutter.
  final PackageFlavor flavor;

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

  @override
  List<Object?> get props => [
        name,
        path,
        usesMonoRepo,
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
  /// Whether the package in this directory uses the `mono_repo` tool.
  bool get usesMonoRepo {
    final monoPkgPath = p.join(path, 'mono_pkg.yaml');
    return File(monoPkgPath).existsSync();
  }

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
class SdkConfig with AWSSerializable, AWSEquatable<SdkConfig> {
  const SdkConfig({
    required this.apis,
  });

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const {});

  final Map<String, List<ShapeId>> apis;

  @override
  Map<String, Object?> toJson() => _$SdkConfigToJson(this);

  @override
  List<Object?> get props => [apis];
}

class _VersionConstraintConverter
    implements JsonConverter<VersionConstraint, String> {
  const _VersionConstraintConverter();

  @override
  VersionConstraint fromJson(String json) => VersionConstraint.parse(json);

  @override
  String toJson(VersionConstraint object) => object.toString();
}
