// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_logging_cloudwatch_dart/src/file_storage/file_storage.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:meta/meta.dart';

/// {@template amplify_logging_cloudwatch_dart.remote_logging_constraint_provider}
/// An Interface to provide custom implementation for
/// [RemoteLoggingConstraintProvider]
/// It gets the [LoggingConstraints] from a remote location and cache it.
/// {@endtemplate}
abstract class RemoteLoggingConstraintProvider {
  /// Returns logging constraint from cache or `null` if cache is missing.
  LoggingConstraints? get loggingConstraint;
}

/// {@template amplify_logging_cloudwatch_dart.base_remote_constraints_provider}
/// Base class for [RemoteLoggingConstraintProvider] to provide
/// [LoggingConstraints] from a remote location and cache it.
/// {@endtemplate}
base class BaseRemoteLoggingConstraintProvider
    with AWSDebuggable, AmplifyLoggerMixin
    implements RemoteLoggingConstraintProvider, Closeable {
  /// {@macro amplify_logging_cloudwatch_dart.base_remote_constraints_provider}
  BaseRemoteLoggingConstraintProvider({
    required DefaultRemoteConfiguration config,
    FileStorage? fileStorage,
  })  : _fileStorage = fileStorage,
        _config = config,
        _awsHttpClient = AWSHttpClient()
          ..supportedProtocols = SupportedProtocols.http1 {
    _init();
  }

  /// A [BaseRemoteLoggingConstraintProvider] to use only for testing.
  @protected
  @visibleForTesting
  BaseRemoteLoggingConstraintProvider.forTesting({
    required DefaultRemoteConfiguration config,
    required AWSHttpClient awsHttpClient,
    FileStorage? fileStorage,
  })  : _fileStorage = fileStorage,
        _config = config,
        _awsHttpClient = awsHttpClient {
    _init();
  }

  final FileStorage? _fileStorage;

  final DefaultRemoteConfiguration _config;

  LoggingConstraints? _loggingConstraint;

  final AWSHttpClient _awsHttpClient;

  static const _cacheFileName = 'remoteloggingconstraints.json';

  // The timer to refresh the constraint periodically.
  Timer? _timer;

  /// Retrives the runtime type name used for logging.
  @override
  String get runtimeTypeName => 'BaseRemoteConstraintsProvider';

  @override
  AmplifyLogger get logger => AmplifyLogger.category(Category.logging);

  /// Initializes the [BaseRemoteLoggingConstraintProvider] by fetching
  /// the constraint from the endpoint initially and then
  /// starting the refresh timer afterwards.
  void _init() {
    _readyCompleter.complete(_refreshConstraintPeriodically());
  }

  final Completer<void> _readyCompleter = Completer();

  /// A future that completes when the [BaseRemoteLoggingConstraintProvider]
  Future<void> get ready => _readyCompleter.future;

  /// Creates a request to fetch the constraint from the endpoint.
  ///
  /// Can be overridden by subclasses to change how the request is created.
  @protected
  @visibleForOverriding
  Future<AWSBaseHttpRequest> createRequest() async {
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
      if (response.statusCode != 200) {
        logger
            .error('Failed to fetch constraints', (response.statusCode, body));
        return;
      }
      final fetchedConstraint = LoggingConstraints.fromJson(
        jsonDecode(body) as Map<String, dynamic>,
      );
      _loggingConstraint = fetchedConstraint;

      if (_fileStorage != null) {
        await _fileStorage?.save(
          _cacheFileName,
          jsonEncode(fetchedConstraint.toJson()),
        );
      }
    } on Object catch (exception, st) {
      logger.error(
        'Failed to fetch logging constraint from ${_config.endpoint}. exception: $exception, stack: $st',
        st,
      );
    }
  }

  /// Returns [LoggingConstraints] from the cache or `null` if the cache is missing
  /// or if the constraints could not be retrieved from the remote server.
  @override
  LoggingConstraints? get loggingConstraint => _loggingConstraint;

  Future<void> _loadConstraintFromLocalStorage() async {
    final localConstraint = await _fileStorage?.load(_cacheFileName);
    if (localConstraint != null) {
      _loggingConstraint = LoggingConstraints.fromJson(
        jsonDecode(localConstraint) as Map<String, dynamic>,
      );
    }
  }

  /// Refreshes the constraint from the endpoint periodically.
  Future<void> _refreshConstraintPeriodically() async {
    await _loadConstraintFromLocalStorage();
    _timer = Timer.periodic(
      Duration(seconds: _config.refreshIntervalInSeconds),
      (_) => _fetchAndCacheConstraintFromEndpoint(),
    );
    await _fetchAndCacheConstraintFromEndpoint();
  }

  @override
  void close() {
    _timer?.cancel();
    _timer = null;
  }
}

/// {@template amplify_logging_cloudwatch_dart.default_remote_logging_constraint_provider}
/// Default implementation of [RemoteLoggingConstraintProvider] to fetch
/// [LoggingConstraints] from an http endpoint periodically.
/// {@endtemplate}
final class DefaultRemoteLoggingConstraintProvider
    extends BaseRemoteLoggingConstraintProvider {
  /// {@macro amplify_logging_cloudwatch_dart.default_remote_logging_constraint_provider}
  DefaultRemoteLoggingConstraintProvider({
    required super.config,
    required String region,
    required AWSCredentialsProvider credentialsProvider,
    super.fileStorage,
  })  : _region = region,
        _credentialsProvider = credentialsProvider;

  /// The credentials provider to use for signing the request.
  final AWSCredentialsProvider _credentialsProvider;

  final String _region;

  /// The signer to use for signing the request.
  late final AWSSigV4Signer _signer = AWSSigV4Signer(
    credentialsProvider: _credentialsProvider,
  );

  @override
  Future<AWSBaseHttpRequest> createRequest() async {
    final baseRequest = await super.createRequest();
    final scope = AWSCredentialScope(
      region: _region,
      service: AWSService.apiGatewayManagementApi,
    );

    final signedRequest = await _signer.sign(
      baseRequest,
      credentialScope: scope,
      serviceConfiguration: const ServiceConfiguration(signBody: false),
    );

    return signedRequest;
  }
}
