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
class GraphQLRequest<T> {
  final String id = UUID.getUUID();

  /// Only required if your backend has multiple GraphQL endpoints in the amplifyconfiguration.dart file. This parameter is then needed to specify which one to use for this request.
  final String? apiName;

  /// A map of Strings to dynamically use for custom headers in the http request.
  final Map<String, String>? customHeaders;

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

  GraphQLRequest(
      {this.apiName,
      required this.document,
      this.variables = const <String, dynamic>{},
      this.customHeaders,
      this.decodePath,
      this.modelType});

  Map<String, dynamic> serializeAsMap() => <String, dynamic>{
        'document': document,
        'variables': variables,
        'customHeaders': customHeaders,
        'cancelToken': id,
        if (apiName != null) 'apiName': apiName,
      };
}
