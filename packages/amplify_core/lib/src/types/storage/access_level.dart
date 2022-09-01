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
