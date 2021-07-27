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
import 'package:amplify_api/src/graphql/graphql_request_factory.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class ModelQueriesFactory extends ModelQueriesInterface {
  // Singleton methods/properties
  // usage: ModelQueriesFactory.instance;
  ModelQueriesFactory._();

  static final ModelQueriesFactory _instance = ModelQueriesFactory._();

  static ModelQueriesFactory get instance => _instance;

  @override
  GraphQLRequest<T> get<T extends Model>(ModelType<T> modelType, String id) {
    Map<String, String> variableInput = {"id": "ID"};

    return GraphQLRequestFactory().buildQuery<T>(
        modelType: modelType,
        variableInput: variableInput,
        id: id,
        requestType: GraphQLRequestType.query,
        requestOperation: GraphQLRequestOperation.get);
  }

  @override
  GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
      ModelType<T> modelType,
      {QueryPredicate? where,
      ModelPagination? modelPagination}) {
    // TODO: implement list
    throw UnimplementedError();
  }
}
