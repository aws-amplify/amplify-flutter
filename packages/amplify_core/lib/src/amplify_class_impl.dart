// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_class_impl}
/// An implementation of [AmplifyClass] written in Dart.
/// {@endtemplate}
@internal
class AmplifyClassImpl extends AmplifyClass {
  /// Share AmplifyAuthProviders with plugins.
  @protected
  final AmplifyAuthProviderRepository authProviderRepo =
      AmplifyAuthProviderRepository();

  /// {@macro amplify_flutter.amplify_class_impl}
  AmplifyClassImpl() : super.protected();

  @override
  Future<void> addPlugin(AmplifyPluginInterface plugin) {
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
    await Future.wait(
      [
        ...Analytics.plugins,
        ...API.plugins,
        ...Auth.plugins,
        ...DataStore.plugins,
        ...Storage.plugins,
      ].map(
        (p) => p.configure(
          config: amplifyConfig,
          authProviderRepo: authProviderRepo,
        ),
      ),
      eagerError: true,
    );
  }

  @override
  Future<void> reset() async {
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
