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
import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:stream_transform/stream_transform.dart';

import 'amplify_command.dart';

const _ignorePackages = [
  'synthetic_package',
];

/// Command to list all Dart/Flutter packages in the repo.
class ListPackagesCommand extends AmplifyCommand<void> {
  @override
  String get description => 'Lists all packages in the Amplify Flutter repo';

  @override
  String get name => 'list';

  Future<void> run() async {
    final rootDir = this.rootDir;
    final allDirs = rootDir
        .list(recursive: true, followLinks: false)
        .whereType<Directory>();

    final allPackages = <PackageInfo>[];
    await for (final dir in allDirs) {
      final pubspec = dir.pubspec;
      if (pubspec == null) {
        continue;
      }
      if (_ignorePackages.contains(pubspec.name)) {
        continue;
      }
      allPackages.add(PackageInfo(
        name: pubspec.name,
        path: dir.path,
        usesMonoRepo: dir.usesMonoRepo,
        flavor: pubspec.flavor,
      ));
    }
    allPackages.sort();

    for (final package in allPackages) {
      stdout.writeln(package.name);
    }
  }
}

/// The flavor of a package, e.g. Dart/Flutter.
enum PackageFlavor {
  flutter('Flutter'),
  dart('Dart');

  const PackageFlavor(this.displayName);
  final String displayName;
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
    required this.flavor,
  });

  /// The name of the package.
  final String name;

  /// Absolute path to the package.
  final String path;

  /// Whether the package uses the mono_repo tool.
  final bool usesMonoRepo;

  /// The package flavor, e.g. Dart or Flutter.
  final PackageFlavor flavor;

  @override
  List<Object?> get props => [
        name,
        path,
        usesMonoRepo,
        flavor,
      ];

  @override
  int compareTo(PackageInfo other) {
    return path.compareTo(other.path);
  }
}

extension on Directory {
  /// Whether the package in this directory uses the `mono_repo` tool.
  bool get usesMonoRepo {
    final monoPkgPath = p.join(path, 'mono_pkg.yaml');
    return File(monoPkgPath).existsSync();
  }

  /// The pubspec for the package in this directory, if any.
  Pubspec? get pubspec {
    final pubspecPath = p.join(path, 'pubspec.yaml');
    final pubspecFile = File(pubspecPath);
    if (!pubspecFile.existsSync()) {
      return null;
    }
    final pubspecYaml = pubspecFile.readAsStringSync();
    return Pubspec.parse(pubspecYaml, sourceUrl: pubspecFile.uri);
  }
}

extension on Pubspec {
  /// The package flavor of this pubspec.
  PackageFlavor get flavor {
    if (dependencies.keys.contains('flutter')) {
      return PackageFlavor.flutter;
    }
    return PackageFlavor.dart;
  }
}
