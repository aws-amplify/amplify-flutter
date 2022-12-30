// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class S3UnwrappedXmlOutputTrait extends AnnotationTrait {
  const S3UnwrappedXmlOutputTrait() : super(id);

  const S3UnwrappedXmlOutputTrait.fromJson(Object? json) : super(id);

  static const id =
      ShapeId(namespace: 'aws.customizations', shape: 's3UnwrappedXmlOutput');
}
