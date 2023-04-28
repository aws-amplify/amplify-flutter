// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart'
    as integ;
import 'package:flutter_test/flutter_test.dart';

/// {@template amplify_auth_integration_test.amplify_auth_test_plugin}
/// A wrapper for [AmplifyAuthCognito] which automatically deletes users
/// created using [signUp].
///
/// This prevents having to remember to manually delete users when creating them,
/// which is error prone and can lead to elevated Cognito costs.
/// {@endtemplate}
class AmplifyAuthTestPlugin extends AmplifyAuthCognito {
  /// {@macro amplify_auth_integration_test.amplify_auth_test_plugin}
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
            // This is expected in environments which do not have an admin GraphQL API.
            (e, st) => logger.debug('Error deleting user ($username):', e, st),
          ),
    );
    return super.signUp(
      username: username,
      password: password,
      options: options,
    );
  }
}
