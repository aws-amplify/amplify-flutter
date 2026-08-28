// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  test('AuthWebAuthnCredential exposes provider-neutral credential data', () {
    final createdAt = DateTime.utc(2026, 1, 2);
    final credential = _TestWebAuthnCredential(createdAt: createdAt);

    expect(credential, isA<AuthWebAuthnCredential>());
    expect(credential.credentialId, 'credential-id');
    expect(credential.friendlyName, 'My passkey');
    expect(credential.relyingPartyId, 'example.com');
    expect(credential.authenticatorAttachment, 'platform');
    expect(credential.authenticatorTransports, ['internal']);
    expect(credential.createdAt, createdAt);
    expect(credential.toJson(), {
      'credentialId': 'credential-id',
      'friendlyName': 'My passkey',
      'relyingPartyId': 'example.com',
      'authenticatorAttachment': 'platform',
      'authenticatorTransports': ['internal'],
      'createdAt': createdAt.toIso8601String(),
    });
  });
}

final class _TestWebAuthnCredential extends AuthWebAuthnCredential {
  const _TestWebAuthnCredential({required this.createdAt});

  @override
  final DateTime createdAt;

  @override
  String get credentialId => 'credential-id';

  @override
  String? get friendlyName => 'My passkey';

  @override
  String get relyingPartyId => 'example.com';

  @override
  String? get authenticatorAttachment => 'platform';

  @override
  List<String>? get authenticatorTransports => const ['internal'];

  @override
  Map<String, Object?> toJson() => {
    'credentialId': credentialId,
    'friendlyName': friendlyName,
    'relyingPartyId': relyingPartyId,
    'authenticatorAttachment': authenticatorAttachment,
    'authenticatorTransports': authenticatorTransports,
    'createdAt': createdAt.toIso8601String(),
  };
}
