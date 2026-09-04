// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

/// WebAuthn/passkey JSON serialization types for Cognito API exchange.
///
/// These types model the W3C WebAuthn Level 3 JSON dictionaries used
/// for communication between the Cognito service and platform WebAuthn
/// APIs. All binary fields (challenge, credential IDs, authenticator
/// data, etc.) are represented as base64url-encoded strings.
library;

/// {@template amplify_auth_cognito_dart.passkey_credential_descriptor}
/// Describes a public key credential for use in `excludeCredentials`
/// (registration) or `allowCredentials` (authentication).
/// {@endtemplate}
class PasskeyCredentialDescriptor {
  /// {@macro amplify_auth_cognito_dart.passkey_credential_descriptor}
  const PasskeyCredentialDescriptor({
    required this.id,
    required this.type,
    this.transports,
  });

  /// Creates a [PasskeyCredentialDescriptor] from a JSON map.
  factory PasskeyCredentialDescriptor.fromJson(Map<String, dynamic> json) {
    return PasskeyCredentialDescriptor(
      id: json['id'] as String,
      type: json['type'] as String,
      transports: (json['transports'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  /// The base64url-encoded credential ID.
  final String id;

  /// The credential type, always `'public-key'`.
  final String type;

  /// Optional transport hints (e.g. `'usb'`, `'nfc'`, `'ble'`, `'internal'`).
  final List<String>? transports;

  /// Serializes this descriptor to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'id': id, 'type': type};
    if (transports != null) {
      json['transports'] = transports;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_rp_entity}
/// The relying party entity for a WebAuthn ceremony.
/// {@endtemplate}
class PasskeyRpEntity {
  /// {@macro amplify_auth_cognito_dart.passkey_rp_entity}
  const PasskeyRpEntity({required this.id, required this.name});

  /// Creates a [PasskeyRpEntity] from a JSON map.
  factory PasskeyRpEntity.fromJson(Map<String, dynamic> json) {
    return PasskeyRpEntity(
      id: json['id'] as String,
      name: json['name'] as String,
    );
  }

  /// The relying party identifier (typically the domain).
  final String id;

  /// The human-readable relying party name.
  final String name;

  /// Serializes this entity to a JSON map.
  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

/// {@template amplify_auth_cognito_dart.passkey_user_entity}
/// The user entity for a WebAuthn registration ceremony.
/// {@endtemplate}
class PasskeyUserEntity {
  /// {@macro amplify_auth_cognito_dart.passkey_user_entity}
  const PasskeyUserEntity({
    required this.id,
    required this.name,
    required this.displayName,
  });

  /// Creates a [PasskeyUserEntity] from a JSON map.
  factory PasskeyUserEntity.fromJson(Map<String, dynamic> json) {
    return PasskeyUserEntity(
      id: json['id'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
    );
  }

  /// The base64url-encoded user ID.
  final String id;

  /// The user account name (e.g. email or username).
  final String name;

  /// The human-readable display name.
  final String displayName;

  /// Serializes this entity to a JSON map.
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'displayName': displayName,
  };
}

/// {@template amplify_auth_cognito_dart.passkey_authenticator_selection}
/// Authenticator selection criteria for a WebAuthn registration ceremony.
/// {@endtemplate}
class PasskeyAuthenticatorSelection {
  /// {@macro amplify_auth_cognito_dart.passkey_authenticator_selection}
  const PasskeyAuthenticatorSelection({
    this.requireResidentKey,
    this.residentKey,
    this.userVerification,
    this.authenticatorAttachment,
  });

  /// Creates a [PasskeyAuthenticatorSelection] from a JSON map.
  factory PasskeyAuthenticatorSelection.fromJson(Map<String, dynamic> json) {
    return PasskeyAuthenticatorSelection(
      requireResidentKey: json['requireResidentKey'] as bool?,
      residentKey: json['residentKey'] as String?,
      userVerification: json['userVerification'] as String?,
      authenticatorAttachment: json['authenticatorAttachment'] as String?,
    );
  }

  /// Whether the authenticator must create a client-side discoverable
  /// credential (resident key).
  final bool? requireResidentKey;

  /// The resident key requirement (`'discouraged'`, `'preferred'`,
  /// `'required'`).
  final String? residentKey;

  /// The user verification requirement (`'discouraged'`, `'preferred'`,
  /// `'required'`).
  final String? userVerification;

  /// The authenticator attachment modality (`'platform'`,
  /// `'cross-platform'`).
  final String? authenticatorAttachment;

  /// Serializes this selection criteria to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (requireResidentKey != null) {
      json['requireResidentKey'] = requireResidentKey;
    }
    if (residentKey != null) {
      json['residentKey'] = residentKey;
    }
    if (userVerification != null) {
      json['userVerification'] = userVerification;
    }
    if (authenticatorAttachment != null) {
      json['authenticatorAttachment'] = authenticatorAttachment;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_pub_key_cred_param}
/// A public key credential parameter specifying the type and algorithm.
/// {@endtemplate}
class PasskeyPubKeyCredParam {
  /// {@macro amplify_auth_cognito_dart.passkey_pub_key_cred_param}
  const PasskeyPubKeyCredParam({required this.type, required this.alg});

  /// Creates a [PasskeyPubKeyCredParam] from a JSON map.
  factory PasskeyPubKeyCredParam.fromJson(Map<String, dynamic> json) {
    return PasskeyPubKeyCredParam(
      type: json['type'] as String,
      alg: json['alg'] as int,
    );
  }

  /// The credential type, always `'public-key'`.
  final String type;

  /// The COSE algorithm identifier (e.g. `-7` for ES256, `-257` for RS256).
  final int alg;

  /// Serializes this parameter to a JSON map.
  Map<String, dynamic> toJson() => {'type': type, 'alg': alg};
}

/// {@template amplify_auth_cognito_dart.passkey_create_options}
/// Options for creating a new passkey credential, derived from Cognito's
/// `StartWebAuthnRegistration` response.
///
/// Corresponds to the W3C `PublicKeyCredentialCreationOptions` dictionary.
/// {@endtemplate}
class PasskeyCreateOptions {
  /// {@macro amplify_auth_cognito_dart.passkey_create_options}
  const PasskeyCreateOptions({
    required this.challenge,
    required this.rp,
    required this.user,
    required this.pubKeyCredParams,
    this.timeout,
    this.excludeCredentials,
    this.authenticatorSelection,
    this.attestation,
  });

  /// Creates a [PasskeyCreateOptions] from a JSON map.
  factory PasskeyCreateOptions.fromJson(Map<String, dynamic> json) {
    return PasskeyCreateOptions(
      challenge: json['challenge'] as String,
      rp: PasskeyRpEntity.fromJson(json['rp'] as Map<String, dynamic>),
      user: PasskeyUserEntity.fromJson(json['user'] as Map<String, dynamic>),
      pubKeyCredParams: (json['pubKeyCredParams'] as List<dynamic>)
          .map(
            (e) => PasskeyPubKeyCredParam.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      timeout: json['timeout'] as int?,
      excludeCredentials: (json['excludeCredentials'] as List<dynamic>?)
          ?.map(
            (e) =>
                PasskeyCredentialDescriptor.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      authenticatorSelection: json['authenticatorSelection'] == null
          ? null
          : PasskeyAuthenticatorSelection.fromJson(
              json['authenticatorSelection'] as Map<String, dynamic>,
            ),
      attestation: json['attestation'] as String?,
    );
  }

  /// The base64url-encoded challenge from Cognito.
  final String challenge;

  /// The relying party entity.
  final PasskeyRpEntity rp;

  /// The user entity.
  final PasskeyUserEntity user;

  /// The acceptable public key credential parameters, ordered by preference.
  final List<PasskeyPubKeyCredParam> pubKeyCredParams;

  /// The ceremony timeout in milliseconds.
  final int? timeout;

  /// Credentials to exclude (already registered).
  final List<PasskeyCredentialDescriptor>? excludeCredentials;

  /// Authenticator selection criteria.
  final PasskeyAuthenticatorSelection? authenticatorSelection;

  /// The attestation conveyance preference (`'none'`, `'indirect'`,
  /// `'direct'`, `'enterprise'`).
  final String? attestation;

  /// Serializes these options to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'challenge': challenge,
      'rp': rp.toJson(),
      'user': user.toJson(),
      'pubKeyCredParams': pubKeyCredParams.map((e) => e.toJson()).toList(),
    };
    if (timeout != null) {
      json['timeout'] = timeout;
    }
    if (excludeCredentials != null) {
      json['excludeCredentials'] = excludeCredentials!
          .map((e) => e.toJson())
          .toList();
    }
    if (authenticatorSelection != null) {
      json['authenticatorSelection'] = authenticatorSelection!.toJson();
    }
    if (attestation != null) {
      json['attestation'] = attestation;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_attestation_response}
/// The authenticator response from a WebAuthn registration (create)
/// ceremony.
/// {@endtemplate}
class PasskeyAttestationResponse {
  /// {@macro amplify_auth_cognito_dart.passkey_attestation_response}
  const PasskeyAttestationResponse({
    required this.clientDataJSON,
    required this.attestationObject,
    this.authenticatorData,
    this.publicKey,
    this.publicKeyAlgorithm,
    this.transports,
  });

  /// Creates a [PasskeyAttestationResponse] from a JSON map.
  factory PasskeyAttestationResponse.fromJson(Map<String, dynamic> json) {
    return PasskeyAttestationResponse(
      clientDataJSON: json['clientDataJSON'] as String,
      attestationObject: json['attestationObject'] as String,
      authenticatorData: json['authenticatorData'] as String?,
      publicKey: json['publicKey'] as String?,
      publicKeyAlgorithm: json['publicKeyAlgorithm'] as int?,
      transports: (json['transports'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  /// The base64url-encoded client data JSON.
  final String clientDataJSON;

  /// The base64url-encoded attestation object.
  final String attestationObject;

  /// The base64url-encoded authenticator data (optional).
  final String? authenticatorData;

  /// The base64url-encoded public key (optional, SPKI format).
  final String? publicKey;

  /// The COSE algorithm identifier for the public key.
  final int? publicKeyAlgorithm;

  /// Transport hints for the created credential.
  final List<String>? transports;

  /// Serializes this response to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'clientDataJSON': clientDataJSON,
      'attestationObject': attestationObject,
    };
    if (authenticatorData != null) {
      json['authenticatorData'] = authenticatorData;
    }
    if (publicKey != null) {
      json['publicKey'] = publicKey;
    }
    if (publicKeyAlgorithm != null) {
      json['publicKeyAlgorithm'] = publicKeyAlgorithm;
    }
    if (transports != null) {
      json['transports'] = transports;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_create_result}
/// The result of a WebAuthn registration ceremony, corresponding to
/// the W3C `RegistrationResponseJSON` dictionary.
///
/// This is sent to Cognito's `CompleteWebAuthnRegistration` API.
/// {@endtemplate}
class PasskeyCreateResult {
  /// {@macro amplify_auth_cognito_dart.passkey_create_result}
  const PasskeyCreateResult({
    required this.id,
    required this.rawId,
    required this.type,
    required this.response,
    required this.clientExtensionResults,
    this.authenticatorAttachment,
  });

  /// Creates a [PasskeyCreateResult] from a JSON map.
  factory PasskeyCreateResult.fromJson(Map<String, dynamic> json) {
    return PasskeyCreateResult(
      id: json['id'] as String,
      rawId: json['rawId'] as String,
      type: json['type'] as String,
      response: PasskeyAttestationResponse.fromJson(
        json['response'] as Map<String, dynamic>,
      ),
      clientExtensionResults:
          json['clientExtensionResults'] as Map<String, dynamic>,
      authenticatorAttachment: json['authenticatorAttachment'] as String?,
    );
  }

  /// The base64url-encoded credential ID.
  final String id;

  /// The base64url-encoded raw credential ID.
  final String rawId;

  /// The credential type, always `'public-key'`.
  final String type;

  /// The attestation response from the authenticator.
  final PasskeyAttestationResponse response;

  /// Client extension results (may be empty).
  final Map<String, dynamic> clientExtensionResults;

  /// The authenticator attachment modality used.
  final String? authenticatorAttachment;

  /// Serializes this result to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'rawId': rawId,
      'type': type,
      'response': response.toJson(),
      'clientExtensionResults': clientExtensionResults,
    };
    if (authenticatorAttachment != null) {
      json['authenticatorAttachment'] = authenticatorAttachment;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_get_options}
/// Options for retrieving a passkey credential assertion, derived from
/// Cognito's `CREDENTIAL_REQUEST_OPTIONS` challenge parameter.
///
/// Corresponds to the W3C `PublicKeyCredentialRequestOptions` dictionary.
/// {@endtemplate}
class PasskeyGetOptions {
  /// {@macro amplify_auth_cognito_dart.passkey_get_options}
  const PasskeyGetOptions({
    required this.challenge,
    required this.rpId,
    this.timeout,
    this.allowCredentials,
    this.userVerification,
  });

  /// Creates a [PasskeyGetOptions] from a JSON map.
  factory PasskeyGetOptions.fromJson(Map<String, dynamic> json) {
    return PasskeyGetOptions(
      challenge: json['challenge'] as String,
      rpId: json['rpId'] as String,
      timeout: json['timeout'] as int?,
      allowCredentials: (json['allowCredentials'] as List<dynamic>?)
          ?.map(
            (e) =>
                PasskeyCredentialDescriptor.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      userVerification: json['userVerification'] as String?,
    );
  }

  /// The base64url-encoded challenge from Cognito.
  final String challenge;

  /// The relying party identifier.
  final String rpId;

  /// The ceremony timeout in milliseconds.
  final int? timeout;

  /// Credentials that are allowed (registered for this user).
  final List<PasskeyCredentialDescriptor>? allowCredentials;

  /// The user verification requirement.
  final String? userVerification;

  /// Serializes these options to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{'challenge': challenge, 'rpId': rpId};
    if (timeout != null) {
      json['timeout'] = timeout;
    }
    if (allowCredentials != null) {
      json['allowCredentials'] = allowCredentials!
          .map((e) => e.toJson())
          .toList();
    }
    if (userVerification != null) {
      json['userVerification'] = userVerification;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_assertion_response}
/// The authenticator response from a WebAuthn authentication (get)
/// ceremony.
/// {@endtemplate}
class PasskeyAssertionResponse {
  /// {@macro amplify_auth_cognito_dart.passkey_assertion_response}
  const PasskeyAssertionResponse({
    required this.clientDataJSON,
    required this.authenticatorData,
    required this.signature,
    this.userHandle,
  });

  /// Creates a [PasskeyAssertionResponse] from a JSON map.
  factory PasskeyAssertionResponse.fromJson(Map<String, dynamic> json) {
    return PasskeyAssertionResponse(
      clientDataJSON: json['clientDataJSON'] as String,
      authenticatorData: json['authenticatorData'] as String,
      signature: json['signature'] as String,
      userHandle: json['userHandle'] as String?,
    );
  }

  /// The base64url-encoded client data JSON.
  final String clientDataJSON;

  /// The base64url-encoded authenticator data.
  final String authenticatorData;

  /// The base64url-encoded assertion signature.
  final String signature;

  /// The base64url-encoded user handle (optional).
  final String? userHandle;

  /// Serializes this response to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'clientDataJSON': clientDataJSON,
      'authenticatorData': authenticatorData,
      'signature': signature,
    };
    if (userHandle != null) {
      json['userHandle'] = userHandle;
    }
    return json;
  }
}

/// {@template amplify_auth_cognito_dart.passkey_get_result}
/// The result of a WebAuthn authentication ceremony, corresponding to
/// the W3C `AuthenticationResponseJSON` dictionary.
///
/// This is sent as the `CREDENTIAL` value in Cognito's
/// `RespondToAuthChallenge` API.
/// {@endtemplate}
class PasskeyGetResult {
  /// {@macro amplify_auth_cognito_dart.passkey_get_result}
  const PasskeyGetResult({
    required this.id,
    required this.rawId,
    required this.type,
    required this.response,
    required this.clientExtensionResults,
    this.authenticatorAttachment,
  });

  /// Creates a [PasskeyGetResult] from a JSON map.
  factory PasskeyGetResult.fromJson(Map<String, dynamic> json) {
    return PasskeyGetResult(
      id: json['id'] as String,
      rawId: json['rawId'] as String,
      type: json['type'] as String,
      response: PasskeyAssertionResponse.fromJson(
        json['response'] as Map<String, dynamic>,
      ),
      clientExtensionResults:
          json['clientExtensionResults'] as Map<String, dynamic>,
      authenticatorAttachment: json['authenticatorAttachment'] as String?,
    );
  }

  /// The base64url-encoded credential ID.
  final String id;

  /// The base64url-encoded raw credential ID.
  final String rawId;

  /// The credential type, always `'public-key'`.
  final String type;

  /// The assertion response from the authenticator.
  final PasskeyAssertionResponse response;

  /// Client extension results (may be empty).
  final Map<String, dynamic> clientExtensionResults;

  /// The authenticator attachment modality used.
  final String? authenticatorAttachment;

  /// Serializes this result to a JSON map.
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{
      'id': id,
      'rawId': rawId,
      'type': type,
      'response': response.toJson(),
      'clientExtensionResults': clientExtensionResults,
    };
    if (authenticatorAttachment != null) {
      json['authenticatorAttachment'] = authenticatorAttachment;
    }
    return json;
  }
}
