// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';

/// {@template amplify_flutter.amplify_hybrid_impl}
/// A hybrid implementation of [AmplifyClass] which uses method channels for
/// iOS/Android plugins and Dart, otherwise.
/// {@endtemplate}
class AmplifyHybridImpl extends AmplifyClassImpl {
  /// {@macro amplify_flutter.amplify_hybrid_impl}
  AmplifyHybridImpl() : super.protected();

  @override
  Future<void> configurePlatform(String config) async {
    final amplifyConfig = AmplifyConfig.fromJson(
      (jsonDecode(config) as Map<Object?, Object?>).cast(),
    );
    await Future.wait(
      [
        ...API.plugins,
        ...Auth.plugins,
        ...Notifications.Push.plugins,
        ...Analytics.plugins,
        ...Storage.plugins,
        ...DataStore.plugins,
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
  Future<void> addPlugin(AmplifyPluginInterface plugin) async {
    if (isConfigured) {
      throw const AmplifyAlreadyConfiguredException(
        'Amplify has already been configured and adding plugins after configure is not supported.',
        recoverySuggestion:
            'Check if Amplify is already configured using Amplify.isConfigured.',
      );
    }
    try {
      if (plugin is AuthPluginInterface) {
        await Auth.addPlugin(
          plugin,
          authProviderRepo: authProviderRepo,
        );
      } else if (plugin is AnalyticsPluginInterface) {
        await Analytics.addPlugin(
          plugin,
          authProviderRepo: authProviderRepo,
        );
      } else if (plugin is StoragePluginInterface) {
        await Storage.addPlugin(
          plugin,
          authProviderRepo: authProviderRepo,
        );
      } else if (plugin is DataStorePluginInterface) {
        try {
          await DataStore.addPlugin(
            plugin,
            authProviderRepo: authProviderRepo,
          );
        } on AmplifyAlreadyConfiguredException {
          // A new plugin is added in native libraries during `addPlugin`
          // call for DataStore, which means during an app restart, this
          // method will throw an exception in android. We will ignore this
          // like other plugins and move on. Other exceptions fall through.
        }
        Hub.addChannel(
          HubChannel.DataStore,
          plugin.streamController.stream,
        );
      } else if (plugin is APIPluginInterface) {
        await API.addPlugin(plugin, authProviderRepo: authProviderRepo);
      } else if (plugin is PushNotificationsPluginInterface) {
        await Notifications.Push.addPlugin(
          plugin,
          authProviderRepo: authProviderRepo,
        );
      } else {
        throw PluginError(
          'The type of plugin ${plugin.runtimeType} is not yet supported '
          'in Amplify.',
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
        );
      }
    } on AmplifyAlreadyConfiguredException {
      return;
    } on Exception catch (e) {
      safePrint('Amplify plugin was not added');
      throw PluginError(
        'Amplify plugin ${plugin.runtimeType} was not added successfully.',
        recoverySuggestion: AmplifyExceptionMessages.missingRecoverySuggestion,
        underlyingException: e,
      );
    }
  }
}
