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

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'MtmModelProvider.dart';

/** This is an auto generated class representing the ManyToManySecondary type in your schema. */
@immutable
class ManyToManySecondary extends Model {
  static const classType = const _ManyToManySecondaryModelType();
  final String id;
  final String? _name;
  final List<FirstMtmRelation>? _firstMtmToPrimary;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  _ManyToManySecondaryModelType getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<FirstMtmRelation>? get firstMtmToPrimary {
    return _firstMtmToPrimary;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  factory ManyToManySecondary(
      {String? id,
      required String name,
      List<FirstMtmRelation>? firstMtmToPrimary}) {
    return ManyToManySecondary._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        firstMtmToPrimary: firstMtmToPrimary != null
            ? List<FirstMtmRelation>.unmodifiable(firstMtmToPrimary)
            : firstMtmToPrimary);
  }

  const ManyToManySecondary._internal(
      {required this.id,
      required name,
      firstMtmToPrimary,
      createdAt,
      updatedAt})
      : _name = name,
        _firstMtmToPrimary = firstMtmToPrimary,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManyToManySecondary &&
        id == other.id &&
        _name == other._name &&
        DeepCollectionEquality()
            .equals(_firstMtmToPrimary, other._firstMtmToPrimary);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write('ManyToManySecondary {');
    buffer.write('id=' + '$id' + ', ');
    buffer.write('name=' + '$_name' + ', ');
    buffer.write('createdAt=' +
        (_createdAt != null ? _createdAt!.format() : 'null') +
        ', ');
    buffer.write(
        'updatedAt=' + (_updatedAt != null ? _updatedAt!.format() : 'null'));
    buffer.write('}');

    return buffer.toString();
  }

  ManyToManySecondary copyWith(
      {String? id, String? name, List<FirstMtmRelation>? firstMtmToPrimary}) {
    return ManyToManySecondary._internal(
        id: id ?? this.id,
        name: name ?? this.name,
        firstMtmToPrimary: firstMtmToPrimary ?? this.firstMtmToPrimary);
  }

  ManyToManySecondary.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _firstMtmToPrimary = json['firstMtmToPrimary'] is List
            ? (json['firstMtmToPrimary'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => FirstMtmRelation.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'firstMtmToPrimary': _firstMtmToPrimary
            ?.map((FirstMtmRelation? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: 'id');
  static final QueryField NAME = QueryField(fieldName: 'name');
  static final QueryField FIRSTMTMTOPRIMARY = QueryField(
      fieldName: 'firstMtmToPrimary',
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (FirstMtmRelation).toString()));
  static ModelSchema schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = 'ManyToManySecondary';
    modelSchemaDefinition.pluralName = 'ManyToManySecondaries';

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: ManyToManySecondary.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: ManyToManySecondary.FIRSTMTMTOPRIMARY,
        isRequired: false,
        ofModelName: (FirstMtmRelation).toString(),
        associatedKey: FirstMtmRelation.MANYTOMANYSECONDARY));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'createdAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));

    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
        fieldName: 'updatedAt',
        isRequired: false,
        isReadOnly: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)));
  });
}

class _ManyToManySecondaryModelType extends ModelType<ManyToManySecondary> {
  const _ManyToManySecondaryModelType();

  @override
  ManyToManySecondary fromJson(Map<String, dynamic> jsonData) {
    return ManyToManySecondary.fromJson(jsonData);
  }
}
