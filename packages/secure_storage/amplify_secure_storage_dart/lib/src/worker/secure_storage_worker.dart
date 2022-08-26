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

import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_action.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_request.dart';
import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.worker.dart';
import 'package:built_value/serializer.dart';
import 'package:worker_bee/worker_bee.dart';

part 'secure_storage_worker.g.dart';

/// {@template amplify_secure_storage_dart.secure_storage_worker}
/// A remote worker which can handle secure storage requests.
/// {@endtemplate}
@WorkerBee('lib/src/worker/workers.dart')
abstract class SecureStorageWorker
    extends WorkerBeeBase<SecureStorageRequest, SecureStorageRequest> {
  /// {@macro amplify_secure_storage_dart.secure_storage_worker}
  SecureStorageWorker() : super(serializers: _serializers);

  /// {@macro amplify_secure_storage_dart.secure_storage_worker}
  factory SecureStorageWorker.create() = SecureStorageWorkerImpl;

  AmplifySecureStorageInterface? _storage;

  @override
  Future<SecureStorageRequest?> run(
    Stream<SecureStorageRequest> listen,
    StreamSink<SecureStorageRequest> respond,
  ) async {
    await for (final request in listen) {
      var response = request;
      if (request.action == SecureStorageAction.init) {
        final config = request.config!;
        _storage ??= AmplifySecureStorageDart(
          config: config,
        );
      }
      final storage = _storage;
      if (storage == null) {
        respond.addError(StateError('Must call init first'));
        return null;
      }
      switch (request.action) {
        case SecureStorageAction.init:
          break;
        case SecureStorageAction.delete:
          final key = request.key!;
          await storage.delete(key: key);
          break;
        case SecureStorageAction.read:
          final key = request.key!;
          final value = await storage.read(key: key);
          response = request.rebuild((b) => b..value = value);
          break;
        case SecureStorageAction.write:
          final key = request.key!;
          final value = request.value!;
          await storage.write(key: key, value: value);
          break;
        case SecureStorageAction.removeAll:
          await storage.removeAll();
          break;
      }
      respond.add(response);
    }
    return null;
  }
}

@SerializersFor([
  AmplifySecureStorageConfig,
  SecureStorageAction,
  SecureStorageRequest,
])
final Serializers _serializers = _$_serializers;
