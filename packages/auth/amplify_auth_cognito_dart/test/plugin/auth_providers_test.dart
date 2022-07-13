// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/util/aws_iam_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import '../common/mock_config.dart';

/// Returns dummy AWS credentials.
class TestAmplifyAuth extends AmplifyAuthCognitoDart {
  @override
  Future<AuthSession> fetchAuthSession({
    required AuthSessionRequest request,
  }) async {
    return const CognitoAuthSession(
      isSignedIn: true,
      credentials: AWSCredentials('fakeKeyId', 'fakeSecret'),
    );
  }
}

void main() {
  late AmplifyAuthCognitoDart plugin;
  final testAuthRepo = AmplifyAuthProviderRepository();

  group(
      'AmplifyAuthCognitoDart plugin registers auth providers during configuration',
      () {
    setUp(() async {
      plugin = TestAmplifyAuth();
    });

    test('registers AWSIAMAuthProvider', () async {
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );
      final authProvider =
          testAuthRepo.getAuthProvider(APIAuthorizationType.iam.name);
      expect(authProvider, isA<AWSIAMAuthProvider>());
    });
  });

  group('AWSIAMAuthProvider', () {
    setUpAll(() async {
      await Amplify.addPlugin(TestAmplifyAuth());
    });

    test('gets AWS credentials from Amplify.Auth.fetchAuthSession', () async {
      final authProvider = AWSIAMAuthProvider();
      final creds = await authProvider.getCredentials();
      expect(creds?.accessKeyId, isA<String>());
      expect(creds?.secretAccessKey, isA<String>());
    });

    test('signs a request when calling authorizeRequest', () async {
      final authProvider = AWSIAMAuthProvider();
      final inputRequest =
          http.Request('GET', Uri.parse('https://www.amazon.com'));
      final authorizedRequest = await authProvider.authorizeRequest(
        inputRequest,
        options: IAMAuthProviderOptions(
          region: 'us-east-1',
          service: AWSService.appSync,
        ),
      );
      // Note: not intended to be complete test of sigv4 algorithm.
      expect(authorizedRequest.headers[AWSHeaders.authorization], isNotEmpty);
      expect(
        authorizedRequest.headers[AWSHeaders.userAgent],
        startsWith('aws-sigv4'),
      );
      expect(authorizedRequest.headers[AWSHeaders.host], isNotEmpty);
    });

    test('throws when no options provided', () async {
      final authProvider = AWSIAMAuthProvider();
      final inputRequest =
          http.Request('GET', Uri.parse('https://www.amazon.com'));
      await expectLater(
        authProvider.authorizeRequest(inputRequest),
        throwsA(isA<AuthException>()),
      );
    });
  });
}
