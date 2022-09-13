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

import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/mixins/amplify_secure_storage_mixin.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_request.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
import 'package:aws_common/aws_common.dart';
import 'package:worker_bee/worker_bee.dart';

/// {@template amplify_secure_storage_dart.amplify_secure_storage_dart}
/// Secure Storage implementation in Dart, supporting web and desktop platforms.
///
///  Example:
/// ```dart
/// // create storage instance
/// AmplifySecureStorageDart storage = AmplifySecureStorageDart();
///
/// // write to storage
/// storage.write(key: 'my_key', value: 'my value');
///
/// // read from storage
/// final value = await storage.read(key: 'my_key');
///
/// // delete from storage
/// storage.delete(key: 'my_key');
/// ```
/// {@endtemplate}
class AmplifySecureStorageDart extends AmplifySecureStorageInterface
    with AmplifySecureStorageDartMixin {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_dart}
  AmplifySecureStorageDart({
    required super.config,
  });
}

/// {@template amplify_secure_storage_dart.amplify_secure_storage_worker}
/// A `package:worker_bee` variant of [AmplifySecureStorageDart] which runs
/// storage operations in a background thread.
/// {@endtemplate}
class AmplifySecureStorageWorker extends AmplifySecureStorageInterface
    with AWSDebuggable, AWSLoggerMixin {
  /// {@macro amplify_secure_storage_dart.amplify_secure_storage_worker}
  AmplifySecureStorageWorker({
    required super.config,
  });

  late final SecureStorageWorker _worker;
  final _workerMemo = AsyncMemoizer<void>();

  void _logWorkerBeeMessage(LogEntry logEntry) {
    logger.log(
      logEntry.level,
      logEntry.message,
      logEntry.error,
      logEntry.stackTrace,
    );
  }

  /// {@template amplify_secure_storage_dart.secure_storage_interface.init}
  /// Initializes the secure storage and performs any work which should be
  /// performed once before any secure storage operations.
  /// {@endtemplate}
  Future<void> _init() => _workerMemo.runOnce(() async {
        _worker = SecureStorageWorker.create();
        _worker.logs.listen(_logWorkerBeeMessage);
        await _worker.spawn();
        _worker.add(
          SecureStorageRequest.init(config: config),
        );
        await _worker.stream.first;
      });

  @override
  Future<void> delete({required String key}) async {
    await _init();
    final request = SecureStorageRequest.delete(key: key);
    _worker.add(request);
    await _worker.stream.firstWhere(
      (event) => event.id == request.id,
    );
  }

  @override
  Future<String?> read({required String key}) async {
    await _init();
    final request = SecureStorageRequest.read(key: key);
    _worker.add(request);
    final resp = await _worker.stream.firstWhere(
      (event) => event.id == request.id,
    );
    return resp.value;
  }

  @override
  Future<void> write({required String key, required String value}) async {
    await _init();
    final request = SecureStorageRequest.write(key: key, value: value);
    _worker.add(request);
    await _worker.stream.firstWhere((event) => event.id == request.id);
  }

  @override
  String get runtimeTypeName => 'AmplifySecureStorageWorker';
}
