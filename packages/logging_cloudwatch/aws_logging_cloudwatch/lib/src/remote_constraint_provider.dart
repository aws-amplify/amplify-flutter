// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// TODO(nikahsn): remove after implementing the get loggingConstraint.
// ignore_for_file: unused_field

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';

/// {@template aws_logging_cloudwatch.remote_logging_constraint_provider}
/// An Interface to provide custom implementation for
/// [RemoteLoggingConstraintProvider]
/// It gets the [LoggingConstraint] from a remote location and cache it.
/// {@endtemplate}
abstract class RemoteLoggingConstraintProvider {
  /// Returns logging constraint from cache or `null` if cache is missing.
  LoggingConstraint? get loggingConstraint;
}

/// {@template aws_logging_cloudwatch.default_remote_logging_constraint_provider}
/// Default implementation of [RemoteLoggingConstraintProvider] to fetch
/// [LoggingConstraint] from an http endpoint periodically.
/// {@endtemplate}
class DefaultRemoteLoggingConstraintProvider
    implements RemoteLoggingConstraintProvider {
  /// {@macro aws_logging_cloudwatch.default_remote_logging_constraint_provider}
  DefaultRemoteLoggingConstraintProvider({
    required DefaultRemoteConfiguration config,
    required AWSCredentialsProvider credentialsProvider,
  })  : _config = config,
        _credentialsProvider = credentialsProvider;

  final DefaultRemoteConfiguration _config;
  final AWSCredentialsProvider _credentialsProvider;

  @override
  // TODO(nikahsn): add implementation.
  LoggingConstraint get loggingConstraint => throw UnimplementedError();
}

/// {@template aws_logging_cloudwatch.default_remote_configuration}
/// The configuration for [DefaultRemoteLoggingConstraintProvider]
/// {@endtemplate}
class DefaultRemoteConfiguration {
  /// {@macro aws_logging_cloudwatch.default_remote_configuration}
  const DefaultRemoteConfiguration({
    required this.endpoint,
    this.refreshIntervalInSeconds = const Duration(seconds: 1200),
  });

  /// The endpoint to fetch the `loggingConstraint`.
  final String endpoint;

  /// The referesh interval in seconds to fetch the `loggingConstraint`.
  final Duration refreshIntervalInSeconds;
}
