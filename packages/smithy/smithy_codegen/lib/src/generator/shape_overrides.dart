// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:code_builder/code_builder.dart';

/// A mechanism for overriding Dart representations of Smithy types.
///
/// {@template smithy_codegen.shape_overrides}
/// Smithy Dart automatically chooses a Dart representation for each Smithy type
/// based on a preconfigured mapping for primitive shapes. For complex structures
/// and unions, Smithy Dart generates unique classes which conform to the schema.
/// A symbol override allows for bypassing this automatic mapping/generation step
/// for selected Smithy shapes.
/// {@endtemplate}
///
/// {@template smithy_codegen.shape_overrides.friendly}
/// In certain cases, the type which should be used for serialization/deserialization
/// (serde) and wire-level behavior is not best suited in the public representation.
/// An example of this used by Smithy itself is the `Map/List` -> `BuiltMap/BuiltList`
/// transformation which occurs where maps and lists are represented by their `dart:core`
/// types in public constructors but mapped to the `package:built_value` counterparts
/// for serde operations.
/// {@endtemplate}
///
/// To define such a transformation, use the [ShapeOverrides.friendly] constructor,
/// providing the friendly representation as well as the transformation methods to and
/// from the friendly type.
base class ShapeOverrides {
  /// Creates an override for a type's Smithy Dart representation.
  ///
  /// {@macro smithy_codegen.shape_overrides}
  ///
  /// {@macro smithy_codegen.shape_overrides.friendly}
  const ShapeOverrides(
    Reference this.symbol, {
    this.serializerSymbol,
  });

  /// Creates an override for a type's Smithy Dart public representation.
  ///
  /// {@macro smithy_codegen.shape_overrides.friendly}
  ///
  /// If [symbol] is not specified, the type's serde representaton is automatically
  /// configured, and only a friendly representation is applied for public constructors.
  ///
  /// Specifying a [serializerSymbol] is generally recommended to ensure that the
  /// serializers object vended by the SDK is able to serialize all types. However, this
  /// is not needed for primitive types which don't require special handling.
  const factory ShapeOverrides.friendly({
    Reference? symbol,
    Reference? serializerSymbol,
    required Reference friendlySymbol,
    required TransformFromFriendly transformFromFriendly,
    required TransformToFriendly transformToFriendly,
  }) = _TransformedShapeOverride;

  const ShapeOverrides._(
    this.symbol, {
    this.serializerSymbol,
  });

  /// The Smithy Dart representation of a shape.
  ///
  /// This is the type that's used at the Smithy layer for serde purposes.
  /// Referenced types must have a built_value serializer registered, either
  /// by nature of it being a primitive type or by specifying a reference
  /// to its [serializerSymbol].
  final Reference? symbol;

  /// A pointer to the [symbol]'s built_value serializer.
  // TODO(dnys1): After `SmithySerializer` is no longer required. Make this required?
  final Reference? serializerSymbol;

  /// The public-facing constructor type of [symbol].
  ///
  /// Sometimes, the serializable form of an object is not the best type to expose
  /// to users. For example, `BuiltMap` vs. `Map` -- the `BuiltMap` type provides
  /// a lot of flexibility when it comes to serde, but is otherwise not particularly
  /// nice to work with.
  Reference? get friendlySymbol => symbol;

  /// {@template smithy_codegen.shape_overrides.transform_from_friendly}
  /// Transforms an expression representing a value of type [friendlySymbol]
  /// to its internal representation of type [symbol].
  /// {@endtemplate}
  Expression transformFromFriendly(
    Expression ref, {
    required bool isNullable,
  }) =>
      ref;

  /// {@template smithy_codegen.shape_overrides.transform_to_friendly}
  /// Transforms an expression representing a value of type [symbol]
  /// to its common representation of type [friendlySymbol].
  /// {@endtemplate}
  Expression transformToFriendly(
    Expression ref, {
    required bool isNullable,
    required bool isConst,
  }) =>
      ref;
}

/// {@macro smithy_codegen.shape_overrides.transform_from_friendly}
typedef TransformFromFriendly = Expression Function(
  Expression ref, {
  required bool isNullable,
});

/// {@macro smithy_codegen.shape_overrides.transform_to_friendly}
typedef TransformToFriendly = Expression Function(
  Expression ref, {
  required bool isNullable,
  required bool isConst,
});

final class _TransformedShapeOverride extends ShapeOverrides {
  const _TransformedShapeOverride({
    Reference? symbol,
    super.serializerSymbol,
    required this.friendlySymbol,
    required TransformFromFriendly transformFromFriendly,
    required TransformToFriendly transformToFriendly,
  })  : _transformFromFriendly = transformFromFriendly,
        _transformToFriendly = transformToFriendly,
        super._(symbol);

  @override
  final Reference friendlySymbol;

  final TransformFromFriendly _transformFromFriendly;
  final TransformToFriendly _transformToFriendly;

  @override
  Expression transformFromFriendly(
    Expression ref, {
    required bool isNullable,
  }) =>
      _transformFromFriendly(ref, isNullable: isNullable);

  @override
  Expression transformToFriendly(
    Expression ref, {
    required bool isNullable,
    required bool isConst,
  }) =>
      _transformToFriendly(
        ref,
        isNullable: isNullable,
        isConst: isConst,
      );
}
