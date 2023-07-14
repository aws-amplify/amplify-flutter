// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_core/amplify_config.dart';
import 'package:amplify_core/amplify_core.dart' hide AWSApiConfig, UserLogLevel;
import 'package:amplify_core/amplify_core.dart' as core;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/common/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';

part 'aws_amplify_config.g.dart';

abstract class AWSAmplifyConfig
    with AWSEquatable<AWSAmplifyConfig>, AWSDebuggable, AWSLoggerMixin
    implements Built<AWSAmplifyConfig, AWSAmplifyConfigBuilder> {
  factory AWSAmplifyConfig({
    AWSAnalyticsConfig? analytics,
    AWSApiConfig? api,
    AWSAuthConfig? auth,
    AWSLoggingConfig? logging,
    AWSNotificationsConfig? notifications,
    AWSStorageConfig? storage,
  }) {
    return _$AWSAmplifyConfig._(
      analytics: analytics,
      api: api,
      auth: auth,
      logging: logging,
      notifications: notifications,
      storage: storage,
    );
  }

  /// Builds an [AWSAmplifyConfig] using an [AWSAmplifyConfigBuilder].
  factory AWSAmplifyConfig.build([
    void Function(AWSAmplifyConfigBuilder) updates,
  ]) = _$AWSAmplifyConfig;

  /// Creates an [AWSAmplifyConfig] from an [core.AmplifyConfig].
  factory AWSAmplifyConfig.from(AmplifyConfig config) {
    return AWSAmplifyConfig.build((b) {
      if (config.analytics?.awsPlugin case final analyticsConfig?) {
        b.analytics = AWSAnalyticsConfig.pinpoint(
          appId: analyticsConfig.pinpointAnalytics.appId,
          region: analyticsConfig.pinpointAnalytics.region,
          autoFlushEventsInterval:
              analyticsConfig.autoFlushEventsInterval.inSeconds,
        );
      }
      if (config.api?.awsPlugin case final apiConfig?) {
        final endpoints = Map.of(apiConfig.endpoints);
        while (endpoints.isNotEmpty) {
          var apiName = endpoints.keys.first;
          final cliEndpoint = endpoints.remove(apiName)!;
          final defaultAuthMode = cliEndpoint.defaultAuthMode;
          final endpoint = Uri.parse(cliEndpoint.endpoint);
          final config =
              switch ((cliEndpoint.endpointType, cliEndpoint.region)) {
            (EndpointType.graphQL, final region?) => () {
                // Fix API name if it follows multi-auth naming of `<API_NAME>_<AUTH_MODE>`
                for (final authType in APIAuthorizationType.values) {
                  final suffix = '_${authType.rawValue}';
                  if (apiName.endsWith(suffix)) {
                    apiName = apiName.replaceAll(RegExp('$suffix\$'), '');
                    break;
                  }
                }
                // Search for additional authorization modes.
                final additionalAuthModes = {
                  // When an API key is specified but is not the primary auth mode.
                  if (cliEndpoint.apiKey case final apiKey?
                      when cliEndpoint.authorizationType !=
                          APIAuthorizationType.apiKey)
                    AWSApiAuthorizationMode.apiKey(apiKey),
                };
                // Check for other APIs which have the same endpoint but different auth modes.
                for (final authType in APIAuthorizationType.values) {
                  final secondaryEndpoint = endpoints.entries.firstWhereOrNull(
                    (api) =>
                        api.value.endpoint == cliEndpoint.endpoint &&
                        api.value.endpointType == cliEndpoint.endpointType &&
                        api.value.region == cliEndpoint.region &&
                        api.value.authorizationType == authType,
                  );
                  if (secondaryEndpoint != null) {
                    additionalAuthModes
                        .add(secondaryEndpoint.value.defaultAuthMode);
                    endpoints.remove(secondaryEndpoint.key);
                  }
                }
                return AWSApiEndpointConfig.appSync(
                  endpoint: endpoint,
                  region: region,
                  authMode: defaultAuthMode,
                  additionalAuthModes: additionalAuthModes.toList(),
                );
              }(),
            (EndpointType.rest, final region?) =>
              AWSApiEndpointConfig.apiGateway(
                endpoint: endpoint,
                region: region,
                authMode: defaultAuthMode,
              ),
            (EndpointType.rest, null) =>
              AWSApiEndpointConfig.rest(endpoint: endpoint),
            _ => throw ArgumentError(
                'Invalid endpoint configuration: $cliEndpoint',
              ),
          };
          b.api.apis[apiName] = config;
        }
      }
      if (config.auth?.awsPlugin case final authConfig?) {
        b.auth = AWSAuthConfigCognito$(
          AWSAuthCognitoConfig.build((b) {
            if (authConfig.cognitoUserPool?.default$
                case final userPoolConfig?) {
              b.userPool
                ..poolId = userPoolConfig.poolId
                ..region = userPoolConfig.region
                ..clientId = userPoolConfig.appClientId
                ..clientSecret = userPoolConfig.appClientSecret
                ..endpoint = switch (userPoolConfig.endpoint) {
                  final endpoint? => Uri.parse(endpoint),
                  _ => null,
                };

              if (authConfig.auth?.default$ case final cliAuthConfig?) {
                b.userPool
                  ..authFlowType = cliAuthConfig.authenticationFlowType
                  ..mfaConfiguration = switch ((
                    cliAuthConfig.mfaConfiguration,
                    cliAuthConfig.mfaTypes
                  )) {
                    (final mfaConfig?, final mfaTypes?) =>
                      AWSAuthMfaConfigurationBuilder()
                        ..enabledTypes.addAll(mfaTypes)
                        ..status = mfaConfig,
                    _ => null,
                  }
                  ..passwordProtectionSettings =
                      cliAuthConfig.passwordProtectionSettings?.let(
                    (passwordSettings) =>
                        AWSAuthPasswordProtectionSettingsBuilder()
                          ..passwordPolicyMinLength =
                              passwordSettings.passwordPolicyMinLength
                          ..passwordPolicyCharacters.addAll(
                            passwordSettings.passwordPolicyCharacters,
                          ),
                  );

                cliAuthConfig.socialProviders?.let((socialProviders) {
                  b.userPool.socialProviders.addAll([
                    for (final socialProvider in socialProviders)
                      switch (socialProvider) {
                        SocialProvider.amazon => const AWSAuthProvider.amazon(),
                        SocialProvider.apple => const AWSAuthProvider.apple(),
                        SocialProvider.facebook =>
                          const AWSAuthProvider.facebook(),
                        SocialProvider.google => const AWSAuthProvider.google(),
                      }
                  ]);
                });

                cliAuthConfig.usernameAttributes?.let((usernameAttributes) {
                  b.userPool.usernameAttributes.addAll([
                    for (final usernameAttribute in usernameAttributes)
                      switch (usernameAttribute) {
                        CognitoUserAttributeKey.email =>
                          AWSAuthUsernameAttribute.email,
                        CognitoUserAttributeKey.phoneNumber =>
                          AWSAuthUsernameAttribute.phoneNumber,
                        _ => throw ArgumentError(
                            'Invalid username attribute: $usernameAttribute',
                          ),
                      }
                  ]);
                });

                cliAuthConfig.verificationMechanisms
                    ?.let(b.userPool.verificationMechanisms.addAll);
                cliAuthConfig.signupAttributes
                    ?.let(b.userPool.signUpAttributes.addAll);
              }

              if (userPoolConfig.hostedUI case final hostedUiConfig?) {
                b.userPool.hostedUi
                  ..clientId = hostedUiConfig.appClientId
                  ..clientSecret = hostedUiConfig.appClientSecret
                  ..domainName = hostedUiConfig.webDomain
                  ..signInRedirectUris.addAll(hostedUiConfig.signInRedirectUris)
                  ..signOutRedirectUris
                      .addAll(hostedUiConfig.signOutRedirectUris)
                  ..scopes.addAll(hostedUiConfig.scopes)
                  ..signInUri = hostedUiConfig.signInUri?.let(
                    (uri) => Uri.parse(uri).replace(
                      queryParameters: hostedUiConfig.signInUriQueryParameters,
                    ),
                  )
                  ..signOutUri = hostedUiConfig.signOutUri?.let(
                    (uri) => Uri.parse(uri).replace(
                      queryParameters: hostedUiConfig.signOutUriQueryParameters,
                    ),
                  )
                  ..tokenUri = hostedUiConfig.tokenUri?.let(
                    (uri) => Uri.parse(uri).replace(
                      queryParameters: hostedUiConfig.tokenUriQueryParameters,
                    ),
                  );
              }

              authConfig.pinpointAnalytics?.default$?.let(
                (pinpointConfig) => b.userPool.pinpointConfig
                  ..appId = pinpointConfig.appId
                  ..region = pinpointConfig.region,
              );
            }
            if (authConfig.credentialsProvider?.default$
                case final identityPoolConfig?) {
              b.identityPool
                ..poolId = identityPoolConfig.poolId
                ..region = identityPoolConfig.region;
            }
          }),
        );
      }
      if (config.logging?.awsPlugin case final loggingConfig?) {
        b.logging = AWSLoggingConfig.cloudWatch(
          enable: loggingConfig.enable,
          logGroupName: loggingConfig.logGroupName,
          region: loggingConfig.region,
          localStoreMaxSize: loggingConfig.localStoreMaxSizeInMB,
          flushInterval: loggingConfig.flushIntervalInSeconds,
          defaultRemoteConfiguration:
              loggingConfig.defaultRemoteConfiguration?.let(
            (remoteConfig) => LoggingRemoteConfiguration(
              endpoint: Uri.parse(remoteConfig.endpoint),
              refreshInterval: remoteConfig.refreshIntervalInSeconds,
            ),
          ),
          loggingConstraints: loggingConfig.loggingConstraints?.let(
            (constraints) => AmplifyLoggingConstraints(
              defaultLogLevel: LogLevel.parse(constraints.defaultLogLevel),
              categoryLogLevel: constraints.categoryLogLevel.map(
                (category, logLevel) => MapEntry(
                  Category.parse(category),
                  LogLevel.parse(logLevel),
                ),
              ),
              userLogLevel: constraints.userLogLevel.map(
                (userId, userLogLevel) => MapEntry(
                  userId,
                  UserLogLevel(
                    defaultLogLevel:
                        LogLevel.parse(userLogLevel.defaultLogLevel),
                    categoryLogLevel: userLogLevel.categoryLogLevel.map(
                      (category, logLevel) => MapEntry(
                        Category.parse(category),
                        LogLevel.parse(logLevel),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
      if (config.notifications?.awsPlugin case final notificationsConfig?) {
        b.notifications = AWSNotificationsConfig.push(
          AWSPushNotificationsConfig.pinpoint(
            appId: notificationsConfig.appId,
            region: notificationsConfig.region,
          ),
        );
      }
      if (config.storage?.awsPlugin case final storageConfig?) {
        b.storage = AWSStorageConfig.s3(
          buckets: {
            storageConfig.bucket: AWSStorageS3Bucket(
              bucketName: storageConfig.bucket,
              region: storageConfig.region,
              defaultAccessLevel: storageConfig.defaultAccessLevel,
            ),
          },
        );
      }
    });
  }

  /// Parses an Amplify configuration from a generated `amplifyconfiguration.dart`
  /// file.
  factory AWSAmplifyConfig.parse(String amplifyconfig) {
    final config = AmplifyConfig.fromJson(
      jsonDecode(amplifyconfig) as Map<String, dynamic>,
    );
    return AWSAmplifyConfig.from(config);
  }

  const AWSAmplifyConfig._();

  static Serializer<AWSAmplifyConfig> get serializer =>
      _$aWSAmplifyConfigSerializer;

  AWSAnalyticsConfig? get analytics;
  AWSApiConfig? get api;
  AWSAuthConfig? get auth;
  AWSLoggingConfig? get logging;
  AWSNotificationsConfig? get notifications;
  AWSStorageConfig? get storage;

  /// Adds a user pool to the configuration or replaces the existing one.
  AWSAmplifyConfig withUserPool({
    required String poolId,
    required String region,
    required String clientId,
    String? clientSecret,
    Uri? endpoint,
    AuthenticationFlowType? authFlowType,
    Iterable<AWSAuthProvider>? socialProviders,
    Iterable<AWSAuthUsernameAttribute>? usernameAttributes,
    Iterable<CognitoUserAttributeKey>? signUpAttributes,
    Iterable<CognitoUserAttributeKey>? verificationMechanisms,
    AWSAnalyticsPinpointConfig? pinpointConfig,
    AWSAuthHostedUiConfig? hostedUi,
  }) =>
      rebuild((b) {
        final userPoolConfig = AWSAuthUserPoolConfig(
          poolId: poolId,
          region: region,
          clientId: clientId,
          clientSecret: clientSecret,
          endpoint: endpoint,
          authFlowType: authFlowType,
          socialProviders: socialProviders?.toList(),
          usernameAttributes: usernameAttributes?.toSet(),
          signUpAttributes: signUpAttributes?.toSet(),
          verificationMechanisms: verificationMechanisms?.toSet(),
          pinpointConfig: pinpointConfig,
          hostedUi: hostedUi,
        );
        switch (b.auth?.value) {
          case AWSAuthCognitoConfig(:final identityPool):
            b.auth = AWSAuthConfig.cognito(
              userPool: userPoolConfig,
              identityPool: identityPool,
            );
          case null:
            b.auth = AWSAuthConfig.cognito(
              userPool: userPoolConfig,
            );
          case final existing:
            throw ArgumentError(
              'Config already contains a non-Cognito Auth config: $existing',
            );
        }
      });

  /// Adds a user pool to the configuration or updates the existing one.
  AWSAmplifyConfig updateUserPool(
    void Function(AWSAuthUserPoolConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        switch (b.auth?.value) {
          case AWSAuthCognitoConfig(:final userPool, :final identityPool):
            b.auth = AWSAuthConfig.cognito(
              userPool: userPool?.rebuild(builder) ??
                  AWSAuthUserPoolConfig.build(builder),
              identityPool: identityPool,
            );
          case null:
            b.auth = AWSAuthConfig.cognito(
              userPool: AWSAuthUserPoolConfig.build(builder),
            );
          case final existing:
            throw ArgumentError(
              'Config already contains a non-Cognito Auth config: $existing',
            );
        }
      });

  /// Adds an identity pool to the configuration or replaces the existing one.
  AWSAmplifyConfig withIdentityPool({
    required String poolId,
    required String region,
  }) =>
      rebuild((b) {
        final identityPoolConfig = AWSAuthIdentityPoolConfig(
          poolId: poolId,
          region: region,
        );
        switch (b.auth?.value) {
          case AWSAuthCognitoConfig(:final userPool):
            b.auth = AWSAuthConfig.cognito(
              userPool: userPool,
              identityPool: identityPoolConfig,
            );
          case null:
            b.auth = AWSAuthConfig.cognito(
              identityPool: identityPoolConfig,
            );
          case final existing:
            throw ArgumentError(
              'Config already contains a non-Cognito Auth config: $existing',
            );
        }
      });

  /// Adds an identity pool to the configuration or updates the existing one.
  AWSAmplifyConfig updateIdentityPool(
    void Function(AWSAuthIdentityPoolConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        switch (b.auth?.value) {
          case AWSAuthCognitoConfig(:final userPool, :final identityPool):
            b.auth = AWSAuthConfig.cognito(
              userPool: userPool,
              identityPool: identityPool?.rebuild(builder) ??
                  AWSAuthIdentityPoolConfig.build(builder),
            );
          case null:
            b.auth = AWSAuthConfig.cognito(
              identityPool: AWSAuthIdentityPoolConfig.build(builder),
            );
          case final existing:
            throw ArgumentError(
              'Config already contains a non-Cognito Auth config: $existing',
            );
        }
      });

  /// Adds a GraphQL API to the configuration or replaces the existing one.
  AWSAmplifyConfig withGraphQlApi(
    String apiName, {
    required Uri endpoint,
    required String region,
    required AWSApiAuthorizationMode authMode,
    List<AWSApiAuthorizationMode> additionalAuthModes = const [],
  }) =>
      rebuild((b) {
        final endpointConfig = AWSApiEndpointConfig.appSync(
          endpoint: endpoint,
          region: region,
          authMode: authMode,
        );
        b.api.apis[apiName] = endpointConfig;
      });

  /// Adds a GraphQL API to the configuration or updates the existing one.
  AWSAmplifyConfig updateGraphQlApi(
    String apiName,
    void Function(AWSAppSyncEndpointConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        b.api.apis.updateValue(apiName, (endpoint) {
          switch (endpoint.value) {
            case AWSApiEndpointConfigAppSync$(:final appSync):
              return AWSApiEndpointConfigAppSync$(
                appSync.rebuild(builder),
              );
            case final nonAppSyncEndpoint:
              throw ArgumentError(
                'A non-AppSync endpoint is already registered for $apiName: $nonAppSyncEndpoint',
              );
          }
        });
      });

  /// Adds a REST API to the configuration or replaces the existing one.
  AWSAmplifyConfig withRestApi(
    String apiName, {
    required Uri endpoint,
    required String region,
    required AWSApiAuthorizationMode authMode,
  }) =>
      rebuild((b) {
        final endpointConfig = AWSApiEndpointConfig.apiGateway(
          endpoint: endpoint,
          region: region,
          authMode: authMode,
        );
        b.api.apis[apiName] = endpointConfig;
      });

  /// Adds a REST API to the configuration or updates the existing one.
  AWSAmplifyConfig updateRestApi(
    String apiName,
    void Function(AWSApiGatewayEndpointConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        b.api.apis.updateValue(apiName, (endpoint) {
          switch (endpoint.value) {
            case AWSApiEndpointConfigApiGateway$(:final apiGateway):
              return AWSApiEndpointConfigApiGateway$(
                apiGateway.rebuild(builder),
              );
            case final nonApiGatewayEndpoint:
              throw ArgumentError(
                'A non-API Gateway endpoint is already registered for $apiName: $nonApiGatewayEndpoint',
              );
          }
        });
      });

  /// Adds a Pinpoint Analytics project to the configuration or replaces the existing one.
  AWSAmplifyConfig withAnalytics({
    required String appId,
    required String region,
    Duration autoFlushEventsInterval = const Duration(seconds: 30),
  }) =>
      rebuild((b) {
        b.analytics = AWSAnalyticsConfig.pinpoint(
          appId: appId,
          region: region,
          autoFlushEventsInterval: autoFlushEventsInterval.inSeconds,
        );
      });

  /// Adds a Pinpoint Analytics project to the configuration or updates the existing one.
  AWSAmplifyConfig updateAnalytics(
    void Function(AWSAnalyticsPinpointConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        switch (b.analytics) {
          case AWSAnalyticsConfigPinpoint$(:final pinpoint):
            return b.analytics = AWSAnalyticsConfigPinpoint$(
              pinpoint.rebuild(builder),
            );
          case null:
            return b.analytics = AWSAnalyticsConfigPinpoint$(
              AWSAnalyticsPinpointConfig.build(builder),
            );
          case final nonPinpointResource:
            throw ArgumentError(
              'A non-Pinpoint analytics resource already exists: $nonPinpointResource',
            );
        }
      });

  /// Adds a CloudWatch log group to the configuration or replaces the existing one.
  AWSAmplifyConfig withLogging({
    required String logGroupName,
    required String region,
    bool enable = true,
    StorageSize localStorageMaxSize = const StorageSize.MB(5),
    Duration flushInterval = const Duration(seconds: 60),
    LoggingRemoteConfiguration? defaultRemoteConfiguration,
    AmplifyLoggingConstraints? loggingConstraints,
  }) =>
      rebuild((b) {
        b.logging = AWSLoggingConfig.cloudWatch(
          logGroupName: logGroupName,
          region: region,
          enable: enable,
          localStoreMaxSize: localStorageMaxSize.inMegabytes,
          flushInterval: flushInterval.inSeconds,
          defaultRemoteConfiguration: defaultRemoteConfiguration,
          loggingConstraints: loggingConstraints,
        );
      });

  /// Adds a CloudWatch log group to the configuration or updates the existing one.
  AWSAmplifyConfig updateLogging(
    void Function(AWSLoggingCloudWatchConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        switch (b.logging) {
          case AWSLoggingConfigCloudWatch$(:final cloudWatch):
            return b.logging = AWSLoggingConfigCloudWatch$(
              cloudWatch.rebuild(builder),
            );
          case null:
            return b.logging = AWSLoggingConfigCloudWatch$(
              AWSLoggingCloudWatchConfig.build(builder),
            );
          case final nonCloudWatchConfig:
            throw ArgumentError(
              'A non-CloudWatch config is already present: $nonCloudWatchConfig',
            );
        }
      });

  /// Adds a Pinpoint Push Notifications project to the configuration or replaces the existing one.
  AWSAmplifyConfig withPushNotifications({
    required String appId,
    required String region,
  }) =>
      rebuild((b) {
        b.notifications = AWSNotificationsConfig.push(
          AWSPushNotificationsConfig.pinpoint(appId: appId, region: region),
        );
      });

  /// Adds a Pinpoint Analytics project to the configuration or updates the existing one.
  AWSAmplifyConfig updatePushNotifications(
    void Function(AWSPushNotificationsPinpointConfigBuilder b) builder,
  ) =>
      rebuild((b) {
        switch (b.notifications?.push) {
          case AWSPushNotificationsConfigPinpoint$(:final pinpoint):
            b.notifications = AWSNotificationsConfig.push(
              AWSPushNotificationsConfigPinpoint$(pinpoint.rebuild(builder)),
            );
          case null:
            b.notifications = AWSNotificationsConfig.push(
              AWSPushNotificationsConfigPinpoint$(
                AWSPushNotificationsPinpointConfig.build(builder),
              ),
            );
          case final nonPinpointResource:
            throw ArgumentError(
              'A non-Pinpoint push notifications resource already exists: $nonPinpointResource',
            );
        }
      });

  /// Adds an S3 storage bucket with name [bucketName] or replaces the existing one.
  AWSAmplifyConfig withStorageBucket({
    required String bucketName,
    required String region,
    StorageAccessLevel defaultAccessLevel = StorageAccessLevel.guest,
  }) =>
      rebuild((b) {
        final bucketConfig = AWSStorageS3Bucket(
          bucketName: bucketName,
          region: region,
          defaultAccessLevel: defaultAccessLevel,
        );
        switch (b.storage) {
          case AWSStorageConfigS3$(:final s3):
            return b.storage = AWSStorageConfigS3$(
              s3.rebuild((s3) {
                s3.buckets[bucketName] = bucketConfig;
              }),
            );
          case null:
            return b.storage = AWSStorageConfig.s3(
              buckets: {bucketName: bucketConfig},
            );
          case final nonS3Config:
            throw ArgumentError(
              'A non-S3 storage configuration is already present: $nonS3Config',
            );
        }
      });

  /// Adds an S3 storage bucket with name [bucketName] or updates the existing one.
  AWSAmplifyConfig updateStorageBucket(
    String bucketName,
    void Function(AWSStorageS3BucketBuilder b) builder,
  ) =>
      rebuild((b) {
        switch (b.storage) {
          case AWSStorageConfigS3$(:final s3):
            return b.storage = AWSStorageConfigS3$(
              s3.rebuild((s3) {
                s3.buckets.updateValue(
                  bucketName,
                  (bucket) => bucket.rebuild(builder),
                  ifAbsent: () => AWSStorageS3Bucket.build(builder),
                );
              }),
            );
          case null:
            return b.storage = AWSStorageConfig.s3(
              buckets: {bucketName: AWSStorageS3Bucket.build(builder)},
            );
          case final nonS3Config:
            throw ArgumentError(
              'A non-S3 storage configuration is already present: $nonS3Config',
            );
        }
      });

  /// Converts this to a CLI-compatible representation.
  AmplifyConfig toCli() {
    AnalyticsConfig? analytics;
    if (this.analytics?.pinpoint
        case AWSAnalyticsPinpointConfig(
          :final appId,
          :final region,
          :final autoFlushEventsInterval
        )) {
      analytics = AnalyticsConfig(
        plugins: {
          PinpointPluginConfig.pluginKey: PinpointPluginConfig(
            pinpointAnalytics: PinpointAnalytics(appId: appId, region: region),
            pinpointTargeting: PinpointTargeting(region: region),
            autoFlushEventsInterval: autoFlushEventsInterval,
          ),
        },
      );
    }

    ApiConfig? api;
    if (this.api?.apis case final apis?) {
      final endpoints = <String, core.AWSApiConfig>{};
      void addEndpoint(String name, AWSApiEndpointConfig endpointConfig) {
        final endpoint = switch (endpointConfig) {
          AWSApiEndpointConfigAppSync$(:final appSync) => core.AWSApiConfig(
              endpointType: EndpointType.graphQL,
              endpoint: appSync.endpoint.toString(),
              region: appSync.region,
              authorizationType: appSync.authMode.asCli,
              apiKey: switch (appSync.authMode) {
                AWSApiAuthorizationModeApiKey$(:final apiKey) => apiKey,
                _ => null,
              },
            ),
          AWSApiEndpointConfigApiGateway$(:final apiGateway) =>
            core.AWSApiConfig(
              endpointType: EndpointType.rest,
              endpoint: apiGateway.endpoint.toString(),
              region: apiGateway.region,
              authorizationType: apiGateway.authMode.asCli,
              apiKey: switch (apiGateway.authMode) {
                AWSApiAuthorizationModeApiKey$(:final apiKey) => apiKey,
                _ => null,
              },
            ),
          AWSApiEndpointConfigRest$(:final rest) => core.AWSApiConfig(
              endpointType: EndpointType.rest,
              endpoint: rest.endpoint.toString(),
              authorizationType: APIAuthorizationType.none,
            ),
          _ => throw ArgumentError(
              'Unsupported CLI endpoint type: $endpointConfig',
            ),
        };

        // Add a multi-auth config as `<API_NAME>_<AUTH_MODE>` for each additional
        // authorization mode.
        if (endpointConfig
            case AWSApiEndpointConfigAppSync$(
              appSync: AWSAppSyncEndpointConfig(:final additionalAuthModes?)
            ) when additionalAuthModes.isNotEmpty) {
          for (final authMode in additionalAuthModes) {
            final authType = authMode.asCli.rawValue;
            addEndpoint(
              '${name}_$authType',
              AWSApiEndpointConfigAppSync$(
                endpointConfig.appSync.rebuild(
                  (b) => b
                    ..authMode = authMode
                    ..additionalAuthModes.clear(),
                ),
              ),
            );
          }
          // Correct name for multi-auth scheme.
          final suffix = '_${endpoint.authorizationType.rawValue}';
          if (!name.endsWith(suffix)) {
            name = '$name$suffix';
          }
        }
        endpoints[name] = endpoint;
      }

      for (final MapEntry(key: name, value: endpointConfig) in apis.entries) {
        addEndpoint(name, endpointConfig);
      }
      api = ApiConfig(
        plugins: {
          AWSApiPluginConfig.pluginKey: AWSApiPluginConfig(endpoints),
        },
      );
    }

    AuthConfig? auth;
    if (this.auth?.cognito
        case AWSAuthCognitoConfig(:final userPool, :final identityPool)) {
      final oAuthConfig = userPool?.hostedUi?.let(
        (hostedUi) => CognitoOAuthConfig(
          appClientId: hostedUi.clientId ?? userPool.clientId,
          appClientSecret: hostedUi.clientSecret ?? userPool.clientSecret,
          webDomain: hostedUi.domainName,
          scopes: hostedUi.scopes.toList(),
          signInRedirectUri: hostedUi.signInRedirectUris.join(','),
          signOutRedirectUri: hostedUi.signOutRedirectUris.join(','),
          signInUri:
              hostedUi.signInUri?.replace(queryParameters: {}).toString(),
          signOutUri:
              hostedUi.signOutUri?.replace(queryParameters: {}).toString(),
          signInUriQueryParameters: hostedUi.signInUri?.queryParameters,
          signOutUriQueryParameters: hostedUi.signOutUri?.queryParameters,
          tokenUri: hostedUi.tokenUri?.replace(queryParameters: {}).toString(),
          tokenUriQueryParameters: hostedUi.tokenUri?.queryParameters,
        ),
      );
      auth = AuthConfig(
        plugins: {
          CognitoPluginConfig.pluginKey: CognitoPluginConfig(
            auth: AWSConfigMap.withDefault(
              CognitoAuthConfig(
                oAuth: oAuthConfig,
                authenticationFlowType: userPool?.authFlowType?.let(
                  (flow) => AuthenticationFlowType.values
                      .firstWhere((v) => v.value == flow.value),
                ),
                socialProviders: userPool?.socialProviders
                    ?.map(
                      (p) => switch (p) {
                        AWSAuthProviderAmazon$ _ => SocialProvider.amazon,
                        AWSAuthProviderApple$ _ => SocialProvider.apple,
                        AWSAuthProviderFacebook$ _ => SocialProvider.facebook,
                        AWSAuthProviderGoogle$ _ => SocialProvider.google,
                        _ => throw ArgumentError.value(
                            p,
                            'socialProvider',
                            'Unsupported provider in the CLI config',
                          ),
                      },
                    )
                    .toList(),
                usernameAttributes: userPool?.usernameAttributes
                    ?.toList()
                    .map(
                      (attr) => CognitoUserAttributeKey.parse(attr.value),
                    )
                    .toList(),
                signupAttributes: userPool?.signUpAttributes?.toList(),
                passwordProtectionSettings:
                    userPool?.passwordProtectionSettings?.let(
                  (passwordSettings) => PasswordProtectionSettings(
                    passwordPolicyMinLength:
                        passwordSettings.passwordPolicyMinLength,
                    passwordPolicyCharacters:
                        passwordSettings.passwordPolicyCharacters?.toList() ??
                            const [],
                  ),
                ),
                mfaConfiguration: userPool?.mfaConfiguration?.status,
                mfaTypes: userPool?.mfaConfiguration?.enabledTypes.toList(),
                verificationMechanisms:
                    userPool?.verificationMechanisms?.toList(),
              ),
            ),
            cognitoUserPool: userPool?.let(
              (userPoolConfig) => AWSConfigMap.withDefault(
                CognitoUserPoolConfig(
                  appClientId: userPoolConfig.clientId,
                  appClientSecret: userPoolConfig.clientSecret,
                  poolId: userPoolConfig.poolId,
                  region: userPoolConfig.region,
                  endpoint: userPoolConfig.endpoint?.toString(),
                  hostedUI: oAuthConfig,
                ),
              ),
            ),
            credentialsProvider: identityPool?.let(
              (identityPoolConfig) => CredentialsProviders(
                AWSConfigMap({
                  CognitoIdentityCredentialsProvider.configKey:
                      AWSConfigMap.withDefault(
                    CognitoIdentityCredentialsProvider(
                      poolId: identityPoolConfig.poolId,
                      region: identityPool.region,
                    ),
                  ),
                }),
              ),
            ),
            pinpointAnalytics: userPool?.pinpointConfig?.let(
              (pinpointConfig) => AWSConfigMap.withDefault(
                CognitoPinpointAnalyticsConfig(
                  appId: pinpointConfig.appId,
                  region: pinpointConfig.region,
                ),
              ),
            ),
            pinpointTargeting: userPool?.pinpointConfig?.let(
              (pinpointConfig) => AWSConfigMap.withDefault(
                CognitoPinpointTargetingConfig(
                  region: pinpointConfig.region,
                ),
              ),
            ),
          ),
        },
      );
    }

    LoggingConfig? logging;
    if (this.logging?.cloudWatch case final loggingConfig?) {
      logging = LoggingConfig(
        plugins: {
          CloudWatchPluginConfig.pluginKey: CloudWatchPluginConfig(
            enable: loggingConfig.enable,
            logGroupName: loggingConfig.logGroupName,
            region: loggingConfig.region,
            flushIntervalInSeconds: loggingConfig.flushInterval,
            localStoreMaxSizeInMB: loggingConfig.localStoreMaxSize,
            defaultRemoteConfiguration:
                loggingConfig.defaultRemoteConfiguration?.let(
              (remoteConfig) => DefaultRemoteConfiguration(
                endpoint: remoteConfig.endpoint.toString(),
                refreshIntervalInSeconds: remoteConfig.refreshInterval,
              ),
            ),
            loggingConstraints: loggingConfig.loggingConstraints?.let(
              (constraints) => LoggingConstraints(
                defaultLogLevel: constraints.defaultLogLevel.name.screamingCase,
                categoryLogLevel: {
                  for (final MapEntry(key: category, value: logLevel)
                      in (constraints.categoryLogLevel?.toMap() ??
                              const <Category, LogLevel>{})
                          .entries)
                    category.name.screamingCase: logLevel.name.screamingCase,
                },
                userLogLevel: constraints.userLogLevel?.let(
                      (userLogLevels) => {
                        for (final MapEntry(key: userId, value: constraints)
                            in userLogLevels.entries)
                          userId: core.UserLogLevel(
                            defaultLogLevel:
                                constraints.defaultLogLevel.name.screamingCase,
                            categoryLogLevel: constraints.categoryLogLevel?.let(
                                  (categoryLevels) => {
                                    for (final MapEntry(
                                          key: category,
                                          value: logLevel
                                        ) in categoryLevels.entries)
                                      category.name.screamingCase:
                                          logLevel.name.screamingCase,
                                  },
                                ) ??
                                const {},
                          )
                      },
                    ) ??
                    const {},
              ),
            ),
          ),
        },
      );
    }

    NotificationsConfig? notifications;
    if (this.notifications?.push?.pinpoint
        case AWSPushNotificationsPinpointConfig(:final appId, :final region)) {
      notifications = NotificationsConfig(
        plugins: {
          NotificationsPinpointPluginConfig.pluginKey:
              NotificationsPinpointPluginConfig(
            appId: appId,
            region: region,
          ),
        },
      );
    }

    StorageConfig? storage;
    if (this.storage?.s3?.buckets case final buckets?) {
      final AWSStorageS3Bucket(:bucketName, :region, :defaultAccessLevel) =
          buckets.values.first;
      if (buckets.length > 1) {
        logger.warn(
          'The CLI config does not currently support multiple buckets. '
          'Including "$bucketName".',
        );
      }
      storage = StorageConfig(
        plugins: {
          S3PluginConfig.pluginKey: S3PluginConfig(
            bucket: bucketName,
            region: region,
            defaultAccessLevel: defaultAccessLevel,
          ),
        },
      );
    }

    return AmplifyConfig(
      analytics: analytics,
      api: api,
      auth: auth,
      logging: logging,
      notifications: notifications,
      storage: storage,
    );
  }

  Map<String, Object?> toJson() {
    final serializersBuilder = Serializers().toBuilder()
      ..addAll(serializers)
      ..addAll(const [
        // We need a built_value serializer for each overridden type
        _StandardEnumSerializer('LogLevel', LogLevel.values),
        _StandardEnumSerializer('Category', Category.values),
        _StandardEnumSerializer(
          'AuthenticationFlowType',
          AuthenticationFlowType.values,
        ),
        _StandardEnumSerializer('MfaType', MfaType.values),
        _StandardEnumSerializer(
          'MfaConfiguration',
          MfaConfiguration.values,
        ),
        _StandardEnumSerializer(
          'PasswordPolicyCharacters',
          PasswordPolicyCharacters.values,
        ),
        _StandardEnumSerializer(
          'StorageAccessLevel',
          StorageAccessLevel.values,
        ),
        _CognitoUserAttributeKeySerializer(),
      ])
      ..addPlugin(StandardJsonPlugin());

    return serializersBuilder.build().serializeWith(serializer, this)
        as Map<String, Object?>;
  }

  @override
  List<Object?> get props => [
        analytics,
        api,
        auth,
        logging,
        notifications,
        storage,
      ];

  @override
  String get runtimeTypeName => 'AWSAmplifyConfig';
}

extension<T extends Object> on T {
  R? let<R>(R Function(T) fn) => fn(this);
}

extension on core.AWSApiConfig {
  AWSApiAuthorizationMode get defaultAuthMode => switch (authorizationType) {
        APIAuthorizationType.apiKey => AWSApiAuthorizationMode.apiKey(apiKey!),
        APIAuthorizationType.iam => const AWSApiAuthorizationMode.iam(),
        APIAuthorizationType.userPools =>
          const AWSApiAuthorizationMode.userPools(),
        APIAuthorizationType.oidc => const AWSApiAuthorizationMode.oidc(),
        APIAuthorizationType.function =>
          const AWSApiAuthorizationMode.function(),
        APIAuthorizationType.none => const AWSApiAuthorizationMode.none(),
      };
}

extension on AWSApiAuthorizationMode {
  APIAuthorizationType get asCli => switch (this) {
        AWSApiAuthorizationModeApiKey$ _ => APIAuthorizationType.apiKey,
        AWSApiAuthorizationModeIam$ _ => APIAuthorizationType.iam,
        AWSApiAuthorizationModeUserPools$ _ => APIAuthorizationType.userPools,
        AWSApiAuthorizationModeOidc$ _ => APIAuthorizationType.oidc,
        AWSApiAuthorizationModeFunction$ _ => APIAuthorizationType.function,
        AWSApiAuthorizationModeNone$ _ => APIAuthorizationType.none,
        _ => throw ArgumentError('Invalid authorization mode: $this'),
      };
}

// ignore_for_file: non_constant_identifier_names, constant_identifier_names
final class StorageSize {
  const StorageSize._(this._bytes);

  const StorageSize.kB(int kilobytes) : this._(kilobytes * _kB);
  const StorageSize.MB(int megabytes) : this._(megabytes * _MB);
  const StorageSize.GB(int gigabytes) : this._(gigabytes * _GB);

  const StorageSize.KiB(int kilobytes) : this._(kilobytes * _KiB);
  const StorageSize.MiB(int megabytes) : this._(megabytes * _MiB);
  const StorageSize.GiB(int gigabytes) : this._(gigabytes * _GiB);

  static const int _kB = 1000;
  static const int _MB = 1000 * _kB;
  static const int _GB = 1000 * _MB;

  static const int _KiB = 1024;
  static const int _MiB = 1024 * _KiB;
  static const int _GiB = 1024 * _MiB;

  final int _bytes;

  int get inKilobytes => _bytes ~/ _kB;
  int get inMegabytes => _bytes ~/ _MB;
  int get inGigabytes => _bytes ~/ _MB;

  int get inKibibytes => _bytes ~/ _KiB;
  int get inMebibytes => _bytes ~/ _MiB;
  int get inGibibytes => _bytes ~/ _GiB;
}

final class _StandardEnumSerializer<T extends Enum>
    implements PrimitiveSerializer<T> {
  const _StandardEnumSerializer(this.wireName, this.values);

  @override
  final String wireName;
  final List<T> values;

  static Never _invalidEnumValue(Object value) =>
      throw ArgumentError('Invalid enum value: $value');

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return values.firstWhere(
      (val) => val.name.screamingCase == serialized,
      orElse: () => _invalidEnumValue(serialized),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.name.screamingCase;
  }

  @override
  Iterable<Type> get types => [T];
}

final class _CognitoUserAttributeKeySerializer
    implements PrimitiveSerializer<CognitoUserAttributeKey> {
  const _CognitoUserAttributeKeySerializer();

  @override
  CognitoUserAttributeKey deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final key = switch (serialized) {
      String _ => serialized,
      _ => throw ArgumentError('Invalid attribute key: $serialized'),
    };
    return CognitoUserAttributeKey.parse(key.toLowerCase());
  }

  @override
  Object serialize(
    Serializers serializers,
    CognitoUserAttributeKey object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object.toJson().toUpperCase();
  }

  @override
  Iterable<Type> get types => const [CognitoUserAttributeKey];

  @override
  String get wireName => 'CognitoUserAttributeKey';
}
