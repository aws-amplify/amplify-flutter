// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// Sets up EMAIL MFA for the current user.
Future<void> setUpEmailMfa() async {
  final plugin = Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey);
  await plugin.updateMfaPreference(email: MfaPreference.preferred);
}
