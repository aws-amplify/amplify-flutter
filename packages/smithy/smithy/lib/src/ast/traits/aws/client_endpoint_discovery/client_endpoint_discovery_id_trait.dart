// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class ClientEndpointDiscoveryIdTrait extends AnnotationTrait {
  const ClientEndpointDiscoveryIdTrait() : super(id);

  const ClientEndpointDiscoveryIdTrait.fromJson(Object? json) : super(id);

  static const id =
      ShapeId(namespace: 'aws.api', shape: 'clientEndpointDiscoveryId');
}
