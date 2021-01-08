/*
* Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'Blog.dart';
import 'Comment.dart';
import 'Post.dart';

export 'Blog.dart';
export 'Comment.dart';
export 'Post.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "eafbb6824d31a405463fa8cc7f08bceb";
  @override
  List<ModelSchema> modelSchemas = [
    Blog.schema,
    Comment.schema,
    Post.schema,
  ];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Blog": {
        return Blog.classType;
      }
      break;
      case "Post": {
        return Post.classType;
      }
      break;
      case "Comment": {
        return Comment.classType;
      }
      break;
      default: {
        throw Exception("Failed to find model in model provider.");
      }
    }
  }
}
