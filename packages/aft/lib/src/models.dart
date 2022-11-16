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

import 'package:aft/src/changelog/changelog.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:smithy/ast.dart';
import 'package:yaml_edit/yaml_edit.dart';

part 'models.g.dart';

/// The flavor of a package, e.g. Dart/Flutter.
enum PackageFlavor {
  flutter('Flutter', 'flutter'),
  dart('Dart', 'dart');

  const PackageFlavor(this.displayName, this.entrypoint);

  final String displayName;
  final String entrypoint;
}

class PubVersionInfo {
  const PubVersionInfo(this.allVersions);

  final List<Version> allVersions;

  Version? get latestVersion =>
      allVersions.where((version) => !version.isPreRelease).lastOrNull;

  Version? get latestPrerelease =>
      allVersions.where((version) => version.isPreRelease).lastOrNull;
}

/// {@template amplify_tools.package_info}
/// Information about a Dart/Flutter package in the repo.
/// {@endtemplate}
class PackageInfo
    with AWSEquatable<PackageInfo>, AWSDebuggable
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
        !isExample;
  }

  /// Whether the package is used in development.
  bool get isDevelopmentPackage => !isExample && !isTestPackage;

  /// Whether the package is an example package.
  bool get isExample {
    return p.basename(path) == 'example';
  }

  /// Whether the package is a test package.
  bool get isTestPackage {
    return p.basename(path).endsWith('_test') ||
        path.contains('goldens') ||
        p.basename(path).contains('e2e');
  }

  /// The parsed `CHANGELOG.md`.
  Changelog get changelog {
    final changelogMd = File(p.join(path, 'CHANGELOG.md')).readAsStringSync();
    return Changelog.parse(changelogMd);
  }

  /// The current version in `pubspec.yaml`.
  Version get version =>
      pubspecInfo.pubspec.version ??
      (throw StateError('No version for package: $name'));

  @override
  List<Object?> get props => [name, path];

  @override
  String get runtimeTypeName => 'PackageInfo';

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

  factory PubspecInfo.fromUri(Uri uri) {
    final yaml = File.fromUri(uri).readAsStringSync();
    return PubspecInfo(
      pubspec: Pubspec.parse(yaml),
      pubspecYaml: yaml,
      uri: uri,
    );
  }

  /// The package's parsed pubspec.
  final Pubspec pubspec;

  /// The URI of the `pubspec.yaml` file.
  final Uri uri;

  /// The package's pubspec as YAML.
  final String pubspecYaml;

  /// The pubspec as a YAML editor, used to alter dependencies or other info.
  late final YamlEditor pubspecYamlEditor = YamlEditor(pubspecYaml);
}

extension AmplifyVersion on Version {
  Version get nextPreRelease => Version(
        major,
        minor,
        patch,
        pre: preRelease.map((el) {
          if (el is! int) return el;
          return el + 1;
        }).join('.'),
      );

  /// The next version according to Amplify rules for incrementing.
  NextVersion nextAmplifyVersion(VersionBumpType type) {
    if (preRelease.isEmpty) {
      switch (type) {
        case VersionBumpType.patch:
          return NextVersion(nextPatch);
        case VersionBumpType.nonBreaking:
          return major == 0
              ? NextVersion(nextPatch)
              : NextVersion.propogate(nextMinor);
        case VersionBumpType.breaking:
          return NextVersion.propogate(major == 0 ? nextMinor : nextMajor);
      }
    }
    if (type == VersionBumpType.breaking) {
      return NextVersion.propogate(nextPreRelease);
    }
    final newBuild = (build.singleOrNull as int? ?? 0) + 1;
    final newVersion = Version(
      major,
      minor,
      patch,
      pre: preRelease.join('.'),
      build: '$newBuild',
    );
    return NextVersion(newVersion);
  }

  /// The constraint to use for this version in pubspecs.
  String amplifyConstraint({Version? minVersion}) {
    final Version maxVersion;
    if (preRelease.isEmpty) {
      final currentMinor = Version(major, minor, 0);
      minVersion ??= currentMinor;
      maxVersion = Version(major, minor + 1, 0);
    } else {
      final currentPreRelease = Version(
        major,
        minor,
        patch,
        pre: preRelease.join('.'),
      );
      minVersion ??= currentPreRelease;
      maxVersion = nextPreRelease;
    }
    return '>=$minVersion <$maxVersion';
  }
}

class NextVersion {
  const NextVersion(this.version) : propogateToComponent = false;
  const NextVersion.propogate(this.version) : propogateToComponent = true;

  final Version version;
  final bool propogateToComponent;
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
class AftConfig with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AftConfig({
    this.dependencies = const {},
    this.ignore = const [],
    this.components = const [],
  });

  factory AftConfig.fromJson(Map<Object?, Object?>? json) =>
      _$AftConfigFromJson(json ?? const {});

  /// Global dependency versions for third-party dependencies representing the
  /// values which have been vetted by manual review and/or those should be used
  /// consistently across all packages.
  final Map<String, VersionConstraint> dependencies;

  /// Packages to ignore in all repo operations.
  final List<String> ignore;

  /// {@macro aft.models.aft_component}
  final List<AftComponent> components;

  /// Retrieves the component for [packageName], if any.
  String componentForPackage(String packageName) {
    return components
            .firstWhereOrNull(
              (component) => component.packages.contains(packageName),
            )
            ?.name ??
        packageName;
  }

  @override
  String get runtimeTypeName => 'AftConfig';

  @override
  Map<String, Object?> toJson() => _$AftConfigToJson(this);
}

/// {@template aft.models.aft_component}
/// Strongly connected components which should have minor/major version bumps
/// happen in unison, i.e. a version bump to one package cascades to all.
/// {@endtemplate}
@yamlSerializable
class AftComponent with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AftComponent({
    required this.name,
    this.summary,
    required this.packages,
  });

  factory AftComponent.fromJson(Map<String, Object?> json) =>
      _$AftComponentFromJson(json);

  /// The name of the component.
  final String name;

  /// The package name which summarizes all component changes in its changleog.
  final String? summary;

  /// The list of packages in the component.
  final List<String> packages;

  @override
  String get runtimeTypeName => 'AftComponent';

  @override
  Map<String, Object?> toJson() => _$AftComponentToJson(this);
}

class AftRepoComponent {
  const AftRepoComponent({
    required this.name,
    this.summary,
    required this.packages,
    required this.packageGraph,
  });

  /// The name of the component.
  final String name;

  /// The package name which summarizes all component changes in its changleog.
  final PackageInfo? summary;

  /// The list of packages in the component.
  final List<PackageInfo> packages;

  /// The graph of packages to their dependencies.
  final Map<PackageInfo, List<PackageInfo>> packageGraph;
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
    this.ref = 'main',
    required this.apis,
  });

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const {});

  /// The `aws-models` ref to pull.
  ///
  /// Defaults to `main`.
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

/// The type of version change to perform.
enum VersionBumpType {
  /// Library packages are allowed to vary in their version, meaning a small
  /// change to one package (e.g. Update README) should be isolated to the
  /// affected package.
  ///
  /// Examples:
  /// * If the current version of a 0-based `aws_common` is `0.1.0` and its
  ///   README is updated, it and it alone should be bumped to `0.1.1`.
  ///   Note: a bump to `0.1.1` is technically a “minor” version bump in
  ///   0-based SemVer, but for consistency we can choose not to use build
  ///   numbers (+).
  /// * If the current version of a 1-based `amplify_flutter` is `1.0.0` and its
  ///   README is updated, it and it alone should be bumped to `1.0.1`.
  ///
  /// This version change is reserved for chores and bug fixes as denoted by
  /// the following conventional commit tags: `fix`, `bug`, `perf`, `chore`,
  /// `build`, `ci`, `docs`, `refactor`, `revert`, `style`, `test`.
  patch,

  /// A non-breaking version bump for a package represents a divergence from
  /// the previous version in terms of behavior or functionality in the form of
  /// a new feature.
  ///
  /// Examples:
  /// * If the current version of a 0-based aws_common is `0.1.0` and it is part
  ///   of a feature change, it is bumped to `0.1.1` alongside all other package
  ///   bumps.
  /// * If the current version of a 1-based amplify_flutter is `1.0.0` and it is
  ///   part of a feature change, it is bumped to `1.1.0` alongside all other
  ///   package bumps.
  ///
  /// This version change is reserved for new features denoted by the `feat`
  /// conventional commit tag.
  nonBreaking,

  /// A breaking version bump is reserved for breaking API changes. **These are
  /// rarely done.**
  ///
  /// * 0-based packages are allowed to break their APIs while 0-based and
  ///   follow the non-breaking version scheme described above, e.g.
  ///   `0.1.0` → `0.2.0`.
  ///
  /// * Stable packages (>1.0.0) bump to the next SemVer major version, e.g.
  ///   `1.0.0` → `2.0.0`.
  ///
  /// Packages opt in to this behavior by suffixing an exclamation point to
  /// their commit message title tag, e.g.
  ///
  /// - `feat(auth): A new feature` would be a non-breaking feature change.
  /// - `feat(auth)!: A new feature` would be a breaking feature change.
  breaking,
}
