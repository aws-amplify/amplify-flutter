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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;

/** This is an auto generated class representing the CpkInventory type in your schema. */
class CpkInventory extends amplify_core.Model {
  static const classType = const _CpkInventoryModelType();
  final String? _productId;
  final String? _productName;
  final String? _warehouseId;
  final String? _description;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
    '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.',
  )
  @override
  String getId() => modelIdentifier.serializeAsString();

  CpkInventoryModelIdentifier get modelIdentifier {
    try {
      return CpkInventoryModelIdentifier(
        productId: _productId!,
        productName: _productName!,
        warehouseId: _warehouseId!,
      );
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String get productId {
    try {
      return _productId!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String get productName {
    try {
      return _productName!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String get warehouseId {
    try {
      return _warehouseId!;
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
        amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastExceptionMessage,
        recoverySuggestion: amplify_core
            .AmplifyExceptionMessages
            .codeGenRequiredFieldForceCastRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  String? get description {
    return _description;
  }

  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }

  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }

  const CpkInventory._internal({
    required productId,
    required productName,
    required warehouseId,
    description,
    createdAt,
    updatedAt,
  }) : _productId = productId,
       _productName = productName,
       _warehouseId = warehouseId,
       _description = description,
       _createdAt = createdAt,
       _updatedAt = updatedAt;

  factory CpkInventory({
    required String productId,
    required String productName,
    required String warehouseId,
    String? description,
  }) {
    return CpkInventory._internal(
      productId: productId,
      productName: productName,
      warehouseId: warehouseId,
      description: description,
    );
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpkInventory &&
        _productId == other._productId &&
        _productName == other._productName &&
        _warehouseId == other._warehouseId &&
        _description == other._description;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("CpkInventory {");
    buffer.write("productId=" + "$_productId" + ", ");
    buffer.write("productName=" + "$_productName" + ", ");
    buffer.write("warehouseId=" + "$_warehouseId" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write(
      "createdAt=" + (_createdAt != null ? _createdAt.format() : "null") + ", ",
    );
    buffer.write(
      "updatedAt=" + (_updatedAt != null ? _updatedAt.format() : "null"),
    );
    buffer.write("}");

    return buffer.toString();
  }

  CpkInventory copyWith({String? description}) {
    return CpkInventory._internal(
      productId: productId,
      productName: productName,
      warehouseId: warehouseId,
      description: description ?? this.description,
    );
  }

  CpkInventory copyWithModelFieldValues({
    ModelFieldValue<String?>? description,
  }) {
    return CpkInventory._internal(
      productId: productId,
      productName: productName,
      warehouseId: warehouseId,
      description: description == null ? this.description : description.value,
    );
  }

  CpkInventory.fromJson(Map<String, dynamic> json)
    : _productId = json['productId'],
      _productName = json['productName'],
      _warehouseId = json['warehouseId'],
      _description = json['description'],
      _createdAt = json['createdAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
          : null,
      _updatedAt = json['updatedAt'] != null
          ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
          : null;

  Map<String, dynamic> toJson() => {
    'productId': _productId,
    'productName': _productName,
    'warehouseId': _warehouseId,
    'description': _description,
    'createdAt': _createdAt?.format(),
    'updatedAt': _updatedAt?.format(),
  };

  Map<String, Object?> toMap() => {
    'productId': _productId,
    'productName': _productName,
    'warehouseId': _warehouseId,
    'description': _description,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
  };

  static final amplify_core.QueryModelIdentifier<CpkInventoryModelIdentifier>
  MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<CpkInventoryModelIdentifier>();
  static final PRODUCTID = amplify_core.QueryField(fieldName: "productId");
  static final PRODUCTNAME = amplify_core.QueryField(fieldName: "productName");
  static final WAREHOUSEID = amplify_core.QueryField(fieldName: "warehouseId");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static var schema = amplify_core.Model.defineSchema(
    define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
      modelSchemaDefinition.name = "CpkInventory";
      modelSchemaDefinition.pluralName = "CpkInventories";

      modelSchemaDefinition.indexes = [
        amplify_core.ModelIndex(
          fields: const ["productId", "productName", "warehouseId"],
          name: null,
        ),
      ];

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: CpkInventory.PRODUCTID,
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: CpkInventory.PRODUCTNAME,
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: CpkInventory.WAREHOUSEID,
          isRequired: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.field(
          key: CpkInventory.DESCRIPTION,
          isRequired: false,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
          fieldName: 'createdAt',
          isRequired: false,
          isReadOnly: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.dateTime,
          ),
        ),
      );

      modelSchemaDefinition.addField(
        amplify_core.ModelFieldDefinition.nonQueryField(
          fieldName: 'updatedAt',
          isRequired: false,
          isReadOnly: true,
          ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.dateTime,
          ),
        ),
      );
    },
  );
}

class _CpkInventoryModelType extends amplify_core.ModelType<CpkInventory> {
  const _CpkInventoryModelType();

  @override
  CpkInventory fromJson(Map<String, dynamic> jsonData) {
    return CpkInventory.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'CpkInventory';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CpkInventory] in your schema.
 */
class CpkInventoryModelIdentifier
    implements amplify_core.ModelIdentifier<CpkInventory> {
  final String productId;
  final String productName;
  final String warehouseId;

  /**
   * Create an instance of CpkInventoryModelIdentifier using [productId] the primary key.
   * And [productName], [warehouseId] the sort keys.
   */
  const CpkInventoryModelIdentifier({
    required this.productId,
    required this.productName,
    required this.warehouseId,
  });

  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'productId': productId,
    'productName': productName,
    'warehouseId': warehouseId,
  });

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap().entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() =>
      'CpkInventoryModelIdentifier(productId: $productId, productName: $productName, warehouseId: $warehouseId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is CpkInventoryModelIdentifier &&
        productId == other.productId &&
        productName == other.productName &&
        warehouseId == other.warehouseId;
  }

  @override
  int get hashCode =>
      productId.hashCode ^ productName.hashCode ^ warehouseId.hashCode;
}
