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

import 'mipr.dart' as mipr;
import 'model.dart';

abstract class ModelProviderInterface {
  late String version;

  late List<mipr.ModelTypeDefinition> modelSchemas;
  late List<mipr.ModelTypeDefinition> customTypeSchemas;

  ModelType getModelTypeByModelName(String modelName) {
    throw UnimplementedError(
        'Your ModelProvider.dart file is outdated. Please upgrade your Amplify CLI and re-run Codegen.');
  }
}
