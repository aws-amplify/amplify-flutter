// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/src/sdk/cognito_webauthn_client.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:meta/meta.dart';

/// {@template amplify_auth_cognito.cognito_webauthn_credential}
/// A WebAuthn/passkey credential registered with AWS Cognito.
/// {@endtemplate}
@immutable
class CognitoWebAuthnCredential extends AuthWebAuthnCredential
    with AWSEquatable<CognitoWebAuthnCredential> {
  /// {@macro amplify_auth_cognito.cognito_webauthn_credential}
  const CognitoWebAuthnCredential({
    required this.credentialId,
    required this.relyingPartyId,
    required this.createdAt,
    this.friendlyName,
    this.authenticatorAttachment,
    this.authenticatorTransports,
  });

  /// Creates a [CognitoWebAuthnCredential] from a [WebAuthnCredentialDescription].
  factory CognitoWebAuthnCredential.fromDescription(
    WebAuthnCredentialDescription description,
  ) {
    return CognitoWebAuthnCredential(
      credentialId: description.credentialId,
      relyingPartyId: description.relyingPartyId,
      createdAt: description.createdAt,
      friendlyName: description.friendlyCredentialName,
      authenticatorAttachment: description.authenticatorAttachment,
      authenticatorTransports: description.authenticatorTransports,
    );
  }

  @override
  final String credentialId;

  @override
  final String relyingPartyId;

  @override
  final DateTime createdAt;

  @override
  final String? friendlyName;

  @override
  final String? authenticatorAttachment;

  @override
  final List<String>? authenticatorTransports;

  @override
  Map<String, Object?> toJson() => {
    'credentialId': credentialId,
    'relyingPartyId': relyingPartyId,
    'createdAt': createdAt.toIso8601String(),
    if (friendlyName != null) 'friendlyName': friendlyName,
    if (authenticatorAttachment != null)
      'authenticatorAttachment': authenticatorAttachment,
    if (authenticatorTransports != null)
      'authenticatorTransports': authenticatorTransports,
  };

  @override
  List<Object?> get props => [
    credentialId,
    relyingPartyId,
    createdAt,
    friendlyName,
    authenticatorAttachment,
    authenticatorTransports,
  ];

  @override
  String toString() {
    return 'CognitoWebAuthnCredential{credentialId=$credentialId, relyingPartyId=$relyingPartyId, createdAt=$createdAt, friendlyName=$friendlyName}';
  }
}
