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

import 'package:amplify_core/types/index.dart';
import 'package:flutter/services.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';

import 'amplify_api.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/api');

class AmplifyAPIMethodChannel extends AmplifyAPI {
  static const _eventChannel =
      EventChannel('com.amazonaws.amplify/api_observe_events');
  late final Stream<dynamic> _allSubscriptionsStream =
      _eventChannel.receiveBroadcastStream(0);

  @override
  Future<void> addPlugin() async {
    try {
      return await _channel.invokeMethod('addPlugin');
    } on PlatformException catch (e) {
      if (e.code == 'AmplifyAlreadyConfiguredException') {
        throw const AmplifyAlreadyConfiguredException(
            AmplifyExceptionMessages.alreadyConfiguredDefaultMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.alreadyConfiguredDefaultSuggestion);
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
      cancel: () => cancelRequest(request.cancelToken),
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
      cancel: () => cancelRequest(request.cancelToken),
      response: response,
    );

    return result;
  }

  @override
  GraphQLSubscriptionOperation<T> subscribe<T>({
    required GraphQLRequest<T> request,
    required Function(GraphQLResponse<T>) onData,
    Function()? onEstablished,
    Function(dynamic)? onError,
    Function()? onDone,
  }) {
    //TODO: Either re-name the cancelToken field to id, or remove entirely
    final subscriptionId = request.cancelToken;

    _setupSubscription(
      id: subscriptionId,
      request: request,
      onEstablished: onEstablished,
    );

    Stream<Map<String, dynamic>> filteredStream = _allSubscriptionsStream
        .cast<Map>()
        .where((event) {
          return event['id'] == subscriptionId;
        })
        .map((event) => <String, dynamic>{
              'type': event['type'],
              'payload': event['payload'],
            })
        .cast<Map<String, dynamic>>()
        .asBroadcastStream();

    StreamSubscription _subscription = filteredStream.listen((event) {
      if (event['type'] == 'DONE') {
        if (onDone != null) onDone();
      } else {
        final payload = (event['payload'] as Map).cast<String, dynamic>();
        final errors = _deserializeGraphQLResponseErrors(payload);

        GraphQLResponse<T> response =
            GraphQLResponse<T>(data: payload['data'], errors: errors);
        onData(response);
      }
    });

    _subscription.onError((dynamic subscriptionError) {
      if (subscriptionError is PlatformException) {
        subscriptionError = _deserializeException(subscriptionError);
      }

      print('Subscription failed with error: $subscriptionError');

      if (onError != null) {
        onError(subscriptionError);
      }
      _subscription.cancel();
    });

    void cancel() {
      _subscription.cancel();
      cancelRequest(subscriptionId);
    }

    return GraphQLSubscriptionOperation(cancel: cancel);
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

      if (onEstablished != null) {
        onEstablished();
      }
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
