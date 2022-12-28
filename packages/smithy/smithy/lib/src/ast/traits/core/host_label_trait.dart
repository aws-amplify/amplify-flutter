// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Binds an input member to a label in the hostPrefix of an endpoint
/// trait on an operation.
class HostLabelTrait extends AnnotationTrait {
  const HostLabelTrait() : super(id);

  const HostLabelTrait.fromJson(Object? json) : super(id);

  static const id = ShapeId.core('hostLabel');
}
