// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Defines when a shape or member was added to the model.
class SinceTrait extends StringTrait {
  const SinceTrait(String value) : super(id, value);

  factory SinceTrait.fromJson(Object? json) => SinceTrait(json as String);

  static const id = ShapeId.core('since');
}
