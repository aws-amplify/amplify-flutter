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

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';

import 'amplify_api.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/api');

class AmplifyAPIMethodChannel extends AmplifyAPI {
  var _allSubscriptionsStream = null;

  // ====== GraphQL ======
  @override
  GraphQLOperation<T> query<T>({@required GraphQLRequest<T> request}) {
    Future<GraphQLResponse<T>> response =
        _getMethodChannelResponse(methodName: 'query', request: request);

    //TODO: Cancel implementation will be added along with REST API as it is shared
    GraphQLOperation<T> result = GraphQLOperation<T>(
        cancel: () {
          cancelRequest(request.cancelToken);
        },
        response: response);

    return result;
  }

  @override
  GraphQLOperation<T> mutate<T>({@required GraphQLRequest<T> request}) {
    Future<GraphQLResponse<T>> response =
        _getMethodChannelResponse(methodName: 'mutate', request: request);

    //TODO: Cancel implementation will be added along with REST API as it is shared
    GraphQLOperation<T> result = GraphQLOperation<T>(
        cancel: () {
          cancelRequest(request.cancelToken);
        },
        response: response);

    return result;
  }

  @override
  GraphQLSubscriptionOperation<T> subscribe<T>(
      {@required GraphQLRequest<T> request,
      @required Function(GraphQLResponse<T>) onData,
      Function() onEstablished,
      Function(dynamic) onError,
      Function() onDone}) {
    const _eventChannel =
        EventChannel('com.amazonaws.amplify/api_observe_events');
    _allSubscriptionsStream =
        _allSubscriptionsStream ?? _eventChannel.receiveBroadcastStream(0);

    //TODO: Either re-name the cancelToken field to id, or remove entirely
    final subscriptionId = request.cancelToken;

    _setupSubscription(
      id: subscriptionId,
      request: request,
      onEstablished: onEstablished,
    );

    Stream<Map<String, dynamic>> filteredStream = _allSubscriptionsStream
        .where((event) {
          return event["id"] == subscriptionId;
        })
        .map((event) => {'type': event['type'], 'payload': event['payload']})
        .asBroadcastStream()
        .cast<Map<String, dynamic>>();

    StreamSubscription _subscription = filteredStream.listen((event) {
      if (event['type'] == 'DONE') {
        onDone();
      } else {
        final payload = new Map<String, dynamic>.from(event['payload']);

        final errors = _deserializeGraphQLResponseErrors(payload);

        GraphQLResponse<T> response =
            GraphQLResponse<T>(data: payload['data'], errors: errors);
        onData(response);
      }
    });

    //TODO: This should convert the exception to APIException if present
    _subscription.onError(onError);

    Function cancel = () {
      _subscription.cancel();
      cancelRequest(subscriptionId);
    };

    return GraphQLSubscriptionOperation(cancel: cancel);
  }

  Future<GraphQLResponse<T>> _getMethodChannelResponse<T>({
    @required methodName,
    @required GraphQLRequest<T> request,
  }) async {
    try {
      final Map<String, dynamic> result =
          await _channel.invokeMapMethod<String, dynamic>(
        methodName,
        request.serializeAsMap(),
      );

      final errors = _deserializeGraphQLResponseErrors(result);

      GraphQLResponse<T> response =
          GraphQLResponse<T>(data: result['data'], errors: errors);

      return response;
    } on PlatformException catch (e) {
      throw _formatError(e);
    }
  }

  Future<void> _setupSubscription({
    @required String id,
    @required GraphQLRequest request,
    void Function() onEstablished,
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
      throw _formatError(e);
    }
  }

  // ====== RestAPI ======
  @visibleForTesting
  RestOperation _restFunctionHelper(
      {@required String methodName, @required RestOptions restOptions}) {
    // Send Request cancelToken to Native
    String cancelToken = UUID.getUUID();

    Future<RestResponse> futureResponse =
        _callNativeRestMethod(methodName, cancelToken, restOptions);

    return new RestOperation(
        response: futureResponse, cancel: () => {cancelRequest(cancelToken)});
  }

  Future<RestResponse> _callNativeRestMethod(
      String methodName, String cancelToken, RestOptions restOptions) async {
    // Prepare map input
    Map<String, dynamic> inputsMap = new Map<String, dynamic>();
    inputsMap["restOptions"] = restOptions.serializeAsMap();
    inputsMap["cancelToken"] = cancelToken;

    // Attempt switch to proper async
    try {
      final Map<String, dynamic> data = await _channel
          .invokeMapMethod<String, dynamic>(methodName, inputsMap);
      return _formatRestResponse(data);
    } on PlatformException catch (e) {
      throw (_formatError(e));
    }
  }

  RestResponse _formatRestResponse(Map<String, dynamic> res) {
    if (res.containsKey("data")) {
      return RestResponse(data: res["data"] as Uint8List);
    } else {
      throw new Exception("Malformed RestResponse");
    }
  }

  @override
  RestOperation get({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "get", restOptions: restOptions);
  }

  @override
  RestOperation put({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "put", restOptions: restOptions);
  }

  @override
  RestOperation post({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "post", restOptions: restOptions);
  }

  @override
  RestOperation delete({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "delete", restOptions: restOptions);
  }

  @override
  RestOperation head({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "head", restOptions: restOptions);
  }

  @override
  RestOperation patch({@required RestOptions restOptions}) {
    return _restFunctionHelper(methodName: "patch", restOptions: restOptions);
  }

  @override
  void cancelRequest(String cancelToken) async {
    print("Attempting to cancel Operation " + cancelToken);

    await _channel.invokeMethod("cancel", cancelToken).then((result) {
      print("Cancel succeeded for Operation: " + cancelToken);
    }).catchError((e) {
      print("Cancel request failed due to: " + e.message + " " + e.code);
    });
  }

  // ====== GENERAL METHODS ======

  ApiError _formatError(PlatformException e) {
    return ApiError(code: e.code, message: e.message, details: e.details);
  }

  //TODO: Deserialize all fields of the GraphQLResponseError as per spec
  List<GraphQLResponseError> _deserializeGraphQLResponseErrors(Map response) {
    if (response['errors'] != null) {
      final errors = response['errors'] as List;
      if (errors.length > 0) {
        final graphQLErrors = errors
            .map((message) => GraphQLResponseError(message: message))
            .toList();
        return graphQLErrors;
      }
    }
    return [];
  }
}
