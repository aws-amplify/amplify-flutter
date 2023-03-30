// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0
import 'package:amplify_core/src/types/models/model.dart';
import 'package:amplify_core/src/types/models/model_schema.dart';

abstract class ModelProviderInterface {
  late String version;

  late List<ModelSchema> modelSchemas;
  late List<ModelSchema> customTypeSchemas;

  ModelType getModelTypeByModelName(String modelName) {
    throw UnimplementedError(
      'Your ModelProvider.dart file is outdated. Please upgrade your Amplify CLI and re-run Codegen.',
    );
  }
}
