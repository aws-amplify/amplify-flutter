import 'dart:convert';

import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_flutter/src/config/auth/cognito/appsync.dart';
import 'package:amplify_flutter/src/config/auth/cognito/pinpoint_analytics.dart';
import 'package:amplify_flutter/src/config/auth/cognito/pinpoint_targeting.dart';
import 'package:amplify_flutter/src/config/config_map.dart';
import 'package:test/test.dart';

import 'testdata/cli_generated.dart';
import 'testdata/test_values.dart';

void main() {
  group('Config', () {
    for (var testData in allTests) {
      final name = testData.name;
      test(name, () {
        final json = jsonDecode(testData.config) as Map;
        final parsed = AmplifyConfig.fromJson(json.cast());
        expect(parsed, equals(expected[name]!));
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
        AppSyncPluginConfig.pluginKey: AppSyncPluginConfig({
          'API_KEY': AppSyncApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.apiKey,
            apiKey: API_KEY,
          ),
          'AWS_IAM': AppSyncApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.iam,
          ),
          'REST': AppSyncApiConfig(
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
                scopes: {
                  'phone',
                  'email',
                  'openid',
                  'profile',
                  'aws.cognito.signin.user.admin',
                },
                signInRedirectUri: OAUTH_SIGNIN,
                signOutRedirectUri: OAUTH_SIGNOUT,
                webDomain: OAUTH_DOMAIN,
              ),
              authenticationFlowType: AuthenticationFlowType.userSrpAuth,
            ),
            'DefaultCustomAuth': CognitoAuthConfig(
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
                scopes: {'openid', 'email'},
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
          credentialsProvider: CredentialsProvider({
            'Default': CognitoIdentityCredentialsProvider(
              poolId: IDPOOL_ID,
              region: REGION,
            ),
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
