// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Defines an operation input member that is used to prevent replayed requests.
class IdempotencyTokenTrait extends AnnotationTrait {
  const IdempotencyTokenTrait() : super(id);

  const IdempotencyTokenTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('idempotencyToken');
}
