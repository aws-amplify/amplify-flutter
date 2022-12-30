// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

abstract class StringTrait extends Trait<String> {
  const StringTrait(ShapeId shapeId, String value) : super(shapeId, value);
}
