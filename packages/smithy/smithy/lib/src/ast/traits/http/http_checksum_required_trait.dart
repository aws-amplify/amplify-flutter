// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Indicates that an operation requires a checksum in its HTTP request.
/// By default, the checksum used for a service is a MD5 checksum passed
/// in the Content-MD5 header.
class HttpChecksumRequiredTrait extends AnnotationTrait {
  const HttpChecksumRequiredTrait() : super(id);

  const HttpChecksumRequiredTrait.fromJson(Object? json) : super(id);

  static const id =
      ShapeId(namespace: 'smithy.api', shape: 'httpChecksumRequired');
}
