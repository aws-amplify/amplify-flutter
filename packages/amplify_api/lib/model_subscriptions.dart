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
import 'package:amplify_api/src/graphql/model_subscriptions_factory.dart';
import 'package:amplify_core/amplify_core.dart';

class ModelSubscriptions {
  ModelSubscriptions._(); // only static methods here, prevent calling constructor

  static GraphQLRequest<T> onCreate<T extends Model>(ModelType<T> modelType) {
    return ModelSubscriptionsFactory.instance.onCreate<T>(modelType);
  }

  static GraphQLRequest<T> onUpdate<T extends Model>(ModelType<T> modelType) {
    return ModelSubscriptionsFactory.instance.onUpdate<T>(modelType);
  }

  static GraphQLRequest<T> onDelete<T extends Model>(ModelType<T> modelType) {
    return ModelSubscriptionsFactory.instance.onDelete<T>(modelType);
  }
}
