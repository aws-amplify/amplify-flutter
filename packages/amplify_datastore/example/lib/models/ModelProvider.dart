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

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'package:amplify_core/amplify_core.dart';
import 'BelongsToChildExplicit.dart';
import 'BelongsToChildImplicit.dart';
import 'BelongsToParent.dart';
import 'Blog.dart';
import 'Comment.dart';
import 'CpkHasManyChildBidirectionalExplicit.dart';
import 'CpkHasManyChildBidirectionalImplicit.dart';
import 'CpkHasManyParentBidirectionalExplicit.dart';
import 'CpkHasManyParentBidirectionalImplicit.dart';
import 'CpkHasManyUnidirectionalChildExplicit.dart';
import 'CpkHasManyUnidirectionalChildImplicit.dart';
import 'CpkHasManyUnidirectionalParent.dart';
import 'CpkHasOneUnidirectionalChild.dart';
import 'CpkHasOneUnidirectionalParent.dart';
import 'CpkInventory.dart';
import 'CpkManyToManyPost.dart';
import 'CpkManyToManyTag.dart';
import 'CpkOneToOneBidirectionalChildExplicitCD.dart';
import 'CpkOneToOneBidirectionalChildExplicitID.dart';
import 'CpkOneToOneBidirectionalChildImplicitCD.dart';
import 'CpkOneToOneBidirectionalChildImplicitID.dart';
import 'CpkOneToOneBidirectionalParentCD.dart';
import 'CpkOneToOneBidirectionalParentID.dart';
import 'CpkPostTags.dart';
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
export 'CpkHasManyChildBidirectionalExplicit.dart';
export 'CpkHasManyChildBidirectionalImplicit.dart';
export 'CpkHasManyParentBidirectionalExplicit.dart';
export 'CpkHasManyParentBidirectionalImplicit.dart';
export 'CpkHasManyUnidirectionalChildExplicit.dart';
export 'CpkHasManyUnidirectionalChildImplicit.dart';
export 'CpkHasManyUnidirectionalParent.dart';
export 'CpkHasOneUnidirectionalChild.dart';
export 'CpkHasOneUnidirectionalParent.dart';
export 'CpkInventory.dart';
export 'CpkManyToManyPost.dart';
export 'CpkManyToManyTag.dart';
export 'CpkOneToOneBidirectionalChildExplicitCD.dart';
export 'CpkOneToOneBidirectionalChildExplicitID.dart';
export 'CpkOneToOneBidirectionalChildImplicitCD.dart';
export 'CpkOneToOneBidirectionalChildImplicitID.dart';
export 'CpkOneToOneBidirectionalParentCD.dart';
export 'CpkOneToOneBidirectionalParentID.dart';
export 'CpkPostTags.dart';
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
  String version = "5bb609b6f4dc361bb6c2aaa3e1ee7560";
  @override
  List<ModelSchema> modelSchemas = [
    // the schemas that are commented out are not needed to run
    // the example App
    // BelongsToChildExplicit.schema,
    // BelongsToChildImplicit.schema,
    // BelongsToParent.schema,
    Blog.schema,
    Comment.schema,
    // CpkHasManyChildBidirectionalExplicit.schema,
    // CpkHasManyChildBidirectionalImplicit.schema,
    // CpkHasManyParentBidirectionalExplicit.schema,
    // CpkHasManyParentBidirectionalImplicit.schema,
    // CpkHasManyUnidirectionalChildExplicit.schema,
    // CpkHasManyUnidirectionalChildImplicit.schema,
    // CpkHasManyUnidirectionalParent.schema,
    // CpkHasOneUnidirectionalChild.schema,
    // CpkHasOneUnidirectionalParent.schema,
    // CpkInventory.schema,
    // CpkManyToManyPost.schema,
    // CpkManyToManyTag.schema,
    // CpkOneToOneBidirectionalChildExplicitCD.schema,
    // CpkOneToOneBidirectionalChildExplicitID.schema,
    // CpkOneToOneBidirectionalChildImplicitCD.schema,
    // CpkOneToOneBidirectionalChildImplicitID.schema,
    // CpkOneToOneBidirectionalParentCD.schema,
    // CpkOneToOneBidirectionalParentID.schema,
    // CpkPostTags.schema,
    // HasManyChildBiDirectionalExplicit.schema,
    // HasManyChildBiDirectionalImplicit.schema,
    // HasManyChildExplicit.schema,
    // HasManyChildImplicit.schema,
    // HasManyParent.schema,
    // HasManyParentBiDirectionalExplicit.schema,
    // HasManyParentBiDirectionalImplicit.schema,
    // HasOneChild.schema,
    // HasOneParent.schema,
    ModelWithAppsyncScalarTypes.schema,
    ModelWithCustomType.schema,
    ModelWithEnum.schema,
    // MultiRelatedAttendee.schema,
    // MultiRelatedMeeting.schema,
    // MultiRelatedRegistration.schema,
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
      case "CpkHasManyChildBidirectionalExplicit":
        return CpkHasManyChildBidirectionalExplicit.classType;
      case "CpkHasManyChildBidirectionalImplicit":
        return CpkHasManyChildBidirectionalImplicit.classType;
      case "CpkHasManyParentBidirectionalExplicit":
        return CpkHasManyParentBidirectionalExplicit.classType;
      case "CpkHasManyParentBidirectionalImplicit":
        return CpkHasManyParentBidirectionalImplicit.classType;
      case "CpkHasManyUnidirectionalChildExplicit":
        return CpkHasManyUnidirectionalChildExplicit.classType;
      case "CpkHasManyUnidirectionalChildImplicit":
        return CpkHasManyUnidirectionalChildImplicit.classType;
      case "CpkHasManyUnidirectionalParent":
        return CpkHasManyUnidirectionalParent.classType;
      case "CpkHasOneUnidirectionalChild":
        return CpkHasOneUnidirectionalChild.classType;
      case "CpkHasOneUnidirectionalParent":
        return CpkHasOneUnidirectionalParent.classType;
      case "CpkInventory":
        return CpkInventory.classType;
      case "CpkManyToManyPost":
        return CpkManyToManyPost.classType;
      case "CpkManyToManyTag":
        return CpkManyToManyTag.classType;
      case "CpkOneToOneBidirectionalChildExplicitCD":
        return CpkOneToOneBidirectionalChildExplicitCD.classType;
      case "CpkOneToOneBidirectionalChildExplicitID":
        return CpkOneToOneBidirectionalChildExplicitID.classType;
      case "CpkOneToOneBidirectionalChildImplicitCD":
        return CpkOneToOneBidirectionalChildImplicitCD.classType;
      case "CpkOneToOneBidirectionalChildImplicitID":
        return CpkOneToOneBidirectionalChildImplicitID.classType;
      case "CpkOneToOneBidirectionalParentCD":
        return CpkOneToOneBidirectionalParentCD.classType;
      case "CpkOneToOneBidirectionalParentID":
        return CpkOneToOneBidirectionalParentID.classType;
      case "CpkPostTags":
        return CpkPostTags.classType;
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
