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

import 'package:amplify_api/src/graphql/graphql_response_decoder.dart';
import 'package:amplify_api/src/graphql/graphql_subscription_event.dart';
import 'package:amplify_api/src/graphql/graphql_subscription_transformer.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import '../amplify_api.dart';

part 'auth_token.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/api');

/// {@template amplify_api.amplify_api_method_channel}
/// The method channel implementation of [AmplifyAPI].
///
/// Used on iOS and Android clients.
/// {@endtemplate}
class AmplifyAPIMethodChannel extends AmplifyAPI {
  /// {@macro amplify_api.amplify_api_method_channel}
  AmplifyAPIMethodChannel({
    List<APIAuthProvider> authProviders = const [],
    this.modelProvider,
  }) : super.protected() {
    authProviders.forEach(registerAuthProvider);
  }

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
    handleData: (
      dynamic data,
      EventSink<GraphQLSubscriptionEvent> eventSink,
    ) {
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
        _subscriptions.clear();
        return;
      }
      final subscriptionId = error.message;
      if (subscriptionId == null ||
          !_subscriptions.containsKey(subscriptionId)) {
        eventSink.addError(error, stackTrace);
        _subscriptions.clear();
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

  final Map<String, Stream<GraphQLResponse>> _subscriptions = {};

  /// The registered [APIAuthProvider] instances.
  final Map<APIAuthorizationType, APIAuthProvider> _authProviders = {};

  @override
  final ModelProviderInterface? modelProvider;

  @override
  Future<void> addPlugin() async {
    try {
      setupAuthProviders();
      await _channel.invokeMethod<void>('addPlugin', {
        'authProviders':
            _authProviders.keys.map((key) => key.rawValue).toList(),
      });
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
  void registerAuthProvider(APIAuthProvider authProvider) {
    _authProviders[authProvider.type] = authProvider;
  }

  /// Sets up the platform binding for requesting tokens from the native side.
  @visibleForTesting
  void setupAuthProviders() {
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'getLatestAuthToken') {
        final providerStr = call.arguments as String?;
        if (providerStr == null) {
          throw PlatformException(code: 'BAD_ARGUMENTS');
        }
        final provider = APIAuthorizationTypeX.from(providerStr);
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
        return authProvider.authToken;
      }
      throw PlatformException(code: 'UNKNOWN');
    });
  }

  @override
  CancelableOperation<GraphQLResponse<T>> query<T>(
      {required GraphQLRequest<T> request}) {
    Future<GraphQLResponse<T>> responseFuture =
        _getMethodChannelResponse(methodName: 'query', request: request);
    return CancelableOperation.fromFuture(responseFuture);
  }

  @override
  CancelableOperation<GraphQLResponse<T>> mutate<T>(
      {required GraphQLRequest<T> request}) {
    Future<GraphQLResponse<T>> responseFuture =
        _getMethodChannelResponse(methodName: 'mutate', request: request);
    return CancelableOperation.fromFuture(responseFuture);
  }

  @override
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) {
    final subscriptionId = request.id;
    if (_subscriptions.containsKey(subscriptionId)) {
      onEstablished?.call();
      return _subscriptions[subscriptionId]! as Stream<GraphQLResponse<T>>;
    }
    return _subscriptions[subscriptionId] = _allSubscriptionsStream
        .where((event) => event.subscriptionId == subscriptionId)
        .transform(GraphQLSubscriptionTransformer<T>(request))
        .asBroadcastStream(
          onListen: (_) => _setupSubscription(
            id: subscriptionId,
            request: request,
            onEstablished: onEstablished,
          ),
          onCancel: (_) {
            _subscriptions.remove(subscriptionId);
            cancelRequest(subscriptionId);
          },
        );
  }

  Future<GraphQLResponse<T>> _getMethodChannelResponse<T>({
    required String methodName,
    required GraphQLRequest<T> request,
  }) async {
    try {
      final result = await _channel.invokeMapMethod<String, dynamic>(
        methodName,
        request.serializeAsMap(),
      );
      if (result == null) {
        throw const AmplifyException(
          AmplifyExceptionMessages.nullReturnedFromMethodChannel,
        );
      }
      final errors = _deserializeGraphQLResponseErrors(result);

      GraphQLResponse<T> response = GraphQLResponseDecoder.instance.decode<T>(
          request: request, data: result['data'] as String?, errors: errors);

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

  Future<AWSStreamedHttpResponse> _restResponseHelper({
    required String methodName,
    required String path,
    required String cancelToken,
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) async {
    final bodyBytes =
        body != null ? Uint8List.fromList(await body.single) : null;
    final restOptions = RestOptions(
        path: path,
        body: bodyBytes,
        apiName: apiName,
        queryParameters: queryParameters as Map<String, String>?,
        headers: headers);
    return _callNativeRestMethod(methodName, cancelToken, restOptions);
  }

  CancelableOperation<AWSStreamedHttpResponse> _restFunctionHelper({
    required String methodName,
    required String path,
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    // Send Request cancelToken to Native
    String cancelToken = UUID.getUUID();
    final responseFuture = _restResponseHelper(
        methodName: methodName,
        path: path,
        cancelToken: cancelToken,
        body: body,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);

    return CancelableOperation.fromFuture(responseFuture,
        onCancel: () => cancelRequest(cancelToken));
  }

  Future<AWSStreamedHttpResponse> _callNativeRestMethod(
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

  AWSStreamedHttpResponse _formatRestResponse(Map<String, dynamic> res) {
    final statusCode = res['statusCode'] as int;
    final headers = res['headers'] as Map?;
    final rawResponseBody = res['data'] as Uint8List?;

    return AWSStreamedHttpResponse(
        statusCode: statusCode,
        body: Stream.value(rawResponseBody?.toList() ?? []));
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    return _restFunctionHelper(
        methodName: 'get',
        path: path,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> put(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    return _restFunctionHelper(
        methodName: 'put',
        path: path,
        body: body,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> post(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    return _restFunctionHelper(
        methodName: 'post',
        path: path,
        body: body,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> delete(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    return _restFunctionHelper(
        methodName: 'delete',
        path: path,
        body: body,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> head(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    return _restFunctionHelper(
        methodName: 'head',
        path: path,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);
  }

  @override
  CancelableOperation<AWSStreamedHttpResponse> patch(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, dynamic>? queryParameters,
    String? apiName,
  }) {
    return _restFunctionHelper(
        methodName: 'patch',
        path: path,
        body: body,
        headers: headers,
        queryParameters: queryParameters,
        apiName: apiName);
  }

  /// Cancels a request with a given request ID.
  @Deprecated('Use .cancel() on CancelableOperation instead.')
  Future<void> cancelRequest(String cancelToken) async {
    print('Attempting to cancel Operation $cancelToken');

    try {
      await _channel.invokeMethod<void>('cancel', cancelToken);
      print('Cancel succeeded for Operation: $cancelToken');
    } on PlatformException catch (e) {
      print('Cancel request failed due to: $e');
    }
  }

  // ====== GENERAL METHODS ======

  ApiException _deserializeException(PlatformException e) {
    print(e.message);

    if (e.code == 'ApiException') {
      return ApiException.fromMap(
        Map<String, String>.from(e.details as Map),
      );
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
