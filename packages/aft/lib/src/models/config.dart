// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/src/changelog/changelog.dart';
import 'package:aft/src/models.dart';
import 'package:aft/src/repo.dart';
import 'package:aft/src/util.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:path/path.dart' as p;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml_edit/yaml_edit.dart';

part 'config.g.dart';

@yamlSerializable
class AftConfig with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  const AftConfig({
    required this.rootDirectory,
    required this.workingDirectory,
    required this.allPackages,
    this.dependencies = const {},
    required this.environment,
    this.ignore = const [],
    this.components = const {},
    this.scripts = const {},
  });

  factory AftConfig.fromJson(Map<String, Object?> json) =>
      _$AftConfigFromJson(json);

  /// The root directory of the repository.
  final Uri rootDirectory;

  /// The current working directory of the `aft` executable.
  final Uri workingDirectory;

  /// All packages in the repository.
  final Map<String, PackageInfo> allPackages;

  /// Global dependency versions for third-party dependencies representing the
  /// values which have been vetted by manual review and/or those should be used
  /// consistently across all packages.
  final Map<String, VersionConstraint> dependencies;

  /// The current constraints for Dart + Flutter SDKs.
  final Environment environment;

  /// Packages to ignore in all repo operations.
  final List<String> ignore;

  /// {@macro aft.models.aft_component}
  final Map<String, AftComponent> components;

  final Map<String, AftScript> scripts;

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
  Map<String, Object?> toJson() => _$AftConfigToJson(this);
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
    return p.basename(path).endsWith('_test') ||
        path.contains('goldens') ||
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
  List<Object?> get props => [name];

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
    required this.uri,
  });

  factory PubspecInfo.fromJson(Map<String, Object?> json) =>
      _$PubspecInfoFromJson(json);

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
    final pubspecYaml = pubspecFile.readAsStringSync();
    try {
      final pubspec = Pubspec.parse(pubspecYaml, sourceUrl: uri);
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
