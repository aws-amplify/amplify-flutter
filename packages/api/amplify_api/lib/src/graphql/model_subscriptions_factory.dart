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

import 'package:amplify_api/src/graphql/graphql_request_factory.dart';
import 'package:amplify_core/amplify_core.dart';

// ignore_for_file: public_member_api_docs

class ModelSubscriptionsFactory extends ModelSubscriptionsInterface {
  // Singleton methods/properties
  // usage: ModelSubscriptionsFactory.instance;
  ModelSubscriptionsFactory._();

  static final ModelSubscriptionsFactory _instance =
      ModelSubscriptionsFactory._();

  static ModelSubscriptionsFactory get instance => _instance;

  @override
  GraphQLRequest<T> onCreate<T extends Model>(ModelType<T> modelType) {
    return GraphQLRequestFactory.instance.buildRequest<T>(
        modelType: modelType,
        variables: <String, dynamic>{},
        requestType: GraphQLRequestType.subscription,
        requestOperation: GraphQLRequestOperation.onCreate);
  }

  @override
  GraphQLRequest<T> onUpdate<T extends Model>(ModelType<T> modelType) {
    return GraphQLRequestFactory.instance.buildRequest<T>(
        modelType: modelType,
        variables: <String, dynamic>{},
        requestType: GraphQLRequestType.subscription,
        requestOperation: GraphQLRequestOperation.onUpdate);
  }

  @override
  GraphQLRequest<T> onDelete<T extends Model>(ModelType<T> modelType) {
    return GraphQLRequestFactory.instance.buildRequest<T>(
        modelType: modelType,
        variables: <String, dynamic>{},
        requestType: GraphQLRequestType.subscription,
        requestOperation: GraphQLRequestOperation.onDelete);
  }
}
