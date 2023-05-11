// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_visitor.dart';
import 'package:code_builder/code_builder.dart' hide FunctionType;

/// {@template worker_bee_builder.symbol_visitor}
/// Converts Dart analyzer types to `package:code_builder` types.
/// {@endtemplate}
class SymbolVisitor extends UnifyingTypeVisitor<Reference> {
  /// {@macro worker_bee_builder.symbol_visitor}
  const SymbolVisitor();

  @override
  Reference visitDartType(DartType type) {
    return switch (type) {
      DynamicType _ => const Reference('dynamic'),
      NeverType _ => const Reference('Never', 'dart:core'),
      TypeParameterType _ => type.bound.accept(this),
      VoidType _ => const Reference('void'),
      InterfaceType _ => TypeReference((t) {
          t
            ..isNullable = type.nullabilitySuffix != NullabilitySuffix.none
            ..symbol = type.element.name
            ..url = type.element.librarySource.uri.toString()
            ..types.addAll([
              for (final typeArg in type.typeArguments) typeArg.accept(this),
            ]);
        }),
      _ => throw UnsupportedError('$type is not supported'),
    };
  }
}

/// Helpers for [Reference] types.
extension ReferenceUtil on Reference {
  /// Whether `this` represents the `void` type.
  bool get isVoid => this == const Reference('void');
}
