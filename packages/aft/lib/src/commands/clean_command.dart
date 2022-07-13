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

import 'package:aft/aft.dart';
import 'package:aft/src/util.dart';
import 'package:async/async.dart';
import 'package:path/path.dart' as p;

const _deletePaths = [
  'pubspec_overrides.yaml',
];

/// Command to clean all temporary files in the repo.
class CleanCommand extends AmplifyCommand {
  @override
  String get description =>
      'Cleans temporary files in the Amplify Flutter repo';

  @override
  String get name => 'clean';

  Future<void> _deleteIfPresent(String path) async {
    final file = File(path);
    if (await file.exists()) {
      await file.delete(recursive: true);
    }
  }

  Future<void> _cleanBuildFolder(PackageInfo package) async {
    final buildDir = Directory(p.join(package.path, 'build'));
    if (!await buildDir.exists()) {
      return;
    }
    switch (package.flavor) {
      case PackageFlavor.flutter:
        final cleanCmd = await Process.start(
          'flutter',
          ['clean'],
          workingDirectory: package.path,
        );
        final errors = StringBuffer();
        cleanCmd.captureStderr(sink: errors.writeln);
        if (await cleanCmd.exitCode != 0) {
          logger
            ..stderr('Could not clean ${package.path}: ')
            ..stderr(errors.toString());
        }
        break;
      case PackageFlavor.dart:
        await buildDir.delete(recursive: true);
        break;
    }
  }

  @override
  Future<void> run() async {
    final futures = FutureGroup<void>();
    for (final package in (await allPackages).values) {
      for (final path in _deletePaths) {
        futures.add(_deleteIfPresent(p.join(package.path, path)));
      }
      futures.add(_cleanBuildFolder(package));
    }
    futures.close();
    await futures.future;

    stdout.writeln('Project successfully cleaned');
  }
}
