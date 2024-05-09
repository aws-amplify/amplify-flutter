// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../tool/license.txt',
    dartOut: './lib/amplify_native_legacy_plugin.g.dart',
    swiftOut: './ios/Classes/Pigeons/AmplifyNativeLegacyPlugin.swift',
    kotlinOptions: KotlinOptions(
      package: 'com.amazonaws.amplify.amplify_native_legacy_wrapper.pigeons',
    ),
    kotlinOut:
        './android/src/main/kotlin/com/amazonaws/amplify/amplify_native_legacy_wrapper/pigeons/LegacyNativePluginPigeon.kt',
  ),
)

library legacy_native_plugin;

import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class LegacyNativePlugin {
  @async
  void configure(String config);

  @async
  void signOut();

  @async
  void signIn(String username, String password);

  @async
  void rememberDevice();
}
