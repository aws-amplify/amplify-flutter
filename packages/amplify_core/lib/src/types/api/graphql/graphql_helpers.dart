// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
