// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

abstract class APIPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.api;

  /// modelProvider
  ModelProviderInterface? get modelProvider => throw UnimplementedError();

  // ====== GraphQL =======
  GraphQLOperation<T> query<T>({required GraphQLRequest<T> request}) {
    throw UnimplementedError('query() has not been implemented.');
  }

  GraphQLOperation<T> mutate<T>({required GraphQLRequest<T> request}) {
    throw UnimplementedError('mutate() has not been implemented.');
  }

  /// Subscribes to the given [request] and returns the stream of response events.
  /// An optional [onEstablished] callback can be used to be alerted when the
  /// subscription has been successfully established with the server.
  ///
  /// Any exceptions encountered during the subscription are added as errors
  /// to this stream.
  Stream<GraphQLResponse<T>> subscribe<T>(
    GraphQLRequest<T> request, {
    void Function()? onEstablished,
  }) {
    throw UnimplementedError('subscribe() has not been implemented.');
  }

  /// Registers an [APIAuthProvider] with this plugin.
  void registerAuthProvider(APIAuthProvider authProvider) {
    authProviders[authProvider.type] = authProvider;
  }

  /// The registered [APIAuthProvider] instances.
  @protected
  final Map<APIAuthorizationType, APIAuthProvider> authProviders = {};

  // ====== RestAPI ======
  RestOperation delete(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('delete() has not been implemented');
  }

  /// Uses Amplify configuration to authorize request to [path] and returns
  /// [CancelableOperation] which resolves to standard HTTP
  /// [Response](https://pub.dev/documentation/http/latest/http/Response-class.html).
  RestOperation get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('get() has not been implemented');
  }

  RestOperation head(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('head() has not been implemented');
  }

  RestOperation patch(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('patch() has not been implemented');
  }

  RestOperation post(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('post() has not been implemented');
  }

  RestOperation put(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('put() has not been implemented');
  }
}
