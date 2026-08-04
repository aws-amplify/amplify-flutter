// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:actions/actions.dart';
import 'package:actions/src/android/avd_manager.dart';
import 'package:actions/src/android/sdk_manager.dart';
import 'package:actions/src/shell_script.dart';
import 'package:actions/src/android/types.dart';

Future<void> main() => wrapMain(_action);

Future<void> _action() async {
  final apiLevel = core.getTypedInput(
    'api-level',
    parse: AndroidApiLevel.parse,
  );
  final target = core.getTypedInput(
    'target',
    parse: AndroidSystemImageTarget.parse,
  );
  final abi = core.getTypedInput(
    'abi',
    parse: AndroidAbi.parse,
    defaultValue: AndroidAbi.forArch(process.arch),
  );
  final script = core.getRequiredInput('script');
  final maxRetries = core.getTypedInput(
    'max-retries',
    parse: int.parse,
    defaultValue: 1,
  );
  final retryTimeoutMinutes = core.getTypedInput(
    'retry-timeout-minutes',
    parse: int.parse,
    defaultValue: 30,
  );

  final sdkManager = SdkManager(apiLevel: apiLevel, target: target, abi: abi);

  // Ensure SDK is available (only needs to be done once)
  await sdkManager.ensureSdk();

  // Retry the emulator launch and script execution up to maxRetries times
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

    // Phase 1: Launch emulator (AvdManager creates its own groups internally)
    ({bool success, Object? error, Object? stackTrace}) launchResult;
    try {
      final avdManager = AvdManager(
        apiLevel: apiLevel,
        target: target,
        abi: abi,
        name: 'test',
      );

      await avdManager.launchEmulator();
      core.info('✅ Emulator launched successfully');
      launchResult = (success: true, error: null, stackTrace: null);
    } on Object catch (e, st) {
      core.warning('❌ Emulator launch failed: $e');
      launchResult = (success: false, error: e, stackTrace: st);
    }

    if (!launchResult.success) {
      lastError = launchResult.error;
      lastStackTrace = launchResult.stackTrace as StackTrace?;

      core..warning('')
      ..warning('════════════════════════════════════════════════════════════════════')
      ..warning('❌ ATTEMPT $attempt FAILED - Emulator launch failed')
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
  final runningScript = ShellScript(script).start();

  try {
    await runningScript.future.timeout(timeout);

    final duration = DateTime.now().difference(startTime);
    core.info('⏱️  Tests completed in ${duration.inMinutes} minutes ${duration.inSeconds % 60} seconds');

    return _AttemptResult(
      success: true,
      timedOut: false,
      duration: duration,
    );
  } on TimeoutException catch (e, st) {
    core..warning('')
    ..warning('⏰ ══════════════════════════════════════════════════════════════')
    ..warning('⏰  TIMEOUT REACHED FOR ATTEMPT $attempt')
    ..warning('⏰  Attempt exceeded ${timeout.inMinutes} minute limit')
    ..warning('⏰  Time: ${DateTime.now().toUtc().toIso8601String()}')
    ..warning('⏰  Killing test process...')
    ..warning('⏰ ══════════════════════════════════════════════════════════════')
    ..warning('');
    runningScript.kill();
    final duration = DateTime.now().difference(startTime);
    return _AttemptResult(
      success: false,
      timedOut: true,
      duration: duration,
      error: e,
      stackTrace: st,
    );
  } on Object catch (e, st) {
    runningScript.kill();
    final duration = DateTime.now().difference(startTime);
    return _AttemptResult(
      success: false,
      timedOut: false,
      duration: duration,
      error: e,
      stackTrace: st,
    );
  }
}

/// Cleans up emulator and waits before next retry.
Future<void> _cleanupAndWait() async {
  core..info('🔄 Preparing for next retry...')
  ..info('   Cleaning up before next attempt...');
  await _cleanupEmulator();
  core.info('   Waiting 10 seconds before next attempt...');
  await Future<void>.delayed(const Duration(seconds: 10));
  core.info('   Ready for next attempt');
}

/// Cleans up any running emulator processes and AVD files before a retry attempt.
Future<void> _cleanupEmulator() async {
  core.info('Step 1/6: Killing emulator via adb emu kill...');
  try {
    await ShellScript('adb emu kill 2>/dev/null || true').run();
    core.info('   ✓ adb emu kill completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to kill emulator via adb: $e');
  }

  core.info('Step 2/6: Killing qemu-system processes...');
  try {
    await ShellScript('pkill -9 qemu-system 2>/dev/null || true').run();
    core.info('   ✓ qemu-system kill completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to kill qemu-system: $e');
  }

  core.info('Step 3/6: Killing emulator processes...');
  try {
    await ShellScript('pkill -9 emulator 2>/dev/null || true').run();
    core.info('   ✓ emulator kill completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to kill emulator process: $e');
  }

  core.info('Step 4/6: Stopping adb server...');
  try {
    await ShellScript('adb kill-server 2>/dev/null || true').run();
    core.info('   ✓ adb kill-server completed');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to kill adb server: $e');
  }

  core.info('Waiting 10 seconds for processes to terminate...');
  await Future<void>.delayed(const Duration(seconds: 10));

  core.info('Step 5/6: Deleting AVD "test" to free disk space...');
  try {
    await ShellScript('''
      echo "Existing AVDs before deletion:"
      avdmanager list avd -c 2>/dev/null || echo "  Failed to list AVDs"

      avdmanager delete avd -n test 2>/dev/null || echo "  AVD 'test' not found or already deleted"

      echo "Remaining AVDs after deletion:"
      avdmanager list avd -c 2>/dev/null || echo "  Failed to list AVDs"
    ''').run();
    core.info('   ✓ AVD "test" deleted');
  } on Object catch (e) {
    core.warning('   ⚠ Failed to delete AVD: $e');
  }

  core.info('Step 6/6: Checking available disk space...');
  try {
    await ShellScript('df -h . | tail -1').run();
  } on Object catch (e) {
    core.warning('   ⚠ Failed to check disk space: $e');
  }

  core.info('✅ Cleanup complete');
}
