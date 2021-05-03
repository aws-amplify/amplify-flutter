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

library amplify_api_plugin;

import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import './method_channel_api.dart';
import 'package:flutter/foundation.dart';
export 'package:amplify_api_plugin_interface/src/types.dart';

class AmplifyAPI extends APIPluginInterface {
  static final Object _token = Object();

  AmplifyAPI() : super(token: _token);

  static AmplifyAPI _instance = AmplifyAPIMethodChannel();

  /// The default instance of [AmplifyAPIPlugin] to use.
  static APIPluginInterface get instance => _instance;

  static set instance(APIPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  @override
  Future<void> addPlugin() async {
    return _instance.addPlugin();
  }

  // ====== GraphQL =======
  @override
  GraphQLOperation<T> query<T>({@required GraphQLRequest<T> request}) {
    return _instance.query(request: request);
  }

  @override
  GraphQLOperation<T> mutate<T>({@required GraphQLRequest<T> request}) {
    return _instance.mutate(request: request);
  }

  GraphQLSubscriptionOperation<T> subscribe<T>(
      {@required GraphQLRequest<T> request,
      @required Function(GraphQLResponse<T>) onData,
      Function() onEstablished,
      Function(dynamic) onError,
      Function() onDone}) {
    return _instance.subscribe(
        request: request,
        onEstablished: onEstablished,
        onData: onData,
        onError: onError,
        onDone: onDone);
  }

  // ====== RestAPI ======
  @override
  void cancelRequest(String cancelToken) {
    _instance.cancelRequest(cancelToken);
  }

  @override
  RestOperation get({@required RestOptions restOptions}) {
    return _instance.get(restOptions: restOptions);
  }

  @override
  RestOperation put({@required RestOptions restOptions}) {
    return _instance.put(restOptions: restOptions);
  }

  @override
  RestOperation post({@required RestOptions restOptions}) {
    return _instance.post(restOptions: restOptions);
  }

  @override
  RestOperation delete({@required RestOptions restOptions}) {
    return _instance.delete(restOptions: restOptions);
  }

  @override
  RestOperation head({@required RestOptions restOptions}) {
    return _instance.head(restOptions: restOptions);
  }

  @override
  RestOperation patch({@required RestOptions restOptions}) {
    return _instance.patch(restOptions: restOptions);
  }
}
