// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/amplify_class_impl.dart';
import 'package:amplify_core/src/version.dart';
import 'package:graphs/graphs.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_class}
/// Amplify singleton class.
///
/// This class can be extended to create a custom Amplify implementation.
/// The default Amplify implementation will use method channels, and will
/// only support iOS and Android platforms.
/// {@endtemplate}
abstract class AmplifyClass {
  /// {@macro amplify_flutter.amplify_class}
  factory AmplifyClass() = AmplifyClassImpl;

  /// Constructs a Core platform.
  /// Internal Use Only
  @protected
  AmplifyClass.protected();

  /// The instance of [AmplifyClass] to use.
  ///
  /// Defaults to the platform-specific implementation.
  static AmplifyClass? instance;

  /// The Auth category.
  final AuthCategory Auth = AuthCategory();

  /// The Analytics category.
  final AnalyticsCategory Analytics = AnalyticsCategory();

  /// The Storage category.
  final StorageCategory Storage = StorageCategory();

  /// The DataStore category.
  final DataStoreCategory DataStore = DataStoreCategory();

  /// The API category.
  final APICategory API = APICategory();

  /// The Amplify event hub.
  final AmplifyHub Hub = AmplifyHub();

  /// The Notifications category.
  final NotificationsCategory Notifications = NotificationsCategory();

  /// Shared dependencies for use across categories.
  @protected
  @visibleForTesting
  late final DependencyManager dependencies = AmplifyDependencyManager();

  @protected
  @visibleForTesting
  final AmplifyAuthProviderRepository authProviderRepo =
      AmplifyAuthProviderRepository();

  var _configCompleter = Completer<AmplifyConfig>();
  final _addPluginFutures = <Future<void>>[];

  /// Adds one plugin at a time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  ///
  /// Throws AmplifyAlreadyConfiguredException if
  /// this method is called after configure (e.g. during hot reload).
  Future<void> addPlugin(AmplifyPluginInterface plugin) {
    final future = addPluginPlatform(plugin);
    _addPluginFutures.add(future);
    return future;
  }

  /// Adds multiple plugins at the same time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  Future<void> addPlugins(List<AmplifyPluginInterface> plugins) {
    return Future.wait(plugins.map(addPlugin), eagerError: true);
  }

  /// Adds the [plugin] in the platform-specific manner.
  @protected
  Future<void> addPluginPlatform(AmplifyPluginInterface plugin);

  /// Returns whether Amplify has been configured or not.
  bool get isConfigured => _configCompleter.isCompleted;

  /// A future when completes when Amplify has been successfully configured.
  Future<AmplifyConfig> get asyncConfig => _configCompleter.future;

  /// Configures Amplify with the provided configuration string.
  /// **This method can only be called once**, after all the plugins
  /// have been added and no plugin shall be added after amplify
  /// is configured. Customers are expected to call `Amplify.isConfigured`
  /// to check if their app is configured before calling this method.
  ///
  /// Throws AmplifyAlreadyConfiguredException if
  /// this method is called again (e.g. during hot reload).
  Future<void> configure(String configuration) async {
    if (isConfigured) {
      throw const AmplifyAlreadyConfiguredException(
        'Amplify has already been configured and re-configuration is not supported.',
        recoverySuggestion:
            'Check if Amplify is already configured using Amplify.isConfigured.',
      );
    }

    late AmplifyConfig amplifyConfig;
    try {
      try {
        final json = jsonDecode(configuration) as Map;
        amplifyConfig = AmplifyConfig.fromJson(json.cast());
      } on Object {
        throw ConfigurationError(
          'The provided configuration is not a valid json. '
          'Check underlyingException.',
          recoverySuggestion:
              'Inspect your amplifyconfiguration.dart and ensure that '
              'the string is proper json',
        );
      }
      await _configurePlugins(amplifyConfig);
      _configCompleter.complete(amplifyConfig);
    } on ConfigurationError catch (e, st) {
      // Complete with the configuration error and reset the completer so
      // that 1) `configure` can be called again and 2) listeners registered
      // on `asyncConfig` are notified of the error so they can handle it as
      // appropriate. For example, the Authenticator listens for `asyncConfig`
      // to complete before updating the UI.
      _configCompleter.completeError(e, st);
      rethrow;
    } on Object {
      // At this point, configuration is complete in the sense that the
      // configuration file has been validated and plugins have had their
      // `configure` methods run with no `ConfigurationException`s.
      //
      // Any other errors which occur during plugin configuration should be
      // handled by the developer, but since they are unrelated to
      // configuration, listeners to `Amplify.asyncConfig` should be allowed to
      // proceed with the validated configuration.
      _configCompleter.complete(amplifyConfig);
      _configCompleter = Completer();
      rethrow;
    }
  }

  /// Configures all plugins in topologically-sorted order.
  Future<void> _configurePlugins(AmplifyConfig config) async {
    await Future.wait(_addPluginFutures);
    _addPluginFutures.clear();
    final categories = <Category, AmplifyCategory>{
      Category.analytics: Analytics,
      Category.api: API,
      Category.auth: Auth,
      Category.dataStore: DataStore,
      Category.pushNotifications: Notifications.Push,
      Category.storage: Storage,
    };
    final sortedCategories = topologicalSort(
      categories.keys,
      (category) => categories[category]!.categoryDependencies,
    ).reversed;
    for (final category in sortedCategories) {
      final plugins = categories[category]!.plugins;
      await Future.wait(
        eagerError: true,
        plugins.map(
          (plugin) => plugin.configure(
            config: config,
            authProviderRepo: authProviderRepo,
          ),
        ),
      );
    }
  }

  /// The library version.
  String get version => packageVersion.split('+').first;

  /// Resets the Amplify implementation, removing all traces of Amplify from
  /// the device.
  @visibleForTesting
  @mustCallSuper
  Future<void> reset() async {
    _configCompleter = Completer();
    _addPluginFutures.clear();
    await Future.wait([
      Analytics.reset(),
      API.reset(),
      Auth.reset(),
      DataStore.reset(),
      Notifications.Push.reset(),
      Storage.reset(),
    ]);
    dependencies.close();
  }
}

// ignore_for_file: non_constant_identifier_names, unnecessary_getters_setters, invalid_use_of_visible_for_testing_member
