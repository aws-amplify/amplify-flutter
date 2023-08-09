// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:collection/collection.dart';

Future<void> main(List<String> args) async {
  final iosVersion = core.getInput('ios-version');
  core.info('Launching simulator for iOS $iosVersion');

  try {
    // Use xcodes (https://github.com/XcodesOrg/xcodes) to list runtimes for all Xcode versions
    final xcodesRes = await core.withGroup(
      'Install xcodes',
      () => exec.exec('brew', ['install', 'xcodesorg/made/xcodes']),
    );
    if (xcodesRes.exitCode != 0) {
      throw Exception('Could not install xcodes');
    }

    var runtimeIdentifier = await core.withGroup(
      'Check for existing runtime',
      () => getRuntimeId(iosVersion),
    );
    if (runtimeIdentifier == null) {
      core.info('No runtime found for iOS $iosVersion');
      await core.withGroup('Clear cache', clearCache);
      await core.withGroup('Install runtime', () => installRuntime(iosVersion));
    }
    runtimeIdentifier = await core.withGroup(
      'Get runtime ID',
      () => getRuntimeId(iosVersion),
    );
    if (runtimeIdentifier == null) {
      throw Exception('Runtime not found after install');
    }
    final createRes = await core.withGroup(
      'Create simulator',
      () => exec.exec(
        'xcrun',
        [
          'simctl',
          'create',
          'test',
          'iPhone 11',
          runtimeIdentifier!,
        ],
      ),
    );
    if (createRes.exitCode != 0) {
      throw Exception('Could not create simulator');
    }
    final bootRes = await core.withGroup(
      'Boot simulator',
      () => exec.exec(
        'xcrun',
        ['simctl', 'boot', 'test'],
      ),
    );
    if (bootRes.exitCode != 0) {
      throw Exception('Could not boot simulator');
    }
  } on Object catch (e) {
    return core.setFailed(e.toString());
  }
}

/// Clears the cache from previous attempts.
Future<void> clearCache() async {
  final cacheDirs = [
    '~/Library/Caches/com.robotsandpencils.xcodes',
    '~/Downloads',
  ];
  for (final dir in cacheDirs) {
    if (fs.existsSync(dir)) {
      fs.rmdirSync(dir);
    }
  }
}

/// Gets the iOS runtime identifier for the given [iosVersion].
Future<String?> getRuntimeId(String iosVersion) async {
  final runtimesRes = await exec.exec(
    'xcrun',
    ['simctl', 'list', 'runtimes', '-j'],
    silent: true,
  );
  if (runtimesRes.exitCode != 0) {
    throw Exception('Could not list runtimes');
  }
  final runtimesJson = jsonDecode(runtimesRes.stdout) as Map<String, Object?>;
  final runtimes =
      (runtimesJson['runtimes'] as List<Object?>).cast<Map<String, Object?>>();
  final versionRuntime = runtimes.firstWhereOrNull(
    (runtime) => (runtime['name'] as String).startsWith('iOS $iosVersion'),
  );
  if (versionRuntime == null) {
    return null;
  }
  return versionRuntime['identifier'] as String;
}

/// Installs the iOS runtime for the given [iosVersion].
Future<void> installRuntime(String iosVersion) async {
  final res = await exec.exec(
    'sudo',
    ['xcodes', 'runtimes', 'install', 'iOS $iosVersion'],
  );
  if (res.exitCode != 0) {
    throw Exception('Could not install runtime');
  }
}
