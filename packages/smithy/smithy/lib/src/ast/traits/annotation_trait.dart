// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

abstract class AnnotationTrait extends Trait<Map> {
  const AnnotationTrait(ShapeId shapeId)
      : super(shapeId, const <String, Object?>{});
}
