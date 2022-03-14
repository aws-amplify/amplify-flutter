import 'package:aws_common/aws_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:smithy/ast.dart';

part 'client_endpoint_discovery_trait.g.dart';

@ShapeIdConverter()
@NullableShapeIdConverter()
@JsonSerializable()
class ClientEndpointDiscoveryTrait
    with AWSSerializable
    implements Trait<ClientEndpointDiscoveryTrait> {
  const ClientEndpointDiscoveryTrait({
    required this.operation,
    this.error,
  });

  factory ClientEndpointDiscoveryTrait.fromJson(Object? json) =>
      _$ClientEndpointDiscoveryTraitFromJson(
          (json as Map).cast<String, Object?>());

  static const id =
      ShapeId(namespace: 'aws.api', shape: 'clientEndpointDiscovery');

  final ShapeId operation;
  final ShapeId? error;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [operation, error];

  @override
  ShapeId get shapeId => id;

  @override
  Map<String, Object?> toJson() => _$ClientEndpointDiscoveryTraitToJson(this);

  @override
  ClientEndpointDiscoveryTrait get value => this;
}
