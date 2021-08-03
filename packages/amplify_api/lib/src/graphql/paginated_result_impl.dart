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
import 'package:amplify_api/src/graphql/paginated_model_type_impl.dart';
// TODO: Datastore dependencies temporarily added in API. Eventually they should be moved to core or otherwise reconciled to avoid duplication.
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class PaginatedResultImpl<T extends Model> extends PaginatedResult<T> {
  const PaginatedResultImpl(List<T> items, String? nextToken)
      : super(items, nextToken);

  @override
  String getId() {
    return '';
  }

  @override
  PaginatedModelType<T> getInstanceType() {
    ModelProviderInterface? provider = AmplifyAPI.instance.modelProvider;
    if (provider == null) {
      throw ApiException('No modelProvider found',
          recoverySuggestion:
              'Pass in a modelProvider instance while instantiating APIPlugin');
    }

    ModelType<T> modelType =
        provider.getModelTypeByModelName(T.toString()) as ModelType<T>;

    return PaginatedModelTypeImpl(modelType);
  }

  @override
  Map<String, dynamic> toJson() {
    return {'items': items, 'nextToken': nextToken};
  }
}
