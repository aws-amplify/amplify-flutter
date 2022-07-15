// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/logger/logging_ext.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.logger.amplify_logger}
/// A logging utility providing the ability to emit log entries, configure the
/// level at which entries are emitted, and register plugins which can handle
/// log entries as they're emitted.
/// {@endtemplate}
///
/// Plugins are created by implementing [AmplifyLoggerPlugin] and calling
/// [AmplifyLogger.registerPlugin] on an [AmplifyLogger] instance.
///
/// By default, a [SimplePrinter] is registered on the root [AmplifyLogger]
/// which impacts all category and child loggers.
class AmplifyLogger {
  /// The root namespace for all [AmplifyLogger] instances.
  static const rootNamespace = 'AWS.Amplify';

  static final Map<AmplifyLoggerPlugin, StreamSubscription<LogRecord>>
      _subscriptions = {};
  final Logger _logger;

  /// Creates a top-level [AmplifyLogger].
  ///
  /// {@macro amplify_core.logger.amplify_logger}
  factory AmplifyLogger([String namespace = rootNamespace]) =>
      AmplifyLogger._(Logger(namespace));

  /// Creates a [AmplifyLogger] for the Amplify [category].
  ///
  /// {@macro amplify_core.logger.amplify_logger}
  factory AmplifyLogger.category(Category category) =>
      AmplifyLogger._(Logger('$rootNamespace.${category.name}'));

  AmplifyLogger._(this._logger) {
    hierarchicalLoggingEnabled = true;
  }

  /// Creates an [AmplifyLogger] with `this` as the parent.
  AmplifyLogger createChild(String name) =>
      AmplifyLogger('${_logger.fullName}.$name');

  /// Registers an [AmplifyLoggerPlugin] to handle logs emitted by this logger
  /// instance.
  void registerPlugin(AmplifyLoggerPlugin plugin) {
    unregisterPlugin(plugin);
    _subscriptions[plugin] = _logger.onRecord.listen(
      (record) => plugin.handleLogEntry(record.toLogEntry()),
    );
  }

  /// Unregisters [plugin] from this logger instance.
  void unregisterPlugin(AmplifyLoggerPlugin plugin) {
    final currentSubscription = _subscriptions.remove(plugin);
    if (currentSubscription != null) {
      unawaited(currentSubscription.cancel());
    }
  }

  /// Unregisters all [AmplifyLoggerPlugin]s on this logger instance.
  void unregisterAllPlugins() {
    for (final plugin in List.of(_subscriptions.keys)) {
      unregisterPlugin(plugin);
    }
  }

  /// The minimum [LogLevel] that will be emitted by the logger.
  LogLevel get logLevel => _logger.level.logLevel;

  set logLevel(LogLevel logLevel) {
    _logger.level = logLevel.level;
  }

  /// Logs a message with level [LogLevel.verbose].
  void verbose(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.finer(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.debug].
  void debug(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.fine(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.info].
  void info(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.info(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.warn].
  void warn(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.warning(message, error, stackTrace);
  }

  /// Logs a message with level [LogLevel.error].
  void error(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.severe(message, error, stackTrace);
  }
}

/// A plugin to an [AmplifyLogger] which handles log entries emitted at the
/// [LogLevel] of the logger instance.
abstract class AmplifyLoggerPlugin {
  /// Handles a log entry emitted by the [AmplifyLogger].
  void handleLogEntry(LogEntry logEntry);
}

/// Mixin providing an [AmplifyLogger] to Amplify classes.
mixin AmplifyLoggerMixin on AWSDebuggable {
  /// The logger for this class.
  @protected
  AmplifyLogger get logger => AmplifyLogger().createChild(runtimeTypeName);
}
