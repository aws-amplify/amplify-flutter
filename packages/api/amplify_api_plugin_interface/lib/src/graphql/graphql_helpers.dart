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

import 'package:amplify_core/amplify_core.dart';

import '../types.dart';

abstract class ModelQueriesInterface {
  // Get
  GraphQLRequest<T> get<T extends Model>(ModelType<T> modelType, String id);

  // List
  GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
      ModelType<T> modelType,
      {QueryPredicate? where,
      int? limit});
}

abstract class ModelMutationsInterface {
  // Create
  GraphQLRequest<T> create<T extends Model>(T model);

  // Update
  GraphQLRequest<T> update<T extends Model>(T model, {QueryPredicate? where});

  // Delete
  GraphQLRequest<T> delete<T extends Model>(T model, {QueryPredicate? where});

  // DeleteById
  GraphQLRequest<T> deleteById<T extends Model>(
      ModelType<T> modelType, String id);
}

abstract class ModelSubscriptionsInterface {
  GraphQLRequest<T> onCreate<T extends Model>(ModelType<T> modelType);

  GraphQLRequest<T> onUpdate<T extends Model>(ModelType<T> modelType);

  GraphQLRequest<T> onDelete<T extends Model>(ModelType<T> modelType);
}
