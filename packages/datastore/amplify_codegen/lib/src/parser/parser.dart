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

import 'package:amplify_codegen/src/helpers/enum.dart';
import 'package:amplify_codegen/src/helpers/field.dart';
import 'package:amplify_codegen/src/helpers/model.dart';
import 'package:amplify_codegen/src/helpers/types.dart';
import 'package:amplify_codegen/src/parser/connection_info.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:meta/meta.dart';

/// Parses the GraphQL [schema] string into a [SchemaDefinition].
SchemaDefinition parseSchema(String schema) {
  return _SchemaParser(schema).parse();
}

/// Creates the field name for a synthetic field on [modelName] which holds
/// a connection to [connectedFieldName] which is used for retrieving the
/// model in [fieldName].
@internal
String makeConnectionAttributeName(
  String modelName,
  String fieldName, [
  String connectedFieldName = 'id',
]) {
  // TODO(dnys1): Handle differences caused by
  /// `respectPrimaryKeyAttributesOnConnectionField` CLI setting.
  return '${modelName}_${fieldName}_$connectedFieldName'.camelCase;
}

class _SchemaParser {
  _SchemaParser(this.schema) {
    const rootTypes = ['Query', 'Mutation', 'Subscription'];
    final doc = parseString(schema);

    enumNodes = Map.fromEntries(
      doc.definitions
          .whereType<EnumTypeDefinitionNode>()
          .map((node) => MapEntry(node.name.value, node)),
    );
    objectNodes = Map.fromEntries(
      doc.definitions
          .where(
            (definition) =>
                definition is ObjectTypeDefinitionNode &&
                !rootTypes.contains(definition.name.value),
          )
          .map(
            (el) => MapEntry((el as ObjectTypeDefinitionNode).name.value, el),
          ),
    );
  }

  final String schema;
  final SchemaDefinitionBuilder builder = SchemaDefinitionBuilder();

  late final Map<String, EnumTypeDefinitionNode> enumNodes;
  late final Map<String, ObjectTypeDefinitionNode> objectNodes;

  SchemaDefinition parse() {
    // Compile enum types
    for (final enumNode in enumNodes.values) {
      final name = enumNode.name.value;
      builder.typeDefinitions[name] = EnumTypeDefinition.build((b) {
        b
          ..name = name
          ..values.addAll(
            enumNode.values.map((v) => v.schemaName),
          );
      });
    }

    // First pass to construct model graph with metadata
    for (final modelNode in objectNodes.values) {
      final modelName = modelNode.name.value;
      final modelFields = Map<String, ModelField>.fromIterable(
        modelNode.modelFields(models: objectNodes, enums: enumNodes),
        key: (field) => (field as ModelField).name,
      );
      if (modelNode.isNonModel) {
        builder.typeDefinitions[modelName] = NonModelTypeDefinition(
          name: modelName,
          fields: modelFields,
        );
        continue;
      }
      builder.typeDefinitions[modelName] = ModelTypeDefinition.build((b) {
        final authRules = modelNode.directives.authRules;
        b
          ..name = modelName
          ..pluralName = modelName.endsWith('s') ? modelName : '${modelName}s'
          ..authRules.addAll(authRules)
          ..indexes.addAll(modelNode.indexFields)
          ..fields.addAll(modelFields);

        // Inject primary key field, if unspecified, e.g.
        //
        // type Post {
        //   comments: [Comment] @hasMany(fields: ["id"])
        // }
        final primaryIndex =
            modelNode.indexFields.singleWhere((index) => index.isPrimaryIndex);
        b.fields[primaryIndex.primaryField] ??= ModelField(
          name: primaryIndex.primaryField,
          type: const SchemaType.scalar(
            AppSyncScalar.id,
            isRequired: true,
          ),
        );
      });
    }

    // Second pass to establish relationships.
    for (final modelNode in objectNodes.values) {
      if (modelNode.isNonModel) {
        continue;
      }
      final modelName = modelNode.name.value;
      final nodeFields = modelNode.fields;
      final model = builder.typeDefinitions[modelName]! as ModelTypeDefinition;
      final newFields = ListMultimapBuilder<String, ModelField>();
      final newIndexes = ListMultimapBuilder<String, ModelIndex>();
      builder.typeDefinitions[modelName] = model.rebuild((m) {
        m.fields.updateAllValues(
          (_, field) => field.rebuild((fieldBuilder) {
            final fieldNode =
                nodeFields.singleWhereOrNull((f) => f.wireName == field.name);
            final relationshipDirective = fieldNode?.relationshipDirective;

            // Field node will be null for injected fields such as `createdAt`.
            // These fields will not have relationships.
            if (fieldNode == null || relationshipDirective == null) {
              return;
            }

            // Get the model referred to by this relationship.
            final relatedModelName = fieldNode.type.typeName;
            final relatedModel = builder.typeDefinitions[relatedModelName]!
                as ModelTypeDefinition;
            final relatedModelNode = objectNodes[relatedModelName]!;

            final relationship = ModelAssociationType.valueOf(
              relationshipDirective.name.value,
            );
            late ConnectionInfo connectionInfo;
            switch (relationship) {
              case ModelAssociationType.belongsTo:
                connectionInfo = processBelongsTo(
                  modelName: model.name,
                  field: field,
                  fieldNode: fieldNode,
                  relatedModel: relatedModel,
                  relatedModelNode: relatedModelNode,
                );
                break;
              case ModelAssociationType.hasOne:
                connectionInfo = processHasOne(
                  modelName: model.name,
                  field: field,
                  fieldNode: fieldNode,
                  relatedModel: relatedModel,
                  relatedModelNode: relatedModelNode,
                );
                break;
              case ModelAssociationType.hasMany:
                connectionInfo = processHasMany(
                  modelName: model.name,
                  field: field,
                  fieldNode: fieldNode,
                  relatedModel: relatedModel,
                  relatedModelNode: relatedModelNode,
                );
                break;
              case ModelAssociationType.manyToMany:
                connectionInfo = processManyToMany();
                break;
            }
            fieldBuilder.association.replace(connectionInfo.association);

            builder.typeDefinitions.addAll(
              Map.fromEntries(
                connectionInfo.newTypes.map((e) => MapEntry(e.name, e)),
              ),
            );
            connectionInfo.newFields.forEach(newFields.add);
            connectionInfo.newIndexes.forEach(newIndexes.add);
          }),
        );
      });

      // Add new fields and indexes to models
      newFields.build().forEach((modelName, field) {
        final model =
            builder.typeDefinitions[modelName]! as ModelTypeDefinition;
        builder.typeDefinitions[modelName] =
            model.rebuild((m) => m.fields[field.name] = field);
      });
      newIndexes.build().forEach((modelName, index) {
        final model =
            builder.typeDefinitions[modelName]! as ModelTypeDefinition;
        builder.typeDefinitions[modelName] =
            model.rebuild((m) => m.indexes.add(index));
      });
    }

    return builder.build();
  }

  /// A `belongsTo` connection forms a 1-1 relationship between two models where
  /// the foreign key is held by the model with the `@belongsTo` directive.
  ///
  /// The foreign key's fields can specified via the `fields` attribute of the
  /// `@belongsTo` directive, in which case they must exist as part of the
  /// model's schema. If the foreign key is not explicitly given, then synthetic
  /// fields are injected into the schema to store the foreign model's primary
  /// key. For CPK, this may be multiple fields.
  ///
  /// The field names which form the foreign key are called "target names" and
  /// are stored as part of the model association in
  /// [ModelAssociation.targetNames].
  ///
  /// ## Example (w/ `fields`)
  ///
  /// ```graphql
  /// type Blog @model {
  ///   id: ID!
  ///   post: Post @hasOne
  /// }
  ///
  /// type Post @model {
  ///   id: ID!
  /// }
  /// ```
  ///
  /// When `fields` is specified, no addiitonal work is needed. The
  /// "target names" contains only "blogID".
  ///
  /// ## Example (w/out `fields`)
  ///
  /// ```graphql
  /// type Blog @model {
  ///   id: ID!
  /// }
  ///
  /// type Post @model {
  ///   id: ID!
  ///   blog: Blog! @belongsTo
  /// }
  /// ```
  ///
  /// When `fields` is absent, a synthetic field is created which follows the
  /// naming defined by [makeConnectionAttributeName]. The list of target names
  /// contains just this field, in this case `postBlogId`.
  ConnectionInfo processBelongsTo({
    required String modelName,
    required ModelField field,
    required FieldDefinitionNode fieldNode,
    required ModelTypeDefinition relatedModel,
    required ObjectTypeDefinitionNode relatedModelNode,
  }) {
    final connectionInfo = ConnectionInfoBuilder();
    connectionInfo.association
      ..associationType = ModelAssociationType.belongsTo
      ..associatedType = relatedModel.name;

    final targetNames = <String>[];

    // Get the associated `@hasMany` field by relationship equality when the
    // relation is bi-directional.
    //
    // In this case, use the foreign keys created by the `@hasMany` field
    // instead of creating a new set of keys.
    //
    // TODO(dnys1): Why not reuse the keys created by `belongsTo` in `hasMany`
    // model? That would seem to make more sense than complicating the logic
    // here.
    final hasManyField = relatedModelNode.fields.singleWhereOrNull((f) {
      return f.isHasMany && f.type.typeName == modelName;
    });

    // Look for `fields` argument on `@belongsTo` directive. If present, use
    // those for the target names.
    final fields = fieldNode.connectionFields;
    if (fields != null) {
      targetNames.addAll(fields);
    } else {
      // Create the synthetic fields, one for each of the fields in the related
      // model's primary key index.
      for (final fieldName in relatedModel.modelIdentifier.fields) {
        final fieldType = relatedModel.fields[fieldName]!.type;
        final syntheticFieldName = hasManyField != null
            ? makeConnectionAttributeName(
                relatedModel.name,
                hasManyField.wireName,
                fieldName,
              )
            : makeConnectionAttributeName(
                modelName,
                fieldNode.wireName,
                fieldName,
              );
        targetNames.add(syntheticFieldName);
        connectionInfo.newFields.add(
          modelName,
          ModelField(
            name: syntheticFieldName,
            type: fieldType.rebuild(
              isRequired: field.type.isRequired,
            ),
            // Must be writeable.
            isReadOnly: false,
          ),
        );
      }
    }
    connectionInfo.association.targetNames.replace(targetNames);

    // Create the foreign key index on the current model to aid in code
    // generation.
    connectionInfo.newIndexes.add(
      modelName,
      ModelIndex.foreignKey(
        fieldName: field.name,
        keyFields: targetNames,
      ),
    );

    return connectionInfo.build();
  }

  /// A `hasOne` connection, like a `belongsTo`, forms a 1-1 relationship
  /// between two models where the foreign key is held by the model with the
  /// `@hasOne` directive.
  ///
  /// > **NOTE**: An Amplify `@hasOne` connection is NOT a true hasOne relation
  ///   where the foreign key is stored on the opposite end of the relationship.
  ///   It should be thought of as a `belongsTo` with lazy loading behavior.
  ///   That means that two models target each other via a `hasOne`/`belongsTo`
  ///   pairing, there are **two** sets of foreign keys stored, one on each
  ///   model with the opposite model's primary key.
  ///
  /// The foreign key's fields can specified via the `fields` attribute of the
  /// `@hasOne` directive, in which case they must exist as part of the
  /// model's schema. If the foreign key is not explicitly given, then synthetic
  /// fields are injected into the schema to store the foreign model's primary
  /// key. For CPK, this may be multiple fields.
  ///
  /// The field names which form the foreign key are called "target names" and
  /// are stored as part of the model association in
  /// [ModelAssociation.targetNames].
  ///
  /// In addition to the target names, which represent the foreign key on the
  /// current model, the connected fields of the related model are also stored
  /// as part of the association in [ModelAssociation.associatedFields].
  ///
  /// ### Example (Uni-Directional w/ `fields`)
  ///
  /// ```graphql
  /// type Blog @model {
  ///   id: ID!
  ///   postID: ID
  ///   post: Post @hasOne(fields: ["postID"])
  /// }
  ///
  /// type Post @model {
  ///   id: ID!
  /// }
  /// ```
  ///
  /// When `fields` is specified, no addiitonal work is needed. The
  /// "target names" contains only `postID`. The associated `Post` field is the
  /// `id` field.
  ///
  /// ### Example (Uni-Directional w/out `fields`)
  ///
  /// ```graphql
  /// type Blog @model {
  ///   id: ID!
  ///   post: Post @hasOne
  /// }
  ///
  /// type Post @model {
  ///   id: ID!
  /// }
  /// ```
  ///
  /// When `fields` is absent, a synthetic field is created which follows the
  /// naming defined by [makeConnectionAttributeName]. The list of target names
  /// contains just this field, in this case "blogPostId".
  ConnectionInfo processHasOne({
    required String modelName,
    required ModelField field,
    required FieldDefinitionNode fieldNode,
    required ModelTypeDefinition relatedModel,
    required ObjectTypeDefinitionNode relatedModelNode,
  }) {
    final connectionInfo = ConnectionInfoBuilder();
    connectionInfo.association
      ..associationType = ModelAssociationType.hasOne
      ..associatedType = relatedModel.name;

    // Get the associated field by relationship equality when the relation
    // is bi-directional.
    final bidiField = relatedModelNode.fields.singleWhereOrNull((f) {
      return f.isBelongsTo && f.type.typeName == modelName;
    });
    if (bidiField != null) {
      connectionInfo.association.associatedFields.add(bidiField.wireName);
    } else {
      // Associate to the related model's primary key.
      connectionInfo.association.associatedFields.replace(
        relatedModel.modelIdentifier.fields,
      );
    }

    // Look for `fields` argument on `@hasOne` directive. If present, use those
    // for the target names.
    final fields = fieldNode.connectionFields;
    if (fields != null) {
      connectionInfo.association.targetNames.addAll(fields);
    } else {
      // Create the foreign key using the related model's primary key.
      for (final fieldName in relatedModel.modelIdentifier.fields) {
        final fieldType = relatedModel.fields[fieldName]!.type;
        final syntheticFieldName = makeConnectionAttributeName(
          modelName,
          fieldNode.name.value,
          fieldName,
        );
        connectionInfo.association.targetNames.add(syntheticFieldName);
        connectionInfo.newFields.add(
          modelName,
          ModelField(
            name: syntheticFieldName,
            type: fieldType.rebuild(
              isRequired: field.type.isRequired,
            ),
            // Must be writeable.
            isReadOnly: false,
          ),
        );
      }
    }

    return connectionInfo.build();
  }

  /// A `hasMany` connection forms a 1-N relationship between two models where
  /// the foreign key is held by the model on the opposite side of the
  /// `@hasMany` directive.
  ///
  /// The foreign key's fields can specified via the `fields` attribute of the
  /// `@hasMany` directive, in which case they must exist as part of the
  /// model's schema. If the foreign key is not explicitly given, then synthetic
  /// fields are injected into the related model's schema to store this model's
  /// primary key. For CPK, this may be multiple fields.
  ///
  /// The field names which form the foreign key are called "target names" and
  /// are stored as part of the model association in
  /// [ModelAssociation.targetNames].
  ///
  /// In addition to the target names, which represent the foreign key on the
  /// related model, the connected fields of the related model are also stored
  /// as part of the association in [ModelAssociation.associatedFields].
  ConnectionInfo processHasMany({
    required String modelName,
    required ModelField field,
    required FieldDefinitionNode fieldNode,
    required ModelTypeDefinition relatedModel,
    required ObjectTypeDefinitionNode relatedModelNode,
  }) {
    final connectionInfo = ConnectionInfoBuilder();
    connectionInfo.association
      ..associationType = ModelAssociationType.hasMany
      ..associatedType = relatedModel.name;

    final relatedModelNode = objectNodes[relatedModel.name]!;

    // If present, find the related fields matching the local `fields`.
    final indexName = fieldNode.indexName;
    final index = indexName == null
        ? relatedModel.modelIdentifier
        : relatedModel.indexNamed(indexName);
    final directlyRelatedField = index.primaryField;

    // Get the associated field by relationship equality when the relation
    // is bi-directional, i.e. there is a corresponding `@belongsTo`.
    final bidiField = relatedModelNode.fields.singleWhereOrNull((f) {
      return f.isBelongsTo &&
          f.type.typeName == modelName &&
          (indexName == null || f.connectionFields?[0] == directlyRelatedField);
    });

    if (bidiField != null) {
      connectionInfo.association.associatedFields.add(bidiField.wireName);
    } else if (indexName != null) {
      connectionInfo.association.associatedFields.addAll(index.fields);
    } else {
      // Create the foreign key on the related model using this model's
      // primary key.
      final thisModel =
          builder.typeDefinitions[modelName]! as ModelTypeDefinition;
      final foreignKeyFields =
          thisModel.modelIdentifier.fields.map((f) => thisModel.fields[f]!);
      final targetNames = <String>[];
      for (final foreignField in foreignKeyFields) {
        final syntheticFieldName = makeConnectionAttributeName(
          modelName,
          fieldNode.name.value,
          foreignField.name,
        );
        targetNames.add(syntheticFieldName);
        connectionInfo.newFields.add(
          relatedModel.name,
          ModelField(
            name: syntheticFieldName,
            type: foreignField.type.rebuild(
              isRequired: false,
            ),
            // Must be writeable.
            isReadOnly: false,
          ),
        );
      }
      connectionInfo.association.associatedFields.addAll(targetNames);

      // Create the foreign key index on the related model to aid in code
      // generation.
      connectionInfo.newIndexes.add(
        relatedModel.name,
        ModelIndex.foreignKey(
          // To match `amplify-codegen`:
          // https://github.com/aws-amplify/amplify-codegen/blob/89f00a5bd74fc30ddb07263d9ac770ccf44df12d/packages/appsync-modelgen-plugin/src/utils/process-has-many.ts#L204
          name: 'gsi-$modelName.${field.name}',
          fieldName: '$modelName.${field.name}',
          keyFields: targetNames,
        ),
      );
    }

    return connectionInfo.build();
  }

  /// A `manyToMany` connection forms a N-N relationship between two models
  /// where the foreign key is held by both models and points to a synthetic
  /// join table which is injected into the schema.
  ConnectionInfo processManyToMany() {
    throw UnimplementedError();
  }
}
