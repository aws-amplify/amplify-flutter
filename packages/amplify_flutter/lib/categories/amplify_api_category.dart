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

part of amplify_interface;

class APICategory {
  const APICategory();

  static List<APIPluginInterface> plugins = [];

  Future<void> addPlugin(APIPluginInterface plugin) async {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.length == 0) {
      plugins.add(plugin);
      await plugin.addPlugin();
    } else {
      throw AmplifyException("API plugin has already been added, " +
          "multiple plugins for API category are currently not supported.");
    }
  }

  // ====== GraphQL =======
  GraphQLOperation<T> query<T>({@required GraphQLRequest<T> request}) {
    return plugins.length == 1
        ? plugins[0].query(request: request)
        : throw _pluginNotAddedException("Api");
  }

  GraphQLOperation<T> mutate<T>({@required GraphQLRequest<T> request}) {
    return plugins.length == 1
        ? plugins[0].mutate(request: request)
        : throw _pluginNotAddedException("Api");
  }

  GraphQLSubscriptionOperation<T> subscribe<T>(
      {@required GraphQLRequest<T> request,
      @required void Function(GraphQLResponse<T>) onData,
      @required void Function() onEstablished,
      @required void Function(dynamic) onError,
      @required void Function() onDone}) {
    return plugins.length == 1
        ? plugins[0].subscribe(
            request: request,
            onEstablished: onEstablished,
            onData: onData,
            onError: onError,
            onDone: onDone)
        : throw _pluginNotAddedException("Api");
  }

  // ====== RestAPI ======
  void cancelRequest(String code) {
    return plugins.length == 1
        ? plugins[0].cancelRequest(code)
        : throw _pluginNotAddedException("Api");
  }

  RestOperation get({@required RestOptions restOptions}) {
    return plugins.length == 1
        ? plugins[0].get(restOptions: restOptions)
        : throw _pluginNotAddedException("Api");
  }

  RestOperation put({@required RestOptions restOptions}) {
    return plugins.length == 1
        ? plugins[0].put(restOptions: restOptions)
        : throw _pluginNotAddedException("Api");
  }

  RestOperation post({@required RestOptions restOptions}) {
    return plugins.length == 1
        ? plugins[0].post(restOptions: restOptions)
        : throw _pluginNotAddedException("Api");
  }

  RestOperation delete({@required RestOptions restOptions}) {
    return plugins.length == 1
        ? plugins[0].delete(restOptions: restOptions)
        : throw _pluginNotAddedException("Api");
  }

  RestOperation head({@required RestOptions restOptions}) {
    return plugins.length == 1
        ? plugins[0].head(restOptions: restOptions)
        : throw _pluginNotAddedException("Api");
  }

  RestOperation patch({@required RestOptions restOptions}) {
    return plugins.length == 1
        ? plugins[0].patch(restOptions: restOptions)
        : throw _pluginNotAddedException("Api");
  }
}
