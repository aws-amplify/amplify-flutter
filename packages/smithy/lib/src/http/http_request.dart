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
}
