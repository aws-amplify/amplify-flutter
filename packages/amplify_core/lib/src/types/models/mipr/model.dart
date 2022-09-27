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

import 'package:amplify_core/amplify_core.dart' show ModelFieldDefinition;
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model.g.dart';

/// {@template amplify_core.models.mipr.schema_type_definition}
/// A custom type definition in an Amplify schema with or without an `@model`
/// directive.
///
/// See also:
/// - [ModelTypeDefinition]
/// - [NonModelTypeDefinition]
/// {@endtemplate}
@BuiltValue(instantiable: false)
abstract class SchemaTypeDefinition {
  /// The name of the custom type, as defined in the GraphQL schema.
  String get name;

  /// The fields of the custom type.
  BuiltMap<String, ModelField> get fields;

  /// Rebuilds `this` by updating properties via [updates].
  SchemaTypeDefinition rebuild(
    void Function(SchemaTypeDefinitionBuilder) updates,
  );
}

/// {@template amplify_core.models.mipr.schema_type_definition_add_field}
/// Adds a field to the type definition.
/// {@endtemplate}
// TODO(dnys1): Remove when codegen is updated
extension SchemaTypeDefinitionAddField on SchemaTypeDefinitionBuilder {
  /// {@macro amplify_core.models.mipr.schema_type_definition_add_field}
  void addField(ModelFieldDefinition fieldDefinition) {
    fields[fieldDefinition.name] = fieldDefinition.build();
  }
}

/// {@template amplify_core.models.mipr.model_definition}
/// The definition of a [ModelType].
/// {@endtemplate}
abstract class ModelTypeDefinition
    with AWSSerializable<Map<String, Object?>>
    implements
        SchemaTypeDefinition,
        Built<ModelTypeDefinition, ModelTypeDefinitionBuilder> {
  /// {@macro amplify_core.models.mipr.model_definition}
  factory ModelTypeDefinition({
    required String name,
    required String pluralName,
    required Map<String, ModelField> fields,
    required List<ModelIndex> indexes,
    List<AuthRule> authRules = const [],
  }) =>
      _$ModelTypeDefinition._(
        name: name,
        pluralName: pluralName,
        fields: BuiltMap(fields),
        authRules: BuiltList(authRules),
        indexes: BuiltList(indexes),
      );

  /// {@macro amplify_core.models.mipr.model_definition}
  factory ModelTypeDefinition.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(ModelTypeDefinition.serializer, json)
        as ModelTypeDefinition;
  }

  /// {@macro amplify_core.models.mipr.model_definition}
  factory ModelTypeDefinition.build([
    void Function(ModelTypeDefinitionBuilder) updates,
  ]) = _$ModelTypeDefinition;

  const ModelTypeDefinition._();

  @override
  String get name;

  /// The plural form of [name].
  String get pluralName;

  @override
  BuiltMap<String, ModelField> get fields;

  /// The primary [ModelIndex] representing the primary key.
  ModelIndex get modelIdentifier =>
      indexes.singleWhere((index) => index.isPrimaryIndex);

  /// The `@auth` rules.
  BuiltList<AuthRule> get authRules;

  /// The `@index` directives.
  BuiltList<ModelIndex> get indexes;

  @override
  Map<String, Object?> toJson() {
    // TODO(dnys1): Remove when codegen is updated
    return {
      'name': name,
      'pluralName': pluralName,
      if (authRules.isNotEmpty)
        'authRules': authRules.map((x) => x.toJson()).toList(),
      'fields':
          fields.map((key, value) => MapEntry(key, value.toJson())).toMap(),
      if (indexes.isNotEmpty)
        'indexes': indexes.map((value) => value.toJson()).toList(),
    };
  }

  /// The serializer for [ModelTypeDefinition].
  static Serializer<ModelTypeDefinition> get serializer =>
      _$modelTypeDefinitionSerializer;
}

/// {@template amplify_core.models.mipr.non_model_definition}
/// The definition of a [NonModelType].
/// {@endtemplate}
abstract class NonModelTypeDefinition
    with AWSSerializable<Map<String, Object?>>
    implements
        SchemaTypeDefinition,
        Built<NonModelTypeDefinition, NonModelTypeDefinitionBuilder> {
  /// {@macro amplify_core.models.mipr.non_model_definition}
  factory NonModelTypeDefinition({
    required String name,
    required Map<String, ModelField> fields,
  }) =>
      _$NonModelTypeDefinition._(
        name: name,
        fields: BuiltMap(fields),
      );

  /// {@macro amplify_core.models.mipr.non_model_definition}
  factory NonModelTypeDefinition.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(serializer, json)
        as NonModelTypeDefinition;
  }

  /// {@macro amplify_core.models.mipr.non_model_definition}
  factory NonModelTypeDefinition.build([
    void Function(NonModelTypeDefinitionBuilder) updates,
  ]) = _$NonModelTypeDefinition;

  const NonModelTypeDefinition._();

  @override
  String get name;

  @override
  BuiltMap<String, ModelField> get fields;

  @override
  Map<String, Object?> toJson() {
    return serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  /// The serializer for [NonModelTypeDefinition].
  static Serializer<NonModelTypeDefinition> get serializer =>
      _$nonModelTypeDefinitionSerializer;
}
