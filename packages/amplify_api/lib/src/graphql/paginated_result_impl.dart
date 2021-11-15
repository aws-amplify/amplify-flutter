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
import 'package:amplify_api/src/graphql/paginated_model_type_impl.dart';
import 'package:amplify_core/amplify_core.dart';

class PaginatedResultImpl<T extends Model> extends PaginatedResult<T> {
  const PaginatedResultImpl(List<T> items, int? limit, String? nextToken,
      Map<String, dynamic>? filter)
      : super(items, limit, nextToken, filter);

  @override
  String getId() {
    return '';
  }

  @override
  bool get hasNextResult {
    return limit != null && nextToken != null;
  }

  @override
  GraphQLRequest<PaginatedResult<T>>? get requestForNextResult {
    if (!hasNextResult) {
      return null;
    }

    final modelType = _getModelType();
    final variables = GraphQLRequestFactory.instance
        .buildVariablesForListRequest(
            limit: limit, nextToken: nextToken, filter: filter);

    return GraphQLRequestFactory.instance.buildRequest<PaginatedResult<T>>(
        modelType: PaginatedModelTypeImpl(modelType),
        variables: variables,
        requestType: GraphQLRequestType.query,
        requestOperation: GraphQLRequestOperation.list);
  }

  ModelType<T> _getModelType() {
    ModelProviderInterface? provider = AmplifyAPI.instance.modelProvider;
    if (provider == null) {
      throw ApiException('No modelProvider found',
          recoverySuggestion:
              'Pass in a modelProvider instance while instantiating APIPlugin');
    }

    return provider.getModelTypeByModelName(T.toString()) as ModelType<T>;
  }

  @override
  PaginatedModelType<T> getInstanceType() {
    return PaginatedModelTypeImpl(_getModelType());
  }

  @override
  Map<String, dynamic> toJson() {
    // ignore: implicit_dynamic_map_literal
    return {'items': items, 'nextToken': nextToken};
  }
}
