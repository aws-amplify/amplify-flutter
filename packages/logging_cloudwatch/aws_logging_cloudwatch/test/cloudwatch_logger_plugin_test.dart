// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/queued_item_store/queued_item_store.dart';
import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'cloudwatch_logger_plugin_test.mocks.dart';

@GenerateMocks(
  [
    CloudWatchLogsClient,
    QueuedItemStore,
    CloudWatchLogStreamProvider,
    RemoteLoggingConstraintProvider,
  ],
)
void main() {
  final mockCloudWatchLogsClient = MockCloudWatchLogsClient();
  final mockQueuedItemStore = MockQueuedItemStore();
  final mockCloudWatchLogStreamProvider = MockCloudWatchLogStreamProvider();
  const loggingConstraint = LoggingConstraint();
  const pluginConfig = CloudWatchLoggerPluginConfiguration(
    logGroupName: 'logGroupName',
    region: 'region',
    localLoggingConstraint: loggingConstraint,
    enable: false,
  );
  final plugin = CloudWatchLoggerPlugin.testPlugin(
    client: mockCloudWatchLogsClient,
    pluginConfig: pluginConfig,
    logStore: mockQueuedItemStore,
    logStreamProvider: mockCloudWatchLogStreamProvider,
  );
  final errorLog = LogEntry(
    level: LogLevel.error,
    message: 'error message',
    loggerName: 'loggerName',
  );

  final warnLog = LogEntry(
    level: LogLevel.warn,
    message: 'warning message',
    loggerName: 'loggerName',
  );

  group('enable/disable', () {
    test('when enabled, logs are added to the item store', () {
      when(mockQueuedItemStore.addItem(any, any)).thenAnswer((_) async => {});
      when(mockQueuedItemStore.isFull(any))
          .thenAnswer((_) async => Future<bool>.value(false));
      expect(
        () {
          plugin
            ..enable()
            ..handleLogEntry(errorLog);
        },
        returnsNormally,
      );
    });

    test('when enabled,logs are not added to the log store if not loggable',
        () {
      expect(
        () {
          plugin
            ..enable()
            ..handleLogEntry(warnLog);
        },
        returnsNormally,
      );
    });

    test(
        'when disabled, logs are cleared from item store and new logs will not'
        ' be added to the local store', () {
      when(mockQueuedItemStore.clear()).thenAnswer((_) => Future.value());
      expect(
        () {
          plugin
            ..disable()
            ..handleLogEntry(errorLog);
        },
        returnsNormally,
      );
    });
  });
}
