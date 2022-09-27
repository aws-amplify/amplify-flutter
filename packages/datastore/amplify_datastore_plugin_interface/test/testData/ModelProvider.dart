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

import 'Address.dart';
import 'Blog.dart';
import 'Comment.dart';
import 'Contact.dart';
import 'Person.dart';
import 'Phone.dart';
import 'Post.dart';
import 'PostAuthComplex.dart';

export 'Address.dart';
export 'Blog.dart';
export 'Comment.dart';
export 'Contact.dart';
export 'Person.dart';
export 'Phone.dart';
export 'Post.dart';
export 'PostAuthComplex.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "836a1f8cc4a4adc493165acc7168289e";
  @override
  List<ModelTypeDefinition> modelSchemas = [
    Blog.schema,
    Comment.schema,
    Post.schema,
    PostAuthComplex.schema
  ];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelTypeDefinition> customTypeSchemas = [
    Address.schema,
    Contact.schema,
    Person.schema,
    Phone.schema
  ];

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "Blog":
        return Blog.classType;
      case "Comment":
        return Comment.classType;
      case "Post":
        return Post.classType;
      case "PostAuthComplex":
        return PostAuthComplex.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}
