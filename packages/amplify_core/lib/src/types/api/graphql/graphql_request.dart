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

import 'package:amplify_core/amplify_core.dart';

/// A GraphQL request with a few extra properties used to decode the response or use the correct API if the backend has multiple.
abstract class GraphQLRequest<T>
    with AWSSerializable<Map<String, Object?>>, AWSDebuggable {
  GraphQLRequest({
    this.apiName,
    required this.document,
    this.variables = const <String, dynamic>{},
    this.headers,
    this.decodePath,
  });

  /// Creates a "raw" GraphQL request which returns the data received from
  /// the server without any additional processing.
  ///
  /// If [decodePath] is specified, the [Map] returned is the one located at
  /// the JSON key given by [decodePath].
  static GraphQLRequest<Map<String, Object?>> raw({
    String? apiName,
    required String document,
    Map<String, Object?> variables = const {},
    Map<String, String>? headers,
    String? decodePath,
  }) =>
      _RawGraphQLRequest(
        apiName: apiName,
        document: document,
        variables: variables,
        headers: headers,
        decodePath: decodePath,
      );

  /// Creates a GraphQL request for a [modelType].
  ///
  /// The response will be automatically decoded into a model of type [T].
  static GraphQLRequest<T> model<
          ModelIdentifier extends Object,
          M extends Model<ModelIdentifier, M>,
          P extends PartialModel<ModelIdentifier, M>,
          T extends P>({
    String? apiName,
    required String document,
    required ModelType<ModelIdentifier, M, P> modelType,
    Map<String, Object?> variables = const {},
    Map<String, String>? headers,
    String? decodePath,
  }) =>
      _ModelGraphQLRequest(
        apiName: apiName,
        document: document,
        variables: variables,
        headers: headers,
        decodePath: decodePath,
        modelType: modelType,
      );

  /// Creates a GraphQL request for listing a [modelType].
  ///
  /// The response will be automatically decoded into a [PaginatedResult] of
  /// type [T] with helpers for requesting subsequent pages.
  static GraphQLRequest<PaginatedResult<ModelIdentifier, M, P, T>> list<
          ModelIdentifier extends Object,
          M extends Model<ModelIdentifier, M>,
          P extends PartialModel<ModelIdentifier, M>,
          T extends P>({
    String? apiName,
    required String document,
    required ModelType<ModelIdentifier, M, P> modelType,
    Map<String, Object?> variables = const {},
    Map<String, String>? headers,
    String? decodePath,
  }) =>
      _ListGraphQLRequest(
        apiName: apiName,
        document: document,
        variables: variables,
        headers: headers,
        decodePath: decodePath,
        modelType: modelType,
      );

  /// A unique identifier for the request.
  final String id = uuid();

  /// Only required if your backend has multiple GraphQL endpoints in the amplifyconfiguration.dart file. This parameter is then needed to specify which one to use for this request.
  final String? apiName;

  /// The body of the request, starting with the operation type and operation name.
  ///
  /// See https://graphql.org/learn/queries/#operation-name for examples and more information.
  final String document;

  /// A map of values to dynamically use for variable names in the `document`.
  ///
  /// See https://graphql.org/learn/queries/#variables for more information.
  final Map<String, dynamic> variables;

  /// Only required for custom decoding logic. In most cases, will match the operation name in the `document`.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/advanced-workflows/q/platform/flutter/.
  final String? decodePath;

  final Map<String, String>? headers;

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
  T decode(Map<String, Object?> json);

  @override
  String get runtimeTypeName => 'GraphQLRequest';

  @override
  Map<String, Object?> toJson() => {
        'id': id,
        'apiName': apiName,
        'document': document,
        'variables': variables,
        'headers': headers,
        'decodePath': decodePath,
      };
}

class _RawGraphQLRequest extends GraphQLRequest<Map<String, Object?>> {
  _RawGraphQLRequest({
    super.apiName,
    required super.document,
    super.variables,
    super.headers,
    super.decodePath,
  });

  @override
  Map<String, Object?> decode(Map<String, Object?> json) {
    if (decodePath != null) {
      return (json[decodePath] as Map).cast();
    }
    return json;
  }
}

class _ModelGraphQLRequest<
    ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>,
    T extends PartialModel<ModelIdentifier, M>> extends GraphQLRequest<T> {
  _ModelGraphQLRequest({
    super.apiName,
    required super.document,
    super.variables,
    super.headers,
    super.decodePath,
    required this.modelType,
  });

  final ModelType<ModelIdentifier, M, dynamic> modelType;

  @override
  T decode(Map<String, Object?> json) {
    return modelType.fromJson<T>(json);
  }
}

class _ListGraphQLRequest<
        ModelIdentifier extends Object,
        M extends Model<ModelIdentifier, M>,
        P extends PartialModel<ModelIdentifier, M>,
        T extends PartialModel<ModelIdentifier, M>>
    extends GraphQLRequest<PaginatedResult<ModelIdentifier, M, P, T>> {
  _ListGraphQLRequest({
    super.apiName,
    required super.document,
    super.variables,
    super.headers,
    super.decodePath,
    required this.modelType,
  });

  /// The GraphQL parameter for locating the next pagination token.
  static const _nextToken = 'nextToken';

  final ModelType<ModelIdentifier, M, P> modelType;

  @override
  PaginatedResult<ModelIdentifier, M, P, T> decode(Map<String, Object?> json) {
    final itemsJson = json['items'] as List?;

    if (itemsJson == null || itemsJson.isEmpty) {
      return const PaginatedResult.empty();
    }

    final items = itemsJson
        .cast<Map?>()
        .map((el) => el == null ? null : modelType.fromJson<T>(el.cast()))
        .toList();

    final nextToken = json[_nextToken] as String?;

    return PaginatedResult(
      items: items,
      requestForNextResult: nextToken == null
          ? null
          : _ListGraphQLRequest<ModelIdentifier, M, P, T>(
              apiName: apiName,
              document: document,
              variables: {...variables, _nextToken: nextToken},
              headers: headers,
              decodePath: decodePath,
              modelType: modelType,
            ),
      limit: variables['limit'] as int?,
      filter: variables['filter'] as Map<String, Object?>?,
      nextToken: nextToken,
    );
  }
}
