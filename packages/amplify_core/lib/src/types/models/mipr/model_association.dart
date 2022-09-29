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

import 'package:amplify_core/src/types/models/mipr/serializers.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_association.g.dart';

/// {@template amplify_core.models.mipr.model_association}
/// The type of association/relationship of a model's field as defined by one
/// of the Amplify relationship directives:
///
/// - `@hasOne`: [hasOne]
/// - `@hasMany`: [hasMany]
/// - `@belongsTo`: [belongsTo]
/// - `@manyToMany`: [manyToMany]
/// {@endtemplate}
class ModelAssociationType extends EnumClass {
  const ModelAssociationType._(super.name);

  /// An `@hasOne` association.
  ///
  /// Indicates a model is in a 1->1 relationship with the associated model.
  /// In this relationship, the foreign key is owned by the associated model.
  @BuiltValueEnumConst(wireName: 'HasOne')
  static const ModelAssociationType hasOne = _$hasOne;

  /// An `@hasMany` association.
  ///
  /// Indicates a model is in a 1->N relationship with the associated model.
  /// In this relationship, the foreign key is owned by the associated model.
  @BuiltValueEnumConst(wireName: 'HasMany')
  static const ModelAssociationType hasMany = _$hasMany;

  /// An `@belongsTo` association.
  ///
  /// Indicates a model is in a 1->1 relationship with the associated model.
  /// In this relationship, the foreign key is owned by this model.
  @BuiltValueEnumConst(wireName: 'BelongsTo')
  static const ModelAssociationType belongsTo = _$belongsTo;

  /// An `@manyToMany` association.
  ///
  /// Indicates a model is in a N->N relationship with the associated model.
  /// In this relationship, the foreign keys are stored in a join table.
  @BuiltValueEnumConst(wireName: 'ManyToMany')
  static const ModelAssociationType manyToMany = _$manyToMany;

  /// The values of [ModelAssociationType].
  static BuiltSet<ModelAssociationType> get values =>
      _$ModelAssociationTypeValues;

  /// The [ModelAssociationType] value corresponding to [name].
  static ModelAssociationType valueOf(String name) =>
      _$ModelAssociationTypeValueOf(name);

  /// The serializer for [ModelAssociationType].
  static Serializer<ModelAssociationType> get serializer =>
      _$modelAssociationTypeSerializer;
}

/// {@template amplify_core.models.mipr.model_association}
/// Represents an association/relationship between two model types.
/// {@endtemplate}
abstract class ModelAssociation
    with AWSSerializable<Map<String, Object?>>
    implements Built<ModelAssociation, ModelAssociationBuilder> {
  /// {@macro amplify_core.models.mipr.model_association}
  factory ModelAssociation({
    required ModelAssociationType associationType,
    required String associatedType,
    List<String>? associatedFields,
    List<String>? targetNames,
  }) =>
      _$ModelAssociation._(
        associationType: associationType,
        associatedType: associatedType,
        associatedFields: associatedFields?.toBuiltList(),
        targetNames: targetNames?.toBuiltList(),
      );

  /// Creates a `hasOne` association.
  factory ModelAssociation.hasOne({
    required String associatedType,
    required List<String> associatedFields,
    required List<String> targetNames,
  }) =>
      ModelAssociation(
        associationType: ModelAssociationType.hasOne,
        associatedType: associatedType,
        associatedFields: associatedFields,
        targetNames: targetNames,
      );

  /// Creates a `hasMany` association.
  factory ModelAssociation.hasMany({
    required String associatedType,
    required List<String> associatedFields,
  }) =>
      ModelAssociation(
        associationType: ModelAssociationType.hasMany,
        associatedType: associatedType,
        associatedFields: associatedFields,
      );

  /// Creates a `belongsTo` association.
  factory ModelAssociation.belongsTo({
    required String associatedType,
    required List<String> targetNames,
  }) =>
      ModelAssociation(
        associationType: ModelAssociationType.belongsTo,
        associatedType: associatedType,
        targetNames: targetNames,
      );

  /// {@template amplify_core.models.mipr.model_association}
  factory ModelAssociation.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(serializer, json) as ModelAssociation;
  }

  /// {@template amplify_core.models.mipr.model_association}
  factory ModelAssociation.build([
    void Function(ModelAssociationBuilder) updates,
  ]) = _$ModelAssociation;

  const ModelAssociation._();

  /// {@macro amplify_core.models.mipr.model_association}
  ModelAssociationType get associationType;

  /// The name of the associated model.
  String get associatedType;

  /// The names of the related fields in the associated model.
  BuiltList<String>? get associatedFields;

  /// The foreign key, i.e. the local field(s) targeted by this association.
  BuiltList<String>? get targetNames;

  @override
  Map<String, Object?> toJson() {
    return serializers.serializeWith(serializer, this) as Map<String, Object?>;
  }

  /// The serializer for [ModelAssociation].
  static Serializer<ModelAssociation> get serializer =>
      _$modelAssociationSerializer;
}
