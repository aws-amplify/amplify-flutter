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

import 'package:amplify_codegen/src/parser/field.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';

/// Helpers for [StructureTypeDefinition].
extension ModelHelpers on StructureTypeDefinition {
  /// Finds the field named [name].
  ///
  /// Throws a [StateError] if not present.
  ModelField fieldNamed(String name) =>
      fields.values.singleWhere((f) => f.name == name);

  /// Tries to find the field named [name].
  ModelField? maybeFieldNamed(String name) =>
      fields.values.singleWhereOrNull((f) => f.name == name);
}

/// Helpers for [ObjectTypeDefinitionNode].
extension ModelDefinitionHelpers on ObjectTypeDefinitionNode {
  /// Whether this type has a directive named [directiveName].
  bool hasDirective(String directiveName) =>
      directives.any((directive) => directive.name.value == directiveName);

  /// Locates the directive named [directiveName], if present.
  DirectiveNode? directiveNamed(String directiveName) => directives
      .firstWhereOrNull((directive) => directive.name.value == directiveName);

  /// Whether `this` is a [ModelType] (as opposed to a [NonModelType]).
  bool get isModel => hasDirective('model');

  /// Whether `this` is a [NonModelType].
  bool get isNonModel => !isModel;

  /// The keys/indexes for this model + their associated `fields` property.
  /// Unnamed primary keys are indexed by `null` in the returned map.
  Iterable<ModelIndex> get indexFields sync* {
    for (final field in fields.where((f) => f.hasDirective('index'))) {
      final directive = field.directiveNamed('index')!;
      final indexName = directive.argumentNamed('name')!.stringValue;
      final indexFields = directive.hasArgument('fields')
          ? directive.argumentNamed('fields')!.stringListValue
          : const <String>[];
      yield ModelIndex(
        name: indexName,
        field: field.wireName,
        sortKeyFields: indexFields,
      );
    }
    // + the primary key, which is the primary index
    final primaryKey = fields.firstWhereOrNull(
      (field) => field.hasDirective('primaryKey'),
    );
    if (primaryKey != null) {
      final directive = primaryKey.directiveNamed('primaryKey')!;
      final sortKeyFields = directive.hasArgument('sortKeyFields')
          ? directive.argumentNamed('sortKeyFields')!.stringListValue
          : const <String>[];
      yield ModelIndex.primaryKey(
        field: primaryKey.wireName,
        sortKeyFields: sortKeyFields,
      );
    } else {
      yield ModelIndex.primaryKey(field: 'id');
    }
  }

  /// Returns all fields as [ModelField] objects.
  Iterable<ModelField> modelFields({
    required Map<String, ObjectTypeDefinitionNode> models,
  }) sync* {
    for (final field in fields) {
      yield ModelField.build((f) {
        f
          ..name = field.name.value
          ..type = _buildTypeFor(field.type, models: models)
          ..isReadOnly = false
          ..authRules.addAll(field.directives.authRules);
      });
    }

    if (isModel) {
      // createdAt
      yield ModelField.build(
        (f) => f
          ..name = 'createdAt'
          ..isReadOnly = true
          ..type = const SchemaType.scalar(AppSyncScalar.awsDateTime),
      );

      // updatedAt
      yield ModelField.build(
        (f) => f
          ..name = 'updatedAt'
          ..isReadOnly = true
          ..type = const SchemaType.scalar(AppSyncScalar.awsDateTime),
      );
    }
  }

  SchemaType _buildTypeFor(
    TypeNode node, {
    required Map<String, ObjectTypeDefinitionNode> models,
  }) {
    if (node is NamedTypeNode) {
      final scalarType = AppSyncScalar.values.firstWhereOrNull(
        (el) => el.name == node.name.value,
      );
      if (scalarType != null) {
        return SchemaType.scalar(scalarType, isRequired: node.isNonNull);
      }
      final modelName = node.name.value;
      final objectNode = models[modelName];
      final isEnum = objectNode == null;
      if (isEnum) {
        return SchemaType.enum_(modelName, isRequired: node.isNonNull);
      }
      final isNonModel = !objectNode.hasDirective('model');
      if (isNonModel) {
        return SchemaType.nonModel(modelName, isRequired: node.isNonNull);
      }
      return SchemaType.model(modelName, isRequired: node.isNonNull);
    } else if (node is ListTypeNode) {
      final valueType = _buildTypeFor(
        node.type,
        models: models,
      );
      return SchemaType.list(valueType, isRequired: node.isNonNull);
    }
    throw ArgumentError(node.runtimeType);
  }
}
