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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'ModelProvider.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the MultiRelatedRegistration type in your schema.
@immutable
class MultiRelatedRegistration extends Model {
  static const classType = _MultiRelatedRegistrationModelType();
  final String id;
  final MultiRelatedMeeting? _meeting;
  final MultiRelatedAttendee? _attendee;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  MultiRelatedMeeting get meeting {
    try {
      return _meeting!;
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  MultiRelatedAttendee get attendee {
    try {
      return _attendee!;
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const MultiRelatedRegistration._internal(
      {required this.id,
      required meeting,
      required attendee,
      createdAt,
      updatedAt})
      : _meeting = meeting,
        _attendee = attendee,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory MultiRelatedRegistration(
      {String? id,
      required MultiRelatedMeeting meeting,
      required MultiRelatedAttendee attendee}) {
    return MultiRelatedRegistration._internal(
        id: id == null ? UUID.getUUID() : id,
        meeting: meeting,
        attendee: attendee);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiRelatedRegistration &&
        id == other.id &&
        _meeting == other._meeting &&
        _attendee == other._attendee;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("MultiRelatedRegistration {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write(
        "meeting=" + (_meeting != null ? _meeting!.toString() : "null") + ", ");
    buffer.write("attendee=" +
        (_attendee != null ? _attendee!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  MultiRelatedRegistration copyWith(
      {String? id,
      MultiRelatedMeeting? meeting,
      MultiRelatedAttendee? attendee}) {
    return MultiRelatedRegistration._internal(
        id: id ?? this.id,
        meeting: meeting ?? this.meeting,
        attendee: attendee ?? this.attendee);
  }

  MultiRelatedRegistration.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _meeting = json['meeting']?['serializedData'] != null
            ? MultiRelatedMeeting.fromJson(
                Map<String, dynamic>.from(json['meeting']['serializedData']))
            : null,
        _attendee = json['attendee']?['serializedData'] != null
            ? MultiRelatedAttendee.fromJson(
                Map<String, dynamic>.from(json['attendee']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'meeting': _meeting?.toJson(),
        'attendee': _attendee?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID =
      QueryField(fieldName: "multiRelatedRegistration.id");
  static final QueryField MEETING = QueryField(
      fieldName: "meeting",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedMeeting).toString()));
  static final QueryField ATTENDEE = QueryField(
      fieldName: "attendee",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedAttendee).toString()));
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedRegistration";
    modelSchemaDefinition.pluralName = "MultiRelatedRegistrations";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: MultiRelatedRegistration.MEETING,
        isRequired: true,
        targetName: "meetingId",
        ofModelName: (MultiRelatedMeeting).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: MultiRelatedRegistration.ATTENDEE,
        isRequired: true,
        targetName: "attendeeId",
        ofModelName: (MultiRelatedAttendee).toString()));

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

class _MultiRelatedRegistrationModelType
    extends ModelType<MultiRelatedRegistration> {
  const _MultiRelatedRegistrationModelType();

  @override
  MultiRelatedRegistration fromJson(Map<String, dynamic> jsonData) {
    return MultiRelatedRegistration.fromJson(jsonData);
  }
}
