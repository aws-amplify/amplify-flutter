// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Contains abstract functionality to build traits that contain a list
/// of strings.
abstract class StringListTrait extends Trait<List<String>> {
  const StringListTrait(ShapeId shapeId, List<String> values)
      : super(shapeId, values);
}
