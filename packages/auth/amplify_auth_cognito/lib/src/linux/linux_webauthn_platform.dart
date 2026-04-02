// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: cascade_invocations

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/linux/libfido2_bindings.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:crypto/crypto.dart';
import 'package:ffi/ffi.dart';

/// Maximum number of FIDO2 devices to discover.
const int _maxDevices = 64;

/// {@template amplify_auth_cognito.linux_webauthn_platform}
/// Linux implementation of [WebAuthnCredentialPlatform] using `libfido2` FFI
/// bindings for USB FIDO2 security key operations.
///
/// When `libfido2.so` is not installed, [isPasskeySupported] returns `false`
/// and all ceremony operations throw [PasskeyNotSupportedException].
/// {@endtemplate}
class LinuxWebAuthnPlatform implements WebAuthnCredentialPlatform {
  /// {@macro amplify_auth_cognito.linux_webauthn_platform}
  ///
  /// Attempts to load `libfido2` and initialize the library. If the library
  /// is not available, the platform operates in degraded mode where all
  /// operations report passkeys as unsupported.
  ///
  /// An optional [bindings] parameter can be provided for testing.
  LinuxWebAuthnPlatform({LibFido2Bindings? bindings}) {
    if (bindings != null) {
      _bindings = bindings;
      return;
    }

    // Try loading libfido2 with version suffixes first, then unversioned.
    // On Linux, the shared library typically has a SONAME like 'libfido2.so.1',
    // while 'libfido2.so' is only present when the -dev package is installed.
    const libraryNames = [
      'libfido2.so.1',  // Common SONAME on most distributions
      'libfido2.so',    // Development symlink (may not exist in runtime-only installations)
    ];

    for (final name in libraryNames) {
      try {
        final lib = DynamicLibrary.open(name);
        _bindings = LibFido2Bindings(lib);
        _bindings!.fidoInit(0);
        return; // Successfully loaded
      } on ArgumentError {
        // Try next library name
        continue;
      }
    }

    // libfido2 not installed — passkeys not supported.
    _bindings = null;
  }

  LibFido2Bindings? _bindings;

  /// Throws [PasskeyNotSupportedException] if libfido2 is not loaded.
  void _ensureSupported() {
    if (_bindings == null) {
      throw const PasskeyNotSupportedException(
        'libfido2 is not available. Install libfido2-dev for passkey support.',
      );
    }
  }

  @override
  Future<bool> isPasskeySupported() async => _bindings != null;

  @override
  Future<String> createCredential(String optionsJson) async {
    _ensureSupported();
    final b = _bindings!;
    final options = jsonDecode(optionsJson) as Map<String, dynamic>;

    // Parse options.
    final rp = options['rp'] as Map<String, dynamic>;
    final rpId = rp['id'] as String;
    final rpName = rp['name'] as String? ?? rpId;

    final user = options['user'] as Map<String, dynamic>;
    final userIdB64 = user['id'] as String;
    final userId = _base64UrlDecode(userIdB64);
    final userName = user['name'] as String? ?? '';
    final displayName = user['displayName'] as String? ?? userName;

    final challenge = _base64UrlDecode(options['challenge'] as String);

    final pubKeyCredParams =
        options['pubKeyCredParams'] as List<dynamic>? ?? [];
    var algorithm = coseEs256;
    if (pubKeyCredParams.isNotEmpty) {
      final first = pubKeyCredParams[0] as Map<String, dynamic>;
      algorithm = first['alg'] as int? ?? coseEs256;
    }

    final authSelection =
        options['authenticatorSelection'] as Map<String, dynamic>? ?? {};
    final residentKey = authSelection['residentKey'] as String?;
    final userVerification = authSelection['userVerification'] as String?;

    // Build clientDataJSON and hash.
    final clientData = _buildClientDataJson(
      type: 'webauthn.create',
      challenge: _base64UrlEncode(challenge),
      origin: 'https://$rpId',
    );
    final clientDataBytes = utf8.encode(clientData);
    final clientDataHash = sha256.convert(clientDataBytes).bytes;

    // Discover and open device.
    final deviceResult = _discoverAndOpenDevice(b);
    final dev = deviceResult.device;
    final devInfoList = deviceResult.devInfoList;

    // Allocate credential.
    final cred = b.fidoCredNew();
    final devPtr = calloc<Pointer>();
    devPtr.value = dev;
    final credPtr = calloc<Pointer>();
    credPtr.value = cred;

    try {
      return using((Arena arena) {
        // Set credential fields.
        _checkFido(b.fidoCredSetType(cred, algorithm), 'set type', true);

        final hashPtr = arena<Uint8>(clientDataHash.length);
        for (var i = 0; i < clientDataHash.length; i++) {
          hashPtr[i] = clientDataHash[i];
        }
        _checkFido(
          b.fidoCredSetClientdataHash(cred, hashPtr, clientDataHash.length),
          'set clientdata hash',
          true,
        );

        final rpIdNative = rpId.toNativeUtf8(allocator: arena);
        final rpNameNative = rpName.toNativeUtf8(allocator: arena);
        _checkFido(
          b.fidoCredSetRp(cred, rpIdNative, rpNameNative),
          'set rp',
          true,
        );

        final userIdPtr = arena<Uint8>(userId.length);
        for (var i = 0; i < userId.length; i++) {
          userIdPtr[i] = userId[i];
        }
        final userNameNative = userName.toNativeUtf8(allocator: arena);
        final displayNameNative = displayName.toNativeUtf8(allocator: arena);
        final iconNative = ''.toNativeUtf8(allocator: arena);
        _checkFido(
          b.fidoCredSetUser(
            cred,
            userIdPtr,
            userId.length,
            userNameNative,
            displayNameNative,
            iconNative,
          ),
          'set user',
          true,
        );

        // Set resident key.
        if (residentKey == 'required' || residentKey == 'preferred') {
          _checkFido(b.fidoCredSetRk(cred, fidoOptTrue), 'set rk', true);
        }

        // Set user verification.
        final uvOpt = _parseUserVerification(userVerification);
        _checkFido(b.fidoCredSetUv(cred, uvOpt), 'set uv', true);

        // Perform credential creation ceremony.
        final rc = b.fidoDevMakeCred(dev, cred, nullptr);
        _checkFido(rc, 'make credential', true);

        // Read result fields.
        final credIdPtr = b.fidoCredIdPtr(cred);
        final credIdLen = b.fidoCredIdLen(cred);
        final credIdBytes = _copyNativeBytes(credIdPtr, credIdLen);

        final authdataPtr = b.fidoCredAuthdataPtr(cred);
        final authdataLen = b.fidoCredAuthdataLen(cred);
        final authdataBytes = _copyNativeBytes(authdataPtr, authdataLen);

        final credIdB64 = _base64UrlEncode(credIdBytes);
        final clientDataJsonB64 = _base64UrlEncode(
          Uint8List.fromList(clientDataBytes),
        );
        final attestationObjectB64 = _base64UrlEncode(
          Uint8List.fromList(authdataBytes),
        );

        // Build response dict with required Cognito fields
        final responseDict = <String, dynamic>{
          'clientDataJSON': clientDataJsonB64,
          'attestationObject': attestationObjectB64,
          'transports': ['usb'],
        };

        // Add optional fields that Cognito requires
        // authenticatorData is available from libfido2
        responseDict['authenticatorData'] = _base64UrlEncode(authdataBytes);

        // publicKey and publicKeyAlgorithm extraction from libfido2 would require
        // additional FFI bindings. The attestationObject contains this data in CBOR
        // format which Cognito can parse.
        // For now, include the algorithm that was used
        responseDict['publicKeyAlgorithm'] = algorithm;

        // Assemble W3C WebAuthn response JSON.
        final response = jsonEncode({
          'id': credIdB64,
          'rawId': credIdB64,
          'type': 'public-key',
          'response': responseDict,
          'clientExtensionResults':
              <String, dynamic>{}, // Required by PasskeyCreateResult.fromJson
          'authenticatorAttachment': 'cross-platform',
        });

        return response;
      });
    } finally {
      b.fidoDevClose(dev);
      b.fidoDevFree(devPtr);
      b.fidoCredFree(credPtr);
      _freeDevInfoList(b, devInfoList);
      calloc.free(devPtr);
      calloc.free(credPtr);
    }
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    _ensureSupported();
    final b = _bindings!;
    final options = jsonDecode(optionsJson) as Map<String, dynamic>;

    // Parse options.
    final rpId = options['rpId'] as String;
    final challenge = _base64UrlDecode(options['challenge'] as String);
    final userVerification = options['userVerification'] as String?;
    final allowCredentials =
        options['allowCredentials'] as List<dynamic>? ?? [];

    // Build clientDataJSON and hash.
    final clientData = _buildClientDataJson(
      type: 'webauthn.get',
      challenge: _base64UrlEncode(Uint8List.fromList(challenge)),
      origin: 'https://$rpId',
    );
    final clientDataBytes = utf8.encode(clientData);
    final clientDataHash = sha256.convert(clientDataBytes).bytes;

    // Discover and open device.
    final deviceResult = _discoverAndOpenDevice(b);
    final dev = deviceResult.device;
    final devInfoList = deviceResult.devInfoList;

    // Allocate assertion.
    final assert_ = b.fidoAssertNew();
    final devPtr = calloc<Pointer>();
    devPtr.value = dev;
    final assertPtr = calloc<Pointer>();
    assertPtr.value = assert_;

    try {
      return using((Arena arena) {
        // Set assertion fields.
        final hashPtr = arena<Uint8>(clientDataHash.length);
        for (var i = 0; i < clientDataHash.length; i++) {
          hashPtr[i] = clientDataHash[i];
        }
        _checkFido(
          b.fidoAssertSetClientdataHash(
            assert_,
            hashPtr,
            clientDataHash.length,
          ),
          'set clientdata hash',
          false,
        );

        final rpIdNative = rpId.toNativeUtf8(allocator: arena);
        _checkFido(b.fidoAssertSetRp(assert_, rpIdNative), 'set rp', false);

        final uvOpt = _parseUserVerification(userVerification);
        _checkFido(b.fidoAssertSetUv(assert_, uvOpt), 'set uv', false);

        // Add allowed credentials.
        for (final cred in allowCredentials) {
          final credMap = cred as Map<String, dynamic>;
          final credIdBytes = _base64UrlDecode(credMap['id'] as String);
          final credIdPtr = arena<Uint8>(credIdBytes.length);
          for (var i = 0; i < credIdBytes.length; i++) {
            credIdPtr[i] = credIdBytes[i];
          }
          _checkFido(
            b.fidoAssertAllowCred(assert_, credIdPtr, credIdBytes.length),
            'allow cred',
            false,
          );
        }

        // Perform assertion ceremony.
        final rc = b.fidoDevGetAssert(dev, assert_, nullptr);
        _checkFido(rc, 'get assertion', false);

        // Read result (first assertion, index 0).
        const idx = 0;
        final authdataPtr = b.fidoAssertAuthdataPtr(assert_, idx);
        final authdataLen = b.fidoAssertAuthdataLen(assert_, idx);
        final authdataBytes = _copyNativeBytes(authdataPtr, authdataLen);

        final sigPtr = b.fidoAssertSigPtr(assert_, idx);
        final sigLen = b.fidoAssertSigLen(assert_, idx);
        final sigBytes = _copyNativeBytes(sigPtr, sigLen);

        final userIdPtr = b.fidoAssertUserIdPtr(assert_, idx);
        final userIdLen = b.fidoAssertUserIdLen(assert_, idx);
        final userIdBytes = _copyNativeBytes(userIdPtr, userIdLen);

        final credIdPtr = b.fidoAssertIdPtr(assert_, idx);
        final credIdLen = b.fidoAssertIdLen(assert_, idx);
        final credIdBytes = _copyNativeBytes(credIdPtr, credIdLen);

        final credIdB64 = _base64UrlEncode(credIdBytes);
        final clientDataJsonB64 = _base64UrlEncode(
          Uint8List.fromList(clientDataBytes),
        );

        // Assemble W3C WebAuthn response JSON.
        final responseMap = <String, dynamic>{
          'id': credIdB64,
          'rawId': credIdB64,
          'type': 'public-key',
          'response': {
            'clientDataJSON': clientDataJsonB64,
            'authenticatorData': _base64UrlEncode(authdataBytes),
            'signature': _base64UrlEncode(sigBytes),
            if (userIdBytes.isNotEmpty)
              'userHandle': _base64UrlEncode(userIdBytes),
          },
          'clientExtensionResults':
              <String, dynamic>{}, // Required by PasskeyGetResult.fromJson
          'authenticatorAttachment': 'cross-platform',
        };

        return jsonEncode(responseMap);
      });
    } finally {
      b.fidoDevClose(dev);
      b.fidoDevFree(devPtr);
      b.fidoAssertFree(assertPtr);
      _freeDevInfoList(b, devInfoList);
      calloc.free(devPtr);
      calloc.free(assertPtr);
    }
  }

  // ── Helpers ────────────────────────────────────────────────────────────────

  /// Discovers connected FIDO2 devices and opens the first one found.
  ///
  /// Returns a [_DeviceResult] containing the opened device pointer and the
  /// device info list (which the caller must free).
  _DeviceResult _discoverAndOpenDevice(LibFido2Bindings b) {
    final devInfoList = b.fidoDevInfoNew(_maxDevices);
    final found = calloc<Size>();

    try {
      final manifestRc = b.fidoDevInfoManifest(devInfoList, _maxDevices, found);
      if (manifestRc != fidoOk) {
        throw const PasskeyNotSupportedException(
          'Failed to discover FIDO2 devices.',
        );
      }

      if (found.value == 0) {
        throw const PasskeyNotSupportedException(
          'No FIDO2 security key detected. '
          'Please insert a FIDO2 USB key.',
        );
      }

      // Get the path of the first device.
      final entry = b.fidoDevInfoPtr(devInfoList, 0);
      final path = b.fidoDevInfoPath(entry);

      // Open the device.
      final dev = b.fidoDevNew();
      final openRc = b.fidoDevOpen(dev, path);
      if (openRc != fidoOk) {
        // Free the device handle on open failure.
        final devPtr = calloc<Pointer>();
        devPtr.value = dev;
        b.fidoDevFree(devPtr);
        calloc.free(devPtr);
        throw PasskeyNotSupportedException(
          'Failed to open FIDO2 device (error: $openRc).',
        );
      }

      return _DeviceResult(device: dev, devInfoList: devInfoList);
    } finally {
      calloc.free(found);
    }
  }

  /// Frees the device info list allocated by [_discoverAndOpenDevice].
  void _freeDevInfoList(LibFido2Bindings b, Pointer devInfoList) {
    final listPtr = calloc<Pointer>();
    listPtr.value = devInfoList;
    b.fidoDevInfoFree(listPtr, _maxDevices);
    calloc.free(listPtr);
  }

  /// Checks a libfido2 return code and throws the appropriate
  /// [PasskeyException] if it indicates an error.
  void _checkFido(int rc, String operation, bool isRegistration) {
    if (rc == fidoOk) return;
    throw _mapLibFido2Error(rc, isRegistration);
  }

  /// Maps a libfido2 error code to the appropriate [PasskeyException].
  static PasskeyException _mapLibFido2Error(
    int errorCode,
    bool isRegistration,
  ) {
    switch (errorCode) {
      case fidoErrNotAllowed:
        return const PasskeyCancelledException(
          'Operation not allowed or cancelled by user.',
        );
      case fidoErrActionTimeout:
        return const PasskeyCancelledException('Operation timed out.');
      case fidoErrPinRequired:
        return const PasskeyAssertionFailedException(
          'PIN required but not provided.',
        );
      case fidoErrUvBlocked:
        return const PasskeyAssertionFailedException(
          'User verification blocked.',
        );
      default:
        if (isRegistration) {
          return PasskeyRegistrationFailedException(
            'libfido2 error code: $errorCode',
          );
        }
        return PasskeyAssertionFailedException(
          'libfido2 error code: $errorCode',
        );
    }
  }

  /// Maps a WebAuthn `userVerification` preference string to a libfido2 UV
  /// option constant.
  static int _parseUserVerification(String? uv) {
    switch (uv) {
      case 'required':
        return fidoOptTrue;
      case 'preferred':
        return fidoOptTrue;
      case 'discouraged':
        return fidoOptFalse;
      default:
        return fidoOptOmit;
    }
  }

  /// Constructs a `clientDataJSON` string per the WebAuthn specification.
  static String _buildClientDataJson({
    required String type,
    required String challenge,
    required String origin,
  }) {
    return jsonEncode({
      'type': type,
      'challenge': challenge,
      'origin': origin,
      'crossOrigin': false,
    });
  }

  /// Copies [length] bytes from a native pointer into a Dart [Uint8List].
  static Uint8List _copyNativeBytes(Pointer<Uint8> ptr, int length) {
    if (length <= 0 || ptr == nullptr) return Uint8List(0);
    final bytes = Uint8List(length);
    for (var i = 0; i < length; i++) {
      bytes[i] = ptr[i];
    }
    return bytes;
  }

  /// Encodes bytes as base64url without padding.
  static String _base64UrlEncode(Uint8List bytes) {
    return base64Url.encode(bytes).replaceAll('=', '');
  }

  /// Decodes a base64url string (with or without padding) to bytes.
  static Uint8List _base64UrlDecode(String input) {
    // Add padding if needed.
    var padded = input;
    final remainder = padded.length % 4;
    if (remainder != 0) {
      padded = padded.padRight(padded.length + (4 - remainder), '=');
    }
    return base64Url.decode(padded);
  }
}

/// Result of device discovery containing the opened device handle and
/// the device info list that must be freed by the caller.
class _DeviceResult {
  const _DeviceResult({required this.device, required this.devInfoList});

  /// The opened FIDO2 device handle.
  final Pointer device;

  /// The device info list (must be freed with `fido_dev_info_free`).
  final Pointer devInfoList;
}
