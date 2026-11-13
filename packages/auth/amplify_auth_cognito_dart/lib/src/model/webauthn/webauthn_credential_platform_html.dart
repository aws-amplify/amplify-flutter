// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:typed_data';

import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';
import 'package:amplify_auth_cognito_dart/src/util/base64url_encode.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:web/web.dart' as web;

/// Web implementation of [WebAuthnCredentialPlatform] using the
/// Web Authentication API via `package:web` JS interop.
///
/// Uses `navigator.credentials.create()` and `navigator.credentials.get()`
/// to perform WebAuthn registration and assertion ceremonies in the browser.
class WebAuthnCredentialPlatformImpl implements WebAuthnCredentialPlatform {
  /// Creates a web [WebAuthnCredentialPlatform].
  const WebAuthnCredentialPlatformImpl();

  @override
  Future<bool> isPasskeySupported() async {
    try {
      // Check that the CredentialsContainer API exists on navigator.
      // ignore: unnecessary_null_comparison, dead_code
      if (web.window.navigator.credentials == null) return false;

      // Check that PublicKeyCredential is available in the global scope.
      return globalContext.getProperty<JSAny?>('PublicKeyCredential'.toJS) !=
          null;
    } on Object {
      return false;
    }
  }

  @override
  Future<String> createCredential(String optionsJson) async {
    try {
      final options = json.decode(optionsJson) as Map<String, dynamic>;
      final publicKeyOptions = options.containsKey('publicKey')
          ? options['publicKey'] as Map<String, dynamic>
          : options;

      // Convert base64url fields to ArrayBuffer.
      _convertField(publicKeyOptions, 'challenge');
      _convertUserIdField(publicKeyOptions);
      _convertCredentialIds(publicKeyOptions, 'excludeCredentials');

      final jsOptions =
          <String, dynamic>{'publicKey': publicKeyOptions}.jsify() as JSObject;

      final credential = await web.window.navigator.credentials
          .create(jsOptions as web.CredentialCreationOptions)
          .toDart;

      if (credential == null) {
        throw const PasskeyRegistrationFailedException(
          'Credential creation returned null',
        );
      }

      final pkCredential = credential as web.PublicKeyCredential;
      final response =
          pkCredential.response as web.AuthenticatorAttestationResponse;

      final attestationResponse = <String, dynamic>{
        'clientDataJSON': _arrayBufferToBase64url(response.clientDataJSON),
        'attestationObject': _arrayBufferToBase64url(
          response.attestationObject,
        ),
        'transports': response
            .getTransports()
            .toDart
            .map((t) => t.toDart)
            .toList(),
        'authenticatorData': _arrayBufferToBase64url(
          response.getAuthenticatorData(),
        ),
        'publicKeyAlgorithm': response.getPublicKeyAlgorithm(),
      };

      final publicKey = response.getPublicKey();
      if (publicKey != null) {
        attestationResponse['publicKey'] = _arrayBufferToBase64url(publicKey);
      }

      final result = <String, dynamic>{
        'id': pkCredential.id,
        'rawId': _arrayBufferToBase64url(pkCredential.rawId),
        'type': pkCredential.type,
        'response': attestationResponse,
        'authenticatorAttachment': pkCredential.authenticatorAttachment,
        'clientExtensionResults': <String, dynamic>{},
      };

      return json.encode(result);
    } on PasskeyException {
      rethrow;
    } on Object catch (error) {
      throw _mapDomException(error, isCreate: true);
    }
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    try {
      final options = json.decode(optionsJson) as Map<String, dynamic>;
      final publicKeyOptions = options.containsKey('publicKey')
          ? options['publicKey'] as Map<String, dynamic>
          : options;

      // Convert base64url fields to ArrayBuffer.
      _convertField(publicKeyOptions, 'challenge');
      _convertCredentialIds(publicKeyOptions, 'allowCredentials');

      final jsOptions =
          <String, dynamic>{'publicKey': publicKeyOptions}.jsify() as JSObject;

      final credential = await web.window.navigator.credentials
          .get(jsOptions as web.CredentialRequestOptions)
          .toDart;

      if (credential == null) {
        throw const PasskeyAssertionFailedException(
          'Credential retrieval returned null',
        );
      }

      final pkCredential = credential as web.PublicKeyCredential;
      final response =
          pkCredential.response as web.AuthenticatorAssertionResponse;

      final result = <String, dynamic>{
        'id': _arrayBufferToBase64url(pkCredential.rawId),
        'rawId': _arrayBufferToBase64url(pkCredential.rawId),
        'type': 'public-key',
        'response': <String, dynamic>{
          'clientDataJSON': _arrayBufferToBase64url(response.clientDataJSON),
          'authenticatorData': _arrayBufferToBase64url(
            response.authenticatorData,
          ),
          'signature': _arrayBufferToBase64url(response.signature),
          'userHandle': response.userHandle != null
              ? _arrayBufferToBase64url(response.userHandle!)
              : null,
        },
        'clientExtensionResults':
            <String, dynamic>{}, // Required by PasskeyGetResult.fromJson
        'authenticatorAttachment': 'platform',
      };

      return json.encode(result);
    } on PasskeyException {
      rethrow;
    } on Object catch (error) {
      throw _mapDomException(error, isCreate: false);
    }
  }

  /// Converts a base64url-encoded field in [map] to a JS ArrayBuffer
  /// in place, which is required by the WebAuthn browser API.
  void _convertField(Map<String, dynamic> map, String key) {
    final value = map[key];
    if (value is String) {
      map[key] = _base64urlToArrayBuffer(value);
    }
  }

  /// Converts `user.id` from base64url to ArrayBuffer.
  void _convertUserIdField(Map<String, dynamic> options) {
    final user = options['user'];
    if (user is Map<String, dynamic>) {
      _convertField(user, 'id');
    }
  }

  /// Converts credential ID fields in `excludeCredentials` or
  /// `allowCredentials` from base64url to ArrayBuffer.
  void _convertCredentialIds(Map<String, dynamic> options, String key) {
    final credentials = options[key];
    if (credentials is List) {
      for (final credential in credentials) {
        if (credential is Map<String, dynamic>) {
          _convertField(credential, 'id');
        }
      }
    }
  }

  /// Decodes a base64url string to a JS ArrayBuffer.
  JSArrayBuffer _base64urlToArrayBuffer(String base64url) {
    final bytes = base64UrlDecode(base64url);
    return Uint8List.fromList(bytes).buffer.toJS;
  }

  /// Encodes a JS ArrayBuffer to a base64url string.
  String _arrayBufferToBase64url(JSArrayBuffer buffer) {
    final bytes = buffer.toDart.asUint8List();
    return base64UrlEncode(bytes);
  }

  /// Maps a JS DOMException (or other error) to the appropriate
  /// [PasskeyException] subtype.
  PasskeyException _mapDomException(Object error, {required bool isCreate}) {
    final errorMessage = error.toString();
    String? domExceptionName;

    // Try to extract DOMException name from JS error.
    // ignore: invalid_runtime_check_with_js_interop_types
    if (error is JSObject) {
      try {
        final name = (error as web.DOMException).name;
        domExceptionName = name;
      } on Object {
        // Not a DOMException, fall through.
      }
    }

    if (domExceptionName != null) {
      switch (domExceptionName) {
        case 'NotAllowedError':
        case 'AbortError':
          return PasskeyCancelledException(
            'User cancelled the passkey operation: $errorMessage',
          );
        case 'SecurityError':
          return PasskeyRpMismatchException(
            'Relying party mismatch: $errorMessage',
          );
        case 'InvalidStateError':
        case 'ConstraintError':
          return PasskeyRegistrationFailedException(
            'Credential operation failed: $errorMessage',
          );
      }
    }

    // Default error based on operation type.
    if (isCreate) {
      return PasskeyRegistrationFailedException(
        'Failed to create credential: $errorMessage',
      );
    }
    return PasskeyAssertionFailedException(
      'Failed to get credential: $errorMessage',
    );
  }
}
