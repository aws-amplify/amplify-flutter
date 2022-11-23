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

import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_index.g.dart';

/// {@template amplify_core.models.mipr.model_index_type}
/// The type of [ModelIndex].
/// {@endtemplate}
class ModelIndexType extends EnumClass {
  const ModelIndexType._(super.name);

  /// A primary key index, created using the `@primaryKey` directive or
  /// implicitly by codegen.
  static const ModelIndexType primary = _$primary;

  /// A secondary key index, created using the `@index` directive..
  static const ModelIndexType secondary = _$secondary;

  /// A foreign key index, created by a relational directive or implictly by
  /// codegen.
  static const ModelIndexType foreign = _$foreign;

  /// Values of [ModelIndexType].
  static BuiltSet<ModelIndexType> get values => _$ModelIndexTypeValues;

  /// The [ModelIndexType] value of [name].
  static ModelIndexType valueOf(String name) => _$ModelIndexTypeValueOf(name);

  /// The [ModelIndexType] serializer.
  static Serializer<ModelIndexType> get serializer =>
      _$modelIndexTypeSerializer;
}

/// {@template amplify_core.models.mipr.model_index}
/// Describes an index that is created by a `@primaryKey` or `@index` directive,
/// and is listed in `Model.indexes.
/// {@endtemplate}
abstract class ModelIndex
    with AWSSerializable<Map<String, Object?>>
    implements Built<ModelIndex, ModelIndexBuilder> {
  /// Creates an `@primaryKey` model index.
  factory ModelIndex.primaryKey({
    required String field,
    List<String> sortKeyFields = const [],
  }) =>
      _$ModelIndex._(
        type: ModelIndexType.primary,
        primaryField: field,
        sortKeyFields: BuiltList(sortKeyFields),
      );

  /// Creates an `@index` model index.
  factory ModelIndex.secondaryKey({
    required String field,
    required String queryField,
    required String name,
    List<String> sortKeyFields = const [],
  }) =>
      _$ModelIndex._(
        type: ModelIndexType.secondary,
        name: name,
        queryField: queryField,
        primaryField: field,
        sortKeyFields: BuiltList(sortKeyFields),
      );

  /// Creates a foreign key on a model, used to hold the composite key of
  /// another model.
  factory ModelIndex.foreignKey({
    String? name,
    required String fieldName,
    required List<String> keyFields,
  }) {
    return _$ModelIndex._(
      type: ModelIndexType.foreign,
      name: name ?? fieldName,
      primaryField: fieldName,
      sortKeyFields: keyFields.toBuiltList(),
    );
  }

  /// {@macro amplify_core.models.mipr.model_index}
  factory ModelIndex.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(serializer, json) as ModelIndex;
  }

  /// {@macro amplify_core.models.mipr.model_index}
  factory ModelIndex.build([void Function(ModelIndexBuilder) updates]) =
      _$ModelIndex;
  const ModelIndex._();

  /// The type of index.
  ModelIndexType get type;

  /// The index's name that is defined by the `name` parameter of `@index`
  /// directive in a model schema.
  ///
  /// This will be `null` when the index is representing a `@primaryKey`
  /// directive.
  String? get name;

  /// The name of the query field which can be used with this index.
  ///
  /// This will only be set for secondary indexes created with the `@index`
  /// directive.
  String? get queryField;

  /// The primary field for the index.
  ///
  /// This is the field to which the `@index` or `@primaryKey` directive is
  /// attached. For foreign keys, this is the field with the relational
  /// directive.
  String get primaryField;

  /// The list of field names which, combined with [primaryField], form a
  /// composite key or index.
  ///
  /// This is the list of fields specified by the `sortKeyFields` argument
  /// to the `@index` or `@primaryKey` directive. For foreign keys, this is
  /// the list of target fields.
  BuiltList<String> get sortKeyFields;

  /// Whether this index represents the primary key/index.
  bool get isPrimaryIndex => type == ModelIndexType.primary;

  /// All the fields of the index.
  List<String> get fields => [primaryField, ...sortKeyFields];

  @override
  Map<String, Object?> toJson() {
    return serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  /// The serializer for [ModelIndex].
  static Serializer<ModelIndex> get serializer => _$modelIndexSerializer;
}
