// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/windows/webauthn_bindings.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:ffi/ffi.dart';

/// Logger for Windows WebAuthn platform operations.
final AmplifyLogger _logger = AmplifyLogger.category(
  Category.auth,
).createChild('WindowsWebAuthn');

/// {@template amplify_auth_cognito.windows_webauthn_platform}
/// Windows implementation of [WebAuthnCredentialPlatform] using the
/// Windows Hello FIDO2 API (`webauthn.dll`) via FFI.
///
/// Uses JSON pass-through mode available in Windows WebAuthn API
/// version 4+ for both registration and assertion ceremonies. The JSON
/// options from Cognito are passed directly to the native API, and the
/// JSON response is read directly from the result struct.
///
/// This ensures the API handles clientDataJSON generation internally for
/// both ceremonies, guaranteeing consistency between registration and
/// assertion.
/// {@endtemplate}
class WindowsWebAuthnPlatform implements WebAuthnCredentialPlatform {
  /// {@macro amplify_auth_cognito.windows_webauthn_platform}
  ///
  /// Accepts an optional [WebAuthnBindings] for testability.
  WindowsWebAuthnPlatform({WebAuthnBindings? bindings})
    : _bindings = bindings ?? WebAuthnBindings();

  final WebAuthnBindings _bindings;

  /// Cached API version number.
  late final int _apiVersion = _bindings.getApiVersionNumber();

  @override
  Future<bool> isPasskeySupported() async {
    _logger.debug('isPasskeySupported: checking Windows WebAuthn support...');
    try {
      _logger.debug(
        'isPasskeySupported: API version = $_apiVersion '
        '(required >= $WEBAUTHN_API_VERSION_4)',
      );

      // Check if the API version supports JSON pass-through (version 4+).
      //
      // We intentionally do NOT use IsUserVerifyingPlatformAuthenticatorAvailable
      // as the sole check. That API returns false on machines where Windows Hello
      // is configured with PIN only (no biometrics), even though passkeys work
      // perfectly via the Windows Hello PIN prompt.
      final supported = _apiVersion >= WEBAUTHN_API_VERSION_4;
      _logger.debug('isPasskeySupported: result=$supported');
      return supported;
    } on Exception catch (e, st) {
      _logger.error('isPasskeySupported: exception caught', e, st);
      return false;
    }
  }

  @override
  Future<String> createCredential(String optionsJson) async {
    _logger.debug('createCredential: BEGIN');

    final hWnd = _getWindowHandle();
    _logger.debug('createCredential: hWnd=0x${hWnd.toRadixString(16)}');
    if (hWnd == 0) {
      _logger.error('createCredential: No foreground window (hWnd=0)');
      throw const PasskeyRegistrationFailedException(
        'No active window available for WebAuthn ceremony',
        recoverySuggestion:
            'Ensure the application window is in the foreground.',
      );
    }

    _logger.debug('createCredential: API version=$_apiVersion');
    if (_apiVersion < WEBAUTHN_API_VERSION_4) {
      _logger.error(
        'createCredential: API version $_apiVersion < '
        '$WEBAUTHN_API_VERSION_4, passkeys not supported',
      );
      throw const PasskeyNotSupportedException(
        'Windows WebAuthn API version 4+ is required for passkey support',
      );
    }

    final optionsMap = json.decode(optionsJson) as Map<String, dynamic>;

    // Extract required fields for the C structs.
    final rp = optionsMap['rp'] as Map<String, dynamic>;
    final rpId = rp['id'] as String? ?? '';
    final rpName = rp['name'] as String? ?? '';
    final user = optionsMap['user'] as Map<String, dynamic>;
    final userName = user['name'] as String? ?? '';
    final userDisplayName = user['displayName'] as String? ?? '';
    final userId = user['id'] as String? ?? '';
    // The user ID from Cognito is base64url-encoded. We must decode it to
    // raw bytes before passing to the authenticator. If we pass the UTF-8
    // encoding of the base64url string instead, the authenticator stores
    // the wrong bytes as the user handle. During assertion, the API returns
    // these wrong bytes (re-encoded as base64url), causing a mismatch with
    // what Cognito stored — resulting in "Credential does not exist".
    final userIdBytes = _base64UrlDecode(userId);
    final pubKeyCredParams =
        (optionsMap['pubKeyCredParams'] as List<dynamic>?) ?? [];

    _logger.debug('createCredential: rpId="$rpId", userName="$userName"');

    // Extract the challenge for building proper clientDataJSON.
    final challenge = optionsMap['challenge'] as String? ?? '';

    // Encode the full options JSON as UTF-8 for pass-through.
    final optionsJsonBytes = utf8.encode(optionsJson);

    // Build proper clientDataJSON per the WebAuthn specification.
    final clientDataJson = json.encode({
      'type': 'webauthn.create',
      'challenge': challenge,
      'origin': 'https://$rpId',
      'crossOrigin': false,
    });
    final clientDataJsonBytes = utf8.encode(clientDataJson);

    final arena = Arena();
    Pointer pAttestation = nullptr;
    try {
      // --- RP Entity ---
      final rpInfo = arena<Uint8>(RpEntityOffsets.structSize);
      _zeroMemory(rpInfo, RpEntityOffsets.structSize);
      rpInfo.cast<Uint32>().value = WEBAUTHN_RP_ENTITY_INFORMATION_VERSION;
      _writePointerAt(
        rpInfo,
        RpEntityOffsets.pwszId,
        rpId.toNativeUtf16(allocator: arena).cast(),
      );
      _writePointerAt(
        rpInfo,
        RpEntityOffsets.pwszName,
        rpName.toNativeUtf16(allocator: arena).cast(),
      );

      // --- User Entity ---
      final userInfo = arena<Uint8>(UserEntityOffsets.structSize);
      _zeroMemory(userInfo, UserEntityOffsets.structSize);
      userInfo.cast<Uint32>().value = WEBAUTHN_USER_ENTITY_INFORMATION_VERSION;
      _writeUint32At(userInfo, UserEntityOffsets.cbId, userIdBytes.length);
      final pbUserId = arena<Uint8>(userIdBytes.length);
      pbUserId.asTypedList(userIdBytes.length).setAll(0, userIdBytes);
      _writePointerAt(userInfo, UserEntityOffsets.pbId, pbUserId);
      _writePointerAt(
        userInfo,
        UserEntityOffsets.pwszName,
        userName.toNativeUtf16(allocator: arena).cast(),
      );
      _writePointerAt(
        userInfo,
        UserEntityOffsets.pwszDisplayName,
        userDisplayName.toNativeUtf16(allocator: arena).cast(),
      );

      // --- COSE Credential Parameters ---
      final paramCount = pubKeyCredParams.length;
      final credParamsArray = paramCount > 0
          ? arena<Uint8>(CoseCredentialParameterOffsets.structSize * paramCount)
          : nullptr.cast<Uint8>();
      final credTypeStr = WEBAUTHN_CREDENTIAL_TYPE_PUBLIC_KEY.toNativeUtf16(
        allocator: arena,
      );
      for (var i = 0; i < paramCount; i++) {
        final param = pubKeyCredParams[i] as Map<String, dynamic>;
        final alg = param['alg'] as int? ?? -7; // ES256 default
        final offset = i * CoseCredentialParameterOffsets.structSize;
        final entry = credParamsArray + offset;
        _zeroMemory(entry, CoseCredentialParameterOffsets.structSize);
        entry.cast<Uint32>().value = WEBAUTHN_COSE_CREDENTIAL_PARAMETER_VERSION;
        _writePointerAt(
          entry,
          CoseCredentialParameterOffsets.pwszCredentialType,
          credTypeStr.cast(),
        );
        _writeInt32At(entry, CoseCredentialParameterOffsets.lAlg, alg);
      }

      final credParams = arena<Uint8>(
        CoseCredentialParametersOffsets.structSize,
      );
      _zeroMemory(credParams, CoseCredentialParametersOffsets.structSize);
      credParams.cast<Uint32>().value = paramCount;
      _writePointerAt(
        credParams,
        CoseCredentialParametersOffsets.pCredentialParameters,
        credParamsArray,
      );

      // --- Client Data ---
      final clientData = arena<Uint8>(ClientDataOffsets.structSize);
      _zeroMemory(clientData, ClientDataOffsets.structSize);
      clientData.cast<Uint32>().value = WEBAUTHN_CLIENT_DATA_VERSION;
      _writeUint32At(
        clientData,
        ClientDataOffsets.cbClientDataJSON,
        clientDataJsonBytes.length,
      );
      final pbClientData = arena<Uint8>(clientDataJsonBytes.length);
      pbClientData
          .asTypedList(clientDataJsonBytes.length)
          .setAll(0, clientDataJsonBytes);
      _writePointerAt(
        clientData,
        ClientDataOffsets.pbClientDataJSON,
        pbClientData,
      );
      _writePointerAt(
        clientData,
        ClientDataOffsets.pwszHashAlgId,
        WEBAUTHN_HASH_ALGORITHM_SHA_256.toNativeUtf16(allocator: arena).cast(),
      );

      // --- MakeCredential Options (with JSON pass-through) ---
      final options = arena<Uint8>(MakeCredentialOptionsOffsets.structSize);
      _zeroMemory(options, MakeCredentialOptionsOffsets.structSize);
      options.cast<Uint32>().value = WEBAUTHN_MAKE_CREDENTIAL_OPTIONS_VERSION;
      _writeUint32At(
        options,
        MakeCredentialOptionsOffsets.dwTimeoutMilliseconds,
        120000,
      );

      // Require a resident/discoverable credential so the passkey is stored
      // on the device and can be used for sign-in later.
      _writeUint32At(
        options,
        MakeCredentialOptionsOffsets.bRequireResidentKey,
        1, // TRUE
      );

      // Require user verification (PIN, biometric, etc.)
      _writeUint32At(
        options,
        MakeCredentialOptionsOffsets.dwUserVerificationRequirement,
        1, // WEBAUTHN_USER_VERIFICATION_REQUIREMENT_REQUIRED
      );

      // JSON pass-through fields
      _writeUint32At(
        options,
        MakeCredentialOptionsOffsets.cbJsonOptions,
        optionsJsonBytes.length,
      );
      final pbJsonOptions = arena<Uint8>(optionsJsonBytes.length);
      pbJsonOptions
          .asTypedList(optionsJsonBytes.length)
          .setAll(0, optionsJsonBytes);
      _writePointerAt(
        options,
        MakeCredentialOptionsOffsets.pbJsonOptions,
        pbJsonOptions,
      );

      // --- Call MakeCredential ---
      _logger.debug(
        'createCredential: calling '
        'WebAuthNAuthenticatorMakeCredential (JSON pass-through v7)...',
      );

      // Start a background monitor that will find the Windows Security
      // dialog and bring it to the foreground. This is needed because
      // the dialog may appear behind the application window.
      // Pass the Flutter window handle so the monitor can push it behind
      // the dialog when the user clicks on it.
      final stopMonitor = await _startDialogMonitor(hWnd);

      // Disable the Flutter window to simulate modal dialog behavior.
      // This prevents the user from interacting with the app while
      // the Windows Security dialog is open.
      _bindings.enableWindow(hWnd, 0); // FALSE = disable

      final ppResult = arena<Pointer>();
      int hr;
      try {
        hr = _bindings.makeCredential(
          hWnd,
          rpInfo.cast(),
          userInfo.cast(),
          credParams.cast(),
          clientData.cast(),
          options.cast(),
          ppResult,
        );
      } finally {
        // Stop the dialog monitor before re-enabling the window.
        stopMonitor();

        // Re-enable the Flutter window and force it to the foreground.
        // We must use the AttachThreadInput trick because after the
        // WebAuthn dialog closes, the foreground activation may have
        // transferred to another process (e.g., the terminal that
        // launched the Flutter app). A bare SetForegroundWindow call
        // would fail in that case.
        _bindings.enableWindow(hWnd, 1); // TRUE = enable
        _ensureForeground(hWnd);
      }

      _logger.debug(
        'createCredential: MakeCredential returned '
        'HRESULT=0x${hr.toRadixString(16).padLeft(8, '0')}',
      );

      if (hr != S_OK) {
        _logger.error(
          'createCredential: MakeCredential FAILED with '
          'HRESULT=0x${hr.toRadixString(16).padLeft(8, '0')}',
        );
        _throwHResultError(hr, isRegistration: true);
      }

      pAttestation = ppResult.value;
      // --- Read JSON response from attestation struct ---
      // With JSON pass-through, the API populates the registration
      // response JSON at known offsets in the attestation struct.
      // We pass this through to Cognito WITHOUT modification to ensure
      // the clientDataJSON in the response matches what the API used
      // internally for the attestation hash.
      final cbJson =
          (pAttestation.cast<Uint8>() +
                  CredentialAttestationOffsets.cbRegistrationResponseJSON)
              .cast<Uint32>()
              .value;
      final pbJson = _readPointerAt(
        pAttestation.cast<Uint8>(),
        CredentialAttestationOffsets.pbRegistrationResponseJSON,
      );

      if (cbJson == 0 || pbJson == nullptr) {
        _logger.error(
          'createCredential: empty registration response '
          '(cbJson=$cbJson, pbJson=$pbJson)',
        );
        throw const PasskeyRegistrationFailedException(
          'Windows WebAuthn returned empty registration response',
        );
      }

      final jsonString = utf8.decode(
        Uint8List.fromList(pbJson.cast<Uint8>().asTypedList(cbJson)),
      );

      _logger.debug(
        'createCredential: received registration response '
        '(${jsonString.length} chars)',
      );

      // Ensure clientExtensionResults is present (required by Dart model)
      final result = _ensureClientExtensionResults(jsonString);
      _logger.debug('createCredential: END (success)');
      return result;
    } on Exception catch (e, st) {
      _logger.error('createCredential: failed', e, st);
      rethrow;
    } finally {
      if (pAttestation != nullptr) {
        _bindings.freeCredentialAttestation(pAttestation);
      }
      arena.releaseAll();
    }
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    _logger.debug('getCredential: BEGIN');

    final hWnd = _getWindowHandle();
    if (hWnd == 0) {
      _logger.error('getCredential: No foreground window (hWnd=0)');
      throw const PasskeyAssertionFailedException(
        'No active window available for WebAuthn ceremony',
        recoverySuggestion:
            'Ensure the application window is in the foreground.',
      );
    }

    _logger.debug('getCredential: API version=$_apiVersion');
    if (_apiVersion < WEBAUTHN_API_VERSION_4) {
      _logger.error(
        'getCredential: API version $_apiVersion < '
        '$WEBAUTHN_API_VERSION_4, passkeys not supported',
      );
      throw const PasskeyNotSupportedException(
        'Windows WebAuthn API version 4+ is required for passkey support',
      );
    }

    final optionsMap = json.decode(optionsJson) as Map<String, dynamic>;
    final rpId = optionsMap['rpId'] as String? ?? '';
    _logger.debug('getCredential: rpId="$rpId"');

    // Extract the challenge for building proper clientDataJSON.
    final challenge = optionsMap['challenge'] as String? ?? '';

    // Build proper clientDataJSON per the WebAuthn specification.
    final clientDataJson = json.encode({
      'type': 'webauthn.get',
      'challenge': challenge,
      'origin': 'https://$rpId',
      'crossOrigin': false,
    });
    final clientDataJsonBytes = utf8.encode(clientDataJson);

    // Encode the full options JSON as UTF-8 for pass-through.
    final optionsJsonBytes = utf8.encode(optionsJson);

    final arena = Arena();
    Pointer pAssertion = nullptr;
    try {
      // --- Client Data ---
      final clientData = arena<Uint8>(ClientDataOffsets.structSize);
      _zeroMemory(clientData, ClientDataOffsets.structSize);
      clientData.cast<Uint32>().value = WEBAUTHN_CLIENT_DATA_VERSION;
      _writeUint32At(
        clientData,
        ClientDataOffsets.cbClientDataJSON,
        clientDataJsonBytes.length,
      );
      final pbClientData = arena<Uint8>(clientDataJsonBytes.length);
      pbClientData
          .asTypedList(clientDataJsonBytes.length)
          .setAll(0, clientDataJsonBytes);
      _writePointerAt(
        clientData,
        ClientDataOffsets.pbClientDataJSON,
        pbClientData,
      );
      _writePointerAt(
        clientData,
        ClientDataOffsets.pwszHashAlgId,
        WEBAUTHN_HASH_ALGORITHM_SHA_256.toNativeUtf16(allocator: arena).cast(),
      );

      // --- GetAssertion Options (with JSON pass-through) ---
      // Use JSON pass-through mode (version 7) to match the registration
      // ceremony. This ensures the API handles clientDataJSON generation
      // internally for both ceremonies, guaranteeing consistency.
      final options = arena<Uint8>(GetAssertionOptionsOffsets.structSize);
      _zeroMemory(options, GetAssertionOptionsOffsets.structSize);
      options.cast<Uint32>().value = WEBAUTHN_GET_ASSERTION_OPTIONS_VERSION;
      _writeUint32At(
        options,
        GetAssertionOptionsOffsets.dwTimeoutMilliseconds,
        120000,
      );

      // JSON pass-through fields
      _writeUint32At(
        options,
        GetAssertionOptionsOffsets.cbJsonOptions,
        optionsJsonBytes.length,
      );
      final pbJsonOptions = arena<Uint8>(optionsJsonBytes.length);
      pbJsonOptions
          .asTypedList(optionsJsonBytes.length)
          .setAll(0, optionsJsonBytes);
      _writePointerAt(
        options,
        GetAssertionOptionsOffsets.pbJsonOptions,
        pbJsonOptions,
      );

      // --- Call GetAssertion ---
      _logger.debug(
        'getCredential: calling '
        'WebAuthNAuthenticatorGetAssertion (JSON pass-through v7)...',
      );

      // Start a background monitor that will find the Windows Security
      // dialog and bring it to the foreground.
      final stopMonitor = await _startDialogMonitor(hWnd);

      // Disable the Flutter window to simulate modal dialog behavior.
      _bindings.enableWindow(hWnd, 0); // FALSE = disable

      final ppResult = arena<Pointer>();
      final rpIdNative = rpId.toNativeUtf16(allocator: arena);
      int hr;
      try {
        hr = _bindings.getAssertion(
          hWnd,
          rpIdNative,
          clientData.cast(),
          options.cast(),
          ppResult,
        );
      } finally {
        // Stop the dialog monitor before re-enabling the window.
        stopMonitor();

        // Re-enable the Flutter window and force it to the foreground.
        // We must use the AttachThreadInput trick because after the
        // WebAuthn dialog closes, the foreground activation may have
        // transferred to another process (e.g., the terminal that
        // launched the Flutter app). A bare SetForegroundWindow call
        // would fail in that case.
        _bindings.enableWindow(hWnd, 1); // TRUE = enable
        _ensureForeground(hWnd);
      }

      _logger.debug(
        'getCredential: GetAssertion returned '
        'HRESULT=0x${hr.toRadixString(16).padLeft(8, '0')}',
      );

      if (hr != S_OK) {
        _logger.error(
          'getCredential: GetAssertion FAILED with '
          'HRESULT=0x${hr.toRadixString(16).padLeft(8, '0')}',
        );
        _throwHResultError(hr, isRegistration: false);
      }

      pAssertion = ppResult.value;

      // --- Try to read JSON pass-through response from assertion struct ---
      // The WEBAUTHN_ASSERTION struct (version 5+) should contain
      // cbAuthenticationResponseJSON / pbAuthenticationResponseJSON fields.
      // Try multiple candidate offsets since the exact position depends on
      // the struct version and platform.
      String? jsonPassThroughResponse;
      for (final candidateOffset in [136, 152, 160, 168]) {
        try {
          final cbCandidate = (pAssertion.cast<Uint8>() + candidateOffset)
              .cast<Uint32>()
              .value;
          if (cbCandidate > 50 && cbCandidate < 10000) {
            final pbCandidate = _readPointerAt(
              pAssertion.cast<Uint8>(),
              candidateOffset + 8, // pointer follows DWORD + 4 padding
            );
            if (pbCandidate != nullptr) {
              final candidateStr = utf8.decode(
                Uint8List.fromList(
                  pbCandidate.cast<Uint8>().asTypedList(cbCandidate),
                ),
              );
              // Check if this is a full AuthenticationResponseJSON
              // (contains "id" and "response" keys) vs just clientDataJSON
              if (candidateStr.contains('"id"') &&
                  candidateStr.contains('"response"')) {
                jsonPassThroughResponse = candidateStr;
                _logger.debug(
                  'getCredential: found JSON response '
                  'at offset $candidateOffset',
                );
                break;
              }
            }
          }
        } on Object catch (e) {
          _logger.debug(
            'getCredential: candidate[$candidateOffset] '
            'failed: $e',
          );
        }
      }

      // If we found a valid JSON pass-through response, use it directly.
      if (jsonPassThroughResponse != null) {
        final result = _ensureClientExtensionResults(jsonPassThroughResponse);
        _logger.debug('getCredential: END (success, JSON pass-through)');
        return result;
      }

      // --- Fallback: build response from raw struct fields ---
      _logger.debug(
        'getCredential: no JSON pass-through response found, '
        'building response from raw struct fields',
      );

      // The WEBAUTHN_ASSERTION struct layout (version 6, 64-bit):
      //   0: DWORD dwVersion
      //   4: DWORD cbAuthenticatorData
      //   8: PBYTE pbAuthenticatorData
      //  16: DWORD cbSignature
      //  24: PBYTE pbSignature
      //  32: WEBAUTHN_CREDENTIAL {
      //        32: DWORD dwVersion
      //        36: DWORD cbId
      //        40: PBYTE pbId
      //        48: LPCWSTR pwszCredentialType
      //      } (ends at 56)
      //  56: DWORD cbUserId
      //  64: PBYTE pbUserId

      // Read authenticatorData
      final cbAuthData = (pAssertion.cast<Uint8>() + 4).cast<Uint32>().value;
      final pbAuthData = _readPointerAt(pAssertion.cast<Uint8>(), 8);
      _logger.debug('getCredential: cbAuthenticatorData=$cbAuthData');

      // Read signature
      final cbSignature = (pAssertion.cast<Uint8>() + 16).cast<Uint32>().value;
      final pbSignature = _readPointerAt(pAssertion.cast<Uint8>(), 24);
      _logger.debug('getCredential: cbSignature=$cbSignature');

      // Read credential ID from embedded WEBAUTHN_CREDENTIAL
      final cbCredentialId = (pAssertion.cast<Uint8>() + 36)
          .cast<Uint32>()
          .value;
      final pbCredentialId = _readPointerAt(pAssertion.cast<Uint8>(), 40);
      _logger.debug('getCredential: cbCredentialId=$cbCredentialId');

      if (cbAuthData == 0 ||
          pbAuthData == nullptr ||
          cbSignature == 0 ||
          pbSignature == nullptr ||
          cbCredentialId == 0 ||
          pbCredentialId == nullptr) {
        _logger.error(
          'getCredential: missing assertion data '
          '(authData=$cbAuthData, sig=$cbSignature, '
          'credId=$cbCredentialId)',
        );
        throw const PasskeyAssertionFailedException(
          'Windows WebAuthn returned incomplete assertion data',
        );
      }

      // Read raw bytes
      final authDataBytes = Uint8List.fromList(
        pbAuthData.cast<Uint8>().asTypedList(cbAuthData),
      );
      final signatureBytes = Uint8List.fromList(
        pbSignature.cast<Uint8>().asTypedList(cbSignature),
      );
      final credentialIdBytes = Uint8List.fromList(
        pbCredentialId.cast<Uint8>().asTypedList(cbCredentialId),
      );

      // Base64url encode (no padding)
      final credentialIdB64 = _base64UrlEncode(credentialIdBytes);
      final authDataB64 = _base64UrlEncode(authDataBytes);
      final signatureB64 = _base64UrlEncode(signatureBytes);
      final clientDataB64 = _base64UrlEncode(
        Uint8List.fromList(clientDataJsonBytes),
      );

      // Read userId if available
      final cbUserId = (pAssertion.cast<Uint8>() + 56).cast<Uint32>().value;
      String? userHandleB64;
      if (cbUserId > 0) {
        final pbUserId = _readPointerAt(pAssertion.cast<Uint8>(), 64);
        if (pbUserId != nullptr) {
          final userIdBytes = Uint8List.fromList(
            pbUserId.cast<Uint8>().asTypedList(cbUserId),
          );
          userHandleB64 = _base64UrlEncode(userIdBytes);
        }
      }

      // Build the full PublicKeyCredential JSON response
      final responseMap = <String, dynamic>{
        'id': credentialIdB64,
        'rawId': credentialIdB64,
        'type': 'public-key',
        'authenticatorAttachment': 'platform',
        'response': <String, dynamic>{
          'authenticatorData': authDataB64,
          'signature': signatureB64,
          'clientDataJSON': clientDataB64,
          // ignore: use_null_aware_elements
          if (userHandleB64 != null) 'userHandle': userHandleB64,
        },
        'clientExtensionResults': <String, dynamic>{},
      };

      final result = json.encode(responseMap);
      _logger.debug('getCredential: END (success, raw struct fallback)');
      return result;
    } on Exception catch (e, st) {
      _logger.error('getCredential: failed', e, st);
      rethrow;
    } finally {
      if (pAssertion != nullptr) {
        _bindings.freeAssertion(pAssertion);
      }
      arena.releaseAll();
    }
  }

  /// Returns the Flutter application's top-level window handle and
  /// prepares the system to allow the WebAuthn dialog to appear in
  /// the foreground.
  ///
  /// The approach follows the recommended pattern for calling Windows
  /// WebAuthn APIs from non-browser applications:
  ///
  /// 1. **Find the Flutter window** using `FindWindowW` with the
  ///    well-known class name `FLUTTER_RUNNER_WIN32_WINDOW`.
  /// 2. **Get the top-level window** using `GetAncestor(GA_ROOT)`.
  /// 3. **Force the window to the foreground** using the
  ///    `AttachThreadInput` trick (required when the calling thread
  ///    is different from the window's owning thread).
  /// 4. **Grant foreground permission** to the Windows Hello system
  ///    process via `AllowSetForegroundWindow(ASFW_ANY)`.
  int _getWindowHandle() {
    // Step 1: Find the Flutter window by its well-known class name.
    final classNamePtr = kFlutterWindowClassName.toNativeUtf16();
    try {
      final flutterHwnd = _bindings.findWindowW(classNamePtr, nullptr.cast());
      _logger.debug(
        '_getWindowHandle: FindWindowW('
        '$kFlutterWindowClassName) = '
        '0x${flutterHwnd.toRadixString(16)}',
      );

      int hWnd;
      if (flutterHwnd != 0) {
        // Step 2: Get the top-level (root) window. The Flutter view
        // HWND may be a child window; we need the top-level parent.
        final rootHwnd = _bindings.getAncestor(flutterHwnd, GA_ROOT);
        hWnd = rootHwnd != 0 ? rootHwnd : flutterHwnd;
        _logger.debug(
          '_getWindowHandle: GetAncestor(GA_ROOT) = '
          '0x${rootHwnd.toRadixString(16)}, using= '
          '0x${hWnd.toRadixString(16)}',
        );
      } else {
        // Fallback: try GetForegroundWindow / GetActiveWindow.
        final foreground = _bindings.getForegroundWindow();
        final active = _bindings.getActiveWindow();
        hWnd = foreground != 0 ? foreground : active;
        _logger.debug(
          '_getWindowHandle: FindWindowW failed, '
          'fallback foreground=0x${foreground.toRadixString(16)}, '
          'active=0x${active.toRadixString(16)}, '
          'using=0x${hWnd.toRadixString(16)}',
        );
      }

      if (hWnd != 0) {
        // Step 3: Force the window to the foreground using the
        // AttachThreadInput trick. This is necessary because Windows
        // restricts SetForegroundWindow to the thread that owns the
        // foreground window. By temporarily attaching our thread's
        // input to the foreground window's thread, we gain permission
        // to call SetForegroundWindow.
        _ensureForeground(hWnd);

        // Step 4: Allow ANY process to call SetForegroundWindow.
        // This grants the Windows Hello system process (which creates
        // the security dialog) permission to bring its window to the
        // foreground.
        final asfwResult = _bindings.allowSetForegroundWindow(ASFW_ANY);
        _logger.debug(
          '_getWindowHandle: '
          'AllowSetForegroundWindow(ASFW_ANY)=$asfwResult',
        );
      }

      return hWnd;
    } finally {
      calloc.free(classNamePtr);
    }
  }

  /// Forces the specified window to the foreground using multiple
  /// techniques to work around Windows' foreground window restrictions.
  ///
  /// Uses the `AttachThreadInput` trick: temporarily attaches the
  /// calling thread's input processing to the foreground window's
  /// thread, which allows `SetForegroundWindow` to succeed even when
  /// called from a non-foreground thread.
  void _ensureForeground(int hWnd) {
    // Get the thread that owns the current foreground window.
    final currentForeground = _bindings.getForegroundWindow();
    final foregroundThreadId = currentForeground != 0
        ? _bindings.getWindowThreadProcessId(currentForeground, nullptr.cast())
        : 0;
    final currentThreadId = _bindings.getCurrentThreadId();

    _logger.debug(
      '_ensureForeground: currentForeground= '
      '0x${currentForeground.toRadixString(16)}, '
      'foregroundThread=$foregroundThreadId, '
      'currentThread=$currentThreadId',
    );

    final needsAttach =
        foregroundThreadId != 0 && foregroundThreadId != currentThreadId;

    if (needsAttach) {
      // Attach our thread's input to the foreground thread's input.
      // This allows us to call SetForegroundWindow successfully.
      _bindings.attachThreadInput(currentThreadId, foregroundThreadId, 1);
      _logger.debug('_ensureForeground: AttachThreadInput (attach)');
    }

    try {
      // Show the window if it's minimized.
      _bindings.showWindow(hWnd, SW_RESTORE);

      // Bring the window to the foreground.
      final sfwResult = _bindings.setForegroundWindow(hWnd);
      _logger.debug('_ensureForeground: SetForegroundWindow=$sfwResult');

      // Also bring to top of Z-order as a fallback.
      _bindings.bringWindowToTop(hWnd);
    } finally {
      if (needsAttach) {
        // Detach the thread input.
        _bindings.attachThreadInput(currentThreadId, foregroundThreadId, 0);
        _logger.debug('_ensureForeground: AttachThreadInput (detach)');
      }
    }
  }

  /// Starts a background isolate that monitors for the Windows Security
  /// dialog and forces it to stay in the foreground.
  ///
  /// The WebAuthn API creates a "Windows Security" dialog in a separate
  /// system process. On some machines, this dialog appears behind the
  /// application window. This monitor polls for the dialog using
  /// `FindWindowW` and continuously enforces its topmost Z-order using
  /// `SetWindowPos(HWND_TOPMOST)`.
  ///
  /// [flutterHwnd] is the Flutter application's top-level window handle,
  /// used to detect when the user clicks on the app window and immediately
  /// push the dialog back to the foreground.
  ///
  /// Returns a function that stops the monitor when called.
  Future<void Function()> _startDialogMonitor(int flutterHwnd) async {
    final receivePort = ReceivePort();
    final isolate = await Isolate.spawn(_dialogMonitorEntry, [
      receivePort.sendPort,
      flutterHwnd,
    ]);

    // Wait for the isolate to send back its SendPort for control.
    final controlPort = await receivePort.first as SendPort;

    return () {
      // Send a stop signal to the monitor isolate.
      controlPort.send('stop');
      isolate.kill(priority: Isolate.immediate);
      receivePort.close();
    };
  }

  /// Entry point for the dialog monitor isolate.
  ///
  /// Polls for the "Windows Security" dialog window every 50ms.
  /// Continuously enforces the dialog's topmost Z-order so it stays
  /// in front even when the user clicks on the Flutter window.
  static void _dialogMonitorEntry(List<dynamic> args) {
    final mainPort = args[0] as SendPort;
    final flutterHwnd = args[1] as int;

    final controlReceivePort = ReceivePort();
    mainPort.send(controlReceivePort.sendPort);

    var stopped = false;
    controlReceivePort.listen((message) {
      if (message == 'stop') {
        stopped = true;
        controlReceivePort.close();
      }
    });

    // Load user32.dll in this isolate.
    final user32 = DynamicLibrary.open('user32.dll');
    final findWindowW = user32
        .lookupFunction<FindWindowWNative, FindWindowWDart>('FindWindowW');
    final setForegroundWindow = user32
        .lookupFunction<SetForegroundWindowNative, SetForegroundWindowDart>(
          'SetForegroundWindow',
        );
    final getForegroundWindow = user32
        .lookupFunction<GetForegroundWindowNative, GetForegroundWindowDart>(
          'GetForegroundWindow',
        );
    final showWindow = user32.lookupFunction<ShowWindowNative, ShowWindowDart>(
      'ShowWindow',
    );
    final setWindowPos = user32
        .lookupFunction<SetWindowPosNative, SetWindowPosDart>('SetWindowPos');

    // Load kernel32.dll for Sleep.
    final kernel32 = DynamicLibrary.open('kernel32.dll');
    final sleep = kernel32
        .lookupFunction<
          Void Function(Uint32 dwMilliseconds),
          void Function(int dwMilliseconds)
        >('Sleep');

    // The Windows Security dialog may appear with different titles
    // depending on the operation (PIN entry, passkey selection, etc.).
    // Search for all known title variants.
    final titlePtrs = [
      'Windows Security'.toNativeUtf16(),
      'Sign in'.toNativeUtf16(),
    ];

    try {
      var dialogFound = false;
      var lastDialogHwnd = 0;
      var missingCount = 0;

      // Continuously monitor for the Windows Security dialog.
      // Re-apply HWND_TOPMOST on every cycle to ensure the dialog stays
      // on top. A single SetWindowPos(HWND_TOPMOST) call is not enough
      // because Windows can remove the topmost flag when the user
      // interacts with other windows (e.g., clicking the disabled Flutter
      // window behind the dialog).
      for (var i = 0; i < 600 && !stopped; i++) {
        sleep(50);

        // Look for any Windows Security dialog variant.
        var dialogHwnd = 0;
        for (final titlePtr in titlePtrs) {
          dialogHwnd = findWindowW(nullptr.cast(), titlePtr);
          if (dialogHwnd != 0) break;
        }

        if (dialogHwnd != 0) {
          // Reset the missing counter since we found a dialog.
          missingCount = 0;

          if (!dialogFound || dialogHwnd != lastDialogHwnd) {
            // First time finding a dialog, or a NEW dialog appeared
            // (e.g., passkey selection replaced PIN entry).
            // Bring it to the foreground.
            showWindow(dialogHwnd, SW_RESTORE);
            setForegroundWindow(dialogHwnd);
            dialogFound = true;
            lastDialogHwnd = dialogHwnd;
          }

          // Continuously enforce the dialog's topmost Z-order.
          // This is necessary because:
          // 1. Windows may remove the topmost flag when the user clicks
          //    on the (disabled) Flutter window behind the dialog.
          // 2. The dialog may have child windows (e.g., PIN entry) that
          //    need to stay on top as well.
          setWindowPos(
            dialogHwnd,
            HWND_TOPMOST,
            0,
            0,
            0,
            0,
            SWP_NOMOVE | SWP_NOSIZE | SWP_SHOWWINDOW,
          );

          // If the Flutter window somehow became the foreground window
          // (e.g., user clicked on it), immediately bring the dialog
          // back to the foreground.
          final currentForeground = getForegroundWindow();
          if (currentForeground == flutterHwnd) {
            setForegroundWindow(dialogHwnd);
          }
        } else if (dialogFound) {
          // The dialog was found before but is now gone. However, the
          // WebAuthn flow may show multiple sequential dialogs (e.g.,
          // PIN entry → passkey selection). Wait a grace period before
          // stopping, in case a new dialog appears.
          missingCount++;
          if (missingCount > 20) {
            // Dialog has been gone for ~1 second (20 × 50ms).
            // Safe to assume the flow is complete.
            break;
          }
        }
      }
    } finally {
      for (final titlePtr in titlePtrs) {
        calloc.free(titlePtr);
      }
    }
  }

  /// Maps a Windows HRESULT error code to the appropriate
  /// [PasskeyException] subtype.
  Never _throwHResultError(int hr, {required bool isRegistration}) {
    final hexCode = '0x${hr.toRadixString(16).padLeft(8, '0')}';
    final message = 'Windows WebAuthn error: $hexCode';

    switch (hr) {
      case NTE_USER_CANCELLED:
        throw PasskeyCancelledException(message);
      case NTE_NOT_FOUND:
        throw PasskeyAssertionFailedException(message);
      case NTE_INVALID_PARAMETER:
        if (isRegistration) {
          throw PasskeyRegistrationFailedException(message);
        }
        throw PasskeyAssertionFailedException(message);
      default:
        if (isRegistration) {
          throw PasskeyRegistrationFailedException(message);
        }
        throw PasskeyAssertionFailedException(message);
    }
  }

  // ---------------------------------------------------------------------------
  // Memory helpers
  // ---------------------------------------------------------------------------

  /// Writes a 32-bit unsigned integer at [offset] bytes from [base].
  static void _writeUint32At(Pointer<Uint8> base, int offset, int value) {
    (base + offset).cast<Uint32>().value = value;
  }

  /// Writes a 32-bit signed integer at [offset] bytes from [base].
  static void _writeInt32At(Pointer<Uint8> base, int offset, int value) {
    (base + offset).cast<Int32>().value = value;
  }

  /// Writes a pointer value at [offset] bytes from [base].
  static void _writePointerAt(Pointer<Uint8> base, int offset, Pointer value) {
    (base + offset).cast<Pointer>().value = value;
  }

  /// Reads a pointer value at [offset] bytes from [base].
  static Pointer _readPointerAt(Pointer<Uint8> base, int offset) {
    return (base + offset).cast<Pointer>().value;
  }

  /// Zeroes [size] bytes of memory starting at [base].
  static void _zeroMemory(Pointer<Uint8> base, int size) {
    for (var i = 0; i < size; i++) {
      (base + i).value = 0;
    }
  }

  /// Base64url encodes [bytes] without padding, per RFC 4648 §5.
  static String _base64UrlEncode(Uint8List bytes) {
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  /// Decodes a base64url string (with or without padding) to bytes.
  static Uint8List _base64UrlDecode(String input) {
    var padded = input;
    final remainder = padded.length % 4;
    if (remainder != 0) {
      padded = padded.padRight(padded.length + (4 - remainder), '=');
    }
    return base64Url.decode(padded);
  }

  /// Ensures that the JSON response contains a `clientExtensionResults` field.
  ///
  /// The Windows WebAuthn API v4+ may not include this field, but
  /// PasskeyCreateResult.fromJson and PasskeyGetResult.fromJson require it
  /// (non-nullable field). This function parses the JSON, adds the field if
  /// missing, and returns the updated JSON string.
  static String _ensureClientExtensionResults(String jsonString) {
    try {
      final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
      if (!jsonMap.containsKey('clientExtensionResults')) {
        jsonMap['clientExtensionResults'] = <String, dynamic>{};
      }
      return json.encode(jsonMap);
    } on Object {
      return jsonString;
    }
  }
}
