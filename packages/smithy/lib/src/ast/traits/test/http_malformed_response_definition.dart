import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

import 'http_malformed_response_body_definition.dart';

part 'http_malformed_response_definition.g.dart';

/// Defines the response expected by an HttpMalformedRequest test case.
@JsonSerializable()
class HttpMalformedResponseDefinition
    with AWSSerializable, AWSEquatable<HttpMalformedResponseDefinition> {
  const HttpMalformedResponseDefinition({
    this.body,
    required this.code,
    this.headers = const {},
  });

  factory HttpMalformedResponseDefinition.fromJson(Map<String, Object?> json) =>
      _$HttpMalformedResponseDefinitionFromJson(json);

  final HttpMalformedResponseBodyDefinition? body;
  final int code;
  final Map<String, String> headers;

  @override
  Map<String, Object?> toJson() =>
      _$HttpMalformedResponseDefinitionToJson(this);

  @override
  List<Object?> get props => [
        body,
        code,
        headers,
      ];
}
