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

import '../../types.dart';

abstract class PaginatedResult<T extends Model> extends Model {
  final List<T> items;
  final int? limit;
  final String? nextToken;
  final Map<String, dynamic>? filter;

  const PaginatedResult(this.items, this.limit, this.nextToken, this.filter);

  /// Returns `true` if there is more data to fetch beyond the data
  /// contained in this response. If `true`, the request for the next page of
  /// data can be obtained with `.requestForNextResult`.
  bool get hasNextResult;

  /// If there is more data than is contained in this response, returns the
  /// request for the next chunk of data, where `limit` will be the same as the
  /// original request. Returns `null` if no more data.
  GraphQLRequest<PaginatedResult<T>>? get requestForNextResult;
}
