// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart'
    as integ;
import 'package:flutter_test/flutter_test.dart';

import 'setup_utils.dart';

/// A wrapper for [AmplifyAuthCognito] which automatically deletes users
/// created using [signUp] and automatically signs out users which signed
/// in during the test.
///
/// This prevents having to remember to manually delete users when creating them,
/// which is error prone and can lead to elevated Cognito costs.
class AmplifyAuthTestPlugin extends AmplifyAuthCognito {
  AmplifyAuthTestPlugin()
      : super(
          secureStorageFactory: AmplifySecureStorage.factoryFrom(
            macOSOptions: MacOSSecureStorageOptions(useDataProtection: false),
          ),
        );

  @override
  Future<CognitoSignUpResult> signUp({
    required String username,
    required String password,
    SignUpOptions? options,
  }) {
    addTearDown(
      () => integ.deleteUser(username).onError(
            (e, st) => logger.debug('Error deleting user ($username):', e, st),
          ),
    );
    return super.signUp(
      username: username,
      password: password,
      options: options,
    );
  }

  @override
  Future<CognitoSignInResult> signIn({
    required String username,
    String? password,
    SignInOptions? options,
  }) {
    addTearDown(signOutUser);
    return super.signIn(
      username: username,
      password: password,
      options: options,
    );
  }
}
