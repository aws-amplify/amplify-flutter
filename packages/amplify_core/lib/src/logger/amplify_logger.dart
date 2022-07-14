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
import 'package:amplify_core/src/logger/level_extension.dart';
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';

class AmplifyLogger {
  static const loggerNamespace = 'AWS.Amplify';

  static final Map<AmplifyLoggerPlugin, StreamSubscription<LogRecord>>
      _subscriptions = {};
  final Logger _logger;

  /// Creates a top-level [AmplifyLogger].
  factory AmplifyLogger([String namespace = loggerNamespace]) =>
      AmplifyLogger._(Logger(namespace));

  /// Creates a [AmplifyLogger] for the Amplify [Category].
  factory AmplifyLogger.category(Category category) =>
      AmplifyLogger._(Logger('$loggerNamespace.${category.name}'));

  AmplifyLogger._(this._logger) {
    hierarchicalLoggingEnabled = true;
  }

  /// Creates an [AmplifyLogger] with `this` as the parent.
  AmplifyLogger createChild(String name) =>
      AmplifyLogger('${_logger.fullName}.$name');

  /// Register a [AmplifyLoggerPlugin] that will handle the logs emitted by this
  /// [AmplifyLogger] instance.
  void registerPlugin(AmplifyLoggerPlugin plugin) {
    unregisterPlugin(plugin);
    _subscriptions[plugin] = _logger.onRecord.listen(plugin._handleLogRecord);
  }

  /// Unregister the [AmplifyLoggerPlugin] that will handle the logs emitted by
  /// this [AmplifyLogger] instance.
  void unregisterPlugin(AmplifyLoggerPlugin plugin) {
    final currentSubscription = _subscriptions.remove(plugin);
    if (currentSubscription != null) {
      unawaited(currentSubscription.cancel());
    }
  }

  /// Unregister all [AmplifyLoggerPlugin]s that were handling logs emitted by
  /// this [AmplifyLogger] instance.
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

  /// Log a message with level [LogLevel.verbose].
  void verbose(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.finer(message, error, stackTrace);
  }

  /// Log a message with level [LogLevel.debug].
  void debug(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.fine(message, error, stackTrace);
  }

  /// Log a message with level [LogLevel.info].
  void info(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.info(message, error, stackTrace);
  }

  /// Log a message with level [LogLevel.warn].
  void warn(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.warning(message, error, stackTrace);
  }

  /// Log a message with level [LogLevel.error].
  void error(String message, [Object? error, StackTrace? stackTrace]) {
    _logger.severe(message, error, stackTrace);
  }
}

abstract class AmplifyLoggerPlugin {
  void _handleLogRecord(LogRecord record) =>
      handleLogEntry(LogEntry.fromLogRecord(record));

  /// Handle a LogEntry emitted by the [AmplifyLogger]
  void handleLogEntry(LogEntry logEntry);
}

/// Mixin providing an [AmplifyLogger] to Amplify classes.
mixin AmplifyLoggerMixin on AWSDebuggable {
  /// Logger for this class.
  @protected
  AmplifyLogger get logger => AmplifyLogger().createChild(runtimeTypeName);
}
