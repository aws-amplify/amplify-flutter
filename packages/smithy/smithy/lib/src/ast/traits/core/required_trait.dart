// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that a structure member is required.
class RequiredTrait extends AnnotationTrait {
  const RequiredTrait() : super(id);

  const RequiredTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('required');
}
