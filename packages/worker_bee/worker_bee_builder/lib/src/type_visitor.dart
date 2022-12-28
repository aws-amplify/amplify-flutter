// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_visitor.dart';
import 'package:code_builder/code_builder.dart' hide FunctionType;

/// {@template worker_bee_builder.symbol_visitor}
/// Converts Dart analyzer types to `package:code_builder` types.
/// {@endtemplate}
class SymbolVisitor implements TypeVisitor<Reference> {
  /// {@macro worker_bee_builder.symbol_visitor}
  const SymbolVisitor();

  @override
  Reference visitDynamicType(DynamicType type) {
    return const Reference('dynamic');
  }

  @override
  Reference visitFunctionType(FunctionType type) {
    throw UnimplementedError();
  }

  @override
  Reference visitInterfaceType(InterfaceType type) {
    return TypeReference((t) {
      t
        ..isNullable = type.nullabilitySuffix != NullabilitySuffix.none
        ..symbol = type.element.name
        ..url = type.element.librarySource.uri.toString()
        ..types.addAll([
          for (final typeArg in type.typeArguments) typeArg.accept(this),
        ]);
    });
  }

  @override
  Reference visitNeverType(NeverType type) {
    return const Reference('Never', 'dart:core');
  }

  @override
  Reference visitTypeParameterType(TypeParameterType type) {
    return type.bound.accept(this);
  }

  @override
  Reference visitVoidType(VoidType type) {
    return const Reference('void');
  }

  @override
  Reference visitRecordType(RecordType type) {
    throw UnimplementedError();
  }
}

/// Helpers for [Reference] types.
extension ReferenceUtil on Reference {
  /// Whether `this` represents the `void` type.
  bool get isVoid => this == const Reference('void');
}
