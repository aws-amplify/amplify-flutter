// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  late MockCloudWatchLogsClient mockCloudWatchLogsClient;
  late MockQueuedItemStore mockQueuedItemStore;
  late MockCloudWatchLogStreamProvider mockCloudWatchLogStreamProvider;
  late CloudWatchLoggerPlugin plugin;
  late MockSmithyOperation<PutLogEventsResponse> mockPutLogEventsOperation;

  const loggingConstraint = LoggingConstraint();
  const pluginConfig = CloudWatchLoggerPluginConfiguration(
    logGroupName: 'logGroupName',
    region: 'region',
    localLoggingConstraint: loggingConstraint,
    enable: false,
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

  final queuedItems = <QueuedItem>[
    QueuedItem(
      id: 1,
      value: 'first log message',
      timestamp: DateTime.timestamp().toIso8601String(),
    ),
    QueuedItem(
      id: 2,
      value: 'second og message',
      timestamp: DateTime.timestamp().toIso8601String(),
    ),
  ];

  group('enable/disable: ', () {
    setUp(() {
      mockCloudWatchLogsClient = MockCloudWatchLogsClient();
      mockQueuedItemStore = MockQueuedItemStore();
      mockCloudWatchLogStreamProvider = MockCloudWatchLogStreamProvider();
      plugin = CloudWatchLoggerPlugin.testPlugin(
        client: mockCloudWatchLogsClient,
        pluginConfig: pluginConfig,
        logStore: mockQueuedItemStore,
        logStreamProvider: mockCloudWatchLogStreamProvider,
      );
    });
    test('when enabled, logs are added to the item store', () async {
      when(() => mockQueuedItemStore.addItem(any(), any()))
          .thenAnswer((_) async => {});
      when(() => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB))
          .thenAnswer((_) async => Future<bool>.value(false));
      plugin.enable();
      await expectLater(
        plugin.handleLogEntry(errorLog),
        completes,
      );
      verify(() => mockQueuedItemStore.addItem(any(), any())).called(1);
      verify(
        () => mockQueuedItemStore.isFull(pluginConfig.localStoreMaxSizeInMB),
      ).called(1);
    });

    test('when enabled,logs are not added to the log store if not loggable',
        () async {
      plugin.enable();
      await expectLater(
        plugin.handleLogEntry(warnLog),
        completes,
      );
      verifyZeroInteractions(mockQueuedItemStore);
    });

    test(
        'when disabled, logs are cleared from item store and new logs will not'
        ' be added to the local store', () async {
      when(() => mockQueuedItemStore.clear()).thenAnswer((_) => Future.value());
      await plugin.disable();
      await expectLater(
        plugin.handleLogEntry(warnLog),
        completes,
      );
      verifyNever(() => mockQueuedItemStore.addItem(any(), any()));
      verify(() => mockQueuedItemStore.clear()).called(1);
    });
  });

  group('flush logs: ', () {
    setUp(() {
      registerFallbackValue(
        PutLogEventsRequest(
          logGroupName: 'logGroupName',
          logStreamName: 'logStreamName',
          logEvents: <InputLogEvent>[],
        ),
      );
      mockCloudWatchLogsClient = MockCloudWatchLogsClient();
      mockQueuedItemStore = MockQueuedItemStore();
      mockCloudWatchLogStreamProvider = MockCloudWatchLogStreamProvider();
      mockPutLogEventsOperation = MockSmithyOperation<PutLogEventsResponse>();

      plugin = CloudWatchLoggerPlugin.testPlugin(
        client: mockCloudWatchLogsClient,
        pluginConfig: pluginConfig,
        logStore: mockQueuedItemStore,
        logStreamProvider: mockCloudWatchLogStreamProvider,
      );
    });

    test('it starts a sync when it is not in progress', () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(PutLogEventsResponse()),
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.addItem(any(), any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.deleteItems(any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verifyNever(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verify(() => mockQueuedItemStore.deleteItems(queuedItems)).called(1);
    });

    test('does not start a sync if a sync is in progress', () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(
          PutLogEventsResponse(),
        ),
      );

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.addItem(any(), any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      final flushLogs = plugin.flushLogs();
      await expectLater(
        plugin.flushLogs(),
        completes,
      );
      await flushLogs;

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verifyNever(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verify(() => mockQueuedItemStore.deleteItems(queuedItems)).called(1);
    });

    test('does not delete logs if they are too new', () async {
      when(
        () => mockPutLogEventsOperation.result,
      ).thenAnswer(
        (_) async => Future<PutLogEventsResponse>.value(
          PutLogEventsResponse(
            rejectedLogEventsInfo:
                RejectedLogEventsInfo(tooNewLogEventStartIndex: 0),
          ),
        ),
      );

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockCloudWatchLogsClient.putLogEvents(any())).thenAnswer(
        (_) => mockPutLogEventsOperation,
      );

      when(() => mockQueuedItemStore.addItem(any(), any()))
          .thenAnswer((_) async => {});

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verifyNever(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      );

      verify(
        () => mockCloudWatchLogsClient.putLogEvents(any()),
      ).called(1);

      verifyNever(
        () => mockQueuedItemStore.deleteItems(any()),
      );
    });

    test('it calls create log stream on resource not found exception',
        () async {
      when(() => mockCloudWatchLogsClient.putLogEvents(any()))
          .thenThrow(ResourceNotFoundException());

      when(() => mockCloudWatchLogStreamProvider.defaultLogStream)
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockCloudWatchLogStreamProvider.createLogStream(any()))
          .thenAnswer((_) async => Future<String>.value('log stream name'));

      when(() => mockQueuedItemStore.getAll()).thenAnswer(
        (_) async => Future<Iterable<QueuedItem>>.value(queuedItems),
      );

      await expectLater(
        plugin.flushLogs(),
        completes,
      );

      verify(
        () => mockCloudWatchLogStreamProvider.defaultLogStream,
      ).called(1);

      verify(
        () => mockCloudWatchLogStreamProvider.createLogStream(any()),
      ).called(1);
    });
  });
}
