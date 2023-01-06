// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/ast.dart';

class AuthTrait extends Trait<List<ShapeId>> {
  const AuthTrait(List<ShapeId> values) : super(id, values);

  AuthTrait.fromJson(Object? json)
      : this((json as List).cast<String>().map(ShapeId.parse).toList());

  static const id = ShapeId.core('auth');

  Set<ShapeId> get values => value.toSet();

  @override
  List<String> toJson() => values.map((shapeId) => shapeId.toJson()).toList();
}
