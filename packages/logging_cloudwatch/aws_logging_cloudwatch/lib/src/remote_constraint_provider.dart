// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
// TODO(nikahsn): remove after implementing the get loggingConstraint.
// ignore_for_file: unused_field

import 'package:aws_common/aws_common.dart';
import 'package:aws_logging_cloudwatch/aws_logging_cloudwatch.dart';
import 'package:aws_logging_cloudwatch/src/file_storage/file_storage_stub.dart'
    if (dart.library.io) 'package:aws_logging_cloudwatch/src/file_storage/file_storage_vm.dart'
    if (dart.library.html) 'package:aws_logging_cloudwatch/src/file_storage/file_storage_web.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// {@template aws_logging_cloudwatch.remote_logging_constraint_provider}
/// An Interface to provide custom implementation for
/// [RemoteLoggingConstraintProvider]
/// It gets the [LoggingConstraint] from a remote location and cache it.
/// {@endtemplate}
abstract class RemoteLoggingConstraintProvider {
  /// Returns logging constraint from cache or `null` if cache is missing.
  LoggingConstraint? get loggingConstraint;
}

/// {@template aws_logging_cloudwatch.base_remote_constraints_provider}
/// Base class for [RemoteLoggingConstraintProvider] to provide
/// [LoggingConstraint] from a remote location and cache it.
/// {@endtemplate}
base class BaseRemoteLoggingConstraintProvider
    with AWSDebuggable, AWSLoggerMixin
    implements RemoteLoggingConstraintProvider {
  /// {@macro aws_logging_cloudwatch.base_remote_constraints_provider}
  BaseRemoteLoggingConstraintProvider({
    required DefaultRemoteConfiguration config,
    required AWSCredentialsProvider credentialsProvider,
    FileStorageImpl? fileStorage,
  })  : _fileStorage = fileStorage,
        _config = config,
        _credentialsProvider = credentialsProvider,
        _awsHttpClient = AWSHttpClient() {
    _init();
  }

  /// A [BaseRemoteLoggingConstraintProvider] to use only for testing.
  @protected
  @visibleForTesting
  BaseRemoteLoggingConstraintProvider.forTesting({
    required DefaultRemoteConfiguration config,
    required AWSCredentialsProvider credentialsProvider,
    required AWSHttpClient awsHttpClient,
    FileStorageImpl? fileStorage,
  })  : _fileStorage = fileStorage,
        _config = config,
        _credentialsProvider = credentialsProvider,
        _awsHttpClient = awsHttpClient {
    _init();
  }

  final FileStorageImpl? _fileStorage;

  final DefaultRemoteConfiguration _config;
  final AWSCredentialsProvider _credentialsProvider;

  LoggingConstraint? _loggingConstraint;

  final AWSHttpClient _awsHttpClient;

  // The timer to refresh the constraint periodically.
  Timer? _timer;

  /// Whether the periodic fetch is running.
  bool _isRunning = false;

  /// Retrives the runtime type name used for logging.
  @override
  String get runtimeTypeName => 'BaseRemoteConstraintsProvider';

  /// Initializes the [BaseRemoteLoggingConstraintProvider] by fetching
  /// the constraint from the endpoint initially and then
  /// starting the refresh timer afterwards.
  void _init() {
    _refreshConstraintPeriodically();
  }

  /// Creates a request to fetch the constraint from the endpoint.
  @protected
  Future<AWSHttpRequest> createRequest() async {
    final uri = Uri.parse(_config.endpoint);
    return AWSHttpRequest(
      method: AWSHttpMethod.get,
      uri: uri,
      headers: const {
        AWSHeaders.accept: 'application/json; charset=utf-8',
      },
    );
  }

  /// Fetches the constraint from the endpoint and caches it.
  Future<void> _fetchAndCacheConstraintFromEndpoint() async {
    try {
      final request = await createRequest();
      final operation = _awsHttpClient.send(request);
      final response = await operation.response;
      final body = await response.decodeBody();
      if (response.statusCode == 200) {
        final fetchedConstraint = LoggingConstraint.fromJson(
          jsonDecode(body) as Map<String, dynamic>,
        );
        _loggingConstraint = fetchedConstraint;

        if (_fileStorage != null) {
          await _fileStorage!.saveConstraintLocally(
            'remoteloggingconstraints.json',
            jsonEncode(fetchedConstraint.toJson()),
          );
        }
      } else {
        await _loadConstraintFromLocalCache();
      }
    } on Exception catch (exception) {
      logger.debug(
        'Failed to fetch logging constraint from ${_config.endpoint}: $exception',
      );
      await _loadConstraintFromLocalCache();
    } on Error catch (error, stackTrace) {
      logger.error(
        'Error while fetching logging constraint from ${_config.endpoint}: $error',
        stackTrace,
      );
    }
  }

  /// Returns [LoggingConstraint] from cache or `null` if cache is missing.
  @override
  LoggingConstraint? get loggingConstraint => _loggingConstraint;

  Future<void> _loadConstraintFromLocalCache() async {
    final localConstraint =
        await _fileStorage!.loadConstraint('remoteloggingconstraints.json');
    if (localConstraint != null) {
      _loggingConstraint = LoggingConstraint.fromJson(
        jsonDecode(localConstraint) as Map<String, dynamic>,
      );
    }
  }

  /// Refreshes the constraint from the endpoint periodically.
  void _refreshConstraintPeriodically() {
    if (_isRunning) {
      return;
    }

    _isRunning = true;
    _timer?.cancel();

    _timer = Timer.periodic(
      _config.refreshInterval,
      (_) => _fetchAndCacheConstraintFromEndpoint(),
    );
    Timer.run(_fetchAndCacheConstraintFromEndpoint);
  }
}

/// {@template aws_logging_cloudwatch.default_remote_logging_constraint_provider}
/// Default implementation of [RemoteLoggingConstraintProvider] to fetch
/// [LoggingConstraint] from an http endpoint periodically.
/// {@endtemplate}
final class DefaultRemoteLoggingConstraintProvider
    extends BaseRemoteLoggingConstraintProvider {
  /// {@macro aws_logging_cloudwatch.default_remote_logging_constraint_provider}
  DefaultRemoteLoggingConstraintProvider({
    required super.config,
    required this.credentialsProvider,
    super.fileStorage,
  }) : super(credentialsProvider: credentialsProvider);

  /// The credentials provider to use for signing the request.
  final AWSCredentialsProvider credentialsProvider;

  /// The signer to use for signing the request.
  final AWSSigV4Signer _signer = const AWSSigV4Signer();

  @override
  Future<AWSHttpRequest> createRequest() async {
    final baseRequest = await super.createRequest();
    final scope = AWSCredentialScope(
      region: _config.region,
      service: AWSService.apiGatewayManagementApi,
    );

    final signedRequest = await _signer.sign(
      baseRequest,
      credentialScope: scope,
    );

    final newRequest =
        AWSHttpRequest(method: signedRequest.method, uri: signedRequest.uri);

    return newRequest;
  }
}

/// {@template aws_logging_cloudwatch.default_remote_configuration}
/// The configuration for [BaseRemoteLoggingConstraintProvider]
/// {@endtemplate}
class DefaultRemoteConfiguration {
  /// {@macro aws_logging_cloudwatch.default_remote_configuration}
  const DefaultRemoteConfiguration({
    required this.endpoint,
    this.refreshInterval = const Duration(seconds: 1200),
    required this.region,
  });

  /// The endpoint to fetch the `loggingConstraint`.
  final String endpoint;

  /// The referesh interval to fetch the `loggingConstraint`.
  final Duration refreshInterval;

  /// The region of the endpoint.
  final String region;
}
