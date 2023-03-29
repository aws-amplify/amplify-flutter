// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// {@template graphql_response_error}
/// Contains an error produced via a GraphQL invocation. Corresponds to one
/// entry in the `errors` field on a GraphQL response.
///
/// [locations] and [path] may be null.
/// {@endtemplate}
@immutable
class GraphQLResponseError {
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
          ?.cast<Map<Object?, Object?>>()
          .map(
            (json) => GraphQLResponseErrorLocation.fromJson(
              json.cast<String, dynamic>(),
            ),
          )
          .toList(),
      path: json['path'] as List?,
      extensions: (json['extensions'] as Map?)?.cast<String, dynamic>(),
    );
  }

  /// The description of the error.
  final String message;

  /// The locations of the error-causing fields in the request document.
  final List<GraphQLResponseErrorLocation>? locations;

  /// The key path of the error-causing field in the response's `data` object.
  final List<dynamic>? path;

  /// Additional context.
  final Map<String, dynamic>? extensions;

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
  /// {@macro graphql_response_error_location}
  const GraphQLResponseErrorLocation(this.line, this.column);

  factory GraphQLResponseErrorLocation.fromJson(Map<String, dynamic> json) {
    return GraphQLResponseErrorLocation(
      json['line'] as int,
      json['column'] as int,
    );
  }

  /// The line in the GraphQL request document where the error-causing syntax
  /// element starts.
  final int line;

  /// The column in the GraphQL request document where the error-causing syntax
  /// element starts.
  final int column;

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
