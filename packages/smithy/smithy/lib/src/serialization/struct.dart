// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:smithy/ast.dart';

abstract class SmithySerializer<T extends Object?> implements Serializer<T> {
  const SmithySerializer(this.wireName);

  /// The protocols for which this serializer is valid.
  ///
  /// By default, this returns an empty array, which indicates it is
  /// valid for all protocols.
  Iterable<ShapeId> get supportedProtocols => const [];

  @override
  final String wireName;
}

abstract class StructuredSmithySerializer<T extends Object?>
    extends SmithySerializer<T> implements StructuredSerializer<T> {
  const StructuredSmithySerializer(super.wireName);

  @override
  T deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  });

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  });

  @override
  Iterable<Type> get types;
}

abstract class PrimitiveSmithySerializer<T extends Object?>
    extends SmithySerializer<T> implements PrimitiveSerializer<T> {
  const PrimitiveSmithySerializer(super.wireName);

  @override
  Iterable<Type> get types;

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  });

  @override
  Object serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  });
}
