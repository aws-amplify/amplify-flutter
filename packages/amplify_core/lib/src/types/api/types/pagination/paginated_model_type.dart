// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
          (e) =>
              e != null ? modelType.fromJson(e.cast<String, Object?>()) : null,
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
