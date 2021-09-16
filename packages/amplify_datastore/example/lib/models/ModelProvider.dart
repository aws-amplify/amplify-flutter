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
import 'MultiTypeModel.dart';
import 'Post.dart';
import 'StringListTypeModel.dart';
import 'StringTypeModel.dart';
import 'TimeListTypeModel.dart';
import 'TimeTypeModel.dart';
import 'TimestampListTypeModel.dart';
import 'TimestampTypeModel.dart';

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
export 'MultiTypeModel.dart';
export 'Post.dart';
export 'StringListTypeModel.dart';
export 'StringTypeModel.dart';
export 'TimeListTypeModel.dart';
export 'TimeTypeModel.dart';
export 'TimestampListTypeModel.dart';
export 'TimestampTypeModel.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "9612dfafab711689ac8c3a5c22c1f51a";
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
  List<ModelSchema> customTypeSchemas = [];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "BelongsToModel":
        {
          return BelongsToModel.classType;
        }
        break;
      case "Blog":
        {
          return Blog.classType;
        }
        break;
      case "BoolListTypeModel":
        {
          return BoolListTypeModel.classType;
        }
        break;
      case "BoolTypeModel":
        {
          return BoolTypeModel.classType;
        }
        break;
      case "ChildModel":
        {
          return ChildModel.classType;
        }
        break;
      case "Comment":
        {
          return Comment.classType;
        }
        break;
      case "DateListTypeModel":
        {
          return DateListTypeModel.classType;
        }
        break;
      case "DateTimeListTypeModel":
        {
          return DateTimeListTypeModel.classType;
        }
        break;
      case "DateTimeTypeModel":
        {
          return DateTimeTypeModel.classType;
        }
        break;
      case "DateTypeModel":
        {
          return DateTypeModel.classType;
        }
        break;
      case "DoubleListTypeModel":
        {
          return DoubleListTypeModel.classType;
        }
        break;
      case "DoubleTypeModel":
        {
          return DoubleTypeModel.classType;
        }
        break;
      case "EnumListTypeModel":
        {
          return EnumListTypeModel.classType;
        }
        break;
      case "EnumTypeModel":
        {
          return EnumTypeModel.classType;
        }
        break;
      case "HasManyChildModel":
        {
          return HasManyChildModel.classType;
        }
        break;
      case "HasManyModel":
        {
          return HasManyModel.classType;
        }
        break;
      case "HasOneModel":
        {
          return HasOneModel.classType;
        }
        break;
      case "IntListTypeModel":
        {
          return IntListTypeModel.classType;
        }
        break;
      case "IntTypeModel":
        {
          return IntTypeModel.classType;
        }
        break;
      case "JSONListTypeModel":
        {
          return JSONListTypeModel.classType;
        }
        break;
      case "JSONTypeModel":
        {
          return JSONTypeModel.classType;
        }
        break;
      case "MultiTypeModel":
        {
          return MultiTypeModel.classType;
        }
        break;
      case "Post":
        {
          return Post.classType;
        }
        break;
      case "StringListTypeModel":
        {
          return StringListTypeModel.classType;
        }
        break;
      case "StringTypeModel":
        {
          return StringTypeModel.classType;
        }
        break;
      case "TimeListTypeModel":
        {
          return TimeListTypeModel.classType;
        }
        break;
      case "TimeTypeModel":
        {
          return TimeTypeModel.classType;
        }
        break;
      case "TimestampListTypeModel":
        {
          return TimestampListTypeModel.classType;
        }
        break;
      case "TimestampTypeModel":
        {
          return TimestampTypeModel.classType;
        }
        break;
      default:
        {
          throw Exception(
              "Failed to find model in model provider for model name: " +
                  modelName);
        }
    }
  }
}
