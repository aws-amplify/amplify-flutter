// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Binds a member to an HTTP query string.
class HttpQueryTrait extends StringTrait {
  const HttpQueryTrait(String value) : super(id, value);

  const HttpQueryTrait.fromJson(Object? json) : this(json as String);

  static const id = ShapeId.core('httpQuery');
}
