// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// {@template amplify_core.storage.access_level}
/// This defines the storage access levels and their default corresponding
/// prefixes. i.e. Objects are prefixed as following:
///
/// * `StorageAccessLevel.guest`: `'public'`
/// * `StorageAccessLevel.protected`: `'protected/<identityId>'`
/// * `StorageAccessLevel.private`: `'private/<identityId>'`
/// {@endtemplate}
enum StorageAccessLevel {
  /// Objects are accessible by all users.
  guest('public'),

  /// Objects are readable by all users, but only writable by the creating user.
  protected('protected'),

  /// Objects are readable and writable only by the creating user
  private('private');

  /// {@macro amplify_core.storage.access_level}
  const StorageAccessLevel(this.defaultPrefix);

  /// The default prefix string for the chosen access level.
  final String defaultPrefix;
}
