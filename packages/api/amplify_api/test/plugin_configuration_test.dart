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
import 'dart:convert';

import 'package:amplify_api/src/api_plugin_impl.dart';
import 'package:amplify_api/src/graphql/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api/src/oidc_function_api_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

import 'test_data/fake_amplify_configuration.dart';
import 'util.dart';

const _expectedQuerySuccessResponseBody = {
  'data': {
    'listBlogs': {
      'items': [
        {
          'id': 'TEST_ID',
          'name': 'Test App Blog',
          'createdAt': '2022-06-28T17:36:52.460Z'
        }
      ]
    }
  }
};

/// Asserts user agent and API key present.
final _mockGqlClient = MockClient((request) async {
  const userAgentHeader =
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent;
  expect(request.headers[userAgentHeader], contains('amplify-flutter'));
  expect(request.headers[xApiKey], isA<String>());
  return http.Response(json.encode(_expectedQuerySuccessResponseBody), 200);
});

/// Asserts user agent and signed.
final _mockRestClient = MockClient((request) async {
  const userAgentHeader =
      zIsWeb ? AWSHeaders.amzUserAgent : AWSHeaders.userAgent;
  expect(request.headers[userAgentHeader], contains('amplify-flutter'));
  validateSignedRequest(request);
  return http.Response('"Hello from Lambda!"', 200);
});

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final authProviderRepo = AmplifyAuthProviderRepository();
  authProviderRepo.registerAuthProvider(
    APIAuthorizationType.iam.authProviderToken,
    TestIamAuthProvider(),
  );
  final config =
      AmplifyConfig.fromJson(jsonDecode(amplifyconfig) as Map<String, Object?>);

  group('AmplifyAPI plugin configuration', () {
    test(
        'should register an API key auth provider when the configuration has an API key',
        () async {
      final plugin = AmplifyAPIDart();
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
      final apiKeyAuthProvider = authProviderRepo
          .getAuthProvider(APIAuthorizationType.apiKey.authProviderToken);
      expect(apiKeyAuthProvider, isA<AppSyncApiKeyAuthProvider>());
    });

    test('should register an OIDC auth provider when passed to plugin',
        () async {
      final plugin =
          AmplifyAPIDart(authProviders: [const CustomOIDCProvider()]);
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
      final oidcAuthProvider = authProviderRepo
          .getAuthProvider(APIAuthorizationType.oidc.authProviderToken);
      expect(oidcAuthProvider, isA<OidcFunctionAuthProvider>());
      final actualRegisteredProvider = authProviderRepo
          .getAuthProvider(APIAuthorizationType.oidc.authProviderToken);
      final actualToken = await actualRegisteredProvider!.getLatestAuthToken();
      expect(actualToken, testOidcToken);
    });

    test(
        'should register a Lambda (function) auth provider when passed to plugin',
        () async {
      final plugin =
          AmplifyAPIDart(authProviders: [const CustomFunctionProvider()]);
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );
      final functionAuthProvider = authProviderRepo
          .getAuthProvider(APIAuthorizationType.function.authProviderToken);
      expect(functionAuthProvider, isA<OidcFunctionAuthProvider>());
      final actualRegisteredProvider = authProviderRepo
          .getAuthProvider(APIAuthorizationType.function.authProviderToken);
      final actualToken = await actualRegisteredProvider!.getLatestAuthToken();
      expect(actualToken, testFunctionToken);
    });

    test(
        'should configure an HTTP client for GraphQL that authorizes with auth providers and adds user-agent',
        () async {
      final plugin = AmplifyAPIDart(baseHttpClient: _mockGqlClient);
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      String graphQLDocument = '''query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        }''';
      final request =
          GraphQLRequest<String>(document: graphQLDocument, variables: {});
      await plugin.query(request: request).value;
      // no assertion here because assertion implemented in mock HTTP client
    });

    test(
        'should configure an HTTP client for REST that authorizes with auth providers and adds user-agent',
        () async {
      final plugin = AmplifyAPIDart(baseHttpClient: _mockRestClient);
      await plugin.configure(
        authProviderRepo: authProviderRepo,
        config: config,
      );

      await plugin.get('/items').value;
      // no assertion here because assertion implemented in mock HTTP client
    });
  });
}
