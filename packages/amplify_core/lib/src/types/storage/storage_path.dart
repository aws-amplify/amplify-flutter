// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/src/types/storage/storage_path_from_identity_id.dart';
import 'package:meta/meta.dart';

/// The full remote path of a storage item.
///
/// ### Examples
/// #### Static Path
/// {@macro amplify_core.storage.storage_path.from_string.example}

///
/// #### Dynamic Path with the current user's IdentityId
/// {@macro amplify_core.storage.storage_path.with_identity_id.example}
class StoragePath {
  /// Creates a [StoragePath] from a static string.
  ///
  /// To create a [StoragePath] from the current user's identity Id, see
  /// [StoragePath.fromIdentityId]
  ///
  /// ### Example
  /// {@template amplify_core.storage.storage_path.from_string.example}
  /// ```
  /// const p = StoragePath.fromString('path/to/object.png');
  /// ```
  /// {@endtemplate}
  const StoragePath.fromString(String path) : _path = path;

  /// {@macro amplify_core.storage.storage_path_from_identity_id}
  ///
  /// ### Example
  /// {@template amplify_core.storage.storage_path.with_identity_id.example}
  /// ```
  /// const p = StoragePath.fromIdentityId((String identityId) => 'users/$identityId/object.png');
  /// ```
  /// {@endtemplate}
  factory StoragePath.fromIdentityId(
    String Function(String identityId) pathBuilder,
  ) =>
      StoragePathFromIdentityId(pathBuilder);

  final String _path;

  @internal
  String resolvePath({String? identityId}) => _path;
}
