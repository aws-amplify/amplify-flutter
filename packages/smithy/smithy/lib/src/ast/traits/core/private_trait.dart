// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that a shape cannot be targeted outside of the namespace in
/// which it was defined.
class PrivateTrait extends AnnotationTrait {
  const PrivateTrait() : super(id);

  const PrivateTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('private');
}
