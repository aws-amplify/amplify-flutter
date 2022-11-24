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
import 'package:path/path.dart' as path;

/// Command to bootstrap/link Dart/Flutter packages in the repo.
class BootstrapCommand extends AmplifyCommand {
  BootstrapCommand() {
    argParser
      ..addFlag(
        'upgrade',
        abbr: 'u',
        help: 'Runs `pub upgrade` instead of `pub get`',
        negatable: true,
        defaultsTo: true,
      )
      ..addFlag(
        'build',
        help: 'Runs build_runner for packages which need it',
        negatable: true,
        defaultsTo: true,
      );
  }

  @override
  String get description => 'Links all packages in the Amplify Flutter repo '
      'to prepare for local development';

  @override
  String get name => 'bootstrap';

  @override
  List<String> get aliases => ['bs'];

  late final bool upgrade = argResults!['upgrade'] as bool;
  late final bool build = argResults!['build'] as bool;

  /// Creates an empty `amplifyconfiguration.dart` file.
  Future<void> _createEmptyConfig(PackageInfo package) async {
    // Only create for example apps.
    if (package.pubspecInfo.pubspec.publishTo == null ||
        falsePositiveExamples.contains(package.name)) {
      return;
    }
    final file = File(
      path.join(package.path, 'lib', 'amplifyconfiguration.dart'),
    );
    if (await file.exists() ||
        !await Directory(path.join(package.path, 'lib')).exists()) {
      return;
    }
    await file.create();
    await file.writeAsString(
      '''
const amplifyconfig = \'\'\'{
  "UserAgent": "aws-amplify-cli/2.0",
  "Version": "1.0"
}\'\'\';

const amplifyEnvironments = <String, String>{};
''',
    );
  }

  @override
  Future<void> run() async {
    final allPackages = await this.allPackages;
    await linkPackages(allPackages);
    await pubAction(
      action: upgrade ? PubAction.upgrade : PubAction.get,
      allPackages: allPackages.values.where(
        // Skip bootstrap for `aft` since it has already had `dart pub upgrade`
        // run with the native command, and running it again with the embedded
        // command could cause issues later on, esp. when the native `pub`
        // command is significantly newer/older than the embedded one.
        (pkg) => pkg.name != 'aft',
      ),
      verbose: verbose,
      logger: logger,
      createPubRunner: createPubRunner,
      httpClient: httpClient,
    );
    await Future.wait([
      for (final package in allPackages.values) _createEmptyConfig(package)
    ]);
    if (build) {
      for (final package in allPackages.values) {
        // Only run build_runner for packages which need it for development,
        // i.e. those packages which specify worker JS files in their assets.
        final needsBuild = package.needsBuildRunner &&
            (package.pubspecInfo.pubspec.flutter?.containsKey('assets') ??
                false);
        if (needsBuild) {
          await runBuildRunner(package, logger: logger, verbose: verbose);
        }
      }
    }

    stdout.writeln('Repo successfully bootstrapped!');
  }
}
