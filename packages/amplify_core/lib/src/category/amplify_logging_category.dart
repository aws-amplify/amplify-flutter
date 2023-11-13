// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

part of 'amplify_categories.dart';

/// {@template amplify_core.amplify_logging_category}
/// The Amplify Logging category provides an interface for interacting with
/// a logging plugin.
///
/// It comes with default, built-in support for Amazon CloudWatch service
/// leveraging Amplify Auth Category for authorization.
/// {@endtemplate}
class LoggingCategory extends AmplifyCategory<LoggingPluginInterface> {
  @override
  @nonVirtual
  Category get category => Category.logging;

  @override
  @nonVirtual
  Set<Category> get categoryDependencies => const {Category.auth};

  P getPlugin<P extends LoggingPluginInterface>(
    LoggingPluginKey<P> pluginKey,
  ) =>
      plugins.singleWhere(
        (p) => p is P,
        orElse: () => throw PluginError(
          'No plugin registered for $pluginKey',
        ),
      ) as P;

  /// {@template amplify_core.amplify_logging_category.logger}
  /// Creates a logger for the specified namespace. If a [category] is provided,
  /// the logger namespace is prefixed with the `category.name`.
  /// {@endtemplate}
  Logger logger(String nameSpace, {Category? category}) {
    return defaultPlugin.logger(nameSpace);
  }

  /// {@template amplify_core.amplify_logging_category.enable}
  /// Starts recording logs emitted by [logger] to the local storage.
  ///
  /// Stored logs are sent to the output periodically or on-demand.
  /// To send logs to the output on-demand call `flushLogs()`.
  /// {@endtemplate}
  void enable() {
    return defaultPlugin.enable();
  }

  /// {@template amplify_core.amplify_logging_category.disable}
  /// Stops recording logs emitted by [logger] to the local storage and drop
  /// logs from the local storage without sending them to the output.
  /// If you want to send stored logs to the output call `flushLogs` before
  /// calling `disable`.
  /// {@endtemplate}
  void disable() {
    return defaultPlugin.disable();
  }

  /// {@template amplify_core.amplify_logging_category.flushLogs}
  /// Sends recorded logs to the output and remove them from the local storage.
  /// {@endtemplate}
  void flushLogs() {
    return identifyCall(LoggingCategoryMethod.flush, () => defaultPlugin.flushLogs());
  }
}
