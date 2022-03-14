import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'http_response_tests_trait.g.dart';

/// Defines protocol tests for malformed HTTP request handling.
@ShapeIdConverter()
@JsonSerializable()
class HttpResponseTestsTrait
    with AWSSerializable
    implements Trait<HttpResponseTestsTrait> {
  const HttpResponseTestsTrait(this.testCases);

  factory HttpResponseTestsTrait.fromJson(Object? json) =>
      _$HttpResponseTestsTraitFromJson(<String, Object?>{'testCases': json});

  static const id =
      ShapeId(namespace: 'smithy.test', shape: 'httpResponseTests');

  final List<HttpResponseTestCase> testCases;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [testCases];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$HttpResponseTestsTraitToJson(this);

  @override
  HttpResponseTestsTrait get value => this;
}
