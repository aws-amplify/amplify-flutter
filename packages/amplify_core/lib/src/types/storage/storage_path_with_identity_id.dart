// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_core.storage.storage_path_with_identity_id}
/// Creates a [StoragePath] with the current user's identityId.
/// {@endtemplate}
class StoragePathWithIdentityId implements StoragePath {
  /// {@macro amplify_core.storage.storage_path_with_identity_id}
  const StoragePathWithIdentityId(this._pathBuilder);
  final String Function(String identityId) _pathBuilder;
  @override
  String resolvePath({
    String? identityId,
  }) {
    assert(identityId != null, 'identityId must be defined.');
    return _pathBuilder(identityId!);
  }
}
