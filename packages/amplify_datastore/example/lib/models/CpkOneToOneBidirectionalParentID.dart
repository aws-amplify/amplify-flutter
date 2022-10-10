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
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the CpkOneToOneBidirectionalParentID type in your schema.
@immutable
class CpkOneToOneBidirectionalParentID extends Model {
  static const classType = _CpkOneToOneBidirectionalParentIDModelType();
  final String id;
  final String? _name;
  final CpkOneToOneBidirectionalChildImplicitID? _implicitChild;
  final CpkOneToOneBidirectionalChildExplicitID? _explicitChild;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _cpkOneToOneBidirectionalParentIDImplicitChildId;
  final String? _cpkOneToOneBidirectionalParentIDImplicitChildName;
  final String? _cpkOneToOneBidirectionalParentIDExplicitChildId;
  final String? _cpkOneToOneBidirectionalParentIDExplicitChildName;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  CpkOneToOneBidirectionalParentIDModelIdentifier get modelIdentifier {
    try {
      return CpkOneToOneBidirectionalParentIDModelIdentifier(
          id: id, name: _name!);
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get name {
    try {
      return _name!;
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  CpkOneToOneBidirectionalChildImplicitID? get implicitChild {
    return _implicitChild;
  }

  CpkOneToOneBidirectionalChildExplicitID? get explicitChild {
    return _explicitChild;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get cpkOneToOneBidirectionalParentIDImplicitChildId {
    return _cpkOneToOneBidirectionalParentIDImplicitChildId;
  }

  String? get cpkOneToOneBidirectionalParentIDImplicitChildName {
    return _cpkOneToOneBidirectionalParentIDImplicitChildName;
  }

  String? get cpkOneToOneBidirectionalParentIDExplicitChildId {
    return _cpkOneToOneBidirectionalParentIDExplicitChildId;
  }

  String? get cpkOneToOneBidirectionalParentIDExplicitChildName {
    return _cpkOneToOneBidirectionalParentIDExplicitChildName;
  }

  const CpkOneToOneBidirectionalParentID._internal(
      {required this.id,
      required name,
      implicitChild,
      explicitChild,
      createdAt,
      updatedAt,
      cpkOneToOneBidirectionalParentIDImplicitChildId,
      cpkOneToOneBidirectionalParentIDImplicitChildName,
      cpkOneToOneBidirectionalParentIDExplicitChildId,
      cpkOneToOneBidirectionalParentIDExplicitChildName})
      : _name = name,
        _implicitChild = implicitChild,
        _explicitChild = explicitChild,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _cpkOneToOneBidirectionalParentIDImplicitChildId =
            cpkOneToOneBidirectionalParentIDImplicitChildId,
        _cpkOneToOneBidirectionalParentIDImplicitChildName =
            cpkOneToOneBidirectionalParentIDImplicitChildName,
        _cpkOneToOneBidirectionalParentIDExplicitChildId =
            cpkOneToOneBidirectionalParentIDExplicitChildId,
        _cpkOneToOneBidirectionalParentIDExplicitChildName =
            cpkOneToOneBidirectionalParentIDExplicitChildName;

  factory CpkOneToOneBidirectionalParentID(
      {String? id,
      required String name,
      CpkOneToOneBidirectionalChildImplicitID? implicitChild,
      CpkOneToOneBidirectionalChildExplicitID? explicitChild,
      String? cpkOneToOneBidirectionalParentIDImplicitChildId,
      String? cpkOneToOneBidirectionalParentIDImplicitChildName,
      String? cpkOneToOneBidirectionalParentIDExplicitChildId,
      String? cpkOneToOneBidirectionalParentIDExplicitChildName}) {
    return CpkOneToOneBidirectionalParentID._internal(
        id: id == null ? UUID.getUUID() : id,
        name: name,
        implicitChild: implicitChild,
        explicitChild: explicitChild,
        cpkOneToOneBidirectionalParentIDImplicitChildId:
            cpkOneToOneBidirectionalParentIDImplicitChildId,
        cpkOneToOneBidirectionalParentIDImplicitChildName:
            cpkOneToOneBidirectionalParentIDImplicitChildName,
        cpkOneToOneBidirectionalParentIDExplicitChildId:
            cpkOneToOneBidirectionalParentIDExplicitChildId,
        cpkOneToOneBidirectionalParentIDExplicitChildName:
            cpkOneToOneBidirectionalParentIDExplicitChildName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkOneToOneBidirectionalParentID &&
        id == other.id &&
        _name == other._name &&
        _implicitChild == other._implicitChild &&
        _explicitChild == other._explicitChild &&
        _cpkOneToOneBidirectionalParentIDImplicitChildId ==
            other._cpkOneToOneBidirectionalParentIDImplicitChildId &&
        _cpkOneToOneBidirectionalParentIDImplicitChildName ==
            other._cpkOneToOneBidirectionalParentIDImplicitChildName &&
        _cpkOneToOneBidirectionalParentIDExplicitChildId ==
            other._cpkOneToOneBidirectionalParentIDExplicitChildId &&
        _cpkOneToOneBidirectionalParentIDExplicitChildName ==
            other._cpkOneToOneBidirectionalParentIDExplicitChildName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("CpkOneToOneBidirectionalParentID {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentIDImplicitChildId=" +
        "$_cpkOneToOneBidirectionalParentIDImplicitChildId" +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentIDImplicitChildName=" +
        "$_cpkOneToOneBidirectionalParentIDImplicitChildName" +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentIDExplicitChildId=" +
        "$_cpkOneToOneBidirectionalParentIDExplicitChildId" +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentIDExplicitChildName=" +
        "$_cpkOneToOneBidirectionalParentIDExplicitChildName");
    buffer.write("}");

    return buffer.toString();
  }

  CpkOneToOneBidirectionalParentID copyWith(
      {CpkOneToOneBidirectionalChildImplicitID? implicitChild,
      CpkOneToOneBidirectionalChildExplicitID? explicitChild,
      String? cpkOneToOneBidirectionalParentIDImplicitChildId,
      String? cpkOneToOneBidirectionalParentIDImplicitChildName,
      String? cpkOneToOneBidirectionalParentIDExplicitChildId,
      String? cpkOneToOneBidirectionalParentIDExplicitChildName}) {
    return CpkOneToOneBidirectionalParentID._internal(
        id: id,
        name: name,
        implicitChild: implicitChild ?? this.implicitChild,
        explicitChild: explicitChild ?? this.explicitChild,
        cpkOneToOneBidirectionalParentIDImplicitChildId:
            cpkOneToOneBidirectionalParentIDImplicitChildId ??
                this.cpkOneToOneBidirectionalParentIDImplicitChildId,
        cpkOneToOneBidirectionalParentIDImplicitChildName:
            cpkOneToOneBidirectionalParentIDImplicitChildName ??
                this.cpkOneToOneBidirectionalParentIDImplicitChildName,
        cpkOneToOneBidirectionalParentIDExplicitChildId:
            cpkOneToOneBidirectionalParentIDExplicitChildId ??
                this.cpkOneToOneBidirectionalParentIDExplicitChildId,
        cpkOneToOneBidirectionalParentIDExplicitChildName:
            cpkOneToOneBidirectionalParentIDExplicitChildName ??
                this.cpkOneToOneBidirectionalParentIDExplicitChildName);
  }

  CpkOneToOneBidirectionalParentID.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _implicitChild = json['implicitChild']?['serializedData'] != null
            ? CpkOneToOneBidirectionalChildImplicitID.fromJson(
                Map<String, dynamic>.from(
                    json['implicitChild']['serializedData']))
            : null,
        _explicitChild = json['explicitChild']?['serializedData'] != null
            ? CpkOneToOneBidirectionalChildExplicitID.fromJson(
                Map<String, dynamic>.from(
                    json['explicitChild']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _cpkOneToOneBidirectionalParentIDImplicitChildId =
            json['cpkOneToOneBidirectionalParentIDImplicitChildId'],
        _cpkOneToOneBidirectionalParentIDImplicitChildName =
            json['cpkOneToOneBidirectionalParentIDImplicitChildName'],
        _cpkOneToOneBidirectionalParentIDExplicitChildId =
            json['cpkOneToOneBidirectionalParentIDExplicitChildId'],
        _cpkOneToOneBidirectionalParentIDExplicitChildName =
            json['cpkOneToOneBidirectionalParentIDExplicitChildName'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'implicitChild': _implicitChild?.toJson(),
        'explicitChild': _explicitChild?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'cpkOneToOneBidirectionalParentIDImplicitChildId':
            _cpkOneToOneBidirectionalParentIDImplicitChildId,
        'cpkOneToOneBidirectionalParentIDImplicitChildName':
            _cpkOneToOneBidirectionalParentIDImplicitChildName,
        'cpkOneToOneBidirectionalParentIDExplicitChildId':
            _cpkOneToOneBidirectionalParentIDExplicitChildId,
        'cpkOneToOneBidirectionalParentIDExplicitChildName':
            _cpkOneToOneBidirectionalParentIDExplicitChildName
      };

  Map<String, Object?> toMap() => {
        'id': id,
        'name': _name,
        'implicitChild': _implicitChild,
        'explicitChild': _explicitChild,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'cpkOneToOneBidirectionalParentIDImplicitChildId':
            _cpkOneToOneBidirectionalParentIDImplicitChildId,
        'cpkOneToOneBidirectionalParentIDImplicitChildName':
            _cpkOneToOneBidirectionalParentIDImplicitChildName,
        'cpkOneToOneBidirectionalParentIDExplicitChildId':
            _cpkOneToOneBidirectionalParentIDExplicitChildId,
        'cpkOneToOneBidirectionalParentIDExplicitChildName':
            _cpkOneToOneBidirectionalParentIDExplicitChildName
      };

  static final QueryModelIdentifier<
          CpkOneToOneBidirectionalParentIDModelIdentifier> MODEL_IDENTIFIER =
      QueryModelIdentifier<CpkOneToOneBidirectionalParentIDModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILD = QueryField(
      fieldName: "implicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkOneToOneBidirectionalChildImplicitID).toString()));
  static final QueryField EXPLICITCHILD = QueryField(
      fieldName: "explicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkOneToOneBidirectionalChildExplicitID).toString()));
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTIDIMPLICITCHILDID =
      QueryField(fieldName: "cpkOneToOneBidirectionalParentIDImplicitChildId");
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTIDIMPLICITCHILDNAME =
      QueryField(
          fieldName: "cpkOneToOneBidirectionalParentIDImplicitChildName");
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTIDEXPLICITCHILDID =
      QueryField(fieldName: "cpkOneToOneBidirectionalParentIDExplicitChildId");
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTIDEXPLICITCHILDNAME =
      QueryField(
          fieldName: "cpkOneToOneBidirectionalParentIDExplicitChildName");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkOneToOneBidirectionalParentID";
    modelSchemaDefinition.pluralName = "CpkOneToOneBidirectionalParentIDS";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentID.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: CpkOneToOneBidirectionalParentID.IMPLICITCHILD,
        isRequired: false,
        ofModelName: (CpkOneToOneBidirectionalChildImplicitID).toString(),
        associatedKey:
            CpkOneToOneBidirectionalChildImplicitID.BELONGSTOPARENT));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: CpkOneToOneBidirectionalParentID.EXPLICITCHILD,
        isRequired: false,
        ofModelName: (CpkOneToOneBidirectionalChildExplicitID).toString(),
        associatedKey:
            CpkOneToOneBidirectionalChildExplicitID.BELONGSTOPARENT));

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

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentID
            .CPKONETOONEBIDIRECTIONALPARENTIDIMPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentID
            .CPKONETOONEBIDIRECTIONALPARENTIDIMPLICITCHILDNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentID
            .CPKONETOONEBIDIRECTIONALPARENTIDEXPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentID
            .CPKONETOONEBIDIRECTIONALPARENTIDEXPLICITCHILDNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _CpkOneToOneBidirectionalParentIDModelType
    extends ModelType<CpkOneToOneBidirectionalParentID> {
  const _CpkOneToOneBidirectionalParentIDModelType();

  @override
  CpkOneToOneBidirectionalParentID fromJson(Map<String, dynamic> jsonData) {
    return CpkOneToOneBidirectionalParentID.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkOneToOneBidirectionalParentID] in your schema.
@immutable
class CpkOneToOneBidirectionalParentIDModelIdentifier
    implements ModelIdentifier<CpkOneToOneBidirectionalParentID> {
  final String id;
  final String name;

  /// Create an instance of CpkOneToOneBidirectionalParentIDModelIdentifier using [id] the primary key.
  /// And [name] the sort key.
  const CpkOneToOneBidirectionalParentIDModelIdentifier(
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
      'CpkOneToOneBidirectionalParentIDModelIdentifier(id: $id, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkOneToOneBidirectionalParentIDModelIdentifier &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
