// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class SuppressTrait extends StringListTrait {
  const SuppressTrait(List<String> values) : super(id, values);

  factory SuppressTrait.fromJson(Object? json) =>
      SuppressTrait((json as List).cast());

  static const id = ShapeId.core('suppress');
}
