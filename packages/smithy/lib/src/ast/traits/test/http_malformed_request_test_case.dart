import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_malformed_request_test_case.g.dart';

@JsonSerializable()
@ShapeIdConverter()
class HttpMalformedRequestTestCase
    with AWSSerializable, AWSEquatable<HttpMalformedRequestTestCase> {
  const HttpMalformedRequestTestCase({
    this.documentation,
    required this.id,
    required this.protocol,
    required this.request,
    required this.response,
    this.tags = const [],
  });

  factory HttpMalformedRequestTestCase.fromJson(Map<String, Object?> json) =>
      _$HttpMalformedRequestTestCaseFromJson(json);

  final String? documentation;
  final String id;
  final ShapeId protocol;
  final HttpMalformedRequestDefinition request;
  final HttpMalformedResponseDefinition response;
  final List<String> tags;

  @override
  List<Object?> get props => [
        documentation,
        id,
        protocol,
        request,
        response,
        tags,
      ];

  @override
  Map<String, Object?> toJson() => _$HttpMalformedRequestTestCaseToJson(this);
}
