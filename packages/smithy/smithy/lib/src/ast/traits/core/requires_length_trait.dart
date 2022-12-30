// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that the streaming blob must be finite and has a known size.
class RequiresLengthTrait extends AnnotationTrait {
  const RequiresLengthTrait() : super(id);

  const RequiresLengthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('requiresLength');
}
