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
import 'package:amplify_api/src/graphql/paginated_modelType_impl.dart';
// TODO: Datastore dependencies temporarily added in API. Eventually they should be moved to core or otherwise reconciled to avoid duplication.
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

class PaginatedResultImpl<T extends Model> extends PaginatedResult<T> {
  PaginatedResultImpl(items, nextToken) : super(items, nextToken);

  @override
  String getId() {
    return '';
  }

  @override
  ModelType<Model> getInstanceType() {
    ModelType<Model>? modelType = AmplifyAPI.instance.modelProvider
        ?.getModelTypeByModelName(T.toString());
    return PaginatedModelTypeImpl(modelType!);
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }
}
