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

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_index.g.dart';

/// {@template amplify_core.models.mipr.model_index}
/// Describes an index that is created by a `@primaryKey` or `@index` directive,
/// and is listed in `Model.indexes.
/// {@endtemplate}
abstract class ModelIndex
    with AWSSerializable<Map<String, Object?>>
    implements Built<ModelIndex, ModelIndexBuilder> {
  /// Creates an `@index` model index.
  factory ModelIndex({
    required String name,
    required String field,
    List<String> sortKeyFields = const [],
  }) =>
      _$ModelIndex._(
        name: name,
        field: field,
        sortKeyFields: BuiltList(sortKeyFields),
      );

  /// Creates an `@primaryKey` model index.
  factory ModelIndex.primaryKey({
    required String field,
    List<String> sortKeyFields = const [],
  }) =>
      _$ModelIndex._(
        field: field,
        sortKeyFields: BuiltList(sortKeyFields),
      );

  /// {@macro amplify_core.models.mipr.model_index}
  factory ModelIndex.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(serializer, json) as ModelIndex;
  }

  /// {@macro amplify_core.models.mipr.model_index}
  factory ModelIndex.build([void Function(ModelIndexBuilder) updates]) =
      _$ModelIndex;
  const ModelIndex._();

  /// The index's name that is defined by the `name` parameter of `@index`
  /// directive in a model schema.
  ///
  /// This will be `null` when the index is representing a `@primaryKey`
  /// directive.
  String? get name;

  /// The primary field for the index.
  ///
  /// This is the field to which the `@index` or `@primaryKey` directive is
  /// attached.
  String get field;

  /// The list of field names which, combined with [field], form a composite
  /// key or index.
  ///
  /// This is the list of fields specified by the `sortKeyFields` argument
  /// to the `@index` or `@primaryKey` directive.
  BuiltList<String> get sortKeyFields;

  /// Whether this index represents the primary key/index.
  bool get isPrimaryIndex => name == null;

  @override
  Map<String, Object?> toJson() {
    return serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  /// The serializer for [ModelIndex].
  static Serializer<ModelIndex> get serializer => _$modelIndexSerializer;
}
