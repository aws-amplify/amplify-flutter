// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class EnumValueTrait extends Trait<Object> {
  const EnumValueTrait(Object value) : super(id, value);

  const EnumValueTrait.fromJson(Object? json) : super(id, json as Object);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'enumValue');
}
