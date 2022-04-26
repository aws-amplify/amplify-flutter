/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

library amplify_interface;

import 'dart:async';
import 'dart:io';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/plugin/amplify_auth_plugin_interface.dart';
import 'package:collection/collection.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

/// category parts
part 'amplify_analytics_category.dart';
part 'amplify_api_category.dart';
part 'amplify_auth_category.dart';
part 'amplify_datastore_category.dart';
part 'amplify_storage_category.dart';

String _errorMsgPluginNotAdded(String pluginName) =>
    '$pluginName plugin has not been added to Amplify';

String _recoverySuggestionPluginNotAdded(String pluginName) =>
    'Add $pluginName plugin to Amplify and call configure before calling $pluginName related APIs';

AmplifyException _pluginNotAddedException(String pluginName) =>
    AmplifyException(
      _errorMsgPluginNotAdded(pluginName),
      recoverySuggestion: _recoverySuggestionPluginNotAdded(pluginName),
    );

/// Amplify category types.
enum Category {
  /// Record app metrics and analytics data
  analytics,

  /// Retrieve data from a remote service
  api,

  /// Authentication
  auth,

  /// Persist data
  dataStore,

  /// Listen for or dispatch Amplify events
  hub,

  /// Upload and download files from the cloud
  storage,
}

extension CategoryName on Category {
  String get name {
    switch (this) {
      case Category.analytics:
        return 'Analytics';
      case Category.api:
        return 'API';
      case Category.auth:
        return 'Auth';
      case Category.dataStore:
        return 'DataStore';
      case Category.hub:
        return 'Hub';
      case Category.storage:
        return 'Storage';
    }
  }
}

/// Base functionality for Amplify categories.
abstract class AmplifyCategory<P extends AmplifyPluginInterface> {
  Category get category;

  final List<P> plugins = [];

  @protected
  T getPlugin<T extends P>() => plugins.whereType<T>().single;

  @protected
  P get defaultPlugin {
    final plugin = plugins.firstOrNull;
    if (plugin == null) {
      throw _pluginNotAddedException(category.name);
    }
    return plugin;
  }

  /// Adds a plugin to the category.
  Future<void> addPlugin(P plugin) async {
    //TODO: Allow for multiple plugins to work simultaneously
    if (plugins.isEmpty) {
      try {
        await plugin.addPlugin();
        plugins.add(plugin);
      } on AmplifyAlreadyConfiguredException {
        plugins.add(plugin);
      } on AmplifyException {
        rethrow;
      } on Exception catch (e) {
        throw AmplifyException(e.toString());
      }
    } else {
      throw AmplifyException(
        '${category.name} plugin has already been added, '
        'multiple plugins for ${category.name} category are currently not supported.',
      );
    }
  }
}
