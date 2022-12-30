// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that a list or map is sparse, meaning they may contain nulls.
class SparseTrait extends AnnotationTrait {
  const SparseTrait() : super(id);

  const SparseTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('sparse');
}
