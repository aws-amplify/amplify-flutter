// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:actions/src/shell_script.dart';
import 'package:collection/collection.dart';

Future<void> main(List<String> args) => wrapMain(launch);

// TODO(equartey): Refactor to enable downloading of iOS 18 runtimes given
// Apple's breaking change which `Xcodes` does not yet support.
// https://github.com/XcodesOrg/xcodes/releases/tag/1.5.0
Future<void> launch() async {
  final iosVersionArg = core.getInput('ios-version');
  final script = core.getRequiredInput('script');
  final maxRetries = core.getTypedInput(
    'max-retries',
    parse: int.parse,
    defaultValue: 1,
  );
  final retryTimeoutMinutes = core.getTypedInput(
    'retry-timeout-minutes',
    parse: int.parse,
    defaultValue: 90,
  );

  // Install xcodes once (only needs to be done once)
  await installXcodes();

  final iosVersion = iosVersionArg == 'latest'
      ? await getLatest()
      : 'iOS $iosVersionArg';
  core.info('Will launch simulator for $iosVersion');

  // Ensure runtime is available (only needs to be done once)
  var runtimeIdentifier = await core.withGroup(
    'Check for existing runtime',
    () async {
      final runtimeId = await getRuntimeId(iosVersion);
      core.info('Found runtime ID: $runtimeId');
      return runtimeId;
    },
  );
  if (runtimeIdentifier == null) {
    core.info('No runtime found for $iosVersion');
    await installRuntime(iosVersion);
  }
  runtimeIdentifier = await core.withGroup('Get runtime ID', () async {
    final runtimeId = await getRuntimeId(iosVersion);
    core.info('Found runtime ID: $runtimeId');
    return runtimeId;
  });
  if (runtimeIdentifier == null) {
    throw Exception('Runtime not found after install');
  }

  // Retry the simulator launch and script execution up to maxRetries times
  Object? lastError;
  StackTrace? lastStackTrace;
  for (var attempt = 1; attempt <= maxRetries; attempt++) {
    final startTime = DateTime.now();

    core..info('')
    ..info('════════════════════════════════════════════════════════════════════')
    ..info('🚀 ATTEMPT $attempt OF $maxRetries - STARTING')
    ..info('   Timeout: $retryTimeoutMinutes minutes')
    ..info('   Started at: ${DateTime.now().toUtc().toIso8601String()}')
    ..info('════════════════════════════════════════════════════════════════════')
    ..info('');

    // Phase 1: Launch simulator
    ({bool success, Object? error, Object? stackTrace}) launchResult;
    try {
      await _launchSimulator(runtimeIdentifier);
      core.info('✅ Simulator launched successfully');
      launchResult = (success: true, error: null, stackTrace: null);
    } on Object catch (e, st) {
      core.warning('❌ Simulator launch failed: $e');
      launchResult = (success: false, error: e, stackTrace: st);
    }

    if (!launchResult.success) {
      lastError = launchResult.error;
      lastStackTrace = launchResult.stackTrace as StackTrace?;

      core..warning('')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('❌ ATTEMPT $attempt FAILED - Simulator launch failed')
      ..warning('   Error: ${launchResult.error}')
      ..warning('   Time: ${DateTime.now().toUtc().toIso8601String()}')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('');

      if (attempt < maxRetries) {
        await core.withGroup(
          '🧹 Attempt $attempt: Cleanup before retry ${attempt + 1}',
          _cleanupAndWait,
        );
      }
      continue;
    }

    // Phase 2: Run tests with timeout
    core..info('')
    ..info('📜 Running tests (timeout: $retryTimeoutMinutes min)...')
    ..info('');

    final testResult = await core.withGroup(
      '▶️ Attempt $attempt: Run tests',
          () => _runTestsWithTimeout(
            timeout: Duration(minutes: retryTimeoutMinutes),
            attempt: attempt,
            script: script,
          ),
    );

    final duration = DateTime.now().difference(startTime);

    if (testResult.success) {
      // Success!
      core..info('')
      ..info('════════════════════════════════════════════════════════════════════')
      ..info('✅ ATTEMPT $attempt SUCCEEDED')
      ..info('   Duration: ${duration.inMinutes} minutes ${duration.inSeconds % 60} seconds')
      ..info('   Finished at: ${DateTime.now().toUtc().toIso8601String()}')
      ..info('════════════════════════════════════════════════════════════════════')
      ..info('');
      return;
    }

    // Failed - store the error
    lastError = testResult.error;
    lastStackTrace = testResult.stackTrace;

    if (testResult.timedOut) {
      core..warning('')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('⏰ ATTEMPT $attempt TIMED OUT')
      ..warning('   Duration: ${duration.inMinutes} minutes ${duration.inSeconds % 60} seconds')
      ..warning('   Time: ${DateTime.now().toUtc().toIso8601String()}')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('');
    } else {
      core..warning('')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('❌ ATTEMPT $attempt FAILED - Tests failed')
      ..warning('   Error: ${testResult.error}')
      ..warning('   Duration: ${duration.inMinutes} minutes ${duration.inSeconds % 60} seconds')
      ..warning('   Time: ${DateTime.now().toUtc().toIso8601String()}')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('');
    }

    if (attempt < maxRetries) {
      await core.withGroup(
        '🧹 Attempt $attempt: Cleanup before retry ${attempt + 1}',
        _cleanupAndWait,
      );
    }
  }

  // All attempts failed
  core..error('')
  ..error('╔══════════════════════════════════════════════════════════════════╗')
  ..error('║  ❌ ALL $maxRetries ATTEMPTS FAILED                               ')
  ..error('║  Last error: $lastError')
  ..error('║  Time: ${DateTime.now().toUtc().toIso8601String()}')
  ..error('╚══════════════════════════════════════════════════════════════════╝')
  ..error('')

  ..setFailed('All $maxRetries attempts failed. Last error: $lastError');
  if (lastError != null) {
    Error.throwWithStackTrace(lastError, lastStackTrace ?? StackTrace.current);
  }
}

/// Launches the iOS simulator with the given runtime identifier.
Future<void> _launchSimulator(String runtimeIdentifier) async {
  final createRes = await core.withGroup(
    'Create simulator',
    () => exec.exec('xcrun', [
      'simctl',
      'create',
      'test',
      'iPhone 11',
      runtimeIdentifier,
    ]),
  );
  if (createRes.exitCode != 0) {
    throw Exception('Could not create simulator');
  }
  final bootRes = await core.withGroup(
    'Boot simulator',
    () => exec.exec('xcrun', ['simctl', 'boot', 'test']),
  );
  if (bootRes.exitCode != 0) {
    throw Exception('Could not boot simulator');
  }
}

/// Result of an attempt with timeout
class _AttemptResult {
  _AttemptResult({
    required this.success,
    required this.timedOut,
    required this.duration,
    this.error,
    this.stackTrace,
  });

  final bool success;
  final bool timedOut;
  final Duration duration;
  final Object? error;
  final StackTrace? stackTrace;
}

/// Runs the test script with a timeout.
Future<_AttemptResult> _runTestsWithTimeout({
  required Duration timeout,
  required int attempt,
  required String script,
}) async {
  final startTime = DateTime.now();
  var timedOut = false;

  // Create a timeout future that we'll race against
  final timeoutFuture = Future<void>.delayed(timeout).then((_) {
    timedOut = true;
    core..warning('')
    ..warning('⏰ ══════════════════════════════════════════════════════════════')
    ..warning('⏰  TIMEOUT REACHED FOR ATTEMPT $attempt')
    ..warning('⏰  Attempt exceeded ${timeout.inMinutes} minute limit')
    ..warning('⏰  Time: ${DateTime.now().toUtc().toIso8601String()}')
    ..warning('⏰ ══════════════════════════════════════════════════════════════')
    ..warning('');
  });

  try {
    // Race between the script and the timeout
    await Future.any([
      ShellScript(script).run().then((_) {
        if (timedOut) {
          throw TimeoutException('Attempt timed out', timeout);
        }
      }),
      timeoutFuture.then((_) {
        throw TimeoutException('Attempt $attempt timed out after ${timeout.inMinutes} minutes', timeout);
      }),
    ]);

    final duration = DateTime.now().difference(startTime);
    core.info('⏱️  Tests completed in ${duration.inMinutes} minutes ${duration.inSeconds % 60} seconds');

    return _AttemptResult(
      success: true,
      timedOut: false,
      duration: duration,
    );
  } on TimeoutException catch (e, st) {
    final duration = DateTime.now().difference(startTime);
    return _AttemptResult(
      success: false,
      timedOut: true,
      duration: duration,
      error: e,
      stackTrace: st,
    );
  } on Object catch (e, st) {
    final duration = DateTime.now().difference(startTime);
    return _AttemptResult(
      success: false,
      timedOut: timedOut,
      duration: duration,
      error: e,
      stackTrace: st,
    );
  }
}

/// Cleans up simulator and waits before next retry.
Future<void> _cleanupAndWait() async {
  core..info('🔄 Preparing for next retry...')
  ..info('   Cleaning up before next attempt...');
  await _cleanupSimulator();
  core.info('   Waiting 10 seconds before next attempt...');
  await Future<void>.delayed(const Duration(seconds: 10));
  core.info('   Ready for next attempt');
}

/// Cleans up any running simulator processes and devices before a retry attempt.
Future<void> _cleanupSimulator() async {
  core.info('Step 1/5: Shutting down "test" simulator...');
  try {
    await ShellScript('xcrun simctl shutdown test 2>/dev/null').run();
    core.info('   ✓ Simulator shutdown completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to shutdown simulator: $e');
  }

  // IMPROVEMENT HERE: Changed "delete" to "erase"
  core.info('Step 2/5: Erasing "test" simulator content...');
  try {
    await ShellScript('xcrun simctl erase test 2>/dev/null').run();
    core.info('   ✓ Simulator content erased');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to erase simulator: $e');
  }

  core.info('Step 3/5: Killing Simulator.app processes...');
  try {
    await ShellScript('pkill -9 Simulator 2>/dev/null').run();
    core.info('   ✓ Simulator.app kill completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to kill Simulator.app: $e');
  }

  core.info('Step 4/5: Killing launchd_sim processes...');
  try {
    await ShellScript('pkill -9 launchd_sim 2>/dev/null').run();
    core.info('   ✓ launchd_sim kill completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to kill launchd_sim: $e');
  }

  core.info('Waiting 5 seconds for processes to terminate...');
  await Future<void>.delayed(const Duration(seconds: 5));

  core.info('Step 5/5: Checking available disk space...');
  try {
    await ShellScript('df -h . | tail -1').run();
  } on Object catch (e) {
    core.warning('   ⚠ Failed to check disk space: $e');
  }

  core.info('✅ Cleanup complete');
}

/// Gets the iOS runtime identifier for the given [iosVersion].
Future<String?> getRuntimeId(String iosVersion) async {
  final runtimesRes = await exec.exec('xcrun', [
    'simctl',
    'list',
    'runtimes',
    '-j',
  ], echoOutput: false);
  if (runtimesRes.exitCode != 0) {
    throw Exception('Could not list runtimes');
  }
  final runtimesJson = jsonDecode(runtimesRes.stdout) as Map<String, Object?>;
  final runtimes = (runtimesJson['runtimes'] as List<Object?>)
      .cast<Map<String, Object?>>();
  final versionRuntime = runtimes.firstWhereOrNull(
    (runtime) => (runtime['name'] as String).startsWith(iosVersion),
  );
  if (versionRuntime == null) {
    return null;
  }
  return versionRuntime['identifier'] as String;
}

/// Installs the `xcodes` tool (https://github.com/XcodesOrg/xcodes) and
/// `aria2` for speeding up downloads (as recommended by `xcodes`).
Future<void> installXcodes() => core.withGroup('Install xcodes', () async {
  final res = await exec.exec('brew', [
    'install',
    'homebrew/core/xcodes',
    'aria2',
  ]);
  if (res.exitCode != 0) {
    throw Exception('Could not install xcodes');
  }
});

Future<String> getLatest() async {
  final version = await exec.exec('/bin/sh', [
    '-c',
    r'xcodes runtimes | grep -e "iOS" | tail -n 1',
  ]);
  if (version.exitCode != 0) {
    throw Exception('Could not get latest version');
  }

  return version.stdout.replaceAll(' (Installed)', '').trim();
}

/// Installs the iOS runtime for the given [iosVersion].
Future<void> installRuntime(String iosVersion) async {
  await core.withGroup('Install runtime', () async {
    final res = await exec.exec('sudo', [
      'xcodes',
      'runtimes',
      'install',
      iosVersion,
      '--no-color',
    ]);
    if (res.exitCode != 0) {
      throw Exception('Could not install runtime');
    }
  });
}
