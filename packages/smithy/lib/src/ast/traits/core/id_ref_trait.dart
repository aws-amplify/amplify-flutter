import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'id_ref_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class IdRefTrait implements Trait<IdRefTrait> {
  const IdRefTrait({
    this.selector = '*',
    required this.failWhenMissing,
    this.errorMessage,
  });

  factory IdRefTrait.fromJson(Object? json) =>
      _$IdRefTraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId.core('idRef');

  final String selector;
  final bool failWhenMissing;
  final String? errorMessage;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [selector, failWhenMissing, errorMessage];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$IdRefTraitToJson(this);

  @override
  IdRefTrait get value => this;
}
