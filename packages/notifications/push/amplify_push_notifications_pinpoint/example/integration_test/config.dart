// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_push_notifications_pinpoint/amplify_push_notifications_pinpoint.dart';
import 'package:amplify_push_notifications_pinpoint_example/amplifyconfiguration.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> loadConfiguration() async {
  final authPlugin = AmplifyAuthCognito();
  final notificationsPlugin = AmplifyPushNotificationsPinpoint();
  await Amplify.addPlugins([authPlugin, notificationsPlugin]);
  await Amplify.configure(amplifyconfig);
  addTearDown(Amplify.reset);
}
