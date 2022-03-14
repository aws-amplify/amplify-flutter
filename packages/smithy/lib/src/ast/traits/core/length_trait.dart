import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'length_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class LengthTrait implements Trait<LengthTrait> {
  const LengthTrait({
    this.min,
    this.max,
  });

  factory LengthTrait.fromJson(Object? json) =>
      _$LengthTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('length');

  final int? min;
  final int? max;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [min, max];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$LengthTraitToJson(this);

  @override
  LengthTrait get value => this;
}
