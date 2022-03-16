import 'dart:convert';

import 'package:smithy/smithy.dart';

/// {@template smithy.smithy_http_exception}
/// A wrapper of [SmithyException] types with HTTP context.
/// {@endtemplate}
class SmithyHttpException implements SmithyException {
  /// {@macro smithy.smithy_http_exception}
  SmithyHttpException({
    required this.statusCode,
    Map<String, String>? headers,
    required this.body,
    required SmithyException this.underlyingException,
  }) : headers = headers ?? const {};

  /// {@macro smithy.smithy_http_exception}
  SmithyHttpException.unknown({
    required this.statusCode,
    Map<String, String>? headers,
    required this.body,
  })  : headers = headers ?? const {},
        underlyingException = null;

  /// The HTTP response status code.
  final int statusCode;

  /// The HTTP response headers.
  final Map<String, String> headers;

  /// The HTTP response body.
  final List<int> body;

  /// The underlying exception.
  final SmithyException? underlyingException;

  @override
  late final String message = underlyingException?.message ?? utf8.decode(body);

  @override
  RetryConfig? get retryConfig => underlyingException?.retryConfig;

  @override
  ShapeId? get shapeId => underlyingException?.shapeId;
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
