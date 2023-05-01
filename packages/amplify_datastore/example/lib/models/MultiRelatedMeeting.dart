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


/** This is an auto generated class representing the MultiRelatedMeeting type in your schema. */
@immutable
class MultiRelatedMeeting extends Model {
  static const classType = const _MultiRelatedMeetingModelType();
  final String id;
  final String? _title;
  final List<MultiRelatedRegistration>? _attendees;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @override
  String getId() {
    return id;
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<MultiRelatedRegistration>? get attendees {
    return _attendees;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const MultiRelatedMeeting._internal({required this.id, required title, attendees, createdAt, updatedAt}): _title = title, _attendees = attendees, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory MultiRelatedMeeting({String? id, required String title, List<MultiRelatedRegistration>? attendees}) {
    return MultiRelatedMeeting._internal(
      id: id == null ? UUID.getUUID() : id,
      title: title,
      attendees: attendees != null ? List<MultiRelatedRegistration>.unmodifiable(attendees) : attendees);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiRelatedMeeting &&
      id == other.id &&
      _title == other._title &&
      DeepCollectionEquality().equals(_attendees, other._attendees);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("MultiRelatedMeeting {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  MultiRelatedMeeting copyWith({String? id, String? title, List<MultiRelatedRegistration>? attendees}) {
    return MultiRelatedMeeting._internal(
      id: id ?? this.id,
      title: title ?? this.title,
      attendees: attendees ?? this.attendees);
  }
  
  MultiRelatedMeeting.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _attendees = json['attendees']  != null
        ? (json['attendees']['items'] as List)
          .where((e) => e != null)
          .map((e) => MultiRelatedRegistration.fromJson(new Map<String, dynamic>.from(e)))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'attendees': _attendees?.map((MultiRelatedRegistration? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'title': _title, 'attendees': _attendees, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField ATTENDEES = QueryField(
    fieldName: "attendees",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'MultiRelatedRegistration'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedMeeting";
    modelSchemaDefinition.pluralName = "MultiRelatedMeetings";
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id"], name: null)
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: MultiRelatedMeeting.TITLE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: MultiRelatedMeeting.ATTENDEES,
      isRequired: false,
      ofModelName: 'MultiRelatedRegistration',
      associatedKey: MultiRelatedRegistration.MEETING
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

class _MultiRelatedMeetingModelType extends ModelType<MultiRelatedMeeting> {
  const _MultiRelatedMeetingModelType();
  
  @override
  MultiRelatedMeeting fromJson(Map<String, dynamic> jsonData) {
    return MultiRelatedMeeting.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'MultiRelatedMeeting';
  }
}