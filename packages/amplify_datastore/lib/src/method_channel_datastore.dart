// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_datastore/src/types/observe_query_executor.dart';
import 'package:flutter/services.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/datastore');

/// A callback for handling model conflicts.
typedef ConflictHandler = ConflictResolutionDecision Function(ConflictData);

/// An implementation of [AmplifyDataStore] that uses method channels.
class AmplifyDataStoreMethodChannel extends AmplifyDataStore {
  /// Internal use constructor
  AmplifyDataStoreMethodChannel() : super.emptyConstructor();
  Stream<Map<String, dynamic>>? _allModelsStreamFromMethodChannel;

  List<DataStoreSyncExpression>? _syncExpressions;

  final ObserveQueryExecutor _observeQueryExecutor = ObserveQueryExecutor(
    dataStoreEventStream:
        AmplifyDataStore.streamWrapper.datastoreStreamController.stream,
  );

  // Receives calls from Native
  Future<dynamic> _methodCallHandler(MethodCall call) async {
    switch (call.method) {
      case 'resolveQueryPredicate':
        final id = call.arguments;
        if (id! is String) {
          throw ArgumentError(
            'resolveQueryPredicate must be called with an id',
          );
        }
        return _syncExpressions!
            .firstWhere((syncExpression) => syncExpression.id == id)
            .resolveQueryPredicate()
            .serializeAsMap();

      case 'errorHandler':
        if (errorHandler == null) {
          throw StateError('Native calling non existent ErrorHandler in Dart');
        }

        final arguments =
            Map<String, dynamic>.from(call.arguments as Map<String, dynamic>);
        errorHandler!(_deserializeExceptionFromMap(arguments));

      case 'conflictHandler':
        if (conflictHandler == null) {
          throw StateError(
            'Native calling non existent ConflictHandler in Dart',
          );
        }

        final arguments = (call.arguments as Map).cast<String, dynamic>();

        final modelName = arguments['__modelName'] as String;
        final modelType = modelProvider!.getModelTypeByModelName(modelName);

        final conflictData = ConflictData.fromJson(
          modelType,
          (arguments['local'] as Map).cast<String, dynamic>(),
          (arguments['remote'] as Map).cast<String, dynamic>(),
        );

        final decision = conflictHandler!(conflictData);
        return decision.toJson();
      default:
        throw UnimplementedError('${call.method} has not been implemented.');
    }
  }

  /// This method instantiates the native DataStore plugins with plugin
  /// configurations. This needs to happen before Amplify.configure() can be
  /// called.
  @override
  Future<void> configureDataStore({
    ModelProviderInterface? modelProvider,
    void Function(AmplifyException)? errorHandler,
    DataStoreConflictHandler? conflictHandler,
    List<DataStoreSyncExpression>? syncExpressions,
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
    AuthModeStrategy authModeStrategy = AuthModeStrategy.defaultStrategy,
  }) async {
    _channel.setMethodCallHandler(_methodCallHandler);
    try {
      this.modelProvider = modelProvider;
      this.errorHandler = errorHandler;
      this.conflictHandler = conflictHandler;
      _syncExpressions = syncExpressions;

      return await _channel
          .invokeMethod('configureDataStore', <String, dynamic>{
        'modelSchemas': modelProvider?.modelSchemas
            .map((schema) => schema.toMap())
            .toList(),
        'customTypeSchemas': modelProvider?.customTypeSchemas
            .map((schema) => schema.toMap())
            .toList(),
        'hasErrorHandler': errorHandler != null,
        'hasConflictHandler': conflictHandler != null,
        'modelProviderVersion': modelProvider?.version,
        'syncExpressions': syncExpressions!
            .map((syncExpression) => syncExpression.toMap())
            .toList(),
        'syncInterval': syncInterval,
        'syncMaxRecords': syncMaxRecords,
        'syncPageSize': syncPageSize,
        'authModeStrategy': authModeStrategy.rawValue,
      });
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
          AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion,
        );
      } else {
        throw _deserializeException(e);
      }
    }
  }

  @override
  Future<List<T>> query<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    QueryPagination? pagination,
    List<QuerySortBy>? sortBy,
  }) async {
    try {
      await _setUpObserveIfNeeded();
      final serializedResults = await (_channel
          .invokeListMethod<Map<dynamic, dynamic>>('query', <String, dynamic>{
        'modelName': modelType.modelName(),
        'queryPredicate': where?.serializeAsMap(),
        'queryPagination': pagination?.serializeAsMap(),
        'querySort':
            sortBy?.map((element) => element.serializeAsMap()).toList(),
      }));
      if (serializedResults == null) {
        throw const DataStoreException(
          AmplifyExceptionMessages.nullReturnedFromMethodChannel,
        );
      }
      return serializedResults
          .map(
            (serializedResult) =>
                modelType.fromJson(Map<String, dynamic>.from(serializedResult)),
          )
          .toList();
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    } on TypeError catch (e) {
      throw DataStoreException(
        'An unrecognized exception has happened while Serialization/de-serialization.'
        ' Please see underlyingException for more details.',
        recoverySuggestion: AmplifyExceptionMessages.missingRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  @override
  Future<void> delete<T extends Model>(T model, {QueryPredicate? where}) async {
    try {
      await _setUpObserveIfNeeded();
      final methodChannelDeleteInput = <String, dynamic>{
        'modelName': model.getInstanceType().modelName(),
        if (where != null) 'queryPredicate': where.serializeAsMap(),
        'serializedModel': model.toJson(),
      };
      await _channel.invokeMethod('delete', methodChannelDeleteInput);
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  @override
  Future<void> save<T extends Model>(T model, {QueryPredicate? where}) async {
    try {
      await _setUpObserveIfNeeded();
      final methodChannelSaveInput = <String, dynamic>{
        'modelName': model.getInstanceType().modelName(),
        if (where != null) 'queryPredicate': where.serializeAsMap(),
        'serializedModel': model.toJson(),
      };
      await _channel.invokeMethod('save', methodChannelSaveInput);
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  @override
  Stream<SubscriptionEvent<T>> observe<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
  }) async* {
    await _setUpObserveIfNeeded();

    // Step #1. Open the event channel if it's not already open. Note
    // that there is only one event channel for all observe calls for all models
    const eventChannel =
        EventChannel('com.amazonaws.amplify/datastore_observe_events');
    _allModelsStreamFromMethodChannel = _allModelsStreamFromMethodChannel ??
        eventChannel.receiveBroadcastStream(0);

    // Step #2. Apply client side filtering on the stream.
    // Currently only modelType filtering is supported.
    final filteredStream =
        _allModelsStreamFromMethodChannel!.where((Map<String, dynamic> event) {
      //TODO: errors are not model specific. Should we pass all errors to users
      return _getModelNameFromEvent(event) == modelType.modelName();
    });

    // Step #3. Deserialize events and return new broadcast stream
    yield* filteredStream
        .map((event) => SubscriptionEvent.fromMap(event, modelType))
        .where((event) => where == null || where.evaluate(event.item))
        .asBroadcastStream()
        .cast<SubscriptionEvent<T>>();
  }

  @override
  Stream<QuerySnapshot<T>> observeQuery<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
    ObserveQueryThrottleOptions throttleOptions =
        const ObserveQueryThrottleOptions.defaults(),
  }) {
    return _observeQueryExecutor.observeQuery<T>(
      query: query,
      observe: observe,
      modelType: modelType,
      where: where,
      sortBy: sortBy,
      throttleOptions: throttleOptions,
    );
  }

  @override
  Future<void> clear() async {
    try {
      await _channel.invokeMethod('clear');
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  @override
  Future<void> start() async {
    try {
      await _channel.invokeMethod('start');
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  @override
  Future<void> stop() async {
    try {
      await _channel.invokeMethod('stop');
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  String _getModelNameFromEvent(Map<dynamic, dynamic> serializedEvent) {
    final serializedItem = Map<String, dynamic>.from(
      serializedEvent['item'] as Map<dynamic, dynamic>,
    );
    return serializedItem['__modelName'] as String;
  }

  AmplifyException _deserializeExceptionFromMap(Map<String, dynamic> e) {
    if (e['errorCode'] == 'DataStoreException') {
      return DataStoreException.fromMap(
        Map<String, String>.from(e['details'] as Map<dynamic, dynamic>),
      );
    } else if (e['errorCode'] == 'AmplifyAlreadyConfiguredException') {
      return AmplifyAlreadyConfiguredException.fromMap(
        Map<String, String>.from(e['details'] as Map<dynamic, dynamic>),
      );
    } else {
      // This shouldn't happen. All exceptions coming from platform for
      // amplify_datastore should have a known code. Throw an unknown error.
      return DataStoreException(
        AmplifyExceptionMessages.missingExceptionMessage,
        recoverySuggestion: AmplifyExceptionMessages.missingRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  AmplifyException _deserializeException(PlatformException e) {
    if (e.code == 'DataStoreException') {
      return DataStoreException.fromMap(
        Map<String, String>.from(e.details as Map<dynamic, dynamic>),
      );
    } else if (e.code == 'AmplifyAlreadyConfiguredException') {
      return AmplifyAlreadyConfiguredException.fromMap(
        Map<String, String>.from(e.details as Map<dynamic, dynamic>),
      );
    } else {
      // This shouldn't happen. All exceptions coming from platform for
      // amplify_datastore should have a known code. Throw an unknown error.
      return DataStoreException(
        AmplifyExceptionMessages.missingExceptionMessage,
        recoverySuggestion: AmplifyExceptionMessages.missingRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  /// Ensure the event channel is properly set up on the native side.
  /// If not, it ensures event channel can receive event from native
  /// `observe` APIs. If already set up, this channel call resolves
  /// immediately.
  Future<void> _setUpObserveIfNeeded() {
    return _channel.invokeMethod('setUpObserve', <String, dynamic>{});
  }
}
