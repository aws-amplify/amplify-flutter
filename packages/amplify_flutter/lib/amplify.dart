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

import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'package:amplify_core/types/index.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';

import 'categories/amplify_categories.dart';

part 'method_channel_amplify.dart';

/// Top level singleton Amplify object.
final AmplifyClass Amplify = new AmplifyClass._private();

class AmplifyClass extends PlatformInterface {
  AmplifyClass._private();

  AuthCategory Auth = const AuthCategory();
  AnalyticsCategory Analytics = const AnalyticsCategory();
  StorageCategory Storage = const StorageCategory();
  DataStoreCategory DataStore = const DataStoreCategory();
  APICategory API = const APICategory();

  bool _isConfigured = false;

  Future<void> addPlugin(AmplifyPluginInterface plugin) async {
    if (!_isConfigured) {
      try {
        if (plugin is AuthPluginInterface) {
          Auth.addPlugin(plugin as AuthPluginInterface);
        } else if (plugin is AnalyticsPluginInterface) {
          Analytics.addPlugin(plugin as AnalyticsPluginInterface);
        } else if (plugin is StoragePluginInterface) {
          Storage.addPlugin(plugin as StoragePluginInterface);
        } else if (plugin is DataStorePluginInterface) {
          await DataStore.addPlugin(plugin as DataStorePluginInterface);
        } else if (plugin is APIPluginInterface) {
          await API.addPlugin(plugin as APIPluginInterface);
        } else {
          throw ArgumentError(
              "The type of plugin is not yet supported in Amplify. This is a bug in Amplify library, please file an issue.");
        }
      } catch (e) {
        print("Amplify plugin was not added");
        throw e;
      }
    } else {
      throw StateError(
          "Amplify is already configured; additional plugins cannot be added.");
    }
    return;
  }

  Future<void> addPlugins(List<AmplifyPluginInterface> plugins) async {
    plugins.forEach((plugin) async {
      await addPlugin(plugin);
    });
    return;
  }

  String _getVersion() {
    return "0.1.0";
  }

  Future<void> configure(String configuration) async {
    assert(configuration != null, 'configuration is null');
    var res = await AmplifyClass.instance
        ._configurePlatforms(_getVersion(), configuration);
    _isConfigured = res;
    if (!res) {
      throw ("Amplify plugin was not added");
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
