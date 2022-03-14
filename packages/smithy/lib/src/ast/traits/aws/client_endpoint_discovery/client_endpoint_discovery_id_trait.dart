import 'package:smithy/ast.dart';

class ClientEndpointDiscoveryIdTrait extends AnnotationTrait {
  const ClientEndpointDiscoveryIdTrait() : super(id);

  const ClientEndpointDiscoveryIdTrait.fromJson(Object? json) : super(id);

  static const id =
      ShapeId(namespace: 'aws.api', shape: 'clientEndpointDiscoveryId');
}
