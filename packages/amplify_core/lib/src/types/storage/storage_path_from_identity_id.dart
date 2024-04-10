// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.storage.storage_path_from_identity_id}
/// Creates a [StoragePath] from the current user's identityId.
/// {@endtemplate}
class StoragePathFromIdentityId implements StoragePath {
  /// {@macro amplify_core.storage.storage_path_from_identity_id}
  const StoragePathFromIdentityId(this._pathBuilder);
  final String Function(String identityId) _pathBuilder;

  @internal
  @override
  String resolvePath({
    String? identityId,
  }) {
    // identityId has to be optional in order for this to be a valid override.
    // This API is internal, and is only invoked with non-null values
    assert(identityId != null, 'identityId must be defined.');
    return _pathBuilder(identityId!);
  }
}
