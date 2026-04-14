// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// LOCAL ONLY — do not commit. Manual test helper.

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_foundation_dart/amplify_foundation_dart.dart'
    as foundation
    show AWSCredentialsProvider, TemporaryCredentials;

/// Credentials provider backed by the current Amplify Auth session.
class AmplifyAuthCredentialsProvider
    implements foundation.AWSCredentialsProvider {
  @override
  Future<foundation.TemporaryCredentials> resolve() async {
    final session =
        await Amplify.Auth.fetchAuthSession(
              options: const FetchAuthSessionOptions(forceRefresh: false),
            )
            as CognitoAuthSession;

    final credentials = session.credentialsResult.value;
    return foundation.TemporaryCredentials(
      credentials.accessKeyId,
      credentials.secretAccessKey,
      credentials.sessionToken!,
      credentials.expiration!,
    );
  }
}

/// Fake credentials provider that always returns bogus keys.
class FakeCredentialsProvider implements foundation.AWSCredentialsProvider {
  @override
  Future<foundation.TemporaryCredentials> resolve() async {
    return foundation.TemporaryCredentials(
      'AKIAIOSFODNN7EXAMPLE',
      'wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY',
      'FakeSessionToken',
      DateTime.now().add(const Duration(hours: 1)),
    );
  }
}
