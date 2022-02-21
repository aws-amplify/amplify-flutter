/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/services.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'types/observe_query_executor.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/datastore');

/// An implementation of [AmplifyDataStore] that uses method channels.
class AmplifyDataStoreMethodChannel extends AmplifyDataStore {
  dynamic _allModelsStreamFromMethodChannel = null;

  List<DataStoreSyncExpression>? _syncExpressions;
  Function(AmplifyException)? _errorHandler;

  ObserveQueryExecutor _observeQueryExecutor = ObserveQueryExecutor(
    dataStoreEventStream:
        AmplifyDataStore.streamWrapper.datastoreStreamController.stream,
  );

  /// Internal use constructor
  AmplifyDataStoreMethodChannel() : super.tokenOnly();

  // Receives calls from Native
  Future<dynamic> _methodCallHandler(MethodCall call) async {
    switch (call.method) {
      case 'resolveQueryPredicate':
        String? id = call.arguments;
        if (id == null) {
          throw ArgumentError(
              'resolveQueryPredicate must be called with an id');
        }
        return _syncExpressions!
            .firstWhere((syncExpression) => syncExpression.id == id)
            .resolveQueryPredicate()
            .serializeAsMap();

      case 'errorHandler':
        Map<String, dynamic> arguments =
            Map<String, dynamic>.from(call.arguments);
        _errorHandler!(_deserializeExceptionFromMap(arguments));
        break;

      case 'conflictHandler':
        break;

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
    Function(AmplifyException)? errorHandler,
    List<DataStoreSyncExpression>? syncExpressions,
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
  }) async {
    _channel.setMethodCallHandler(_methodCallHandler);
    try {
      _syncExpressions = syncExpressions;
      _errorHandler = errorHandler;

      return await _channel
          .invokeMethod('configureDataStore', <String, dynamic>{
        'modelSchemas': modelProvider?.modelSchemas
            .map((schema) => schema.toMap())
            .toList(),
        'customTypeSchemas': modelProvider?.customTypeSchemas
            .map((schema) => schema.toMap())
            .toList(),
        'hasErrorHandler': errorHandler != null,
        'modelProviderVersion': modelProvider?.version,
        'syncExpressions': syncExpressions!
            .map((syncExpression) => syncExpression.toMap())
            .toList(),
        'syncInterval': syncInterval,
        'syncMaxRecords': syncMaxRecords,
        'syncPageSize': syncPageSize,
      });
    } on PlatformException catch (e) {
      if (e.code == "AmplifyAlreadyConfiguredException") {
        throw AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion);
      } else {
        throw _deserializeException(e);
      }
    }
  }

  /// This method performs the steps necessary to configure this plugin.
  /// Currently, [configure] doesn't do anything specific.
  @override
  Future<void> configure({String? configuration}) async {}

  @override
  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where,
      QueryPagination? pagination,
      List<QuerySortBy>? sortBy}) async {
    try {
      await _setUpObserveIfNeeded();
      final List<Map<dynamic, dynamic>>? serializedResults =
          await (_channel.invokeListMethod('query', <String, dynamic>{
        'modelName': modelType.modelName(),
        'queryPredicate': where?.serializeAsMap(),
        'queryPagination': pagination?.serializeAsMap(),
        'querySort': sortBy?.map((element) => element.serializeAsMap()).toList()
      }));
      if (serializedResults == null)
        throw AmplifyException(
            AmplifyExceptionMessages.nullReturnedFromMethodChannel);
      return serializedResults
          .map((serializedResult) => modelType.fromJson(
              new Map<String, dynamic>.from(
                  serializedResult["serializedData"])))
          .toList();
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    } on TypeError catch (e) {
      throw DataStoreException(
          "An unrecognized exception has happened while Serialization/de-serialization." +
              " Please see underlyingException for more details.",
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  @override
  Future<void> delete<T extends Model>(T model, {QueryPredicate? where}) async {
    try {
      await _setUpObserveIfNeeded();
      var methodChannelDeleteInput = <String, dynamic>{
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
      var methodChannelSaveInput = <String, dynamic>{
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
  Stream<SubscriptionEvent<T>> observe<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where}) async* {
    await _setUpObserveIfNeeded();

    // Step #1. Open the event channel if it's not already open. Note
    // that there is only one event channel for all observe calls for all models
    const _eventChannel =
        EventChannel('com.amazonaws.amplify/datastore_observe_events');
    _allModelsStreamFromMethodChannel = _allModelsStreamFromMethodChannel ??
        _eventChannel.receiveBroadcastStream(0);

    // Step #2. Apply client side filtering on the stream.
    // Currently only modelType filtering is supported.
    Stream<dynamic> filteredStream =
        _allModelsStreamFromMethodChannel.where((event) {
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
    Map<String, dynamic> serializedItem =
        Map<String, dynamic>.from(serializedEvent["item"]);
    return serializedItem["modelName"] as String;
  }

  AmplifyException _deserializeExceptionFromMap(Map<String, dynamic> e) {
    if (e['errorCode'] == 'DataStoreException') {
      return DataStoreException.fromMap(Map<String, String>.from(e['details']));
    } else if (e['errorCode'] == 'AmplifyAlreadyConfiguredException') {
      return AmplifyAlreadyConfiguredException.fromMap(
          Map<String, String>.from(e['details']));
    } else {
      // This shouldn't happen. All exceptions coming from platform for
      // amplify_datastore should have a known code. Throw an unknown error.
      return DataStoreException(
          AmplifyExceptionMessages.missingExceptionMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  AmplifyException _deserializeException(PlatformException e) {
    if (e.code == 'DataStoreException') {
      return DataStoreException.fromMap(Map<String, String>.from(e.details));
    } else if (e.code == 'AmplifyAlreadyConfiguredException') {
      return AmplifyAlreadyConfiguredException.fromMap(
          Map<String, String>.from(e.details));
    } else {
      // This shouldn't happen. All exceptions coming from platform for
      // amplify_datastore should have a known code. Throw an unknown error.
      return DataStoreException(
          AmplifyExceptionMessages.missingExceptionMessage,
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  /// Ensure the event channel is properly set up on the native side.
  /// If not, it ensures event channel can receive event from native
  /// `observe` APIs. If already set up, this channel call resolves
  /// immediately.
  Future<void> _setUpObserveIfNeeded() {
    return _channel.invokeMethod('setUpObserve', {});
  }
}
