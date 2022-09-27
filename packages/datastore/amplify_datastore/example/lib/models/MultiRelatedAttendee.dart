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

/// This is an auto generated class representing the MultiRelatedAttendee type in your schema.
@immutable
class MultiRelatedAttendee extends Model {
  static const classType = _MultiRelatedAttendeeModelType();
  final String id;
  final List<MultiRelatedRegistration>? _meetings;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @override
  String getId() {
    return id;
  }

  List<MultiRelatedRegistration>? get meetings {
    return _meetings;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const MultiRelatedAttendee._internal(
      {required this.id, meetings, createdAt, updatedAt})
      : _meetings = meetings,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory MultiRelatedAttendee(
      {String? id, List<MultiRelatedRegistration>? meetings}) {
    return MultiRelatedAttendee._internal(
        id: id == null ? UUID.getUUID() : id,
        meetings: meetings != null
            ? List<MultiRelatedRegistration>.unmodifiable(meetings)
            : meetings);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultiRelatedAttendee &&
        id == other.id &&
        DeepCollectionEquality().equals(_meetings, other._meetings);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("MultiRelatedAttendee {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  MultiRelatedAttendee copyWith(
      {String? id, List<MultiRelatedRegistration>? meetings}) {
    return MultiRelatedAttendee._internal(
        id: id ?? this.id, meetings: meetings ?? this.meetings);
  }

  MultiRelatedAttendee.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _meetings = json['meetings'] is List
            ? (json['meetings'] as List)
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
        'meetings': _meetings
            ?.map((MultiRelatedRegistration? e) => e?.toJson())
            .toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryField ID = QueryField(fieldName: "multiRelatedAttendee.id");
  static final QueryField MEETINGS = QueryField(
      fieldName: "meetings",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedRegistration).toString()));
  static var schema = Model.defineSchema(
      define: (ModelTypeDefinitionBuilder modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedAttendee";
    modelSchemaDefinition.pluralName = "MultiRelatedAttendees";

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
        key: MultiRelatedAttendee.MEETINGS,
        isRequired: false,
        ofModelName: (MultiRelatedRegistration).toString(),
        associatedKey: MultiRelatedRegistration.ATTENDEE));

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

class _MultiRelatedAttendeeModelType extends ModelType<MultiRelatedAttendee> {
  const _MultiRelatedAttendeeModelType();

  @override
  MultiRelatedAttendee fromJson(Map<String, dynamic> jsonData) {
    return MultiRelatedAttendee.fromJson(jsonData);
  }
}
