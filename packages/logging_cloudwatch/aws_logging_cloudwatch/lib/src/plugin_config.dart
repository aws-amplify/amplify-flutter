// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plugin_config.g.dart';

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
    this.flushInterval = const Duration(seconds: 60),
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

  /// The duration for sending locally stored logs to CloudWatch.
  final Duration flushInterval;

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
@zAmplifySerializable
class LoggingConstraint with AWSDebuggable {
  /// {@macro aws_logging_cloudwatch.logging_constraint}
  const LoggingConstraint({
    this.defaultLogLevel = LogLevel.error,
    this.categoryLogLevel,
    this.userLogLevel,
  });

  /// Converts a [Map] to an [LoggingConstraint] instance.
  factory LoggingConstraint.fromJson(Map<String, dynamic> json) =>
      _$LoggingConstraintFromJson(json);

  // /// Converts an [LoggingConstraint] instance to a [Map].
  // Map<String, dynamic> toJson() => _$LoggingConstraintToJson(this);

  /// Converts an [LoggingConstraint] instance to a [Map].
  Map<String, dynamic> toJson() {
    final jsonMap = <String, dynamic>{
      'defaultLogLevel':
          defaultLogLevel.toString().split('.').last, // Convert enum to string
      'categoryLogLevel': categoryLogLevel?.map(
        (key, value) => MapEntry(key, value.toString().split('.').last),
      ),
    };

    if (userLogLevel != null) {
      jsonMap['userLogLevel'] = userLogLevel!.map(
        (key, value) => MapEntry(key, value.toJson()),
      );
    }

    return jsonMap;
  }

  /// The default [LogLevel] for sending logs to CloudWatch.
  final LogLevel defaultLogLevel;

  /// The [LogLevel] for different categories.
  final Map<String, LogLevel>? categoryLogLevel;

  /// The [LogLevel] for different users.
  final Map<String, UserLogLevel>? userLogLevel;

  @override
  String get runtimeTypeName => 'LoggingConstraint';
}

/// The logging constraint for user specific log level.
@zAmplifySerializable
class UserLogLevel {
  /// The logging constraint for user specific log level.
  const UserLogLevel({
    this.defaultLogLevel,
    this.categoryLogLevel,
  });

  ///Converts a [Map] to a [UserLogLevel] instance.
  factory UserLogLevel.fromJson(Map<String, dynamic> json) =>
      _$UserLogLevelFromJson(json);

  /// Converts a [UserLogLevel] instance to a [Map].
  Map<String, dynamic> toJson() => {
        'defaultLogLevel': defaultLogLevel
            ?.toString()
            .split('.')
            .last, // Convert enum to string
        'categoryLogLevel': categoryLogLevel?.map(
          (key, value) => MapEntry(
            key,
            value.toString().split('.').last,
          ), // Convert enum to string
        ),
      };

  /// The default [LogLevel] for sending logs to CloudWatch.
  final LogLevel? defaultLogLevel;

  /// The [LogLevel] for different categories.
  final Map<String, LogLevel>? categoryLogLevel;
}
