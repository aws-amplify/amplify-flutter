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

import 'package:amplify_core/src/types/models/mipr/model.dart';
import 'package:amplify_core/src/types/models/mipr/model_association.dart';
import 'package:amplify_core/src/types/models/mipr/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schema.g.dart';

/// {@template amplify_core.models.mipr.schema_definition}
/// A full Amplify schema with all [typeDefinitions].
///
/// This is the result of parsing and analyzing a GraphQL schema for
/// relationships, and creating necessary synthetic types, fields and indexes.
/// {@endtemplate}
abstract class SchemaDefinition
    implements Built<SchemaDefinition, SchemaDefinitionBuilder> {
  /// {@macro amplify_core.models.mipr.schema_definition}
  factory SchemaDefinition(Map<String, SchemaTypeDefinition> typeDefinitions) =>
      _$SchemaDefinition._(
        typeDefinitions: BuiltMap(typeDefinitions),
      );

  /// {@macro amplify_core.models.mipr.schema_definition}
  factory SchemaDefinition.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(serializer, json) as SchemaDefinition;
  }

  /// {@macro amplify_core.models.mipr.schema_definition}
  factory SchemaDefinition.build([
    void Function(SchemaDefinitionBuilder) updates,
  ]) = _$SchemaDefinition;

  const SchemaDefinition._();

  /// All type definitions in the schema.
  BuiltMap<String, SchemaTypeDefinition> get typeDefinitions;

  /// The adjacency list representation of the model graph, indexed by
  /// model name with the values representing the dependent model types.
  BuiltSetMultimap<String, String> get modelGraph =>
      BuiltSetMultimap.build((map) {
        final modelDefinitions =
            typeDefinitions.values.whereType<ModelTypeDefinition>();
        for (final model in modelDefinitions) {
          for (final field in model.fields.values) {
            final fieldAssociation = field.association;
            if (fieldAssociation == null) {
              continue;
            }
            final associatedType = fieldAssociation.associatedType;
            switch (fieldAssociation.associationType) {
              case ModelAssociationType.belongsTo:
                map.add(associatedType, model.name);
                break;
              case ModelAssociationType.hasMany:
              case ModelAssociationType.hasOne:
                map.add(model.name, associatedType);
                break;
              case ModelAssociationType.manyToMany:
                throw UnimplementedError();
            }
          }
        }
      });

  /// The serializer for [SchemaDefinition].
  static Serializer<SchemaDefinition> get serializer =>
      _$schemaDefinitionSerializer;
}
