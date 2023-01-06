// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// Keys used to store info about the credential store.
enum CredentialStoreKey {
  /// The current version of the credential store.
  version,
}

/// The credential store version.
enum CredentialStoreVersion {
  /// No credential store version is present.
  ///
  /// Either the credential store has never been initialized on this device, or
  /// the credentials are stored in a legacy format.
  none,

  /// The initial implementation of Credential in Amplify Flutter Auth.
  v1,
}
