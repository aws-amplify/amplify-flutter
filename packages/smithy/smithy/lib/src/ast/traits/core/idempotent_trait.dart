// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that an operation is idempotent.
class IdempotentTrait extends AnnotationTrait {
  const IdempotentTrait() : super(id);

  const IdempotentTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('idempotent');
}
