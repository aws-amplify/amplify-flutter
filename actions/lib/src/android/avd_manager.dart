// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/android/android_tool.dart';
import 'package:actions/src/android/sdk_manager.dart';
import 'package:actions/src/android/shell_script.dart';
import 'package:actions/src/android/types.dart';
import 'package:actions/src/node/process_manager.dart';
import 'package:path/path.dart' as p;
import 'package:retry/retry.dart';

final androidAvdHome = p.join(process.getEnv('HOME')!, '.android', 'avd');

final class AvdManager {
  AvdManager({
    required this.apiLevel,
    required this.target,
    required this.abi,
    required this.name,
  });

  final AndroidApiLevel apiLevel;
  final AndroidSystemImageTarget target;
  final AndroidAbi abi;
  final String name;

  /// The `avdmanager` tool.
  ///
  /// CLI Reference: https://developer.android.com/tools/avdmanager
  static final _avdmanager = AndroidTool('avdmanager');

  /// The `emulator` tool.
  ///
  /// CLI Reference: https://developer.android.com/studio/run/emulator-commandline
  static final _emulator = AndroidTool(
    // Don't add to PATH because it breaks for some reason.
    p.join(androidHome, 'emulator', 'emulator'),
  );

  /// The `adb` tool.
  ///
  /// CLI Reference: https://developer.android.com/tools/adb
  static final _adb = AndroidTool('adb', failOnNonZeroExit: false);

  Future<void> launchEmulator() async {
    final avdPath = p.join(androidAvdHome, '$name.avd');
    final fromCache = fs.existsSync(avdPath);
    if (fromCache) {
      core.info('Existing emulator found in cache. Skipping creation.');
    } else {
      core.info('No emulator found in cache. Creating new one.');
      await _createEmulator();
    }

    // Ensure the adb server is running before booting the emulator.
    await core.withGroup('Start ADB server', () => _adb(['start-server']));

    core.info('Starting emulator "$name": $avdPath');

    await _enableKvm();
    await _startEmulator();
    await _waitForBoot();
    core.info('Emulator booted successfully');
  }

  Future<void> _createEmulator() => core.withGroup('Create emulator', () async {
        final targetImage = 'system-images;android-$apiLevel;$target;$abi';
        await _avdmanager(
          ['create', 'avd', '-n', name, '-k', targetImage],
          stdinCmd: 'echo n',
        );
      });

  Future<Process> _startEmulator() => core.withGroup(
        'Start emulator',
        () async {
          final startAvdArgs = <String>[
            '-avd', name, // Name of the AVD
            '-no-window',
            '-noaudio',
            '-no-boot-anim',
            '-restart-when-stalled',
            '-accel', 'on', // Fail if HW accel is unavailable
            '-no-snapshot',
            '-verbose',
          ];
          final emulator = await processManager.start(
            [_emulator.exe, ...startAvdArgs],
            mode: ProcessStartMode.inheritStdio,
          );
          core.info('Emulator started with args: $startAvdArgs');
          return emulator;
        },
      );

  Future<void> _enableKvm() async {
    if (process.platform != OS.linux) {
      return;
    }
    final enabled = await core.withGroup(
      'Check Hardware Acceleration',
      () async {
        try {
          await _emulator(['-accel-check']);
          return true;
        } on Object {
          return false;
        }
      },
    );
    if (enabled) {
      return core.info('Hardware Acceleration is available');
    }
    core.warning('Hardware Acceleration is not available. Enabling...');
    await core.withGroup('Enable KVM', () async {
      // Enable as described in:
      // https://github.blog/changelog/2023-02-23-hardware-accelerated-android-virtualization-on-actions-windows-and-linux-larger-hosted-runners/
      await ShellScript(
        '''echo 'KERNEL=="kvm", GROUP="kvm", MODE="0666", OPTIONS+="static_node=kvm"' | sudo tee /etc/udev/rules.d/99-kvm4all.rules''',
      ).run();
      processManager
        ..runSync(<String>['sudo', 'udevadm', 'control', '--reload-rules'])
        ..runSync(<String>['sudo', 'udevadm', 'trigger', '--name-match=kvm']);
      core.info('KVM enabled for user');
    });
    await core.withGroup(
      'Verify Hardware Acceleration',
      () => _emulator(['-accel-check']),
    );
  }

  Future<void> _waitForBoot() async {
    const delayFactor = Duration(seconds: 30);
    const timeout = Duration(minutes: 10);
    final maxAttempts = timeout.inSeconds ~/ delayFactor.inSeconds;

    await core.withGroup(
      'Wait for AVD to boot',
      () => retry(
        maxAttempts: maxAttempts,
        delayFactor: delayFactor,
        retryIf: (e) => e is _BootNotCompleted,
        onRetry: (e) async {
          core.info(e.toString());
          final devices = await _adb(['devices', '-l']);
          if (devices.exitCode != 0) {
            throw ProcessException(
              'adb',
              ['devices', '-l'],
              devices.stderr as String,
            );
          }
        },
        () async {
          final bootRes = await _adb([
            '-s',
            'emulator-5554',
            'shell',
            'getprop',
            'sys.boot_completed',
          ]);
          if (bootRes.exitCode != 0) {
            throw _BootNotCompleted(bootRes.stderr as String);
          }
          final propValue = int.tryParse((bootRes.stdout as String).trim());
          if (propValue != 1) {
            throw _BootNotCompleted('Device online but not yet booted');
          }
          core.info('Emulator booted');
        },
      ),
    );
  }
}

final class _BootNotCompleted implements Exception {
  _BootNotCompleted(this.message);

  final String message;

  @override
  String toString() => 'Boot not completed: $message';
}
