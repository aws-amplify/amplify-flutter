// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';

// ANSI escape codes for terminal colors.
const _yellow = '\x1B[33m';
const _green = '\x1B[32m';
const _reset = '\x1B[0m';

/// Initial delay before the first "still alive" reminder is printed.
final _initialAliveMessageDelay =
    Platform.environment.containsKey('QA_DURATIONS')
    ? const Duration(seconds: 5)
    : const Duration(minutes: 5);

/// Interval between subsequent "still alive" reminders.
final _aliveMessageReminderInterval =
    Platform.environment.containsKey('QA_DURATIONS')
    ? const Duration(seconds: 5)
    : const Duration(minutes: 5);

/// A function that publishes a single package (e.g. pre-publish checks +
/// actual publish).
typedef PublishPackageFn = Future<void> Function(PackageInfo package);

/// Schedules and executes the publishing of a list of packages in dependency
/// order.
class PublishScheduler {
  PublishScheduler({
    required List<PackageInfo> packages,
    required PublishPackageFn publishPackage,
    required AmplifyCommand command,
    this.dryRun = false,
  }) : _packages = packages,
       _publishPackage = publishPackage,
       _command = command;

  final List<PackageInfo> _packages;
  final PublishPackageFn _publishPackage;
  final AmplifyCommand _command;
  final bool dryRun;

  /// Packages that are ready to be published (all in-process deps done).
  final List<PackageInfo> _packagePublishQueue = [];

  /// Signalled whenever a new package is added to [_packagePublishQueue].
  Completer<void> _queueNotEmpty = Completer<void>();

  /// Builds the initial adjacency lists.
  Map<String, List<String>> _buildAdjacencyLists() {
    final publishNames = _packages.map((p) => p.name).toSet();
    return {
      for (final package in _packages)
        package.name: [
          ...package.pubspecInfo.pubspec.dependencies.keys.where(
            publishNames.contains,
          ),
          ...package.pubspecInfo.pubspec.devDependencies.keys.where(
            publishNames.contains,
          ),
        ],
    };
  }

  /// Prints the current publish queue to [stdout] if non-empty.
  void _printPublishQueue() {
    if (_packagePublishQueue.isEmpty) return;
    stdout
      ..writeln('${_green}Publish queue (ready to publish):')
      ..writeln(
        '${_packagePublishQueue.map((p) => ' - ${p.name} (${p.version})').join('\n')}'
        '$_reset',
      );
  }

  /// Removes [publishedPackageName] from every adjacency list and enqueues
  /// any package whose dependency list is now empty.
  void _markAnalysisComplete(
    Map<String, List<String>> adjacencyLists,
    String publishedPackageName,
    Set<String> published,
    Set<String> enqueued,
  ) {
    for (final entry in adjacencyLists.entries) {
      if (entry.key == publishedPackageName) continue;
      entry.value.remove(publishedPackageName);
    }

    // Enqueue packages whose in-process dependencies are now all done.
    for (final candidate in _packages) {
      if (published.contains(candidate.name)) continue;
      if (enqueued.contains(candidate.name)) continue;
      if (adjacencyLists[candidate.name]?.isEmpty ?? true) {
        _enqueue(candidate, enqueued);
      }
    }
  }

  /// Waits for all [pendingAnalyses] to finish, logging progress as each
  /// one completes.
  Future<void> _awaitPendingAnalyses(
    Map<String, Future<void>> pendingAnalyses,
  ) async {
    if (pendingAnalyses.isNotEmpty) {
      // Track which analyses are still running.
      final remainingNames = Set<String>.of(pendingAnalyses.keys);
      final analysisComplete = Completer<void>();

      String timestamp() => DateTime.now().toIso8601String().split('.').first;

      stdout.writeln(
        '${_yellow}Still awaiting: '
        '${remainingNames.join(', ')}$_reset',
      );

      // Attach a callback to each pending analysis that removes it from
      // the remaining set and logs progress.
      for (final entry in pendingAnalyses.entries) {
        unawaited(
          entry.value.whenComplete(() {
            remainingNames.remove(entry.key);
            if (remainingNames.isNotEmpty) {
              stdout.writeln(
                '$_yellow[${timestamp()}] Still awaiting: '
                '${remainingNames.join(', ')}$_reset',
              );
            } else {
              stdout.writeln('All analyses complete.');
              analysisComplete.complete();
            }
          }),
        );
      }

      // Print periodic reminders while waiting, using the same timing as
      // _waitForQueueWork (10 s initial delay, then every 5 s).
      unawaited(() async {
        await Future<void>.delayed(_initialAliveMessageDelay);
        while (!analysisComplete.isCompleted) {
          if (remainingNames.isNotEmpty) {
            stdout.writeln(
              '$_yellow[${timestamp()}] Still waiting for analyses to finish..$_reset',
            );
          }
          await Future<void>.delayed(_aliveMessageReminderInterval);
        }
      }());

      await analysisComplete.future;
    } else {
      stdout.writeln('All analyses complete.');
    }
  }

  /// Waits for the publish queue to receive new work by logging the
  /// currently pending analyses and then awaiting [_queueNotEmpty].
  Future<void> _waitForQueueWork(
    Map<String, Future<void>> pendingAnalyses,
    Set<String> completedAnalyses,
  ) async {
    final pendingList = pendingAnalyses.keys
        .where((name) => !completedAnalyses.contains(name))
        .map((name) {
          final pkg = _packages.firstWhere((p) => p.name == name);
          return ' - $name (${pkg.version})';
        })
        .join('\n');
    stdout.writeln(
      '$_yellow'
      'Queue empty – waiting for one of these analyses to finish..\n'
      '$pendingList'
      '$_reset',
    );
    // Reset the completer so we can await the next signal.
    _queueNotEmpty = Completer<void>();

    // Wait for the queue to become non-empty. Print periodic reminders
    // so the process appears alive.
    final stopwatch = Stopwatch()..start();

    var nextReminder = _initialAliveMessageDelay;
    while (!_queueNotEmpty.isCompleted) {
      final timeout = nextReminder - stopwatch.elapsed;
      if (timeout <= Duration.zero) {
        // Already past the reminder point – print immediately.
        final now = DateTime.now().toIso8601String().split('.').first;
        stdout.writeln(
          '$_yellow[$now] Still waiting for analyses to finish..$_reset',
        );
        nextReminder += _aliveMessageReminderInterval;
        continue;
      }
      // Race: either the queue gets work, or we hit the next reminder.
      await Future.any([_queueNotEmpty.future, Future<void>.delayed(timeout)]);
      if (_queueNotEmpty.isCompleted) break;
      // Timeout fired – loop back to print the reminder.
    }
  }

  /// Adds [package] to the publish queue and signals the main loop.
  void _enqueue(PackageInfo package, Set<String> enqueued) {
    _packagePublishQueue.add(package);
    enqueued.add(package.name);
    // Wake up the main loop if it is waiting for work.
    if (!_queueNotEmpty.isCompleted) {
      _queueNotEmpty.complete();
    }
  }

  /// Publishes all packages, processing the queue without blocking on
  /// analysis.
  Future<void> run() async {
    if (dryRun) {
      return _runDryRun();
    }
    return _runNormal();
  }

  /// Dry-run mode: simply iterate through the packages in the provided
  /// order and call [_publishPackage] for each one.
  Future<void> _runDryRun() async {
    for (final package in _packages) {
      stdout.writeln('Publishing ${package.name} (${package.version}) [dry run]');
      await _publishPackage(package);
      stdout.writeln('');
    }
    stdout.writeln('All packages passed pre-publish checks (dry run).');
  }

  /// Normal (non-dry-run) publish flow that processes the queue without
  /// blocking on analysis.
  Future<void> _runNormal() async {
    final adjacencyLists = _buildAdjacencyLists();

    /// Tracks which packages have been published (publish call returned).
    final published = <String>{};

    /// Tracks which packages have been enqueued (to avoid double-enqueue).
    final enqueued = <String>{};

    /// In-flight analysis futures keyed by package name.
    final pendingAnalyses = <String, Future<void>>{};

    /// Analyses that have already completed (during the main publish loop).
    final completedAnalyses = <String>{};

    // Seed the queue with packages that already have no in-process
    // dependencies.
    for (final package in _packages) {
      if (adjacencyLists[package.name]?.isEmpty ?? true) {
        _enqueue(package, enqueued);
      }
    }

    while (published.length < _packages.length) {
      stdout.writeln('');
      _printPublishQueue();

      // If the queue is empty, wait for an in-flight analysis to unlock
      // new packages.
      if (_packagePublishQueue.isEmpty) {
        await _waitForQueueWork(pendingAnalyses, completedAnalyses);
        continue;
      }

      // Take the next ready package off the queue.
      final package = _packagePublishQueue.removeAt(0);

      // Publish it (this includes pre-publish + actual publish).
      await _publishPackage(package);
      published.add(package.name);

      // Kick off analysis in the background. When it completes, update
      // the adjacency lists and potentially enqueue new packages.
      final packageName = package.name;
      final analysisFuture = _command.awaitPendingAnalysis(packageName).then((
        _,
      ) {
        _markAnalysisComplete(adjacencyLists, packageName, published, enqueued);
        completedAnalyses.add(packageName);
      });
      pendingAnalyses[packageName] = analysisFuture;
    }

    stdout.writeln('');

    // All packages have been published. Wait for any remaining in-flight
    // analyses to finish so the run is fully complete.
    // Remove analyses that already completed during the main loop.
    pendingAnalyses.removeWhere((name, _) => completedAnalyses.contains(name));
    stdout.writeln('All packages published.');
    await _awaitPendingAnalyses(pendingAnalyses);
  }
}
