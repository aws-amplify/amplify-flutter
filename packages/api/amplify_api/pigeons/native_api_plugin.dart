// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_positional_boolean_parameters

@ConfigurePigeon(
  PigeonOptions(
    copyrightHeader: '../../../tool/license.txt',
    dartOptions: DartOptions(),
    dartOut: 'lib/src/native_Api_plugin.dart',
    javaOptions: JavaOptions(
      className: 'NativeApiPluginBindings',
      package: 'com.amazonaws.amplify.amplify_api',
    ),
    javaOut:
        '../amplify_api_android/android/src/main/kotlin/com/amazonaws/amplify/amplify_api/NativeApiPluginBindings.java',
    objcOptions: ObjcOptions(
      header: 'NativeApiPlugin.h',
    ),
    objcHeaderOut: '../amplify_api_ios/ios/Classes/NativeApiPlugin.h',
    objcSourceOut: '../amplify_api_ios/ios/Classes/NativeApiPlugin.m',
  ),
)
library native_api_plugin;

import 'package:pigeon/pigeon.dart';

@FlutterApi()
abstract class NativeApiPlugin {
  @async
  String? getLatestAuthToken(String providerName);
}

@HostApi()
abstract class NativeApiBridge {
  @async
  void addPlugin(List<String> authProvidersList);
}
