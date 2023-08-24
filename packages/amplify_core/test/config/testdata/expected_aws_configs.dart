import 'package:amplify_core/amplify_config.dart';

import 'test_values.dart';

final expectedAwsConfigs = {
  'Empty': AWSAmplifyConfig(),
  'Analytics': AWSAmplifyConfig(
    analytics: AnalyticsConfig.pinpoint(
      appId: ANALYTICS_APP_ID,
      region: REGION,
      autoFlushEventsInterval:
          const Duration(seconds: ANALYTICS_FLUSH_INTERVAL),
    ),
  ),
  'API': AWSAmplifyConfig(
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
  ),
  'Auth': AWSAmplifyConfig(
    auth: AuthConfig.cognito(
      userPool: AuthUserPoolConfig(
        poolId: USERPOOL_ID,
        region: REGION,
        clientId: APPCLIENT_ID,
        clientSecret: APPCLIENT_SECERT,
        authFlowType: AuthenticationFlowType.userSrpAuth,
        mfaConfiguration: AuthMfaConfiguration(
          enforcementLevel: MfaConfiguration.optional,
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
  ),
  'Logging': AWSAmplifyConfig(
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
              Category.parse(LOG_CATEGORY): LogLevel.parse(LOG_DEFAULT_LEVEL),
            },
            defaultLogLevel: LogLevel.parse(LOG_DEFAULT_LEVEL),
          ),
        },
      ),
    ),
  ),
  'Push': AWSAmplifyConfig(
    notifications: NotificationsConfig(
      push: PushNotificationsConfig.pinpoint(
        appId: ANALYTICS_APP_ID,
        region: REGION,
      ),
    ),
  ),
  'Storage': AWSAmplifyConfig(
    storage: StorageConfig.s3(
      buckets: [
        StorageS3Bucket(
          bucketName: BUCKET,
          region: REGION,
        ),
      ],
    ),
  ),
};
