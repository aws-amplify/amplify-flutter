// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:collection';
import 'dart:io';

import 'package:aft/src/config/config.dart';
import 'package:aft/src/config/raw_config.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:yaml/yaml.dart';

/// Loads the AFT configuration for the current working directory.
class AftConfigLoader {
  AftConfigLoader({
    @visibleForTesting this.rootPackageName = 'amplify_flutter_repo',
    Directory? workingDirectory,
    String? rootDirectoryOverride,
  })  : workingDirectory = workingDirectory ?? Directory.current,
        _rootDirectoryOverride = rootDirectoryOverride;

  final String rootPackageName;
  final Directory workingDirectory;
  final String? _rootDirectoryOverride;

  AftConfig? _loadedConfig;

  Queue<PubspecInfo> get _pubspecs {
    if (_rootDirectoryOverride case final override?) {
      final rootDirectory = Directory(override);
      final rootPubspec = rootDirectory.pubspec;
      if (rootPubspec == null) {
        throw StateError(
          'Invalid directory passed to `--root`. Make sure you pass the root '
          'of the Amplify Flutter repo or worktree.',
        );
      }
      return Queue.of([
        rootPubspec,
        if (workingDirectory.pubspec case final workingPubspec?) workingPubspec,
      ]);
    }
    var dir = workingDirectory;
    Directory? rootDirectory;
    final pubspecs = Queue<PubspecInfo>();
    while (p.absolute(dir.parent.path) != p.absolute(dir.path)) {
      if (dir.pubspec case final pubspecInfo?) {
        pubspecs.addFirst(pubspecInfo);
        if (pubspecInfo.pubspec.name == rootPackageName) {
          rootDirectory = dir;
        }
      }
      dir = dir.parent;
    }
    if (rootDirectory == null) {
      throw StateError(
        'Root directory not found. Make sure to run this command '
        'from within a Dart or Flutter project or specify `--root` '
        'to the location of the Amplify Flutter repo.',
      );
    }
    return pubspecs;
  }

  /// Reloads the AFT configuration from disk.
  AftConfig reload() {
    return _loadedConfig = _processPubspecs(_pubspecs);
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
      if (package == null) {
        continue;
      }
      if (ignore.contains(package.name)) {
        continue;
      }
      allPackages.add(package);
    }
    return UnmodifiableMapView({
      for (final package in allPackages..sort()) package.name: package,
    });
  }

  /// Creates the consolidated [AftConfig] using all relevant [pubspecs].
  AftConfig _processPubspecs(Iterable<PubspecInfo> pubspecs) {
    final rootDirectory = Directory(
      p.dirname(pubspecs.first.uri.toFilePath()),
    );
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

    for (final (i, PubspecInfo(:pubspecMap, :pubspec)) in pubspecs.indexed) {
      mergePubspec(pubspecMap, pubspec, isRoot: i == 0);
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
            final summary => repoPackages[summary]!,
          };
          final packages =
              component.packages.map((name) => repoPackages[name]!).toList();
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
}
