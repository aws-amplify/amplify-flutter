// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that the put lifecycle operation of a resource
/// can only be used to create a resource and cannot replace
/// an existing resource.
class NoReplaceTrait extends AnnotationTrait {
  const NoReplaceTrait() : super(id);

  const NoReplaceTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('noReplace');
}
