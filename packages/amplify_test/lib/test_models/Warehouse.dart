// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// This is an auto generated class representing the Warehouse type in your schema.
@immutable
class Warehouse extends Model {
  static const classType = _WarehouseModelType();
  final String id;
  final String? _name;
  final String? _region;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;

  WarehouseModelIdentifier get modelIdentifier {
    try {
      return WarehouseModelIdentifier(id: id, name: _name!, region: _region!);
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

  String get region {
    try {
      return _region!;
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

  const Warehouse._internal(
      {required this.id, required name, required region, createdAt, updatedAt})
      : _name = name,
        _region = region,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Warehouse(
      {String? id, required String name, required String region}) {
    return Warehouse._internal(
        id: id == null ? UUID.getUUID() : id, name: name, region: region);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Warehouse &&
        id == other.id &&
        _name == other._name &&
        _region == other._region;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Warehouse {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("region=" + "$_region" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Warehouse copyWith() {
    return Warehouse._internal(id: id, name: name, region: region);
  }

  Warehouse.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        _name = json['name'],
        _region = json['region'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': _name,
        'region': _region,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier MODEL_IDENTIFIER = QueryModelIdentifier();
  static final QueryField ID = QueryField(fieldName: "warehouse.id");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField REGION = QueryField(fieldName: "region");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Warehouse";
    modelSchemaDefinition.pluralName = "Warehouses";

    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["id", "name", "region"], name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.id());

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Warehouse.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Warehouse.REGION,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

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

class _WarehouseModelType extends ModelType<Warehouse> {
  const _WarehouseModelType();

  @override
  Warehouse fromJson(Map<String, dynamic> jsonData) {
    return Warehouse.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'Warehouse';
  }
}

/// This is an auto generated class representing the model identifier
/// of [Warehouse] in your schema.
@immutable
class WarehouseModelIdentifier implements ModelIdentifier<Warehouse> {
  final String id;
  final String name;
  final String region;

  /// Create an instance of WarehouseModelIdentifier using [id] the primary key.
  /// And [name], [region] the sort keys.
  const WarehouseModelIdentifier(
      {required this.id, required this.name, required this.region});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'id': id, 'name': name, 'region': region});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'WarehouseModelIdentifier(id: $id, name: $name, region: $region)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WarehouseModelIdentifier &&
        id == other.id &&
        name == other.name &&
        region == other.region;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ region.hashCode;
}
