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

import 'package:amplify_core/types/index.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:flutter/services.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'types/DataStoreHubEvents/DataStoreHubEvent.dart';
import 'types/DataStoreHubEvents/ModelSyncedEvent.dart';
import 'stream_utils/stream_group.dart';
import 'stream_utils/throttle.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/datastore');

/// An implementation of [AmplifyDataStore] that uses method channels.
class AmplifyDataStoreMethodChannel extends AmplifyDataStore {
  dynamic _allModelsStreamFromMethodChannel = null;

  Stream<ModelSyncedEvent> _modelSyncedEventStream = AmplifyDataStore
      .streamWrapper.datastoreStreamController.stream
      .where((event) => event is DataStoreHubEvent)
      .cast<DataStoreHubEvent>()
      .map((event) => event.payload)
      .where((event) => event is ModelSyncedEvent)
      .cast<ModelSyncedEvent>();

  Map<String, bool> _modelSyncCache = {};

  /// Internal use constructor
  AmplifyDataStoreMethodChannel() : super.tokenOnly();

  /// This method instantiates the native DataStore plugins with plugin
  /// configurations. This needs to happen before Amplify.configure() can be
  /// called.
  @override
  Future<void> configureDataStore({
    ModelProviderInterface? modelProvider,
    List<DataStoreSyncExpression>? syncExpressions,
    int? syncInterval,
    int? syncMaxRecords,
    int? syncPageSize,
  }) async {
    _channel.setMethodCallHandler((MethodCall call) async {
      switch (call.method) {
        case 'resolveQueryPredicate':
          String? id = call.arguments;
          if (id == null) {
            throw ArgumentError(
                'resolveQueryPredicate must be called with an id');
          }
          return syncExpressions!
              .firstWhere((syncExpression) => syncExpression.id == id)
              .resolveQueryPredicate()
              .serializeAsMap();
        default:
          throw UnimplementedError('${call.method} has not been implemented.');
      }
    });
    _initModelSyncCache();
    try {
      return await _channel
          .invokeMethod('configureDataStore', <String, dynamic>{
        'modelSchemas': modelProvider?.modelSchemas
            .map((schema) => schema.toMap())
            .toList(),
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
  /// Currently, it only sets up an event channel to carry datastore observe
  /// and is invoked as the last step of Amplify.configure(). This must be
  /// called before any observe() method is called.
  @override
  Future<void> configure({String? configuration}) async {
    return _channel.invokeMethod('setUpObserve', {});
  }

  @override
  Future<List<T>> query<T extends Model>(ModelType<T> modelType,
      {QueryPredicate? where,
      QueryPagination? pagination,
      List<QuerySortBy>? sortBy}) async {
    try {
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
  Future<void> delete<T extends Model>(T model) async {
    try {
      await _channel.invokeMethod('delete', <String, dynamic>{
        'modelName': model.getInstanceType().modelName(),
        'serializedModel': model.toJson(),
      });
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  @override
  Future<void> save<T extends Model>(T model) async {
    try {
      var methodChannelSaveInput = <String, dynamic>{
        'modelName': model.getInstanceType().modelName(),
        'serializedModel': model.toJson(),
      };
      await _channel.invokeMethod('save', methodChannelSaveInput);
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  @override
  Stream<SubscriptionEvent<T>> observe<T extends Model>(
      ModelType<T> modelType) {
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
    return filteredStream
        .map((event) => SubscriptionEvent.fromMap(event, modelType))
        .asBroadcastStream()
        .cast<SubscriptionEvent<T>>();
  }

  @override
  Stream<QuerySnapshot<T>> observeQuery<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    List<QuerySortBy>? sortBy,
  }) {
    // cached QuerySnapshot
    late QuerySnapshot<T> querySnapshot;

    // cached subscription events that occur prior to the
    // initial query completing
    List<SubscriptionEvent<T>> subscriptionEvents = [];

    // used to track when the initial query completes
    bool hasInitialQueryCompleted = false;

    Stream<QuerySnapshot<T>> syncStatusStream = _isModelSynced(modelType)
        .map<QuerySnapshot<T>?>((value) {
          if (value == querySnapshot.isSynced) {
            return null;
          }
          querySnapshot = querySnapshot.withSyncStatus(value);
          return querySnapshot;
        })
        .where((event) => event != null)
        .cast<QuerySnapshot<T>>();

    Stream<QuerySnapshot<T>> observeStream = this
        .observe(modelType)
        // TODO: Determine why observe is emitting duplicate events
        .distinct((a, b) =>
            a.eventType == b.eventType &&
            a.modelType == b.modelType &&
            a.item == b.item)
        .map<QuerySnapshot<T>?>((event) {
          // cache subscription events until the initial query is returned
          if (!hasInitialQueryCompleted) {
            subscriptionEvents.add(event);
            return null;
          }

          // TODO: remove - used for perf monitoring
          var start = DateTime.now();

          // apply the most recent event to the cached QuerySnapshot
          var updatedQuerySnapshot = querySnapshot.withSubscriptionEvent(
            event: event,
          );

          // if the snapshot has not changed, return null
          if (querySnapshot == updatedQuerySnapshot) {
            return null;
          }

          // TODO: remove - used for perf monitoring
          var end = DateTime.now();
          var ms = end.difference(start).inMicroseconds / 1000;
          var count = updatedQuerySnapshot.items.length;
          print(
              '[Perf Monitoring] Time to generate snapshot with $count models: $ms ms');

          // otherwise, update the cached QuerySnapshot and return it
          querySnapshot = updatedQuerySnapshot;
          return querySnapshot;
        })
        // filter out null values
        .where((event) => event != null)
        .cast<QuerySnapshot<T>>()
        .throttleCount(1000, until: (event) => event.isSynced);

    final queryFuture =
        this.query(modelType, where: where, sortBy: sortBy).then((value) {
      bool isSynced = _modelSyncCache[modelType.modelName()] ?? false;
      // cache the intitial QuerySnapshot
      querySnapshot = QuerySnapshot(
        items: value,
        events: [],
        isSynced: isSynced,
        where: where,
        sortBy: sortBy,
      );

      // apply any cached subscription events
      // TODO: Is this needed? It seems like iOS/Android will not apply updates while a query is active
      for (var event in subscriptionEvents) {
        querySnapshot = querySnapshot.withSubscriptionEvent(event: event);
      }

      // mark initial query as complete
      hasInitialQueryCompleted = true;

      // return the QuerySnapshot
      return querySnapshot;
    });

    final queryStream = Stream.fromFuture(queryFuture);

    return StreamGroup.merge([
      queryStream,
      observeStream,
      syncStatusStream,
    ]);
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

  Stream<bool> _isModelSynced(ModelType type) {
    return _modelSyncedEventStream
        .where((event) => event.modelName == type.modelName())
        .map((event) => _isSyncEvent(event));
  }

  void _initModelSyncCache() {
    _modelSyncedEventStream.listen((event) {
      _modelSyncCache[event.modelName] = _isSyncEvent(event);
    });
  }

  bool _isSyncEvent(ModelSyncedEvent event) =>
      event.isFullSync || event.isDeltaSync;

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
}
