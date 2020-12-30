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

import 'categories/amplify_categories.dart';

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

  /// Adds one plugin at a time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  Future<void> addPlugin(AmplifyPluginInterface plugin) async {
    if (!isConfigured) {
      try {
        if (plugin is AuthPluginInterface) {
          Auth.addPlugin(plugin as AuthPluginInterface);
        } else if (plugin is AnalyticsPluginInterface) {
          Analytics.addPlugin(plugin as AnalyticsPluginInterface);
        } else if (plugin is StoragePluginInterface) {
          Storage.addPlugin(plugin as StoragePluginInterface);
        } else if (plugin is DataStorePluginInterface) {
          await DataStore.addPlugin(plugin);
        } else if (plugin is APIPluginInterface) {
          await API.addPlugin(plugin);
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
          "Amplify is already configured. Adding plugins after configure is not supported.");
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
    if (isConfigured) {
      throw StateError(
          "Amplify has already been configured and re-configuration is not supported. " +
              "Please use Amplify.isConfigured to check before calling configure again.");
    }
    assert(configuration != null, 'configuration is null');
    var res = await AmplifyClass.instance
        ._configurePlatforms(_getVersion(), configuration);
    _isConfigured = res;
    if (!res) {
      throw ("Amplify failed to configure. " +
          "Please raise an issue in amplify-flutter repository.");
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
