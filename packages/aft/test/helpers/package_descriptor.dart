// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:aft/src/constraints_checker.dart';
import 'package:collection/collection.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/src/dependency.dart';
import 'package:test/test.dart';
import 'package:test_descriptor/test_descriptor.dart' as d;
import 'package:yaml_edit/yaml_edit.dart';

/// {@macro aft.test.package_descriptor}
PackageDescriptor package(
  String name, {
  String? version,
  bool publishable = true,
  String? sdkConstraint,
  Map<String, Object> dependencies = const {},
  Map<String, Object> devDependencies = const {},
  List<d.Descriptor> contents = const [],
}) =>
    PackageDescriptor(
      name,
      version: version,
      publishable: publishable,
      sdkConstraint: sdkConstraint,
      dependencies: dependencies,
      devDependencies: devDependencies,
      contents: contents,
    );

/// {@template aft.test.package_descriptor}
/// Describes the desired state of a package.
///
/// Call [create] to create a package with the given description in
/// the temporary sandbox.
/// {@endtemplate}
final class PackageDescriptor extends d.Descriptor {
  /// {@macro aft.test.package_descriptor}
  factory PackageDescriptor(
    String name, {
    String? version,
    bool publishable = true,
    String? sdkConstraint,
    Map<String, Object> dependencies = const {},
    Map<String, Object> devDependencies = const {},
    List<d.Descriptor> contents = const [],
  }) {
    return PackageDescriptor._(
      name,
      version: switch (version) {
        final version? => Version.parse(version),
        _ => null,
      },
      publishable: publishable,
      sdkConstraint: switch (sdkConstraint) {
        final sdkConstraint? => VersionConstraint.parse(sdkConstraint),
        _ => null,
      },
      dependencies: parseDeps(dependencies),
      devDependencies: parseDeps(devDependencies),
      contents: contents,
    );
  }

  PackageDescriptor._(
    super.name, {
    this.version,
    this.publishable = true,
    this.sdkConstraint,
    this.dependencies = const {},
    this.devDependencies = const {},
    this.contents = const [],
  });

  final Version? version;
  final bool publishable;
  final VersionConstraint? sdkConstraint;
  final Map<String, Dependency> dependencies;
  final Map<String, Dependency> devDependencies;

  /// The contents of the package directory.
  ///
  /// By default, this creates a `pubspec.yaml` and initial `CHANGELOG.md`.
  final List<d.Descriptor> contents;

  /// The contents of the `pubspec.yaml`.
  String get pubspec {
    final sdkConstraint = this.sdkConstraint ??
        VersionConstraint.compatibleWith(Version(3, 0, 0));

    final pubspecEditor = YamlEditor('''
name: $name
${version == null ? '' : 'version: $version\n'}
environment:
  sdk: $sdkConstraint
''');

    void addConstraints(
      Map<String, Dependency> constraints,
      DependencyType type,
    ) {
      if (constraints.isNotEmpty) {
        pubspecEditor.update([type.key], {});
      }
      for (final MapEntry(key: dep, value: constraint) in constraints.entries) {
        final path = <String>[type.key, dep];
        pubspecEditor.update(path, constraint.toYaml());
      }
    }

    addConstraints(dependencies, DependencyType.dependency);
    addConstraints(devDependencies, DependencyType.devDependency);

    if (!publishable) {
      pubspecEditor.update(['publish_to'], 'none');
    }

    return pubspecEditor.toString();
  }

  /// The directory descriptor for the package.
  d.DirectoryDescriptor get dir => d.dir(
        name,
        <d.Descriptor>[
          ...contents,
          if (contents.none((d) => d.name == 'pubspec.yaml'))
            d.file('pubspec.yaml', pubspec),
          if (contents.none((d) => d.name == 'CHANGELOG.md') && version != null)
            d.file('CHANGELOG.md', '''
## $version

Initial version.
'''),
        ],
      );

  @override
  Future<PackageInfo> create([String? parent]) async {
    await dir.create(parent);
    return PackageInfo.fromDirectory(dir.io)!;
  }

  @override
  String describe() => name;

  @override
  Future<void> validate([String? parent]) async {
    await dir.validate(parent);
    expect(PackageInfo.fromDirectory(dir.io), isNotNull);
  }
}
