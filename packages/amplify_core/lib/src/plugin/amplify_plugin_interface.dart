// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Interface for all amplify plugins
abstract class AmplifyPluginInterface {
  const AmplifyPluginInterface();

  /// Casts a plugin to a category-specific implementation.
  P cast<P extends AmplifyPluginInterface>() => this as P;

  /// The category implemented by this plugin.
  Category get category;

  /// Called when the plugin is added to the category.
  @mustCallSuper
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  /// Configures the plugin using the registered [config].
  Future<void> configure({
    AmplifyConfig? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  /// Resets the plugin by removing all traces of it from the device.
  @visibleForTesting
  Future<void> reset() async {}

  /// Reifies [pluginOptions] as an instance of [T].
  ///
  /// If [pluginOptions] is `null` returns the [defaultPluginOptions].
  /// Otherwise, throws an [ArgumentError] if [pluginOptions] does not conform
  /// to [T].
  @protected
  T reifyPluginOptions<T extends AWSDebuggable>({
    Object? pluginOptions,
    required T defaultPluginOptions,
  }) {
    if (pluginOptions == null) {
      return defaultPluginOptions;
    }
    if (pluginOptions is! T) {
      throw ArgumentError(
        'Expected pluginOptions with type "${defaultPluginOptions.runtimeTypeName}" '
        'but got: $pluginOptions',
      );
    }
    return pluginOptions;
  }
}
