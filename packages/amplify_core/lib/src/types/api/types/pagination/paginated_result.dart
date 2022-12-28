// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

class PaginatedResult<T extends Model> extends Model {
  /// Model instances for this set of results.
  ///
  /// An entry might be null if there are server-side errors inserting an instance
  /// into the result list (like a missing required field value). In that case,
  /// the [GraphQLResponse] will usually contain errors describing that instance
  /// along with an index.
  final List<T?> items;
  final int? limit;
  final String? nextToken;
  final Map<String, dynamic>? filter;
  final ModelType<T> modelType;

  /// If there is more data than is contained in this response, returns the
  /// request for the next chunk of data, where `limit` will be the same as the
  /// original request. Returns `null` if no more data.
  final GraphQLRequest<PaginatedResult<T>>? requestForNextResult;

  const PaginatedResult(this.items, this.limit, this.nextToken, this.filter,
      this.modelType, this.requestForNextResult);

  @override
  String getId() {
    return '';
  }

  /// Returns `true` if there is more data to fetch beyond the data
  /// contained in this response. If `true`, the request for the next page of
  /// data can be obtained with `.requestForNextResult`.
  bool get hasNextResult {
    return requestForNextResult != null;
  }

  @override
  PaginatedModelType<T> getInstanceType() {
    return PaginatedModelType(modelType);
  }

  @override
  Map<String, Object?> toJson() {
    return {'items': items, 'nextToken': nextToken};
  }
}
