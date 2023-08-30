// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/actions.dart';
import 'package:actions/src/android/avd_manager.dart';
import 'package:actions/src/android/sdk_manager.dart';
import 'package:actions/src/android/shell_script.dart';
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

  final sdkManager = SdkManager(
    apiLevel: apiLevel,
    target: target,
    abi: abi,
  );
  final avdManager = AvdManager(
    apiLevel: apiLevel,
    target: target,
    abi: abi,
    name: 'test',
  );

  await sdkManager.ensureSdk();
  await avdManager.launchEmulator();
  await core.withGroup(
    'Running script',
    () => ShellScript(script).run(),
  );
}
