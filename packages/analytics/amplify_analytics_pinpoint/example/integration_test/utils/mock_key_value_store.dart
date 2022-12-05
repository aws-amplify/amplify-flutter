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

import 'package:amplify_flutter/amplify_flutter.dart';

/// Static key/value storage for use in integration tests.
///
/// Should be static to mimic the behavior of iOS/Android which persist keys
/// between relaunches (e.g. between test groups).
final SecureStorageInterface mockKeyValueStore = _MockKeyValueStore()
  ..write(
    // TODO(fjnoyp): Expose this key in a way that makes sense
    key: 'UniqueId',
    value: mockEndpointId,
  );
final String mockEndpointId = uuid();

class _MockKeyValueStore extends SecureStorageInterface {
  final _storage = <String, String>{};

  @override
  Future<void> delete({required String key}) async => _storage.remove(key);

  @override
  Future<String?> read({required String key}) async => _storage[key];

  @override
  Future<void> write({required String key, required String value}) async =>
      _storage[key] = value;
}
