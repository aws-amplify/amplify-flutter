// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class ClientOptionalTrait extends AnnotationTrait {
  const ClientOptionalTrait() : super(id);

  const ClientOptionalTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('clientOptional');
}
