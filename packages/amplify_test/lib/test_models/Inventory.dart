// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/foundation.dart';

/// This is an auto generated class representing the Inventory type in your schema.
@immutable
class Inventory extends Model {
  static const classType = _InventoryModelType();
  final String? _productID;
  final String? _name;
  final String? _warehouseID;
  final String? _region;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();

  InventoryModelIdentifier get modelIdentifier {
    try {
      return InventoryModelIdentifier(
          productID: _productID!,
          name: _name!,
          warehouseID: _warehouseID!,
          region: _region!);
    } catch (e) {
      throw AmplifyCodeGenModelException(
          AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get productID {
    try {
      return _productID!;
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

  String get warehouseID {
    try {
      return _warehouseID!;
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

  const Inventory._internal(
      {required productID,
      required name,
      required warehouseID,
      required region,
      createdAt,
      updatedAt})
      : _productID = productID,
        _name = name,
        _warehouseID = warehouseID,
        _region = region,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Inventory(
      {required String productID,
      required String name,
      required String warehouseID,
      required String region}) {
    return Inventory._internal(
        productID: productID,
        name: name,
        warehouseID: warehouseID,
        region: region);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Inventory &&
        _productID == other._productID &&
        _name == other._name &&
        _warehouseID == other._warehouseID &&
        _region == other._region;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = StringBuffer();

    buffer.write("Inventory {");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("warehouseID=" + "$_warehouseID" + ", ");
    buffer.write("region=" + "$_region" + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Inventory copyWith() {
    return Inventory._internal(
        productID: productID,
        name: name,
        warehouseID: warehouseID,
        region: region);
  }

  Inventory.fromJson(Map<String, dynamic> json)
      : _productID = json['productID'],
        _name = json['name'],
        _warehouseID = json['warehouseID'],
        _region = json['region'],
        _createdAt = json['createdAt'] != null
            ? TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'productID': _productID,
        'name': _name,
        'warehouseID': _warehouseID,
        'region': _region,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  static final QueryModelIdentifier MODEL_IDENTIFIER = QueryModelIdentifier();
  static final QueryField PRODUCTID = QueryField(fieldName: "productID");
  static final QueryField NAME = QueryField(fieldName: "name");
  static final QueryField WAREHOUSEID = QueryField(fieldName: "warehouseID");
  static final QueryField REGION = QueryField(fieldName: "region");
  static var schema =
      Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Inventory";
    modelSchemaDefinition.pluralName = "Inventories";

    modelSchemaDefinition.indexes = [
      ModelIndex(
          fields: const ["productID", "name", "warehouseID", "region"],
          name: null)
    ];

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Inventory.PRODUCTID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Inventory.NAME,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Inventory.WAREHOUSEID,
        isRequired: true,
        ofType: ModelFieldType(ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(ModelFieldDefinition.field(
        key: Inventory.REGION,
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

class _InventoryModelType extends ModelType<Inventory> {
  const _InventoryModelType();

  @override
  Inventory fromJson(Map<String, dynamic> jsonData) {
    return Inventory.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'Inventory';
  }
}

/// This is an auto generated class representing the model identifier
/// of [Inventory] in your schema.
@immutable
class InventoryModelIdentifier implements ModelIdentifier<Inventory> {
  final String productID;
  final String name;
  final String warehouseID;
  final String region;

  /// Create an instance of InventoryModelIdentifier using [productID] the primary key.
  /// And [name], [warehouseID], [region] the sort keys.
  const InventoryModelIdentifier(
      {required this.productID,
      required this.name,
      required this.warehouseID,
      required this.region});

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
        'productID': productID,
        'name': name,
        'warehouseID': warehouseID,
        'region': region
      });

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'InventoryModelIdentifier(productID: $productID, name: $name, warehouseID: $warehouseID, region: $region)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is InventoryModelIdentifier &&
        productID == other.productID &&
        name == other.name &&
        warehouseID == other.warehouseID &&
        region == other.region;
  }

  @override
  int get hashCode =>
      productID.hashCode ^
      name.hashCode ^
      warehouseID.hashCode ^
      region.hashCode;
}
