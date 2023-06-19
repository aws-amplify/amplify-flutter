// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/asf/asf_device_info_collector.dart';
import 'package:amplify_auth_cognito_dart/src/asf/asf_worker.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:async/async.dart';

/// {@template amplify_auth_cognito_dart.asf.asf_context_data_provider}
/// Provides user context data as required for Cognito's advanced security features
/// (ASF) functionality.
/// {@endtemplate}
final class ASFContextDataProvider with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_auth_cognito_dart.asf.asf_context_data_provider}
  ASFContextDataProvider(this._dependencyManager);

  final DependencyManager _dependencyManager;

  /// Retrieves context data as required for advanced security features (ASF).
  ASFDeviceInfoCollector get _platform => _dependencyManager.getOrCreate();

  /// The Cognito user pool configuration.
  CognitoUserPoolConfig? get _userPoolConfig => _dependencyManager.get();

  SecureStorageInterface get _secureStorage => _dependencyManager.expect();

  /// The unique device ID (`DeviceID`).
  Future<String> get _deviceId async {
    final userPoolKeys = CognitoUserPoolKeys(_userPoolConfig!);
    var deviceId = await _secureStorage.read(
      key: userPoolKeys[CognitoUserPoolKey.asfDeviceId],
    );
    if (deviceId == null) {
      deviceId =
          '${uuid(secure: true)}:${DateTime.timestamp().toIso8601String()}';
      await _secureStorage.write(
        key: userPoolKeys[CognitoUserPoolKey.asfDeviceId],
        value: deviceId,
      );
    }
    return deviceId;
  }

  // Lazy initializers for worker types.
  final AsyncMemoizer<ASFWorker> _workerMemo = AsyncMemoizer();

  /// The ASF calculation worker.
  late final Future<ASFWorker> _asfWorker = _workerMemo.runOnce(() async {
    var worker = _dependencyManager.get<ASFWorker>();
    if (worker != null) {
      return worker;
    }
    worker = ASFWorker.create();
    final logger = this.logger.createChild(worker.name);
    worker.logs.listen((entry) => _logWorkerBeeMessage(logger, entry));
    await worker.spawn();
    _dependencyManager.addInstance<ASFWorker>(worker);
    return worker;
  });

  void _logWorkerBeeMessage(AWSLogger logger, LogEntry logEntry) {
    logger.log(
      logEntry.level,
      logEntry.message,
      logEntry.error,
      logEntry.stackTrace,
    );
  }

  /// Builds the [UserContextDataType] object which can be attached to SDK
  /// calls.
  Future<UserContextDataType?> buildRequestData(String username) async {
    final userPoolConfig = _userPoolConfig;
    if (userPoolConfig == null) {
      return null;
    }
    final nativeContextData = await _platform.getNativeContextData();
    logger.verbose('Got native context data: $nativeContextData');
    final deviceId = await _deviceId;
    final userPoolId = userPoolConfig.poolId;
    final clientId = userPoolConfig.appClientId;

    final request = ASFWorkerRequest(
      userPoolId: userPoolId,
      clientId: clientId,
      username: username,
      deviceId: deviceId,
      nativeContextData: nativeContextData,
    );

    final worker = await _asfWorker;
    worker.add(request);
    final response = await worker.stream.firstWhere(
      (resp) => resp.requestId == request.requestId,
    );
    return response.userContextData;
  }

  @override
  String get runtimeTypeName => 'ASFContextDataProvider';
}
