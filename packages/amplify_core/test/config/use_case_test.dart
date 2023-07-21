import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart' hide AWSApiConfig;
import 'package:checks/checks.dart';
import 'package:test/test.dart';

import 'amplify_config_test.dart';
import 'testdata/test_values.dart';

void main() {
  group('AWSAmplifyConfig', () {
    group('Analytics', () {
      final expectedCli = expectedCliConfigs['Analytics']!;
      final expectedAws = expectedAwsConfigs['Analytics']!;

      test('can create new resource', () {
        final config = AWSAmplifyConfig(
          analytics: AWSAnalyticsConfig.pinpoint(
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
          predicate<AWSAnalyticsPinpointConfig>((p) {
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
          api: AWSApiConfig(
            endpoints: {
              'myApi_API_KEY': AWSApiEndpointConfig.appSync(
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const AWSApiAuthorizationMode.apiKey(API_KEY),
              ),
              'myApi_AWS_IAM': AWSApiEndpointConfig.appSync(
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const AWSApiAuthorizationMode.iam(),
              ),
              'REST': AWSApiEndpointConfig.apiGateway(
                endpoint: Uri.parse(REST_ENDPOINT),
                region: REGION,
                authMode: const AWSApiAuthorizationMode.userPools(),
              ),
            },
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
              authMode: const AWSApiAuthorizationMode.apiKey(API_KEY),
            )
            .updateGraphQlApi(
              'myApi_AWS_IAM',
              (api) => api
                ..endpoint = Uri.parse(GRAPHQL_ENDPOINT)
                ..region = REGION
                ..authMode = const AWSApiAuthorizationMode.iam(),
            )
            .withRestApi(
              'REST',
              endpoint: Uri.parse(REST_ENDPOINT),
              region: REGION,
              authMode: const AWSApiAuthorizationMode.userPools(),
            );
        expect(config, expectedAws);
        expect(config.toCli(), expectedCli);
      });

      test('can update resources', () {
        final config = AWSAmplifyConfig.from(expectedCli)
            .updateGraphQlApi(
              'myApi_API_KEY',
              (api) => api.authMode = const AWSApiAuthorizationMode.oidc(),
            )
            .updateGraphQlApi(
              'myApi_AWS_IAM',
              (api) => api.authMode = const AWSApiAuthorizationMode.oidc(),
            )
            .updateRestApi(
              'REST',
              (api) => api.authMode = const AWSApiAuthorizationMode.oidc(),
            );
        final expectedConfig = AWSAmplifyConfig(
          api: AWSApiConfig(
            endpoints: {
              'myApi_API_KEY': AWSApiEndpointConfig.appSync(
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const AWSApiAuthorizationMode.oidc(),
              ),
              'myApi_AWS_IAM': AWSApiEndpointConfig.appSync(
                endpoint: Uri.parse(GRAPHQL_ENDPOINT),
                region: REGION,
                authMode: const AWSApiAuthorizationMode.oidc(),
              ),
              'REST': AWSApiEndpointConfig.apiGateway(
                endpoint: Uri.parse(REST_ENDPOINT),
                region: REGION,
                authMode: const AWSApiAuthorizationMode.oidc(),
              ),
            },
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
              socialProviders: [AuthProvider.google],
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
              mfaConfiguration: AWSAuthMfaConfiguration(
                status: MfaStatus.optional,
                enabledTypes: [MfaType.sms, MfaType.totp],
              ),
              passwordProtectionSettings: AWSAuthPasswordProtectionSettings(
                passwordPolicyCharacters: [
                  PasswordPolicyCharacters.requiresLowercase,
                ],
              ),
              socialProviders: [AuthProvider.google],
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
            .isA<AWSAuthHostedUiConfig>()
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
          logging: AWSLoggingConfig.cloudWatch(
            enable: false,
            logGroupName: LOG_GROUP_NAME,
            region: REGION,
            defaultRemoteConfiguration: AWSLoggingRemoteConfig(
              endpoint: Uri.parse(LOG_REMOTE_ENDPOINT),
              refreshInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            ),
            flushInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            localStoreMaxSize: const LocalStorageSize.MB(LOG_STORE_MB),
            loggingConstraints: AWSAmplifyLoggingConstraints(
              defaultLogLevel: LogLevel.parse(LOG_DEFAULT_LEVEL),
              categoryLogLevel: {
                Category.parse(LOG_CATEGORY): LogLevel.parse(LOG_DEFAULT_LEVEL),
              },
              userLogLevel: {
                LOG_USER_ID: AWSUserLogLevel(
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
          defaultRemoteConfiguration: AWSLoggingRemoteConfig(
            endpoint: Uri.parse(LOG_REMOTE_ENDPOINT),
            refreshInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
          ),
          flushInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
          localStoreMaxSize: const LocalStorageSize.MB(LOG_STORE_MB),
          loggingConstraints: AWSAmplifyLoggingConstraints(
            defaultLogLevel: LogLevel.verbose,
            categoryLogLevel: {
              Category.auth: LogLevel.verbose,
            },
            userLogLevel: {
              LOG_USER_ID: AWSUserLogLevel(
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
            ..loggingConstraints.userLogLevel['NEW_USER'] = AWSUserLogLevel(
              defaultLogLevel: LogLevel.error,
            ),
        );
        final expectedConfig = AWSAmplifyConfig(
          logging: AWSLoggingConfig.cloudWatch(
            enable: true,
            logGroupName: LOG_GROUP_NAME,
            region: REGION,
            defaultRemoteConfiguration: AWSLoggingRemoteConfig(
              endpoint: Uri.parse(LOG_REMOTE_ENDPOINT),
              refreshInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            ),
            flushInterval: const Duration(seconds: LOG_FLUSH_INTERVAL),
            localStoreMaxSize: newStorageSize,
            loggingConstraints: AWSAmplifyLoggingConstraints(
              defaultLogLevel: LogLevel.verbose,
              categoryLogLevel: {
                Category.auth: LogLevel.verbose,
              },
              userLogLevel: {
                LOG_USER_ID: AWSUserLogLevel(
                  categoryLogLevel: {
                    Category.auth: LogLevel.verbose,
                  },
                  defaultLogLevel: LogLevel.verbose,
                ),
                'NEW_USER': AWSUserLogLevel(
                  defaultLogLevel: LogLevel.error,
                )
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
          notifications: AWSNotificationsConfig(
            push: AWSPushNotificationsConfig.pinpoint(
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
          predicate<AWSPushNotificationsPinpointConfig>((p) {
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
          storage: AWSStorageConfig.s3(
            buckets: {
              BUCKET: AWSStorageS3Bucket(
                bucketName: BUCKET,
                region: REGION,
              ),
            },
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
          storage: AWSStorageConfig.s3(
            buckets: {
              BUCKET: AWSStorageS3Bucket(
                bucketName: BUCKET,
                region: newRegion,
              ),
              newBucket: AWSStorageS3Bucket(
                bucketName: newBucket,
                region: newRegion,
              ),
            },
          ),
        );
        expect(config, expectedConfig);
      });
    });
  });
}
