// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: avoid_positional_boolean_parameters

import 'package:code_builder/code_builder.dart';
import 'package:smithy_codegen/src/generator/types.dart';

extension ExpressionUtil on Expression {
  /// The property getter, given [isNullable].
  Expression nullableProperty(String name, bool isNullable) {
    if (isNullable) {
      return nullSafeProperty(name);
    } else {
      return property(name);
    }
  }

  Expression wrapWithInlineNullCheck(Expression check) {
    return check.equalTo(literalNull).conditional(literalNull, nullChecked);
  }

  Code wrapWithBlockNullCheck(Expression check, bool isNullable) {
    return isNullable
        ? nullChecked.wrapWithBlockIf(check, isNullable)
        : wrapWithBlockIf(check, isNullable);
  }

  Code wrapWithBlockIf(Expression check, [bool performCheck = true]) {
    return Block.of([
      if (performCheck) ...[
        const Code('if ('),
        check.code,
        const Code(') {'),
      ],
      statement,
      if (performCheck) const Code('}'),
    ]);
  }
}

extension CodeHelpers on Code {
  Code wrapWithBlockIf(Expression check, [bool performCheck = true]) {
    return Block.of([
      if (performCheck) ...[
        const Code('if ('),
        check.code,
        const Code(') {'),
      ],
      this,
      if (performCheck) const Code('}'),
    ]);
  }
}

extension ReferenceHelpers on Reference {
  TypeReference get typeRef =>
      this is TypeReference ? this as TypeReference : type as TypeReference;

  /// Returns a nullable version of `this`.
  TypeReference get boxed {
    return typeRef.rebuild((t) => t.isNullable = true);
  }

  /// Returns a non-nullable version of `this`.
  TypeReference get unboxed {
    return typeRef.rebuild((t) => t.isNullable = false);
  }

  /// Returns a version of `this` with nullable set to [isBoxed].
  TypeReference withBoxed(bool isBoxed) {
    return isBoxed ? boxed : unboxed;
  }

  /// Constructs a `built_value` FullType reference for this.
  Expression fullType([Iterable<Reference>? parameters]) {
    final typeRef = this.typeRef;
    final ctor = typeRef.isNullable ?? false
        ? (Iterable<Expression> args) =>
            DartTypes.builtValue.fullType.constInstanceNamed('nullable', args)
        : DartTypes.builtValue.fullType.constInstance;
    if (typeRef.types.isEmpty && (parameters == null || parameters.isEmpty)) {
      return ctor([typeRef.unboxed]);
    }
    return ctor([
      typeRef.rebuild((t) => t.types.clear()).unboxed,
      literalList(
        parameters?.map((param) => param.fullType()) ??
            typeRef.types.map((t) => t.fullType()),
      ),
    ]);
  }

  /// Whether [symbol] requires transformation in the factory constructor.
  bool get requiresBuiltValueTransformation {
    return url == BuiltValueType.collectionUrl || url == BuiltValueType.jsonUrl;
  }

  /// The `dart:core` symbol for `this`.
  Reference get coreFriendlySymbol {
    final ref = typeRef;
    if (!requiresBuiltValueTransformation) {
      return ref;
    }
    final transformed = switch (ref.symbol) {
      'JsonObject' => DartTypes.core.object,
      'BuiltList' => DartTypes.core.list(
          ref.types.single.coreFriendlySymbol,
        ),
      'BuiltSet' => DartTypes.core.set(
          ref.types.single.coreFriendlySymbol,
        ),
      'BuiltMap' => DartTypes.core.map(
          ref.types[0].coreFriendlySymbol,
          ref.types[1].coreFriendlySymbol,
        ),
      'BuiltListMultimap' => DartTypes.core.map(
          ref.types[0].coreFriendlySymbol,
          DartTypes.core.list(ref.types[1].coreFriendlySymbol),
        ),
      'BuiltSetMultimap' => DartTypes.core.map(
          ref.types[0].coreFriendlySymbol,
          DartTypes.core.set(ref.types[1].coreFriendlySymbol),
        ),
      _ => throw ArgumentError('Invalid symbol: $symbol'),
    };
    return transformed.typeRef.rebuild(
      (t) => t.isNullable = ref.isNullable,
    );
  }

  /// Transforms `built_collection` symbols to their `dart:core` counterpart,
  /// e.g. BuiltList -> List, BuiltSet -> Set, etc for use in factory
  /// constructors so that users do not need to concern themselves with built
  /// types when constructing instances.
  Expression transformToBuiltValue({
    required String name,
    bool? isNullable,
  }) {
    Expression ref = refer(name);
    if (!requiresBuiltValueTransformation) {
      return ref;
    }
    isNullable ??= typeRef.isNullable!;
    final types = typeRef.types;
    switch (typeRef.symbol) {
      case 'BuiltList':
      case 'BuiltSet':
        final childSymbol = types.single;
        if (childSymbol.requiresBuiltValueTransformation) {
          final childExpression = childSymbol.transformToBuiltValue(name: 'el');
          ref = ref.property('map').call([
            Method(
              (m) => m
                ..requiredParameters.add(Parameter((p) => p.name = 'el'))
                ..body = childExpression.code,
            ).closure,
          ]);
        }
      case 'BuiltMap':
        final valueSymbol = types[1];
        if (valueSymbol.requiresBuiltValueTransformation) {
          final valueExpression = valueSymbol.transformToBuiltValue(
            name: 'value',
          );
          ref = ref.property('map').call([
            Method(
              (m) => m
                ..requiredParameters.addAll([
                  Parameter((p) => p.name = 'key'),
                  Parameter((p) => p.name = 'value'),
                ])
                ..body = DartTypes.core.mapEntry
                    .newInstance([refer('key'), valueExpression]).code,
            ).closure,
          ]);
        }
      case 'BuiltListMultimap':
      case 'BuiltSetMultimap':
        final valueSymbol = types[1];
        if (valueSymbol.requiresBuiltValueTransformation) {
          final childExpression = valueSymbol.transformToBuiltValue(
            name: 'el',
          );
          final valueExpression = refer('value').property('map').call([
            Method(
              (m) => m
                ..requiredParameters.add(Parameter((p) => p.name = 'el'))
                ..body = childExpression.code,
            ).closure,
          ]);
          ref = ref.property('map').call([
            Method(
              (m) => m
                ..requiredParameters.addAll([
                  Parameter((p) => p.name = 'key'),
                  Parameter((p) => p.name = 'value'),
                ])
                ..body = DartTypes.core.mapEntry
                    .newInstance([refer('key'), valueExpression]).code,
            ).closure,
          ]);
        }
    }
    ref = refer(symbol!, url).newInstance([ref]);
    return isNullable
        ? refer(name).equalTo(literalNull).conditional(literalNull, ref)
        : ref;
  }
}
