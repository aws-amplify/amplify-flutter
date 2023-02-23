// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
    await super.run();
    for (final package in commandPackages.values) {
      if (package.pubspecInfo.pubspec.publishTo == 'none' &&
          !falsePositiveExamples.contains(package.name)) {
        continue;
      }
      // Some packages do not need to be tested.
      final libDir = Directory(p.join(package.path, 'lib'));
      final internalAndroidTestDir =
          Directory(p.join(package.path, 'android', 'src', 'test'));
      final externalAndroidPackageTestDir = Directory(
        p.join('${package.path}_android', 'android', 'src', 'test'),
      );
      final androidExampleDir = Directory(
        p.join(package.path, 'example', 'android'),
      );
      final hasLibDir = libDir.existsSync();
      final internalAndroidTestsDirExists = internalAndroidTestDir.existsSync();
      final externalAndroidPackageTestDirExists =
          externalAndroidPackageTestDir.existsSync();
      final androidExampleDirExists = androidExampleDir.existsSync();
      final hasAndroidTests = androidExampleDirExists &&
          (internalAndroidTestsDirExists ||
              externalAndroidPackageTestDirExists);
      if (!hasLibDir) {
        continue;
      }
      final workflowFilepath = p.join(
        rootDir.path,
        '.github',
        'workflows',
        '${package.name}.yaml',
      );
      final workflowFile = File(workflowFilepath);
      final repoRelativePath = p.relative(package.path, from: rootDir.path);
      final customWorkflow = File(p.join(package.path, 'workflow.yaml'));
      if (customWorkflow.existsSync()) {
        customWorkflow.copySync(workflowFilepath);
        continue;
      }
      final isDartPackage = package.flavor == PackageFlavor.dart;
      final needsAndroidTest =
          hasAndroidTests && package.flavor == PackageFlavor.flutter;

      const ddcWorkflow = 'dart_ddc.yaml';
      const dart2JsWorkflow = 'dart_dart2js.yaml';
      const nativeWorkflow = 'dart_native.yaml';
      const androidWorkflow = 'flutter_android.yaml';

      // Determine workflows used
      final analyzeAndTestWorkflow =
          isDartPackage ? 'dart_vm.yaml' : 'flutter_vm.yaml';
      final needsNativeTest =
          isDartPackage && package.unitTestDirectory != null;
      final needsWebTest =
          package.pubspecInfo.pubspec.devDependencies.containsKey('build_test');
      final workflows = [
        if (hasLibDir) analyzeAndTestWorkflow,
        if (needsNativeTest) nativeWorkflow,
        if (needsWebTest) ...[ddcWorkflow, dart2JsWorkflow],
        if (needsAndroidTest) androidWorkflow,
      ];
      final workflowPaths = [
        if (needsWebTest) '.github/composite_actions/setup_firefox/action.yaml',
        ...workflows.map((workflow) => '.github/workflows/$workflow'),
        p.relative(workflowFilepath, from: rootDir.path),
      ];
      final nativePlatformPaths = [
        if (needsAndroidTest) ...['android/**/*', 'example/android/**/*']
      ]
          .map(
            (packageRelativePath) => '$repoRelativePath/$packageRelativePath',
          )
          .toList();
      final androidExternalPackagePaths = [
        if (externalAndroidPackageTestDirExists)
          '${repoRelativePath}_android/**/*'
      ];
      final additionalPaths =
          nativePlatformPaths + androidExternalPackagePaths + workflowPaths;
      final additionalPathString =
          additionalPaths.map((path) => "      - '$path'").join('\n');

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
$additionalPathString
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
defaults:
  run:
    shell: bash
permissions: read-all

jobs:
  test:
    uses: ./.github/workflows/$analyzeAndTestWorkflow
    with:
      working-directory: $repoRelativePath
''',
      );

      if (needsNativeTest) {
        workflowContents.write(
          '''
  native_test:
    needs: test
    uses: ./.github/workflows/$nativeWorkflow
    with:
      working-directory: $repoRelativePath
''',
        );

        if (needsWebTest) {
          workflowContents.write(
            '''
  ddc_test:
    needs: test
    uses: ./.github/workflows/$ddcWorkflow
    with:
      working-directory: $repoRelativePath
  dart2js_test:
    needs: test
    uses: ./.github/workflows/$dart2JsWorkflow
    with:
      working-directory: $repoRelativePath
''',
          );
        }
      }

      if (needsAndroidTest) {
        workflowContents.write(
          '''
  android_test:
    uses: ./.github/workflows/$androidWorkflow
    with:
      working-directory: $repoRelativePath
''',
        );
      }

      workflowFile.writeAsStringSync(workflowContents.toString());
    }
  }
}
