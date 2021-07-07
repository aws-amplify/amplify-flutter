/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import '../util.dart';

/// Contains an error produced via a GraphQL invocation. Corresponds to one
/// entry in the `errors` field on a GraphQL response.
///
/// [locations] and [path] may be null.
class GraphQLResponseError {
  /// The description of the error.
  final String message;

  /// The locations of the error-causing fields in the request document.
  final List<GraphQLResponseErrorLocation>? locations;

  /// The key path of the error-causing field in the response's `data` object.
  final List<dynamic>? path;

  const GraphQLResponseError({
    required this.message,
    this.locations,
    this.path,
  });

  Map<String, dynamic> toJson() => {
        'message': message,
        if (locations != null) 'locations': locations,
        if (path != null) 'path': path,
      };

  @override
  String toString() {
    return 'GraphQLResponseError${prettyPrintJson(this)}';
  }
}

/// Represents a location in the GraphQL request document where an error occurred.
/// [line] and [column] correspond to the beginning of the syntax element associated
/// with the error.
class GraphQLResponseErrorLocation {
  /// The line in the GraphQL request document where the error-causing syntax
  /// element starts.
  final int line;

  /// The column in the GraphQL request document where the error-causing syntax
  /// element starts.
  final int column;

  const GraphQLResponseErrorLocation(this.line, this.column);

  Map<String, dynamic> toJson() => {
        'line': line,
        'column': column,
      };
}
