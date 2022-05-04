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
import 'package:meta/meta.dart';

abstract class APIPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.api;

  /// modelProvider
  ModelProviderInterface? modelProvider;

  APIPluginInterface({this.modelProvider});

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
  void registerAuthProvider(APIAuthProvider authProvider);

  // ====== RestAPI ======
  void cancelRequest(String cancelToken) {
    throw UnimplementedError('cancelRequest has not been implemented.');
  }

  RestOperation get({required RestOptions restOptions}) {
    throw UnimplementedError('get has not been implemented.');
  }

  RestOperation put({required RestOptions restOptions}) {
    throw UnimplementedError('put has not been implemented.');
  }

  RestOperation post({required RestOptions restOptions}) {
    throw UnimplementedError('post has not been implemented.');
  }

  RestOperation delete({required RestOptions restOptions}) {
    throw UnimplementedError('delete has not been implemented.');
  }

  RestOperation head({required RestOptions restOptions}) {
    throw UnimplementedError('head has not been implemented.');
  }

  RestOperation patch({required RestOptions restOptions}) {
    throw UnimplementedError('patch has not been implemented.');
  }
}
