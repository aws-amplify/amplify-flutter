// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

/// Binds an operation input member to a named identifier of the resource to
/// which the operation is bound.
class ResourceIdentifierTrait extends StringTrait {
  const ResourceIdentifierTrait(String value) : super(id, value);

  factory ResourceIdentifierTrait.fromJson(Object? json) =>
      ResourceIdentifierTrait(json as String);

  static const id = ShapeId.core('resourceIdentifier');
}
