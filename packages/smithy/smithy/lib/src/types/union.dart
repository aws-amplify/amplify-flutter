// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart';

/// {@template smithy.smithy_union}
/// An union representation in Smithy, i.e. a value which is one of a fixed set
/// of types.
/// {@endtemplate}
abstract class SmithyUnion<U extends SmithyUnion<U>>
    with AWSEquatable<SmithyUnion<U>> {
  /// {@macro smithy.smithy_union}
  const SmithyUnion();

  /// The key or property name of [value].
  String get name;

  // Exactly one member of a union MUST be set to a non-null value.
  /// The union's value.
  Object get value;

  @override
  List<Object> get props => [U, value];

  /// Switch on the union's value.
  T? when<T>();

  @override
  String toString() => value.toString();
}

/// A protocol-agnostic serializer for [SmithyUnion] types, for use with
/// `built_value`.
class SmithyUnionSerializer<U extends SmithyUnion<U>>
    implements StructuredSerializer<U?> {
  const SmithyUnionSerializer(
    this.wireName,
    this.ctor,
  );

  final JsonConstructor<U?> ctor;

  @override
  final String wireName;

  @override
  U? deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return ctor({
      serialized.first as String: serialized.elementAt(1),
    });
  }

  @override
  Iterable<Object?> serialize(Serializers serializers, U? object,
      {FullType specifiedType = FullType.unspecified}) {
    if (object == null) {
      return const Iterable.empty();
    }
    return [object.name, object.value];
  }

  @override
  Iterable<Type> get types => [U];
}
