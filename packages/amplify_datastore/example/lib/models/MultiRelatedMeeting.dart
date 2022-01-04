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
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the MultiRelatedMeeting type in your schema.
@immutable
class MultiRelatedMeeting extends Model {
  static const classType = _MultiRelatedMeetingModelType();
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
    } catch (e) {
      throw DataStoreException(
          DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: DataStoreExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
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

  const MultiRelatedMeeting._internal(
      {required this.id, required title, attendees, createdAt, updatedAt})
      : _title = title,
        _attendees = attendees,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory MultiRelatedMeeting(
      {String? id,
      required String title,
      List<MultiRelatedRegistration>? attendees}) {
    return MultiRelatedMeeting._internal(
        id: id == null ? UUID.getUUID() : id,
        title: title,
        attendees: attendees != null
            ? List<MultiRelatedRegistration>.unmodifiable(attendees)
            : attendees);
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
    var buffer = StringBuffer();

    buffer.write("MultiRelatedMeeting {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  MultiRelatedMeeting copyWith(
      {String? id, String? title, List<MultiRelatedRegistration>? attendees}) {
    return MultiRelatedMeeting._internal(
        id: id ?? this.id,
        title: title ?? this.title,
        attendees: attendees ?? this.attendees);
  }

  MultiRelatedMeeting.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _title = json['title'],
        _attendees = json['attendees'] is List
            ? (json['attendees'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => MultiRelatedRegistration.fromJson(
                    Map<String, dynamic>.from(e['serializedData'])))
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
        'title': _title,
        'attendees': _attendees
            ?.map((MultiRelatedRegistration? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "multiRelatedMeeting.id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField ATTENDEES = QueryField(
      fieldName: "attendees",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedRegistration).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedMeeting";
    modelSchemaDefinition.pluralName = "MultiRelatedMeetings";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: MultiRelatedMeeting.TITLE,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: MultiRelatedMeeting.ATTENDEES,
        isRequired: false,
        ofModelName: (MultiRelatedRegistration).toString(),
        associatedKey: MultiRelatedRegistration.MEETING));

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

class _MultiRelatedMeetingModelType extends ModelType<MultiRelatedMeeting> {
  const _MultiRelatedMeetingModelType();

  @override
  MultiRelatedMeeting fromJson(Map<String, dynamic> jsonData) {
    return MultiRelatedMeeting.fromJson(jsonData);
  }
}
