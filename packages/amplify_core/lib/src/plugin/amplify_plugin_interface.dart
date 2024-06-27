// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Base class for all Amplify plugins.
abstract /* base */ class AmplifyPluginInterface {
  /// Casts a plugin to a category-specific implementation.
  P cast<P extends AmplifyPluginInterface>() => this as P;

  /// The category implemented by this plugin.
  Category get category;

  /// Global dependencies scoped to this plugin.
  @protected
  @visibleForTesting
  late final DependencyManager dependencies =
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
      DependencyManager.scoped(Amplify.dependencies);

  /// Called when the plugin is added to the category.
  @mustCallSuper
  Future<void> addPlugin({
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  /// Configures the plugin using the registered [config].
  Future<void> configure({
    AmplifyOutputs? config,
    required AmplifyAuthProviderRepository authProviderRepo,
  }) async {}

  /// Resets the plugin by removing all traces of it from the device.
  @protected
  @mustCallSuper
  @visibleForTesting
  Future<void> reset() async {
    dependencies.close();
  }

  /// Reifies [pluginOptions] as an instance of [T].
  ///
  /// If [pluginOptions] is `null` returns the [defaultPluginOptions].
  /// Otherwise, throws an [ArgumentError] if [pluginOptions] does not conform
  /// to [T].
  @protected
  T reifyPluginOptions<T extends AWSDebuggable>({
    required Object? pluginOptions,
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
