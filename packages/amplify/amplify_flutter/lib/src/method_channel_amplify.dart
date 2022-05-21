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

part of 'amplify_impl.dart';

const MethodChannel _channel = MethodChannel('com.amazonaws.amplify/amplify');

/// {@template amplify.method_channel_amplify}
/// An implementation of [AmplifyClass] that uses method channels.
/// {@endtemplate}
class MethodChannelAmplify extends AmplifyClass {
  /// {@macro amplify.method_channel_amplify}
  MethodChannelAmplify() : super.protected();

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
        await Auth.addPlugin(plugin);
        Hub.addChannel(HubChannel.Auth, plugin.streamController);
      } else if (plugin is AnalyticsPluginInterface) {
        await Analytics.addPlugin(plugin);
      } else if (plugin is StoragePluginInterface) {
        await Storage.addPlugin(plugin);
      } else if (plugin is DataStorePluginInterface) {
        try {
          await DataStore.addPlugin(plugin);
        } on AmplifyAlreadyConfiguredException {
          // A new plugin is added in native libraries during `addPlugin`
          // call for DataStore, which means during an app restart, this
          // method will throw an exception in android. We will ignore this
          // like other plugins and move on. Other exceptions fall through.
        }
        Hub.addChannel(HubChannel.DataStore, plugin.streamController);
      } else if (plugin is APIPluginInterface) {
        await API.addPlugin(plugin);
      } else {
        throw AmplifyException(
          'The type of plugin ${plugin.runtimeType} is not yet supported '
          'in Amplify.',
          recoverySuggestion:
              AmplifyExceptionMessages.missingRecoverySuggestion,
        );
      }
    } on Exception catch (e) {
      safePrint('Amplify plugin was not added');
      throw AmplifyException(
        'Amplify plugin ${plugin.runtimeType} was not added successfully.',
        recoverySuggestion: AmplifyExceptionMessages.missingRecoverySuggestion,
        underlyingException: e.toString(),
      );
    }
  }

  @override
  Future<void> addPlugins(List<AmplifyPluginInterface> plugins) {
    return Future.wait(plugins.map(addPlugin));
  }

  @override
  Future<void> configurePlatform(String config) async {
    try {
      await _channel.invokeMethod<void>(
        'configure',
        <String, Object>{
          'version': version,
          'configuration': config,
        },
      );
      await Future.wait(
        Analytics.plugins.map((plugin) => plugin.onConfigure()),
      );
    } on PlatformException catch (e) {
      if (e.code == 'AnalyticsException') {
        throw AnalyticsException.fromMap(
          Map<String, String>.from(e.details as Map),
        );
      } else if (e.code == 'AmplifyException') {
        throw AmplifyException.fromMap(
          Map<String, String>.from(e.details as Map),
        );
      } else if (e.code == 'AmplifyAlreadyConfiguredException') {
        return;
      } else {
        // This shouldn't happen. All exceptions coming from platform for
        // amplify_flutter should have a known code. Throw an unknown error.
        throw AmplifyException(AmplifyExceptionMessages.missingExceptionMessage,
            recoverySuggestion:
                AmplifyExceptionMessages.missingRecoverySuggestion,
            underlyingException: e.toString());
      }
    }
  }

  @override
  Future<void> reset() async {
    Auth.plugins.clear();
    Analytics.plugins.clear();
    Storage.plugins.clear();
    DataStore.plugins.clear();
    API.plugins.clear();
  }
}
