// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:smithy/smithy.dart';

/// Retrieves the next set of result items for a [PaginatedResult].
typedef NextPaginatedResultFn<Items, PageSize, Token>
    = SmithyOperation<PaginatedResult<Items, PageSize, Token>> Function([
  PageSize?,
]);

/// {@template smithy.behavior.paginated_result}
/// The result of invoking an operation which paginates its result list.
///
/// This represents a single chunk of [items] with helpers for retrieving
/// further pages of items.
/// {@endtemplate}
class PaginatedResult<Items, PageSize, Token> {
  /// {@macro smithy.behavior.paginated_result}
  const PaginatedResult(
    this.items, {
    required this.nextContinuationToken,
    required NextPaginatedResultFn<Items, PageSize, Token> next,
  }) : _next = next;

  /// The items of the current result.
  final Items items;

  /// The token from the current output which can be used as input to the next
  /// request to the service.
  ///
  /// If `null`, there are no more results for the request.
  final Token? nextContinuationToken;

  /// Whether the response contained a [nextContinuationToken] and, thus, has
  /// more results available.
  ///
  /// From the Smithy [docs](https://awslabs.github.io/smithy/2.0/spec/behavior-traits.html#pagination):
  /// > If the received response does not contain a continuation token in the
  ///   referenced outputToken member, then there are no more results to retrieve
  ///   and the process is complete.
  bool get hasNext => nextContinuationToken != null;

  final NextPaginatedResultFn<Items, PageSize, Token> _next;

  /// Retrieves the next set of result items.
  SmithyOperation<PaginatedResult<Items, PageSize, Token>> next([
    PageSize? pageSize,
  ]) =>
      _next(pageSize);
}
