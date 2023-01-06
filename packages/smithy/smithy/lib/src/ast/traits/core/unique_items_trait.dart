// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/ast.dart';

class UniqueItemsTrait extends AnnotationTrait with AWSSerializable {
  const UniqueItemsTrait() : super(id);

  const UniqueItemsTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('uniqueItems');
}
