//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import 'testdata/cli_generated.dart';
import 'testdata/test_values.dart';

void main() {
  group('Config', () {
    for (var testSuite in allTests) {
      group('Generated v${testSuite.version}', () {
        for (var testData in testSuite.tests) {
          final name = testData.name;
          test(name, () {
            final json = jsonDecode(testData.config) as Map<String, Object?>;
            final parsed = AmplifyConfig.fromJson(json.cast());
            final expectedConfig = expected[name]!;
            expect(parsed, equals(expectedConfig));
            expect(expectedConfig.toJson(), equals(json));
          });
        }
      });
    }
  });
}

const expected = {
  'Empty': AmplifyConfig(),
  'Analytics': AmplifyConfig(
    analytics: AnalyticsConfig(
      plugins: {
        PinpointPluginConfig.pluginKey: PinpointPluginConfig(
          pinpointAnalytics: PinpointAnalytics(
            appId: ANALYTICS_APP_ID,
            region: REGION,
          ),
          pinpointTargeting: PinpointTargeting(region: REGION),
        ),
      },
    ),
  ),
  'API': AmplifyConfig(
    api: ApiConfig(
      plugins: {
        AWSApiPluginConfig.pluginKey: AWSApiPluginConfig({
          'API_KEY': AWSApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.apiKey,
            apiKey: API_KEY,
          ),
          'AWS_IAM': AWSApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.iam,
          ),
          'REST': AWSApiConfig(
            endpointType: EndpointType.rest,
            endpoint: REST_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.userPools,
          ),
        }),
      },
    ),
  ),
  'Auth': AmplifyConfig(
    auth: AuthConfig(
      plugins: {
        CognitoPluginConfig.pluginKey: CognitoPluginConfig(
          userAgent: 'aws-amplify/cli',
          version: '0.1.0',
          identityManager: AWSConfigMap({
            'Default': CognitoIdentityManager(),
          }),
          auth: AWSConfigMap({
            'Default': CognitoAuthConfig(
              oAuth: CognitoOAuthConfig(
                appClientId: APPCLIENT_ID,
                scopes: [
                  'phone',
                  'email',
                  'openid',
                  'profile',
                  'aws.cognito.signin.user.admin',
                ],
                signInRedirectUri: OAUTH_SIGNIN,
                signOutRedirectUri: OAUTH_SIGNOUT,
                webDomain: OAUTH_DOMAIN,
              ),
              authenticationFlowType: AuthenticationFlowType.userSrpAuth,
            ),
            'DefaultCustomAuth': CognitoAuthConfig(
              // ignore: deprecated_member_use_from_same_package
              authenticationFlowType: AuthenticationFlowType.customAuth,
            ),
          }),
          cognitoUserPool: AWSConfigMap({
            'CustomEndpoint': CognitoUserPoolConfig(
              poolId: USERPOOL_ID,
              appClientId: APPCLIENT_ID,
              appClientSecret: APPCLIENT_SECERT,
              endpoint: OAUTH_DOMAIN,
              region: REGION,
            ),
            'Default': CognitoUserPoolConfig(
              poolId: USERPOOL_ID,
              appClientId: APPCLIENT_ID,
              appClientSecret: APPCLIENT_SECERT,
              region: REGION,
              hostedUI: CognitoOAuthConfig(
                appClientId: APPCLIENT_ID,
                appClientSecret: APPCLIENT_SECERT,
                scopes: ['openid', 'email'],
                signInRedirectUri: OAUTH_SIGNIN,
                signOutRedirectUri: OAUTH_SIGNOUT,
                webDomain: OAUTH_DOMAIN,
              ),
            ),
            'DefaultCustomAuth': CognitoUserPoolConfig(
              poolId: USERPOOL_ID,
              appClientId: APPCLIENT_ID,
              appClientSecret: APPCLIENT_SECERT,
              region: REGION,
            ),
          }),
          credentialsProvider: CredentialsProviders({
            'CognitoIdentity': AWSConfigMap({
              'Default': CognitoIdentityCredentialsProvider(
                poolId: IDPOOL_ID,
                region: REGION,
              ),
            }),
          }),
          appSync: AWSConfigMap({
            'Default': CognitoAppSyncConfig(
              apiUrl: GRAPHQL_ENDPOINT,
              region: REGION,
              authMode: APIAuthorizationType.userPools,
              clientDatabasePrefix: DATABASE_PREFIX,
            ),
          }),
          pinpointAnalytics: AWSConfigMap({
            'Default': CognitoPinpointAnalyticsConfig(
              appId: ANALYTICS_APP_ID,
              region: REGION,
            ),
          }),
          pinpointTargeting: AWSConfigMap({
            'Default': CognitoPinpointTargetingConfig(
              region: REGION,
            ),
          }),
          s3TransferUtility: AWSConfigMap({
            'Default': S3TransferUtility(
              bucket: BUCKET,
              region: REGION,
            ),
          }),
        ),
      },
    ),
  ),
  'Storage': AmplifyConfig(
    storage: StorageConfig(plugins: {
      S3PluginConfig.pluginKey: S3PluginConfig(
        bucket: BUCKET,
        region: REGION,
      ),
    }),
  )
};
