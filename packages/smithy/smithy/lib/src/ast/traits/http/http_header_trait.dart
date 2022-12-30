// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class HttpHeaderTrait extends StringTrait {
  const HttpHeaderTrait(String value) : super(id, value);

  const HttpHeaderTrait.fromJson(Object? json) : this(json as String);

  static const id = ShapeId.core('httpHeader');
}
