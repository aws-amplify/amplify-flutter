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

/** This is an auto generated class representing the CpkPostTags type in your schema. */
class CpkPostTags extends amplify_core.Model {
  static const classType = const _CpkPostTagsModelType();
  final String id;
  final CpkManyToManyPost? _cpkManyToManyPost;
  final CpkManyToManyTag? _cpkManyToManyTag;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkPostTagsModelIdentifier get modelIdentifier {
    return CpkPostTagsModelIdentifier(id: id);
  }

  CpkManyToManyPost get cpkManyToManyPost {
    try {
      return _cpkManyToManyPost!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  CpkManyToManyTag get cpkManyToManyTag {
    try {
      return _cpkManyToManyTag!;
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

  const CpkPostTags._internal(
      {required this.id,
      required cpkManyToManyPost,
      required cpkManyToManyTag,
      createdAt,
      updatedAt})
      : _cpkManyToManyPost = cpkManyToManyPost,
        _cpkManyToManyTag = cpkManyToManyTag,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory CpkPostTags(
      {String? id,
      required CpkManyToManyPost cpkManyToManyPost,
      required CpkManyToManyTag cpkManyToManyTag}) {
    return CpkPostTags._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        cpkManyToManyPost: cpkManyToManyPost,
        cpkManyToManyTag: cpkManyToManyTag);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkPostTags &&
        id == other.id &&
        _cpkManyToManyPost == other._cpkManyToManyPost &&
        _cpkManyToManyTag == other._cpkManyToManyTag;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkPostTags {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("cpkManyToManyPost=" +
        (_cpkManyToManyPost != null ? _cpkManyToManyPost!.toString() : "null") +
        ", ");
    buffer.write("cpkManyToManyTag=" +
        (_cpkManyToManyTag != null ? _cpkManyToManyTag!.toString() : "null") +
        ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  CpkPostTags copyWith(
      {CpkManyToManyPost? cpkManyToManyPost,
      CpkManyToManyTag? cpkManyToManyTag}) {
    return CpkPostTags._internal(
        id: id,
        cpkManyToManyPost: cpkManyToManyPost ?? this.cpkManyToManyPost,
        cpkManyToManyTag: cpkManyToManyTag ?? this.cpkManyToManyTag);
  }

  CpkPostTags copyWithModelFieldValues(
      {ModelFieldValue<CpkManyToManyPost>? cpkManyToManyPost,
      ModelFieldValue<CpkManyToManyTag>? cpkManyToManyTag}) {
    return CpkPostTags._internal(
        id: id,
        cpkManyToManyPost: cpkManyToManyPost == null
            ? this.cpkManyToManyPost
            : cpkManyToManyPost.value,
        cpkManyToManyTag: cpkManyToManyTag == null
            ? this.cpkManyToManyTag
            : cpkManyToManyTag.value);
  }

  CpkPostTags.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _cpkManyToManyPost =
            json['cpkManyToManyPost']?['serializedData'] != null
                ? CpkManyToManyPost.fromJson(new Map<String, dynamic>.from(
                    json['cpkManyToManyPost']['serializedData']))
                : null,
        _cpkManyToManyTag = json['cpkManyToManyTag']?['serializedData'] != null
            ? CpkManyToManyTag.fromJson(new Map<String, dynamic>.from(
                json['cpkManyToManyTag']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'cpkManyToManyPost': _cpkManyToManyPost?.toJson(),
        'cpkManyToManyTag': _cpkManyToManyTag?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'cpkManyToManyPost': _cpkManyToManyPost,
        'cpkManyToManyTag': _cpkManyToManyTag,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core.QueryModelIdentifier<CpkPostTagsModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CpkPostTagsModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final CPKMANYTOMANYPOST = amplify_core.QueryField(
      fieldName: "cpkManyToManyPost",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkManyToManyPost'));
  static final CPKMANYTOMANYTAG = amplify_core.QueryField(
      fieldName: "cpkManyToManyTag",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkManyToManyTag'));
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkPostTags";
    modelSchemaDefinition.pluralName = "CpkPostTags";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(
          fields: const ["cpkManyToManyPostId"], name: "byCpkManyToManyPost"),
      amplify_core.ModelIndex(
          fields: const ["cpkManyToManyTagId", "cpkManyToManyTaglabel"],
          name: "byCpkManyToManyTag")
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: CpkPostTags.CPKMANYTOMANYPOST,
        isRequired: true,
        targetNames: ['cpkManyToManyPostId'],
        ofModelName: 'CpkManyToManyPost'));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
        key: CpkPostTags.CPKMANYTOMANYTAG,
        isRequired: true,
        targetNames: ['cpkManyToManyTagId', 'cpkManyToManyTaglabel'],
        ofModelName: 'CpkManyToManyTag'));

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

class _CpkPostTagsModelType extends amplify_core.ModelType<CpkPostTags> {
  const _CpkPostTagsModelType();

  @override
  CpkPostTags fromJson(Map<String, dynamic> jsonData) {
    return CpkPostTags.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkPostTags';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkPostTags] in your schema.
 */
class CpkPostTagsModelIdentifier
    implements amplify_core.ModelIdentifier<CpkPostTags> {
  final String id;

  /** Create an instance of CpkPostTagsModelIdentifier using [id] the primary key. */
  const CpkPostTagsModelIdentifier({required this.id});

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
  String toString() => 'CpkPostTagsModelIdentifier(id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkPostTagsModelIdentifier && id == other.id;
  }

  @override
  int get hashCode => id.hashCode;
}
