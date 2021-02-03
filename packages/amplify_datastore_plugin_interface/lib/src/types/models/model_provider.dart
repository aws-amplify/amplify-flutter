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
import 'package:amplify_datastore_plugin_interface/src/types/models/model.dart';
import 'model_schema.dart';

abstract class ModelProviderInterface {
  String version;

  List<ModelSchema> modelSchemas;

  ModelType getModelTypeByModelName(String modelName) {
    throw UnimplementedError(
        'Your ModelProvider.dart file is outdated. Please upgrade your Amplify CLI and re-run Codegen.');
  }
}
