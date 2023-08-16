// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';

/// {@template aws_logging_cloudwatch.cloudwatch_logger_plugin_configuration}
/// The configuration for `CloudWatchLoggerPlugin`.
/// {@endtemplate}
class CloudWatchLoggerPluginConfiguration with AWSDebuggable {
  /// {@macro aws_logging_cloudwatch.cloudwatch_logger_plugin_configuration}
  const CloudWatchLoggerPluginConfiguration({
    required this.logGroupName,
    required this.region,
    required this.localLoggingConstraint,
    this.enable = true,
    this.localStoreMaxSizeInMB = 5,
    this.flushIntervalInSeconds = const Duration(seconds: 60),
    this.defaultRemoteConfiguration,
  });

  /// Whether the plugin is enabled.
  final bool enable;

  /// The log group name to use for sending logs to CloudWatch.
  final String logGroupName;

  /// The region to use for sending logs to CloudWatch.
  final String region;

  /// The max size of the local store in MB to be used for storing logs locally.
  final int localStoreMaxSizeInMB;

  /// The duration in seconds for sending locally stored logs to CloudWatch.
  final Duration flushIntervalInSeconds;

  /// {@macro aws_logging_cloudwatch.logging_constraint}
  final LoggingConstraint localLoggingConstraint;

  /// {@macro aws_logging_cloudwatch.default_remote_configuration}
  final DefaultRemoteConfiguration? defaultRemoteConfiguration;

  @override
  String get runtimeTypeName => 'CloudWatchLoggerPluginConfiguration';
}

/// {@template aws_logging_cloudwatch.logging_constraint}
/// The logging constraint for sending logs to CloudWatch.
/// {@endtemplate}
class LoggingConstraint with AWSDebuggable {
  /// {@macro aws_logging_cloudwatch.logging_constraint}
  const LoggingConstraint({this.defaultLogLevel = LogLevel.error});

  /// The default [LogLevel] for sending logs to CloudWatch.
  final LogLevel defaultLogLevel;

  @override
  String get runtimeTypeName => 'LoggingConstraint';
}
