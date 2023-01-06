// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Restricts string values to a specified regular expression.
class PatternTrait extends StringTrait {
  const PatternTrait(String value) : super(id, value);

  factory PatternTrait.fromJson(Object? json) => PatternTrait(json as String);

  static const id = ShapeId.core('pattern');

  RegExp get pattern => RegExp(value);
}
