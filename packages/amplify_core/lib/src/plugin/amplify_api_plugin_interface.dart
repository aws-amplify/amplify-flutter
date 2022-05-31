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

import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:meta/meta.dart';

abstract class APIPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.api;

  /// modelProvider
  ModelProviderInterface? get modelProvider => throw UnimplementedError();

  // ====== GraphQL =======
  CancelableOperation<GraphQLResponse<T>> query<T>(
      {required GraphQLRequest<T> request}) {
    throw UnimplementedError('query() has not been implemented.');
  }

  CancelableOperation<GraphQLResponse<T>> mutate<T>(
      {required GraphQLRequest<T> request}) {
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
  void registerAuthProvider(APIAuthProvider authProvider);

  // ====== RestAPI ======
  CancelableOperation<AWSStreamedHttpResponse> delete(
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
  CancelableOperation<AWSStreamedHttpResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('get() has not been implemented');
  }

  CancelableOperation<AWSStreamedHttpResponse> head(
    String path, {
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('head() has not been implemented');
  }

  CancelableOperation<AWSStreamedHttpResponse> patch(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('patch() has not been implemented');
  }

  CancelableOperation<AWSStreamedHttpResponse> post(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('post() has not been implemented');
  }

  CancelableOperation<AWSStreamedHttpResponse> put(
    String path, {
    HttpPayload? body,
    Map<String, String>? headers,
    Map<String, String>? queryParameters,
    String? apiName,
  }) {
    throw UnimplementedError('put() has not been implemented');
  }
}
