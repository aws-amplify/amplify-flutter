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

import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

import '../util.dart';

/// {@template graphql_response_error}
/// Contains an error produced via a GraphQL invocation. Corresponds to one
/// entry in the `errors` field on a GraphQL response.
///
/// [locations] and [path] may be null.
/// {@endtemplate}
@immutable
class GraphQLResponseError {
  /// The description of the error.
  final String message;

  /// The locations of the error-causing fields in the request document.
  final List<GraphQLResponseErrorLocation>? locations;

  /// The key path of the error-causing field in the response's `data` object.
  final List<dynamic>? path;

  /// Additional context.
  final Map<String, dynamic>? extensions;

  /// {@macro graphql_response_error}
  const GraphQLResponseError({
    required this.message,
    this.locations,
    this.path,
    this.extensions,
  });

  factory GraphQLResponseError.fromJson(Map<String, dynamic> json) {
    return GraphQLResponseError(
      message: json['message'] as String,
      locations: (json['locations'] as List?)
          ?.cast<Map>()
          .map((json) => GraphQLResponseErrorLocation.fromJson(
                json.cast<String, dynamic>(),
              ))
          .toList(),
      path: json['path'] as List?,
      extensions: (json['extensions'] as Map?)?.cast<String, dynamic>(),
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'message': message,
        if (locations != null)
          'locations': locations?.map((e) => e.toJson()).toList(),
        if (path != null) 'path': path,
        if (extensions != null) 'extensions': extensions,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GraphQLResponseError &&
          const DeepCollectionEquality().equals(
            [message, locations, path, extensions],
            [
              other.message,
              other.locations,
              other.path,
              other.extensions,
            ],
          );

  @override
  int get hashCode => const DeepCollectionEquality().hash([
        message,
        locations,
        path,
        extensions,
      ]);

  @override
  String toString() {
    return 'GraphQLResponseError${prettyPrintJson(this)}';
  }
}

/// {@template graphql_response_error_location}
/// Represents a location in the GraphQL request document where an error occurred.
/// [line] and [column] correspond to the beginning of the syntax element associated
/// with the error.
/// {@endtemplate}
@immutable
class GraphQLResponseErrorLocation {
  /// The line in the GraphQL request document where the error-causing syntax
  /// element starts.
  final int line;

  /// The column in the GraphQL request document where the error-causing syntax
  /// element starts.
  final int column;

  /// {@macro graphql_response_error_location}
  const GraphQLResponseErrorLocation(this.line, this.column);

  factory GraphQLResponseErrorLocation.fromJson(Map<String, dynamic> json) {
    return GraphQLResponseErrorLocation(
      json['line'] as int,
      json['column'] as int,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'line': line,
        'column': column,
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GraphQLResponseErrorLocation &&
          line == other.line &&
          column == other.column;

  @override
  int get hashCode => line.hashCode ^ column.hashCode;
}
