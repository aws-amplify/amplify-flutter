// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_test/flutter_test.dart';

/// Creates a new user and signs them in.
///
/// Returns the users identityId.
Future<String> signInNewUser() async {
  addTearDown(() {
    try {
      return Amplify.Auth.deleteUser();
    } on Exception {
      // do nothing;
    }
  });
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
