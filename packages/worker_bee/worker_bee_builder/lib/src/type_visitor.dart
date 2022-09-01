// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
        ..symbol = type.element2.name
        ..url = type.element2.librarySource.uri.toString()
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
