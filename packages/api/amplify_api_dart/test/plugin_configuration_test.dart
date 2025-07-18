// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'dart:convert';

import 'package:amplify_api_dart/amplify_api_dart.dart';
import 'package:amplify_api_dart/src/graphql/providers/app_sync_api_key_auth_provider.dart';
import 'package:amplify_api_dart/src/graphql/providers/oidc_function_api_auth_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/testing.dart';
import 'package:test/test.dart';

import 'test_data/fake_amplify_configuration.dart';
import 'test_data/fake_amplify_configuration_iam_with_api_key.dart';
import 'util.dart';

const _expectedQuerySuccessResponseBody = {
  'data': {
    'listBlogs': {
      'items': [
        {
          'id': 'TEST_ID',
          'name': 'Test App Blog',
          'createdAt': '2022-06-28T17:36:52.460Z',
        },
      ],
    },
  },
};

/// Asserts user agent and API key present.
final _mockGqlClient = MockAWSHttpClient((request, _) async {
  expect(
    request.headers[AWSHeaders.platformUserAgent],
    contains('amplify-dart'),
  );
  expect(request.headers[xApiKey], isA<String>());
  return AWSHttpResponse(
    statusCode: 200,
    body: utf8.encode(json.encode(_expectedQuerySuccessResponseBody)),
  );
});

/// Asserts user agent and signed.
final _mockRestClient = MockAWSHttpClient((request, _) async {
  expect(
    request.headers[AWSHeaders.platformUserAgent],
    contains('amplify-dart'),
  );
  validateSignedRequest(request);
  return AWSHttpResponse(
    statusCode: 200,
    body: utf8.encode('"Hello from Lambda!"'),
  );
});

void main() {
  final authProviderRepo = AmplifyAuthProviderRepository()
    ..registerAuthProvider(
      APIAuthorizationType.iam.authProviderToken,
      TestIamAuthProvider(),
    );
  final amplifyOutputs = AmplifyOutputs.fromJson(
    jsonDecode(amplifyConfig) as Map<String, Object?>,
  );
  final amplifyOutputsIamWithApiKey = AmplifyOutputs.fromJson(
    jsonDecode(amplifyConfigIamWithApiKey) as Map<String, Object?>,
  );

  group('AmplifyAPI plugin configuration', () {
    test(
      'should register an API key auth provider when the configuration has an API key',
      () async {
        final plugin = AmplifyAPIDart();
        await plugin.configure(
          authProviderRepo: authProviderRepo,
          config: amplifyOutputs,
        );
        final apiKeyAuthProvider = authProviderRepo.getAuthProvider(
          APIAuthorizationType.apiKey.authProviderToken,
        );
        expect(apiKeyAuthProvider, isA<AppSyncApiKeyAuthProvider>());
      },
    );

    test(
      'should register an API key auth provider when the configuration has an API key and IAM is default auth mode',
      () async {
        final plugin = AmplifyAPIDart();
        await plugin.configure(
          authProviderRepo: authProviderRepo,
          config: amplifyOutputsIamWithApiKey,
        );
        final apiKeyAuthProvider = authProviderRepo.getAuthProvider(
          APIAuthorizationType.apiKey.authProviderToken,
        );
        expect(apiKeyAuthProvider, isA<AppSyncApiKeyAuthProvider>());
      },
    );

    test(
      'should register an OIDC auth provider when passed to plugin',
      () async {
        final plugin = AmplifyAPIDart(
          options: const APIPluginOptions(
            authProviders: [CustomOIDCProvider()],
          ),
        );
        await plugin.configure(
          authProviderRepo: authProviderRepo,
          config: amplifyOutputs,
        );
        final oidcAuthProvider = authProviderRepo.getAuthProvider(
          APIAuthorizationType.oidc.authProviderToken,
        );
        expect(oidcAuthProvider, isA<OidcFunctionAuthProvider>());
        final actualRegisteredProvider = authProviderRepo.getAuthProvider(
          APIAuthorizationType.oidc.authProviderToken,
        );
        final actualToken = await actualRegisteredProvider!
            .getLatestAuthToken();
        expect(actualToken, testOidcToken);
      },
    );

    test(
      'should register a Lambda (function) auth provider when passed to plugin',
      () async {
        final plugin = AmplifyAPIDart(
          options: const APIPluginOptions(
            authProviders: [CustomFunctionProvider()],
          ),
        );
        await plugin.configure(
          authProviderRepo: authProviderRepo,
          config: amplifyOutputs,
        );
        final functionAuthProvider = authProviderRepo.getAuthProvider(
          APIAuthorizationType.function.authProviderToken,
        );
        expect(functionAuthProvider, isA<OidcFunctionAuthProvider>());
        final actualRegisteredProvider = authProviderRepo.getAuthProvider(
          APIAuthorizationType.function.authProviderToken,
        );
        final actualToken = await actualRegisteredProvider!
            .getLatestAuthToken();
        expect(actualToken, testFunctionToken);
      },
    );

    test(
      'should configure an HTTP client for GraphQL that authorizes with auth providers and adds user-agent',
      () async {
        final plugin = AmplifyAPIDart(
          options: APIPluginOptions(baseHttpClient: _mockGqlClient),
        );
        await plugin.configure(
          authProviderRepo: authProviderRepo,
          config: amplifyOutputs,
        );

        const graphQLDocument = '''query TestQuery {
          listBlogs {
            items {
              id
              name
              createdAt
            }
          }
        }''';
        final request = GraphQLRequest<String>(
          document: graphQLDocument,
          variables: {},
        );
        await plugin.query(request: request).response;
        // no assertion here because assertion implemented in mock HTTP client
      },
    );

    test(
      'should configure an HTTP client for REST that authorizes with auth providers and adds user-agent',
      () async {
        final plugin = AmplifyAPIDart(
          options: APIPluginOptions(baseHttpClient: _mockRestClient),
        );
        await plugin.configure(
          authProviderRepo: authProviderRepo,
          config: amplifyOutputs,
        );

        await plugin.get('/items').response;
        // no assertion here because assertion implemented in mock HTTP client
      },
    );
  });
}
