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

/** This is an auto generated class representing the CpkHasOneUnidirectionalParent type in your schema. */
class CpkHasOneUnidirectionalParent extends amplify_core.Model {
  static const classType = const _CpkHasOneUnidirectionalParentModelType();
  final String id;
  final String? _name;
  final CpkHasOneUnidirectionalChild? _implicitChild;
  final String? _explicitChildID;
  final String? _explicitChildName;
  final CpkHasOneUnidirectionalChild? _explicitChild;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _cpkHasOneUnidirectionalParentImplicitChildId;
  final String? _cpkHasOneUnidirectionalParentImplicitChildName;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkHasOneUnidirectionalParentModelIdentifier get modelIdentifier {
    try {
      return CpkHasOneUnidirectionalParentModelIdentifier(id: id, name: _name!);
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  CpkHasOneUnidirectionalChild? get implicitChild {
    return _implicitChild;
  }

  String? get explicitChildID {
    return _explicitChildID;
  }

  String? get explicitChildName {
    return _explicitChildName;
  }

  CpkHasOneUnidirectionalChild? get explicitChild {
    return _explicitChild;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get cpkHasOneUnidirectionalParentImplicitChildId {
    return _cpkHasOneUnidirectionalParentImplicitChildId;
  }

  String? get cpkHasOneUnidirectionalParentImplicitChildName {
    return _cpkHasOneUnidirectionalParentImplicitChildName;
  }

  const CpkHasOneUnidirectionalParent._internal(
      {required this.id,
      required name,
      implicitChild,
      explicitChildID,
      explicitChildName,
      explicitChild,
      createdAt,
      updatedAt,
      cpkHasOneUnidirectionalParentImplicitChildId,
      cpkHasOneUnidirectionalParentImplicitChildName})
      : _name = name,
        _implicitChild = implicitChild,
        _explicitChildID = explicitChildID,
        _explicitChildName = explicitChildName,
        _explicitChild = explicitChild,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _cpkHasOneUnidirectionalParentImplicitChildId =
            cpkHasOneUnidirectionalParentImplicitChildId,
        _cpkHasOneUnidirectionalParentImplicitChildName =
            cpkHasOneUnidirectionalParentImplicitChildName;

  factory CpkHasOneUnidirectionalParent(
      {String? id,
      required String name,
      CpkHasOneUnidirectionalChild? implicitChild,
      String? explicitChildID,
      String? explicitChildName,
      CpkHasOneUnidirectionalChild? explicitChild,
      String? cpkHasOneUnidirectionalParentImplicitChildId,
      String? cpkHasOneUnidirectionalParentImplicitChildName}) {
    return CpkHasOneUnidirectionalParent._internal(
        id: id == null ? amplify_core.UUID.getUUID() : id,
        name: name,
        implicitChild: implicitChild,
        explicitChildID: explicitChildID,
        explicitChildName: explicitChildName,
        explicitChild: explicitChild,
        cpkHasOneUnidirectionalParentImplicitChildId:
            cpkHasOneUnidirectionalParentImplicitChildId,
        cpkHasOneUnidirectionalParentImplicitChildName:
            cpkHasOneUnidirectionalParentImplicitChildName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkHasOneUnidirectionalParent &&
        id == other.id &&
        _name == other._name &&
        _implicitChild == other._implicitChild &&
        _explicitChildID == other._explicitChildID &&
        _explicitChildName == other._explicitChildName &&
        _explicitChild == other._explicitChild &&
        _cpkHasOneUnidirectionalParentImplicitChildId ==
            other._cpkHasOneUnidirectionalParentImplicitChildId &&
        _cpkHasOneUnidirectionalParentImplicitChildName ==
            other._cpkHasOneUnidirectionalParentImplicitChildName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkHasOneUnidirectionalParent {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("explicitChildID=" + "$_explicitChildID" + ", ");
    buffer.write("explicitChildName=" + "$_explicitChildName" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("cpkHasOneUnidirectionalParentImplicitChildId=" +
        "$_cpkHasOneUnidirectionalParentImplicitChildId" +
        ", ");
    buffer.write("cpkHasOneUnidirectionalParentImplicitChildName=" +
        "$_cpkHasOneUnidirectionalParentImplicitChildName");
    buffer.write("}");

    return buffer.toString();
  }

  CpkHasOneUnidirectionalParent copyWith(
      {CpkHasOneUnidirectionalChild? implicitChild,
      String? explicitChildID,
      String? explicitChildName,
      CpkHasOneUnidirectionalChild? explicitChild,
      String? cpkHasOneUnidirectionalParentImplicitChildId,
      String? cpkHasOneUnidirectionalParentImplicitChildName}) {
    return CpkHasOneUnidirectionalParent._internal(
        id: id,
        name: name,
        implicitChild: implicitChild ?? this.implicitChild,
        explicitChildID: explicitChildID ?? this.explicitChildID,
        explicitChildName: explicitChildName ?? this.explicitChildName,
        explicitChild: explicitChild ?? this.explicitChild,
        cpkHasOneUnidirectionalParentImplicitChildId:
            cpkHasOneUnidirectionalParentImplicitChildId ??
                this.cpkHasOneUnidirectionalParentImplicitChildId,
        cpkHasOneUnidirectionalParentImplicitChildName:
            cpkHasOneUnidirectionalParentImplicitChildName ??
                this.cpkHasOneUnidirectionalParentImplicitChildName);
  }

  CpkHasOneUnidirectionalParent copyWithModelFieldValues(
      {ModelFieldValue<CpkHasOneUnidirectionalChild?>? implicitChild,
      ModelFieldValue<String?>? explicitChildID,
      ModelFieldValue<String?>? explicitChildName,
      ModelFieldValue<CpkHasOneUnidirectionalChild?>? explicitChild,
      ModelFieldValue<String?>? cpkHasOneUnidirectionalParentImplicitChildId,
      ModelFieldValue<String?>?
          cpkHasOneUnidirectionalParentImplicitChildName}) {
    return CpkHasOneUnidirectionalParent._internal(
        id: id,
        name: name,
        implicitChild:
            implicitChild == null ? this.implicitChild : implicitChild.value,
        explicitChildID: explicitChildID == null
            ? this.explicitChildID
            : explicitChildID.value,
        explicitChildName: explicitChildName == null
            ? this.explicitChildName
            : explicitChildName.value,
        explicitChild:
            explicitChild == null ? this.explicitChild : explicitChild.value,
        cpkHasOneUnidirectionalParentImplicitChildId:
            cpkHasOneUnidirectionalParentImplicitChildId == null
                ? this.cpkHasOneUnidirectionalParentImplicitChildId
                : cpkHasOneUnidirectionalParentImplicitChildId.value,
        cpkHasOneUnidirectionalParentImplicitChildName:
            cpkHasOneUnidirectionalParentImplicitChildName == null
                ? this.cpkHasOneUnidirectionalParentImplicitChildName
                : cpkHasOneUnidirectionalParentImplicitChildName.value);
  }

  CpkHasOneUnidirectionalParent.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _implicitChild = json['implicitChild']?['serializedData'] != null
            ? CpkHasOneUnidirectionalChild.fromJson(
                new Map<String, dynamic>.from(
                    json['implicitChild']['serializedData']))
            : null,
        _explicitChildID = json['explicitChildID'],
        _explicitChildName = json['explicitChildName'],
        _explicitChild = json['explicitChild']?['serializedData'] != null
            ? CpkHasOneUnidirectionalChild.fromJson(
                new Map<String, dynamic>.from(
                    json['explicitChild']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _cpkHasOneUnidirectionalParentImplicitChildId =
            json['cpkHasOneUnidirectionalParentImplicitChildId'],
        _cpkHasOneUnidirectionalParentImplicitChildName =
            json['cpkHasOneUnidirectionalParentImplicitChildName'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'implicitChild': _implicitChild?.toJson(),
        'explicitChildID': _explicitChildID,
        'explicitChildName': _explicitChildName,
        'explicitChild': _explicitChild?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'cpkHasOneUnidirectionalParentImplicitChildId':
            _cpkHasOneUnidirectionalParentImplicitChildId,
        'cpkHasOneUnidirectionalParentImplicitChildName':
            _cpkHasOneUnidirectionalParentImplicitChildName
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'implicitChild': _implicitChild,
        'explicitChildID': _explicitChildID,
        'explicitChildName': _explicitChildName,
        'explicitChild': _explicitChild,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'cpkHasOneUnidirectionalParentImplicitChildId':
            _cpkHasOneUnidirectionalParentImplicitChildId,
        'cpkHasOneUnidirectionalParentImplicitChildName':
            _cpkHasOneUnidirectionalParentImplicitChildName
      };

  static final amplify_core
      .QueryModelIdentifier<CpkHasOneUnidirectionalParentModelIdentifier>
      MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<
          CpkHasOneUnidirectionalParentModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final IMPLICITCHILD = amplify_core.QueryField(
      fieldName: "implicitChild",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkHasOneUnidirectionalChild'));
  static final EXPLICITCHILDID =
      amplify_core.QueryField(fieldName: "explicitChildID");
  static final EXPLICITCHILDNAME =
      amplify_core.QueryField(fieldName: "explicitChildName");
  static final EXPLICITCHILD = amplify_core.QueryField(
      fieldName: "explicitChild",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkHasOneUnidirectionalChild'));
  static final CPKHASONEUNIDIRECTIONALPARENTIMPLICITCHILDID =
      amplify_core.QueryField(
          fieldName: "cpkHasOneUnidirectionalParentImplicitChildId");
  static final CPKHASONEUNIDIRECTIONALPARENTIMPLICITCHILDNAME =
      amplify_core.QueryField(
          fieldName: "cpkHasOneUnidirectionalParentImplicitChildName");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkHasOneUnidirectionalParent";
    modelSchemaDefinition.pluralName = "CpkHasOneUnidirectionalParents";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasOneUnidirectionalParent.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
        key: CpkHasOneUnidirectionalParent.IMPLICITCHILD,
        isRequired: false,
        ofModelName: 'CpkHasOneUnidirectionalChild',
        associatedKey: CpkHasOneUnidirectionalChild.ID));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasOneUnidirectionalParent.EXPLICITCHILDID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasOneUnidirectionalParent.EXPLICITCHILDNAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
        key: CpkHasOneUnidirectionalParent.EXPLICITCHILD,
        isRequired: false,
        ofModelName: 'CpkHasOneUnidirectionalChild',
        associatedKey: CpkHasOneUnidirectionalChild.ID));

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

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasOneUnidirectionalParent
            .CPKHASONEUNIDIRECTIONALPARENTIMPLICITCHILDID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkHasOneUnidirectionalParent
            .CPKHASONEUNIDIRECTIONALPARENTIMPLICITCHILDNAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));
  });
}

class _CpkHasOneUnidirectionalParentModelType
    extends amplify_core.ModelType<CpkHasOneUnidirectionalParent> {
  const _CpkHasOneUnidirectionalParentModelType();

  @override
  CpkHasOneUnidirectionalParent fromJson(Map<String, dynamic> jsonData) {
    return CpkHasOneUnidirectionalParent.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkHasOneUnidirectionalParent';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkHasOneUnidirectionalParent] in your schema.
 */
class CpkHasOneUnidirectionalParentModelIdentifier
    implements amplify_core.ModelIdentifier<CpkHasOneUnidirectionalParent> {
  final String id;
  final String name;

  /**
   * Create an instance of CpkHasOneUnidirectionalParentModelIdentifier using [id] the primary key.
   * And [name] the sort key.
   */
  const CpkHasOneUnidirectionalParentModelIdentifier(
      {required this.id, required this.name});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'id': id, 'name': name});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkHasOneUnidirectionalParentModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkHasOneUnidirectionalParentModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
