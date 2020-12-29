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

part of amplify_core_plugin_interface;

class APICategory {
  final errorMsg = "API plugin not added correctly";

  const APICategory();

  static List<APIPluginInterface> plugins = [];

  /// `Add plugin` method
  bool addPlugin(APIPluginInterface plugin) {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.length == 0) {
      plugins.add(plugin);
      return true;
    } else {
      throw ("Failed to add the API plugin");
    }
  }

  // ====== GraphQL =======
  GraphQLOperation<T> query<T>({@required GraphQLRequest<T> request}) {
    return plugins.length == 1
        ? plugins[0].query(request: request)
        : throw (errorMsg);
  }

  GraphQLOperation<T> mutate<T>({@required GraphQLRequest<T> request}) {
    return plugins.length == 1
        ? plugins[0].mutate(request: request)
        : throw (errorMsg);
  }

  // ====== RestAPI ======
  void cancelRequest(String code) {
    return plugins[0].cancelRequest(code);
  }

  RestOperation get({@required RestOptions restOptions}) {
    return plugins[0].get(restOptions: restOptions);
  }

  RestOperation put({@required RestOptions restOptions}) {
    return plugins[0].put(restOptions: restOptions);
  }

  RestOperation post({@required RestOptions restOptions}) {
    return plugins[0].post(restOptions: restOptions);
  }

  RestOperation delete({@required RestOptions restOptions}) {
    return plugins[0].delete(restOptions: restOptions);
  }
}
