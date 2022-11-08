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
import 'package:path/path.dart' as p;

/// Command for generating GitHub Actions workflows for all packages in the
/// repo.
class GenerateWorkflowsCommand extends AmplifyCommand {
  @override
  String get name => 'workflows';

  @override
  String get description =>
      'Generate GitHub Actions workflows for repo packages';

  @override
  Future<void> run() async {
    final allPackages = await this.allPackages;
    final repoRoot = await rootDir;
    for (final package in allPackages.values) {
      if (package.pubspecInfo.pubspec.publishTo == 'none' &&
          !falsePositiveExamples.contains(package.name)) {
        continue;
      }
      // Some packages contain only native code/dependencies and do not need
      // to be tested by Dart/Flutter analyze or test.
      final libDir = Directory(p.join(package.path, 'lib'));
      if (!libDir.existsSync()) {
        continue;
      }
      final workflowFilepath = p.join(
        repoRoot.path,
        '.github',
        'workflows',
        '${package.name}.yaml',
      );
      final workflowFile = File(workflowFilepath);
      final repoRelativePath = p.relative(package.path, from: repoRoot.path);
      final customWorkflow = File(p.join(package.path, 'workflow.yaml'));
      if (customWorkflow.existsSync()) {
        customWorkflow.copySync(workflowFilepath);
        continue;
      }
      // Packages which are failing in DDC stable due to staticInterop issues
      // TODO(dnys1): Remove when Dart 2.19 is stable
      const failingDdcStable = [
        'amplify_auth_cognito_test',
        'amplify_secure_storage_test',
      ];
      final needsWebTest =
          package.pubspecInfo.pubspec.devDependencies.containsKey('build_test');
      final testDdcStable =
          needsWebTest && !failingDdcStable.contains(package.name);
      final isDartPackage = package.flavor == PackageFlavor.dart;
      final workflowContents = StringBuffer(
        '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name}
on:
  push:
    branches:
      - main
      - stable
      - next
  pull_request:
    paths:
      - '$repoRelativePath/**/*.dart'
      - '$repoRelativePath/**/*.yaml'
      - '$repoRelativePath/lib/**/*'
      - '$repoRelativePath/test/**/*'
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
defaults:
  run:
    shell: bash
permissions: read-all

jobs:
''',
      );
      final analyzeAndTestWorkflow =
          isDartPackage ? 'dart_vm.yaml' : 'flutter_vm.yaml';
      workflowContents.writeln(
        '''
  test:
    uses: ./.github/workflows/$analyzeAndTestWorkflow
    with:
      working-directory: $repoRelativePath
''',
      );

      if (isDartPackage && package.unitTestDirectory != null) {
        const nativeTestWorkflow = 'dart_native.yaml';
        workflowContents.writeln(
          '''
  native_test:
    if: \${{ github.event_name == 'push' }}
    needs: test
    uses: ./.github/workflows/$nativeTestWorkflow
    with:
      working-directory: $repoRelativePath
''',
        );

        if (needsWebTest) {
          const ddcWorkflow = 'dart_ddc.yaml';
          workflowContents.writeln(
            '''
  ddc_test:
    if: \${{ github.event_name == 'push' }}
    needs: test
    uses: ./.github/workflows/$ddcWorkflow
    with:
      working-directory: $repoRelativePath
      test-ddc-stable: $testDdcStable
''',
          );

          const dart2JsWorkflow = 'dart_dart2js.yaml';
          workflowContents.writeln(
            '''
  dart2js_test:
    needs: test
    uses: ./.github/workflows/$dart2JsWorkflow
    with:
      working-directory: $repoRelativePath
''',
          );
        }
      }
      workflowFile.writeAsStringSync(workflowContents.toString());
    }
  }
}
