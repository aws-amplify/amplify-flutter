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

abstract class ModelQueriesInterface {
  // Get
  GraphQLRequest<T> get<T extends Model>(
    ModelType<T> modelType,
    String id, {
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });

  // List
  GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
    ModelType<T> modelType, {
    QueryPredicate? where,
    int? limit,
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });
}

abstract class ModelMutationsInterface {
  // Create
  GraphQLRequest<T> create<T extends Model>(
    T model, {
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });

  // Update
  GraphQLRequest<T> update<T extends Model>(
    T model, {
    QueryPredicate? where,
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });

  // Delete
  GraphQLRequest<T> delete<T extends Model>(
    T model, {
    QueryPredicate? where,
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });

  // DeleteById
  GraphQLRequest<T> deleteById<T extends Model>(
    ModelType<T> modelType,
    String id, {
    QueryPredicate? where,
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });
}

abstract class ModelSubscriptionsInterface {
  GraphQLRequest<T> onCreate<T extends Model>(
    ModelType<T> modelType, {
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });

  GraphQLRequest<T> onUpdate<T extends Model>(
    ModelType<T> modelType, {
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });

  GraphQLRequest<T> onDelete<T extends Model>(
    ModelType<T> modelType, {
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
  });
}
