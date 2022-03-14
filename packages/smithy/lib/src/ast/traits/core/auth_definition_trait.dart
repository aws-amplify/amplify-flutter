import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'auth_definition_trait.g.dart';

@ShapeIdConverter()
@JsonSerializable()
class AuthDefinitionTrait
    with AWSSerializable
    implements Trait<AuthDefinitionTrait> {
  const AuthDefinitionTrait([this.traits = const []]);

  factory AuthDefinitionTrait.fromJson(Object? json) =>
      _$AuthDefinitionTraitFromJson((json as Map).cast<String, Object?>());

  static final id = ShapeId.parse('smithy.api#authDefinition');

  final List<ShapeId> traits;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [traits];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$AuthDefinitionTraitToJson(this);

  @override
  AuthDefinitionTrait get value => this;
}
