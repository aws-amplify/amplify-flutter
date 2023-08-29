// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:io';

import 'package:aft/src/config/config.dart';
import 'package:aft/src/config/raw_config.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml/yaml.dart';

/// Loads the AFT configuration for the current working directory.
class AftConfigLoader {
  AftConfigLoader({
    Directory? workingDirectory,
  }) : workingDirectory = workingDirectory ?? Directory.current;

  final Directory workingDirectory;

  AftConfig? _loadedConfig;

  AftConfig reload() {
    final pubspecQueue = Queue<(YamlMap, Pubspec)>();
    var dir = workingDirectory;
    Directory? rootDirectory;
    while (p.absolute(dir.parent.path) != p.absolute(dir.path)) {
      if (dir.pubspec case PubspecInfo(:final pubspec, :final pubspecMap)) {
        pubspecQueue.addFirst((pubspecMap, pubspec));
        rootDirectory = dir;
      }
      dir = dir.parent;
    }
    if (pubspecQueue.isEmpty || rootDirectory == null) {
      throw StateError(
        'Root directory not found. Make sure to run this command '
        'from within a Dart or Flutter project',
      );
    }

    return _loadedConfig = _processPubspecs(
      pubspecQueue: pubspecQueue,
      rootDirectory: rootDirectory,
    );
  }

  /// Loads the AFT configuration from the `pubspec.yaml` of the uppermost parent,
  /// then merges in all `aft` configuration blocks in `pubspec.yaml`'s of child
  /// directories, in top-down order.
  AftConfig load() {
    if (_loadedConfig case final loadedConfig?) {
      return loadedConfig;
    }
    return reload();
  }

  AftConfig _processPubspecs({
    required Queue<(YamlMap, Pubspec)> pubspecQueue,
    required Directory rootDirectory,
  }) {
    final aftConfig = AftConfigBuilder()
      ..rootDirectory = rootDirectory.uri
      ..workingDirectory = workingDirectory.uri;

    final rawComponents = <String, RawAftComponent>{};

    void mergePubspec(
      YamlMap yaml,
      Pubspec pubspec, {
      bool isRoot = false,
    }) {
      final rawPubspecConfig = RawPubspecConfig.fromJson(yaml.cast());

      // Process top-level pubspec entries for root configs
      if (isRoot) {
        final dependencies = rawPubspecConfig.dependencies.entries
            .map(
              (entry) => switch (entry) {
                MapEntry(
                  key: final name,
                  value: final HostedDependency dependency
                ) =>
                  MapEntry(name, dependency.version),
                _ => null,
              },
            )
            .nonNulls;
        aftConfig
          ..dependencies.addEntries(dependencies)
          ..environment.replace(rawPubspecConfig.environment);
      }

      // Process `aft` pubspec section, which is merged in for
      // child pubspecs.
      if (rawPubspecConfig.aft case final rawAftConfig?) {
        rawComponents.addEntries(
          rawAftConfig.components.map(
            (component) => MapEntry(component.name, component),
          ),
        );
        aftConfig
          ..ignore.addAll(rawAftConfig.ignore)
          ..scripts.addAll(rawAftConfig.scripts);

        if (isRoot) {
          if (rawAftConfig.platforms case final platforms?) {
            aftConfig.platforms.replace(platforms);
          }
        }
      }
    }

    for (var i = 0; i < pubspecQueue.length; i++) {
      final (yaml, pubspec) = pubspecQueue.elementAt(i);
      mergePubspec(yaml, pubspec, isRoot: i == 0);
    }

    final repoPackages = _collectPackages(
      rootDirectory: rootDirectory,
      ignore: aftConfig.ignore.build().toList(),
    );

    aftConfig
      ..allPackages.replace(repoPackages)
      ..components.addAll(
        rawComponents.map((name, component) {
          final summaryPackage = switch (component.summary) {
            null => null,
            final summary => switch (repoPackages[summary]) {
                final summaryPackage? => summaryPackage,
                // Allow missing summary package for testing
                _ when zDebugMode => null,
                _ => throw StateError(
                    'Summary package "$summary" does not exist for component: '
                    '${component.name}',
                  ),
              },
          };
          final packages = component.packages
              .map(
                (name) => switch (repoPackages[name]) {
                  final package? => package,
                  // Allow missing component package for testing
                  _ when zDebugMode => null,
                  _ => throw StateError(
                      'Component package "$name" does not exist for component: '
                      '${component.name}',
                    ),
                },
              )
              .nonNulls
              .toList();
          final packageGraph = UnmodifiableMapView({
            for (final package in packages)
              package.name: package.pubspecInfo.pubspec.dependencies.keys
                  .map(
                    (packageName) => packages.firstWhereOrNull(
                      (pkg) => pkg.name == packageName,
                    ),
                  )
                  .nonNulls
                  .toList(),
          });
          return MapEntry(
            component.name,
            AftComponent(
              name: component.name,
              summary: summaryPackage,
              packages: packages,
              packageGraph: packageGraph,
              propagate: component.propagate,
            ),
          );
        }),
      );

    return aftConfig.build();
  }

  /// Collects all packages in [rootDirectory] by recursively searching for directories
  /// with a `pubspec.yaml`.
  Map<String, PackageInfo> _collectPackages({
    required Directory rootDirectory,
    required List<String> ignore,
  }) {
    final allDirs = rootDirectory
        .listSync(recursive: true, followLinks: false)
        .whereType<Directory>();
    final allPackages = <PackageInfo>[];
    for (final dir in allDirs) {
      final package = PackageInfo.fromDirectory(dir);
      if (package == null || ignore.contains(package.name)) {
        continue;
      }
      allPackages.add(package);
    }
    return UnmodifiableMapView({
      for (final package in allPackages..sort()) package.name: package,
    });
  }
}
