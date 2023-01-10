// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/smithy.dart';

abstract class SmithyException implements Exception {
  String? get message;
  RetryConfig? get retryConfig;
  ShapeId? get shapeId;
  Exception? get underlyingException;
}
