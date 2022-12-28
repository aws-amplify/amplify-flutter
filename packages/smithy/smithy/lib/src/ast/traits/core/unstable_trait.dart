// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Marks a shape as unstable.
class UnstableTrait extends AnnotationTrait {
  const UnstableTrait() : super(id);

  const UnstableTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('unstable');
}
