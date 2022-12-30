// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Provides a human-readable proper noun title to services and resources.
class TitleTrait extends StringTrait {
  const TitleTrait(String value) : super(id, value);

  factory TitleTrait.fromJson(Object? json) => TitleTrait(json as String);

  static const id = ShapeId.core('title');
}
