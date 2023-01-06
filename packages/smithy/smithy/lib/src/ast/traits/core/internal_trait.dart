// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Shapes marked with the internal trait are meant only for internal use and
/// must not be exposed to customers.
class InternalTrait extends AnnotationTrait {
  const InternalTrait() : super(id);

  const InternalTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('internal');
}
