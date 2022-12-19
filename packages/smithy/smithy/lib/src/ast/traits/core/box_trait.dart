// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class BoxTrait extends AnnotationTrait {
  const BoxTrait() : super(id);

  const BoxTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'box');
}
