// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

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

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  MultiRelatedRegistrationModelIdentifier get modelIdentifier {
    return MultiRelatedRegistrationModelIdentifier(id: id);
  }

  MultiRelatedMeeting get meeting {
    try {
      return _meeting!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  MultiRelatedAttendee get attendee {
    try {
      return _attendee!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
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
      {MultiRelatedMeeting? meeting, MultiRelatedAttendee? attendee}) {
    return MultiRelatedRegistration._internal(
        id: id,
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

  Map<String, Object?> toMap() => {
        'id': id,
        'meeting': _meeting,
        'attendee': _attendee,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<MultiRelatedRegistrationModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<MultiRelatedRegistrationModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MEETING = QueryField(
      fieldName: "meeting",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedMeeting).toString()));
  static final QueryField ATTENDEE = QueryField(
      fieldName: "attendee",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedAttendee).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedRegistration";
    modelSchemaDefinition.pluralName = "MultiRelatedRegistrations";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id"], name: null),
      ModelIndex(fields: const ["meetingId", "attendeeId"], name: "byMeeting"),
      ModelIndex(fields: const ["attendeeId", "meetingId"], name: "byAttendee")
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: MultiRelatedRegistration.MEETING,
        isRequired: true,
        targetNames: ["meetingId"],
        ofModelName: (MultiRelatedMeeting).toString()));

    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
        key: MultiRelatedRegistration.ATTENDEE,
        isRequired: true,
        targetNames: ["attendeeId"],
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

/// This is an auto generated class representing the model identifier
/// of [MultiRelatedRegistration] in your schema.
@immutable
class MultiRelatedRegistrationModelIdentifier
    implements ModelIdentifier<MultiRelatedRegistration> {
  final String id;

  /// Create an instance of MultiRelatedRegistrationModelIdentifier using [id] the primary key.
  const MultiRelatedRegistrationModelIdentifier({required this.id});

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
  String toString() => 'MultiRelatedRegistrationModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MultiRelatedRegistrationModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
