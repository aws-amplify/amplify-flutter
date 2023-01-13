// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:async/async.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml_edit/yaml_edit.dart';

/// Command to link all Dart/Flutter packages in the repo together using
/// `pubspec_overrides.yaml`.
class LinkCommand extends AmplifyCommand {
  @override
  String get description => 'Links all packages in the Amplify Flutter repo';

  @override
  String get name => 'link';

  @override
  Future<void> run() async {
    await super.run();
    await linkPackages(allPackages);
    stdout.writeln('Packages successfully linked!');
  }
}

/// Collects all direct and transitive dependencies
Map<String, String> _collectDependencies(
  PackageInfo rootPackage,
  Map<String, PackageInfo> allPackages,
) {
  final dependencyPaths = <String, String>{};
  final seen = <String>{};

  void collectSubdependencies(PackageInfo package) {
    if (seen.contains(package.name)) {
      return;
    }
    seen.add(package.name);
    final localDeps = [
      ...package.pubspecInfo.pubspec.dependencies.keys,
      if (package == rootPackage)
        ...package.pubspecInfo.pubspec.devDependencies.keys,
    ].map((dep) => allPackages[dep]).whereType<PackageInfo>();
    for (final dependency in localDeps) {
      if (dependency.name == rootPackage.name) {
        continue;
      }
      dependencyPaths[dependency.name] =
          path.relative(dependency.path, from: rootPackage.path);
      collectSubdependencies(dependency);
    }
  }

  collectSubdependencies(rootPackage);
  return dependencyPaths;
}

/// Creates a `pubspec_overrides.yaml` file for [package].
Future<void> _createPubspecOverride(
  PackageInfo package,
  Map<String, String> dependencyPaths,
  // To be merged in
  Map<String, Dependency> existingDependencyOverrides,
) async {
  final mergedOverrides = SplayTreeMap.of({
    // Merge in existing dependency overrides since `pub` will only use the
    // pubspec_overrides file if it exists.
    ...existingDependencyOverrides.map((k, v) {
      if (v is HostedDependency) {
        final details = v.hosted;
        if (details == null) {
          return MapEntry(k, v.version.toString());
        }
        return MapEntry(k, {
          'hosted': details.url!.toString(),
          'version': v.version.toString(),
        });
      }
      if (v is GitDependency) {
        final ref = v.ref;
        final path = v.path;
        return MapEntry(k, {
          'git': {
            'url': v.url.toString(),
            if (ref != null) 'ref': ref,
            if (path != null) 'path': path,
          }
        });
      }
      if (v is PathDependency) {
        return MapEntry(k, {
          'path': v.path,
        });
      }
      throw StateError('Unknown dependency type: $v');
    }),
    ...dependencyPaths.map((name, path) => MapEntry(name, {'path': path})),
  });
  final yaml = YamlEditor(
    '''
# Generated with `aft`. Do not modify by hand or check into source control.
dependency_overrides:
''',
  )..update(['dependency_overrides'], mergedOverrides);

  await File(path.join(package.path, 'pubspec_overrides.yaml'))
      .writeAsString(yaml.toString());
}

/// Links [packages] together using `pubspec_overrides.yaml`.
Future<void> linkPackages(Map<String, PackageInfo> packages) async {
  final futureGroup = FutureGroup<void>();
  for (final package in packages.values) {
    final dependencyPaths = _collectDependencies(package, packages);
    futureGroup.add(
      _createPubspecOverride(
        package,
        dependencyPaths,
        package.pubspecInfo.pubspec.dependencyOverrides,
      ),
    );
  }
  futureGroup.close();
  await futureGroup.future;
}
