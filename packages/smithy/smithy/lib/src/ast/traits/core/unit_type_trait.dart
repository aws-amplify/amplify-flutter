// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class UnitTypeTrait extends AnnotationTrait {
  const UnitTypeTrait() : super(id);

  const UnitTypeTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('unitType');
}
