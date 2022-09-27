/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

part of amplify_interface;

class APICategory extends AmplifyCategory<APIPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.api;

  // ====== GraphQL =======

  /// Sends a GraphQL query request and returns the response in a cancelable `GraphQLOperation`.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/query-data/q/platform/flutter/
  /// for more information.
  GraphQLOperation<T> query<T>({required GraphQLRequest<T> request}) =>
      defaultPlugin.query(request: request);

  /// Sends a GraphQL mutate request and returns the response in a cancelable `GraphQLOperation`.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/mutate-data/q/platform/flutter/
  /// for more information.
  GraphQLOperation<T> mutate<T>({required GraphQLRequest<T> request}) =>
      defaultPlugin.mutate(request: request);

  /// Subscribes to the given [request] and returns the stream of response events.
  /// An optional [onEstablished] callback can be used to be alerted when the
  /// subscription has been successfully established with the server.
  ///
  /// Any exceptions encountered during the subscription are added as errors
  /// to this stream.
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) =>
      defaultPlugin.subscribe(request, onEstablished: onEstablished);

  // ====== RestAPI ======

  AWSHttpOperation delete(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      defaultPlugin.delete(
        path,
        headers: headers,
        body: body,
        apiName: apiName,
      );

  AWSHttpOperation get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      defaultPlugin.get(
        path,
        headers: headers,
        apiName: apiName,
      );

  AWSHttpOperation head(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      defaultPlugin.head(
        path,
        headers: headers,
        apiName: apiName,
      );

  AWSHttpOperation patch(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      defaultPlugin.patch(
        path,
        headers: headers,
        body: body,
        apiName: apiName,
      );

  AWSHttpOperation post(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      defaultPlugin.post(
        path,
        headers: headers,
        body: body,
        apiName: apiName,
      );

  AWSHttpOperation put(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      defaultPlugin.put(
        path,
        headers: headers,
        body: body,
        apiName: apiName,
      );
}
