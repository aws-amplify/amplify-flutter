// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
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
        !isExample;
  }

  /// Whether the package is publishable.
  bool get isPublishable => pubspecInfo.pubspec.publishTo == null;

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
  String get runtimeTypeName => 'PackageInfo';

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
  List<Object?> get props => [name, path];

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
  Version nextAmplifyVersion(VersionBumpType type) {
    final newBuild = (build.singleOrNull as int? ?? 0) + 1;
    if (preRelease.isEmpty) {
      switch (type) {
        case VersionBumpType.patch:
          return major == 0 ? replace(build: [newBuild]) : nextPatch;
        case VersionBumpType.nonBreaking:
          return major == 0 ? nextPatch : nextMinor;
        case VersionBumpType.breaking:
          return major == 0 ? nextMinor : nextMajor;
      }
    }
    if (type == VersionBumpType.breaking) {
      return nextPreRelease;
    }
    return replace(build: [newBuild]);
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

  /// Creates a copy of this version with the given fields replaced.
  Version replace({
    int? major,
    int? minor,
    int? patch,
    List<Object>? preRelease,
    List<Object>? build,
  }) {
    String? pre;
    if (preRelease != null) {
      pre = preRelease.join('.');
    } else if (this.preRelease.isNotEmpty) {
      pre = this.preRelease.join('.');
    }
    String? buildString;
    if (build != null) {
      buildString = build.join('.');
    } else if (this.build.isNotEmpty) {
      buildString = this.build.join('.');
    }
    return Version(
      major ?? this.major,
      minor ?? this.minor,
      patch ?? this.patch,
      pre: pre,
      build: buildString,
    );
  }
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
    try {
      final pubspec = Pubspec.parse(pubspecYaml, sourceUrl: pubspecFile.uri);
      return PubspecInfo(
        pubspec: pubspec,
        pubspecYaml: pubspecYaml,
        uri: pubspecFile.uri,
      );
    } on Object {
      return null;
    }
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
    required this.environment,
    this.ignore = const [],
    this.components = const [],
  });

  factory AftConfig.fromJson(Map<Object?, Object?>? json) =>
      _$AftConfigFromJson(json ?? const {});

  /// Global dependency versions for third-party dependencies representing the
  /// values which have been vetted by manual review and/or those should be used
  /// consistently across all packages.
  final Map<String, VersionConstraint> dependencies;

  /// The current constraints for Dart + Flutter SDKs.
  final Environment environment;

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

@yamlSerializable
@_VersionConstraintConverter()
class Environment with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const Environment({
    required this.sdk,
    required this.flutter,
    required this.android,
    required this.ios,
    required this.macOS,
  });

  factory Environment.fromJson(Map<String, Object?> json) =>
      _$EnvironmentFromJson(json);

  final VersionConstraint sdk;
  final VersionConstraint flutter;
  final AndroidEnvironment android;
  final IosEnvironment ios;
  final MacOSEnvironment macOS;

  @override
  String get runtimeTypeName => 'Environment';

  @override
  Map<String, Object?> toJson() => _$EnvironmentToJson(this);
}

@yamlSerializable
class AndroidEnvironment
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AndroidEnvironment({
    required this.compileSdkVersion,
    required this.minSdkVersion,
  });

  factory AndroidEnvironment.fromJson(Map<String, Object?> json) =>
      _$AndroidEnvironmentFromJson(json);

  final String compileSdkVersion;
  final String minSdkVersion;

  @override
  String get runtimeTypeName => 'AndroidEnvironment';

  @override
  Map<String, Object?> toJson() => _$AndroidEnvironmentToJson(this);
}

@yamlSerializable
class IosEnvironment with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const IosEnvironment({
    required this.minOSVersion,
  });

  factory IosEnvironment.fromJson(Map<String, Object?> json) =>
      _$IosEnvironmentFromJson(json);

  final String minOSVersion;

  @override
  String get runtimeTypeName => 'IosEnvironment';

  @override
  Map<String, Object?> toJson() => _$IosEnvironmentToJson(this);
}

@yamlSerializable
class MacOSEnvironment
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const MacOSEnvironment({
    required this.minOSVersion,
  });

  factory MacOSEnvironment.fromJson(Map<String, Object?> json) =>
      _$MacOSEnvironmentFromJson(json);

  final String minOSVersion;

  @override
  String get runtimeTypeName => 'MacOSEnvironment';

  @override
  Map<String, Object?> toJson() => _$MacOSEnvironmentToJson(this);
}

/// Specifies how to propagate version changes within a component.
enum VersionPropagation {
  /// Propagates only major version changes.
  major,

  /// Propagates only minor version changes.
  minor,

  /// Propagates all version changes.
  all,

  /// Propagates no version changes.
  none;

  /// Whether to propagate a version change from [oldVersion] to [newVersion]
  /// within its component.
  bool propagateToComponent(Version oldVersion, Version newVersion) {
    if (oldVersion == newVersion) {
      return false;
    }
    final majorVersionChanged = () {
      if (newVersion.isPreRelease) {
        if (oldVersion.isPreRelease) {
          return newVersion == oldVersion.nextPreRelease;
        }
        return true;
      }
      return newVersion.major > oldVersion.major;
    }();
    switch (this) {
      case VersionPropagation.major:
        return majorVersionChanged;
      case VersionPropagation.minor:
        if (majorVersionChanged) {
          return true;
        }
        return newVersion.minor > oldVersion.minor;
      case VersionPropagation.all:
        return true;
      case VersionPropagation.none:
        return false;
    }
  }
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
    this.propagate = VersionPropagation.minor,
  });

  factory AftComponent.fromJson(Map<String, Object?> json) =>
      _$AftComponentFromJson(json);

  /// The name of the component.
  final String name;

  /// The package name which summarizes all component changes in its changleog.
  final String? summary;

  /// The list of packages in the component.
  final List<String> packages;

  /// How to align package versions in this component when one changes.
  final VersionPropagation propagate;

  @override
  String get runtimeTypeName => 'AftComponent';

  @override
  Map<String, Object?> toJson() => _$AftComponentToJson(this);
}

class AftRepoComponent with AWSEquatable<AftRepoComponent>, AWSDebuggable {
  const AftRepoComponent({
    required this.name,
    this.summary,
    required this.packages,
    required this.packageGraph,
    required this.propagate,
  });

  /// The name of the component.
  final String name;

  /// The package name which summarizes all component changes in its changleog.
  final PackageInfo? summary;

  /// The list of packages in the component.
  final List<PackageInfo> packages;

  /// The graph of packages to their dependencies.
  final Map<PackageInfo, List<PackageInfo>> packageGraph;

  /// How to align package versions in this component when one changes.
  final VersionPropagation propagate;

  @override
  List<Object?> get props => [name];

  @override
  String get runtimeTypeName => 'AftRepoComponent';
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
    this.plugins = const [],
  });

  factory SdkConfig.fromJson(Map<Object?, Object?>? json) =>
      _$SdkConfigFromJson(json ?? const {});

  /// The `aws-models` ref to pull.
  ///
  /// Defaults to `master`.
  final String ref;
  final Map<String, List<ShapeId>?> apis;
  final List<String> plugins;

  @override
  Map<String, Object?> toJson() => _$SdkConfigToJson(this);

  @override
  List<Object?> get props => [ref, apis, plugins];

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
