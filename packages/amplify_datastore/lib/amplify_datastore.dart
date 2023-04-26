// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/src/amplify_datastore_stream_controller.dart';
import 'package:amplify_datastore/src/method_channel_datastore.dart';
import 'package:amplify_datastore/src/native_plugin.g.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

export 'package:amplify_core/src/types/datastore/datastore_types.dart'
    hide DateTimeParse;

class AmplifyDataStore extends DataStorePluginInterface {
  /// Constructs an AmplifyDataStore plugin with mandatory [modelProvider]
  /// and optional datastore configuration properties including
  ///
  /// [syncExpressions]: list of sync expressions to filter datastore sync against
  ///
  /// [syncInterval]: datastore syncing interval (in seconds)
  ///
  /// [syncMaxRecords]: max number of records to sync
  ///
  /// [syncPageSize]: page size to sync
  AmplifyDataStore({
    required ModelProviderInterface modelProvider,
    Function(AmplifyException)? errorHandler,
    DataStoreConflictHandler? conflictHandler,
    List<DataStoreSyncExpression> syncExpressions = const [],
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
    AuthModeStrategy authModeStrategy = AuthModeStrategy.defaultStrategy,
  }) : super(
          modelProvider: modelProvider,
          errorHandler: errorHandler,
          conflictHandler: conflictHandler,
          syncExpressions: syncExpressions,
          syncInterval: syncInterval,
          syncMaxRecords: syncMaxRecords,
          syncPageSize: syncPageSize,
          authModeStrategy: authModeStrategy,
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
    AmplifyConfig? config,
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
          throw const AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion,
          );
        }
        throw ConfigurationError(
          e.message ?? 'An unknown error occurred',
          underlyingException: e,
        );
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
    if (apiPlugin != null) {
      // ignore: invalid_use_of_protected_member
      final authProviders = apiPlugin.authProviders;
      final nativePlugin = _NativeAmplifyApi(authProviders);
      NativeApiPlugin.setup(nativePlugin);

      final nativeBridge = NativeApiBridge();
      try {
        final authProvidersList =
            authProviders.keys.map((key) => key.rawValue).toList();
        await nativeBridge.addApiPlugin(authProvidersList);
      } on PlatformException catch (e) {
        if (e.code.contains('AmplifyAlreadyConfiguredException') ||
            e.code.contains('AlreadyConfiguredException')) {
          throw const AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion,
          );
        }
        throw ConfigurationError(
          e.message ?? 'An unknown error occurred',
          underlyingException: e,
        );
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

class _NativeAmplifyApi
    with AWSDebuggable, AmplifyLoggerMixin
    implements NativeApiPlugin {
  _NativeAmplifyApi(this._authProviders);

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType<AmplifyAuthProvider>, APIAuthProvider>
      _authProviders;

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
  String get runtimeTypeName => '_NativeAmplifyApi';
}
