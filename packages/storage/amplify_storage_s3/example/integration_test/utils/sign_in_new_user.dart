// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

import 'tear_down.dart';

/// Creates a new user and signs them in.
///
/// Returns the users identityId.
///
/// A tear down will be added to delete the user after the test completes.
Future<String> signInNewUser() async {
  addTearDownCurrentUser();
  final username = 'test-user-1-${uuid()}';
  const password = 'TestUser1!';
  await Amplify.Auth.signUp(
    username: username,
    password: password,
  );
  await Amplify.Auth.signIn(
    username: username,
    password: password,
  );
  final session = await Amplify.Auth.getPlugin(AmplifyAuthCognito.pluginKey)
      .fetchAuthSession();
  return session.identityIdResult.value;
}
