// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:actions/src/android/android_tool.dart';
import 'package:actions/src/android/avd_manager.dart';
import 'package:actions/src/android/types.dart';
import 'package:path/path.dart' as p;

final androidHome = process.getEnv('ANDROID_HOME') ??
    (throw StateError(
      'ANDROID_HOME env not set. Is the Android SDK installed?',
    ));

/// Manages installation of Android SDK tools and system images.
final class SdkManager {
  SdkManager({
    required this.apiLevel,
    required this.target,
    required this.abi,
  });

  final AndroidApiLevel apiLevel;
  final AndroidSystemImageTarget target;
  final AndroidAbi abi;

  /// The `sdkmanager` too.
  ///
  /// CLI Reference: https://developer.android.com/tools/sdkmanager
  static final _sdkmanager = AndroidTool(
    'sdkmanager',
    defaultArgs: [
      '--channel=0', // Use stable channel
      if (core.isDebug()) '--verbose',
    ],
    // Always pipe `yes` since most `sdkmanager` commands can prompt
    // for accepting licenses.
    defaultStdinCmd: 'yes',
  );

  /// The current `compileSdk` used by the repo.
  // TODO(dnys1): Extract from aft.yaml?
  static const compileSdk = 33;

  /// The install directory for cmdline-tools.
  ///
  /// The `sdkmanager` CLI expects cmdline-tools to be installed here and
  /// will throw unhelpful errors otherwise.
  static final _cmdlineToolsPath =
      p.join(androidHome, 'cmdline-tools', 'latest');

  /// Ensures the latest Android SDK and build tools are installed and available
  /// in the system PATH.
  Future<void> ensureSdk() async {
    // Set PATH vars for cmdline-tools, platform tools, and emulator.
    // https://developer.android.com/tools#tools-sdk
    core
      ..addPath(p.join(_cmdlineToolsPath, 'bin'))
      ..addPath(p.join(androidHome, 'platform-tools'))
      ..exportVariable('ANDROID_AVD_HOME', androidAvdHome);

    await _ensureCmdlineTools();

    await core.withGroup(
      'Upgrade existing packages',
      () => _sdkmanager(['--update']),
    );

    await core.withGroup(
      'Accept all licenses',
      () => _sdkmanager(['--licenses']),
    );

    await _ensureBuildTools();
  }

  /// Latest version of the cmdline-tools
  ///
  /// From: https://developer.android.com/studio#command-line-tools-only
  static const _latestCmdlineToolsVersion = '10406996';

  /// Installs the latest version of cmdline-tools if not already available.
  Future<void> _ensureCmdlineTools() async =>
      core.withGroup('Install cmdline-tools', () async {
        if (fs.existsSync(_cmdlineToolsPath)) {
          core.info('Found existing cmdline-tools installation');
          return;
        }
        if (toolCache.find('cmdline-tools', _latestCmdlineToolsVersion)
            case final toolCachePath?) {
          core.info('Found cached cmdline-tools install: $toolCachePath');
          return;
        }

        final os = switch (process.platform) {
          OS.linux => 'linux',
          OS.macOS => 'mac',
        };
        final downloadUrl =
            'https://dl.google.com/android/repository/commandlinetools-$os-${_latestCmdlineToolsVersion}_latest.zip';
        core.info('Downloading cmdline-tools from $downloadUrl');

        final downloadPath = await toolCache.downloadTool(downloadUrl);
        core.info('Downloaded cmdline-tools to $downloadPath');

        final extractPath = await toolCache.extractZip(
          downloadPath,
          _cmdlineToolsPath,
        );
        core.info('Extracted cmdline-tools to $extractPath');

        final toolCachePath = await toolCache.cacheDir(
          extractPath,
          'cmdline-tools',
          _latestCmdlineToolsVersion,
        );
        core.info('Installed cmdline-tools to $toolCachePath');
      });

  /// Installs prerequisites for building Android apps for the current
  /// [compileSdk] and given [apiLevel], [target], and [abi].
  ///
  /// Checks for any updates to build tools using `sdkmanager` or installs
  /// latest version if not installed.
  Future<void> _ensureBuildTools() async {
    final availableTools = await core.withGroup(
      'List available tools',
      () => _sdkmanager(['--list']),
    );

    final buildToolsPackage =
        LineSplitter.split(availableTools.stdout as String)
            .map((line) => line.trim())
            .firstWhere(
              (line) => line.startsWith('build-tools;$compileSdk'),
            )
            .split(RegExp(r'\s+'))
            .first;

    await core.withGroup(
      'Install/update build tools ($buildToolsPackage)',
      () async {
        await _sdkmanager([buildToolsPackage]);
        core.info('Successfully installed $buildToolsPackage');
      },
    );

    await core.withGroup(
      'Install/update platform tools',
      () async {
        await _sdkmanager(['platform-tools']);
        core.info('Successfully installed platform-tools');
      },
    );

    // Install the Android platform for the compileSdk used by the repo.
    await core.withGroup(
      'Install/update Android platform ($compileSdk)',
      () async {
        const packageName = 'platforms;android-$compileSdk';
        await _sdkmanager([packageName]);
        core.info('Successfully installed $packageName');
      },
    );

    final targetTriplet = '$apiLevel;$target;$abi';
    await core.withGroup(
      'Install/update system images ($targetTriplet)',
      () async {
        final packageName = 'system-images;android-$targetTriplet';
        await _sdkmanager([packageName]);
        core.info('Successfully installed $packageName');
      },
    );

    await core.withGroup('Install/update emulator', () async {
      const packageName = 'emulator';
      await _sdkmanager([packageName]);
      core.info('Successfully installed $packageName');
    });
  }
}
