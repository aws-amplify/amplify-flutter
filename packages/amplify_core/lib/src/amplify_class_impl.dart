// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: non_constant_identifier_names, invalid_use_of_visible_for_testing_member

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.amplify_class_impl}
/// An implementation of [AmplifyClass] written in Dart.
/// {@endtemplate}
@internal
class AmplifyClassImpl extends AmplifyClass {
  /// {@macro amplify_flutter.amplify_class_impl}
  AmplifyClassImpl() : super.protected();

  @override
  Future<void> addPluginPlatform(AmplifyPluginInterface plugin) {
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
}
