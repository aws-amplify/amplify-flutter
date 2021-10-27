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

// ignore_for_file: public_member_api_docs

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'BelongsToModel.dart';
import 'Blog.dart';
import 'BoolListTypeModel.dart';
import 'BoolTypeModel.dart';
import 'ChildModel.dart';
import 'Comment.dart';
import 'DateListTypeModel.dart';
import 'DateTimeListTypeModel.dart';
import 'DateTimeTypeModel.dart';
import 'DateTypeModel.dart';
import 'DoubleListTypeModel.dart';
import 'DoubleTypeModel.dart';
import 'EnumListTypeModel.dart';
import 'EnumTypeModel.dart';
import 'HasManyChildModel.dart';
import 'HasManyModel.dart';
import 'HasOneModel.dart';
import 'IntListTypeModel.dart';
import 'IntTypeModel.dart';
import 'JSONListTypeModel.dart';
import 'JSONTypeModel.dart';
import 'ModelNestedCustomType.dart';
import 'MultiTypeModel.dart';
import 'Post.dart';
import 'StringListTypeModel.dart';
import 'StringTypeModel.dart';
import 'TimeListTypeModel.dart';
import 'TimeTypeModel.dart';
import 'TimestampListTypeModel.dart';
import 'TimestampTypeModel.dart';
import 'AllScalarTypesCustomType.dart';
import 'AllScalarTypesListCustomType.dart';
import 'SimpleCustomType.dart';

export 'AllScalarTypesCustomType.dart';
export 'AllScalarTypesListCustomType.dart';
export 'BelongsToModel.dart';
export 'Blog.dart';
export 'BoolListTypeModel.dart';
export 'BoolTypeModel.dart';
export 'ChildModel.dart';
export 'Comment.dart';
export 'DateListTypeModel.dart';
export 'DateTimeListTypeModel.dart';
export 'DateTimeTypeModel.dart';
export 'DateTypeModel.dart';
export 'DoubleListTypeModel.dart';
export 'DoubleTypeModel.dart';
export 'EnumListTypeModel.dart';
export 'EnumModel.dart';
export 'EnumTypeModel.dart';
export 'HasManyChildModel.dart';
export 'HasManyModel.dart';
export 'HasOneModel.dart';
export 'IntListTypeModel.dart';
export 'IntTypeModel.dart';
export 'JSONListTypeModel.dart';
export 'JSONTypeModel.dart';
export 'ModelNestedCustomType.dart';
export 'MultiTypeModel.dart';
export 'Post.dart';
export 'SimpleCustomType.dart';
export 'StringListTypeModel.dart';
export 'StringTypeModel.dart';
export 'TimeListTypeModel.dart';
export 'TimeTypeModel.dart';
export 'TimestampListTypeModel.dart';
export 'TimestampTypeModel.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "1abf22a6ff86e4a92910a0fcfb17f648";
  @override
  List<ModelSchema> modelSchemas = [
    BelongsToModel.schema,
    Blog.schema,
    BoolListTypeModel.schema,
    BoolTypeModel.schema,
    ChildModel.schema,
    Comment.schema,
    DateListTypeModel.schema,
    DateTimeListTypeModel.schema,
    DateTimeTypeModel.schema,
    DateTypeModel.schema,
    DoubleListTypeModel.schema,
    DoubleTypeModel.schema,
    EnumListTypeModel.schema,
    EnumTypeModel.schema,
    HasManyChildModel.schema,
    HasManyModel.schema,
    HasOneModel.schema,
    IntListTypeModel.schema,
    IntTypeModel.schema,
    JSONListTypeModel.schema,
    JSONTypeModel.schema,
    ModelNestedCustomType.schema,
    MultiTypeModel.schema,
    Post.schema,
    StringListTypeModel.schema,
    StringTypeModel.schema,
    TimeListTypeModel.schema,
    TimeTypeModel.schema,
    TimestampListTypeModel.schema,
    TimestampTypeModel.schema
  ];
  @override
  List<ModelSchema> customTypeSchemas = [
    AllScalarTypesCustomType.schema,
    AllScalarTypesListCustomType.schema,
    SimpleCustomType.schema
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "BelongsToModel":
        return BelongsToModel.classType;
      case "Blog":
        return Blog.classType;
      case "BoolListTypeModel":
        return BoolListTypeModel.classType;
      case "BoolTypeModel":
        return BoolTypeModel.classType;
      case "ChildModel":
        return ChildModel.classType;
      case "Comment":
        return Comment.classType;
      case "DateListTypeModel":
        return DateListTypeModel.classType;
      case "DateTimeListTypeModel":
        return DateTimeListTypeModel.classType;
      case "DateTimeTypeModel":
        return DateTimeTypeModel.classType;
      case "DateTypeModel":
        return DateTypeModel.classType;
      case "DoubleListTypeModel":
        return DoubleListTypeModel.classType;
      case "DoubleTypeModel":
        return DoubleTypeModel.classType;
      case "EnumListTypeModel":
        return EnumListTypeModel.classType;
      case "EnumTypeModel":
        return EnumTypeModel.classType;
      case "HasManyChildModel":
        return HasManyChildModel.classType;
      case "HasManyModel":
        return HasManyModel.classType;
      case "HasOneModel":
        return HasOneModel.classType;
      case "IntListTypeModel":
        return IntListTypeModel.classType;
      case "IntTypeModel":
        return IntTypeModel.classType;
      case "JSONListTypeModel":
        return JSONListTypeModel.classType;
      case "JSONTypeModel":
        return JSONTypeModel.classType;
      case "ModelNestedCustomType":
        return ModelNestedCustomType.classType;
      case "MultiTypeModel":
        return MultiTypeModel.classType;
      case "Post":
        return Post.classType;
      case "StringListTypeModel":
        return StringListTypeModel.classType;
      case "StringTypeModel":
        return StringTypeModel.classType;
      case "TimeListTypeModel":
        return TimeListTypeModel.classType;
      case "TimeTypeModel":
        return TimeTypeModel.classType;
      case "TimestampListTypeModel":
        return TimestampListTypeModel.classType;
      case "TimestampTypeModel":
        return TimestampTypeModel.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}
