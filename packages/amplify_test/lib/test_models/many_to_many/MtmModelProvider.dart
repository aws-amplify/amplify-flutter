// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';

import 'FirstMtmRelation.dart';
import 'ManyToManyPrimary.dart';
import 'ManyToManySecondary.dart';

export 'FirstMtmRelation.dart';
export 'ManyToManyPrimary.dart';
export 'ManyToManySecondary.dart';

class MtmModelProvider implements ModelProviderInterface {
  @override
  String version = "6c15e1d35037e37b184fd64a6321118f";
  @override
  List<ModelSchema> modelSchemas = [
    FirstMtmRelation.schema,
    ManyToManyPrimary.schema,
    ManyToManySecondary.schema
  ];
  static final MtmModelProvider _instance = MtmModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [];

  static MtmModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "FirstMtmRelation":
        return FirstMtmRelation.classType;
      case "ManyToManyPrimary":
        return ManyToManyPrimary.classType;
      case "ManyToManySecondary":
        return ManyToManySecondary.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}
