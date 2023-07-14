// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:amplify_core/amplify_config.dart' hide AWSApiConfig;
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import 'testdata/cli_generated.dart';
import 'testdata/test_values.dart';

void main() {
  group('Config', () {
    for (final testSuite in allTests) {
      group('Generated v${testSuite.version}', () {
        for (final testData in testSuite.tests) {
          final name = testData.name;
          final json = jsonDecode(testData.config) as Map<String, dynamic>;
          addUserConfig(json);

          test('AmplifyConfig ($name)', () {
            final parsed = AmplifyConfig.fromJson(json);
            final expectedConfig = expected[name]!;
            expect(parsed, equals(expectedConfig));
            expect(expectedConfig.toJson(), equals(json));
          });

          test('AWSAmplifyConfig ($name)', () {
            final parsed = AmplifyConfig.fromJson(json);
            final awsConfig = AWSAmplifyConfig.from(parsed);
            final cliConfig = awsConfig.toCli();
            final expectedConfig = expected[name]!;
            expect(cliConfig, equals(parsed));
            expect(cliConfig, equals(expectedConfig));
          });
        }
      });
    }
  });
}

// Add values not supported by the CLI but added by the user after the fact.
void addUserConfig(Map<String, dynamic> json) {
  json['analytics']?['plugins']?['awsPinpointAnalyticsPlugin']
      ?['autoFlushEventsInterval'] = ANALYTICS_FLUSH_INTERVAL;
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
          autoFlushEventsInterval: ANALYTICS_FLUSH_INTERVAL,
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
          auth: AWSConfigMap({
            'Default': CognitoAuthConfig(
              oAuth: CognitoOAuthConfig(
                appClientId: APPCLIENT_ID,
                appClientSecret: APPCLIENT_SECERT,
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
              mfaConfiguration: MfaConfiguration.optional,
              mfaTypes: [MfaType.sms, MfaType.totp],
              passwordProtectionSettings: PasswordProtectionSettings(
                passwordPolicyCharacters: [
                  PasswordPolicyCharacters.requiresLowercase,
                ],
              ),
              socialProviders: [SocialProvider.google],
              usernameAttributes: [CognitoUserAttributeKey.email],
              signupAttributes: [
                CognitoUserAttributeKey.email,
                CognitoUserAttributeKey.phoneNumber,
              ],
              verificationMechanisms: [
                CognitoUserAttributeKey.email,
                CognitoUserAttributeKey.phoneNumber,
              ],
            ),
          }),
          cognitoUserPool: AWSConfigMap({
            'Default': CognitoUserPoolConfig(
              poolId: USERPOOL_ID,
              appClientId: APPCLIENT_ID,
              appClientSecret: APPCLIENT_SECERT,
              region: REGION,
              hostedUI: CognitoOAuthConfig(
                appClientId: APPCLIENT_ID,
                appClientSecret: APPCLIENT_SECERT,
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
        ),
      },
    ),
  ),
  'Storage': AmplifyConfig(
    storage: StorageConfig(
      plugins: {
        S3PluginConfig.pluginKey: S3PluginConfig(
          bucket: BUCKET,
          region: REGION,
        ),
      },
    ),
  ),
};
