abstract class HttpRequest {
  /// The URI to which the request is relative.
  Uri get baseUri;

  /// The HTTP method.
  String get method;

  /// The path of the operation.
  String get path;

  /// The host prefix.
  String? get hostPrefix => null;

  /// The HTTP headers.
  final Map<String, String> headers = {};

  /// The HTTP query parameters.
  final Map<String, String> queryParameters = {};
}
