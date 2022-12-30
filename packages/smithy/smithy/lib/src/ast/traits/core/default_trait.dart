// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:smithy/ast.dart';

class DefaultTrait with AWSSerializable implements Trait<Object> {
  const DefaultTrait(this.value);

  factory DefaultTrait.fromJson(Object? json) => DefaultTrait(json as Object);

  static const id = ShapeId.core('default');

  @override
  final Object value;

  @override
  bool get isSynthetic => false;

  @override
  List<Object?> get props => [value];

  @override
  ShapeId get shapeId => id;

  @override
  Object toJson() => value;
}
