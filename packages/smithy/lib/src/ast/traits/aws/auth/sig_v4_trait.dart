import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'sig_v4_trait.g.dart';

/// Adds AWS signature version 4 authentication to a service or operation.
@ShapeIdConverter()
@JsonSerializable()
class SigV4Trait with AWSSerializable implements Trait<SigV4Trait> {
  const SigV4Trait({
    required this.name,
  });

  factory SigV4Trait.fromJson(Object? json) =>
      _$SigV4TraitFromJson((json as Map).cast<String, Object?>());

  static const id = ShapeId(namespace: 'aws.auth', shape: 'sigv4');

  final String name;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [name];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$SigV4TraitToJson(this);

  @override
  SigV4Trait get value => this;
}
