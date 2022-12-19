// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'model.dart';
import 'model_schema.dart';

abstract class ModelProviderInterface {
  late String version;

  late List<ModelSchema> modelSchemas;
  late List<ModelSchema> customTypeSchemas;

  ModelType getModelTypeByModelName(String modelName) {
    throw UnimplementedError(
        'Your ModelProvider.dart file is outdated. Please upgrade your Amplify CLI and re-run Codegen.');
  }
}
