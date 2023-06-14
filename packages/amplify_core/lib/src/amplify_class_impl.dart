// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:graphs/graphs.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_class_impl}
/// An implementation of [AmplifyClass] written in Dart.
/// {@endtemplate}
@internal
class AmplifyClassImpl extends AmplifyClass {
  /// {@macro amplify_flutter.amplify_class_impl}
  AmplifyClassImpl() : super.protected();

  /// Share AmplifyAuthProviders with plugins.
  @protected
  final AmplifyAuthProviderRepository authProviderRepo =
      AmplifyAuthProviderRepository();

  final _addPluginFutures = <Future<void>>[];

  @override
  Future<void> addPlugin(AmplifyPluginInterface plugin) {
    final future = _addPlugin(plugin);
    _addPluginFutures.add(future);
    return future;
  }

  Future<void> _addPlugin(AmplifyPluginInterface plugin) {
    switch (plugin.category) {
      case Category.analytics:
        return Analytics.addPlugin(
          plugin.cast(),
          authProviderRepo: authProviderRepo,
        );
      case Category.auth:
        return Auth.addPlugin(
          plugin.cast(),
          authProviderRepo: authProviderRepo,
        );
      case Category.storage:
        return Storage.addPlugin(
          plugin.cast(),
          authProviderRepo: authProviderRepo,
        );
      case Category.api:
        return API.addPlugin(
          plugin.cast(),
          authProviderRepo: authProviderRepo,
        );
      case Category.dataStore:
        return DataStore.addPlugin(
          plugin.cast(),
          authProviderRepo: authProviderRepo,
        );
      case Category.hub:
        throw UnimplementedError();
      case Category.pushNotifications:
        return Notifications.Push.addPlugin(
          plugin.cast(),
          authProviderRepo: authProviderRepo,
        );
    }
  }

  @override
  Future<void> configurePlatform(String config) async {
    final amplifyConfig = AmplifyConfig.fromJson(
      (jsonDecode(config) as Map<Object?, Object?>).cast(),
    );
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
            config: amplifyConfig,
            authProviderRepo: authProviderRepo,
          ),
        ),
      );
    }
  }

  @override
  Future<void> reset() async {
    _addPluginFutures.clear();
    await Future.wait([
      Analytics.reset(),
      API.reset(),
      Auth.reset(),
      DataStore.reset(),
      Storage.reset(),
    ]);
    await super.reset();
  }
}
