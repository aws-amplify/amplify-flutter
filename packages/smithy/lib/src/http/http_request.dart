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
    this.kind,
    this.type, {
    this.retryConfig,
    this.statusCode,
  });

  final ErrorKind kind;
  final Type type;
  final RetryConfig? retryConfig;
  final int? statusCode;

  @override
  List<Object?> get props => [kind, type, retryConfig, statusCode];
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

  /// The success code for the operation.
  int get successCode;

  /// The HTTP headers.
  BuiltMap<String, String> get headers;

  /// The HTTP query parameters.
  BuiltListMultimap<String, String> get queryParameters;
}

abstract class HttpResponse
    implements Built<HttpResponse, HttpResponseBuilder> {
  factory HttpResponse([void Function(HttpResponseBuilder) updates]) =
      _$HttpResponse;
  HttpResponse._();

  /// The response status code.
  int get statusCode;

  /// The response body.
  Stream<List<int>> get body;

  /// The HTTP headers.
  BuiltMap<String, String> get headers;
}
