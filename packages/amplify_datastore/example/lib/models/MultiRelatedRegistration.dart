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

/** This is an auto generated class representing the MultiRelatedRegistration type in your schema. */
class MultiRelatedRegistration extends amplify_core.Model {
  static const classType = const _MultiRelatedRegistrationModelType();
  final String id;
  final MultiRelatedMeeting? _meeting;
  final MultiRelatedAttendee? _attendee;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  MultiRelatedAttendee get attendee {
    try {
      return _attendee!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
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
        id: id == null ? amplify_core.UUID.getUUID() : id,
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
    var buffer = new StringBuffer();

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

  MultiRelatedRegistration copyWithModelFieldValues(
      {ModelFieldValue<MultiRelatedMeeting>? meeting,
      ModelFieldValue<MultiRelatedAttendee>? attendee}) {
    return MultiRelatedRegistration._internal(
        id: id,
        meeting: meeting == null ? this.meeting : meeting.value,
        attendee: attendee == null ? this.attendee : attendee.value);
  }

  MultiRelatedRegistration.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _meeting = json['meeting']?['serializedData'] != null
            ? MultiRelatedMeeting.fromJson(new Map<String, dynamic>.from(
                json['meeting']['serializedData']))
            : null,
        _attendee = json['attendee']?['serializedData'] != null
            ? MultiRelatedAttendee.fromJson(new Map<String, dynamic>.from(
                json['attendee']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
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

  static final amplify_core
      .QueryModelIdentifier<MultiRelatedRegistrationModelIdentifier>
      MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<
          MultiRelatedRegistrationModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final MEETING = amplify_core.QueryField(
      fieldName: "meeting",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'MultiRelatedMeeting'));
  static final ATTENDEE = amplify_core.QueryField(
      fieldName: "attendee",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'MultiRelatedAttendee'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedRegistration";
    modelSchemaDefinition.pluralName = "MultiRelatedRegistrations";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id"], name: null),
      amplify_core.ModelIndex(
          fields: const ["meetingId", "attendeeId"], name: "byMeeting"),
      amplify_core.ModelIndex(
          fields: const ["attendeeId", "meetingId"], name: "byAttendee")
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: MultiRelatedRegistration.MEETING,
        isRequired: true,
        targetNames: ['meetingId'],
        ofModelName: 'MultiRelatedMeeting'));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: MultiRelatedRegistration.ATTENDEE,
        isRequired: true,
        targetNames: ['attendeeId'],
        ofModelName: 'MultiRelatedAttendee'));

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

class _MultiRelatedRegistrationModelType
    extends amplify_core.ModelType<MultiRelatedRegistration> {
  const _MultiRelatedRegistrationModelType();

  @override
  MultiRelatedRegistration fromJson(Map<String, dynamic> jsonData) {
    return MultiRelatedRegistration.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'MultiRelatedRegistration';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [MultiRelatedRegistration] in your schema.
 */
class MultiRelatedRegistrationModelIdentifier
    implements amplify_core.ModelIdentifier<MultiRelatedRegistration> {
  final String id;

  /** Create an instance of MultiRelatedRegistrationModelIdentifier using [id] the primary key. */
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
