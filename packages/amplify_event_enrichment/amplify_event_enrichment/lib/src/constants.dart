// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// SharedPreferences key for the persistent client/device ID.
///
/// This value is a cross-package integration contract: the Connect client
/// reads and writes the same key in the same native store (SharedPreferences
/// on Android, NSUserDefaults on iOS) so a device resolves to ONE id
/// everywhere, including the Phase 2 native packages. Changing it re-mints an
/// id for every existing install, which registers those devices a second time
/// on the backend, so it must stay in lockstep across packages and platforms.
const zClientIdStorageKey = 'com.amplifyframework.device_id';
