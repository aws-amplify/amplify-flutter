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

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  MultiRelatedMeetingModelIdentifier get modelIdentifier {
    return MultiRelatedMeetingModelIdentifier(id: id);
  }

  String get title {
    try {
      return _title!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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
      {String? title, List<MultiRelatedRegistration>? attendees}) {
    return MultiRelatedMeeting._internal(
        id: id,
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

  static final QueryModelIdentifier<MultiRelatedMeetingModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<MultiRelatedMeetingModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TITLE = QueryField(fieldName: "title");
  static final QueryField ATTENDEES = QueryField(
      fieldName: "attendees",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedRegistration).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedMeeting";
    modelSchemaDefinition.pluralName = "MultiRelatedMeetings";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id"], name: null)
    ];

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

/// This is an auto generated class representing the model identifier
/// of [MultiRelatedMeeting] in your schema.
@immutable
class MultiRelatedMeetingModelIdentifier
    implements ModelIdentifier<MultiRelatedMeeting> {
  final String id;

  /// Create an instance of MultiRelatedMeetingModelIdentifier using [id] the primary key.
  const MultiRelatedMeetingModelIdentifier({required this.id});

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
  String toString() => 'MultiRelatedMeetingModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MultiRelatedMeetingModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
