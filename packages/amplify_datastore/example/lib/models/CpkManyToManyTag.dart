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

/** This is an auto generated class representing the CpkManyToManyTag type in your schema. */
class CpkManyToManyTag extends amplify_core.Model {
  static const classType = const _CpkManyToManyTagModelType();
  final String id;
  final String? _label;
  final List<CpkPostTags>? _posts;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkManyToManyTagModelIdentifier get modelIdentifier {
    try {
      return CpkManyToManyTagModelIdentifier(id: id, label: _label!);
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get label {
    try {
      return _label!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  List<CpkPostTags>? get posts {
    return _posts;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkManyToManyTag._internal(
      {required this.id, required label, posts, createdAt, updatedAt})
      : _label = label,
        _posts = posts,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkManyToManyTag(
      {String? id, required String label, List<CpkPostTags>? posts}) {
    return CpkManyToManyTag._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        label: label,
        posts: posts != null ? List<CpkPostTags>.unmodifiable(posts) : posts);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkManyToManyTag &&
        id == other.id &&
        _label == other._label &&
        DeepCollectionEquality().equals(_posts, other._posts);
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkManyToManyTag {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("label=" + "$_label" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkManyToManyTag copyWith({List<CpkPostTags>? posts}) {
    return CpkManyToManyTag._internal(
        id: id, label: label, posts: posts ?? this.posts);
  }

  CpkManyToManyTag copyWithModelFieldValues(
      {ModelFieldValue<List<CpkPostTags>?>? posts}) {
    return CpkManyToManyTag._internal(
        id: id, label: label, posts: posts == null ? this.posts : posts.value);
  }

  CpkManyToManyTag.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _label = json['label'],
        _posts = json['posts'] is List
            ? (json['posts'] as List)
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
        'label': _label,
        'posts': _posts?.map((CpkPostTags? e) => e?.toJson()).toList(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'label': _label,
        'posts': _posts,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core
          .QueryModelIdentifier<CpkManyToManyTagModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CpkManyToManyTagModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final LABEL = amplify_core.QueryField(fieldName: "label");
  static final POSTS = amplify_core.QueryField(
      fieldName: "posts",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkPostTags'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkManyToManyTag";
    modelSchemaDefinition.pluralName = "CpkManyToManyTags";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id", "label"], name: null)
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkManyToManyTag.LABEL,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
        key: CpkManyToManyTag.POSTS,
        isRequired: false,
        ofModelName: 'CpkPostTags',
        associatedKey: CpkPostTags.CPKMANYTOMANYTAG));

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

class _CpkManyToManyTagModelType
    extends amplify_core.ModelType<CpkManyToManyTag> {
  const _CpkManyToManyTagModelType();

  @override
  CpkManyToManyTag fromJson(Map<String, dynamic> jsonData) {
    return CpkManyToManyTag.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkManyToManyTag';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkManyToManyTag] in your schema.
 */
class CpkManyToManyTagModelIdentifier
    implements amplify_core.ModelIdentifier<CpkManyToManyTag> {
  final String id;
  final String label;

  /**
   * Create an instance of CpkManyToManyTagModelIdentifier using [id] the primary key.
   * And [label] the sort key.
   */
  const CpkManyToManyTagModelIdentifier(
      {required this.id, required this.label});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'id': id, 'label': label});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkManyToManyTagModelIdentifier(id: $id, label: $label)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkManyToManyTagModelIdentifier &&
        id == other.id &&
        label == other.label;
  }

  @override
  int get hashCode => id.hashCode ^ label.hashCode;
}
