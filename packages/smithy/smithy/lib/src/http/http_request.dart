// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:smithy/smithy.dart';

part 'http_request.g.dart';

class RetryConfig with AWSEquatable<RetryConfig> {
  const RetryConfig({
    this.isThrottlingError = false,
  });

  final bool isThrottlingError;

  @override
  List<Object?> get props => [isThrottlingError];
}

@immutable
class SmithyError<Payload extends Object?, T extends SmithyException>
    with AWSEquatable<SmithyError<Payload, T>> {
  const SmithyError(
    this.shapeId,
    this.kind,
    this.type, {
    this.retryConfig,
    int? statusCode,
    required this.builder,
  }) : _statusCode = statusCode;

  final ShapeId shapeId;
  final ErrorKind kind;
  final Type type;
  final RetryConfig? retryConfig;
  final T Function(Payload, AWSBaseHttpResponse) builder;

  T build(Object? payload, AWSBaseHttpResponse response) {
    return builder(payload as Payload, response);
  }

  final int? _statusCode;
  int get statusCode => _statusCode ?? (kind == ErrorKind.client ? 400 : 500);

  @override
  List<Object?> get props => [shapeId, kind, type, retryConfig, statusCode];
}

abstract class HttpRequest implements Built<HttpRequest, HttpRequestBuilder> {
  factory HttpRequest([void Function(HttpRequestBuilder) updates]) =
      _$HttpRequest;
  HttpRequest._();

  /// The host prefix.
  String? get hostPrefix;

  /// The HTTP method.
  String get method;

  /// The path of the operation.
  String get path;

  /// The HTTP headers.
  BuiltMap<String, String> get headers;

  /// The HTTP query parameters.
  BuiltListMultimap<String, String> get queryParameters;

  /// Runtime request interceptors determined by operation input.
  BuiltList<HttpRequestInterceptor> get requestInterceptors;

  /// Runtime response interceptors determined by operation input.
  BuiltList<HttpResponseInterceptor> get responseInterceptors;
}

abstract class HttpResponse
    implements Built<HttpResponse, HttpResponseBuilder> {
  factory HttpResponse([void Function(HttpResponseBuilder) updates]) =
      _$HttpResponse;
  HttpResponse._();

  /// The HTTP headers.
  BuiltMap<String, String> get headers;
}

/// Context for interceptors when building an HTTP request. Values can be
/// updated by interceptors and used to communicate information to downstream
/// interceptors, without storing all of this on the request itself.
abstract class HttpRequestContext
    implements Built<HttpRequestContext, HttpRequestContextBuilder> {
  factory HttpRequestContext([
    void Function(HttpRequestContextBuilder) updates,
  ]) = _$HttpRequestContext;
  HttpRequestContext._();

  /// The service name to use when signing the request.
  String? get awsSigningService;

  /// The region to use when signing the request.
  String? get awsSigningRegion;
}

/// {@template smithy.http.smithy_http_request}
/// An [AWSBaseHttpRequest] wrapper with protocol interception support.
/// {@endtemplate}
class SmithyHttpRequest {
  /// {@macro smithy.http.smithy_http_request}
  SmithyHttpRequest(
    this._baseRequest, {
    List<HttpRequestInterceptor> requestInterceptors = const [],
    List<HttpResponseInterceptor> responseInterceptors = const [],
  })  : _requestInterceptors = requestInterceptors,
        _responseInterceptors = responseInterceptors;

  /// The pre-transformed [AWSBaseHttpRequest].
  final AWSBaseHttpRequest _baseRequest;
  final List<HttpRequestInterceptor> _requestInterceptors;
  final List<HttpResponseInterceptor> _responseInterceptors;

  /// Transforms [_baseRequest] using [_requestInterceptors].
  @visibleForTesting
  Future<AWSBaseHttpRequest> transformRequest({
    AWSHttpClient? baseClient,
    bool Function()? isCanceled,
  }) async {
    var request = _baseRequest;
    if (baseClient is AWSBaseHttpClient) {
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_overriding_member
      request = await baseClient.transformRequest(request);
    }
    for (final interceptor in _requestInterceptors) {
      if (isCanceled?.call() ?? false) {
        break;
      }
      final interception = interceptor.intercept(request);
      if (interception is Future<AWSBaseHttpRequest>) {
        request = await interception;
      } else {
        request = interception;
      }
    }
    return request;
  }

  /// Transforms [response] using [_responseInterceptors].
  Future<AWSBaseHttpResponse> _transformResponse(
    AWSBaseHttpResponse response, {
    AWSHttpClient? baseClient,
    bool Function()? isCanceled,
  }) async {
    if (baseClient is AWSBaseHttpClient) {
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_overriding_member
      response = await baseClient.transformResponse(response);
    }
    for (final interceptor in _responseInterceptors) {
      if (isCanceled?.call() ?? false) {
        break;
      }
      final interception = interceptor.intercept(response);
      if (interception is Future<AWSBaseHttpResponse>) {
        response = await interception;
      } else {
        response = interception;
      }
    }
    return response;
  }

  /// Transforms and sends [_baseRequest] with [client].
  AWSHttpOperation send({
    AWSHttpClient? client,
    FutureOr<void> Function()? onCancel,
  }) {
    final requestProgress = StreamController<int>.broadcast(sync: true);
    final responseProgress = StreamController<int>.broadcast(sync: true);

    final completer = CancelableCompleter<AWSBaseHttpResponse>(
      onCancel: () {
        requestProgress.close();
        responseProgress.close();
        onCancel?.call();
      },
    );
    Future<void>(() async {
      try {
        final request = await transformRequest(
          baseClient: client,
          isCanceled: () => completer.isCanceled,
        );
        final operation = request.send(
          // We extract the transformRequest/transformResponse methods of
          // `client` when specified. To avoid calling them twice in `send`,
          // send the request using its baseClient.
          // TODO(dnys1): Invert? Add interceptors option to Smithy operations?
          client: client is AWSBaseHttpClient ? client.baseClient : client,
        );
        unawaited(operation.requestProgress.forward(requestProgress));
        unawaited(operation.responseProgress.forward(responseProgress));
        completer.completeOperation(
          operation.operation.then(
            (response) => _transformResponse(
              response,
              baseClient: client,
              isCanceled: () => completer.isCanceled,
            ),
          ),
        );
      } on Object catch (e, st) {
        completer.completeError(e, st);
      }
    });
    return AWSHttpOperation(
      completer.operation,
      requestProgress: requestProgress.stream,
      responseProgress: responseProgress.stream,
      onCancel: onCancel,
    );
  }
}
