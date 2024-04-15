/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';

/** This is an auto generated class representing the ModelWithEnum type in your schema. */
class ModelWithEnum extends amplify_core.Model {
  static const classType = const _ModelWithEnumModelType();
  final String id;
  final EnumField? _enumField;
  final List<EnumField>? _listOfEnumField;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  ModelWithEnumModelIdentifier get modelIdentifier {
    return ModelWithEnumModelIdentifier(id: id);
  }

  EnumField? get enumField {
    return _enumField;
  }

  List<EnumField>? get listOfEnumField {
    return _listOfEnumField;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const ModelWithEnum._internal(
      {required this.id, enumField, listOfEnumField, createdAt, updatedAt})
      : _enumField = enumField,
        _listOfEnumField = listOfEnumField,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory ModelWithEnum(
      {String? id, EnumField? enumField, List<EnumField>? listOfEnumField}) {
    return ModelWithEnum._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        enumField: enumField,
        listOfEnumField: listOfEnumField != null
            ? List<EnumField>.unmodifiable(listOfEnumField)
            : listOfEnumField);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelWithEnum &&
        id == other.id &&
        _enumField == other._enumField &&
        DeepCollectionEquality()
            .equals(_listOfEnumField, other._listOfEnumField);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("ModelWithEnum {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("enumField=" +
        (_enumField != null ? amplify_core.enumToString(_enumField)! : "null") +
        ", ");
    buffer.write("listOfEnumField=" +
        (_listOfEnumField != null
            ? _listOfEnumField!
                .map((e) => amplify_core.enumToString(e))
                .toString()
            : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  ModelWithEnum copyWith(
      {EnumField? enumField, List<EnumField>? listOfEnumField}) {
    return ModelWithEnum._internal(
        id: id,
        enumField: enumField ?? this.enumField,
        listOfEnumField: listOfEnumField ?? this.listOfEnumField);
  }

  ModelWithEnum copyWithModelFieldValues(
      {ModelFieldValue<EnumField?>? enumField,
      ModelFieldValue<List<EnumField>?>? listOfEnumField}) {
    return ModelWithEnum._internal(
        id: id,
        enumField: enumField == null ? this.enumField : enumField.value,
        listOfEnumField: listOfEnumField == null
            ? this.listOfEnumField
            : listOfEnumField.value);
  }

  ModelWithEnum.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _enumField = amplify_core.enumFromString<EnumField>(
            json['enumField'], EnumField.values),
        _listOfEnumField = json['listOfEnumField'] is List
            ? (json['listOfEnumField'] as List)
                .map((e) => amplify_core.enumFromString<EnumField>(
                    e, EnumField.values)!)
                .toList()
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'enumField': amplify_core.enumToString(_enumField),
        'listOfEnumField':
            _listOfEnumField?.map((e) => amplify_core.enumToString(e)).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'enumField': _enumField,
        'listOfEnumField': _listOfEnumField,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core.QueryModelIdentifier<ModelWithEnumModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<ModelWithEnumModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final ENUMFIELD = amplify_core.QueryField(fieldName: "enumField");
  static final LISTOFENUMFIELD =
      amplify_core.QueryField(fieldName: "listOfEnumField");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ModelWithEnum";
    modelSchemaDefinition.pluralName = "ModelWithEnums";

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: ModelWithEnum.ENUMFIELD,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.enumeration)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: ModelWithEnum.LISTOFENUMFIELD,
        isRequired: false,
        isArray: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.collection,
            ofModelName: amplify_core.ModelFieldTypeEnum.enumeration.name)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'createdAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
            fieldName: 'updatedAt',
            isRequired: false,
            isReadOnly: true,
            ofType: amplify_core.ModelFieldType(
                amplify_core.ModelFieldTypeEnum.dateTime)));
  });
}

class _ModelWithEnumModelType extends amplify_core.ModelType<ModelWithEnum> {
  const _ModelWithEnumModelType();

  @override
  ModelWithEnum fromJson(Map<String, dynamic> jsonData) {
    return ModelWithEnum.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'ModelWithEnum';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ModelWithEnum] in your schema.
 */
class ModelWithEnumModelIdentifier
    implements amplify_core.ModelIdentifier<ModelWithEnum> {
  final String id;

  /** Create an instance of ModelWithEnumModelIdentifier using [id] the primary key. */
  const ModelWithEnumModelIdentifier({required this.id});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{'id': id});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'ModelWithEnumModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ModelWithEnumModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
