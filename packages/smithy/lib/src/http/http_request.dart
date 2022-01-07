import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'http_request.g.dart';

abstract class HttpRequest implements Built<HttpRequest, HttpRequestBuilder> {
  factory HttpRequest([void Function(HttpRequestBuilder) updates]) =
      _$HttpRequest;
  HttpRequest._();

  /// The URI to which the request is relative.
  String get host;

  /// The HTTP method.
  String get method;

  /// The path of the operation.
  String get path;

  /// The host prefix.
  String? get hostPrefix;

  /// The HTTP headers.
  BuiltMap<String, String> get headers;

  /// The HTTP query parameters.
  BuiltListMultimap<String, String> get queryParameters;
}
