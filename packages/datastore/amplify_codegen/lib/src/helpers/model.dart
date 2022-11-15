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

import 'dart:collection';

import 'package:amplify_codegen/src/helpers/field.dart';
import 'package:amplify_codegen/src/helpers/language.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:amplify_core/src/types/models/model.dart'
    show RemoteModelMetadata;
import 'package:aws_common/aws_common.dart';
import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';

/// The type in the model hierarchy: Partial -> Model -> Remote
enum ModelHierarchyType {
  /// A partial model.
  partial,

  /// A full schema model.
  model,

  /// A remotely synced model.
  remote,
}

/// Returns a reference to the model type for [schemaName] at a specific point
/// in the model hierarchy.
Reference modelRef(
  String schemaName, [
  ModelHierarchyType hierarchyType = ModelHierarchyType.model,
]) {
  var modelName = schemaName.pascalCase;
  if (reservedTypeNames.contains(modelName)) {
    modelName = '$modelName\$';
  }
  switch (hierarchyType) {
    case ModelHierarchyType.partial:
      modelName = 'Partial$modelName';
      break;
    case ModelHierarchyType.model:
      break;
    case ModelHierarchyType.remote:
      modelName = 'Remote$modelName';
      break;
  }
  return refer(modelName, '${schemaName.snakeCase}.dart');
}

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

  /// All fields defined in the schema or synthetically injected by the CLI.
  Map<String, ModelField> schemaFields(ModelHierarchyType type) {
    final definition = this;
    return fields.toMap().map((name, field) {
      final fieldType = field.type;
      var isNullable = !fieldType.isRequired;
      if (type == ModelHierarchyType.partial) {
        final isPrimaryKey = definition is ModelTypeDefinition &&
            definition.modelIdentifier.fields.contains(field.name);
        isNullable = isNullable || !isPrimaryKey;
      }
      return MapEntry(
        name,
        field.rebuild(
          (f) => f.type = f.type!.rebuild(
            isRequired: !isNullable,
          ),
        ),
      );
    });
  }

  /// All fields including [RemoteModelMetadata] fields.
  Map<String, ModelField> allFields(ModelHierarchyType type) {
    final isRequired = type == ModelHierarchyType.remote;
    final remoteMetadataFields = {
      'version': ModelField(
        name: 'version',
        type: SchemaType.scalar(
          AppSyncScalar.int_,
          isRequired: isRequired,
        ),
      ),
      'deleted': ModelField(
        name: 'deleted',
        type: SchemaType.scalar(
          AppSyncScalar.boolean,
          isRequired: isRequired,
        ),
      ),
      'lastChangedAt': ModelField(
        name: 'lastChangedAt',
        type: SchemaType.scalar(
          AppSyncScalar.awsDateTime,
          isRequired: isRequired,
        ),
      ),
    };
    return SplayTreeMap<String, ModelField>.from(
      {
        ...remoteMetadataFields,
        ...schemaFields(type),
      },
      (a, b) {
        // Sort synthetic fields last.
        final isSyntheticA =
            remoteMetadataFields.containsKey(a) && !fields.containsKey(a);
        final isSyntheticB =
            remoteMetadataFields.containsKey(b) && !fields.containsKey(b);
        if (isSyntheticA && isSyntheticB) {
          // Use insertion order
          return -1;
        }
        if (isSyntheticA) {
          return 1;
        }
        if (isSyntheticB) {
          return -1;
        }
        // Use insertion order
        return -1;
      },
    );
  }
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
    required Map<String, EnumTypeDefinitionNode> enums,
  }) sync* {
    for (final field in fields) {
      yield ModelField.build((f) {
        f
          ..name = field.name.value
          ..type = field.type.schemaType(models: models, enums: enums)
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
}
