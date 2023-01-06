// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import '../../../../lib/models/CpkHasManyUnidirectionalChildExplicit.dart';
import '../../../../lib/models/CpkHasManyUnidirectionalChildImplicit.dart';
import '../../../../lib/models/CpkHasManyUnidirectionalParent.dart';

export '../../../../lib/models/CpkHasManyUnidirectionalChildExplicit.dart';
export '../../../../lib/models/CpkHasManyUnidirectionalChildImplicit.dart';
export '../../../../lib/models/CpkHasManyUnidirectionalParent.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "c4d29b43024b973d2fd3ba65fe7f0a5b";
  @override
  List<ModelSchema> modelSchemas = [
    CpkHasManyUnidirectionalParent.schema,
    CpkHasManyUnidirectionalChildImplicit.schema,
    CpkHasManyUnidirectionalChildExplicit.schema,
  ];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [];

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "CpkHasManyUnidirectionalParent":
        return CpkHasManyUnidirectionalParent.classType;
      case "CpkHasManyUnidirectionalChildImplicit":
        return CpkHasManyUnidirectionalChildImplicit.classType;
      case "CpkHasManyUnidirectionalChildExplicit":
        return CpkHasManyUnidirectionalChildExplicit.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}
