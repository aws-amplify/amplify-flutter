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
      // Packages without a `lib/` folder generally contain only native code,
      // e.g. `amplify_flutter_android`. These packages are tested via their
      // parent package, e.g. `amplify_flutter`, and do not require a workflow
      // of their own.
      final libDir = Directory(p.join(package.path, 'lib'));
      if (!libDir.existsSync()) {
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

      const ddcWorkflow = 'dart_ddc.yaml';
      const dart2JsWorkflow = 'dart_dart2js.yaml';
      const nativeWorkflow = 'dart_native.yaml';

      // Determine workflows used
      final analyzeAndTestWorkflow =
          isDartPackage ? 'dart_vm.yaml' : 'flutter_vm.yaml';
      final needsNativeTest =
          isDartPackage && package.unitTestDirectory != null;
      final needsWebTest =
          package.pubspecInfo.pubspec.devDependencies.containsKey('build_test');
      final workflows = [
        analyzeAndTestWorkflow,
        if (needsNativeTest) nativeWorkflow,
        if (needsWebTest) ...[ddcWorkflow, dart2JsWorkflow],
      ];
      final workflowPaths = [
        if (needsWebTest) '.github/composite_actions/setup_firefox/action.yaml',
        ...workflows.map((workflow) => '.github/workflows/$workflow'),
        p.relative(workflowFilepath, from: rootDir.path),
      ].map((path) => "      - '$path'").join('\n');

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
$workflowPaths
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
      workflowFile.writeAsStringSync(workflowContents.toString());

      await generateAndroidUnitTestWorkflow(
        package: package,
        repoRelativePath: repoRelativePath,
      );
    }
  }

  /// If a package has Android unit tests, generate a separate workflow for them.
  Future<void> generateAndroidUnitTestWorkflow({
    required PackageInfo package,
    required String repoRelativePath,
  }) async {
    const androidWorkflow = 'flutter_android.yaml';

    final appFacingAndroidTestDir =
        Directory(p.join(package.path, 'android', 'src', 'test'));
    final platformAndroidPackageTestDir = Directory(
      p.join('${package.path}_android', 'android', 'src', 'test'),
    ); // federated _android package
    final androidExampleDir = Directory(
      p.join(package.path, 'example', 'android'),
    );
    final appFacingPackageAndroidTestsDirExists =
        appFacingAndroidTestDir.existsSync();
    final platformPackageAndroidTestDirExists =
        platformAndroidPackageTestDir.existsSync();
    final androidExampleDirExists = androidExampleDir.existsSync();
    final hasAndroidTests = androidExampleDirExists &&
        (appFacingPackageAndroidTestsDirExists ||
            platformPackageAndroidTestDirExists);

    if (package.flavor != PackageFlavor.flutter || !hasAndroidTests) {
      return;
    }

    final androidWorkflowFilepath = p.join(
      rootDir.path,
      '.github',
      'workflows',
      '${package.name}_android.yaml',
    );

    final androidPlatformPackagePaths = [
      if (platformPackageAndroidTestDirExists)
        '${repoRelativePath}_android/**/*'
    ];
    final androidWorkflowPaths = [
      '.github/workflows/$androidWorkflow',
      p.relative(androidWorkflowFilepath, from: rootDir.path)
    ];
    final androidPathString =
        (androidPlatformPackagePaths + androidWorkflowPaths)
            .map((path) => "      - '$path'")
            .join('\n');

    final androidWorkflowFile = File(androidWorkflowFilepath);
    final androidWorkflowContents = '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name} Android
on:
  push:
    branches:
      - main
      - stable
      - next
  pull_request:
    paths:
      - '$repoRelativePath/**/*.yaml'
      - '$repoRelativePath/android/**/*'
      - '$repoRelativePath/example/android/**/*'
$androidPathString
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
defaults:
  run:
    shell: bash
permissions: read-all

jobs:
  test:
    uses: ./.github/workflows/$androidWorkflow
    with:
      working-directory: $repoRelativePath/example/android
      package-name: ${package.name}
''';

      workflowFile.writeAsStringSync(workflowContents.toString());

      await generateAndroidUnitTestWorkflow(
        package: package,
        repoRelativePath: repoRelativePath,
      );
    }
  }

  /// If a package has Android unit tests, generate a separate workflow for them.
  Future<void> generateAndroidUnitTestWorkflow({
    required PackageInfo package,
    required String repoRelativePath,
  }) async {
    const androidWorkflow = 'flutter_android.yaml';

    final appFacingAndroidTestDir =
        Directory(p.join(package.path, 'android', 'src', 'test'));
    final platformAndroidPackageTestDir = Directory(
      p.join('${package.path}_android', 'android', 'src', 'test'),
    ); // federated _android package
    final androidExampleDir = Directory(
      p.join(package.path, 'example', 'android'),
    );
    final appFacingPackageAndroidTestsDirExists =
        appFacingAndroidTestDir.existsSync();
    final platformPackageAndroidTestDirExists =
        platformAndroidPackageTestDir.existsSync();
    final androidExampleDirExists = androidExampleDir.existsSync();
    final hasAndroidTests = androidExampleDirExists &&
        (appFacingPackageAndroidTestsDirExists ||
            platformPackageAndroidTestDirExists);

    if (package.flavor != PackageFlavor.flutter || !hasAndroidTests) {
      return;
    }

    final androidWorkflowFilepath = p.join(
      rootDir.path,
      '.github',
      'workflows',
      '${package.name}.android.yaml',
    );

    final androidPlatformPackagePaths = [
      if (platformPackageAndroidTestDirExists)
        '${repoRelativePath}_android/**/*'
    ];
    final androidWorkflowPaths = [
      '.github/workflows/$androidWorkflow',
      p.relative(androidWorkflowFilepath, from: rootDir.path)
    ];
    final androidPathString =
        (androidPlatformPackagePaths + androidWorkflowPaths)
            .map((path) => "      - '$path'")
            .join('\n');

    final androidWorkflowFile = File(androidWorkflowFilepath);
    final androidWorkflowContents = '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name} Android
on:
  push:
    branches:
      - main
      - stable
      - next
  pull_request:
    paths:
      - '$repoRelativePath/**/*.yaml'
      - '$repoRelativePath/android/**/*'
      - '$repoRelativePath/example/android/**/*'
$androidPathString
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
defaults:
  run:
    shell: bash
permissions: read-all

jobs:
  test:
    uses: ./.github/workflows/$androidWorkflow
    with:
      working-directory: $repoRelativePath/example/android
      package-name: ${package.name}
''';

    androidWorkflowFile.writeAsStringSync(androidWorkflowContents);
  }
}
