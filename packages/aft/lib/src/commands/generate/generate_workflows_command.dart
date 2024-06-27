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

  late final StringBuffer _dependabotConfig = () {
    final groupPubPackages =
        repo.aftConfig.dependencies.keys.map(_dependabotGroup).join('\n');
    return StringBuffer('''
# Generated with aft. To update, run: `aft generate workflows`
version: 2
enable-beta-ecosystems: true
updates:
  - package-ecosystem: "github-actions"
    directory: "/"
    schedule:
      interval: "weekly"
  # The `github-actions` ecosystem only searches
  # `.github/workflows` by default.
  - package-ecosystem: "github-actions"
    directory: ".github/composite_actions"
    schedule:
      interval: "weekly"

  - package-ecosystem: "npm"
    directory: "infra"
    schedule:
      interval: "weekly"
    groups:
      cdk:
        patterns:
          - "aws-cdk"
          - "aws-cdk-lib"
          - "@aws-cdk/*"
          - "constructs"
      aws-sdk-js:
        patterns:
          - "@aws-sdk/*"
          - "@aws-crypto/*"
    ignore:
      # Ignore patch version bumps
      - dependency-name: "*"
        update-types:
          - "version-update:semver-patch"
  - package-ecosystem: "npm"
    directory: "infra-gen2"
    schedule:
      interval: "weekly"
    groups:
      cdk:
        patterns:
          - "aws-amplify"
          - "@aws-amplify/*"
          - "aws-cdk"
          - "aws-cdk-lib"
          - "constructs"
      aws-sdk-js:
        patterns:
          - "@aws-sdk/*"
          - "@aws-crypto/*"
    ignore:
      # Ignore patch version bumps
      - dependency-name: "*"
        update-types:
          - "version-update:semver-patch"
  - package-ecosystem: "pub"
    directory: "/"
    schedule:
      interval: "daily"
    # Group dependencies which have a constraint set in the global "pubspec.yaml"
    groups:
$groupPubPackages
''');
  }();

  String _dependabotGroup(String pkg) {
    return '''
      $pkg:
        patterns:
          - "$pkg"''';
  }

  /// Collects all dependencies (direct + transitive) for [package].
  List<PackageInfo> _collectDependencies(
    PackageInfo package, {
    required String repoRelativePath,
  }) {
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
    ignore:
      # Ignore patch version bumps
      - dependency-name: "*"
        update-types:
          - "version-update:semver-patch"
''');
    if (dependentPackages.isNotEmpty) {
      _dependabotConfig.write('''
      # Ignore all repo packages
${dependentPackages.map((dep) => '      - dependency-name: "${dep.name}"').join('\n')}
''');
    }
    final dependabotGroups = {
      ...package.pubspecInfo.pubspec.dependencies.keys,
      ...package.pubspecInfo.pubspec.devDependencies.keys,
    }
        .where(repo.aftConfig.dependencies.keys.contains)
        .map(_dependabotGroup)
        .toList();
    if (dependabotGroups.isNotEmpty) {
      _dependabotConfig.write('''
    # Group dependencies which have a constraint set in the global "pubspec.yaml"
    groups:
${dependabotGroups.join('\n')}
''');
    }
    return dependentPackages;
  }

  @override
  Future<void> run() async {
    await super.run();
    for (final package in commandPackages.values) {
      final repoRelativePath = p.relative(package.path, from: rootDir.path);
      final dependentPackages = _collectDependencies(
        package,
        repoRelativePath: repoRelativePath,
      );

      if (package.pubspecInfo.pubspec.publishTo == 'none' &&
          !falsePositiveExamples.contains(package.name)) {
        continue;
      }

      await generateForPackage(
        package,
        repoRelativePath: repoRelativePath,
        dependentPackages: dependentPackages,
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

  Future<void> generateForPackage(
    PackageInfo package, {
    required String repoRelativePath,
    required List<PackageInfo> dependentPackages,
  }) async {
    // Packages without a `lib/` folder generally contain only native code.
    // These packages are tested via their parent package and do not require
    // a workflow of their own.
    final libDir = Directory(p.join(package.path, 'lib'));
    if (!libDir.existsSync()) {
      return;
    }
    final workflowFilepath = p.join(
      rootDir.path,
      '.github',
      'workflows',
      '${package.name}.yaml',
    );
    final workflowFile = File(workflowFilepath);
    if (package.pubspecInfo.config.aft?.github?.custom ?? false) {
      if (!workflowFile.existsSync()) {
        throw Exception(
          'Package "${package.name}" sets `custom: true` but no workflow '
          'file was found at: $workflowFilepath',
        );
      }
      return;
    }
    final isDartPackage = package.flavor == PackageFlavor.dart;

    const ddcWorkflow = 'dart_ddc.yaml';
    const dart2JsWorkflow = 'dart_dart2js.yaml';
    const nativeWorkflow = 'dart_native.yaml';
    final e2eWorkflows = {
      'android': 'e2e_android.yaml',
      'ios': 'e2e_ios.yaml',
      if (!package.name.contains('datastore')) ...{
        'web': 'e2e_web.yaml',
        'linux': 'e2e_linux.yaml',
        'windows': 'e2e_windows.yaml',
      },
    };

    // Determine workflows used
    final analyzeAndTestWorkflow =
        isDartPackage ? 'dart_vm.yaml' : 'flutter_vm.yaml';
    final needsNativeTest = isDartPackage && package.unitTestDirectory != null;
    final needsWebTest =
        package.pubspecInfo.pubspec.devDependencies.containsKey('build_test');
    // TODO(dnys1): Enable E2E runs for Dart packages
    final needsE2ETest = package.flavor == PackageFlavor.flutter &&
        package.integrationTestDirectory != null;
    final hasGoldens = package.flavor == PackageFlavor.flutter &&
        package.goldensTestDirectory != null;
    final workflows = <String>[
      analyzeAndTestWorkflow,
      if (needsNativeTest) nativeWorkflow,
      if (needsWebTest) ...[ddcWorkflow, dart2JsWorkflow],
      if (needsE2ETest) ...e2eWorkflows.values,
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

      // run e2e tests (if present) when native resources change in a dependency
      if (needsE2ETest) {
        const nativeDirectories = [
          'android',
          'ios',
          'macos',
          'darwin',
          'windows',
          'linux',
          'web',
        ];
        workflowPaths.addAll([
          for (final dir in nativeDirectories)
            if (dependent.hasDirectory(dir)) '$repoRelativePath/$dir/**/*',
        ]);
      }
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
    paths:
${workflowPaths.map((path) => "      - '$path'").join('\n')}
  pull_request:
    paths:
${workflowPaths.map((path) => "      - '$path'").join('\n')}
  schedule:
    - cron: "0 13 * * *" # Everyday at 06:00 PST
  workflow_dispatch:
defaults:
  run:
    shell: bash

$permissionsBlock

# Cancels in-progress job when there is another push to same ref.
# https://docs.github.com/en/actions/using-jobs/using-concurrency#example-only-cancel-in-progress-jobs-or-runs-for-the-current-workflow
concurrency:
  group: \${{ github.workflow }}-\${{ github.ref }}
  cancel-in-progress: true

jobs:
  test:
    uses: ./.github/workflows/$analyzeAndTestWorkflow
    secrets: inherit
    with:
      package-name: ${package.name}
      working-directory: $repoRelativePath
''',
    );
    if (!isDartPackage) {
      workflowContents.write(
        '''
      has-goldens: $hasGoldens
''',
      );
    }

    if (needsNativeTest) {
      workflowContents.write(
        '''
  native_test:
    needs: test
    uses: ./.github/workflows/$nativeWorkflow
    secrets: inherit 
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
    secrets: inherit
    with:
      package-name: ${package.name}
      working-directory: $repoRelativePath
  dart2js_test:
    needs: test
    uses: ./.github/workflows/$dart2JsWorkflow
    secrets: inherit
    with:
      package-name: ${package.name}
      working-directory: $repoRelativePath
''',
        );
      }
    }

    if (needsE2ETest) {
      final dependsOn = [
        'test',
        if (needsNativeTest) 'native_test',
        if (needsWebTest) ...['ddc_test', 'dart2js_test'],
      ];
      final needsAwsConfig = File(
        p.join(package.path, 'tool', 'pull_test_backend.sh'),
      ).existsSync();
      final needsGen2Config = File(
        p.join(package.path, 'tool', 'pull_test_gen2_backend.sh'),
      ).existsSync();
      for (final MapEntry(key: platform, value: e2eWorkflow)
          in e2eWorkflows.entries) {
        workflowContents.write(
          '''
  e2e_${platform}_test:
    needs: [${dependsOn.join(', ')}]
    uses: ./.github/workflows/$e2eWorkflow
    secrets: inherit
    with:
      package-name: ${package.name}
      working-directory: $repoRelativePath
      needs-aws-config: $needsAwsConfig
      needs-gen2-config: $needsGen2Config
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

    if (package.example case final examplePackage?) {
      final repoRelativePath = p.relative(
        examplePackage.path,
        from: rootDir.path,
      );
      await generateForPackage(
        examplePackage,
        repoRelativePath: repoRelativePath,
        dependentPackages: _collectDependencies(
          examplePackage,
          repoRelativePath: repoRelativePath,
        ),
      );
    }
  }

  /// If a package has Android unit tests, generate a separate workflow for them.
  ///
  // Tests are run from example/android since Android packages
  // are tested through their example apps.
  //
  // Builds are run from example for the same reason.
  Future<void> generateAndroidUnitTestWorkflow({
    required PackageInfo package,
    required String repoRelativePath,
  }) async {
    final androidPath = p.join(package.path, 'android');
    final androidDir = Directory(androidPath);
    final hasAndroidCode = androidDir.existsSync();
    if (package.flavor != PackageFlavor.flutter ||
        !hasAndroidCode ||
        package.example == null) {
      return;
    }

    _dependabotConfig.write('''
  - package-ecosystem: "gradle"
    directory: "${p.relative(androidPath, from: rootDir.path)}"
    schedule:
      interval: "weekly"
    ignore:
      # Ignore Kotlin updates since we should always match Flutter stable
      # to ensure users can have Kt versions >= Flutter stable.
      - dependency-name: "kotlin_version"
      - dependency-name: "org.jetbrains.kotlin:kotlin-gradle-plugin"
      
      # Ignore patch version bumps
      - dependency-name: "*"
        update-types:
          - "version-update:semver-patch"
    groups:
      amplify-android:
        patterns:
          - "com.amplifyframework:*"
          - "com.amazonaws:*"
      mockito:
        patterns:
          - "org.mockito:*"
''');

    final androidTestDir = Directory(
      p.join(androidDir.path, 'src', 'test'),
    );
    final exampleAndroidDir = Directory(
      p.join(package.path, 'example', 'android'),
    );
    final hasAndroidTests =
        androidTestDir.existsSync() && exampleAndroidDir.existsSync();
    final androidWorkflowFilepath = p.join(
      rootDir.path,
      '.github',
      'workflows',
      '${package.name}_android.yaml',
    );

    const androidWorkflow = 'flutter_android.yaml';
    final androidWorkflowPaths = [
      '.github/workflows/$androidWorkflow',
      p.relative(androidWorkflowFilepath, from: rootDir.path),
    ];
    final androidWorkflowFile = File(androidWorkflowFilepath);
    final androidWorkflowContents = '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name} Android
on:
  push:
    branches:
      - main
      - stable
  pull_request:
    paths:
      - '$repoRelativePath/**/*.yaml'
      - '$repoRelativePath/android/**/*'
      - '$repoRelativePath/example/android/**/*'
${androidWorkflowPaths.map((path) => "      - '$path'").join('\n')}
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
  workflow_dispatch:
defaults:
  run:
    shell: bash
$permissionsBlock

# Cancels in-progress job when there is another push to same ref.
# https://docs.github.com/en/actions/using-jobs/using-concurrency#example-only-cancel-in-progress-jobs-or-runs-for-the-current-workflow
concurrency:
  group: \${{ github.workflow }}-\${{ github.ref }}
  cancel-in-progress: true

jobs:
  android:
    uses: ./.github/workflows/$androidWorkflow
    secrets: inherit
    with:
      example-directory: $repoRelativePath/example
      package-name: ${package.name}
      has-native-tests: $hasAndroidTests
''';

    writeWorkflowFile(androidWorkflowFile, androidWorkflowContents);
  }

  /// If a package has iOS unit tests, generate a separate workflow for them.
  Future<void> generateIosUnitTestWorkflow({
    required PackageInfo package,
    required String repoRelativePath,
  }) async {
    final iosDir = Directory(p.join(package.path, 'ios'));
    final hasIosCode = iosDir.existsSync();
    if (package.flavor != PackageFlavor.flutter ||
        !hasIosCode ||
        package.example == null) {
      return;
    }

    final iosTestDir = Directory(
      p.join(package.path, 'example', 'ios', 'unit_tests'),
    );
    final hasIosTests = iosTestDir.existsSync();
    final workflowFilepath = p.join(
      rootDir.path,
      '.github',
      'workflows',
      '${package.name}_ios.yaml',
    );

    const iosWorkflow = 'flutter_ios.yaml';
    final iosWorkflowPaths = [
      '.github/workflows/$iosWorkflow',
      p.relative(workflowFilepath, from: rootDir.path),
    ];
    final iosWorkflowFile = File(workflowFilepath);
    final iosWorkflowContents = '''
# Generated with aft. To update, run: `aft generate workflows`
name: ${package.name} iOS
on:
  push:
    branches:
      - main
      - stable
  pull_request:
    paths:
      - '$repoRelativePath/**/*.yaml'
      - '$repoRelativePath/ios/**/*'
      - '$repoRelativePath/example/ios/**/*'
${iosWorkflowPaths.map((path) => "      - '$path'").join('\n')}
  schedule:
    - cron: "0 0 * * 0" # Every Sunday at 00:00
  workflow_dispatch:
defaults:
  run:
    shell: bash
$permissionsBlock

# Cancels in-progress job when there is another push to same ref.
# https://docs.github.com/en/actions/using-jobs/using-concurrency#example-only-cancel-in-progress-jobs-or-runs-for-the-current-workflow
concurrency:
  group: \${{ github.workflow }}-\${{ github.ref }}
  cancel-in-progress: true

jobs:
  ios:
    uses: ./.github/workflows/$iosWorkflow
    secrets: inherit
    with:
      example-directory: $repoRelativePath/example
      package-name: ${package.name}
      has-native-tests: $hasIosTests
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

const permissionsBlock = '''
# These permissions are needed to interact with GitHub's OIDC Token endpoint.
permissions:
  id-token: write
  contents: read''';
