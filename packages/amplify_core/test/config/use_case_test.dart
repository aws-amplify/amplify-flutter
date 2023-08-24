// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_config.dart';
import 'package:checks/checks.dart';
import 'package:test/test.dart';

import 'testdata/expected_aws_configs.dart';
import 'testdata/expected_cli_configs.dart';
import 'testdata/test_values.dart';

void main() {
  group('AWSAmplifyConfig', () {
    group('Analytics', () {
      final expectedCli = expectedCliConfigs['Analytics']!;
      final expectedAws = expectedAwsConfigs['Analytics']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          analytics: AnalyticsConfig.pinpoint(
            appId: ANALYTICS_APP_ID,
            region: REGION,
            autoFlushEventsInterval:
                const Duration(seconds: ANALYTICS_FLUSH_INTERVAL),
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can add resource', () {
        final config = AWSAmplifyConfig().withAnalytics(
          appId: ANALYTICS_APP_ID,
          region: REGION,
          autoFlushEventsInterval:
              const Duration(seconds: ANALYTICS_FLUSH_INTERVAL),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resource', () {
        const newAppId = 'NEW_APP_ID';
        const newRegion = 'NEW_REGION';
        const newFlushInterval = 100;
        final config = AWSAmplifyConfig.from(expectedCli).updateAnalytics(
          (pinpoint) => pinpoint
            ..appId = newAppId
            ..region = newRegion
            ..autoFlushEventsInterval = newFlushInterval,
        );
        expect(
          config.analytics?.pinpoint,
          predicate<AnalyticsPinpointConfig>((p) {
            return p.appId == newAppId &&
                p.region == newRegion &&
                p.autoFlushEventsInterval == newFlushInterval;
          }),
        );
      });
    });

    group('API', () {
      final expectedCli = expectedCliConfigs['API']!;
      final expectedAws = expectedAwsConfigs['API']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          api: ApiConfig(
            endpoints: [
              ApiEndpointConfig.appSync(
                name: 'myApi_API_KEY',
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const ApiAuthorizationMode.apiKey(API_KEY),
              ),
              ApiEndpointConfig.appSync(
                name: 'myApi_AWS_IAM',
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const ApiAuthorizationMode.iam(),
              ),
              ApiEndpointConfig.apiGateway(
                name: 'REST',
                endpoint: Uri.parse(REST_ENDPOINT),
                region: REGION,
                authMode: const ApiAuthorizationMode.userPools(),
              ),
            ],
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can add resources', () {
        final config = AWSAmplifyConfig()
            .withGraphQlApi(
              'myApi_API_KEY',
              endpoint: Uri.parse(GRAPHQL_ENDPOINT),
              region: REGION,
              authMode: const ApiAuthorizationMode.apiKey(API_KEY),
            )
            .updateGraphQlApi(
              'myApi_AWS_IAM',
              (api) => api
                ..endpoint = Uri.parse(GRAPHQL_ENDPOINT)
                ..region = REGION
                ..authMode = const ApiAuthorizationMode.iam(),
            )
            .withRestApi(
              'REST',
              endpoint: Uri.parse(REST_ENDPOINT),
              region: REGION,
              authMode: const ApiAuthorizationMode.userPools(),
            );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resources', () {
        final config = AWSAmplifyConfig.from(expectedCli)
            .updateGraphQlApi(
              'myApi_API_KEY',
              (api) => api.authMode = const ApiAuthorizationMode.oidc(),
            )
            .updateGraphQlApi(
              'myApi_AWS_IAM',
              (api) => api.authMode = const ApiAuthorizationMode.oidc(),
            )
            .updateRestApi(
              'REST',
              (api) => api.authMode = const ApiAuthorizationMode.oidc(),
            );
        final expectedConfig = AWSAmplifyConfig(
          api: ApiConfig(
            endpoints: [
              ApiEndpointConfig.appSync(
                name: 'myApi_API_KEY',
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const ApiAuthorizationMode.oidc(),
              ),
              ApiEndpointConfig.appSync(
                name: 'myApi_AWS_IAM',
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const ApiAuthorizationMode.oidc(),
              ),
              ApiEndpointConfig.apiGateway(
                name: 'REST',
                endpoint: Uri.parse(REST_ENDPOINT),
                region: REGION,
                authMode: const ApiAuthorizationMode.oidc(),
              ),
            ],
          ),
        );
        expect(config, expectedConfig);
      });
    });

    group('Auth', () {
      final expectedCli = expectedCliConfigs['Auth']!;
      final expectedAws = expectedAwsConfigs['Auth']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          auth: AuthConfig.cognito(
            userPool: AuthUserPoolConfig(
              poolId: USERPOOL_ID,
              region: REGION,
              clientId: APPCLIENT_ID,
              clientSecret: APPCLIENT_SECERT,
              authFlowType: AuthenticationFlowType.userSrpAuth,
              mfaConfiguration: AuthMfaConfiguration(
                enforcementLevel: MfaStatus.optional,
                sms: true,
                totp: true,
              ),
              passwordPolicy: AuthPasswordPolicy(
                requiresLowercase: true,
              ),
              socialProviders: [AuthProvider.google],
              usernameAttributes: [AuthUsernameAttribute.email],
              signUpAttributes: [
                CognitoUserAttributeKey.email,
                CognitoUserAttributeKey.phoneNumber,
              ],
              verificationMechanisms: [
                CognitoUserAttributeKey.email,
                CognitoUserAttributeKey.phoneNumber,
              ],
              hostedUi: AuthHostedUiConfig(
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
              pinpointConfig: AnalyticsPinpointConfig(
                appId: ANALYTICS_APP_ID,
                region: REGION,
              ),
            ),
            identityPool: AuthIdentityPoolConfig(
              poolId: IDPOOL_ID,
              region: REGION,
            ),
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can add resource', () {
        final config = AWSAmplifyConfig()
            .withUserPool(
              poolId: USERPOOL_ID,
              region: REGION,
              clientId: APPCLIENT_ID,
              clientSecret: APPCLIENT_SECERT,
              authFlowType: AuthenticationFlowType.userSrpAuth,
              mfaConfiguration: AuthMfaConfiguration(
                enforcementLevel: MfaStatus.optional,
                sms: true,
                totp: true,
              ),
              passwordPolicy: AuthPasswordPolicy(
                requiresLowercase: true,
              ),
              socialProviders: [AuthProvider.google],
              usernameAttributes: [AuthUsernameAttribute.email],
              signUpAttributes: [
                CognitoUserAttributeKey.email,
                CognitoUserAttributeKey.phoneNumber,
              ],
              verificationMechanisms: [
                CognitoUserAttributeKey.email,
                CognitoUserAttributeKey.phoneNumber,
              ],
              hostedUi: AuthHostedUiConfig(
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
              pinpointConfig: AnalyticsPinpointConfig(
                appId: ANALYTICS_APP_ID,
                region: REGION,
              ),
            )
            .withIdentityPool(
              poolId: IDPOOL_ID,
              region: REGION,
            );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resource', () {
        final newRedirectUri = Uri.parse('https://example.com');
        const newIdentityPoolId = 'NEW_IDENTITY_POOL_ID';
        final config = AWSAmplifyConfig.from(expectedCli)
            .updateUserPool(
              (userPool) => userPool.hostedUi
                ..signInRedirectUris.replace([newRedirectUri])
                ..signInUri = newRedirectUri,
            )
            .updateIdentityPool(
              (identityPool) => identityPool.poolId = newIdentityPoolId,
            );
        check(config.auth?.cognito?.userPool?.hostedUi)
            .isA<AuthHostedUiConfig>()
          ..has((cfg) => cfg.signInRedirectUris, 'signInRedirectUris')
              .deepEquals([newRedirectUri])
          ..has((cfg) => cfg.signInUri, 'signInUri').equals(newRedirectUri);
        check(config.auth?.cognito?.identityPool?.poolId)
            .equals(newIdentityPoolId);
      });
    });

    group('Logging', () {
      final expectedCli = expectedCliConfigs['Logging']!;
      final expectedAws = expectedAwsConfigs['Logging']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          logging: LoggingConfig.cloudWatch(
            enable: false,
            logGroupName: LOG_GROUP_NAME,
            region: REGION,
            defaultRemoteConfiguration: LoggingRemoteConfig(
              endpoint: Uri.parse(LOG_REMOTE_ENDPOINT),
              refreshInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            ),
            flushInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            localStoreMaxSize: const LocalStorageSize.MB(LOG_STORE_MB),
            loggingConstraints: AmplifyLoggingConstraints(
              defaultLogLevel: LogLevel.parse(LOG_DEFAULT_LEVEL),
              categoryLogLevel: {
                Category.parse(LOG_CATEGORY): LogLevel.parse(LOG_DEFAULT_LEVEL),
              },
              userLogLevel: {
                LOG_USER_ID: UserLogLevel(
                  categoryLogLevel: {
                    Category.parse(LOG_CATEGORY):
                        LogLevel.parse(LOG_DEFAULT_LEVEL),
                  },
                  defaultLogLevel: LogLevel.parse(LOG_DEFAULT_LEVEL),
                ),
              },
            ),
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can add resources', () {
        final config = AWSAmplifyConfig().withLogging(
          enable: false,
          logGroupName: LOG_GROUP_NAME,
          region: REGION,
          defaultRemoteConfiguration: LoggingRemoteConfig(
            endpoint: Uri.parse(LOG_REMOTE_ENDPOINT),
            refreshInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
          ),
          flushInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
          localStoreMaxSize: const LocalStorageSize.MB(LOG_STORE_MB),
          loggingConstraints: AmplifyLoggingConstraints(
            defaultLogLevel: LogLevel.verbose,
            categoryLogLevel: {
              Category.auth: LogLevel.verbose,
            },
            userLogLevel: {
              LOG_USER_ID: UserLogLevel(
                categoryLogLevel: {
                  Category.auth: LogLevel.verbose,
                },
                defaultLogLevel: LogLevel.verbose,
              ),
            },
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resources', () {
        const newStorageSize = LocalStorageSize.GB(1);
        final config = AWSAmplifyConfig.from(expectedCli).updateLogging(
          (cloudWatch) => cloudWatch
            ..enable = true
            ..localStoreMaxSize = newStorageSize.inMegabytes
            ..loggingConstraints.userLogLevel['NEW_USER'] = UserLogLevel(
              defaultLogLevel: LogLevel.error,
            ),
        );
        final expectedConfig = AWSAmplifyConfig(
          logging: LoggingConfig.cloudWatch(
            enable: true,
            logGroupName: LOG_GROUP_NAME,
            region: REGION,
            defaultRemoteConfiguration: LoggingRemoteConfig(
              endpoint: Uri.parse(LOG_REMOTE_ENDPOINT),
              refreshInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            ),
            flushInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            localStoreMaxSize: newStorageSize,
            loggingConstraints: AmplifyLoggingConstraints(
              defaultLogLevel: LogLevel.verbose,
              categoryLogLevel: {
                Category.auth: LogLevel.verbose,
              },
              userLogLevel: {
                LOG_USER_ID: UserLogLevel(
                  categoryLogLevel: {
                    Category.auth: LogLevel.verbose,
                  },
                  defaultLogLevel: LogLevel.verbose,
                ),
                'NEW_USER': UserLogLevel(
                  defaultLogLevel: LogLevel.error,
                ),
              },
            ),
          ),
        );
        expect(config, expectedConfig);
      });
    });

    group('Push', () {
      final expectedCli = expectedCliConfigs['Push']!;
      final expectedAws = expectedAwsConfigs['Push']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          notifications: NotificationsConfig(
            push: PushNotificationsConfig.pinpoint(
              appId: ANALYTICS_APP_ID,
              region: REGION,
            ),
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can add resource', () {
        final config = AWSAmplifyConfig().withPushNotifications(
          appId: ANALYTICS_APP_ID,
          region: REGION,
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resource', () {
        const newAppId = 'NEW_APP_ID';
        const newRegion = 'NEW_REGION';
        final config =
            AWSAmplifyConfig.from(expectedCli).updatePushNotifications(
          (pinpoint) => pinpoint
            ..appId = newAppId
            ..region = newRegion,
        );
        expect(
          config.notifications?.push?.pinpoint,
          predicate<PushNotificationsPinpointConfig>((p) {
            return p.appId == newAppId && p.region == newRegion;
          }),
        );
      });
    });

    group('Storage', () {
      final expectedCli = expectedCliConfigs['Storage']!;
      final expectedAws = expectedAwsConfigs['Storage']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          storage: StorageConfig.s3(
            buckets: [
              StorageS3Bucket(
                bucketName: BUCKET,
                region: REGION,
              ),
            ],
          ),
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can add resources', () {
        final config = AWSAmplifyConfig().withStorageBucket(
          bucketName: BUCKET,
          region: REGION,
        );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resources', () {
        const newBucket = 'NEW_BUCKET';
        const newRegion = 'NEW_REGION';
        final config = AWSAmplifyConfig.from(expectedCli)
            .updateStorageBucket(
              BUCKET,
              (bucket) => bucket..region = newRegion,
            )
            // add a new bucket
            .updateStorageBucket(
              newBucket,
              (bucket) => bucket
                ..bucketName = newBucket
                ..region = newRegion,
            );
        final expectedConfig = AWSAmplifyConfig(
          storage: StorageConfig.s3(
            buckets: [
              StorageS3Bucket(
                bucketName: BUCKET,
                region: newRegion,
              ),
              StorageS3Bucket(
                bucketName: newBucket,
                region: newRegion,
              ),
            ],
          ),
        );
        expect(config, expectedConfig);
      });
    });
  });
}
