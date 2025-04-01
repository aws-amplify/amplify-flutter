// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// A GraphQL request with a few extra properties used to decode the response or use the correct API if the backend has multiple.
class GraphQLRequest<T> with AWSSerializable<Map<String, Object?>> {
  GraphQLRequest({
    required this.document,
    this.apiName,
    this.authorizationMode,
    this.variables = const <String, dynamic>{},
    this.headers,
    this.decodePath,
    this.modelType,
  });

  final String id = UUID.getUUID();

  /// The body of the request, starting with the operation type and operation name.
  ///
  /// See https://graphql.org/learn/queries/#operation-name for examples and more information.
  final String document;

  /// Only required if your backend has multiple GraphQL endpoints in the amplifyconfiguration.dart file. This parameter is then needed to specify which one to use for this request.
  final String? apiName;

  /// A map of Strings to dynamically use for custom headers in the http request.
  final Map<String, String>? headers;

  /// Authorization type to use for this request.
  ///
  /// If not supplied, the request will use the default endpoint mode.
  final APIAuthorizationType? authorizationMode;

  /// A map of values to dynamically use for variable names in the `document`.
  ///
  /// See https://graphql.org/learn/queries/#variables for more information.
  final Map<String, dynamic> variables;

  /// Only required for custom decoding logic. In most cases, will match the operation name in the `document`.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/advanced-workflows/q/platform/flutter/.
  final String? decodePath;

  /// Only required for custom decoding logic. The response will be decoded to this type.
  /// For a request of a single instance (like get, update, create or delete):
  ///
  /// ```dart
  /// modelType: Blog.classType
  /// ```
  ///
  /// Or for a list request:
  ///
  /// ```dart
  /// modelType: const PaginatedModelType(Blog.classType)
  /// ```
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/advanced-workflows/q/platform/flutter/.
  final ModelType? modelType;

  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'document': document,
        'variables': variables,
        'headers': headers,
        'cancelToken': id,
        if (apiName != null) 'apiName': apiName,
        if (authorizationMode != null)
          'authorizationMode': authorizationMode!.name,
        if (decodePath != null) 'decodePath': decodePath,
      };

  /// Creates a copy of this request with the given fields replaced with the new values.
  /// If no new value is given, the old value is used.
  ///
  /// ```dart
  /// final original = ModelQueries.list(
  ///   Blog.classType,
  /// );
  /// final modified = original.copyWith(
  ///   document: yourCustomQuery,
  /// );
  /// ```
  ///
  /// Useful in advanced scenarios where you want to modify the request before sending it.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/advanced-workflows/q/platform/flutter/.
  GraphQLRequest<T> copyWith({
    String? document,
    String? apiName,
    Map<String, String>? headers,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
    String? decodePath,
    ModelType? modelType,
  }) {
    return GraphQLRequest<T>(
      document: document ?? this.document,
      apiName: apiName ?? this.apiName,
      headers: headers ?? this.headers,
      authorizationMode: authorizationMode ?? this.authorizationMode,
      variables: variables ?? this.variables,
      decodePath: decodePath ?? this.decodePath,
      modelType: modelType ?? this.modelType,
    );
  }
}
