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
      if (performCheck) const Code('}')
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
      if (performCheck) const Code('}')
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
    final Expression Function(Iterable<Expression>) ctor = typeRef.isNullable ??
            false
        ? (args) =>
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
  bool get requiresConstructorTransformation {
    return url == BuiltValueType.collectionUrl || url == BuiltValueType.jsonUrl;
  }

  /// The public constructor type corresponding to `this`.
  Reference get transformedSymbol {
    if (!requiresConstructorTransformation) {
      return this;
    }
    final ref = typeRef;
    switch (symbol) {
      case 'BuiltList':
        final childSymbol = ref.types.single;
        return DartTypes.core.list(childSymbol.transformedSymbol);
      case 'BuiltSet':
        final childSymbol = ref.types.single;
        return DartTypes.core.set(childSymbol.transformedSymbol);
      case 'BuiltMap':
        final keySymbol = ref.types[0];
        final valueSymbol = ref.types[1];
        return DartTypes.core.map(
          keySymbol.transformedSymbol,
          valueSymbol.transformedSymbol,
        );
      case 'BuiltListMultimap':
        final keySymbol = ref.types[0];
        final valueSymbol = ref.types[1];
        return DartTypes.core.map(
          keySymbol.transformedSymbol,
          DartTypes.core.list(valueSymbol.transformedSymbol),
        );
      case 'BuiltSetMultimap':
        final keySymbol = ref.types[0];
        final valueSymbol = ref.types[1];
        return DartTypes.core.map(
          keySymbol.transformedSymbol,
          DartTypes.core.set(valueSymbol.transformedSymbol),
        );
      case 'JsonObject':
        return DartTypes.core.object;
      default:
        throw ArgumentError.value(
          symbol,
          'symbol',
          'Expected built_value type',
        );
    }
  }

  /// Recursively converts `dart:core` types like lists, maps, and sets into the
  /// built value types expected by constructors.
  Expression transformToInternal({required String name, bool? isNullable}) {
    Expression ref = refer(name);
    if (!requiresConstructorTransformation) {
      return ref;
    }
    isNullable ??= typeRef.isNullable!;
    final types = typeRef.types;
    switch (symbol) {
      case 'BuiltList':
      case 'BuiltSet':
        final childSymbol = types.single;
        if (childSymbol.requiresConstructorTransformation) {
          final childExpression = childSymbol.transformToInternal(name: 'el');
          ref = ref.property('map').call([
            Method(
              (m) => m
                ..requiredParameters.add(Parameter((p) => p.name = 'el'))
                ..body = childExpression.code,
            ).closure,
          ]);
        }
        break;
      case 'BuiltMap':
        final valueSymbol = types[1];
        if (valueSymbol.requiresConstructorTransformation) {
          final valueExpression = valueSymbol.transformToInternal(
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
        break;
      case 'BuiltListMultimap':
      case 'BuiltSetMultimap':
        final valueSymbol = types[1];
        if (valueSymbol.requiresConstructorTransformation) {
          final childExpression = valueSymbol.transformToInternal(
            name: 'value',
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
        break;
    }
    ref = refer(symbol!, url).newInstance([ref]);
    return isNullable
        ? refer(name).equalTo(literalNull).conditional(literalNull, ref)
        : ref;
  }

  /// Transforms `built_collection` symbols to their `dart:core` counterpart,
  /// e.g. BuiltList -> List, BuiltSet -> Set, etc for use in factory
  /// constructors so that users do not need to concern themselves with built
  /// types when constructing instances.
  Reference transformFromInternal() {
    if (!requiresConstructorTransformation) {
      return this;
    }
    final Reference transformed;
    switch (symbol!) {
      case 'JsonObject':
        transformed = DartTypes.core.object;
        break;
      case 'BuiltList':
        transformed = DartTypes.core.list(
          typeRef.types.single.transformFromInternal(),
        );
        break;
      case 'BuiltSet':
        transformed = DartTypes.core.set(
          typeRef.types.single.transformFromInternal(),
        );
        break;
      case 'BuiltMap':
        transformed = DartTypes.core.map(
          typeRef.types[0].transformFromInternal(),
          typeRef.types[1].transformFromInternal(),
        );
        break;
      case 'BuiltListMultimap':
        transformed = DartTypes.core.map(
          typeRef.types[0].transformFromInternal(),
          DartTypes.core.list(typeRef.types[1].transformFromInternal()),
        );
        break;
      case 'BuiltSetMultimap':
        transformed = DartTypes.core.map(
          typeRef.types[0].transformFromInternal(),
          DartTypes.core.set(typeRef.types[1].transformFromInternal()),
        );
        break;
      default:
        throw ArgumentError('Bad type: $symbol');
    }
    return transformed.typeRef.rebuild(
      (t) => t.isNullable = typeRef.isNullable!,
    );
  }
}
