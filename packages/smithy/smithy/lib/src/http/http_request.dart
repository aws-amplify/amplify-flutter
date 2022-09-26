// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
class SmithyError with AWSEquatable<SmithyError> {
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
  final Function builder;

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
  factory HttpRequestContext(
          [void Function(HttpRequestContextBuilder) updates]) =
      _$HttpRequestContext;
  HttpRequestContext._();

  /// The service name to use when signing the request.
  String? get awsSigningService;

  /// The region to use when signing the request.
  String? get awsSigningRegion;
}
