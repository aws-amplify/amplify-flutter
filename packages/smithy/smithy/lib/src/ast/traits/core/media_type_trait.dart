// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Documents the media type of a blob shape.
class MediaTypeTrait extends StringTrait {
  const MediaTypeTrait(String value) : super(id, value);

  factory MediaTypeTrait.fromJson(Object? json) =>
      MediaTypeTrait(json as String);

  static const id = ShapeId.core('mediaType');
}
