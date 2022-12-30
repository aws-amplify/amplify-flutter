// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Provides a custom name to use when serializing a structure member
/// name as a XML object property.
class XmlNameTrait extends StringTrait {
  const XmlNameTrait(String value) : super(id, value);

  factory XmlNameTrait.fromJson(Object? json) => XmlNameTrait(json as String);

  static const id = ShapeId.core('xmlName');
}
