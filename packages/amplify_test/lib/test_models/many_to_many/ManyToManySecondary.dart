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
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the ManyToManySecondary type in your schema. */
@immutable
class ManyToManySecondary extends Model {
  static const classType = const _ManyToManySecondaryModelType();
  final String id;
  final String? _name;
  final List<FirstMtmRelation>? _firstMtmToPrimary;
  final List<SecondMtmRelation>? _secondMtmToPrimary;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ManyToManySecondaryModelIdentifier get modelIdentifier {
      return ManyToManySecondaryModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<FirstMtmRelation>? get firstMtmToPrimary {
    return _firstMtmToPrimary;
  }
  
  List<SecondMtmRelation>? get secondMtmToPrimary {
    return _secondMtmToPrimary;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ManyToManySecondary._internal({required this.id, required name, firstMtmToPrimary, secondMtmToPrimary, createdAt, updatedAt}): _name = name, _firstMtmToPrimary = firstMtmToPrimary, _secondMtmToPrimary = secondMtmToPrimary, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ManyToManySecondary({String? id, required String name, List<FirstMtmRelation>? firstMtmToPrimary, List<SecondMtmRelation>? secondMtmToPrimary}) {
    return ManyToManySecondary._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      firstMtmToPrimary: firstMtmToPrimary != null ? List<FirstMtmRelation>.unmodifiable(firstMtmToPrimary) : firstMtmToPrimary,
      secondMtmToPrimary: secondMtmToPrimary != null ? List<SecondMtmRelation>.unmodifiable(secondMtmToPrimary) : secondMtmToPrimary);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManyToManySecondary &&
      id == other.id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_firstMtmToPrimary, other._firstMtmToPrimary) &&
      DeepCollectionEquality().equals(_secondMtmToPrimary, other._secondMtmToPrimary);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ManyToManySecondary {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ManyToManySecondary copyWith({String? name, List<FirstMtmRelation>? firstMtmToPrimary, List<SecondMtmRelation>? secondMtmToPrimary}) {
    return ManyToManySecondary._internal(
      id: id,
      name: name ?? this.name,
      firstMtmToPrimary: firstMtmToPrimary ?? this.firstMtmToPrimary,
      secondMtmToPrimary: secondMtmToPrimary ?? this.secondMtmToPrimary);
  }
  
  ManyToManySecondary.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _firstMtmToPrimary = json['firstMtmToPrimary'] is List
        ? (json['firstMtmToPrimary'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FirstMtmRelation.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _secondMtmToPrimary = json['secondMtmToPrimary'] is List
        ? (json['secondMtmToPrimary'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SecondMtmRelation.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'firstMtmToPrimary': _firstMtmToPrimary?.map((FirstMtmRelation? e) => e?.toJson()).toList(), 'secondMtmToPrimary': _secondMtmToPrimary?.map((SecondMtmRelation? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'firstMtmToPrimary': _firstMtmToPrimary, 'secondMtmToPrimary': _secondMtmToPrimary, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ManyToManySecondaryModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ManyToManySecondaryModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FIRSTMTMTOPRIMARY = QueryField(
    fieldName: "firstMtmToPrimary",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'FirstMtmRelation'));
  static final QueryField SECONDMTMTOPRIMARY = QueryField(
    fieldName: "secondMtmToPrimary",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'SecondMtmRelation'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ManyToManySecondary";
    modelSchemaDefinition.pluralName = "ManyToManySecondaries";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ManyToManySecondary.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ManyToManySecondary.FIRSTMTMTOPRIMARY,
      isRequired: false,
      ofModelName: 'FirstMtmRelation',
      associatedKey: FirstMtmRelation.MANYTOMANYSECONDARY
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ManyToManySecondary.SECONDMTMTOPRIMARY,
      isRequired: false,
      ofModelName: 'SecondMtmRelation',
      associatedKey: SecondMtmRelation.MANYTOMANYSECONDARY
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ManyToManySecondaryModelType extends ModelType<ManyToManySecondary> {
  const _ManyToManySecondaryModelType();
  
  @override
  ManyToManySecondary fromJson(Map<String, dynamic> jsonData) {
    return ManyToManySecondary.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ManyToManySecondary';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ManyToManySecondary] in your schema.
 */
@immutable
class ManyToManySecondaryModelIdentifier implements ModelIdentifier<ManyToManySecondary> {
  final String id;

  /** Create an instance of ManyToManySecondaryModelIdentifier using [id] the primary key. */
  const ManyToManySecondaryModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ManyToManySecondaryModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ManyToManySecondaryModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}