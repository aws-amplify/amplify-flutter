// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Marks a structure member to be serialized to/from an XML attribute.
class XmlAttributeTrait extends AnnotationTrait {
  const XmlAttributeTrait() : super(id);

  const XmlAttributeTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('xmlAttribute');
}
