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

import 'package:amplify_core/amplify_core.dart';

/// The [modelType] for decoding list query requests.
class PaginatedModelType<T extends Model>
    extends ModelType<PaginatedResult<T>> {
  final ModelType<T> modelType;

  /// Pass a simple [modelType] to create the paginated type used to decode list requests.
  /// ```dart
  /// String graphQLDocument = '''query GetBlogsCustomDecoder {
  ///   listBlogs {
  ///     items {
  ///       id
  ///       name
  ///       createdAt
  ///     }
  ///   }
  /// }''';
  /// final request = GraphQLRequest<PaginatedResult<Blog>>(
  ///     document: graphQLDocument,
  ///     modelType: const PaginatedModelType(Blog.classType),
  ///     decodePath: 'listBlogs');
  /// ```
  const PaginatedModelType(this.modelType);

  @override
  PaginatedResult<T> fromJson(Map<String, dynamic> jsonData,
      {Map<String, dynamic>? filter,
      int? limit,
      GraphQLRequest<PaginatedResult<T>>? requestForNextResult}) {
    final itemsJson = jsonData['items'] as List?;

    if (itemsJson == null || itemsJson.isEmpty) {
      return PaginatedResult<T>(
          [], limit, null, filter, modelType, requestForNextResult);
    }

    final items = itemsJson
        .cast<Map?>()
        .map(
          // ignore: implicit_dynamic_method
          (e) => e != null ? modelType.fromJson(e.cast()) : null,
        )
        .toList();

    return PaginatedResult<T>(items, limit, jsonData['nextToken'] as String?,
        filter, modelType, requestForNextResult);
  }

  @override
  String modelName() {
    return modelType.modelName();
  }
}
