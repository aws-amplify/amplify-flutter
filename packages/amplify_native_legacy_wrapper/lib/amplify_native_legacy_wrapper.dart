// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: non_constant_identifier_names

import 'package:amplify_native_legacy_wrapper/amplify_native_legacy_plugin.g.dart';
import 'package:flutter/services.dart';

/// A wrapper around the Native v1 Amplify plugins and the legacy SDKs.
///
/// On Android, this wraps the Java SDK directly. On iOS, this wraps the v1
/// Amplify plugins instead of the SDK since using the Objective-c SDK directly
/// requires significant boilerplate.
class AmplifyNativeLegacyWrapper implements LegacyNativePlugin {
  final _plugin = LegacyNativePlugin();

  @override
  Future<void> configure(String config) {
    return _plugin.configure(config);
  }

  @override
  Future<void> signIn(String username, String password) {
    return _plugin.signIn(username, password);
  }

  @override
  Future<void> signOut() {
    return _plugin.signOut();
  }

  @override
  Future<void> rememberDevice() {
    return _plugin.rememberDevice();
  }

  @override
  BinaryMessenger? get pigeonVar_binaryMessenger =>
      _plugin.pigeonVar_binaryMessenger;

  @override
  String get pigeonVar_messageChannelSuffix =>
      _plugin.pigeonVar_messageChannelSuffix;
}
