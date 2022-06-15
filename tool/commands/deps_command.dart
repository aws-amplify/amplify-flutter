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

import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

import 'amplify_command.dart';

/// Command to manage dependencies across all Dart/Flutter packages in the repo.
class DepsCommand extends AmplifyCommand<void> {
  DepsCommand() {
    addSubcommand(_DepsCheckCommand());
  }

  @override
  String get description =>
      'Manage dependencies across all packages in the Amplify Flutter repo';

  @override
  String get name => 'deps';
}

class _DepsCheckCommand extends AmplifyCommand<void> {
  @override
  String get description =>
      'Checks whether all dependency constraints in the repo '
      'match the global dependency config.';

  @override
  String get name => 'check';

  @override
  Future<void> run() async {
    final mismatchedDependencies = <String>[];
    for (final package in allPackages) {
      for (final globalDep in globalDependencyConfig.dependencies.entries) {
        final localDep = package.pubspec.dependencies[globalDep.key];
        if (localDep is! HostedDependency) {
          continue;
        }
        bool satisfiesGlobalConstraint;
        final globalConstraint = globalDep.value;
        if (globalConstraint is Version) {
          satisfiesGlobalConstraint = globalDep.value == localDep.version;
        } else {
          final localConstraint = localDep.version;
          satisfiesGlobalConstraint = localConstraint is Version &&
              globalConstraint.allows(localConstraint);
        }
        if (!satisfiesGlobalConstraint) {
          mismatchedDependencies.add(
            '${package.path}\n'
            'Mismatched dependency (${globalDep.key}):\n'
            'Expected ${globalDep.value}\n'
            'Found ${localDep.version}\n',
          );
        }
      }
    }
    if (mismatchedDependencies.isNotEmpty) {
      for (final mismatched in mismatchedDependencies) {
        stderr.writeln(mismatched);
      }
      exit(1);
    }
    stdout.writeln('All dependencies matched!');
  }
}
