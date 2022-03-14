import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'http_malformed_response_body_definition.g.dart';

/// Defines the response expected by an HttpMalformedRequest test case.
@JsonSerializable()
class HttpMalformedResponseBodyDefinition
    with AWSSerializable, AWSEquatable<HttpMalformedResponseBodyDefinition> {
  const HttpMalformedResponseBodyDefinition({
    this.contents,
    required this.mediaType,
    this.messageRegex,
  });

  factory HttpMalformedResponseBodyDefinition.fromJson(
    Map<String, Object?> json,
  ) =>
      _$HttpMalformedResponseBodyDefinitionFromJson(json);

  final String? contents;
  final String mediaType;
  final String? messageRegex;

  @override
  List<Object?> get props => [
        contents,
        mediaType,
        messageRegex,
      ];

  @override
  Map<String, Object?> toJson() =>
      _$HttpMalformedResponseBodyDefinitionToJson(this);
}
