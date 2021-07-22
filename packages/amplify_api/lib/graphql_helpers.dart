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

import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:flutter/foundation.dart';
import './amplify_api.dart';

class ModelQueries extends ModelQueriesInterface {
  @override
  static GraphQLRequest<T> get<T extends Model>(
      ModelType modelType, String id) {
    ModelSchema schema = GraphQLRequestFactory.getSchema(modelType);

    String modelName = schema.name;
    Map<String, ModelField?>? fieldsMap = schema.fields;

    List<String> fieldsList = [];
    if (fieldsMap != null) {
      fieldsMap.forEach((key, value) {
        if (value?.association == null) fieldsList.add(key);
      });
    }

    Map<String, ModelFieldTypeEnum>? variableInput = {
      "id": ModelFieldTypeEnum.model
    };

    return GraphQLRequestFactory.buildQuery(
        name: modelName,
        fields: fieldsList,
        variableInput: variableInput,
        id: id,
        requestType: GraphQLRequestType.query,
        requestOperation: GraphQLRequestOperation.get);
  }
}

class GraphQLRequestFactory extends GraphQLRequestFactoryInterface {
  static String _getModelType(ModelFieldTypeEnum? val) {
    switch (val) {
      case ModelFieldTypeEnum.string:
        return "String";
      case ModelFieldTypeEnum.int:
        return "int";
      case ModelFieldTypeEnum.model:
        return "ID";
      default:
        return "Error: UnknownType!";
    }
  }

  @override
  static ModelSchema getSchema(ModelType modelType) {
    ModelProviderInterface? provider = AmplifyAPI.instance.getModelProvider();

    if (provider == null) {
      throw ApiException('No modelProvider found',
          recoverySuggestion:
              'Pass in a modelProvider instance while instantiating APIPlugin');
    }

    return provider.modelSchemas.firstWhere(
        (elem) => provider.getModelTypeByModelName(elem.name) == modelType);
  }

  @override
  static GraphQLRequest<T> buildQuery<T extends Model>(
      {required String name,
      required List<String> fields,
      required Map<String, ModelFieldTypeEnum>? variableInput,
      required String id,
      required GraphQLRequestType requestType,
      required GraphQLRequestOperation requestOperation}) {
    String reqTypeStr = describeEnum(requestType.toString());
    String reqOperationStr = describeEnum(requestOperation.toString());

    var varInputUpperStr = '';
    var varInputLowerStr = '';

    if (variableInput!.isNotEmpty) {
      List<String> variableInputUpper = [];
      List<String> variableInputLower = [];

      for (var key in variableInput.keys) {
        variableInputUpper.add("\$$key: ${_getModelType(variableInput[key])}!");
        variableInputLower.add("$key: \$$key");
      }

      varInputUpperStr = "(${variableInputUpper.join(", ")})";
      if (requestOperation == GraphQLRequestOperation.get) {
        varInputLowerStr = "(${variableInputLower.join(", ")})";
      } else {
        varInputLowerStr = "(input: {${variableInputLower.join(", ")}})";
      }
    }

    String doc = '''$reqTypeStr $reqOperationStr$name${varInputUpperStr} { $reqOperationStr$name$varInputLowerStr { ${fields.join(' ')} } }''';

    // TODO: create input map for variables & connect with current variableInput
    var variables = {"id": id};

    print(doc);
    return GraphQLRequest<T>(document: doc, variables: variables);
  }
}
