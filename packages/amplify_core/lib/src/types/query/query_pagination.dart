// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'query_field.dart';

class QueryPagination {
  final int page;
  final int limit;

  const QueryPagination({this.page = 0, this.limit = 100});

  const QueryPagination.firstPage() : this(page: 0);

  const QueryPagination.firstResult() : this(page: 0, limit: 1);

  Map<String, dynamic> serializeAsMap() {
    return <String, dynamic>{'page': page, 'limit': limit};
  }
}
