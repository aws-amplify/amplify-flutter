// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// SharedPreferences key for the persistent client/device ID.
///
/// The Connect client reads and writes the same key with the same
/// read-or-create semantics, so both packages resolve one ID per device.
/// `shared_preferences` prefixes stored keys with `flutter.`, so the ID is
/// shared across Flutter packages but not with native Amplify SDKs.
///
/// Changing this key re-mints the ID for existing installs, so it must stay
/// in lockstep across packages.
const zClientIdStorageKey = 'com.amplifyframework.device_id';
