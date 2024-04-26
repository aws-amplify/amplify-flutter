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

/** This is an auto generated class representing the Product type in your schema. */
class Product extends amplify_core.Model {
  static const classType = const _ProductModelType();
  final String? _productID;
  final String? _name;
  final int? _amount;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;

  @Deprecated(
      '[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => modelIdentifier.serializeAsString();

  ProductModelIdentifier get modelIdentifier {
    try {
      return ProductModelIdentifier(productID: _productID!);
    } catch (e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion: amplify_core.AmplifyExceptionMessages
              .codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString());
    }
  }

  String get productID {
    try {
      return _productID!;
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

  int get amount {
    try {
      return _amount!;
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

  const Product._internal(
      {required productID,
      required name,
      required amount,
      createdAt,
      updatedAt})
      : _productID = productID,
        _name = name,
        _amount = amount,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  factory Product(
      {required String productID, required String name, required int amount}) {
    return Product._internal(productID: productID, name: name, amount: amount);
  }

  bool equals(Object other) {
    return this == other;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Product &&
        _productID == other._productID &&
        _name == other._name &&
        _amount == other._amount;
  }

  @override
  int get hashCode => toString().hashCode;

  @override
  String toString() {
    var buffer = new StringBuffer();

    buffer.write("Product {");
    buffer.write("productID=" + "$_productID" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write(
        "amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("createdAt=" +
        (_createdAt != null ? _createdAt!.format() : "null") +
        ", ");
    buffer.write(
        "updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");

    return buffer.toString();
  }

  Product copyWith({String? name, int? amount}) {
    return Product._internal(
        productID: productID,
        name: name ?? this.name,
        amount: amount ?? this.amount);
  }

  Product copyWithModelFieldValues(
      {ModelFieldValue<String>? name, ModelFieldValue<int>? amount}) {
    return Product._internal(
        productID: productID,
        name: name == null ? this.name : name.value,
        amount: amount == null ? this.amount : amount.value);
  }

  Product.fromJson(Map<String, dynamic> json)
      : _productID = json['productID'],
        _name = json['name'],
        _amount = (json['amount'] as num?)?.toInt(),
        _createdAt = json['createdAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['createdAt'])
            : null,
        _updatedAt = json['updatedAt'] != null
            ? amplify_core.TemporalDateTime.fromString(json['updatedAt'])
            : null;

  Map<String, dynamic> toJson() => {
        'productID': _productID,
        'name': _name,
        'amount': _amount,
        'createdAt': _createdAt?.format(),
        'updatedAt': _updatedAt?.format()
      };

  Map<String, Object?> toMap() => {
        'productID': _productID,
        'name': _name,
        'amount': _amount,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt
      };

  static final amplify_core.QueryModelIdentifier<ProductModelIdentifier>
      MODEL_IDENTIFIER =
      amplify_core.QueryModelIdentifier<ProductModelIdentifier>();
  static final PRODUCTID = amplify_core.QueryField(fieldName: "productID");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static var schema = amplify_core.Model.defineSchema(
      define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Product";
    modelSchemaDefinition.pluralName = "Products";

    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["productID"], name: null)
    ];

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Product.PRODUCTID,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Product.NAME,
        isRequired: true,
        ofType: amplify_core.ModelFieldType(
            amplify_core.ModelFieldTypeEnum.string)));

    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
        key: Product.AMOUNT,
        isRequired: true,
        ofType:
            amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)));

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

class _ProductModelType extends amplify_core.ModelType<Product> {
  const _ProductModelType();

  @override
  Product fromJson(Map<String, dynamic> jsonData) {
    return Product.fromJson(jsonData);
  }

  @override
  String modelName() {
    return 'Product';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Product] in your schema.
 */
class ProductModelIdentifier implements amplify_core.ModelIdentifier<Product> {
  final String productID;

  /** Create an instance of ProductModelIdentifier using [productID] the primary key. */
  const ProductModelIdentifier({required this.productID});

  @override
  Map<String, dynamic> serializeAsMap() =>
      (<String, dynamic>{'productID': productID});

  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
      .entries
      .map((entry) => (<String, dynamic>{entry.key: entry.value}))
      .toList();

  @override
  String serializeAsString() => serializeAsMap().values.join('#');

  @override
  String toString() => 'ProductModelIdentifier(productID: $productID)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ProductModelIdentifier && productID == other.productID;
  }

  @override
  int get hashCode => productID.hashCode;
}
