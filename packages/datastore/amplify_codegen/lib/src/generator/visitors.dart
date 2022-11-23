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

import 'package:amplify_codegen/src/generator/enum.dart';
import 'package:amplify_codegen/src/generator/generated_library.dart';
import 'package:amplify_codegen/src/generator/model.dart';
import 'package:amplify_codegen/src/generator/non_model.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';

/// A visitor for [SchemaType].
abstract class SchemaTypeVisitor<T> {
  /// Visits a [SchemaType].
  T visit(SchemaType type) {
    if (type is ScalarType) {
      return visitScalar(type);
    }
    if (type is ModelType) {
      return visitModelType(type);
    }
    if (type is NonModelType) {
      return visitNonModelType(type);
    }
    if (type is EnumType) {
      return visitEnumType(type);
    }
    if (type is ListType) {
      return visitListType(type);
    }
    throw ArgumentError('Unknown schema type: $type');
  }

  /// Visits a [ScalarType].
  T visitScalar(ScalarType type);

  /// Visits a [ModelType].
  T visitModelType(ModelType type);

  /// Visits a [NonModelType].
  T visitNonModelType(NonModelType type);

  /// Visits a [EnumType].
  T visitEnumType(EnumType type);

  /// Visits a [ListType].
  T visitListType(ListType type);
}

/// A visitor for [SchemaTypeDefinition].
abstract class SchemaVisitor<T> {
  /// Visits a [SchemaTypeDefinition].
  T visit(SchemaTypeDefinition definition) {
    if (definition is EnumTypeDefinition) {
      return visitEnum(definition);
    } else if (definition is NonModelTypeDefinition) {
      return visitNonModel(definition);
    } else if (definition is ModelTypeDefinition) {
      return visitModel(definition);
    }
    throw ArgumentError('Invalid SchemaDefinition: ${definition.runtimeType}');
  }

  /// Visits a [ModelTypeDefinition].
  T visitModel(ModelTypeDefinition definition);

  /// Visits a [NonModelTypeDefinition].
  T visitNonModel(NonModelTypeDefinition definition);

  /// Visits a [EnumTypeDefinition].
  T visitEnum(EnumTypeDefinition definition);
}

/// {@template amplify_codegen.library_visitor}
/// A visitor for top-level GraphQL definitions which produces a [Library] for
/// each one. Specifically, this targets object `type` definitions and `enum`
/// definitions.
/// {@endtemplate}
class LibraryVisitor extends SimpleVisitor<GeneratedLibrary> {
  /// {@macro amplify_codegen.library_visitor}
  LibraryVisitor(this.schema);

  /// The semantic schema definition.
  final SchemaDefinition schema;

  @override
  GeneratedLibrary visitEnumTypeDefinitionNode(EnumTypeDefinitionNode node) {
    final definition =
        schema.typeDefinitions[node.name.value] as EnumTypeDefinition;
    return EnumGenerator(node: node, definition: definition).generate();
  }

  @override
  GeneratedLibrary visitObjectTypeDefinitionNode(
      ObjectTypeDefinitionNode node) {
    final definition =
        schema.typeDefinitions[node.name.value] as StructureTypeDefinition;
    if (definition is ModelTypeDefinition) {
      return ModelGenerator(node: node, definition: definition).generate();
    }
    return NonModelGenerator(
      node: node,
      definition: definition as NonModelTypeDefinition,
    ).generate();
  }
}
