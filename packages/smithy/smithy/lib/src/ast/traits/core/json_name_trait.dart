// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Provides a custom name to use when serializing a structure member
/// name as a JSON object property.
class JsonNameTrait extends StringTrait {
  const JsonNameTrait(String value) : super(id, value);

  const JsonNameTrait.fromJson(Object? json) : super(id, json as String);

  static const id = ShapeId.core('jsonName');
}
