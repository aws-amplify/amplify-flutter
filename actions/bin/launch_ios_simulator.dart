// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:collection/collection.dart';

Future<void> main(List<String> args) => wrapMain(launch);

Future<void> launch() async {
  final iosVersion = core.getInput('ios-version');
  core.info('Launching simulator for iOS $iosVersion');

  var runtimeIdentifier = await core.withGroup(
    'Check for existing runtime',
    () async {
      final runtimeId = await getRuntimeId(iosVersion);
      core.info('Found runtime ID: $runtimeId');
      return runtimeId;
    },
  );
  if (runtimeIdentifier == null) {
    core.info('No runtime found for iOS $iosVersion');
    await installXcodes();
    await installRuntime(iosVersion);
  }
  runtimeIdentifier = await core.withGroup(
    'Get runtime ID',
    () async {
      final runtimeId = await getRuntimeId(iosVersion);
      core.info('Found runtime ID: $runtimeId');
      return runtimeId;
    },
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
}

/// Gets the iOS runtime identifier for the given [iosVersion].
Future<String?> getRuntimeId(String iosVersion) async {
  final runtimesRes = await exec.exec(
    'xcrun',
    ['simctl', 'list', 'runtimes', '-j'],
    echoOutput: false,
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

/// Installs the `xcodes` tool (https://github.com/XcodesOrg/xcodes) and
/// `aria2` for speeding up downloads (as recommended by `xcodes`).
Future<void> installXcodes() => core.withGroup('Install xcodes', () async {
      final res = await exec.exec(
        'brew',
        ['install', 'xcodesorg/made/xcodes', 'aria2'],
      );
      if (res.exitCode != 0) {
        throw Exception('Could not install xcodes');
      }
    });

/// Installs the iOS runtime for the given [iosVersion].
Future<void> installRuntime(String iosVersion) async {
  await core.withGroup('Install runtime', () async {
    final res = await exec.exec(
      'sudo',
      [
        'xcodes',
        'runtimes',
        'install',
        'iOS $iosVersion',
        '--no-color',
      ],
    );
    if (res.exitCode != 0) {
      throw Exception('Could not install runtime');
    }
  });
}
