// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';

/// {@template worker_bee.int_coercing_serializer}
/// Serializer for an int-backed built_value type which tolerates a `double`
/// wire value.
///
/// built_value's defaults for `int`, `Duration`, and `DateTime` cast the wire
/// value straight to `int`, which fails on the `double` a `postMessage`
/// round-trip yields under dart2wasm. This coerces to `int` first, then
/// delegates to built_value's default so everything else is unchanged.
///
/// Only for int-backed types: the `num` to `int` coercion would truncate a
/// genuinely fractional value like a `double`.
/// {@endtemplate}
@internal
class IntCoercingSerializer<T extends Object>
    implements PrimitiveSerializer<T> {
  /// {@macro worker_bee.int_coercing_serializer}
  const IntCoercingSerializer(this._delegate);

  /// Wraps built_value's default serializer for the int-backed type [T].
  factory IntCoercingSerializer.forType() {
    // Guards against wrapping a fractional type like double, whose values the
    // num-to-int coercion would silently truncate. The listed types all have a
    // default PrimitiveSerializer, so the lookup below is safe.
    assert(
      T == int || T == Duration || T == DateTime,
      'IntCoercingSerializer is only for int-backed types (int, Duration, '
      'DateTime); coercing $T to int would truncate.',
    );
    return IntCoercingSerializer<T>(
      _defaults.serializerForType(T)! as PrimitiveSerializer<T>,
    );
  }

  static final Serializers _defaults = Serializers();

  /// built_value's default serializer for [T].
  final PrimitiveSerializer<T> _delegate;

  @override
  Iterable<Type> get types => _delegate.types;

  @override
  String get wireName => _delegate.wireName;

  @override
  Object serialize(
    Serializers serializers,
    T object, {
    FullType specifiedType = FullType.unspecified,
  }) => _delegate.serialize(serializers, object, specifiedType: specifiedType);

  @override
  T deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => _delegate.deserialize(
    serializers,
    serialized is num ? serialized.toInt() : serialized,
    specifiedType: specifiedType,
  );
}
