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

// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code, implicit_dynamic_parameter, implicit_dynamic_map_literal, implicit_dynamic_type

import 'package:amplify_core/amplify_core.dart';
import 'Blog.dart';
import 'Comment.dart';
import 'Inventory.dart';
import 'Post.dart';
import 'PostWithAuthRules.dart';
import 'Product.dart';
import 'StringListTypeModel.dart';
import 'Warehouse.dart';
import 'Address.dart';
import 'Contact.dart';
import 'FileMeta.dart';
import 'Person.dart';
import 'Phone.dart';
import 'S3Object.dart';

export 'Address.dart';
export 'Blog.dart';
export 'Comment.dart';
export 'Contact.dart';
export 'FileMeta.dart';
export 'Inventory.dart';
export 'Person.dart';
export 'Phone.dart';
export 'Post.dart';
export 'PostWithAuthRules.dart';
export 'Product.dart';
export 'S3Object.dart';
export 'StringListTypeModel.dart';
export 'Warehouse.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "c51f720bee3a3b8db3aa9ce045d17f5c";
  @override
  List<ModelSchema> modelSchemas = [
    Blog.schema,
    Comment.schema,
    Inventory.schema,
    Post.schema,
    PostWithAuthRules.schema,
    Product.schema,
    Warehouse.schema
  ];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [
    Address.schema,
    Contact.schema,
    FileMeta.schema,
    Person.schema,
    Phone.schema,
    S3Object.schema,
    StringListTypeModel.schema
  ];

  static ModelProvider get instance => _instance;

  ModelType getModelTypeByModelName(String modelName) {
    switch (modelName) {
      case "Blog":
        return Blog.classType;
      case "Comment":
        return Comment.classType;
      case "Inventory":
        return Inventory.classType;
      case "Post":
        return Post.classType;
      case "PostWithAuthRules":
        return PostWithAuthRules.classType;
      case "Product":
        return Product.classType;
      case "StringListTypeModel":
        return StringListTypeModel.classType;
      case "Warehouse":
        return Warehouse.classType;
      default:
        throw Exception(
            "Failed to find model in model provider for model name: " +
                modelName);
    }
  }
}
