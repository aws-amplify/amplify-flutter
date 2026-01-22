// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// AWS credentials for authenticating API requests.
class Credentials {
  /// Creates AWS credentials.
  const Credentials({
    required this.accessKeyId,
    required this.secretAccessKey,
    this.sessionToken,
    this.expiration,
  });

  /// The AWS access key ID.
  final String accessKeyId;

  /// The AWS secret access key.
  final String secretAccessKey;

  /// The session token for temporary credentials (optional).
  final String? sessionToken;

  /// The expiration time for temporary credentials (optional).
  final DateTime? expiration;

  /// Returns true if the credentials have expired.
  bool get isExpired {
    final exp = expiration;
    if (exp == null) return false;
    return DateTime.now().isAfter(exp);
  }
}
