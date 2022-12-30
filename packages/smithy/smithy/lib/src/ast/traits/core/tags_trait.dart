// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Applies tags to a shape.
class TagsTrait extends StringListTrait {
  const TagsTrait(List<String> values) : super(id, values);

  factory TagsTrait.fromJson(Object? json) => TagsTrait((json as List).cast());

  static const id = ShapeId.core('tags');
}
