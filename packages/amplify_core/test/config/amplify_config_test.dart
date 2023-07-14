// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart' hide AWSApiConfig;
import 'package:amplify_core/amplify_core.dart' as core;
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

          final expectedCliConfig = expectedCliConfigs[name]!;
          final expectedAwsConfig = expectedAwsConfigs[name]!;

          group(name, () {
            test('AmplifyConfig.fromJson', () {
              final cliConfig = AmplifyConfig.fromJson(json);
              expect(cliConfig, equals(expectedCliConfig));
              expect(cliConfig.toJson(), equals(json));
            });

            test('AmplifyConfig.toJson', () {
              final cliConfig = AmplifyConfig.fromJson(json);
              expect(cliConfig.toJson(), equals(json));
            });

            test('AWSAmplifyConfig.from', () {
              final cliConfig = AmplifyConfig.fromJson(json);
              final awsConfig = AWSAmplifyConfig.from(cliConfig);
              expect(awsConfig, equals(expectedAwsConfig));
            });

            test('AWSAmplifyConfig.toJson', () {
              final awsConfig = AWSAmplifyConfig.parse(jsonEncode(json));
              expect(awsConfig.toJson(), equals(expectedAwsConfig.toJson()));
            });

            test('AWSAmplifyConfig.toCli', () {
              final awsConfig = AWSAmplifyConfig.parse(jsonEncode(json));
              expect(awsConfig.toCli(), equals(expectedCliConfig));
            });
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

const expectedCliConfigs = {
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
          'myApi_API_KEY': core.AWSApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.apiKey,
            apiKey: API_KEY,
          ),
          'myApi_AWS_IAM': core.AWSApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.iam,
          ),
          'REST': core.AWSApiConfig(
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

final expectedAwsConfigs = {
  'Empty': AWSAmplifyConfig(),
  'Analytics': AWSAmplifyConfig(
    analytics: AWSAnalyticsConfig.pinpoint(
      appId: ANALYTICS_APP_ID,
      region: REGION,
      autoFlushEventsInterval: ANALYTICS_FLUSH_INTERVAL,
    ),
  ),
  'API': AWSAmplifyConfig(
    api: AWSApiConfig(
      apis: {
        'myApi': AWSApiEndpointConfig.appSync(
          endpoint: Uri.parse(GRAPHQL_ENDPOINT),
          region: REGION,
          authMode: const AWSApiAuthorizationMode.apiKey(API_KEY),
          additionalAuthModes: [
            const AWSApiAuthorizationMode.iam(),
          ],
        ),
        'REST': AWSApiEndpointConfig.apiGateway(
          endpoint: Uri.parse(REST_ENDPOINT),
          region: REGION,
          authMode: const AWSApiAuthorizationMode.userPools(),
        ),
      },
    ),
  ),
  'Auth': AWSAmplifyConfig(
    auth: AWSAuthConfig.cognito(
      userPool: AWSAuthUserPoolConfig(
        poolId: USERPOOL_ID,
        region: REGION,
        clientId: APPCLIENT_ID,
        clientSecret: APPCLIENT_SECERT,
        authFlowType: AuthenticationFlowType.userSrpAuth,
        mfaConfiguration: AWSAuthMfaConfiguration(
          status: MfaConfiguration.optional,
          enabledTypes: [MfaType.sms, MfaType.totp],
        ),
        passwordProtectionSettings: AWSAuthPasswordProtectionSettings(
          passwordPolicyCharacters: [
            PasswordPolicyCharacters.requiresLowercase,
          ],
        ),
        socialProviders: const [AWSAuthProvider.google()],
        usernameAttributes: [AWSAuthUsernameAttribute.email],
        signUpAttributes: [
          CognitoUserAttributeKey.email,
          CognitoUserAttributeKey.phoneNumber,
        ],
        verificationMechanisms: [
          CognitoUserAttributeKey.email,
          CognitoUserAttributeKey.phoneNumber,
        ],
        hostedUi: AWSAuthHostedUiConfig(
          clientId: APPCLIENT_ID,
          clientSecret: APPCLIENT_SECERT,
          scopes: [
            'phone',
            'email',
            'openid',
            'profile',
            'aws.cognito.signin.user.admin',
          ],
          signInRedirectUris: [Uri.parse(OAUTH_SIGNIN)],
          signOutRedirectUris: [Uri.parse(OAUTH_SIGNOUT)],
          domainName: OAUTH_DOMAIN,
        ),
        pinpointConfig: AWSAnalyticsPinpointConfig(
          appId: ANALYTICS_APP_ID,
          region: REGION,
        ),
      ),
      identityPool: AWSAuthIdentityPoolConfig(
        poolId: IDPOOL_ID,
        region: REGION,
      ),
    ),
  ),
  'Storage': AWSAmplifyConfig(
    storage: AWSStorageConfig.s3(
      buckets: {
        BUCKET: AWSStorageS3Bucket(
          bucketName: BUCKET,
          region: REGION,
        ),
      },
    ),
  ),
};
