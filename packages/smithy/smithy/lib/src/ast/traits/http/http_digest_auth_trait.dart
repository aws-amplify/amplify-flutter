// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// An auth scheme trait uses HTTP digest auth.
class HttpDigestAuthTrait extends AnnotationTrait {
  const HttpDigestAuthTrait() : super(id);

  const HttpDigestAuthTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId(namespace: 'smithy.api', shape: 'httpDigestAuth');
}
