// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api_dart/src/graphql/factories/graphql_request_factory.dart';
import 'package:amplify_core/amplify_core.dart';

// ignore_for_file: public_member_api_docs

class ModelSubscriptionsFactory {
  // Singleton methods/properties
  // usage: ModelSubscriptionsFactory.instance;
  ModelSubscriptionsFactory._();

  static final ModelSubscriptionsFactory _instance =
      ModelSubscriptionsFactory._();

  static ModelSubscriptionsFactory get instance => _instance;

  GraphQLRequest<T> onCreate<T extends Model>(
    ModelType<T> modelType, {
    String? apiName,
    APIAuthorizationType? authorizationMode,
    Map<String, String>? headers,
    QueryPredicate? where,
  }) {
    final variables =
        GraphQLRequestFactory.instance.buildVariablesForSubscriptionRequest(
      modelType: modelType,
      where: where,
    );
    return GraphQLRequestFactory.instance.buildRequest<T>(
      modelType: modelType,
      variables: variables,
      requestType: GraphQLRequestType.subscription,
      requestOperation: GraphQLRequestOperation.onCreate,
      apiName: apiName,
      authorizationMode: authorizationMode,
      headers: headers,
    );
  }

  GraphQLRequest<T> onUpdate<T extends Model>(
    ModelType<T> modelType, {
    String? apiName,
    APIAuthorizationType? authorizationMode,
    Map<String, String>? headers,
    QueryPredicate? where,
  }) {
    final variables =
        GraphQLRequestFactory.instance.buildVariablesForSubscriptionRequest(
      modelType: modelType,
      where: where,
    );
    return GraphQLRequestFactory.instance.buildRequest<T>(
      modelType: modelType,
      variables: variables,
      requestType: GraphQLRequestType.subscription,
      requestOperation: GraphQLRequestOperation.onUpdate,
      apiName: apiName,
      authorizationMode: authorizationMode,
      headers: headers,
    );
  }

  GraphQLRequest<T> onDelete<T extends Model>(
    ModelType<T> modelType, {
    String? apiName,
    APIAuthorizationType? authorizationMode,
    Map<String, String>? headers,
    QueryPredicate? where,
  }) {
    final variables =
        GraphQLRequestFactory.instance.buildVariablesForSubscriptionRequest(
      modelType: modelType,
      where: where,
    );
    return GraphQLRequestFactory.instance.buildRequest<T>(
      modelType: modelType,
      variables: variables,
      requestType: GraphQLRequestType.subscription,
      requestOperation: GraphQLRequestOperation.onDelete,
      apiName: apiName,
      authorizationMode: authorizationMode,
      headers: headers,
    );
  }
}
