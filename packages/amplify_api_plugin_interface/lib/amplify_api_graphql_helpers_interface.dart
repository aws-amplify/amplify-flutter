/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'src/types.dart';
import 'src/GraphQL/GraphQLRequest.dart';

abstract class ModelQueriesInterface {
  // Get
  static GraphQLRequest<T> get<T extends Model>(
    ModelType modelType, String id) {
      throw UnimplementedError("get() has not been implemented.");
    }
      
  // List      
  static GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
    ModelType modelType, 
    { QueryPredicate? where, 
     ModelPagination? modelPagination}){
      throw UnimplementedError("list() has not been implemented.");
    }
}

abstract class ModelMutationsInterface {
  // Create
  static GraphQLRequest<T> create<T extends Model>(Model model) {
    return throw UnimplementedError("create() has not been implemented.");
  }

  // Update
  static GraphQLRequest<T> update<T extends Model>(Model model, 
    {QueryPredicate? where}) {
      return throw UnimplementedError("update() has not been implemented.");
    }

  // Delete
  static GraphQLRequest<T> delete<T extends Model>(Model model, 
    {QueryPredicate? where}) {
      return throw UnimplementedError("delete() has not been implemented.");
    }

  // DeleteById
  static GraphQLRequest<T> deleteById<T extends Model>(String Id) {
      return throw UnimplementedError("delete() has not been implemented.");
    }
}