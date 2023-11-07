// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

library amplify_logging_plugin_interface;

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// Defines Amplify Logging plugin interface.
///
/// {@macro amplify_core.amplify_logging_category}
abstract class LoggingPluginInterface extends AmplifyPluginInterface {
  @override
  @nonVirtual
  Category get category => Category.logging;

  /// {@macro amplify_core.amplify_logging_category.logger}
  Logger logger(String namespace, {Category? category}) {
    throw UnimplementedError('logger has not been implemented');
  }

  /// {@macro amplify_core.amplify_logging_category.enable}
  void enable() {
    throw UnimplementedError('enable has not been implemented');
  }

  /// {@macro amplify_core.amplify_logging_category.disable}
  void disable() {
    throw UnimplementedError('disable has not been implemented');
  }

  /// {@macro amplify_core.amplify_logging_category.flushLogs}
  void flushLogs() {
    throw UnimplementedError('flushLogs has not been implemented');
  }
}
