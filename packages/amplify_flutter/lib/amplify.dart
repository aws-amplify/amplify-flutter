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

library amplify;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:amplify_core/types/index.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';

import './amplify_hub.dart';
import 'categories/amplify_categories.dart';

export 'package:amplify_core/types/hub/HubChannel.dart';

part 'method_channel_amplify.dart';

/// Top level singleton Amplify object.
final AmplifyClass Amplify = new AmplifyClass._private();

/// This is a private class and customers are not expected to
/// instantiate an object of this class. Please use top level
/// `Amplify` singleton object for making calls to methods of this class.
class AmplifyClass extends PlatformInterface {
  AmplifyClass._private();

  // ignore: public_member_api_docs
  AuthCategory Auth = const AuthCategory();
  // ignore: public_member_api_docs
  AnalyticsCategory Analytics = const AnalyticsCategory();
  // ignore: public_member_api_docs
  StorageCategory Storage = const StorageCategory();
  // ignore: public_member_api_docs
  DataStoreCategory DataStore = const DataStoreCategory();
  // ignore: public_member_api_docs
  APICategory API = const APICategory();

  bool _isConfigured = false;

  // ignore: public_member_api_docs
  AmplifyHub Hub = AmplifyHub();

  final _amplifyBugRecoverySuggestion =
      "This looks like a bug in Amplify library, please create an issue.";

  /// Adds one plugin at a time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  Future<void> addPlugin(AmplifyPluginInterface plugin) async {
    if (!isConfigured) {
      try {
        if (plugin is AuthPluginInterface) {
          Auth.addPlugin(plugin);
          Hub.addChannel(HubChannel.Auth, plugin.streamController);
        } else if (plugin is AnalyticsPluginInterface) {
          Analytics.addPlugin(plugin);
        } else if (plugin is StoragePluginInterface) {
          Storage.addPlugin(plugin);
        } else if (plugin is DataStorePluginInterface) {
          await DataStore.addPlugin(plugin);
          Hub.addChannel(HubChannel.DataStore, plugin.streamController);
        } else if (plugin is APIPluginInterface) {
          await API.addPlugin(plugin);
        } else {
          throw AmplifyException(
              "The type of plugin " +
                  plugin.runtimeType.toString() +
                  " is not yet supported in Amplify.",
              recoverySuggestion: _amplifyBugRecoverySuggestion);
        }
      } catch (e) {
        print("Amplify plugin was not added");
        throw AmplifyException(
            "Amplify plugin " +
                plugin.runtimeType.toString() +
                " was not added successfully.",
            recoverySuggestion: _amplifyBugRecoverySuggestion,
            underlyingException: e.toString());
      }
    } else {
      throw AmplifyException(
          "Amplify has already been configured and adding plugins after configure is not supported.",
          recoverySuggestion:
              "Use Amplify.isConfigured to check Amplify configuration state before adding plugins.");
    }
    return;
  }

  /// Adds multiple plugins at the same time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  Future<void> addPlugins(List<AmplifyPluginInterface> plugins) async {
    plugins.forEach((plugin) async {
      await addPlugin(plugin);
    });
    return;
  }

  /// Returns whether Amplify has been configured or not.
  bool get isConfigured {
    return _isConfigured;
  }

  String _getVersion() {
    return "0.1.0";
  }

  /// Configures Amplify with the provided configuration string.
  /// This method can only be called once, after all the plugins
  /// have been added and no plugin shall be added after amplify
  /// is configured. Clients are expected to call `Amplify.isConfigured`
  /// to check if their app is configured before calling this method.
  Future<void> configure(String configuration) async {
    // Validation #1
    if (isConfigured) {
      throw AmplifyException(
          "Amplify has already been configured and re-configuration is not supported.",
          recoverySuggestion:
              "Use Amplify.isConfigured to check before calling configure again.");
    }

    // Validation #2
    if (configuration == null) {
      throw AmplifyException("Configuration passed in null.",
          recoverySuggestion:
              "Make sure that your amplifyconfiguration.dart file" +
                  " exists and has string constant ``amplifyconfig` and that" +
                  " you are calling configure() correctly.");
    }

    // Validation #3. Try decoding the json string
    try {
      jsonDecode(configuration);
    } on FormatException catch (e) {
      throw AmplifyException(
          "The provided configuration is not a valid json. Check underlyingException.",
          recoverySuggestion:
              "Inspect your amplifyconfiguration.dart and ensure that the string is proper json",
          underlyingException: e.toString());
    }

    try {
      var res = await AmplifyClass.instance
          ._configurePlatforms(_getVersion(), configuration);
      _isConfigured = res;
      if (!res) {
        throw AmplifyException("Amplify failed to configure.",
            recoverySuggestion: _amplifyBugRecoverySuggestion);
      }
    } on PlatformException catch (e) {
      if (e.code == "AmplifyException") {
        throw AmplifyException.fromMap(Map<String, String>.from(e.details));
      } else if (e.code == "AmplifyAlreadyConfigured") {
        throw AmplifyAlreadyConfiguredException.fromMap(
            Map<String, String>.from(e.details));
      } else {
        // This shouldn't happen. All exceptions coming from platform for
        // amplify_flutter should have a known code. Throw an unknown error.
        throw AmplifyException(
            "An unknown error has happened while configuring Amplify.",
            recoverySuggestion: _amplifyBugRecoverySuggestion,
            underlyingException: e.toString());
      }
    }

    await DataStore.configure(configuration);
  }

  /// Adds the configuration and return true if it was successful.
  Future<bool> _configurePlatforms(String version, String configuration) {
    throw UnimplementedError('_configurePlatforms() has not been implemented.');
  }

  /// Constructs a Core platform.
  AmplifyClass() : super(token: _token);

  static final Object _token = Object();

  static AmplifyClass _instance = MethodChannelAmplify();

  /// The default instance of [AmplifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static AmplifyClass get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AmplifyPlatform] when they register themselves.
  static set instance(AmplifyClass instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}
