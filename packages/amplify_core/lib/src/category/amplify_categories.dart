// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_interface;

import 'dart:async';

import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// category parts
part 'amplify_analytics_category.dart';
part 'amplify_api_category.dart';
part 'amplify_datastore_category.dart';
part 'amplify_notifications_category.dart';
part 'amplify_push_notifications_category.dart';
part 'amplify_storage_category.dart';

String _errorMsgPluginNotAdded(String pluginName) =>
    '$pluginName plugin has not been added to Amplify';

String _recoverySuggestionPluginNotAdded(String pluginName) =>
    'Add $pluginName plugin to Amplify and call configure before calling $pluginName related APIs';

PluginError _pluginNotAddedException(String pluginName) => PluginError(
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

  /// Push Notifications
  notificationsPush,
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
      case Category.notificationsPush:
        return 'PushNotifications';
    }
  }
}

/// Base functionality for Amplify categories.
abstract class AmplifyCategory<P extends AmplifyPluginInterface> {
  Category get category;

  final List<P> _plugins = [];

  /// The plugins registered for this category.
  ///
  /// By default, the category API uses the plugin which was first registered.
  /// To use a specific plugin instead, call `getPlugin` with the associated
  /// plugin key.
  List<P> get plugins => UnmodifiableListView(_plugins);

  @protected
  P get defaultPlugin {
    final plugin = plugins.firstOrNull;
    if (plugin == null) {
      throw _pluginNotAddedException(category.name);
    }
    return plugin;
  }

  /// Adds a plugin to the category.
  Future<void> addPlugin(
    P plugin, {
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {
    try {
      await plugin.addPlugin(
        authProviderRepo: authProviderRepo,
      );
      _plugins.add(plugin);
    } on AmplifyAlreadyConfiguredException {
      _plugins.add(plugin);
    }
  }

  /// Resets the category, clearing all registered plugins.
  @visibleForTesting
  Future<void> reset() async {
    // ignore: invalid_use_of_visible_for_testing_member
    await Future.wait<void>(_plugins.map((plugin) => plugin.reset()));
    _plugins.clear();
  }
}
