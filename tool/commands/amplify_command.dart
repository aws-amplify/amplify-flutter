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

import 'package:args/command_runner.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:path/path.dart' as p;
import 'package:stream_transform/stream_transform.dart';

import '../models.dart';

const _ignorePackages = [
  'synthetic_package',
];

abstract class AmplifyCommand<T> extends Command<T> {
  /// The root directory of the Amplify Flutter repo.
  late final Directory rootDir = () {
    var dir = Directory.current;
    while (dir.parent != dir) {
      for (final file in dir.listSync(followLinks: false).whereType<File>()) {
        if (p.basename(file.path) == 'mono_repo.yaml') {
          return dir;
        }
      }
      dir = dir.parent;
    }
    throw StateError(
      'Root directory not found. Make sure to run this command '
      'from within the Amplify Flutter repo',
    );
  }();

  /// All packages in the Amplify Flutter repo.
  late final List<PackageInfo> allPackages = () {
    final allDirs = rootDir
        .listSync(recursive: true, followLinks: false)
        .whereType<Directory>();

    final allPackages = <PackageInfo>[];
    for (final dir in allDirs) {
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
        pubspec: pubspec,
        flavor: pubspec.flavor,
      ));
    }
    return allPackages..sort();
  }();

  /// The global dependency configuration for the repo.
  late final GlobalDependencyConfig globalDependencyConfig = () {
    final depsFile = File(p.join(rootDir.path, 'deps.yaml'));
    assert(depsFile.existsSync(), 'Could not find deps.yaml');
    final depsYaml = depsFile.readAsStringSync();
    return checkedYamlDecode(depsYaml, GlobalDependencyConfig.fromJson);
  }();
}
