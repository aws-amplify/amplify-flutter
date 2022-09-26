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

import 'package:amplify_core/src/types/models/mipr/auth_rule.dart';
import 'package:amplify_core/src/types/models/mipr/model_association.dart';
import 'package:amplify_core/src/types/models/mipr/schema_type.dart';
import 'package:amplify_core/src/types/models/mipr/serializers.dart';
import 'package:aws_common/aws_common.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_field.g.dart';

/// {@template amplify_core.models.mipr.model_field}
/// A field on a [ModelType] or [NonModelType].
/// {@endtemplate}
abstract class ModelField
    with AWSSerializable<Map<String, Object?>>
    implements Built<ModelField, ModelFieldBuilder> {
  /// {@macro amplify_core.models.mipr.model_field}
  factory ModelField({
    required String name,
    required SchemaType type,
    bool isReadOnly = false,
    ModelAssociation? association,
    List<AuthRule>? authRules,
  }) =>
      _$ModelField._(
        name: name,
        type: type,
        isReadOnly: isReadOnly,
        association: association,
        authRules: BuiltList(authRules ?? const []),
      );

  /// {@macro amplify_core.models.mipr.model_field}
  factory ModelField.fromJson(Map<String, Object?> json) {
    return serializers.deserializeWith(ModelField.serializer, json)
        as ModelField;
  }

  /// {@macro amplify_core.models.mipr.model_field}
  factory ModelField.build([void Function(ModelFieldBuilder) updates]) =
      _$ModelField;
  const ModelField._();

  @BuiltValueHook(initializeBuilder: true)
  static void _setDefaults(ModelFieldBuilder b) {
    b.isReadOnly = false;
  }

  /// The name of the field, as defined in the GraphQL schema.
  String get name;

  /// The type of the field.
  SchemaType get type;

  /// Whether the field is read-only, i.e. cannot be updated by client code.
  bool get isReadOnly;

  /// The association (relationship) this field has with another [ModelType],
  /// if any.
  ModelAssociation? get association;

  /// The list of `@auth` rules attached to this field.
  BuiltList<AuthRule> get authRules;

  @override
  Map<String, Object?> toJson() {
    // TODO(dnys1): Remove with platform channel code
    return {
      'name': name,
      'type': type.asLegacyType.toMap(),
      'isRequired': type.isRequired,
      'isArray': type is ListType,
      'isReadOnly': isReadOnly,
      if (association != null) 'association': association?.toJson(),
      if (authRules.isNotEmpty)
        'authRules': authRules.map((x) => x.toJson()).toList(),
    };
  }

  /// The serializer for [ModelField].
  static Serializer<ModelField> get serializer => _$modelFieldSerializer;
}
