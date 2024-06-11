// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/src/amplify_datastore_stream_controller.dart';
import 'package:amplify_datastore/src/datastore_plugin_options.dart';
import 'package:amplify_datastore/src/method_channel_datastore.dart';
import 'package:amplify_datastore/src/native_plugin.g.dart';
import 'package:amplify_datastore/src/utils/native_api_helpers.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

export 'package:amplify_core/src/types/datastore/datastore_types.dart'
    hide DateTimeParse;

export 'src/datastore_plugin_options.dart';

class AmplifyDataStore extends DataStorePluginInterface
    with AWSDebuggable, AmplifyLoggerMixin {
  /// Constructs an AmplifyDataStore plugin with mandatory [modelProvider]
  /// and an optional datastore plugin options [options]
  AmplifyDataStore({
    required ModelProviderInterface modelProvider,
    DataStorePluginOptions options = const DataStorePluginOptions(),
  }) : super(
          modelProvider: modelProvider,
          errorHandler: options.errorHandler,
          conflictHandler: options.conflictHandler,
          syncExpressions: options.syncExpressions,
          syncInterval: options.syncInterval,
          syncMaxRecords: options.syncMaxRecords,
          syncPageSize: options.syncPageSize,
          authModeStrategy: options.authModeStrategy,
        );

  /// Internal use constructor
  @protected
  AmplifyDataStore.emptyConstructor() : super.emptyConstructor();

  static AmplifyDataStore _instance = AmplifyDataStoreMethodChannel();
  static DataStoreStreamController streamWrapper = DataStoreStreamController();

  StreamController<DataStoreHubEvent> get streamController {
    return streamWrapper.datastoreStreamController;
  }

  @override
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    if (config == null) {
      throw ConfigurationError('No Amplify config provided');
    }

    final authPlugin = Amplify.Auth.plugins.firstOrNull;
    if (authPlugin != null) {
      // Configure this plugin to act as a native iOS/Android plugin.
      final nativePlugin = _NativeAmplifyAuthCognito();
      NativeAuthPlugin.setup(nativePlugin);
      final nativeBridge = NativeAuthBridge();
      try {
        await nativeBridge.addAuthPlugin();
      } on PlatformException catch (e) {
        if (e.code.contains('AmplifyAlreadyConfiguredException') ||
            e.code.contains('AlreadyConfiguredException')) {
          logger.debug('Ignoring Amplify Native already configured exception');
        } else {
          throw ConfigurationError(
            e.message ?? 'An unknown error occurred',
            underlyingException: e,
          );
        }
      }
      // Update the native cache for the current user on hub events.
      Future<void> updateCurrentUser(AuthUser? currentUser) async {
        NativeAuthUser? nativeUser;
        if (currentUser != null) {
          nativeUser = NativeAuthUser(
            userId: currentUser.userId,
            username: currentUser.username,
          );
        }
        await nativeBridge.updateCurrentUser(nativeUser);
      }

      try {
        final currentUser = await Amplify.Auth.getCurrentUser();
        await updateCurrentUser(currentUser);
      } on Exception {
        await updateCurrentUser(null);
      }
      Amplify.Hub.listen(HubChannel.Auth, (AuthHubEvent event) {
        updateCurrentUser(event.payload);
      });
    }

    final apiPlugin = Amplify.API.plugins.firstOrNull;
    final gqlConfig = config.data;
    if (apiPlugin != null && gqlConfig != null) {
      // ignore: invalid_use_of_protected_member
      final authProviders = apiPlugin.authProviders;
      Map<String, String> endpoints = {};
      gqlConfig.entries.forEach((e) {
        endpoints[e.key] = e.value.defaultAuthorizationType.name;
      });
      final nativePlugin = NativeAmplifyApi(authProviders);
      NativeApiPlugin.setup(nativePlugin);

      final nativeBridge = NativeApiBridge();
      try {
        final authProvidersList =
            authProviders.keys.map((key) => key.rawValue).toList();
        await nativeBridge.addApiPlugin(authProvidersList, endpoints);
      } on PlatformException catch (e) {
        if (e.code.contains('AmplifyAlreadyConfiguredException') ||
            e.code.contains('AlreadyConfiguredException')) {
          logger.debug('Ignoring Amplify Native already configured exception');
        } else {
          throw ConfigurationError(
            e.message ?? 'An unknown error occurred',
            underlyingException: e,
          );
        }
      }
    }

    try {
      final nativeBridge = NativeAmplifyBridge();
      await nativeBridge.configure(
        Amplify.version,
        jsonEncode(config.toJson()),
      );
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyException') {
        throw AmplifyException.fromMap(
          Map<String, String>.from(e.details as Map),
        );
      } else if (e.code == 'AmplifyAlreadyConfiguredException') {
        logger.debug('Ignoring Amplify Native already configured exception');
        return;
      } else {
        // This shouldn't happen. All exceptions coming from platform for
        // amplify_flutter should have a known code. Throw an unknown error.
        throw PluginError(
          AmplifyExceptionMessages.missingExceptionMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
          underlyingException: e.toString(),
        );
      }
    }
  }

  @override
  Future<void> configureDataStore({
    ModelProviderInterface? modelProvider,
    Function(AmplifyException)? errorHandler,
    DataStoreConflictHandler? conflictHandler,
    List<DataStoreSyncExpression>? syncExpressions,
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
    AuthModeStrategy authModeStrategy = AuthModeStrategy.defaultStrategy,
  }) async {
    ModelProviderInterface provider = modelProvider ?? this.modelProvider!;
    if (provider.modelSchemas.isEmpty) {
      throw DataStoreException('No modelProvider or modelSchemas found',
          recoverySuggestion:
              'Pass in a modelProvider instance while instantiating DataStorePlugin');
    }
    streamWrapper.registerModelsForHub(provider);
    return _instance.configureDataStore(
      modelProvider: provider,
      errorHandler: errorHandler ?? this.errorHandler,
      conflictHandler: conflictHandler ?? this.conflictHandler,
      syncExpressions: this.syncExpressions,
      syncInterval: this.syncInterval,
      syncMaxRecords: this.syncMaxRecords,
      syncPageSize: this.syncPageSize,
      authModeStrategy: this.authModeStrategy,
    );
  }

  @override
  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where,
      QueryPagination? pagination,
      List<QuerySortBy>? sortBy}) async {
    return _instance.query(modelType,
        where: where, pagination: pagination, sortBy: sortBy);
  }

  @override
  Future<void> delete<T extends Model>(T model, {QueryPredicate? where}) async {
    return _instance.delete(model, where: where);
  }

  @override
  Future<void> save<T extends Model>(T model, {QueryPredicate? where}) {
    return _instance.save(model, where: where);
  }

  @override
  Stream<SubscriptionEvent<T>> observe<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where}) {
    return _instance.observe(modelType, where: where);
  }

  @override
  Future<void> clear() async {
    return _instance.clear();
  }

  @override
  Future<void> start() async {
    return _instance.start();
  }

  @override
  Future<void> stop() async {
    return _instance.stop();
  }

  @override
  Stream<QuerySnapshot<T>> observeQuery<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    return _instance.observeQuery(
      modelType,
      where: where,
      sortBy: sortBy,
      throttleOptions: throttleOptions,
    );
  }

  @override
  String get runtimeTypeName => 'AmplifyDataStore';
}

class _NativeAmplifyAuthCognito
    with AWSDebuggable, AmplifyLoggerMixin
    implements NativeAuthPlugin {
  _NativeAmplifyAuthCognito();

  @override
  Future<NativeAuthSession> fetchAuthSession() async {
    try {
      // authSession cannot be typed properly without depending on amplify_auth_cognito
      final authSession = await Amplify.Auth.fetchAuthSession() as dynamic;
      final nativeAuthSession = NativeAuthSession(
        isSignedIn: authSession.isSignedIn,
        userSub: authSession.userSubResult.valueOrNull,
        identityId: authSession.identityIdResult.valueOrNull,
      );
      final userPoolTokens = authSession.userPoolTokensResult.valueOrNull;
      if (userPoolTokens != null) {
        nativeAuthSession.userPoolTokens = NativeUserPoolTokens(
          accessToken: userPoolTokens.accessToken.raw,
          refreshToken: userPoolTokens.refreshToken,
          idToken: userPoolTokens.idToken.raw,
        );
      }
      final awsCredentials = authSession.credentialsResult.valueOrNull;
      if (awsCredentials != null) {
        nativeAuthSession.awsCredentials = NativeAWSCredentials(
          accessKeyId: awsCredentials.accessKeyId,
          secretAccessKey: awsCredentials.secretAccessKey,
          sessionToken: awsCredentials.sessionToken,
          expirationIso8601Utc:
              awsCredentials.expiration?.toUtc().toIso8601String(),
        );
      }
      return nativeAuthSession;
    } on Exception catch (e) {
      logger.error('Error fetching session for native plugin', e);
    }
    return NativeAuthSession(isSignedIn: false);
  }

  @override
  String get runtimeTypeName => '_NativeAmplifyAuthCognito';
}

@visibleForTesting
class NativeAmplifyApi
    with AWSDebuggable, AmplifyLoggerMixin
    implements NativeApiPlugin {
  NativeAmplifyApi(this._authProviders);

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType<AmplifyAuthProvider>, APIAuthProvider>
      _authProviders;

  final Map<String, StreamSubscription<GraphQLResponse<String>>>
      _subscriptionsCache = {};

  @override
  String get runtimeTypeName => 'NativeAmplifyApi';

  @override
  Future<String?> getLatestAuthToken(String providerName) {
    final provider = APIAuthorizationTypeX.from(providerName);
    if (provider == null) {
      throw PlatformException(code: 'BAD_ARGUMENTS');
    }
    final authProvider = _authProviders[provider];
    if (authProvider == null) {
      throw PlatformException(
        code: 'NO_PROVIDER',
        message: 'No provider found for $authProvider',
      );
    }
    return authProvider.getLatestAuthToken();
  }

  @override
  Future<NativeGraphQLResponse> mutate(NativeGraphQLRequest request) async {
    try {
      final flutterRequest = nativeRequestToGraphQLRequest(request);
      final response =
          await Amplify.API.mutate(request: flutterRequest).response;
      return graphQLResponseToNativeResponse(response);
    } on Exception catch (e) {
      return handleGraphQLOperationException(e, request);
    }
  }

  @override
  Future<NativeGraphQLResponse> query(NativeGraphQLRequest request) async {
    try {
      final flutterRequest = nativeRequestToGraphQLRequest(request);
      final response =
          await Amplify.API.query(request: flutterRequest).response;
      return graphQLResponseToNativeResponse(response);
    } on Exception catch (e) {
      return handleGraphQLOperationException(e, request);
    }
  }

  @override
  Future<NativeGraphQLSubscriptionResponse> subscribe(
      NativeGraphQLRequest request) async {
    final flutterRequest = nativeRequestToGraphQLRequest(request);

    final operation = Amplify.API.subscribe(flutterRequest,
        onEstablished: () => sendNativeStartAckEvent(flutterRequest.id));

    final subscription = operation.listen(
        (GraphQLResponse<String> event) =>
            sendSubscriptionEvent(flutterRequest.id, event),
        onError: (Object error) {
          sendSubscriptionStreamErrorEvent(flutterRequest.id, error);
        },
        onDone: () => sendNativeCompleteEvent(flutterRequest.id));

    _subscriptionsCache[flutterRequest.id] = subscription;

    return getConnectingEvent(flutterRequest.id);
  }

  @override
  Future<void> unsubscribe(String subscriptionId) async {
    final subscription = _subscriptionsCache[subscriptionId];
    if (subscription != null) {
      await subscription.cancel();
      _subscriptionsCache.remove(subscriptionId);
    }
  }
}
