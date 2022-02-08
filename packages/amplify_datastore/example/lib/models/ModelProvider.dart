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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'BelongsToChildExplicit.dart';
import 'BelongsToChildImplicit.dart';
import 'BelongsToParent.dart';
import 'Blog.dart';
import 'Comment.dart';
import 'HasManyChildBiDirectionalExplicit.dart';
import 'HasManyChildBiDirectionalImplicit.dart';
import 'HasManyChildExplicit.dart';
import 'HasManyChildImplicit.dart';
import 'HasManyParent.dart';
import 'HasManyParentBiDirectionalExplicit.dart';
import 'HasManyParentBiDirectionalImplicit.dart';
import 'HasOneChild.dart';
import 'HasOneParent.dart';
import 'ModelWithAppsyncScalarTypes.dart';
import 'ModelWithCustomType.dart';
import 'ModelWithEnum.dart';
import 'MultiRelatedAttendee.dart';
import 'MultiRelatedMeeting.dart';
import 'MultiRelatedRegistration.dart';
import 'Post.dart';
import 'PostTags.dart';
import 'Tag.dart';
import 'CustomTypeWithAppsyncScalarTypes.dart';
import 'SimpleCustomType.dart';

export 'BelongsToChildExplicit.dart';
export 'BelongsToChildImplicit.dart';
export 'BelongsToParent.dart';
export 'Blog.dart';
export 'Comment.dart';
export 'CustomTypeWithAppsyncScalarTypes.dart';
export 'EnumField.dart';
export 'HasManyChildBiDirectionalExplicit.dart';
export 'HasManyChildBiDirectionalImplicit.dart';
export 'HasManyChildExplicit.dart';
export 'HasManyChildImplicit.dart';
export 'HasManyParent.dart';
export 'HasManyParentBiDirectionalExplicit.dart';
export 'HasManyParentBiDirectionalImplicit.dart';
export 'HasOneChild.dart';
export 'HasOneParent.dart';
export 'ModelWithAppsyncScalarTypes.dart';
export 'ModelWithCustomType.dart';
export 'ModelWithEnum.dart';
export 'MultiRelatedAttendee.dart';
export 'MultiRelatedMeeting.dart';
export 'MultiRelatedRegistration.dart';
export 'Post.dart';
export 'PostTags.dart';
export 'SimpleCustomType.dart';
export 'Tag.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "f80fece878bf91a76f44577fe599b120";
  @override
  List<ModelSchema> modelSchemas = [
    BelongsToChildExplicit.schema,
    BelongsToChildImplicit.schema,
    BelongsToParent.schema,
    Blog.schema,
    Comment.schema,
    HasManyChildBiDirectionalExplicit.schema,
    HasManyChildBiDirectionalImplicit.schema,
    HasManyChildExplicit.schema,
    HasManyChildImplicit.schema,
    HasManyParent.schema,
    HasManyParentBiDirectionalExplicit.schema,
    HasManyParentBiDirectionalImplicit.schema,
    HasOneChild.schema,
    HasOneParent.schema,
    ModelWithAppsyncScalarTypes.schema,
    ModelWithCustomType.schema,
    ModelWithEnum.schema,
    MultiRelatedAttendee.schema,
    MultiRelatedMeeting.schema,
    MultiRelatedRegistration.schema,
    Post.schema,
    PostTags.schema,
    Tag.schema
  ];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [
    CustomTypeWithAppsyncScalarTypes.schema,
    SimpleCustomType.schema
  ];

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "BelongsToChildExplicit":
        return BelongsToChildExplicit.classType;
      case "BelongsToChildImplicit":
        return BelongsToChildImplicit.classType;
      case "BelongsToParent":
        return BelongsToParent.classType;
      case "Blog":
        return Blog.classType;
      case "Comment":
        return Comment.classType;
      case "HasManyChildBiDirectionalExplicit":
        return HasManyChildBiDirectionalExplicit.classType;
      case "HasManyChildBiDirectionalImplicit":
        return HasManyChildBiDirectionalImplicit.classType;
      case "HasManyChildExplicit":
        return HasManyChildExplicit.classType;
      case "HasManyChildImplicit":
        return HasManyChildImplicit.classType;
      case "HasManyParent":
        return HasManyParent.classType;
      case "HasManyParentBiDirectionalExplicit":
        return HasManyParentBiDirectionalExplicit.classType;
      case "HasManyParentBiDirectionalImplicit":
        return HasManyParentBiDirectionalImplicit.classType;
      case "HasOneChild":
        return HasOneChild.classType;
      case "HasOneParent":
        return HasOneParent.classType;
      case "ModelWithAppsyncScalarTypes":
        return ModelWithAppsyncScalarTypes.classType;
      case "ModelWithCustomType":
        return ModelWithCustomType.classType;
      case "ModelWithEnum":
        return ModelWithEnum.classType;
      case "MultiRelatedAttendee":
        return MultiRelatedAttendee.classType;
      case "MultiRelatedMeeting":
        return MultiRelatedMeeting.classType;
      case "MultiRelatedRegistration":
        return MultiRelatedRegistration.classType;
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
