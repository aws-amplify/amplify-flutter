// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';

/// This is an auto generated class representing the CpkOneToOneBidirectionalParentCD type in your schema.
@immutable
class CpkOneToOneBidirectionalParentCD extends Model {
  static const classType = _CpkOneToOneBidirectionalParentCDModelType();
  final String? _customId;
  final String? _name;
  final CpkOneToOneBidirectionalChildImplicitCD? _implicitChild;
  final CpkOneToOneBidirectionalChildExplicitCD? _explicitChild;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
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
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get customId {
    try {
      return _customId!;
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

  CpkOneToOneBidirectionalChildImplicitCD? get implicitChild {
    return _implicitChild;
  }

  CpkOneToOneBidirectionalChildExplicitCD? get explicitChild {
    return _explicitChild;
  }

  TemporalDateTime? get createdAt {
    return _createdAt;
  }

  TemporalDateTime? get updatedAt {
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
    var buffer = StringBuffer();

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

  CpkOneToOneBidirectionalParentCD.fromJson(Map<String, dynamic> json)
      : _customId = json['customId'],
        _name = json['name'],
        _implicitChild = json['implicitChild']?['serializedData'] != null
            ? CpkOneToOneBidirectionalChildImplicitCD.fromJson(
                Map<String, dynamic>.from(
                    json['implicitChild']['serializedData']))
            : null,
        _explicitChild = json['explicitChild']?['serializedData'] != null
            ? CpkOneToOneBidirectionalChildExplicitCD.fromJson(
                Map<String, dynamic>.from(
                    json['explicitChild']['serializedData']))
            : null,
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
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

  static final QueryModelIdentifier<
          CpkOneToOneBidirectionalParentCDModelIdentifier> MODEL_IDENTIFIER =
      QueryModelIdentifier<CpkOneToOneBidirectionalParentCDModelIdentifier>();
  static final QueryField CUSTOMID = QueryField(fieldName: "customId");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField IMPLICITCHILD = QueryField(
      fieldName: "implicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkOneToOneBidirectionalChildImplicitCD).toString()));
  static final QueryField EXPLICITCHILD = QueryField(
      fieldName: "explicitChild",
      fieldType: ModelFieldType(ModelFieldTypeEnum.model,
          ofModelName: (CpkOneToOneBidirectionalChildExplicitCD).toString()));
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDID =
      QueryField(fieldName: "cpkOneToOneBidirectionalParentCDImplicitChildId");
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDNAME =
      QueryField(
          fieldName: "cpkOneToOneBidirectionalParentCDImplicitChildName");
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDID =
      QueryField(fieldName: "cpkOneToOneBidirectionalParentCDExplicitChildId");
  static final QueryField CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDNAME =
      QueryField(
          fieldName: "cpkOneToOneBidirectionalParentCDExplicitChildName");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CpkOneToOneBidirectionalParentCD";
    modelSchemaDefinition.pluralName = "CpkOneToOneBidirectionalParentCDS";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["customId", "name"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD.CUSTOMID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: CpkOneToOneBidirectionalParentCD.IMPLICITCHILD,
        isRequired: false,
        ofModelName: (CpkOneToOneBidirectionalChildImplicitCD).toString(),
        associatedKey:
            CpkOneToOneBidirectionalChildImplicitCD.BELONGSTOPARENT));

    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
        key: CpkOneToOneBidirectionalParentCD.EXPLICITCHILD,
        isRequired: false,
        ofModelName: (CpkOneToOneBidirectionalChildExplicitCD).toString(),
        associatedKey:
            CpkOneToOneBidirectionalChildExplicitCD.BELONGSTOPARENT));

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
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDIMPLICITCHILDNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDID,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: CpkOneToOneBidirectionalParentCD
            .CPKONETOONEBIDIRECTIONALPARENTCDEXPLICITCHILDNAME,
        isRequired: false,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));
  });
}

class _CpkOneToOneBidirectionalParentCDModelType
    extends ModelType<CpkOneToOneBidirectionalParentCD> {
  const _CpkOneToOneBidirectionalParentCDModelType();

  @override
  CpkOneToOneBidirectionalParentCD fromJson(Map<String, dynamic> jsonData) {
    return CpkOneToOneBidirectionalParentCD.fromJson(jsonData);
  }
}

/// This is an auto generated class representing the model identifier
/// of [CpkOneToOneBidirectionalParentCD] in your schema.
@immutable
class CpkOneToOneBidirectionalParentCDModelIdentifier
    implements ModelIdentifier<CpkOneToOneBidirectionalParentCD> {
  final String customId;
  final String name;

  /// Create an instance of CpkOneToOneBidirectionalParentCDModelIdentifier using [customId] the primary key.
  /// And [name] the sort key.
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
