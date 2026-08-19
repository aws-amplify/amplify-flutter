// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/commands/apache_license.dart';
import 'package:aft/src/constraints_checker.dart';
import 'package:aft/src/git.dart';
import 'package:aft/src/options/glob_options.dart';
import 'package:aft/src/publish_scheduler.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:graphs/graphs.dart';
import 'package:path/path.dart' as p;

/// Helpers for commands which publish packages to `pub.dev`.
mixin PublishHelpers on AmplifyCommand {
  bool get dryRun;
  bool get force;
  bool get bootstrap;

  /// Names of packages that are not yet published on pub.dev.
  final Set<String> _newPackages = {};

  /// How long pre-publish keeps retrying `pub upgrade` before giving up.
  static const _pubUpgradeTimeout = Duration(minutes: 20);

  /// How long to wait between `pub upgrade` attempts.
  static const _pubUpgradeRetryInterval = Duration(seconds: 60);

  /// Gathers the subset of packages which are publishable and whose latest
  /// version is not already available on `pub.dev`.
  Future<List<PackageInfo>> unpublishedPackages(
    List<PackageInfo> publishablePackages,
  ) async {
    final unpublishedPackages = (await Future.wait([
      for (final package in publishablePackages) checkPublishable(package),
    ])).whereType<PackageInfo>().toList();

    final constraintsChecker = PublishConstraintsChecker(
      dryRun ? ConstraintsAction.update : ConstraintsAction.check,
      repo.getPackageGraph(includeDevDependencies: true),
    );
    for (final package in unpublishedPackages) {
      constraintsChecker.checkConstraints(package);
    }
    final mismatchedDependencies = constraintsChecker.mismatchedDependencies;
    if (mismatchedDependencies.isNotEmpty) {
      for (final mismatched in mismatchedDependencies) {
        final (:package, :dependencyName, :message) = mismatched;
        logger.error(
          '${package.path}\n'
          'Mismatched `$dependencyName`:\n'
          '$message\n',
        );
      }
      exit(1);
    }

    try {
      sortPackagesTopologically<PackageInfo>(
        unpublishedPackages,
        (pkg) => pkg.pubspecInfo.pubspec,
      );
    } on CycleException<dynamic> {
      if (!force) {
        exitError('Cannot sort packages with inter-dependencies.');
      }
    }

    return unpublishedPackages;
  }

  /// Checks if [package] can be published based on whether the local version
  /// is newer than the one published to `pub.dev`.
  Future<PackageInfo?> checkPublishable(PackageInfo package) async {
    final publishTo = package.pubspecInfo.pubspec.publishTo;
    if (publishTo == 'none') {
      return null;
    }

    Never fail(String error) {
      logger
        ..error('Could not retrieve package info for ${package.name}: ')
        ..error(error)
        ..error('Retry with `--force` to ignore this error');
      exit(1);
    }

    try {
      final versionInfo = await resolveVersionInfo(package.name);
      final publishedVersion = maxBy([
        if (versionInfo?.latestPrerelease != null)
          versionInfo!.latestPrerelease!,
        if (versionInfo?.latestVersion != null) versionInfo!.latestVersion!,
      ], (v) => v);
      if (publishedVersion == null) {
        logger.info('No published info for package ${package.name}');
        _newPackages.add(package.name);
        return package;
      }

      final currentVersion = package.pubspecInfo.pubspec.version!;
      return currentVersion > publishedVersion ? package : null;
    } on Exception catch (e) {
      logger.error('Error retrieving info for package ${package.name}', e);
      if (force) {
        return package;
      } else {
        fail(e.toString());
      }
    }
  }

  /// Runs pre-publish operations for [package], most importantly any necessary
  /// `build_runner` tasks.
  Future<void> prePublish(PackageInfo package) async {
    logger.info('Running pre-publish checks for ${package.name}...');
    if (!dryRun) {
      // Remove any overrides so that `pub` commands resolve against
      // `pubspec.yaml`, allowing us to verify we've set our constraints
      // correctly.
      final pubspecOverrideFile = File(
        p.join(package.path, 'pubspec_overrides.yaml'),
      );
      if (pubspecOverrideFile.existsSync()) {
        pubspecOverrideFile.deleteSync();
      }
    }
    await _pubUpgrade(package);
    await runBuildRunner(package, logger: logger, verbose: verbose);
  }

  /// Runs `pub upgrade` for [package], retrying until [_pubUpgradeTimeout].
  ///
  /// A version takes a few minutes to become resolvable by `pub` after being
  /// published, so this failing right after a dependency was published usually
  /// means propagation, not a broken constraint. Retrying keeps that from
  /// aborting a release halfway through — the alternative is a re-run, which
  /// lands in the same window and fails again.
  Future<void> _pubUpgrade(PackageInfo package) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      final res = await Process.run(
        package.flavor.entrypoint,
        ['pub', 'upgrade'],
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
        workingDirectory: package.path,
      );
      if (res.exitCode == 0) {
        return;
      }
      if (stopwatch.elapsed + _pubUpgradeRetryInterval >= _pubUpgradeTimeout) {
        stdout.write(res.stdout);
        stderr.write(res.stderr);
        exit(res.exitCode);
      }
      logger.warn(
        '`${package.flavor.entrypoint} pub upgrade` failed for '
        '${package.name}. Retrying in '
        '${_pubUpgradeRetryInterval.inSeconds}s — a version just published to '
        '`pub.dev` can take a few minutes to resolve.',
      );
      await Future<void>.delayed(_pubUpgradeRetryInterval);
    }
  }

  static final _validationStartRegex = RegExp(
    r'Package validation found the following',
  );
  static final _validationConstraintRegex = RegExp(
    r'\* Your dependency on ".+" should allow more than one version\.',
  );
  static final _validationCheckedInFilesRegex = RegExp(
    r'\* \d+ checked-in files? (is|are) ignored by a `\.gitignore`\.',
  );
  // TODO(dnys1): Remove when we hit 1.0. For now this is appropriate since
  // we have 0.x versions depending on 1.x-pre versions.
  static final _validationPreReleaseRegex = RegExp(
    r'\* Packages dependent on a pre-release of another package should themselves be published as a pre-release version\.',
  );
  static final _validationPreReleaseSdkRegex = RegExp(
    r'\* Packages with an SDK constraint on a pre-release of the Dart SDK should themselves be published as a pre-release version\.',
  );
  static final _validationNonDevOverridesRegex = RegExp(
    r'\* Non-dev dependencies are overridden in pubspec_overrides\.yaml\.',
  );
  static final _validationErrorRegex = RegExp(r'^\s*\*');

  /// Publishes the package using `pub`.
  Future<void> publish(PackageInfo package) async {
    final isNew = _newPackages.contains(package.name);
    logger.info(
      'Publishing ${package.name}${dryRun ? ' (dry run)' : ''}'
      '${isNew ? ' (new package)' : ''}...',
    );
    final publishCmd = await Process.start(
      package.flavor.entrypoint,
      ['pub', 'publish', if (dryRun) '--dry-run'],
      workingDirectory: package.path,
      runInShell: true,
    );
    final output = StringBuffer();
    publishCmd
      ..captureStdout(sink: output.writeln)
      ..captureStderr(sink: output.writeln);
    if (verbose) {
      publishCmd
        ..captureStdout()
        ..captureStderr();
    }
    publishCmd.stdin.writeln('y');

    final exitCode = await publishCmd.exitCode;
    if (exitCode != 0) {
      // Find any error lines which are not dependency constraint-related.
      final failures = LineSplitter.split(output.toString())
          .skipWhile((line) => !_validationStartRegex.hasMatch(line))
          .where(_validationErrorRegex.hasMatch)
          .where((line) => !_validationConstraintRegex.hasMatch(line))
          .where((line) => !_validationPreReleaseRegex.hasMatch(line))
          .where((line) => !_validationCheckedInFilesRegex.hasMatch(line))
          .where((line) => !_validationNonDevOverridesRegex.hasMatch(line))
          .where((line) => !_validationPreReleaseSdkRegex.hasMatch(line));
      if (failures.isNotEmpty) {
        logger
          ..error(
            'Failed to publish package ${package.name} '
            'due to the following errors: ',
          )
          ..error(failures.join('\n'));
        exit(exitCode);
      }
    }
  }

  /// The release tag for [package], e.g. `amplify_auth_cognito-v2.6.1`.
  String releaseTag(PackageInfo package) =>
      '${package.name}-v${package.version}';

  /// Whether [tag] already exists in the local repo.
  Future<bool> tagExists(String tag) async {
    final result = await repo.git.runCommand([
      'rev-parse',
      '--verify',
      '--quiet',
      'refs/tags/$tag',
    ], throwOnError: false);
    return result.exitCode == 0;
  }

  /// Creates and pushes the release tag for [package] in lieu of publishing it
  /// with `pub`.
  ///
  /// An existing tag on the current commit is skipped so a partially completed
  /// release can be re-run; one on any other commit is a conflict.
  Future<void> publishTag(PackageInfo package) async {
    final tag = releaseTag(package);
    if (await tagExists(tag)) {
      final head = await repo.git.revParse('HEAD');
      final tagged = await repo.git.revParse('refs/tags/$tag^{commit}');
      if (tagged != head) {
        exitError('Tag $tag already exists at $tagged, but HEAD is $head');
      }
      logger.info('Tag $tag already exists at HEAD, skipping');
      return;
    }
    logger.info('Creating tag $tag...');
    await runGit([
      'tag',
      '-a',
      tag,
      '-m',
      'Release ${package.name} ${package.version}',
    ]);
    try {
      await runGit(['push', 'origin', 'refs/tags/$tag']);
    } on Exception catch (e) {
      // A leftover local tag would block a retry.
      await _deleteLocalTag(tag);
      exitError('Failed to push tag $tag: $e');
    }
    logger.info('Pushed tag $tag');
  }

  Future<void> _deleteLocalTag(String tag) async {
    try {
      await runGit(['tag', '-d', tag]);
    } on Exception catch (e) {
      logger.warn('Could not delete local tag $tag', e);
    }
  }
}

/// Command to publish all Dart/Flutter packages in the repo.
class PublishCommand extends AmplifyCommand with GlobOptions, PublishHelpers {
  PublishCommand() {
    argParser
      ..addFlag(
        'force',
        abbr: 'f',
        help:
            'Ignores errors in pre-publishing commands and publishes '
            'without prompt',
        negatable: false,
      )
      ..addFlag(
        'dry-run',
        help: 'Passes `--dry-run` flag to `dart` or `flutter` publish command',
        negatable: false,
      )
      ..addFlag(
        'tags',
        help:
            'Prints the list of GitHub tags that would be created for '
            'packages to be published, one per line, in the format '
            r'"${package}-v${version}".',
        negatable: false,
      )
      ..addFlag(
        'ci',
        help:
            'Does not publish with `pub`. Instead, creates and pushes a '
            r'"${package}-v${version}" tag for each package to be published, '
            'which triggers publishing from CI. Cannot be combined with '
            '`--dry-run`.',
        negatable: false,
      )
      ..addFlag(
        'bootstrap',
        help:
            'Bootstraps new (previously unpublished) packages by publishing '
            'a minimal placeholder version (0.0.1-wip) to pub.dev. This '
            'reserves the package name and allows future automated publishes.',
        negatable: false,
      );
  }

  @override
  late final bool force = argResults!['force'] as bool;

  @override
  late final bool dryRun = argResults!['dry-run'] as bool;

  late final bool tags = argResults!['tags'] as bool;

  late final bool ci = argResults!['ci'] as bool;

  @override
  late final bool bootstrap = argResults!['bootstrap'] as bool;

  @override
  String get description =>
      'Publishes all packages in the Amplify Flutter repo which '
      'need publishing.';

  @override
  String get name => 'publish';

  @override
  Future<void> run() async {
    if (ci && dryRun) {
      exitError('--ci cannot be combined with --dry-run');
    }
    await super.run();
    // Gather packages which can be published.
    final publishablePackages = repo.publishablePackages(commandPackages);

    // Gather packages which need to be published.
    final packagesNeedingPublish = await unpublishedPackages(
      publishablePackages,
    );

    // Publishable packages which are being held back.
    final unpublishablePackages = publishablePackages.where(
      (pkg) => !packagesNeedingPublish.contains(pkg),
    );

    if (packagesNeedingPublish.isEmpty) {
      logger.info('No packages need publishing!');
      return;
    }

    // If --tags is set, print the GitHub tags and exit.
    if (tags) {
      stdout.writeln();
      for (final package in packagesNeedingPublish) {
        stdout.writeln('New tag: ${releaseTag(package)}');
      }
      return;
    }

    // If --bootstrap is set, run the bootstrap flow instead of normal publish.
    if (bootstrap) {
      await _runNewPackageBootstrap(packagesNeedingPublish);
      return;
    }

    // Block publishing if any packages have never been published.
    final newPackagesInPublish = packagesNeedingPublish
        .where((pkg) => _newPackages.contains(pkg.name))
        .toList();
    if (newPackagesInPublish.isNotEmpty) {
      logger.error(
        'The following packages have never been published to pub.dev:\n'
        '${newPackagesInPublish.map((pkg) => '  - ${pkg.name}').join('\n')}\n'
        '\n'
        'These packages must be bootstrapped locally before they can be published.\n'
        'Run locally: aft publish --bootstrap',
      );
      exit(1);
    }

    stdout
      ..writeln(
        'Preparing to ${ci ? 'tag for release' : 'publish'}'
        '${dryRun ? ' (dry run)' : ''}: ',
      )
      ..writeln(
        packagesNeedingPublish
            .map((pkg) => '${pkg.pubspecInfo.pubspec.version} ${pkg.name}')
            .join('\n'),
      )
      ..writeln()
      ..writeln('The following packages will not be published: ')
      ..writeln(
        unpublishablePackages
            .map((pkg) => '${pkg.pubspecInfo.pubspec.version} ${pkg.name}')
            .join('\n'),
      );

    if (!force && !ci) {
      final shouldProceed = prompt('Proceed with publish (y/N)? ') == 'y';
      if (!shouldProceed) {
        return;
      }
    }

    // Run pre-publish checks then publish package.
    //
    // Do not split up this step. Since packages are iterated in topological
    // ordering, it is okay for later packages to fail. While this means that
    // some packages will not be published, it also means that the command
    // can be re-run to pick up where it left off.
    final scheduler = PublishScheduler(
      packages: packagesNeedingPublish,
      publishPackage: (package) async {
        await prePublish(package);
        // The tag triggers the publish from CI, so the scheduler's wait for
        // the version to become resolvable is what orders dependents.
        if (ci) {
          await publishTag(package);
        } else {
          await publish(package);
        }
      },
      command: this,
      dryRun: dryRun,
    );
    await scheduler.run();

    stdout.writeln(
      dryRun
          ? 'All packages passed pre-publish checks'
          : ci
          ? 'All release tags were successfully pushed'
          : 'All packages were successfully published',
    );
  }

  /// Bootstraps new packages by publishing minimal placeholder versions to
  /// pub.dev, reserving the package names for future automated publishes.
  Future<void> _runNewPackageBootstrap(
    List<PackageInfo> packagesNeedingPublish,
  ) async {
    final newPackages = packagesNeedingPublish
        .where((pkg) => _newPackages.contains(pkg.name))
        .toList();

    if (newPackages.isEmpty) {
      logger.info(
        'No new packages to bootstrap. All packages already exist on pub.dev.',
      );
      return;
    }

    stdout.writeln(
      'Bootstrapping ${newPackages.length} new '
      'package${newPackages.length == 1 ? '' : 's'}'
      '${dryRun ? ' (dry run)' : ''}:\n'
      '${newPackages.map((pkg) => '  - ${pkg.name}').join('\n')}',
    );

    final tmpBase = Directory.systemTemp.createTempSync('aft_bootstrap_');

    try {
      for (final package in newPackages) {
        await _createBootstrapPackage(package, tmpBase);
      }
    } finally {
      if (tmpBase.existsSync()) {
        tmpBase.deleteSync(recursive: true);
        logger.debug('Cleaned up temp directory: ${tmpBase.path}');
      }
    }

    if (dryRun) {
      stdout.writeln('\nDry run complete. No packages were published.');
    } else {
      stdout.writeln('\nAll new packages bootstrapped successfully.');
    }
  }

  /// Scaffolds a minimal placeholder package in a temp directory using
  /// `dart create`, then overwrites the pubspec/README/LICENSE and publishes
  /// it (or shows what would be published if [dryRun] is set).
  Future<void> _createBootstrapPackage(
    PackageInfo package,
    Directory tmpBase,
  ) async {
    final pubspec = package.pubspecInfo.pubspec;
    final pkgName = package.name;

    // Scaffold with `dart create -t package`
    logger.debug('Scaffolding $pkgName with dart create...');
    final createResult = await Process.run(
      'dart',
      ['create', '-t', 'package', pkgName],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
      workingDirectory: tmpBase.path,
    );
    if (createResult.exitCode != 0) {
      logger
        ..error('Failed to scaffold $pkgName:')
        ..error(createResult.stderr as String);
      exit(createResult.exitCode);
    }

    final pkgDir = Directory(p.join(tmpBase.path, pkgName));
    const description = 'Initial package for setting up CI/CD deployments.';
    final sdkConstraint =
        pubspec.environment['sdk']?.toString() ?? '>=3.0.0 <4.0.0';

    // `dart create -t package` scaffolds example/ and test/ directories that
    // aren't needed for a bootstrap placeholder — remove them.
    final exampleDir = Directory(p.join(pkgDir.path, 'example'));
    if (exampleDir.existsSync()) exampleDir.deleteSync(recursive: true);
    final testDir = Directory(p.join(pkgDir.path, 'test'));
    if (testDir.existsSync()) testDir.deleteSync(recursive: true);

    // Overwrite pubspec.yaml
    final pubspecYaml = StringBuffer()
      ..writeln('name: $pkgName')
      ..writeln('version: 0.0.1-wip')
      ..writeln('description: $description');
    if (pubspec.repository != null) {
      pubspecYaml.writeln('repository: ${pubspec.repository}');
    } else if (pubspec.homepage != null) {
      pubspecYaml.writeln('homepage: ${pubspec.homepage}');
    }
    pubspecYaml
      ..writeln('environment:')
      ..writeln("  sdk: '$sdkConstraint'");
    File(
      p.join(pkgDir.path, 'pubspec.yaml'),
    ).writeAsStringSync(pubspecYaml.toString());

    // Overwrite README.md
    File(p.join(pkgDir.path, 'README.md')).writeAsStringSync(
      '# $pkgName\n'
      '\n'
      'This is for setting up automated deployments '
      'of this package.\n',
    );

    // Overwrite CHANGELOG.md
    File(p.join(pkgDir.path, 'CHANGELOG.md')).writeAsStringSync(
      '## 0.0.1-wip\n'
      '\n'
      '- Initial package for setting up CI/CD deployments.\n',
    );

    // Write Apache 2.0 license
    File(p.join(pkgDir.path, 'LICENSE')).writeAsStringSync(apacheLicenseText);

    final adminUrl = 'https://pub.dev/packages/$pkgName/admin';
    final repoSlug = _githubRepoSlug(
      pubspec.repository ?? pubspec.issueTracker,
    );

    if (dryRun) {
      stdout
        ..writeln('\n--- Bootstrap dry run: $pkgName ---')
        ..writeln('Temp directory: ${pkgDir.path}');
      _printNextSteps(pkgName, adminUrl: adminUrl, repoSlug: repoSlug);
      return;
    }

    // Run dart pub publish --force in the temp directory
    logger.info('Publishing $pkgName v0.0.1-wip...');
    final publishResult = await Process.run(
      'dart',
      ['pub', 'publish', '--force'],
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
      workingDirectory: pkgDir.path,
    );
    if (verbose) {
      stdout.write(publishResult.stdout);
      stderr.write(publishResult.stderr);
    }
    if (publishResult.exitCode != 0) {
      logger
        ..error('Failed to bootstrap $pkgName:')
        ..error(publishResult.stdout as String)
        ..error(publishResult.stderr as String);
      exit(publishResult.exitCode);
    }

    stdout.writeln('\n\u2705 Published $pkgName v0.0.1-wip to pub.dev');
    _printNextSteps(pkgName, adminUrl: adminUrl, repoSlug: repoSlug);
  }

  String? _githubRepoSlug(Uri? url) {
    if (url == null || url.host != 'github.com') return null;
    final segments = url.pathSegments;
    if (segments.length < 2) return null;
    return '${segments[0]}/${segments[1]}';
  }

  void _printNextSteps(
    String pkgName, {
    required String adminUrl,
    required String? repoSlug,
  }) {
    stdout
      ..writeln('')
      ..writeln('Next steps for $pkgName:')
      ..writeln('  1. Transfer to your verified publisher:')
      ..writeln('     $adminUrl')
      ..writeln(
        '     \u2192 Under "Publisher", click "Transfer to a verified '
        'publisher"',
      )
      ..writeln('  2. Enable automated publishing:')
      ..writeln(
        '     \u2192 Under "Automated publishing", enable publishing '
        'from GitHub Actions',
      );
    if (repoSlug != null) {
      stdout.writeln('     \u2192 Set the repository to: $repoSlug');
    } else {
      stdout.writeln(
        '     \u2192 No GitHub repository found in the pubspec; the '
        'GitHub Actions setup above requires one.',
      );
    }
    stdout
      ..writeln('     \u2192 Set the tag pattern to: $pkgName-v{{version}}')
      ..writeln(
        '  3. Once configured, CI can publish future versions '
        'automatically via OIDC.',
      );
  }
}

/// Runs `build_runner` for [package].
Future<void> runBuildRunner(
  PackageInfo package, {
  required AWSLogger logger,
  required bool verbose,
  bool force = false,
}) async {
  if (!package.needsBuildRunner && !force) {
    return;
  }
  // Run `pub get` to ensure `build_runner` is available.
  await runPub(package.flavor, ['get'], package, verbose: verbose);
  logger.debug('Running build_runner for ${package.name}...');
  // Force JIT compilation to avoid a regression in Dart 3.10.x where
  // `dart compile exe` (used by `build_runner`'s default AOT path) fails when
  // the package graph contains native-assets build hooks (e.g. from `win32`,
  // `sqlite3`). See https://github.com/dart-lang/build/issues/4343 and
  // https://github.com/dart-lang/sdk/issues/62593. The fix ships in Dart 3.11+;
  // forcing JIT keeps bootstrap working on the minimum supported SDK (3.10.0).
  final buildRunnerCmd = await Process.start(
    package.flavor.entrypoint,
    [
      if (package.flavor == PackageFlavor.flutter) 'pub',
      'run',
      'build_runner',
      'build',
      '--force-jit',
      '--delete-conflicting-outputs',
    ],
    runInShell: true,
    workingDirectory: package.path,
  );
  final output = StringBuffer();
  buildRunnerCmd
    ..captureStdout(sink: output.writeln)
    ..captureStderr(sink: output.writeln);
  if (verbose) {
    buildRunnerCmd
      ..captureStdout()
      ..captureStderr();
  }
  if (await buildRunnerCmd.exitCode != 0) {
    logger.error('Failed to run `build_runner` for ${package.name}: ');
    if (!verbose) {
      logger.error(output.toString());
    }
    exit(1);
  }
}
