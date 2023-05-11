// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

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

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  MultiRelatedAttendeeModelIdentifier get modelIdentifier {
    return MultiRelatedAttendeeModelIdentifier(id: id);
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

  MultiRelatedAttendee copyWith({List<MultiRelatedRegistration>? meetings}) {
    return MultiRelatedAttendee._internal(
        id: id, meetings: meetings ?? this.meetings);
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

  Map<String, Object?> toMap() => {
        'id': id,
        'meetings': _meetings,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final QueryModelIdentifier<MultiRelatedAttendeeModelIdentifier>
      MODEL_IDENTIFIER =
      QueryModelIdentifier<MultiRelatedAttendeeModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MEETINGS = QueryField(
      fieldName: "meetings",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (MultiRelatedRegistration).toString()));
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MultiRelatedAttendee";
    modelSchemaDefinition.pluralName = "MultiRelatedAttendees";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id"], name: null)
    ];

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

/// This is an auto generated class representing the model identifier
/// of [MultiRelatedAttendee] in your schema.
@immutable
class MultiRelatedAttendeeModelIdentifier
    implements ModelIdentifier<MultiRelatedAttendee> {
  final String id;

  /// Create an instance of MultiRelatedAttendeeModelIdentifier using [id] the primary key.
  const MultiRelatedAttendeeModelIdentifier({required this.id});

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
  String toString() => 'MultiRelatedAttendeeModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MultiRelatedAttendeeModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
