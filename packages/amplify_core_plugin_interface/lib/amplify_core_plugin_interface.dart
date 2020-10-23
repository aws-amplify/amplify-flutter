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

library amplify_core_plugin_interface;

import 'dart:async';
import 'dart:io';

import 'package:amplify_analytics_plugin_interface/analytics_plugin_interface.dart';
import 'package:amplify_auth_plugin_interface/amplify_auth_plugin_interface.dart';
import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'package:amplify_storage_plugin_interface/amplify_storage_plugin_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

/// category parts
part 'amplify_analytics_category.dart';
part 'amplify_auth_category.dart';
part 'amplify_datastore_category.dart';
part 'amplify_storage_category.dart';
part 'method_channel_amplify.dart';

abstract class Core extends PlatformInterface {
  /// Constructs a Core platform.

  Core() : super(token: _token);

  static final Object _token = Object();

  static Core _instance = MethodChannelAmplifyCore();

  /// The default instance of [AmplifyPlatform] to use.
  ///
  /// Defaults to [MethodChannelAmplify].
  static Core get instance => _instance;

  /// Platform-specific plugins should set this with their own platform-specific
  /// class that extends [AmplifyPlatform] when they register themselves.
  static set instance(Core instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  /// Categories

  final AuthCategory Auth = AuthCategory();
  final AnalyticsCategory Analytics = AnalyticsCategory();
  final StorageCategory Storage = StorageCategory();
  final DataStoreCategory DataStore = DataStoreCategory();

  /// Adds the configuration and return true if it was successful.
  Future<bool> configure(String version, String configuration) {
    throw UnimplementedError('configure() has not been implemented.');
  }
}
