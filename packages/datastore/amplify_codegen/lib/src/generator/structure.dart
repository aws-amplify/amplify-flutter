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

import 'package:amplify_codegen/src/generator/generator.dart';
import 'package:amplify_codegen/src/generator/types.dart';
import 'package:amplify_codegen/src/helpers/field.dart';
import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:code_builder/code_builder.dart';
import 'package:gql/ast.dart';
import 'package:meta/meta.dart';

/// {@template amplify_codegen.structure_generator}
/// Generates libraries for types which produce structures, namely
/// [NonModelTypeDefinition] and [ModelTypeDefinition].
/// {@endtemplate}
abstract class StructureGenerator<Definition extends StructureTypeDefinition>
    extends LibraryGenerator<ObjectTypeDefinitionNode, Definition> {
  /// {@macro amplify_codegen.structure_generator}
  StructureGenerator({required super.node, required super.definition});

  /// The class name for the generated type.
  late final String className = schemaName.pascalCase;

  /// Generates the `fromJson` factory's body for the given [modelType] and
  /// list of [fields].
  @protected
  Code fromJson({
    required Reference modelType,
    required Iterable<ModelField> fields,
    ModelHierarchyType? hierarchyType,
  }) {
    return Block((b) {
      for (final field in fields) {
        final json = refer('json').index(literalString(field.name));
        final decodedField = field.fromJsonExp(
          json,
          fieldType: field.type,
          hierarchyType: hierarchyType,
          orElse: () => DartTypes.amplifyCore.modelFieldError.newInstance([
            literalString(className),
            literalString(field.dartName),
          ]).thrown,
        );
        b.addExpression(
          declareFinal(field.dartName).assign(decodedField),
        );
      }
      b.addExpression(
        modelType.newInstance([], {
          for (final field in fields) field.dartName: refer(field.dartName),
        }).returned,
      );
    });
  }
}
