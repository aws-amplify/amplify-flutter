// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that an operation is read-only.
class ReadonlyTrait extends AnnotationTrait {
  const ReadonlyTrait() : super(id);

  const ReadonlyTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('readonly');
}
