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
import 'package:collection/collection.dart';

/** This is an auto generated class representing the CpkManyToManyPost type in your schema. */
class CpkManyToManyPost extends amplify_core.Model {
  static const classType = const _CpkManyToManyPostModelType();
  final String id;
  final String? _title;
  final List<CpkPostTags>? _tags;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkManyToManyPostModelIdentifier get modelIdentifier {
    return CpkManyToManyPostModelIdentifier(id: id);
  }

  String get title {
    try {
      return _title!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<CpkPostTags>? get tags {
    return _tags;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkManyToManyPost._internal(
      {required this.id, required title, tags, createdAt, updatedAt})
      : _title = title,
        _tags = tags,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkManyToManyPost(
      {String? id, required String title, List<CpkPostTags>? tags}) {
    return CpkManyToManyPost._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        title: title,
        tags: tags != null ? List<CpkPostTags>.unmodifiable(tags) : tags);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkManyToManyPost &&
        id == other.id &&
        _title == other._title &&
        DeepCollectionEquality().equals(_tags, other._tags);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkManyToManyPost {");
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

  CpkManyToManyPost copyWith({String? title, List<CpkPostTags>? tags}) {
    return CpkManyToManyPost._internal(
        id: id, title: title ?? this.title, tags: tags ?? this.tags);
  }

  CpkManyToManyPost copyWithModelFieldValues(
      {ModelFieldValue<String>? title,
      ModelFieldValue<List<CpkPostTags>?>? tags}) {
    return CpkManyToManyPost._internal(
        id: id,
        title: title == null ? this.title : title.value,
        tags: tags == null ? this.tags : tags.value);
  }

  CpkManyToManyPost.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _title = json['title'],
        _tags = json['tags'] is List
            ? (json['tags'] as List)
                .where((e) => e?['serializedData'] != null)
                .map((e) => CpkPostTags.fromJson(
                    new Map<String, dynamic>.from(e['serializedData'])))
                .toList()
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': _title,
        'tags': _tags?.map((CpkPostTags? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'title': _title,
        'tags': _tags,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core
          .QueryModelIdentifier<CpkManyToManyPostModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CpkManyToManyPostModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final TAGS = amplify_core.QueryField(
      fieldName: "tags",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkPostTags'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkManyToManyPost";
    modelSchemaDefinition.pluralName = "CpkManyToManyPosts";

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkManyToManyPost.TITLE,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: CpkManyToManyPost.TAGS,
        isRequired: false,
        ofModelName: 'CpkPostTags',
        associatedKey: CpkPostTags.CPKMANYTOMANYPOST));

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

class _CpkManyToManyPostModelType
    extends amplify_core.ModelType<CpkManyToManyPost> {
  const _CpkManyToManyPostModelType();

  @override
  CpkManyToManyPost fromJson(Map<String, dynamic> jsonData) {
    return CpkManyToManyPost.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkManyToManyPost';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkManyToManyPost] in your schema.
 */
class CpkManyToManyPostModelIdentifier
    implements amplify_core.ModelIdentifier<CpkManyToManyPost> {
  final String id;

  /** Create an instance of CpkManyToManyPostModelIdentifier using [id] the primary key. */
  const CpkManyToManyPostModelIdentifier({required this.id});

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
  String toString() => 'CpkManyToManyPostModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkManyToManyPostModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
