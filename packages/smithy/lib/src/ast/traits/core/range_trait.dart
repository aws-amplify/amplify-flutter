import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'range_trait.g.dart';

/// Constrains a shape to minimum and maximum numeric range.
@ShapeIdConverter()
@JsonSerializable()
class RangeTrait implements Trait<RangeTrait> {
  const RangeTrait({
    this.min,
    this.max,
  });

  factory RangeTrait.fromJson(Object? json) =>
      _$RangeTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('range');

  final double? min; // TODO: BigDecimal
  final double? max; // TODO: BigDecimal

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [min, max];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$RangeTraitToJson(this);

  @override
  RangeTrait get value => this;
}
