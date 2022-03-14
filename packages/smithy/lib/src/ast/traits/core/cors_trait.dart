import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'cors_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class CorsTrait with AWSSerializable implements Trait<CorsTrait> {
  const CorsTrait({
    this.origin = CorsTrait.defaultOrigin,
    this.maxAge = CorsTrait.defaultMaxAge,
    this.additionalAllowedHeaders = const {},
    this.additionalExposedHeaders = const {},
  });

  factory CorsTrait.fromJson(Object? json) =>
      _$CorsTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('cors');
  static const defaultOrigin = '*';
  static const defaultMaxAge = 600;

  final String origin;
  final int maxAge;
  final Set<String> additionalAllowedHeaders;
  final Set<String> additionalExposedHeaders;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [
        origin,
        maxAge,
        additionalAllowedHeaders,
        additionalExposedHeaders,
      ];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$CorsTraitToJson(this);

  @override
  CorsTrait get value => this;
}
