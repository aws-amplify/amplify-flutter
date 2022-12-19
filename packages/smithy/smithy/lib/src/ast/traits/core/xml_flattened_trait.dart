// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class XmlFlattenedTrait extends AnnotationTrait {
  const XmlFlattenedTrait() : super(id);

  const XmlFlattenedTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('xmlFlattened');
}
