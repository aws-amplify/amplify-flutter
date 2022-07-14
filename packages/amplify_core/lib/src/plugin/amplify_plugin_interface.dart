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
  Future<void> addPlugin() async {}

  /// Configures the plugin using the registered [config].
  Future<void> configure({AmplifyConfig? config}) async {}

  /// Resets the plugin by removing all traces of it from the device.
  @visibleForTesting
  Future<void> reset() async {
    throw UnimplementedError('reset() has not been implemented');
  }
}
