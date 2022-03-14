import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_request_test_case.g.dart';

@JsonSerializable(anyMap: true)
@ShapeIdConverter()
@NullableShapeIdConverter()
class HttpRequestTestCase extends HttpMessageTestCase<HttpRequestTestCase>
    with AWSSerializable, AWSEquatable<HttpRequestTestCase> {
  const HttpRequestTestCase({
    required String id,
    String? documentation,
    required ShapeId protocol,
    ShapeId? authScheme,
    String? body,
    String? bodyMediaType,
    Map<String, Object?> params = const {},
    ShapeId? vendorParamsShape,
    Map<String, Object?> vendorParams = const {},
    Map<String, String> headers = const {},
    List<String> forbidHeaders = const [],
    List<String> requireHeaders = const [],
    List<String> tags = const [],
    AppliesTo? appliesTo,
    required this.method,
    required this.uri,
    this.host,
    this.resolvedHost,
    this.queryParams = const [],
    this.forbidQueryParams = const [],
    this.requireQueryParams = const [],
  }) : super(
          id: id,
          documentation: documentation,
          protocol: protocol,
          authScheme: authScheme,
          body: body,
          bodyMediaType: bodyMediaType,
          params: params,
          vendorParamsShape: vendorParamsShape,
          vendorParams: vendorParams,
          headers: headers,
          forbidHeaders: forbidHeaders,
          requireHeaders: requireHeaders,
          tags: tags,
          appliesTo: appliesTo,
        );

  factory HttpRequestTestCase.fromJson(Map<String, Object?> json) =>
      _$HttpRequestTestCaseFromJson(json);

  /// The expected serialized HTTP request method.
  final String method;

  /// The request-target of the HTTP request, not including the query string
  /// (for example, "/foo/bar").
  final String uri;

  /// The host or endpoint provided as input used to generate the HTTP request
  /// (for example, "example.com").
  ///
  /// host MAY contain a path to indicate a base path from which each operation
  /// in the service is appended to. For example, given a host of
  /// example.com/foo/bar and an operation path of /MyOperation, the resolved
  /// host of the operation is example.com and the resolved path is
  /// /foo/bar/MyOperation.
  final String? host;

  /// The expected host present in the Host header of the request, not including
  /// the path or scheme (for example, "prefix.example.com"). If no resolvedHost
  /// is defined, then no assertions are made about the resolved host for the
  /// request.
  ///
  /// This can differ from the `host` provided to the client if the operation
  /// has a member with the endpoint trait.
  ///
  /// Server implementations SHOULD ignore discrepancies in paths when comparing
  /// the [host] and [resolvedHost] properties.
  final String? resolvedHost;

  /// A list of the expected serialized query string parameters.
  ///
  /// Each element in the list is a query string key value pair that starts with
  /// the query string parameter name optionally followed by "=", optionally
  /// followed by the query string parameter value.
  ///
  /// For example, "foo=bar", "foo=", and "foo" are all valid values.
  ///
  /// **Note**: This kind of list is used instead of a map so that query string
  /// parameter values for lists can be represented using repeated key-value
  /// pairs.
  ///
  /// The query string parameter name and the value MUST appear in the format
  /// in which it is expected to be sent over the wire; if a key or value needs
  /// to be percent-encoded, then it MUST appear percent-encoded in this list.
  ///
  /// A serialized HTTP request is not in compliance with the protocol if any
  /// query string parameter defined in [queryParams] is not defined in the
  /// request or if the value of a query string parameter in the request differs
  /// from the expected value.
  ///
  /// [queryParams] applies no constraints on additional query parameters.
  final List<String> queryParams;

  /// A list of query string parameter names that must not appear in the
  /// serialized HTTP request.
  ///
  /// Each value MUST appear in the format in which it is sent over the wire;
  /// if a key needs to be percent-encoded, then it MUST appear percent-encoded
  /// in this list.
  final List<String> forbidQueryParams;

  /// A list of query string parameter names that MUST appear in the serialized
  /// request URI, but no assertion is made on the value.
  ///
  /// Each value MUST appear in the format in which it is sent over the wire;
  /// if a key needs to be percent-encoded, then it MUST appear percent-encoded
  /// in this list.
  final List<String> requireQueryParams;

  @override
  List<Object?> get props => [
        ...super.props,
        method,
        uri,
        host,
        resolvedHost,
        queryParams,
        forbidQueryParams,
        requireQueryParams,
      ];

  @override
  Map<String, Object?> toJson() => _$HttpRequestTestCaseToJson(this);
}
