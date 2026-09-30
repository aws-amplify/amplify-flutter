// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@category Auth}
/// {@template amplify_core.auth_webauthn_credential}
/// Common interface for WebAuthn/passkey credentials registered with an authentication provider.
/// {@endtemplate}
@immutable
abstract class AuthWebAuthnCredential
    with AWSSerializable<Map<String, Object?>> {
  /// {@macro amplify_core.auth_webauthn_credential}
  const AuthWebAuthnCredential();

  /// Unique identifier for this credential.
  String get credentialId;

  /// User-assigned friendly name for the credential (e.g., "My iPhone").
  String? get friendlyName;

  /// Relying party identifier (typically the domain).
  String get relyingPartyId;

  /// Type of authenticator attachment (e.g., "platform", "cross-platform").
  String? get authenticatorAttachment;

  /// List of transport types supported by the authenticator (e.g., "usb", "nfc", "ble", "internal").
  List<String>? get authenticatorTransports;

  /// Date and time when the credential was created.
  DateTime get createdAt;

  /// Converts the instance to a JSON map.
  @override
  Map<String, Object?> toJson();

  @override
  String toString() {
    return 'AuthWebAuthnCredential{credentialId=$credentialId, friendlyName=$friendlyName, relyingPartyId=$relyingPartyId, createdAt=$createdAt}';
  }
}
