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

// TODO: Datastore dependencies temporarily added in API. Eventually they should be moved to core or otherwise reconciled to avoid duplication.
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';

import '../../types.dart';

abstract class PaginatedResult<T extends Model> extends Model {
  final List<T> items;
  final int? limit;
  final String? nextToken;

  const PaginatedResult(this.items, this.limit, this.nextToken);

  bool hasNextResult() {
    throw UnimplementedError('hasNextResult not been implemented.');
  }

  GraphQLRequest<PaginatedResult<T>> getRequestForNextResult() {
    throw UnimplementedError('getRequestForNextResult not been implemented.');
  }
}
