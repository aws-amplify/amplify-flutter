// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class DataPlaneTrait extends AnnotationTrait {
  const DataPlaneTrait() : super(id);

  const DataPlaneTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'aws.api', shape: 'dataPlane');
}
