// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/models.dart';
import 'package:aft/src/repo.dart';
import 'package:aft/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

part 'config.g.dart';

abstract class AftConfig
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable
    implements Built<AftConfig, AftConfigBuilder> {
  factory AftConfig({
    required Uri rootDirectory,
    required Uri workingDirectory,
    required Map<String, PackageInfo> allPackages,
    Map<String, VersionConstraint> dependencies = const {},
    required Environment environment,
    PlatformEnvironment? platforms,
    List<String> ignore = const [],
    Map<String, AftComponent> components = const {},
    Map<String, AftScript> scripts = const {},
  }) {
    return _$AftConfig._(
      rootDirectory: rootDirectory,
      workingDirectory: workingDirectory,
      allPackages: allPackages.build(),
      dependencies: dependencies.build(),
      environment: environment,
      platforms: platforms,
      ignore: ignore.build(),
      components: components.build(),
      scripts: scripts.build(),
    );
  }

  factory AftConfig.build(void Function(AftConfigBuilder config) updates) =
      _$AftConfig;

  factory AftConfig.fromJson(Map<String, Object?> json) =>
      aftSerializers.deserializeWith(serializer, json)!;

  const AftConfig._();

  /// The root directory of the repository.
  Uri get rootDirectory;

  /// The current working directory of the `aft` executable.
  Uri get workingDirectory;

  /// All packages in the repository.
  BuiltMap<String, PackageInfo> get allPackages;

  /// Global dependency versions for third-party dependencies representing the
  /// values which have been vetted by manual review and/or those should be used
  /// consistently across all packages.
  BuiltMap<String, VersionConstraint> get dependencies;

  /// The current constraints for Dart + Flutter SDKs.
  Environment get environment;

  /// The current constraints for platforms and OSs.
  PlatformEnvironment? get platforms;

  /// Packages to ignore in all repo operations.
  BuiltList<String> get ignore;

  /// {@macro aft.models.aft_component}
  BuiltMap<String, AftComponent> get components;

  BuiltMap<String, AftScript> get scripts;

  /// Retrieves the component for [packageName], if any.
  String componentForPackage(String packageName) {
    return components.values
            .firstWhereOrNull(
              (component) => component.packages
                  .any((package) => package.name == packageName),
            )
            ?.name ??
        packageName;
  }

  @override
  String get runtimeTypeName => 'AftConfig';

  @override
  Map<String, Object?> toJson() =>
      aftSerializers.serializeWith(serializer, this) as Map<String, Object?>;

  static Serializer<AftConfig> get serializer => _$aftConfigSerializer;
}

@yamlSerializable
class AftComponent with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AftComponent({
    required this.name,
    this.summary,
    required this.packages,
    required this.packageGraph,
    required this.propagate,
  });

  factory AftComponent.fromJson(Map<String, Object?> json) =>
      _$AftComponentFromJson(json);

  /// The name of the component.
  final String name;

  /// The package name which summarizes all component changes in its changleog.
  final PackageInfo? summary;

  /// The list of packages in the component.
  final List<PackageInfo> packages;

  /// The graph of packages to their dependencies.
  final Map<String, List<PackageInfo>> packageGraph;

  /// How to align package versions in this component when one changes.
  final VersionPropagation propagate;

  @override
  String get runtimeTypeName => 'AftComponent';

  @override
  Map<String, Object?> toJson() => _$AftComponentToJson(this);
}

/// {@template amplify_tools.package_info}
/// Information about a Dart/Flutter package in the repo.
/// {@endtemplate}
@yamlSerializable
class PackageInfo
    with
        AWSEquatable<PackageInfo>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable
    implements Comparable<PackageInfo> {
  /// {@macro amplify_tools.package_info}
  const PackageInfo({
    required this.name,
    required this.path,
    required this.pubspecInfo,
    required this.flavor,
    this.example,
    this.docs,
  });

  factory PackageInfo.fromJson(Map<String, Object?> json) =>
      _$PackageInfoFromJson(json);

  /// Returns the [PackageInfo] found in [dir].
  static PackageInfo? fromDirectory(Directory dir) {
    final pubspecInfo = dir.pubspec;
    if (pubspecInfo == null) {
      return null;
    }
    final pubspec = pubspecInfo.pubspec;

    // Look for example
    PackageInfo? example;
    {
      // Check $dir/example
      final directExampleDir = Directory.fromUri(dir.uri.resolve('example'));
      example ??= PackageInfo.fromDirectory(directExampleDir);

      // Check category package
      final categoryPackage = pubspec.name
          .replaceAll(RegExp(r'_ios$'), '')
          .replaceAll(RegExp(r'_android$'), '');
      final categoryExampleDir = Directory.fromUri(
        dir.uri.resolve('../$categoryPackage/example'),
      );
      example ??= PackageInfo.fromDirectory(categoryExampleDir);
    }

    // Look for docs package
    final docsDir = Directory.fromUri(dir.uri.resolve('doc/'));
    final docs = PackageInfo.fromDirectory(docsDir);

    return PackageInfo(
      name: pubspec.name,
      path: dir.path,
      pubspecInfo: pubspecInfo,
      flavor: pubspec.flavor,
      example: example,
      docs: docs,
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

  /// The example for this package, if any.
  final PackageInfo? example;

  /// The docs package, if any.
  final PackageInfo? docs;

  /// The unit test directory within the enclosing directory, if any
  Directory? get unitTestDirectory {
    final expectedPath = p.join(path, 'test');
    final unitTestDir = Directory(expectedPath);
    if (!unitTestDir.existsSync()) {
      return null;
    }
    return unitTestDir;
  }

  bool hasDirectory(String name) {
    final expectedPath = p.join(path, name);
    final dir = Directory(expectedPath);
    return dir.existsSync();
  }

  /// The integration test directory within the enclosing directory, if any
  Directory? get integrationTestDirectory {
    final expectedPath = p.join(path, 'integration_test');
    final integrationTestDir = Directory(expectedPath);
    if (!integrationTestDir.existsSync()) {
      return null;
    }
    return integrationTestDir;
  }

  /// The goldens test directory within the enclosing directory, if any
  Directory? get goldensTestDirectory {
    final expectedPath = p.join(path, 'test', 'ui');
    final goldensTestDir = Directory(expectedPath);
    if (!goldensTestDir.existsSync()) {
      return null;
    }
    return goldensTestDir;
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
    return p.basename(path) == 'example' ||
        name == 'doc' ||
        p.basename(path) == 'canaries';
  }

  /// Whether the package is a linting package only.
  bool get isLintsPackage {
    return name == 'amplify_lints';
  }

  /// Whether the package is a test package.
  bool get isTestPackage {
    final relativePath = path.split('/packages/').last;
    return p.basename(path).endsWith('_test') ||
        relativePath.contains('goldens') ||
        p.basename(path).contains('e2e');
  }

  /// Whether [package] is a direct or transitive dependency of `this`.
  bool dependsOn(PackageInfo package, Repo repo) {
    var found = false;
    dfs(
      repo.getPackageGraph(includeDevDependencies: true),
      root: this,
      (pkg) {
        if (pkg == package) found = true;
      },
    );
    return found;
  }

  /// Whether [package] has `this` as a direct or transitive dependency.
  bool isDependedOnBy(PackageInfo package, Repo repo) {
    var found = false;
    dfs(
      repo.getReversedPackageGraph(includeDevDependencies: true),
      root: this,
      (pkg) {
        if (pkg == package) found = true;
      },
    );
    return found;
  }

  /// The type of dependency [package] is in `this`, or `null` if [package]
  /// is not listed in this package's pubspec.
  DependencyType? dependencyType(PackageInfo package) {
    if (pubspecInfo.pubspec.dependencies.containsKey(package.name)) {
      return DependencyType.dependency;
    }
    if (pubspecInfo.pubspec.devDependencies.containsKey(package.name)) {
      return DependencyType.devDependency;
    }
    if (pubspecInfo.pubspec.dependencyOverrides.containsKey(package.name)) {
      return DependencyType.dependencyOverride;
    }
    return null;
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

  /// Skip package checks for Flutter packages when running in CI without
  /// Flutter, which may happen when testing Dart-only packages or specific
  /// Dart versions.
  bool get skipChecks {
    final isCI = getEnv('CI') == 'true' || getEnv('CI') == '1';
    return isCI &&
        getEnv('FLUTTER_ROOT') == null &&
        flavor == PackageFlavor.flutter;
  }

  /// Whether this package is compatible with the active Dart SDK
  /// in the current environment.
  bool get compatibleWithActiveSdk =>
      dartSdkConstraint.allows(activeDartSdkVersion);

  /// The Dart SDK constraint set by the package.
  VersionConstraint get dartSdkConstraint =>
      pubspecInfo.pubspec.environment!['sdk']!;

  @override
  List<Object?> get props => [name];

  @override
  String get runtimeTypeName => 'PackageInfo';

  @override
  int compareTo(PackageInfo other) {
    return path.compareTo(other.path);
  }

  @override
  Map<String, Object?> toJson() => _$PackageInfoToJson(this);
}

/// The package's pubspec and metadata.
@yamlSerializable
class PubspecInfo with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  PubspecInfo({
    required this.pubspec,
    required this.pubspecYaml,
    required this.pubspecMap,
    required this.uri,
  });

  factory PubspecInfo.fromJson(Map<String, Object?> json) =>
      _$PubspecInfoFromJson(json);

  factory PubspecInfo.fromUri(Uri uri) {
    final yaml = File.fromUri(uri).readAsStringSync();
    return PubspecInfo(
      pubspec: Pubspec.parse(yaml, sourceUrl: uri),
      pubspecYaml: yaml,
      pubspecMap: loadYamlNode(yaml, sourceUrl: uri) as YamlMap,
      uri: uri,
    );
  }

  /// The package's parsed pubspec.
  final Pubspec pubspec;

  /// The URI of the `pubspec.yaml` file.
  final Uri uri;

  /// The package's pubspec as YAML.
  final String pubspecYaml;

  /// The package's pubspec as a YAML map.
  final YamlMap pubspecMap;

  /// Package-specific configuration.
  @JsonKey(includeToJson: false, includeFromJson: false)
  late final RawPubspecConfig config = RawPubspecConfig.fromJson(
    pubspecMap.cast(),
  );

  /// The pubspec as a YAML editor, used to alter dependencies or other info.
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final YamlEditor pubspecYamlEditor = YamlEditor(pubspecYaml);

  @override
  String get runtimeTypeName => 'PubspecInfo';

  @override
  Map<String, Object?> toJson() => _$PubspecInfoToJson(this);
}

extension DirectoryX on Directory {
  /// The pubspec for the package in this directory, if any.
  PubspecInfo? get pubspec {
    final pubspecPath = p.join(path, 'pubspec.yaml');
    final pubspecFile = File(pubspecPath);
    if (!pubspecFile.existsSync()) {
      return null;
    }
    try {
      return PubspecInfo.fromUri(pubspecFile.uri);
    } on Object {
      return null;
    }
  }
}

/// The version of the current environment's Dart SDK.
///
/// This parses the version from calling `dart --version`.
final Version activeDartSdkVersion = () {
  final ProcessResult(
    :exitCode,
    :stdout,
    :stderr,
  ) = Process.runSync('dart', ['--version']);
  if (exitCode != 0) {
    throw Exception(
      'Error running `dart --version` ($exitCode): $stderr',
    );
  }
  // Example output:
  // Dart SDK version: 3.1.0 (stable) (Tue Aug 15 21:33:36 2023 +0000) on "macos_arm64"
  final activeSdkVersionRaw = _versionRegex.firstMatch(stdout as String);
  if (activeSdkVersionRaw == null) {
    throw Exception(
      'Running `dart --version` produced unexpected output: $stdout',
    );
  }
  return Version.parse(activeSdkVersionRaw.group(0)!);
}();

final _versionRegex = RegExp(r'\d+\.\d+\.\d+(-[a-zA-Z\d]+)?');
