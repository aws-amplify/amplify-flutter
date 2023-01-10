// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Binds a single structure member to the payload of an HTTP request.
class HttpPayloadTrait extends AnnotationTrait {
  const HttpPayloadTrait() : super(id);

  const HttpPayloadTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('httpPayload');
}
