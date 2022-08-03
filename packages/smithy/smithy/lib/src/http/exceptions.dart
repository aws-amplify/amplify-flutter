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

import 'package:smithy/smithy.dart';

/// {@template smithy.smithy_http_exception}
/// A [SmithyException] with HTTP context.
/// {@endtemplate}
abstract class SmithyHttpException implements SmithyException {
  /// {@macro smithy.smithy_http_exception}
  const factory SmithyHttpException({
    required int statusCode,
    required String body,
    Map<String, String>? headers,
  }) = UnknownSmithyHttpException;

  const SmithyHttpException._();

  /// The HTTP response status code.
  int? get statusCode;

  /// The HTTP response headers.
  Map<String, String>? get headers;
}

class UnknownSmithyHttpException extends SmithyHttpException {
  const UnknownSmithyHttpException({
    required this.statusCode,
    required this.body,
    Map<String, String>? headers,
  })  : headers = headers ?? const {},
        super._();

  @override
  final int statusCode;

  @override
  final Map<String, String> headers;

  /// The HTTP response body.
  final String body;

  @override
  String get message => 'An unknown error occurred';

  @override
  RetryConfig? get retryConfig => null;

  @override
  ShapeId? get shapeId => null;

  @override
  Exception? get underlyingException => null;
}

class MissingLabelException<T> implements Exception {
  MissingLabelException(this.input, this.label);

  final T input;
  final String label;

  @override
  String toString() {
    return 'Missing label {$label} for input $input';
  }
}
