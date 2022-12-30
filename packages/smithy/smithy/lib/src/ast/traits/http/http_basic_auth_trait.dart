// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// An auth scheme trait uses HTTP basic auth.
class HttpBasicAuthTrait extends AnnotationTrait {
  const HttpBasicAuthTrait() : super(id);

  const HttpBasicAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'httpBasicAuth');
}
