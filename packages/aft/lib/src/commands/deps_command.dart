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
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

enum _DepsAction {
  check(
    'Checks whether all dependency constraints in the repo match '
        'the global dependency config',
    'All dependencies matched!',
  ),
  update(
    'Updates dependency constraints throughout the repo to match those '
        'in the global dependency config',
    'Dependencies successfully updated!',
  );

  const _DepsAction(this.description, this.successMessage);

  final String description;
  final String successMessage;
}

/// Command to manage dependencies across all Dart/Flutter packages in the repo.
class DepsCommand extends AmplifyCommand {
  DepsCommand() {
    addSubcommand(_DepsSubcommand(_DepsAction.check));
    addSubcommand(_DepsSubcommand(_DepsAction.update));
  }

  @override
  String get description =>
      'Manage dependencies across all packages in the Amplify Flutter repo';

  @override
  String get name => 'deps';
}

class _DepsSubcommand extends AmplifyCommand {
  _DepsSubcommand(this.action);

  final _DepsAction action;

  @override
  String get description => action.description;

  @override
  String get name => action.name;

  final _mismatchedDependencies = <String>[];

  void _checkDependency(
    PackageInfo package,
    Map<String, Dependency> dependencies,
    DependencyType dependencyType,
    MapEntry<String, VersionConstraint> globalDep,
  ) {
    final dependencyName = globalDep.key;
    final localDep = dependencies[dependencyName];
    if (localDep is! HostedDependency) {
      return;
    }
    bool satisfiesGlobalConstraint;
    final globalConstraint = globalDep.value;
    if (globalConstraint is Version) {
      satisfiesGlobalConstraint = globalDep.value == localDep.version;
    } else {
      final localConstraint = localDep.version;
      satisfiesGlobalConstraint = globalConstraint.allowsAll(localConstraint);
    }
    if (!satisfiesGlobalConstraint) {
      switch (action) {
        case _DepsAction.check:
          _mismatchedDependencies.add(
            '${package.path}\n'
            'Mismatched ${dependencyType.description} ($dependencyName):\n'
            'Expected ${globalDep.value}\n'
            'Found ${localDep.version}\n',
          );
          break;
        case _DepsAction.update:
          package.pubspecInfo.pubspecYamlEditor.update(
            [dependencyType.key, dependencyName],
            '${globalDep.value}',
          );
          break;
      }
    }
  }

  @override
  Future<void> run() async {
    final globalDependencyConfig = await this.globalDependencyConfig;
    for (final package in await allPackages) {
      for (final globalDep in globalDependencyConfig.dependencies.entries) {
        _checkDependency(
          package,
          package.pubspecInfo.pubspec.dependencies,
          DependencyType.dependency,
          globalDep,
        );
        _checkDependency(
          package,
          package.pubspecInfo.pubspec.dependencyOverrides,
          DependencyType.dependencyOverride,
          globalDep,
        );
        _checkDependency(
          package,
          package.pubspecInfo.pubspec.devDependencies,
          DependencyType.devDependency,
          globalDep,
        );
      }

      if (package.pubspecInfo.pubspecYamlEditor.edits.isNotEmpty) {
        await File.fromUri(package.pubspecInfo.uri).writeAsString(
          package.pubspecInfo.pubspecYamlEditor.toString(),
        );
      }
    }
    if (_mismatchedDependencies.isNotEmpty) {
      for (final mismatched in _mismatchedDependencies) {
        logger.stderr(mismatched);
      }
      exit(1);
    }
    logger.stdout(action.successMessage);
  }
}
