// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:io';

import 'package:aws_common/aws_common.dart';
import 'package:git/git.dart';
import 'package:meta/meta.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

/// A launcher for publishing packages to a local pub server.
///
/// Use [PubLauncher.git] or [PubLauncher.local] to create a launcher.
class PubLauncher {
  const PubLauncher(
    this.pubServerUri,
    this.packages,
  );

  static final _logger = AWSLogger().createChild('PubLauncher');

  /// For now, enforce local pub servers which prevents accidental publishing
  /// to the real pub.dev.
  ///
  /// In the future, we can consider supporting remote pub servers under our
  /// control.
  static void _ensureLocalServer(Uri pubServer) {
    if (pubServer.host != 'localhost') {
      throw ArgumentError.value(
        pubServer,
        'pubServer',
        'Only localhost pub servers are supported.',
      );
    }
  }

  /// Collects all packages in the given [path] and its subdirectories.
  static Future<List<LocalPackage>> _collectPackages(String path) async {
    final packages = <LocalPackage>[];
    final dir = Directory(path);
    await for (final entity in dir.list(recursive: true, followLinks: false)) {
      if (entity is! File) continue;
      final file = entity;
      if (!file.path.endsWith('pubspec.yaml')) continue;
      final pubspec = Pubspec.parse(await file.readAsString());
      final isPublishable = pubspec.publishTo != 'none';
      final path = file.parent.path;
      _logger.verbose(
        'Found package: ${pubspec.name} at $path (publishable: $isPublishable)',
      );
      if (isPublishable) {
        packages.add(
          LocalPackage(
            name: pubspec.name,
            pubspec: pubspec,
            path: path,
          ),
        );
      }
    }
    return packages;
  }

  /// Creates a launcher for the given [gitUrl].
  ///
  /// By default, this checks out the `main` branch. To checkout a different
  /// branch, specify the [gitRef]. To specify a pull request, use the format
  /// `refs/pull/<pr_number>/head`.
  static Future<PubLauncher> git({
    required Uri pubServer,
    required String gitUrl,
    String? gitRef,
  }) async {
    _ensureLocalServer(pubServer);

    gitRef ??= 'main';
    final tmpDir = await Directory.systemTemp.createTemp('pub_launcher_');

    // Clone repository
    _logger.info('Cloning $gitUrl@$gitRef to ${tmpDir.path}...');
    await runGit([
      'clone',
      '--depth=1',
      '--no-checkout',
      gitUrl,
      tmpDir.path,
    ]);
    final gitDir = await GitDir.fromExisting(tmpDir.path);

    // Fetch PRs
    await gitDir.runCommand([
      'fetch',
      'origin',
      'pull/*/head:refs/remotes/origin/pull/*',
    ]);

    // Checkout ref
    await gitDir.runCommand(['checkout', gitRef]);
    _logger.info('Checked out $gitRef');

    return PubLauncher(pubServer, await _collectPackages(tmpDir.path));
  }

  /// Creates a launcher for the given [path].
  static Future<PubLauncher> local({
    required Uri pubServer,
    required String path,
  }) async {
    _ensureLocalServer(pubServer);
    return PubLauncher(pubServer, await _collectPackages(path));
  }

  /// The pub server to publish to.
  final Uri pubServerUri;

  /// All publishable packages.
  final List<LocalPackage> packages;

  /// Runs pre-publish tasks.
  ///
  /// Override this method to run custom pre-publish tasks.
  @visibleForOverriding
  Future<void> prePublish(LocalPackage package) async {}

  /// The list of [packages], in order of publishing priority.
  ///
  /// Override this method to change the order of publishing.
  @visibleForOverriding
  List<LocalPackage> get sortedPackages => packages;

  /// Publishes the given [package].
  ///
  /// Override this method to run custom publish tasks.
  @visibleForOverriding
  Future<void> publish(LocalPackage package) async {
    _logger.info('Publishing ${package.name}...');
    final result = await Process.run(
      package.flavor == PackageFlavor.flutter ? 'flutter' : 'dart',
      [
        'pub',
        'publish',
        '--force',
      ],
      runInShell: true,
      workingDirectory: package.path,
      environment: {
        'PUB_HOSTED_URL': pubServerUri.toString(),
      },
      stdoutEncoding: utf8,
      stderrEncoding: utf8,
    );
    if (result.exitCode != 0) {
      throw Exception('Failed to publish package: ${result.stderr}');
    }
  }

  /// Runs the launcher.
  Future<void> run() async {
    _logger.info('Publishing packages...');
    for (final package in sortedPackages) {
      _logger.info('Running pre-publish tasks for package ${package.name}...');
      await prePublish(package);
      _logger.info('Publishing package ${package.name}...');
      await publish(package);
    }
    _logger.info('Successfully published all packages to $pubServerUri');
  }
}

/// The flavor of a pub package, either Dart or Flutter.
enum PackageFlavor { dart, flutter }

/// A pub package in the local filesystem.
class LocalPackage {
  const LocalPackage({
    required this.name,
    required this.path,
    required this.pubspec,
  });

  final String name;
  final String path;
  final Pubspec pubspec;

  PackageFlavor get flavor => pubspec.dependencies.containsKey('flutter')
      ? PackageFlavor.flutter
      : PackageFlavor.dart;
}
