// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// SharedPreferences key for the persistent client/device ID.
///
/// This value is a cross-package integration contract: the Connect client reads
/// and writes the same key in the same store with the same read-or-create
/// semantics, so both Flutter packages resolve the identical id for a device.
/// Whichever package initializes first generates the UUID; the other reads it.
///
/// Note: `shared_preferences` namespaces keys internally (a `flutter.` prefix
/// on the stored entry), so the id is shared across Flutter packages in an app,
/// but not with native Amplify SDKs reading the raw platform store — a hybrid
/// app embedding both would resolve two ids, each stable per install.
///
/// Changing this key re-mints an id for every existing install, which registers
/// those devices a second time on the backend, so it must stay in lockstep
/// across packages.
const zClientIdStorageKey = 'com.amplifyframework.device_id';
