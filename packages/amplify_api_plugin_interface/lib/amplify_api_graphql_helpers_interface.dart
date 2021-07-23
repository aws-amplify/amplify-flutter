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

// TODO: Datastore dependencies temporarily added in API. Eventually they should be moved to core or otherwise reconciled to avoid duplication.
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import 'src/types.dart';
import 'src/GraphQL/GraphQLRequest.dart';
import 'src/types/pagination/model_pagination.dart';
import 'src/types/pagination/paginated_result.dart';

abstract class ModelQueriesInterface {
  // Get
  GraphQLRequest<T> get<T extends Model>(ModelType<T> modelType, String id) {
    throw UnimplementedError("get() has not been implemented.");
  }

  // List
  GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
      ModelType<T> modelType,
      {QueryPredicate? where,
      ModelPagination? modelPagination}) {
    throw UnimplementedError("list() has not been implemented.");
  }
}

abstract class ModelMutationsInterface {
  // Create
  GraphQLRequest<T> create<T extends Model>(T model) {
    return throw UnimplementedError("create() has not been implemented.");
  }

  // Update
  GraphQLRequest<T> update<T extends Model>(T model, {QueryPredicate? where}) {
    return throw UnimplementedError("update() has not been implemented.");
  }

  // Delete
  GraphQLRequest<T> delete<T extends Model>(T model, {QueryPredicate? where}) {
    return throw UnimplementedError("delete() has not been implemented.");
  }

  // DeleteById
  GraphQLRequest<T> deleteById<T extends Model>(String Id) {
    return throw UnimplementedError("delete() has not been implemented.");
  }
}

abstract class GraphQLRequestFactoryInterface {
  // createRequest generic
  GraphQLRequest<T> buildQuery<T extends Model>(
      {required ModelType modelType,
      required Map<String, String>? variableInput,
      required String? id,
      required GraphQLRequestType requestType,
      required GraphQLRequestOperation requestOperation}) {
    return throw UnimplementedError("getSchema() has not been implemented.");
  }
}
