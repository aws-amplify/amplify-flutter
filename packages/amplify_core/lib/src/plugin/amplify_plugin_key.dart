// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.plugin.amplify_plugin_key}
/// A plugin identifier which can be passed to a category's `getPlugin` method
/// to retrieve a plugin-specific category wrapper.
/// {@endtemplate}
abstract class AmplifyPluginKey<P extends AmplifyPluginInterface>
    with AWSDebuggable {
  /// {@macro amplify_core.plugin.amplify_plugin_key}
  const AmplifyPluginKey();
}

/// {@template amplify_core.plugin.auth_plugin_key}
/// A plugin identifier which can be passed to the Auth category's `getPlugin`
/// method to retrieve a plugin-specific Auth category wrapper.
/// {@endtemplate}
abstract class AuthPluginKey<Plugin extends AuthPluginInterface>
    extends AmplifyPluginKey<Plugin> {
  /// {@macro amplify_core.plugin.auth_plugin_key}
  const AuthPluginKey();
}

abstract class StoragePluginKey<P extends StoragePluginInterface>
    extends AmplifyPluginKey<P> {
  const StoragePluginKey();
}
