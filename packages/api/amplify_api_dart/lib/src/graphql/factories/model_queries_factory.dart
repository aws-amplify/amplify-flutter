// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: public_member_api_docs

import 'package:amplify_api_dart/src/graphql/factories/graphql_request_factory.dart';
import 'package:amplify_core/amplify_core.dart';

class ModelQueriesFactory {
  // Singleton methods/properties
  // usage: ModelQueriesFactory.instance;
  ModelQueriesFactory._();

  static final ModelQueriesFactory _instance = ModelQueriesFactory._();

  static ModelQueriesFactory get instance => _instance;

  GraphQLRequest<T> get<T extends Model>(
    ModelType<T> modelType,
    ModelIdentifier<T> modelIdentifier, {
    String? apiName,
    APIAuthorizationType? authorizationMode,
    Map<String, String>? headers,
  }) {
    final variables = modelIdentifier.serializeAsMap();
    return GraphQLRequestFactory.instance.buildRequest<T>(
      modelType: modelType,
      modelIdentifier: modelIdentifier,
      variables: variables,
      requestType: GraphQLRequestType.query,
      requestOperation: GraphQLRequestOperation.get,
      apiName: apiName,
      authorizationMode: authorizationMode,
      headers: headers,
    );
  }

  GraphQLRequest<PaginatedResult<T>> list<T extends Model>(
    ModelType<T> modelType, {
    int? limit,
    QueryPredicate? where,
    String? apiName,
    APIAuthorizationType? authorizationMode,
    Map<String, String>? headers,
  }) {
    final filter = GraphQLRequestFactory.instance
        .queryPredicateToGraphQLFilter(where, modelType);
    final variables = GraphQLRequestFactory.instance
        .buildVariablesForListRequest(limit: limit, filter: filter);

    return GraphQLRequestFactory.instance.buildRequest<PaginatedResult<T>>(
      modelType: PaginatedModelType(modelType),
      variables: variables,
      requestType: GraphQLRequestType.query,
      requestOperation: GraphQLRequestOperation.list,
      apiName: apiName,
      authorizationMode: authorizationMode,
      headers: headers,
    );
  }
}
