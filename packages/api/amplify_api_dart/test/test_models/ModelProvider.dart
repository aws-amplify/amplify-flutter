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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, override_on_non_overriding_member, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'Blog.dart';
import 'Comment.dart';
import 'CpkIntIndexes.dart';
import 'CpkIntPrimaryKey.dart';
import 'CpkOneToOneBidirectionalChildExplicitCD.dart';
import 'CpkOneToOneBidirectionalChildImplicitCD.dart';
import 'CpkOneToOneBidirectionalParentCD.dart';
import 'CustomOwnerField.dart';
import 'ModelWithAppsyncScalarTypes.dart';
import 'ModelWithCustomType.dart';
import 'Post.dart';
import 'PostTags.dart';
import 'Tag.dart';
import 'CustomTypeWithAppsyncScalarTypes.dart';
import 'SimpleCustomType.dart';

export 'Blog.dart';
export 'Comment.dart';
export 'CpkIntIndexes.dart';
export 'CpkIntPrimaryKey.dart';
export 'CpkOneToOneBidirectionalChildExplicitCD.dart';
export 'CpkOneToOneBidirectionalChildImplicitCD.dart';
export 'CpkOneToOneBidirectionalParentCD.dart';
export 'CustomOwnerField.dart';
export 'CustomTypeWithAppsyncScalarTypes.dart';
export 'EnumField.dart';
export 'ModelWithAppsyncScalarTypes.dart';
export 'ModelWithCustomType.dart';
export 'Post.dart';
export 'PostTags.dart';
export 'SimpleCustomType.dart';
export 'Tag.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "83bf9177a73379eb13a3becbb8d0fb38";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [
    Blog.schema,
    Comment.schema,
    CpkIntIndexes.schema,
    CpkIntPrimaryKey.schema,
    CpkOneToOneBidirectionalChildExplicitCD.schema,
    CpkOneToOneBidirectionalChildImplicitCD.schema,
    CpkOneToOneBidirectionalParentCD.schema,
    CustomOwnerField.schema,
    ModelWithAppsyncScalarTypes.schema,
    ModelWithCustomType.schema,
    Post.schema,
    PostTags.schema,
    Tag.schema
  ];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [
    CustomTypeWithAppsyncScalarTypes.schema,
    SimpleCustomType.schema
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  amplify_core.ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "Blog":
        return Blog.classType;
      case "Comment":
        return Comment.classType;
      case "CpkIntIndexes":
        return CpkIntIndexes.classType;
      case "CpkIntPrimaryKey":
        return CpkIntPrimaryKey.classType;
      case "CpkOneToOneBidirectionalChildExplicitCD":
        return CpkOneToOneBidirectionalChildExplicitCD.classType;
      case "CpkOneToOneBidirectionalChildImplicitCD":
        return CpkOneToOneBidirectionalChildImplicitCD.classType;
      case "CpkOneToOneBidirectionalParentCD":
        return CpkOneToOneBidirectionalParentCD.classType;
      case "CustomOwnerField":
        return CustomOwnerField.classType;
      case "ModelWithAppsyncScalarTypes":
        return ModelWithAppsyncScalarTypes.classType;
      case "ModelWithCustomType":
        return ModelWithCustomType.classType;
      case "Post":
        return Post.classType;
      case "PostTags":
        return PostTags.classType;
      case "Tag":
        return Tag.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}

class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
