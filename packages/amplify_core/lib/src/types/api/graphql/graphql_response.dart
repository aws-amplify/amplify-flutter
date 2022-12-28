// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// A GraphQL response from the server. See https://graphql.org/learn/serving-over-http/#response
class GraphQLResponse<T> {
  /// Response data matching the type of the request.
  ///
  /// This will be `null` if there are any GraphQL errors during execution.
  final T? data;

  /// A list of errors from execution. If no errors, it will be an empty list.
  final List<GraphQLResponseError> errors;

  const GraphQLResponse({
    this.data,
    required this.errors,
  });

  static GraphQLResponse<String?> raw({
    required String? data,
    List<GraphQLResponseError>? errors,
  }) {
    return GraphQLResponse(
      data: data,
      errors: errors ?? const [],
    );
  }

  /// Whether errors are present in the response.
  bool get hasErrors => errors.isNotEmpty;
}
