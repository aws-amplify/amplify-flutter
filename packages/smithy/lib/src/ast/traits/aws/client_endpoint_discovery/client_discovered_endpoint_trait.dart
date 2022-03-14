import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'client_discovered_endpoint_trait.g.dart';

@ShapeIdConverter()
@NullableShapeIdConverter()
@JsonSerializable()
class ClientDiscoveredEndpointTrait
    with AWSSerializable
    implements Trait<ClientDiscoveredEndpointTrait> {
  const ClientDiscoveredEndpointTrait({
    required this.required,
  });

  factory ClientDiscoveredEndpointTrait.fromJson(Object? json) =>
      _$ClientDiscoveredEndpointTraitFromJson(
          (json as Map).cast<String, Object?>());

  static const id =
      ShapeId(namespace: 'aws.api', shape: 'clientDiscoveredEndpoint');

  final bool required;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [required];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ClientDiscoveredEndpointTraitToJson(this);

  @override
  ClientDiscoveredEndpointTrait get value => this;
}
