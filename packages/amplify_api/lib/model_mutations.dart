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
import 'package:amplify_api/src/graphql/model_mutations_factory.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

// This class provides static method calls to enable a simpler DX,
// while preserving internal interfaces
class ModelMutations {
  static GraphQLRequest<T> create<T extends Model>(T model) {
    return ModelMutationsFactory.instance.create<T>(model);
  }

  static GraphQLRequest<T> deleteById<T extends Model>(
      ModelType<T> modelType, String id) {
    return ModelMutationsFactory.instance.deleteById<T>(modelType, id);
  }
}
