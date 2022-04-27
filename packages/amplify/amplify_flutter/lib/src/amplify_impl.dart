/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:async';
import 'dart:convert';

import 'package:amplify_analytics_plugin_interface/amplify_analytics_plugin_interface.dart';
import 'package:amplify_api_plugin_interface/amplify_api_plugin_interface.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'amplify_hub.dart';

part 'method_channel_amplify.dart';

/// Amplify singleton class.
///
/// This class can be extended to create a custom Amplify implementation.
/// The default Amplify implementation will use method channels, and will
/// only support iOS and Android platforms.
class AmplifyClass extends PlatformInterface {
  /// The Auth category.
  final AuthCategory Auth = AuthCategory();

  /// The Analytics category.
  final AnalyticsCategory Analytics = AnalyticsCategory();

  /// The Storage category.
  final StorageCategory Storage = const StorageCategory();

  /// The DataStore category.
  final DataStoreCategory DataStore = const DataStoreCategory();

  /// The API category.
  final APICategory API = const APICategory();

  /// The Amplify event hub.
  final AmplifyHub Hub = AmplifyHub();

  /// Adds one plugin at a time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  ///
  /// Throws AmplifyAlreadyConfiguredException if
  /// this method is called after configure (e.g. during hot reload).
  Future<void> addPlugin(AmplifyPluginInterface plugin) async {
    return instance.addPlugin(plugin);
  }

  /// Adds multiple plugins at the same time. Note: this method can only
  /// be called before Amplify has been configured. Customers are expected
  /// to check the configuration state by calling `Amplify.isConfigured`
  Future<void> addPlugins(List<AmplifyPluginInterface> plugins) {
    return instance.addPlugins(plugins);
  }

  /// Returns whether Amplify has been configured or not.
  bool get isConfigured {
    return instance.isConfigured;
  }

  /// A future when completes when Amplify has been successfully configured.
  Future<AmplifyConfig> get asyncConfig {
    return instance.asyncConfig;
  }

  /// Configures Amplify with the provided configuration string.
  /// **This method can only be called once**, after all the plugins
  /// have been added and no plugin shall be added after amplify
  /// is configured. Customers are expected to call `Amplify.isConfigured`
  /// to check if their app is configured before calling this method.
  ///
  /// Throws AmplifyAlreadyConfiguredException if
  /// this method is called again (e.g. during hot reload).
  Future<void> configure(String configuration) async {
    return instance.configure(configuration);
  }

  /// Constructs a Core platform.
  /// Internal Use Only
  @protected
  AmplifyClass.protected() : super(token: _token);

  static final Object _token = Object();

  static AmplifyClass _instance = MethodChannelAmplify();

  /// The default instance of [AmplifyClass] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static AmplifyClass get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AmplifyClass] when they register themselves.
  static set instance(AmplifyClass instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }
}

// ignore_for_file: non_constant_identifier_names
