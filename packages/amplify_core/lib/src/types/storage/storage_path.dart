// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:meta/meta.dart';

abstract class StoragePath {
  factory StoragePath.fromString(String path) {
    return StoragePathFromString(path);
  }

  factory StoragePath.withIdentityId(
    String Function(String id) builder,
  ) {
    return StoragePathWithIdentityId(builder);
  }

  @internal
  FutureOr<String> resolvePath({String? id});
}

@internal
class StoragePathFromString implements StoragePath {
  const StoragePathFromString(this._path);
  final String _path;
  @override
  FutureOr<String> resolvePath({
    String? id,
  }) {
    return _path;
  }
}

@internal
class StoragePathWithIdentityId implements StoragePath {
  const StoragePathWithIdentityId(this._pathBuilder);
  final String Function(String identityId) _pathBuilder;
  @override
  FutureOr<String> resolvePath({
    String? id,
  }) async {
    assert(id != null, 'id must be defined for StoragePathWithIdentityId');
    return _pathBuilder(id!);
  }
}
