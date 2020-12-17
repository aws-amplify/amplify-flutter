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

  GraphQLOperation<T> query<T>({@required GraphQLRequest<T> request}) {
    return plugins[0].query(request: request);
  }

  GraphQLOperation<T> mutate<T>({@required GraphQLRequest<T> request}) {
    return plugins[0].mutate(request: request);
  }
}
