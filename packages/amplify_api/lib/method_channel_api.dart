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

import 'dart:async';
import 'dart:typed_data';

import 'package:amplify_api/graphql/graphql_subscription_event.dart';
import 'package:amplify_api/graphql/graphql_subscription_transformer.dart';
import 'package:amplify_core/types/index.dart';
import 'package:flutter/services.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';

import 'amplify_api.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/api');

class AmplifyAPIMethodChannel extends AmplifyAPI {
  static const _eventChannel =
      EventChannel('com.amazonaws.amplify/api_observe_events');
  late final Stream<GraphQLSubscriptionEvent> _allSubscriptionsStream =
      _eventChannel
          .receiveBroadcastStream(0)
          .transform(_graphQLSubscriptionEventTransformer);

  /// Transforms incoming platform events into typed [GraphQLSubscriptionEvent] objects
  /// and relays errors to the correct subscription stream.
  late final _graphQLSubscriptionEventTransformer =
      StreamTransformer<dynamic, GraphQLSubscriptionEvent>.fromHandlers(
    handleData: (dynamic data, EventSink<GraphQLSubscriptionEvent> eventSink) {
      final eventJson = (data as Map).cast<String, dynamic>();
      eventSink.add(GraphQLSubscriptionEvent.fromJson(eventJson));
    },
    handleError: (
      Object error,
      StackTrace stackTrace,
      EventSink<GraphQLSubscriptionEvent> eventSink,
    ) {
      if (error is! PlatformException) {
        eventSink.addError(error, stackTrace);
        return;
      }
      final subscriptionId = error.message;
      if (subscriptionId == null ||
          !_subscriptions.containsKey(subscriptionId)) {
        eventSink.addError(error, stackTrace);
        return;
      }
      final errorEvent = GraphQLSubscriptionEvent(
        subscriptionId: subscriptionId,
        type: GraphQLSubscriptionEventType.error,
        error: _deserializeException(error),
      );
      eventSink.add(errorEvent);
    },
  );

  final Map<String, Stream> _subscriptions = {};
  @override
  Future<void> addPlugin() async {
    try {
      await _channel.invokeMethod<void>('addPlugin');
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException();
      } else {
        throw AmplifyException.fromMap((e.details as Map).cast());
      }
    }
  }

  // ====== GraphQL ======
  @override
  GraphQLOperation<T> query<T>({required GraphQLRequest<T> request}) {
    Future<GraphQLResponse<T>> response =
        _getMethodChannelResponse(methodName: 'query', request: request);

    //TODO: Cancel implementation will be added along with REST API as it is shared
    GraphQLOperation<T> result = GraphQLOperation<T>(
      cancel: () => cancelRequest(request.id),
      response: response,
    );

    return result;
  }

  @override
  GraphQLOperation<T> mutate<T>({required GraphQLRequest<T> request}) {
    Future<GraphQLResponse<T>> response =
        _getMethodChannelResponse(methodName: 'mutate', request: request);

    //TODO: Cancel implementation will be added along with REST API as it is shared
    GraphQLOperation<T> result = GraphQLOperation<T>(
      cancel: () => cancelRequest(request.id),
      response: response,
    );

    return result;
  }

  @override
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) {
    final subscriptionId = request.id;
    return (_subscriptions[subscriptionId] ??= _allSubscriptionsStream
        .where((event) => event.subscriptionId == subscriptionId)
        .transform(GraphQLSubscriptionTransformer<T>())
        .asBroadcastStream(
          onListen: (_) => _setupSubscription(
            id: subscriptionId,
            request: request,
            onEstablished: onEstablished,
          ),
          onCancel: (_) async {
            await cancelRequest(subscriptionId);
            _subscriptions.remove(subscriptionId);
          },
        )) as Stream<GraphQLResponse<T>>;
  }

  Future<GraphQLResponse<T>> _getMethodChannelResponse<T>({
    required String methodName,
    required GraphQLRequest<T> request,
  }) async {
    try {
      final Map<String, dynamic>? result =
          await _channel.invokeMapMethod<String, dynamic>(
        methodName,
        request.serializeAsMap(),
      );
      if (result == null) {
        throw const AmplifyException(
          AmplifyExceptionMessages.nullReturnedFromMethodChannel,
        );
      }
      final errors = _deserializeGraphQLResponseErrors(result);

      final response = GraphQLResponse<T>(
        data: result['data'] ?? '',
        errors: errors,
      );

      return response;
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  /// Handles subscription setup. Subscriptions are only established once
  /// the returned stream has a listener. This prevents the need for inflight
  /// cancelation and for buffering events.
  Future<void> _setupSubscription({
    required String id,
    required GraphQLRequest request,
    void Function()? onEstablished,
  }) async {
    try {
      await _channel.invokeMethod<String>(
        'subscribe',
        request.serializeAsMap(),
      );
      onEstablished?.call();
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  // ====== RestAPI ======
  RestOperation _restFunctionHelper(
      {required String methodName, required RestOptions restOptions}) {
    // Send Request cancelToken to Native
    String cancelToken = UUID.getUUID();

    Future<RestResponse> futureResponse =
        _callNativeRestMethod(methodName, cancelToken, restOptions);

    return RestOperation(
      response: futureResponse,
      cancel: () => cancelRequest(cancelToken),
    );
  }

  Future<RestResponse> _callNativeRestMethod(
      String methodName, String cancelToken, RestOptions restOptions) async {
    // Prepare map input
    Map<String, dynamic> inputsMap = <String, dynamic>{};
    inputsMap['restOptions'] = restOptions.serializeAsMap();
    inputsMap['cancelToken'] = cancelToken;

    // Attempt switch to proper async
    try {
      final Map<String, dynamic>? data = (await (_channel
          .invokeMapMethod<String, dynamic>(methodName, inputsMap)));
      if (data == null) {
        throw const AmplifyException(
          AmplifyExceptionMessages.nullReturnedFromMethodChannel,
        );
      }
      return _formatRestResponse(data);
    } on PlatformException catch (e) {
      throw _deserializeException(e);
    }
  }

  bool _shouldThrow(int statusCode) {
    return statusCode < 200 || statusCode > 299;
  }

  RestResponse _formatRestResponse(Map<String, dynamic> res) {
    final statusCode = res['statusCode'] as int;
    final headers = res['headers'] as Map?;
    final response = RestResponse(
      data: res['data'] as Uint8List?,
      headers: headers?.cast<String, String>(),
      statusCode: statusCode,
    );
    if (_shouldThrow(statusCode)) {
      throw RestException(response);
    }
    return response;
  }

  @override
  RestOperation get({required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: 'get', restOptions: restOptions);
  }

  @override
  RestOperation put({required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: 'put', restOptions: restOptions);
  }

  @override
  RestOperation post({required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: 'post', restOptions: restOptions);
  }

  @override
  RestOperation delete({required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: 'delete', restOptions: restOptions);
  }

  @override
  RestOperation head({required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: 'head', restOptions: restOptions);
  }

  @override
  RestOperation patch({required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: 'patch', restOptions: restOptions);
  }

  @override
  Future<void> cancelRequest(String cancelToken) async {
    print('Attempting to cancel Operation ' + cancelToken);

    try {
      await _channel.invokeMethod<void>('cancel', cancelToken);
      print('Cancel succeeded for Operation: ' + cancelToken);
    } on PlatformException catch (e) {
      print('Cancel request failed due to: $e');
    }
  }

  // ====== GENERAL METHODS ======

  ApiException _deserializeException(PlatformException e) {
    if (e.code == 'ApiException') {
      return ApiException.fromMap(Map<String, String>.from(e.details));
    } else {
      // This shouldn't happen. All exceptions coming from platform for
      // amplify_api should have a known code. Throw an unknown error.
      return ApiException(
        AmplifyExceptionMessages.missingExceptionMessage,
        recoverySuggestion: AmplifyExceptionMessages.missingRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  List<GraphQLResponseError> _deserializeGraphQLResponseErrors(
    Map<String, dynamic> response,
  ) {
    final errors = response['errors'] as List?;
    if (errors == null || errors.isEmpty) {
      return const [];
    }
    return errors
        .cast<Map>()
        .map((message) => GraphQLResponseError.fromJson(
              message.cast<String, dynamic>(),
            ))
        .toList();
  }
}
