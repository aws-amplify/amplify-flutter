// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that an operation / service supports unauthenticated access.
class OptionalAuthTrait extends AnnotationTrait {
  const OptionalAuthTrait() : super(id);

  const OptionalAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('optionalAuth');
}
