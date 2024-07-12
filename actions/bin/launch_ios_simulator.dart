// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:actions/actions.dart';
import 'package:collection/collection.dart';

Future<void> main(List<String> args) => wrapMain(launch);

// TODO(equartey): Refactor to enable downloading of iOS 18 runtimes given
// Apple's breaking change which `Xcodes` does not yet support.
// https://github.com/XcodesOrg/xcodes/releases/tag/1.5.0
Future<void> launch() async {
  await installXcodes();
  final iosVersionArg = core.getInput('ios-version');
  final iosVersion =
      iosVersionArg == 'latest' ? await getLatest() : 'iOS $iosVersionArg';
  core.info('Launching simulator for $iosVersion');

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
      final res = await exec.exec(
        'brew',
        ['install', 'xcodesorg/made/xcodes', 'aria2'],
      );
      if (res.exitCode != 0) {
        throw Exception('Could not install xcodes');
      }
    });

Future<String> getLatest() async {
  final version = await exec
      .exec('/bin/sh', ['-c', r'xcodes runtimes | grep -e "iOS" | tail -n 1']);
  if (version.exitCode != 0) {
    throw Exception('Could not get latest version');
  }

  return version.stdout.replaceAll(' (Installed)', '').trim();
}

/// Installs the iOS runtime for the given [iosVersion].
Future<void> installRuntime(String iosVersion) async {
  await core.withGroup('Install runtime', () async {
    final res = await exec.exec(
      'sudo',
      [
        'xcodes',
        'runtimes',
        'install',
        iosVersion,
        '--no-color',
      ],
    );
    if (res.exitCode != 0) {
      throw Exception('Could not install runtime');
    }
  });
}
