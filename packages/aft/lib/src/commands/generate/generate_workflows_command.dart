// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:aft/aft.dart';
import 'package:path/path.dart' as p;

/// Command for generating GitHub Actions workflows for all packages in the
/// repo.
class GenerateWorkflowsCommand extends AmplifyCommand {
  GenerateWorkflowsCommand() {
    argParser.addFlag(
      'set-exit-if-changed',
      defaultsTo: false,
      help: 'Return exit code 1 if there are any workflow changes.',
    );
  }

  @override
  String get name => 'workflows';

  @override
  String get description =>
      'Generate GitHub Actions workflows for repo packages';

  late final bool setExitIfChanged = argResults!['set-exit-if-changed'] as bool;

  final _dependabotConfig = StringBuffer('''
# Generated with aft. To update, run: `aft generate workflows`
version: 2
enable-beta-ecosystems: true
updates:
  - package-ecosystem: "github-actions"
    directory: "/"
    schedule:
      interval: "weekly"
''');

  @override
  Future<void> run() async {
    await super.run();
    for (final package in commandPackages.values) {
      final repoRelativePath = p.relative(package.path, from: rootDir.path);
      final dependentPackages = <PackageInfo>[];
      dfs(
        repo.getPackageGraph(includeDevDependencies: true),
        root: package,
        (dependent) {
          if (dependent == package || !dependent.isDevelopmentPackage) {
            return;
          }
          dependentPackages.add(dependent);
        },
      );
      _dependabotConfig.write('''
  - package-ecosystem: "pub"
    directory: "$repoRelativePath"
    schedule:
      interval: "daily"
''');
      if (dependentPackages.isNotEmpty) {
        _dependabotConfig.write('''
    ignore:
${dependentPackages.map((dep) => '      - dependency-name: "${dep.name}"').join('\n')}
''');
      }

      if (package.pubspecInfo.pubspec.publishTo == 'none' &&
          !falsePositiveExamples.contains(package.name)) {
        continue;
      }
      // Packages without a `lib/` folder generally contain only native code,
      // e.g. `amplify_auth_cognito_android`. These packages are tested via their
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

      // Collect all the paths for which this workflow will run. This includes
      // paths in the package itself plus any modifications in transitive
      // dependencies which could impact this.
      final workflowPaths = [
        if (needsWebTest) '.github/composite_actions/setup_firefox/action.yaml',
        ...workflows.map((workflow) => '.github/workflows/$workflow'),
        p.relative(workflowFilepath, from: rootDir.path),
        '$repoRelativePath/**/*.dart',
        '$repoRelativePath/**/*.yaml',
        '$repoRelativePath/lib/**/*',
        '$repoRelativePath/test/**/*',
      ];
      for (final dependent in dependentPackages) {
        final repoRelativePath = p.relative(
          dependent.path,
          from: rootDir.path,
        );
        if (dependent.isLintsPackage) {
          workflowPaths.addAll([
            '$repoRelativePath/pubspec.yaml',
            '$repoRelativePath/lib/**/*.yaml',
          ]);
          continue;
        }
        workflowPaths.addAll([
          '$repoRelativePath/pubspec.yaml',
          '$repoRelativePath/lib/**/*.dart',
        ]);
      }

      workflowPaths.sort();

      final workflowContents = StringBuffer(
        '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name}
on:
  push:
    branches:
      - main
      - stable
  pull_request:
    paths:
${workflowPaths.map((path) => "      - '$path'").join('\n')}
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
      package-name: ${package.name}
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
      package-name: ${package.name}
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
      package-name: ${package.name}
      working-directory: $repoRelativePath
  dart2js_test:
    needs: test
    uses: ./.github/workflows/$dart2JsWorkflow
    with:
      package-name: ${package.name}
      working-directory: $repoRelativePath
''',
          );
        }
      }

      writeWorkflowFile(workflowFile, workflowContents.toString());

      await generateAndroidUnitTestWorkflow(
        package: package,
        repoRelativePath: repoRelativePath,
      );
      await generateIosUnitTestWorkflow(
        package: package,
        repoRelativePath: repoRelativePath,
      );
    }

    final dependabotFile = File(
      p.join(rootDir.path, '.github', 'dependabot.yaml'),
    );
    writeWorkflowFile(dependabotFile, _dependabotConfig.toString());

    // Check if workflow generation caused `git diff` to change.
    if (setExitIfChanged) {
      final gitDiff = await Process.start(
        'git',
        ['diff', '--relative', '--', '.github/workflows'],
        workingDirectory: rootDir.path,
      );

      final gitDiffOutput = StringBuffer();
      gitDiff
        ..captureStdout()
        ..captureStdout(sink: gitDiffOutput.write)
        ..captureStderr()
        ..captureStderr(sink: gitDiffOutput.write);
      if (await gitDiff.exitCode != 0 || gitDiffOutput.isNotEmpty) {
        logger
          ..error('Workflows are not up to date.')
          ..error('Run `aft generate workflows` to regenerate them.');
        exit(1);
      }
    }
  }

  /// If a package has Android unit tests, generate a separate workflow for them.
  Future<void> generateAndroidUnitTestWorkflow({
    required PackageInfo package,
    required String repoRelativePath,
  }) async {
    if (package.flavor != PackageFlavor.flutter) {
      return;
    }

    final appFacingAndroidPackageDir =
        Directory(p.join(package.path, 'android'));
    final platformAndroidPackageDir = Directory(
      p.join('${package.path}_android', 'android'),
    );

    if (!appFacingAndroidPackageDir.existsSync() &&
        !platformAndroidPackageDir.existsSync()) {
      return;
    }

    final androidPackageDir = appFacingAndroidPackageDir.existsSync()
        ? appFacingAndroidPackageDir.path
        : platformAndroidPackageDir.path;

    _dependabotConfig.write('''
  - package-ecosystem: "gradle"
    directory: "${p.relative(androidPackageDir, from: rootDir.path)}"
    schedule:
      interval: "weekly"
    ignore:
      # Ignore Kotlin updates since we should always match Flutter stable
      # to ensure users can have Kt versions >= Flutter stable.
      - dependency-name: "kotlin"
''');

    final appFacingAndroidTestDir =
        Directory(p.join(appFacingAndroidPackageDir.path, 'src', 'test'));
    final platformAndroidPackageTestDir = Directory(
      p.join(platformAndroidPackageDir.path, 'src', 'test'),
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

    final androidWorkflow = hasAndroidTests
        ? 'flutter_android.test.yaml'
        : 'flutter_android.build.yaml';
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
    final workingDirectory = hasAndroidTests
        ? '$repoRelativePath/example/android'
        : '$repoRelativePath/example';
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
      working-directory: $workingDirectory
      package-name: ${package.name}
''';

    writeWorkflowFile(androidWorkflowFile, androidWorkflowContents);
  }

  /// If a package has iOS unit tests, generate a separate workflow for them.
  Future<void> generateIosUnitTestWorkflow({
    required PackageInfo package,
    required String repoRelativePath,
  }) async {
    const iosWorkflow = 'flutter_ios.yaml';
    final platformPackageName = '${package.name}_ios'; // federated _ios package
    final platformPackagePath = '${package.path}_ios';
    final appFacingTestDir =
        Directory(p.join(package.path, 'example', 'ios', 'unit_tests'));
    final platformPackageDir = Directory(platformPackagePath);
    final platformPackageTestDir = Directory(
      p.join(platformPackagePath, 'example', 'ios', 'unit_tests'),
    ); // federated _ios package

    final appFacingPackageTestsDirExists = appFacingTestDir.existsSync();
    final platformPackageDirExists = platformPackageDir.existsSync();
    final platformPackageTestDirExists = platformPackageTestDir.existsSync();
    final hasIosTests =
        appFacingPackageTestsDirExists || platformPackageTestDirExists;

    if (package.flavor != PackageFlavor.flutter || !hasIosTests) {
      return;
    }

    final iosWorkflowFilepath = p.join(
      rootDir.path,
      '.github',
      'workflows',
      '${package.name}.ios.yaml',
    );

    final iosPlatformPackagePaths = [
      if (platformPackageDirExists) '${repoRelativePath}_ios/**/*'
    ];
    final iosWorkflowPaths = [
      '.github/workflows/$iosWorkflow',
      p.relative(iosWorkflowFilepath, from: rootDir.path)
    ];
    final iosPathString = (iosPlatformPackagePaths + iosWorkflowPaths)
        .map((path) => "      - '$path'")
        .join('\n');

    // Some packages have their tests in the federated package, so the tests should
    // run from there instead of app-facing package.
    final packageNameToTest =
        platformPackageTestDirExists ? platformPackageName : package.name;
    final relativePathToTest = platformPackageTestDirExists
        ? '${repoRelativePath}_ios'
        : repoRelativePath;

    final iosWorkflowFile = File(iosWorkflowFilepath);
    final iosWorkflowContents = '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name} iOS
on:
  push:
    branches:
      - main
      - stable
      - next
  pull_request:
    paths:
      - '$repoRelativePath/**/*.yaml'
      - '$repoRelativePath/ios/**/*'
      - '$repoRelativePath/example/ios/unit_tests/**/*'
$iosPathString
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
defaults:
  run:
    shell: bash
permissions: read-all

jobs:
  test:
    uses: ./.github/workflows/$iosWorkflow
    with:
      working-directory: $relativePathToTest/example/ios
      package-name: $packageNameToTest
''';

    writeWorkflowFile(iosWorkflowFile, iosWorkflowContents);
  }

  void writeWorkflowFile(File workflowFile, String content) {
    if (!workflowFile.existsSync()) {
      workflowFile.createSync();
    }
    workflowFile.writeAsStringSync(content);
  }
}
