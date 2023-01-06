// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Binds a map structure member to the HTTP query string.
class HttpQueryParamsTrait extends AnnotationTrait {
  const HttpQueryParamsTrait() : super(id);

  const HttpQueryParamsTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('httpQueryParams');
}
