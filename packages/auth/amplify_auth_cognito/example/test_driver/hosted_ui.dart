// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_test/hosted_ui/hosted_ui_server.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_driver/driver_extension.dart';

/// A Hosted UI VM client which runs a rudimentary JSON RPC service for
/// handling requests from the test driver.
///
/// This acts very similarly to `flutter_driver`.
Future<void> main() async {
  AWSLogger().logLevel = LogLevel.verbose;
  enableFlutterDriverExtension();
  await HostedUiServer.launch();
}
