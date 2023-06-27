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

/** This is an auto generated class representing the CpkOneToOneBidirectionalParentCD type in your schema. */
class CpkOneToOneBidirectionalParentCD extends amplify_core.Model {
  static const classType = const _CpkOneToOneBidirectionalParentCDModelType();
  final String? _customId;
  final String? _name;
  final CpkOneToOneBidirectionalChildImplicitCD? _implicitChild;
  final CpkOneToOneBidirectionalChildExplicitCD? _explicitChild;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _cpkOneToOneBidirectionalParentCDImplicitChildId;
  final String? _cpkOneToOneBidirectionalParentCDImplicitChildName;
  final String? _cpkOneToOneBidirectionalParentCDExplicitChildId;
  final String? _cpkOneToOneBidirectionalParentCDExplicitChildName;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();

  CpkOneToOneBidirectionalParentCDModelIdentifier get modelIdentifier {
    try {
      return CpkOneToOneBidirectionalParentCDModelIdentifier(
          customId: _customId!, name: _name!);
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get customId {
    try {
      return _customId!;
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

  CpkOneToOneBidirectionalChildImplicitCD? get implicitChild {
    return _implicitChild;
  }

  CpkOneToOneBidirectionalChildExplicitCD? get explicitChild {
    return _explicitChild;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  String? get cpkOneToOneBidirectionalParentCDImplicitChildId {
    return _cpkOneToOneBidirectionalParentCDImplicitChildId;
  }

  String? get cpkOneToOneBidirectionalParentCDImplicitChildName {
    return _cpkOneToOneBidirectionalParentCDImplicitChildName;
  }

  String? get cpkOneToOneBidirectionalParentCDExplicitChildId {
    return _cpkOneToOneBidirectionalParentCDExplicitChildId;
  }

  String? get cpkOneToOneBidirectionalParentCDExplicitChildName {
    return _cpkOneToOneBidirectionalParentCDExplicitChildName;
  }

  const CpkOneToOneBidirectionalParentCD._internal(
      {required customId,
      required name,
      implicitChild,
      explicitChild,
      createdAt,
      updatedAt,
      cpkOneToOneBidirectionalParentCDImplicitChildId,
      cpkOneToOneBidirectionalParentCDImplicitChildName,
      cpkOneToOneBidirectionalParentCDExplicitChildId,
      cpkOneToOneBidirectionalParentCDExplicitChildName})
      : _customId = customId,
        _name = name,
        _implicitChild = implicitChild,
        _explicitChild = explicitChild,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _cpkOneToOneBidirectionalParentCDImplicitChildId =
            cpkOneToOneBidirectionalParentCDImplicitChildId,
        _cpkOneToOneBidirectionalParentCDImplicitChildName =
            cpkOneToOneBidirectionalParentCDImplicitChildName,
        _cpkOneToOneBidirectionalParentCDExplicitChildId =
            cpkOneToOneBidirectionalParentCDExplicitChildId,
        _cpkOneToOneBidirectionalParentCDExplicitChildName =
            cpkOneToOneBidirectionalParentCDExplicitChildName;

  factory CpkOneToOneBidirectionalParentCD(
      {required String customId,
      required String name,
      CpkOneToOneBidirectionalChildImplicitCD? implicitChild,
      CpkOneToOneBidirectionalChildExplicitCD? explicitChild,
      String? cpkOneToOneBidirectionalParentCDImplicitChildId,
      String? cpkOneToOneBidirectionalParentCDImplicitChildName,
      String? cpkOneToOneBidirectionalParentCDExplicitChildId,
      String? cpkOneToOneBidirectionalParentCDExplicitChildName}) {
    return CpkOneToOneBidirectionalParentCD._internal(
        customId: customId,
        name: name,
        implicitChild: implicitChild,
        explicitChild: explicitChild,
        cpkOneToOneBidirectionalParentCDImplicitChildId:
            cpkOneToOneBidirectionalParentCDImplicitChildId,
        cpkOneToOneBidirectionalParentCDImplicitChildName:
            cpkOneToOneBidirectionalParentCDImplicitChildName,
        cpkOneToOneBidirectionalParentCDExplicitChildId:
            cpkOneToOneBidirectionalParentCDExplicitChildId,
        cpkOneToOneBidirectionalParentCDExplicitChildName:
            cpkOneToOneBidirectionalParentCDExplicitChildName);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkOneToOneBidirectionalParentCD &&
        _customId == other._customId &&
        _name == other._name &&
        _implicitChild == other._implicitChild &&
        _explicitChild == other._explicitChild &&
        _cpkOneToOneBidirectionalParentCDImplicitChildId ==
            other._cpkOneToOneBidirectionalParentCDImplicitChildId &&
        _cpkOneToOneBidirectionalParentCDImplicitChildName ==
            other._cpkOneToOneBidirectionalParentCDImplicitChildName &&
        _cpkOneToOneBidirectionalParentCDExplicitChildId ==
            other._cpkOneToOneBidirectionalParentCDExplicitChildId &&
        _cpkOneToOneBidirectionalParentCDExplicitChildName ==
            other._cpkOneToOneBidirectionalParentCDExplicitChildName;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkOneToOneBidirectionalParentCD {");
    buffer.write("customId=" + "$_customId" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write("updatedAt=" +
        (_updatedAt != null ? _updatedAt!.format() : "null") +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentCDImplicitChildId=" +
        "$_cpkOneToOneBidirectionalParentCDImplicitChildId" +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentCDImplicitChildName=" +
        "$_cpkOneToOneBidirectionalParentCDImplicitChildName" +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentCDExplicitChildId=" +
        "$_cpkOneToOneBidirectionalParentCDExplicitChildId" +
        ", ");
    buffer.write("cpkOneToOneBidirectionalParentCDExplicitChildName=" +
        "$_cpkOneToOneBidirectionalParentCDExplicitChildName");
    buffer.write("}");

    return buffer.toString();
  }

  CpkOneToOneBidirectionalParentCD copyWith(
      {CpkOneToOneBidirectionalChildImplicitCD? implicitChild,
      CpkOneToOneBidirectionalChildExplicitCD? explicitChild,
      String? cpkOneToOneBidirectionalParentCDImplicitChildId,
      String? cpkOneToOneBidirectionalParentCDImplicitChildName,
      String? cpkOneToOneBidirectionalParentCDExplicitChildId,
      String? cpkOneToOneBidirectionalParentCDExplicitChildName}) {
    return CpkOneToOneBidirectionalParentCD._internal(
        customId: customId,
        name: name,
        implicitChild: implicitChild ?? this.implicitChild,
        explicitChild: explicitChild ?? this.explicitChild,
        cpkOneToOneBidirectionalParentCDImplicitChildId:
            cpkOneToOneBidirectionalParentCDImplicitChildId ??
                this.cpkOneToOneBidirectionalParentCDImplicitChildId,
        cpkOneToOneBidirectionalParentCDImplicitChildName:
            cpkOneToOneBidirectionalParentCDImplicitChildName ??
                this.cpkOneToOneBidirectionalParentCDImplicitChildName,
        cpkOneToOneBidirectionalParentCDExplicitChildId:
            cpkOneToOneBidirectionalParentCDExplicitChildId ??
                this.cpkOneToOneBidirectionalParentCDExplicitChildId,
        cpkOneToOneBidirectionalParentCDExplicitChildName:
            cpkOneToOneBidirectionalParentCDExplicitChildName ??
                this.cpkOneToOneBidirectionalParentCDExplicitChildName);
  }

  CpkOneToOneBidirectionalParentCD copyWithModelFieldValues(
      {ModelFieldValue<CpkOneToOneBidirectionalChildImplicitCD?>? implicitChild,
      ModelFieldValue<CpkOneToOneBidirectionalChildExplicitCD?>? explicitChild,
      ModelFieldValue<String?>? cpkOneToOneBidirectionalParentCDImplicitChildId,
      ModelFieldValue<String?>?
          cpkOneToOneBidirectionalParentCDImplicitChildName,
      ModelFieldValue<String?>? cpkOneToOneBidirectionalParentCDExplicitChildId,
      ModelFieldValue<String?>?
          cpkOneToOneBidirectionalParentCDExplicitChildName}) {
    return CpkOneToOneBidirectionalParentCD._internal(
        customId: customId,
        name: name,
        implicitChild:
            implicitChild == null ? this.implicitChild : implicitChild.value,
        explicitChild:
            explicitChild == null ? this.explicitChild : explicitChild.value,
        cpkOneToOneBidirectionalParentCDImplicitChildId:
            cpkOneToOneBidirectionalParentCDImplicitChildId == null
                ? this.cpkOneToOneBidirectionalParentCDImplicitChildId
                : cpkOneToOneBidirectionalParentCDImplicitChildId.value,
        cpkOneToOneBidirectionalParentCDImplicitChildName:
            cpkOneToOneBidirectionalParentCDImplicitChildName == null
                ? this.cpkOneToOneBidirectionalParentCDImplicitChildName
                : cpkOneToOneBidirectionalParentCDImplicitChildName.value,
        cpkOneToOneBidirectionalParentCDExplicitChildId:
            cpkOneToOneBidirectionalParentCDExplicitChildId == null
                ? this.cpkOneToOneBidirectionalParentCDExplicitChildId
                : cpkOneToOneBidirectionalParentCDExplicitChildId.value,
        cpkOneToOneBidirectionalParentCDExplicitChildName:
            cpkOneToOneBidirectionalParentCDExplicitChildName == null
                ? this.cpkOneToOneBidirectionalParentCDExplicitChildName
                : cpkOneToOneBidirectionalParentCDExplicitChildName.value);
  }

  CpkOneToOneBidirectionalParentCD.fromJson(Map<String, dynamic> json)
      : _customId = json['customId'],
        _name = json['name'],
        _implicitChild = json['implicitChild']?['serializedData'] != null
            ? CpkOneToOneBidirectionalChildImplicitCD.fromJson(
                new Map<String, dynamic>.from(
                    json['implicitChild']['serializedData']))
            : null,
        _explicitChild = json['explicitChild']?['serializedData'] != null
            ? CpkOneToOneBidirectionalChildExplicitCD.fromJson(
                new Map<String, dynamic>.from(
                    json['explicitChild']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null,
        _cpkOneToOneBidirectionalParentCDImplicitChildId =
            json['cpkOneToOneBidirectionalParentCDImplicitChildId'],
        _cpkOneToOneBidirectionalParentCDImplicitChildName =
            json['cpkOneToOneBidirectionalParentCDImplicitChildName'],
        _cpkOneToOneBidirectionalParentCDExplicitChildId =
            json['cpkOneToOneBidirectionalParentCDExplicitChildId'],
        _cpkOneToOneBidirectionalParentCDExplicitChildName =
            json['cpkOneToOneBidirectionalParentCDExplicitChildName'];

  Map<String, dynamic> toJson() => {
        'customId': _customId,
        'name': _name,
        'implicitChild': _implicitChild?.toJson(),
        'explicitChild': _explicitChild?.toJson(),
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format(),
        'cpkOneToOneBidirectionalParentCDImplicitChildId':
            _cpkOneToOneBidirectionalParentCDImplicitChildId,
        'cpkOneToOneBidirectionalParentCDImplicitChildName':
            _cpkOneToOneBidirectionalParentCDImplicitChildName,
        'cpkOneToOneBidirectionalParentCDExplicitChildId':
            _cpkOneToOneBidirectionalParentCDExplicitChildId,
        'cpkOneToOneBidirectionalParentCDExplicitChildName':
            _cpkOneToOneBidirectionalParentCDExplicitChildName
      };

  Map<String, Object?> toMap() => {
        'customId': _customId,
        'name': _name,
        'implicitChild': _implicitChild,
        'explicitChild': _explicitChild,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
        'cpkOneToOneBidirectionalParentCDImplicitChildId':
            _cpkOneToOneBidirectionalParentCDImplicitChildId,
        'cpkOneToOneBidirectionalParentCDImplicitChildName':
            _cpkOneToOneBidirectionalParentCDImplicitChildName,
        'cpkOneToOneBidirectionalParentCDExplicitChildId':
            _cpkOneToOneBidirectionalParentCDExplicitChildId,
        'cpkOneToOneBidirectionalParentCDExplicitChildName':
            _cpkOneToOneBidirectionalParentCDExplicitChildName
      };

  static final amplify_core
          .QueryModelIdentifier<CpkOneToOneBidirectionalParentCDModelIdentifier>
      MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<
          CpkOneToOneBidirectionalParentCDModelIdentifier>();
  static final CUSTOMID = amplify_core.QueryField(fieldName: "customId");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final IMPLICITCHILD = amplify_core.QueryField(
      fieldName: "implicitChild",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkOneToOneBidirectionalChildImplicitCD'));
  static final EXPLICITCHILD = amplify_core.QueryField(
      fieldName: "explicitChild",
      fieldType: amplify_core.ModelFieldType(
          amplify_core.ModelFieldTypeEnum.model,
          ofModelName: 'CpkOneToOneBidirectionalChildExplicitCD'));
  static final CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDID =
      amplify_core.QueryField(
          fieldName: "cpkOneToOneBidirectionalParentCDImplicitChildId");
  static final CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDNAME =
      amplify_core.QueryField(
          fieldName: "cpkOneToOneBidirectionalParentCDImplicitChildName");
  static final CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDID =
      amplify_core.QueryField(
          fieldName: "cpkOneToOneBidirectionalParentCDExplicitChildId");
  static final CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDNAME =
      amplify_core.QueryField(
          fieldName: "cpkOneToOneBidirectionalParentCDExplicitChildName");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkOneToOneBidirectionalParentCD";
    modelSchemaDefinition.pluralName = "CpkOneToOneBidirectionalParentCDS";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["customId", "name"], name: null)
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD.CUSTOMID,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
        key: CpkOneToOneBidirectionalParentCD.IMPLICITCHILD,
        isRequired: false,
        ofModelName: 'CpkOneToOneBidirectionalChildImplicitCD',
        associatedKey:
            CpkOneToOneBidirectionalChildImplicitCD.BELONGSTOPARENT));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
        key: CpkOneToOneBidirectionalParentCD.EXPLICITCHILD,
        isRequired: false,
        ofModelName: 'CpkOneToOneBidirectionalChildExplicitCD',
        associatedKey:
            CpkOneToOneBidirectionalChildExplicitCD.BELONGSTOPARENT));

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
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDNAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDID,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDNAME,
        isRequired: false,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));
  });
}

class _CpkOneToOneBidirectionalParentCDModelType
    extends amplify_core.ModelType<CpkOneToOneBidirectionalParentCD> {
  const _CpkOneToOneBidirectionalParentCDModelType();

  @override
  CpkOneToOneBidirectionalParentCD fromJson(Map<String, dynamic> jsonData) {
    return CpkOneToOneBidirectionalParentCD.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkOneToOneBidirectionalParentCD';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkOneToOneBidirectionalParentCD] in your schema.
 */
class CpkOneToOneBidirectionalParentCDModelIdentifier
    implements amplify_core.ModelIdentifier<CpkOneToOneBidirectionalParentCD> {
  final String customId;
  final String name;

  /**
   * Create an instance of CpkOneToOneBidirectionalParentCDModelIdentifier using [customId] the primary key.
   * And [name] the sort key.
   */
  const CpkOneToOneBidirectionalParentCDModelIdentifier(
      {required this.customId, required this.name});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'customId': customId, 'name': name});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkOneToOneBidirectionalParentCDModelIdentifier(customId: $customId, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkOneToOneBidirectionalParentCDModelIdentifier &&
        customId == other.customId &&
        name == other.name;
  }

  @override
  int get hashCode => customId.hashCode ^ name.hashCode;
}
