// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aft/aft.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_edit/yaml_edit.dart';

/// Creates a dummy package for testing repo operations.
MapEntry<PackageInfo, List<PackageInfo>> dummyPackage(
  String name, {
  Version? version,
  bool publishable = true,
  VersionConstraint? sdkConstraint,
  Map<PackageInfo, VersionConstraint> deps = const {},
  Map<PackageInfo, VersionConstraint> devDeps = const {},
}) {
  final path = 'packages/$name';
  sdkConstraint ??= VersionConstraint.compatibleWith(Version(3, 0, 0));

  final pubspecEditor = YamlEditor('''
name: $name

environment:
  sdk: $sdkConstraint

dependencies: {}

dev_dependencies: {}
''');

  if (version != null) {
    pubspecEditor.update(['version'], version.toString());
  }

  void addConstraints(
    Map<PackageInfo, VersionConstraint> constraints,
    DependencyType type,
  ) {
    for (final MapEntry(key: dep, value: constraint) in constraints.entries) {
      final path = <String>[type.key, dep.name];
      pubspecEditor.update(path, constraint.toString());
    }
  }

  addConstraints(deps, DependencyType.dependency);
  addConstraints(devDeps, DependencyType.devDependency);

  if (!publishable) {
    pubspecEditor.update(['publish_to'], 'none');
  }

  final pubspecYaml = pubspecEditor.toString();
  final pubspec = Pubspec.parse(pubspecYaml);
  final pubspecMap = loadYamlNode(pubspecYaml) as YamlMap;

  final package = PackageInfo(
    name: name,
    path: path,
    pubspecInfo: PubspecInfo(
      pubspec: pubspec,
      pubspecYaml: pubspecYaml,
      pubspecMap: pubspecMap,
      uri: Uri.base.resolve(path),
    ),
    flavor: PackageFlavor.dart,
  );
  return MapEntry(package, [...deps.keys, ...devDeps.keys]);
}
