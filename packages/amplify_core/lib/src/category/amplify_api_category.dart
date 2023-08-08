// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of amplify_interface;

class APICategory extends AmplifyCategory<APIPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.api;

  @override
  @nonVirtual
  Set<Category> get categoryDependencies => const {Category.auth};

  // ====== GraphQL =======

  /// Sends a GraphQL query request and returns the response in a cancelable `GraphQLOperation`.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/query-data/q/platform/flutter/
  /// for more information.
  GraphQLOperation<T> query<T>({required GraphQLRequest<T> request}) =>
      identifyCall(
        ApiCategoryMethod.query,
        () => defaultPlugin.query(request: request),
      );

  /// Sends a GraphQL mutate request and returns the response in a cancelable `GraphQLOperation`.
  ///
  /// See https://docs.amplify.aws/lib/graphqlapi/mutate-data/q/platform/flutter/
  /// for more information.
  GraphQLOperation<T> mutate<T>({required GraphQLRequest<T> request}) =>
      identifyCall(
        ApiCategoryMethod.mutate,
        () => defaultPlugin.mutate(request: request),
      );

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
      identifyCall(
        ApiCategoryMethod.subscribe,
        () => defaultPlugin.subscribe(
          request,
          onEstablished: onEstablished,
        ),
      );

  // ====== RestAPI ======

  /// Sends an HTTP DELETE request to the REST API endpoint.
  ///
  /// See https://docs.amplify.aws/lib/restapi/update/q/platform/flutter/ for more
  /// information.
  ///
  /// Example:
  /// ```dart
  /// final restOperation = Amplify.API.delete(
  ///   'items',
  ///   body: HttpPayload.json({'name': 'Mow the lawn'}),
  /// );
  /// final response = await restOperation.response;
  /// print(response.decodeBody()); // 'Hello from lambda!'
  /// ```
  RestOperation delete(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      identifyCall(
        ApiCategoryMethod.delete,
        () => defaultPlugin.delete(
          path,
          headers: headers,
          body: body,
          apiName: apiName,
          queryParameters: queryParameters,
        ),
      );

  /// Sends an HTTP GET request to the REST API endpoint.
  ///
  /// See https://docs.amplify.aws/lib/restapi/fetch/q/platform/flutter/ for more
  /// information.
  ///
  /// Example:
  ///
  /// ```dart
  /// final restOperation = Amplify.API.get('items');
  /// final response = await restOperation.response;
  /// print(response.decodeBody()); // 'Hello from lambda!'
  /// ```
  RestOperation get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      identifyCall(
        ApiCategoryMethod.get,
        () => defaultPlugin.get(
          path,
          headers: headers,
          apiName: apiName,
          queryParameters: queryParameters,
        ),
      );

  /// Sends an HTTP HEAD request to the REST API endpoint.
  ///
  /// Example:
  ///
  /// ```dart
  /// final restOperation = Amplify.API.head('items');
  /// final response = await restOperation.response;
  /// print(response.decodeBody()); // 'Hello from lambda!'
  /// ```
  RestOperation head(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      identifyCall(
        ApiCategoryMethod.head,
        () => defaultPlugin.head(
          path,
          headers: headers,
          apiName: apiName,
          queryParameters: queryParameters,
        ),
      );

  /// Sends an HTTP PATCH request to the REST API endpoint.
  ///
  /// See https://docs.amplify.aws/lib/restapi/update/q/platform/flutter/ for more
  /// information.
  ///
  /// Example:
  /// ```dart
  /// final restOperation = Amplify.API.patch(
  ///   'items',
  ///   body: HttpPayload.json({'name': 'Mow the lawn'}),
  /// );
  /// final response = await restOperation.response;
  /// print(response.decodeBody()); // 'Hello from lambda!'
  /// ```
  RestOperation patch(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      identifyCall(
        ApiCategoryMethod.patch,
        () => defaultPlugin.patch(
          path,
          headers: headers,
          body: body,
          apiName: apiName,
          queryParameters: queryParameters,
        ),
      );

  /// Sends an HTTP POST request to the REST API endpoint.
  ///
  /// See https://docs.amplify.aws/lib/restapi/update/q/platform/flutter/ for more
  /// information.
  ///
  /// Example:
  /// ```dart
  /// final restOperation = Amplify.API.post(
  ///   'items',
  ///   body: HttpPayload.json({'name': 'Mow the lawn'}),
  /// );
  /// final response = await restOperation.response;
  /// print(response.decodeBody()); // 'Hello from lambda!'
  /// ```
  RestOperation post(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      identifyCall(
        ApiCategoryMethod.post,
        () => defaultPlugin.post(
          path,
          headers: headers,
          body: body,
          apiName: apiName,
          queryParameters: queryParameters,
        ),
      );

  /// Sends an HTTP PUT request to the REST API endpoint.
  ///
  /// See https://docs.amplify.aws/lib/restapi/update/q/platform/flutter/ for more
  /// information.
  ///
  /// Example:
  /// ```dart
  /// final restOperation = Amplify.API.put(
  ///   'items',
  ///   body: HttpPayload.json({'name': 'Mow the lawn'}),
  /// );
  /// final response = await restOperation.response;
  /// print(response.decodeBody()); // 'Hello from lambda!'
  /// ```
  RestOperation put(
    String path, {
    Map<String, String>? headers,
    HttpPayload? body,
    Map<String, String>? queryParameters,
    String? apiName,
  }) =>
      identifyCall(
        ApiCategoryMethod.put,
        () => defaultPlugin.put(
          path,
          headers: headers,
          body: body,
          apiName: apiName,
          queryParameters: queryParameters,
        ),
      );
}
