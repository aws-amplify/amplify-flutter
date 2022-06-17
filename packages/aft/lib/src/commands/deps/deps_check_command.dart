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

part of 'deps_command.dart';

class _DepsCheckCommand extends AmplifyCommand {
  @override
  String get description =>
      'Checks whether all dependency constraints in the repo '
      'match the global dependency config.';

  @override
  String get name => 'check';

  @override
  Future<void> run() async {
    final globalDependencyConfig = await this.globalDependencyConfig;
    final mismatchedDependencies = <String>[];
    for (final package in await allPackages) {
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
          satisfiesGlobalConstraint =
              globalConstraint.allowsAll(localConstraint);
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
        logger.stderr(mismatched);
      }
      exit(1);
    }
    logger.stdout('All dependencies matched!');
  }
}
