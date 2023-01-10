// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that the structure member represents the HTTP response
/// status code. This MAY differ from the HTTP status code provided
/// in the response.
class HttpResponseCodeTrait extends AnnotationTrait {
  const HttpResponseCodeTrait() : super(id);

  const HttpResponseCodeTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('httpResponseCode');
}
