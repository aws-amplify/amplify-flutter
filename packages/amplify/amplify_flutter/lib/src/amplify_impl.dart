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

import 'package:amplify_core/amplify_core.dart';
import 'package:aws_common/aws_common.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'amplify_hub.dart';

part 'method_channel_amplify.dart';

/// Amplify singleton class.
///
/// This class can be extended to create a custom Amplify implementation.
/// The default Amplify implementation will use method channels, and will
/// only support iOS and Android platforms.
class AmplifyClass {
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
  AmplifyClass.protected();

  /// The instance of [AmplifyClass] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static AmplifyClass instance = MethodChannelAmplify();
}

// ignore_for_file: non_constant_identifier_names
