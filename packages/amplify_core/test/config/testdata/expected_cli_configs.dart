import 'package:amplify_core/amplify_core.dart';

import 'test_values.dart';

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
          'myApi_API_KEY': AWSApiConfig(
            endpointType: EndpointType.graphQL,
            endpoint: GRAPHQL_ENDPOINT,
            region: REGION,
            authorizationType: APIAuthorizationType.apiKey,
            apiKey: API_KEY,
          ),
          'myApi_AWS_IAM': AWSApiConfig(
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
  'Logging': AmplifyConfig(
    logging: LoggingConfig(
      plugins: {
        CloudWatchPluginConfig.pluginKey: CloudWatchPluginConfig(
          enable: false,
          logGroupName: LOG_GROUP_NAME,
          region: REGION,
          flushIntervalInSeconds: LOG_FLUSH_INTERVAL,
          localStoreMaxSizeInMB: LOG_STORE_MB,
          defaultRemoteConfiguration: DefaultRemoteConfiguration(
            endpoint: LOG_REMOTE_ENDPOINT,
            refreshIntervalInSeconds: LOG_FLUSH_INTERVAL,
          ),
          loggingConstraints: LoggingConstraints(
            defaultLogLevel: LOG_DEFAULT_LEVEL,
            categoryLogLevel: {
              LOG_CATEGORY: LOG_DEFAULT_LEVEL,
            },
            userLogLevel: {
              LOG_USER_ID: UserLogLevel(
                defaultLogLevel: LOG_DEFAULT_LEVEL,
                categoryLogLevel: {
                  LOG_CATEGORY: LOG_DEFAULT_LEVEL,
                },
              ),
            },
          ),
        ),
      },
    ),
  ),
  'Push': AmplifyConfig(
    notifications: NotificationsConfig(
      plugins: {
        NotificationsPinpointPluginConfig.pluginKey:
            NotificationsPinpointPluginConfig(
          appId: ANALYTICS_APP_ID,
          region: REGION,
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
