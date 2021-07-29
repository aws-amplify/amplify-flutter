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

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';

class DocumentInputs {
  // Upper document input: ($id: ID!)
  final String upper;
  // Lower document input: (id: $id)
  final String lower;
  const DocumentInputs(this.upper, this.lower);
}

class GraphQLRequestFactory {
  GraphQLRequestFactory._();

  static final GraphQLRequestFactory _instance = GraphQLRequestFactory._();

  static GraphQLRequestFactory get instance => _instance;

  String _getModelType(ModelFieldTypeEnum val) {
    switch (val) {
      case ModelFieldTypeEnum.string:
        return "String";
      case ModelFieldTypeEnum.int:
        return "Int";
      case ModelFieldTypeEnum.model:
        return "ID";
      default:
        return "Error: unsupported type!";
    }
  }

  String _getFieldsFromModelType(ModelSchema schema) {
    // schema has been validated & schema.fields is non-nullable
    Map<String, ModelField> fieldsMap = schema.fields!;
    return fieldsMap.entries
        .map((entry) => entry.value.association == null ? entry.key : '')
        .toList()
        .join(' ');
  }

  ModelSchema _getAndValidateSchema(
      ModelType modelType, GraphQLRequestOperation operation) {
    ModelProviderInterface? provider = AmplifyAPI.instance.getModelProvider();

    if (provider == null) {
      throw ApiException('No modelProvider found',
          recoverySuggestion:
              'Pass in a modelProvider instance while instantiating APIPlugin');
    }

    ModelSchema schema = provider.modelSchemas.firstWhere(
        (elem) => elem.name == modelType.modelName(),
        orElse: () => throw ApiException(
            'No schema found for the ModelType provided',
            recoverySuggestion:
                'Pass in a valid modelProvider instance while instantiating APIPlugin or provide a valid ModelType'));

    if (schema.fields == null) {
      throw ApiException('Schema found does not have a fields property',
          recoverySuggestion:
              'Pass in a valid modelProvider instance while instantiating APIPlugin');
    }

    if (operation == GraphQLRequestOperation.list &&
        schema.pluralName == null) {
      throw ApiException('No schema name found',
          recoverySuggestion:
              'Pass in a valid modelProvider instance while instantiating APIPlugin or provide a valid ModelType');
    }

    return schema;
  }

  DocumentInputs _buildDocumentInputs(
      ModelSchema schema, GraphQLRequestOperation operation) {
    String upperOutput = '';
    String lowerOutput = '';
    List<String> upperList = [];
    List<String> lowerList = [];

    // build inputs based on request operation
    switch (operation) {
      case GraphQLRequestOperation.get:
        upperList.add(r"$id: ID!");
        lowerList.add(r"id: $id");
        lowerOutput = "(${lowerList.join(", ")})";
        break;
      case GraphQLRequestOperation.list:
        break;
      default:
        schema.fields!.forEach((field, val) {
          upperList.add("\$$field: ${_getModelType(val.type.fieldType)}");
          lowerList.add("$field: \$$field");
        });
        lowerOutput = "(input: { ${lowerList.join(", ")} })";
    }

    if (upperList.length == 0 || lowerList.length == 0) {
      return DocumentInputs("", "");
    }

    upperOutput = "(${upperList.join(", ")})";

    return DocumentInputs(upperOutput, lowerOutput);
  }

/**
   *  Example: 
   *    query getBlog($id: ID!, $content: String) { getBlog(id: $id, content: $content) { id name createdAt } }
  */
  GraphQLRequest<T> buildQuery<T extends Model>(
      {required ModelType modelType,
      Model? model,
      String? id,
      required GraphQLRequestType requestType,
      required GraphQLRequestOperation requestOperation}) {
    ModelSchema schema = _getAndValidateSchema(modelType, requestOperation);

    // e.g. "Blog"
    String name = schema.name;
    // fields to retrieve, e.g. "id name createdAt"
    String fields = _getFieldsFromModelType(schema);
    // e.g. "query"
    String requestTypeVal = describeEnum(requestType);
    // e.g. "get"
    String requestOperationVal = describeEnum(requestOperation);
    // {upper: "($id: ID!)", lower: "(id: $id)"}
    DocumentInputs docInputs = _buildDocumentInputs(schema, requestOperation);

    if (requestOperation == GraphQLRequestOperation.list) {
      name = schema.pluralName!;
      fields = 'items { $fields } nextToken';
    }

    String doc =
        '''$requestTypeVal $requestOperationVal$name${docInputs.upper} { $requestOperationVal$name${docInputs.lower} { $fields } }''';

    // TODO: convert model to variable input for non-get operations
    Map<String, dynamic> variables =
        requestOperation == GraphQLRequestOperation.get ? {"id": id} : {};

    return GraphQLRequest<T>(document: doc, variables: variables);
  }
}
