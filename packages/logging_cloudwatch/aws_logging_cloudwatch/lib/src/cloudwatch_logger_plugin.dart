// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:math';

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/sdk/cloud_watch_logs.dart';
import 'package:aws_logging_cloudwatch/src/stoppable_timer.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

// https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html

// The batch of events must satisfy the following constraints:

// The maximum batch size is 1,048,576 bytes. This size is calculated as the sum of all event messages in UTF-8, plus 26 bytes for each log event.

// None of the log events in the batch can be more than 2 hours in the future.

// None of the log events in the batch can be more than 14 days in the past. Also, none of the log events can be from earlier than the retention period of the log group.

// The log events in the batch must be in chronological order by their timestamp. The timestamp is the time that the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. (In AWS Tools for PowerShell and the AWS SDK for .NET, the timestamp is specified in .NET format: yyyy-mm-ddThh:mm:ss. For example, 2017-09-15T13:45:30.)

// A batch of log events in a single request cannot span more than 24 hours. Otherwise, the operation fails.

// Each log event can be no larger than 256 KB.

// The maximum number of log events in a batch is 10,000.

const int _maxNumberOfLogEventsInBatch = 10000;
const int _maxLogEventsBatchSize = 1048576;
const int _baseBufferSize = 26;
const int _maxLogEventSize = 256000;
final int _maxLogEventsTimeSpanInBatch =
    const Duration(hours: 24).inMilliseconds;

typedef _LogBatch = (List<QueuedItem> logQueues, List<InputLogEvent> logEvents);

/// {@template aws_logging_cloudwatch.cloudwatch_logger_plugin}
/// An [AWSLoggerPlugin] for sending logs to AWS CloudWatch Logs.
/// {@endtemplate}
class CloudWatchLoggerPlugin extends AWSLoggerPlugin
    with AWSDebuggable, AWSLoggerMixin {
  /// {@macro aws_logging_cloudwatch.cloudwatch_logger_plugin}
  CloudWatchLoggerPlugin({
    required AWSCredentialsProvider credentialsProvider,
    required CloudWatchLoggerPluginConfiguration pluginConfig,
    RemoteLoggingConstraintProvider? remoteLoggingConstraintProvider,
    CloudWatchLogStreamProvider? logStreamProvider,
    // TODO(nikahsn): remove after moving queued item store implementation from
    // amplify_logging_cloudwath to aws_logging_cloudwatch
    @protected QueuedItemStore? logStore,
  })  : _enabled = pluginConfig.enable,
        _pluginConfig = pluginConfig,
        _remoteLoggingConstraintProvider = remoteLoggingConstraintProvider ??
            (pluginConfig.defaultRemoteConfiguration != null
                ? DefaultRemoteLoggingConstraintProvider(
                    config: pluginConfig.defaultRemoteConfiguration!,
                    credentialsProvider: credentialsProvider,
                  )
                : null),
        _client = CloudWatchLogsClient(
          region: pluginConfig.region,
          credentialsProvider: credentialsProvider,
        ),
        // TODO(nikahsn): move queued item store implementation from
        // amplify_logging_cloudwath to aws_logging_cloudwatch and use
        // DartQueueItemStore instead of InMemoryQueuedItemStore
        _logStore = logStore ?? InMemoryQueuedItemStore(),
        _logStreamProvider = logStreamProvider ??
            DefaultCloudWatchLogStreamProvider(
              logGroupName: pluginConfig.logGroupName,
              region: pluginConfig.region,
              credentialsProvider: credentialsProvider,
            ) {
    _timer = pluginConfig.flushIntervalInSeconds > Duration.zero
        ? StoppableTimer(
            duration: pluginConfig.flushIntervalInSeconds,
            callback: _startSyncingIfNotInProgress,
            onError: _onTimerError,
          )
        : null;
    if (!pluginConfig.enable) {
      _timer?.stop();
    }
  }

  /// An [AWSLoggerPlugin] to use only for testing.
  @protected
  @visibleForTesting
  CloudWatchLoggerPlugin.testPlugin({
    required CloudWatchLogsClient client,
    required CloudWatchLoggerPluginConfiguration pluginConfig,
    required CloudWatchLogStreamProvider logStreamProvider,
    required QueuedItemStore logStore,
    RemoteLoggingConstraintProvider? remoteLoggingConstraintProvider,
  })  : _enabled = pluginConfig.enable,
        _pluginConfig = pluginConfig,
        _logStore = logStore,
        _remoteLoggingConstraintProvider = remoteLoggingConstraintProvider,
        _logStreamProvider = logStreamProvider,
        _client = client;

  final CloudWatchLoggerPluginConfiguration _pluginConfig;
  final CloudWatchLogsClient _client;
  final CloudWatchLogStreamProvider _logStreamProvider;
  final QueuedItemStore _logStore;
  bool _syncing = false;
  bool _enabled;
  StoppableTimer? _timer;
  RemoteLoggingConstraintProvider? _remoteLoggingConstraintProvider;

  set remoteLoggingConstraintProvider(
    RemoteLoggingConstraintProvider remoteProvider,
  ) {
    if (_remoteLoggingConstraintProvider != null) {
      throw StateError(
        'remoteLoggingConstraintProvider is already configured.',
      );
    }
    _remoteLoggingConstraintProvider = remoteProvider;
  }

  Future<void> _startSyncingIfNotInProgress() async {
    Future<void> startSyncing() async {
      final batchStream = _getLogBatchesToSync();
      await for (final (logs, events) in batchStream) {
        final response = await _sendToCloudWatch(events);
        // TODO(nikahsn): handle tooOldLogEventEndIndex
        // and expiredLogEventEndIndex.
        if (response.rejectedLogEventsInfo?.tooNewLogEventStartIndex != null) {
          // TODO(nikahsn): throw and exception to enable log rotation if the
          // log store is full.
          break;
        }
        await _logStore.deleteItems(logs);
      }
    }

    if (!_syncing) {
      // TODO(nikahsn): disable log rotation.
      _syncing = true;
      try {
        await startSyncing();
      } on Exception catch (e) {
        logger.error('Failed to sync logs to CloudWatch.', e);
        // TODO(nikahsn): enable log rotation if the log store is full
      } finally {
        _syncing = false;
      }
    }
  }

  void _onTimerError(Object e) {
    logger.error('Failed to sync logs to CloudWatch.', e);
  }

  LoggingConstraint _getLoggingConstraint() {
    final result = _remoteLoggingConstraintProvider?.loggingConstraint;
    return result ?? _pluginConfig.localLoggingConstraint;
  }

  Future<PutLogEventsResponse> _sendToCloudWatch(
    List<InputLogEvent> logEvents,
  ) async {
    final logStreamName = await _logStreamProvider.defaultLogStream;
    final request = PutLogEventsRequest(
      logGroupName: _pluginConfig.logGroupName,
      logStreamName: logStreamName,
      logEvents: logEvents,
    );
    try {
      return await _client.putLogEvents(request).result;
    } on ResourceNotFoundException {
      await _logStreamProvider.createLogStream(logStreamName);
      return _client.putLogEvents(request).result;
    }
  }

  Stream<_LogBatch> _getLogBatchesToSync() async* {
    final queuedLogs = (await _logStore.getAll()).toList();
    if (queuedLogs.isEmpty) {
      return;
    }
    final logEvents = <InputLogEvent>[];
    final logQueues = <QueuedItem>[];
    var totalByteSize = 0;

    for (final currentLog in queuedLogs) {
      final currentLogEvent = currentLog.toInputLogEvent();
      final size = currentLogEvent.message.length + _baseBufferSize;
      if (totalByteSize + size >= _maxLogEventsBatchSize ||
          logEvents.length >= _maxNumberOfLogEventsInBatch ||
          (logEvents.length > 1 &&
              currentLogEvent.timestamp - logEvents.first.timestamp >=
                  _maxLogEventsTimeSpanInBatch)) {
        yield (logQueues, logEvents);
        totalByteSize = 0;
        logEvents.clear();
        logQueues.clear();
      }
      totalByteSize += size;
      logEvents.add(currentLogEvent);
      logQueues.add(currentLog);
    }
    yield (logQueues, logEvents);
  }

  /// Whether a [logEntry] should be logged by this plugin.
  bool _isLoggable(LogEntry logEntry) {
    if (!_enabled) {
      return false;
    }
    final loggingConstraint = _getLoggingConstraint();
    return logEntry.level >= loggingConstraint.defaultLogLevel;
  }

  @override
  Future<void> handleLogEntry(LogEntry logEntry) async {
    if (!(_isLoggable(logEntry))) {
      return;
    }
    final item = logEntry.toQueuedItem();
    await _logStore.addItem(
      item.value,
      item.timestamp,
    );
    if (await _logStore.isFull(_pluginConfig.localStoreMaxSizeInMB)) {
      await _startSyncingIfNotInProgress();
    }
  }

  /// Enables the plugin.
  void enable() {
    if (!_enabled) {
      _enabled = true;
      _timer?.start();
    }
  }

  /// Disables the plugin.
  ///
  /// It deletes cached logs from local store and stops sending logs to
  /// CloudWatch.
  ///
  /// To send cached logs to CloudWatch call `flushLogs()` before calling
  /// `disable()`.
  Future<void> disable() async {
    _enabled = false;
    _timer?.stop();
    await _logStore.clear();
  }

  /// Sends logs on-demand to CloudWatch.
  Future<void> flushLogs() async {
    await _startSyncingIfNotInProgress();
  }

  @override
  String get runtimeTypeName => 'CloudWatchLoggerPlugin';
}

extension on QueuedItem {
  InputLogEvent toInputLogEvent() {
    // message is truncated to satisfy the max size of `_maxLogEventSize` with
    // 8 byte reserved for the `timestamp`.

    final end = min(value.length, _maxLogEventSize - 8);
    return InputLogEvent(
      message: value.substring(0, end),
      timestamp: Int64(DateTime.parse(timestamp).millisecondsSinceEpoch),
    );
  }
}

extension on LogEntry {
  ({String value, String timestamp}) toQueuedItem() {
    return (
      value: '${level.name.toUpperCase()}/$loggerName: $message',
      timestamp: time.toUtc().toIso8601String()
    );
  }
}
