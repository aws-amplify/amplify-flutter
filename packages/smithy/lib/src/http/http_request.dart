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
  Map<String, String> get headers => const {};

  /// The HTTP query parameters.
  Map<String, String> get queryParameters => const {};
}
