import 'package:smithy/smithy.dart';

/// {@template smithy.smithy_http_exception}
/// A [SmithyException] with HTTP context.
/// {@endtemplate}
abstract class SmithyHttpException implements SmithyException {
  /// {@macro smithy.smithy_http_exception}
  const factory SmithyHttpException({
    required int statusCode,
    Map<String, String>? headers,
  }) = _UnknownSmithyHttpException;

  const SmithyHttpException._();

  /// The HTTP response status code.
  int? get statusCode;

  /// The HTTP response headers.
  Map<String, String>? get headers;
}

class _UnknownSmithyHttpException extends SmithyHttpException {
  const _UnknownSmithyHttpException({
    required this.statusCode,
    Map<String, String>? headers,
  })  : headers = headers ?? const {},
        super._();

  @override
  final int statusCode;

  @override
  final Map<String, String> headers;

  @override
  String get message => 'An unknown error occurred';

  @override
  RetryConfig? get retryConfig => null;

  @override
  ShapeId? get shapeId => null;
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
