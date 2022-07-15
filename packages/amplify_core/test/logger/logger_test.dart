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
import 'package:test/test.dart';

class CountCallsLoggerPlugin extends AmplifyLoggerPlugin {
  int _timesCalled = 0;

  CountCallsLoggerPlugin();

  int getTimesCalled() {
    return _timesCalled;
  }

  @override
  void handleLogEntry(LogEntry logEntry) {
    _timesCalled++;
  }
}

class CallbackLoggerPlugin extends AmplifyLoggerPlugin {
  Function callback;

  CallbackLoggerPlugin(this.callback);

  @override
  void handleLogEntry(LogEntry logEntry) {
    callback(logEntry);
  }
}

void callLogger(AmplifyLogger amplifyLogger) {
  amplifyLogger
    ..verbose('Verbose Message')
    ..debug('Debug Message')
    ..info('Info Message')
    ..warn('Warn Message')
    ..error('Error Message');
}

void main() {
  group('AmplifyLogger', () {
    test('LoggerPlugin called with proper LogRecord', () async {
      Completer completer = Completer();
      Map<LogLevel, LogEntry> targetLogRecords = {
        LogLevel.verbose: LogEntry(
          level: LogLevel.verbose,
          message: 'Verbose Message',
          loggerName: AmplifyLogger.rootNamespace,
        ),
        LogLevel.debug: LogEntry(
          level: LogLevel.debug,
          message: 'Debug Message',
          loggerName: AmplifyLogger.rootNamespace,
        ),
        LogLevel.info: LogEntry(
          level: LogLevel.info,
          message: 'Info Message',
          loggerName: AmplifyLogger.rootNamespace,
        ),
        LogLevel.warn: LogEntry(
          level: LogLevel.warn,
          message: 'Warn Message',
          loggerName: AmplifyLogger.rootNamespace,
        ),
        LogLevel.error: LogEntry(
          level: LogLevel.error,
          message: 'Error Message',
          loggerName: AmplifyLogger.rootNamespace,
        ),
      };

      var loggerPlugin = CallbackLoggerPlugin((LogEntry logEntry) {
        expect(targetLogRecords.containsKey(logEntry.level), true);
        expect(
            targetLogRecords[logEntry.level].toString(), logEntry.toString());

        targetLogRecords.remove(logEntry.level);
        if (targetLogRecords.isEmpty) completer.complete();
      });

      var amplifyLogger = AmplifyLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.verbose;
      callLogger(amplifyLogger);
      amplifyLogger.unregisterPlugin(loggerPlugin);

      await completer.future;
    });

    test('Unregistered plugin is not called', () async {
      var loggerPlugin = CountCallsLoggerPlugin();
      var amplifyLogger = AmplifyLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.verbose;
      callLogger(amplifyLogger);

      expect(loggerPlugin.getTimesCalled(), 5);

      amplifyLogger.unregisterPlugin(loggerPlugin);

      callLogger(amplifyLogger);

      expect(loggerPlugin.getTimesCalled(), 5);
    });

    test('Multiple LoggerPlugins register and unregister properly', () async {
      var loggerPlugin1 = CountCallsLoggerPlugin();
      var loggerPlugin2 = CountCallsLoggerPlugin();
      var amplifyLogger = AmplifyLogger()
        ..registerPlugin(loggerPlugin1)
        ..registerPlugin(loggerPlugin2)
        ..logLevel = LogLevel.verbose;
      callLogger(amplifyLogger);

      expect(loggerPlugin1.getTimesCalled(), 5);
      expect(loggerPlugin2.getTimesCalled(), 5);

      amplifyLogger.unregisterPlugin(loggerPlugin1);
      callLogger(amplifyLogger);
      expect(loggerPlugin1.getTimesCalled(), 5);
      expect(loggerPlugin2.getTimesCalled(), 10);

      amplifyLogger.unregisterPlugin(loggerPlugin2);
      callLogger(amplifyLogger);
      expect(loggerPlugin1.getTimesCalled(), 5);
      expect(loggerPlugin2.getTimesCalled(), 10);
    });

    test('Default logger respects global log level', () async {
      var loggerPlugin = CountCallsLoggerPlugin();

      var amplifyLogger = AmplifyLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.warn;
      callLogger(amplifyLogger);

      expect(loggerPlugin.getTimesCalled(), 2);

      amplifyLogger.unregisterPlugin(loggerPlugin);
    });

    test('Category logger respects global log level', () async {
      var loggerPlugin = CountCallsLoggerPlugin();

      var amplifyLogger = AmplifyLogger()..logLevel = LogLevel.warn;

      var categoryLogger = AmplifyLogger.category(Category.analytics)
        ..registerPlugin(loggerPlugin);

      callLogger(amplifyLogger);
      callLogger(categoryLogger);

      expect(loggerPlugin.getTimesCalled(), 2);

      amplifyLogger.unregisterPlugin(loggerPlugin);
    });

    test('Category logger with local logLevel overrides global log level',
        () async {
      var loggerPlugin = CountCallsLoggerPlugin();

      var amplifyLogger = AmplifyLogger()..logLevel = LogLevel.none;

      var categoryLogger = AmplifyLogger.category(Category.analytics)
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.verbose;

      callLogger(amplifyLogger);
      callLogger(categoryLogger);

      expect(loggerPlugin.getTimesCalled(), 5);

      amplifyLogger.unregisterPlugin(loggerPlugin);
    });

    test('Category logger with local logLevel does not affect other loggers',
        () async {
      var loggerPlugin = CountCallsLoggerPlugin();

      var amplifyLogger = AmplifyLogger()..logLevel = LogLevel.info;

      var categoryLogger = AmplifyLogger.category(Category.analytics)
        ..registerPlugin(loggerPlugin);

      callLogger(amplifyLogger);
      callLogger(categoryLogger);

      expect(loggerPlugin.getTimesCalled(), 5);

      amplifyLogger.unregisterPlugin(loggerPlugin);
    });

    test('Logger factory constructors return the same instance', () async {
      var loggerPlugin = CountCallsLoggerPlugin();

      var amplifyLogger = AmplifyLogger()
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.none;

      callLogger(amplifyLogger);
      expect(loggerPlugin.getTimesCalled(), 0);

      AmplifyLogger().logLevel = LogLevel.verbose;

      callLogger(amplifyLogger);
      expect(loggerPlugin.getTimesCalled(), 5);

      amplifyLogger.unregisterPlugin(loggerPlugin);
    });

    test('Logger category factory constructors return the same instance',
        () async {
      var loggerPlugin = CountCallsLoggerPlugin();

      var amplifyLogger = AmplifyLogger.category(Category.analytics)
        ..registerPlugin(loggerPlugin)
        ..logLevel = LogLevel.none;

      callLogger(amplifyLogger);
      expect(loggerPlugin.getTimesCalled(), 0);

      AmplifyLogger.category(Category.analytics).logLevel = LogLevel.verbose;

      callLogger(amplifyLogger);
      expect(loggerPlugin.getTimesCalled(), 5);

      amplifyLogger.unregisterPlugin(loggerPlugin);
    });
  });
}
