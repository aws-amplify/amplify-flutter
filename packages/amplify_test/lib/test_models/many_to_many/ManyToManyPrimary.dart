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


/** This is an auto generated class representing the ManyToManyPrimary type in your schema. */
@immutable
class ManyToManyPrimary extends Model {
  static const classType = const _ManyToManyPrimaryModelType();
  final String id;
  final String? _name;
  final List<FirstMtmRelation>? _firstMtmToSecondary;
  final List<SecondMtmRelation>? _secondMtmToSecondary;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ManyToManyPrimaryModelIdentifier get modelIdentifier {
      return ManyToManyPrimaryModelIdentifier(
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
  
  List<FirstMtmRelation>? get firstMtmToSecondary {
    return _firstMtmToSecondary;
  }
  
  List<SecondMtmRelation>? get secondMtmToSecondary {
    return _secondMtmToSecondary;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ManyToManyPrimary._internal({required this.id, required name, firstMtmToSecondary, secondMtmToSecondary, createdAt, updatedAt}): _name = name, _firstMtmToSecondary = firstMtmToSecondary, _secondMtmToSecondary = secondMtmToSecondary, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ManyToManyPrimary({String? id, required String name, List<FirstMtmRelation>? firstMtmToSecondary, List<SecondMtmRelation>? secondMtmToSecondary}) {
    return ManyToManyPrimary._internal(
      id: id == null ? UUID.getUUID() : id,
      name: name,
      firstMtmToSecondary: firstMtmToSecondary != null ? List<FirstMtmRelation>.unmodifiable(firstMtmToSecondary) : firstMtmToSecondary,
      secondMtmToSecondary: secondMtmToSecondary != null ? List<SecondMtmRelation>.unmodifiable(secondMtmToSecondary) : secondMtmToSecondary);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManyToManyPrimary &&
      id == other.id &&
      _name == other._name &&
      DeepCollectionEquality().equals(_firstMtmToSecondary, other._firstMtmToSecondary) &&
      DeepCollectionEquality().equals(_secondMtmToSecondary, other._secondMtmToSecondary);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ManyToManyPrimary {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ManyToManyPrimary copyWith({String? name, List<FirstMtmRelation>? firstMtmToSecondary, List<SecondMtmRelation>? secondMtmToSecondary}) {
    return ManyToManyPrimary._internal(
      id: id,
      name: name ?? this.name,
      firstMtmToSecondary: firstMtmToSecondary ?? this.firstMtmToSecondary,
      secondMtmToSecondary: secondMtmToSecondary ?? this.secondMtmToSecondary);
  }
  
  ManyToManyPrimary.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _firstMtmToSecondary = json['firstMtmToSecondary'] is List
        ? (json['firstMtmToSecondary'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FirstMtmRelation.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _secondMtmToSecondary = json['secondMtmToSecondary'] is List
        ? (json['secondMtmToSecondary'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => SecondMtmRelation.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'firstMtmToSecondary': _firstMtmToSecondary?.map((FirstMtmRelation? e) => e?.toJson()).toList(), 'secondMtmToSecondary': _secondMtmToSecondary?.map((SecondMtmRelation? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'name': _name, 'firstMtmToSecondary': _firstMtmToSecondary, 'secondMtmToSecondary': _secondMtmToSecondary, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<ManyToManyPrimaryModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<ManyToManyPrimaryModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField FIRSTMTMTOSECONDARY = QueryField(
    fieldName: "firstMtmToSecondary",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'FirstMtmRelation'));
  static final QueryField SECONDMTMTOSECONDARY = QueryField(
    fieldName: "secondMtmToSecondary",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'SecondMtmRelation'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ManyToManyPrimary";
    modelSchemaDefinition.pluralName = "ManyToManyPrimaries";
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: ManyToManyPrimary.NAME,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ManyToManyPrimary.FIRSTMTMTOSECONDARY,
      isRequired: false,
      ofModelName: 'FirstMtmRelation',
      associatedKey: FirstMtmRelation.MANYTOMANYPRIMARY
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: ManyToManyPrimary.SECONDMTMTOSECONDARY,
      isRequired: false,
      ofModelName: 'SecondMtmRelation',
      associatedKey: SecondMtmRelation.MANYTOMANYPRIMARY
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

class _ManyToManyPrimaryModelType extends ModelType<ManyToManyPrimary> {
  const _ManyToManyPrimaryModelType();
  
  @override
  ManyToManyPrimary fromJson(Map<String, dynamic> jsonData) {
    return ManyToManyPrimary.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ManyToManyPrimary';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ManyToManyPrimary] in your schema.
 */
@immutable
class ManyToManyPrimaryModelIdentifier implements ModelIdentifier<ManyToManyPrimary> {
  final String id;

  /** Create an instance of ManyToManyPrimaryModelIdentifier using [id] the primary key. */
  const ManyToManyPrimaryModelIdentifier({
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
  String toString() => 'ManyToManyPrimaryModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ManyToManyPrimaryModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}