import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'enum_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class EnumTrait with AWSSerializable implements Trait<EnumTrait> {
  const EnumTrait(this.definitions);

  factory EnumTrait.fromJson(Object? json) =>
      _$EnumTraitFromJson(<String, Object?>{
        'definitions': json as List,
      });

  static const id = ShapeId.core('enum');

  final List<EnumDefinition> definitions;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [definitions];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$EnumTraitToJson(this);

  @override
  EnumTrait get value => this;
}
