// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: cascade_invocations

import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/linux/fido_pin_dialog.dart';
import 'package:amplify_auth_cognito/src/linux/libfido2_bindings.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/model/webauthn/webauthn_credential_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:crypto/crypto.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart' show compute;

final AmplifyLogger _logger = AmplifyLogger.category(
  Category.auth,
).createChild('LinuxWebAuthnPlatform');

/// Maximum number of FIDO2 devices to discover.
const int _maxDevices = 64;

// ── Signal blocking helpers ──────────────────────────────────────────────────
//
// The Dart VM uses POSIX signals (e.g. SIGPROF for profiling) that interrupt
// blocking system calls like ppoll(). libfido2 uses ppoll() to wait for HID
// responses and does NOT retry on EINTR, causing fido_dev_open() to fail with
// error -2 (FIDO_ERR_RX). We temporarily block all signals during libfido2
// operations using pthread_sigmask.

/// SIG_SETMASK constant for pthread_sigmask.
const int _sigSetmask = 2;

/// SIG_BLOCK constant for pthread_sigmask.
const int _sigBlock = 0;

/// SIGPROF signal number on Linux x86_64.
const int _sigprof = 27;

/// Size of sigset_t on Linux x86_64 (128 bytes = 1024 bits).
const int _sigsetSize = 128;

typedef _PthreadSigmaskC =
    Int32 Function(Int32 how, Pointer<Uint8> newSet, Pointer<Uint8> oldSet);
typedef _PthreadSigmaskDart =
    int Function(int how, Pointer<Uint8> newSet, Pointer<Uint8> oldSet);

typedef _SigemptysetC = Int32 Function(Pointer<Uint8> set_);
typedef _SigemptysetDart = int Function(Pointer<Uint8> set_);

typedef _SigaddsetC = Int32 Function(Pointer<Uint8> set_, Int32 signum);
typedef _SigaddsetDart = int Function(Pointer<Uint8> set_, int signum);

// memset for PIN sanitization
typedef _MemsetC = Pointer Function(Pointer s, Int32 c, Size n);
typedef _MemsetDart = Pointer Function(Pointer s, int c, int n);

final DynamicLibrary _libc = DynamicLibrary.open('libc.so.6');

final _PthreadSigmaskDart _pthreadSigmask = _libc
    .lookupFunction<_PthreadSigmaskC, _PthreadSigmaskDart>('pthread_sigmask');

final _SigemptysetDart _sigemptyset = _libc
    .lookupFunction<_SigemptysetC, _SigemptysetDart>('sigemptyset');

final _SigaddsetDart _sigaddset = _libc
    .lookupFunction<_SigaddsetC, _SigaddsetDart>('sigaddset');

final _MemsetDart _memset = _libc.lookupFunction<_MemsetC, _MemsetDart>(
  'memset',
);

/// Blocks SIGPROF on the current thread (to prevent the Dart VM profiler
/// from interrupting libfido2's ppoll with EINTR) and returns the previous
/// signal mask (which must be restored with [_restoreSignals]).
Pointer<Uint8> _blockProfilerSignal() {
  final blockSet = calloc<Uint8>(_sigsetSize);
  final oldSet = calloc<Uint8>(_sigsetSize);
  _sigemptyset(blockSet);
  _sigaddset(blockSet, _sigprof);
  _pthreadSigmask(_sigBlock, blockSet, oldSet);
  calloc.free(blockSet);
  return oldSet;
}

/// Restores the signal mask saved by [_blockProfilerSignal] and frees it.
void _restoreSignals(Pointer<Uint8> oldSet) {
  _pthreadSigmask(_sigSetmask, oldSet, Pointer<Uint8>.fromAddress(0));
  calloc.free(oldSet);
}

// ── PIN provider callback ────────────────────────────────────────────────────

/// Callback type for requesting a FIDO2 PIN from the user.
///
/// [retriesRemaining] is the number of PIN attempts left before the
/// authenticator locks the PIN. Return `null` to cancel the operation.
typedef FidoPinProvider =
    Future<String?> Function({required int retriesRemaining});

/// Callback type for notifying the UI that the user should touch the key.
///
/// Called just before a blocking libfido2 operation starts. The callback
/// should show a "Please touch your security key" indicator. The returned
/// [void Function()] will be called when the operation completes, to
/// dismiss the indicator.
typedef FidoTouchNotifier = void Function() Function();

/// {@template amplify_auth_cognito.linux_webauthn_platform}
/// Linux implementation of [WebAuthnCredentialPlatform] using `libfido2` FFI
/// bindings for USB FIDO2 security key operations.
///
/// When `libfido2.so` is not installed, [isPasskeySupported] returns `false`
/// and all ceremony operations throw [PasskeyNotSupportedException].
///
/// ## PIN Support
///
/// Linux has no system-level FIDO2 PIN dialog (unlike Windows Hello or
/// macOS). When the authenticator requires a PIN (`clientPin: true` in
/// CBOR info), this platform requests it via [pinProvider]. If no provider
/// is set, PIN-protected operations will fail with
/// [PasskeyAssertionFailedException].
///
/// Set the PIN provider before any passkey operations:
/// ```dart
/// LinuxWebAuthnPlatform.pinProvider = ({required retriesRemaining}) async {
///   return showPinDialog(retries: retriesRemaining);
/// };
/// ```
/// {@endtemplate}
class LinuxWebAuthnPlatform implements WebAuthnCredentialPlatform {
  /// {@macro amplify_auth_cognito.linux_webauthn_platform}
  ///
  /// Attempts to load `libfido2.so` and initialize the library. If the library
  /// is not available, the platform operates in degraded mode where all
  /// operations report passkeys as unsupported.
  ///
  /// An optional [bindings] parameter can be provided for testing.
  /// When [bindings] is provided, [useIsolate] defaults to `false` so that
  /// blocking FFI calls run on the main thread using the mock bindings
  /// instead of spawning a background isolate (which would re-open
  /// `libfido2.so` and bypass the mock).
  LinuxWebAuthnPlatform({LibFido2Bindings? bindings, bool? useIsolate}) {
    _useIsolate = useIsolate ?? (bindings == null);
    if (bindings != null) {
      _bindings = bindings;
      _logger.debug('Using provided LibFido2Bindings (test mode).');
      return;
    }
    try {
      _logger.debug('Attempting to load libfido2.so...');
      final lib = DynamicLibrary.open('libfido2.so');
      _bindings = LibFido2Bindings(lib);
      // Pass 0 for production (no debug output).
      // Pass FIDO_DEBUG (1) during development to enable libfido2's
      // internal CTAPHID protocol trace logging to stderr.
      _bindings!.fidoInit(0);
      _logger.info('libfido2.so loaded and initialized.');
    } on ArgumentError catch (e) {
      // libfido2 not installed — passkeys not supported.
      _bindings = null;
      _logger.warn(
        'libfido2.so could not be loaded — passkeys will not be available. '
        'Install libfido2-dev for passkey support. Error: $e',
      );
    }
  }

  LibFido2Bindings? _bindings;

  /// Whether to run blocking FFI calls in a background isolate.
  /// Defaults to `true` in production and `false` when test bindings are
  /// provided (since isolates cannot share mock bindings).
  late final bool _useIsolate;

  /// Tracks the pending deferred cleanup future from a cancelled touch
  /// operation. When the user cancels the touch dialog, the background
  /// isolate is still blocked inside fido_dev_make_cred/fido_dev_get_assert
  /// holding the device open (up to ~30s CTAP timeout). If the user retries
  /// immediately, we must wait for this cleanup to finish before trying to
  /// re-open the device; otherwise fido_dev_open fails with error -9
  /// (device busy).
  Future<void>? _pendingDeviceCleanup;

  /// Callback for requesting the FIDO2 PIN from the user.
  ///
  /// Must be set by the application (e.g. showing a Flutter dialog) before
  /// attempting passkey operations on a PIN-protected authenticator.
  /// If `null`, PIN-protected operations will throw
  /// [PasskeyAssertionFailedException].
  static FidoPinProvider? pinProvider;

  /// Callback for notifying the UI that the user should touch the key.
  ///
  /// Called just before blocking libfido2 operations. Returns a dismiss
  /// function that is called when the operation completes.
  static FidoTouchNotifier? touchNotifier;

  /// Throws [PasskeyNotSupportedException] if libfido2 is not loaded.
  void _ensureSupported() {
    if (_bindings == null) {
      _logger.error('Passkey operation attempted but libfido2 is not loaded.');
      throw const PasskeyNotSupportedException(
        'libfido2 is not available. Install libfido2-dev for passkey support.',
      );
    }
  }

  /// Checks whether passkeys are supported on this Linux system.
  ///
  /// This checks both that `libfido2.so` is loaded **and** that at least one
  /// FIDO2 device is currently connected. Previously, only the library presence
  /// was checked, which caused `isPasskeySupported()` to return `true` even
  /// when no FIDO2 USB key was plugged in — leading to
  /// [PasskeyNotSupportedException] during actual operations.
  @override
  Future<bool> isPasskeySupported() async {
    if (_bindings == null) {
      _logger.debug('isPasskeySupported: false — libfido2.so is not loaded.');
      return false;
    }

    // Probe for connected FIDO2 devices and verify we can actually open one.
    // This avoids reporting support when:
    //  1. No FIDO2 device is plugged in.
    //  2. A device is present but the user lacks permissions to open it
    //     (e.g. missing udev rules for /dev/hidrawN).
    final b = _bindings!;
    final devInfoList = b.fidoDevInfoNew(_maxDevices);
    final found = calloc<Size>();
    try {
      final rc = b.fidoDevInfoManifest(devInfoList, _maxDevices, found);
      if (rc != fidoOk) {
        _logger.warn(
          'isPasskeySupported: false — device manifest failed '
          '(libfido2 error: $rc).',
        );
        return false;
      }
      final deviceCount = found.value;
      if (deviceCount == 0) {
        _logger.info(
          'isPasskeySupported: false — libfido2 is loaded but no FIDO2 '
          'devices are connected. Insert a FIDO2 USB security key.',
        );
        return false;
      }

      // Try to open each discovered device to verify accessibility.
      // Some security keys (e.g. YubiKey) expose multiple HID interfaces
      // (OTP and FIDO). Only the FIDO interface will respond to the
      // CTAPHID_INIT handshake during fido_dev_open. We try each one.
      _logger.debug(
        'isPasskeySupported: $deviceCount device(s) found. '
        'Probing accessibility...',
      );

      for (var i = 0; i < deviceCount; i++) {
        final entry = b.fidoDevInfoPtr(devInfoList, i);
        final path = b.fidoDevInfoPath(entry);
        final pathStr = path.toDartString();

        final dev = b.fidoDevNew();
        // Block signals during fido_dev_open to prevent Dart VM's
        // SIGPROF from interrupting libfido2's ppoll() with EINTR.
        final savedMask = _blockProfilerSignal();
        final openRc = b.fidoDevOpen(dev, path);
        _restoreSignals(savedMask);
        // Always free the device handle.
        final devPtr = calloc<Pointer>();
        devPtr.value = dev;
        if (openRc == fidoOk) {
          b.fidoDevClose(dev);
          b.fidoDevFree(devPtr);
          calloc.free(devPtr);
          _logger.info(
            'isPasskeySupported: true — libfido2 is loaded and '
            '$pathStr (device $i of $deviceCount) is accessible.',
          );
          return true;
        }
        b.fidoDevFree(devPtr);
        calloc.free(devPtr);
        _logger.debug(
          'isPasskeySupported: device $i ($pathStr) could not be opened '
          '(libfido2 error: $openRc). Trying next...',
        );
      }

      _logger.warn(
        'isPasskeySupported: false — $deviceCount FIDO2 device(s) found '
        'but none could be opened. This may be a permissions issue or the '
        'device may not expose a FIDO2-compatible HID interface.',
      );
      return false;
    } finally {
      // Clean up the device info list.
      final listPtr = calloc<Pointer>();
      listPtr.value = devInfoList;
      b.fidoDevInfoFree(listPtr, _maxDevices);
      calloc.free(listPtr);
      calloc.free(found);
    }
  }

  @override
  Future<String> createCredential(String optionsJson) async {
    _logger.debug('createCredential: starting registration ceremony...');
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

    // Keep both: the raw challenge bytes (for libfido2) and the original
    // base64url string (for clientDataJSON). The browser passes the original
    // challenge string directly into clientDataJSON — we must do the same.
    final challengeB64 = options['challenge'] as String;

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
    // IMPORTANT: Use the original challenge string from Cognito exactly as-is.
    // Re-encoding (decode → encode) can change padding which breaks
    // Cognito's verification of SHA256(clientDataJSON) vs the authenticator's
    // clientDataHash.
    final clientData = _buildClientDataJson(
      type: 'webauthn.create',
      challenge: challengeB64,
      origin: 'https://$rpId',
    );
    final clientDataBytes = utf8.encode(clientData);
    final clientDataHash = sha256.convert(clientDataBytes).bytes;

    // Discover and open device (awaits pending cleanup from cancelled ops).
    final deviceResult = await _discoverAndOpenDevice(b);
    final dev = deviceResult.device;
    final devInfoList = deviceResult.devInfoList;

    // Allocate credential.
    final cred = b.fidoCredNew();
    final devPtr = calloc<Pointer>();
    devPtr.value = dev;
    final credPtr = calloc<Pointer>();
    credPtr.value = cred;

    // When the user cancels the touch dialog, we must NOT free native
    // resources immediately because the background isolate is still using
    // them (blocked inside fido_dev_make_cred). We schedule deferred cleanup
    // and skip the finally block.
    var deferredCleanup = false;

    try {
      return await using((Arena arena) async {
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
        // Pass nullptr for icon — CTAP2.1 removed the icon field, and
        // YubiKeys with FIDO_2_1_PRE firmware return CTAP2_ERR_INVALID_LENGTH
        // (0x03) when an empty icon string "" is included in the CBOR.
        // libfido2 omits the icon field entirely when it receives a null pointer.
        _checkFido(
          b.fidoCredSetUser(
            cred,
            userIdPtr,
            userId.length,
            userNameNative,
            displayNameNative,
            nullptr.cast<Utf8>(),
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
        // libfido2 returns FIDO_ERR_INVALID_LENGTH (3) if UV is set
        // but the authenticator doesn't support that UV option in this
        // context. Only set UV if explicitly required.
        if (uvOpt != fidoOptOmit) {
          _checkFido(b.fidoCredSetUv(cred, uvOpt), 'set uv', true);
        }

        // Check if PIN is required and obtain it.
        var pinNative = await _obtainPinIfRequired(b, dev, arena);

        _logger.debug(
          'createCredential: params ready — '
          'algorithm=$algorithm, rpId=$rpId, '
          'userId=${userId.length}B, '
          'clientDataHash=${clientDataHash.length}B, '
          'residentKey=$residentKey, uv=$userVerification (opt=$uvOpt), '
          'pinProvided=${pinNative != nullptr}',
        );

        // PIN retry loop: if the user enters the wrong PIN, re-prompt with
        // an error message and updated retry count instead of failing the
        // entire operation. The device and credential objects remain valid
        // across retries — only the PIN changes.
        var rc = fidoOk;
        while (true) {
          // Perform credential creation ceremony.
          // Show "touch your key" dialog and run the blocking FFI call in a
          // background isolate so the UI stays responsive (pulsing animation).
          final touchHandle = showFidoTouchDialog();
          // Yield to let the dialog render before blocking.
          await Future<void>.delayed(const Duration(milliseconds: 50));

          // Run the blocking FFI call in a separate isolate so the main UI
          // thread is free to animate the touch dialog.
          final addrs = [dev.address, cred.address, pinNative.address];
          final computeFuture = _useIsolate
              ? compute(_isolateMakeCred, addrs)
              : Future(() => _makeCred(b, dev, cred, pinNative));

          // Race: if cancel wins, throw immediately for responsive UX.
          // The background isolate will eventually complete; we schedule
          // deferred cleanup so native resources aren't freed while in use.
          final cancelCompleter = Completer<int>();
          unawaited(
            touchHandle.cancelled.then((wasCancelled) {
              if (wasCancelled && !cancelCompleter.isCompleted) {
                cancelCompleter.completeError(
                  const PasskeyCancelledException(
                    'User cancelled the touch operation.',
                  ),
                );
              }
            }),
          );
          unawaited(
            computeFuture.then((result) {
              if (!cancelCompleter.isCompleted) {
                cancelCompleter.complete(result);
              }
            }),
          );

          try {
            rc = await cancelCompleter.future;
          } on PasskeyCancelledException {
            _logger.info(
              'User cancelled touch — sending CTAPHID_CANCEL and '
              'scheduling deferred cleanup...',
            );
            touchHandle.dismiss();
            // Send CTAPHID_CANCEL to the authenticator so the blocked
            // fido_dev_make_cred call in the background isolate returns
            // immediately instead of waiting for the ~30s CTAP timeout.
            final cancelRc = b.fidoDevCancel(dev);
            _logger.debug('fido_dev_cancel returned: $cancelRc');
            // Schedule deferred cleanup that runs after the isolate returns
            // (which should now be almost instant thanks to the cancel).
            deferredCleanup = true;
            final cleanupFuture = computeFuture
                .then((_) {
                  _logger.debug(
                    'Deferred cleanup: background isolate finished '
                    'after cancel. Freeing native resources...',
                  );
                  _sanitizePin(pinNative);
                  b.fidoDevClose(dev);
                  b.fidoDevFree(devPtr);
                  b.fidoCredFree(credPtr);
                  _freeDevInfoList(b, devInfoList);
                  calloc.free(devPtr);
                  calloc.free(credPtr);
                })
                .catchError((Object e) {
                  _logger.warn(
                    'Deferred cleanup: background isolate failed: $e. '
                    'Freeing native resources anyway...',
                  );
                  _sanitizePin(pinNative);
                  b.fidoDevClose(dev);
                  b.fidoDevFree(devPtr);
                  b.fidoCredFree(credPtr);
                  _freeDevInfoList(b, devInfoList);
                  calloc.free(devPtr);
                  calloc.free(credPtr);
                });
            // Track the cleanup so _discoverAndOpenDevice can wait for it
            // before retrying, preventing "device busy" errors.
            _pendingDeviceCleanup = cleanupFuture;
            rethrow;
          }
          touchHandle.dismiss();

          // Handle wrong PIN: sanitize old PIN, re-query retries, re-prompt.
          if (rc == fidoErrPinInvalid) {
            _logger.warn('Wrong PIN entered. Re-prompting user...');
            _sanitizePin(pinNative);
            final retries = _getRetryCount(b, dev);
            _logger.info(
              'PIN retries remaining after failed attempt: $retries',
            );
            if (retries <= 0) {
              throw const PasskeyAssertionFailedException(
                'PIN retries exhausted. The authenticator PIN is locked.',
              );
            }
            pinNative = await _promptForPin(
              retries: retries,
              errorMessage: 'Wrong PIN — please try again',
            );
            // Loop back to touch dialog + compute with new PIN.
            continue;
          }

          // Handle PIN auth blocked (too many consecutive failures).
          if (rc == fidoErrPinAuthBlocked) {
            _sanitizePin(pinNative);
            throw const PasskeyAssertionFailedException(
              'PIN authentication blocked — too many failed attempts. '
              'Remove and re-insert the key, then try again.',
            );
          }

          // Any other result — break out of the retry loop.
          break;
        }

        // Sanitize PIN from memory.
        _sanitizePin(pinNative);

        _checkFido(rc, 'make credential', true);

        // Read result fields.
        final credIdPtr = b.fidoCredIdPtr(cred);
        final credIdLen = b.fidoCredIdLen(cred);
        final credIdBytes = _copyNativeBytes(credIdPtr, credIdLen);

        final authdataPtr = b.fidoCredAuthdataPtr(cred);
        final authdataLen = b.fidoCredAuthdataLen(cred);
        final authdataCborBytes = _copyNativeBytes(authdataPtr, authdataLen);
        // IMPORTANT: libfido2's fido_cred_authdata_ptr() returns the
        // authenticator data wrapped in a CBOR byte string. We need the
        // raw bytes (without the CBOR header) for both:
        //  1. The attestation object (where we re-encode it ourselves)
        //  2. The authenticatorData field in the W3C response JSON
        final authdataBytes = _stripCborByteStringHeader(authdataCborBytes);

        final sigPtr = b.fidoCredSigPtr(cred);
        final sigLen = b.fidoCredSigLen(cred);
        final sigBytes = _copyNativeBytes(sigPtr, sigLen);

        final x5cPtr = b.fidoCredX5cPtr(cred);
        final x5cLen = b.fidoCredX5cLen(cred);
        final x5cBytes = _copyNativeBytes(x5cPtr, x5cLen);

        final fmtPtr = b.fidoCredFmt(cred);
        final fmt = fmtPtr.toDartString();

        _logger.debug(
          'createCredential: result — '
          'credId=${credIdBytes.length}B, authdata=${authdataBytes.length}B, '
          'sig=${sigBytes.length}B, x5c=${x5cBytes.length}B, fmt=$fmt',
        );

        // Build the CBOR attestation object per WebAuthn spec:
        // { "fmt": "packed", "attStmt": { "alg": -7, "sig": ..., "x5c": [...] }, "authData": ... }
        final attestationObject = _buildCborAttestationObject(
          fmt: fmt,
          authData: authdataBytes,
          sig: sigBytes,
          x5c: x5cBytes,
          algorithm: algorithm,
        );

        final credIdB64 = _base64UrlEncode(credIdBytes);
        final clientDataJsonB64 = _base64UrlEncode(
          Uint8List.fromList(clientDataBytes),
        );
        final attestationObjectB64 = _base64UrlEncode(attestationObject);

        // Build response dict with required Cognito fields
        final responseDict = <String, dynamic>{
          'clientDataJSON': clientDataJsonB64,
          'attestationObject': attestationObjectB64,
          'transports': ['usb'],
        };

        // authenticatorData is available from libfido2
        responseDict['authenticatorData'] = _base64UrlEncode(authdataBytes);
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
      if (!deferredCleanup) {
        b.fidoDevClose(dev);
        b.fidoDevFree(devPtr);
        b.fidoCredFree(credPtr);
        _freeDevInfoList(b, devInfoList);
        calloc.free(devPtr);
        calloc.free(credPtr);
      }
    }
  }

  @override
  Future<String> getCredential(String optionsJson) async {
    _logger.debug('getCredential: starting assertion ceremony...');
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

    // Discover and open device (awaits pending cleanup from cancelled ops).
    final deviceResult = await _discoverAndOpenDevice(b);
    final dev = deviceResult.device;
    final devInfoList = deviceResult.devInfoList;

    // Allocate assertion.
    final assert_ = b.fidoAssertNew();
    final devPtr = calloc<Pointer>();
    devPtr.value = dev;
    final assertPtr = calloc<Pointer>();
    assertPtr.value = assert_;

    var deferredCleanup = false;

    try {
      return await using((Arena arena) async {
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

        // Check if PIN is required and obtain it.
        var pinNative = await _obtainPinIfRequired(b, dev, arena);

        // PIN retry loop: if the user enters the wrong PIN, re-prompt with
        // an error message and updated retry count instead of failing the
        // entire operation. The device and assertion objects remain valid
        // across retries — only the PIN changes.
        var rc = fidoOk;
        while (true) {
          // Perform assertion ceremony.
          // Show "touch your key" dialog and run the blocking FFI call in a
          // background isolate so the UI stays responsive (pulsing animation).
          final touchHandle = showFidoTouchDialog();
          await Future<void>.delayed(const Duration(milliseconds: 50));

          final assertAddrs = [dev.address, assert_.address, pinNative.address];
          final computeFuture = _useIsolate
              ? compute(_isolateGetAssert, assertAddrs)
              : Future(() => _getAssert(b, dev, assert_, pinNative));

          // Race: if cancel wins, throw immediately for responsive UX.
          final cancelCompleter = Completer<int>();
          unawaited(
            touchHandle.cancelled.then((wasCancelled) {
              if (wasCancelled && !cancelCompleter.isCompleted) {
                cancelCompleter.completeError(
                  const PasskeyCancelledException(
                    'User cancelled the touch operation.',
                  ),
                );
              }
            }),
          );
          unawaited(
            computeFuture.then((result) {
              if (!cancelCompleter.isCompleted) {
                cancelCompleter.complete(result);
              }
            }),
          );

          try {
            rc = await cancelCompleter.future;
          } on PasskeyCancelledException {
            _logger.info(
              'User cancelled touch — sending CTAPHID_CANCEL and '
              'scheduling deferred cleanup...',
            );
            touchHandle.dismiss();
            // Send CTAPHID_CANCEL to the authenticator so the blocked
            // fido_dev_get_assert call in the background isolate returns
            // immediately instead of waiting for the ~30s CTAP timeout.
            final cancelRc = b.fidoDevCancel(dev);
            _logger.debug('fido_dev_cancel returned: $cancelRc');
            deferredCleanup = true;
            final cleanupFuture = computeFuture
                .then((_) {
                  _logger.debug(
                    'Deferred cleanup (assert): background isolate '
                    'finished after cancel. Freeing native resources...',
                  );
                  _sanitizePin(pinNative);
                  b.fidoDevClose(dev);
                  b.fidoDevFree(devPtr);
                  b.fidoAssertFree(assertPtr);
                  _freeDevInfoList(b, devInfoList);
                  calloc.free(devPtr);
                  calloc.free(assertPtr);
                })
                .catchError((Object e) {
                  _logger.warn(
                    'Deferred cleanup (assert): background isolate '
                    'failed: $e. Freeing native resources anyway...',
                  );
                  _sanitizePin(pinNative);
                  b.fidoDevClose(dev);
                  b.fidoDevFree(devPtr);
                  b.fidoAssertFree(assertPtr);
                  _freeDevInfoList(b, devInfoList);
                  calloc.free(devPtr);
                  calloc.free(assertPtr);
                });
            // Track the cleanup so _discoverAndOpenDevice can wait for it
            // before retrying, preventing "device busy" errors.
            _pendingDeviceCleanup = cleanupFuture;
            rethrow;
          }
          touchHandle.dismiss();

          // Handle wrong PIN: sanitize old PIN, re-query retries, re-prompt.
          if (rc == fidoErrPinInvalid) {
            _logger.warn('Wrong PIN entered (assert). Re-prompting user...');
            _sanitizePin(pinNative);
            final retries = _getRetryCount(b, dev);
            _logger.info(
              'PIN retries remaining after failed attempt: $retries',
            );
            if (retries <= 0) {
              throw const PasskeyAssertionFailedException(
                'PIN retries exhausted. The authenticator PIN is locked.',
              );
            }
            pinNative = await _promptForPin(
              retries: retries,
              errorMessage: 'Wrong PIN — please try again',
            );
            // Loop back to touch dialog + compute with new PIN.
            continue;
          }

          // Handle PIN auth blocked (too many consecutive failures).
          if (rc == fidoErrPinAuthBlocked) {
            _sanitizePin(pinNative);
            throw const PasskeyAssertionFailedException(
              'PIN authentication blocked — too many failed attempts. '
              'Remove and re-insert the key, then try again.',
            );
          }

          // Any other result — break out of the retry loop.
          break;
        }

        // Sanitize PIN from memory.
        _sanitizePin(pinNative);

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
      if (!deferredCleanup) {
        b.fidoDevClose(dev);
        b.fidoDevFree(devPtr);
        b.fidoAssertFree(assertPtr);
        _freeDevInfoList(b, devInfoList);
        calloc.free(devPtr);
        calloc.free(assertPtr);
      }
    }
  }

  // ── PIN helpers ────────────────────────────────────────────────────────────

  /// Checks whether the opened device requires a FIDO2 client PIN by querying
  /// CBOR info. If so, checks the retry count, invokes [pinProvider], and
  /// returns a native UTF-8 pointer to the PIN (allocated in [arena]).
  ///
  /// Returns [nullptr] (as `Pointer<Utf8>`) if PIN is not required.
  /// Throws [PasskeyCancelledException] if the user cancels PIN entry.
  /// Throws [PasskeyAssertionFailedException] if PIN retries are exhausted
  /// or no [pinProvider] callback is set.
  Future<Pointer<Utf8>> _obtainPinIfRequired(
    LibFido2Bindings b,
    Pointer dev,
    Arena arena,
  ) async {
    // Step 1: Query CBOR info to check if clientPin is enabled.
    final requiresPin = _checkDeviceRequiresPin(b, dev);
    if (!requiresPin) {
      _logger.debug('PIN not required by this authenticator.');
      return nullptr.cast<Utf8>();
    }

    _logger.info('Authenticator requires a PIN.');

    // Step 2: Check retry count — abort if exhausted to prevent lockout.
    final retries = _getRetryCount(b, dev);
    _logger.info('PIN retries remaining: $retries');
    if (retries <= 0) {
      _logger.error(
        'PIN retries exhausted. The authenticator is locked. '
        'Reset the FIDO2 PIN using ykman or a similar tool.',
      );
      throw const PasskeyAssertionFailedException(
        'PIN retries exhausted. The authenticator PIN is locked.',
      );
    }

    // Step 3: Request the PIN — use custom pinProvider if set, otherwise
    // show the built-in Flutter dialog from fido_pin_dialog.dart.
    final String? pin;
    if (pinProvider != null) {
      pin = await pinProvider!(retriesRemaining: retries);
    } else {
      _logger.debug('Using built-in FIDO2 PIN dialog.');
      pin = await showFidoPinDialog(retriesRemaining: retries);
    }
    if (pin == null || pin.isEmpty) {
      _logger.info('User cancelled PIN entry.');
      throw const PasskeyCancelledException(
        'PIN entry was cancelled by the user.',
      );
    }

    _logger.debug('PIN obtained from user (${pin.length} chars).');

    // Step 4: Convert to native UTF-8 string.
    // NOTE: We do NOT use the arena allocator for the PIN — we allocate
    // with calloc so we can explicitly zero the memory after use.
    final pinNative = pin.toNativeUtf8();
    return pinNative;
  }

  /// Queries the device's CBOR info to check if `clientPin` option is `true`.
  bool _checkDeviceRequiresPin(LibFido2Bindings b, Pointer dev) {
    final ci = b.fidoCborInfoNew();
    final ciPtr = calloc<Pointer>();
    ciPtr.value = ci;

    try {
      final savedMask = _blockProfilerSignal();
      final rc = b.fidoDevGetCborInfo(dev, ci);
      _restoreSignals(savedMask);

      if (rc != fidoOk) {
        _logger.warn(
          'Could not retrieve CBOR info from device (error: $rc). '
          'Assuming PIN is not required.',
        );
        return false;
      }

      final optCount = b.fidoCborInfoOptionsLen(ci);
      final namesPtr = b.fidoCborInfoOptionsNamePtr(ci);
      final valuesPtr = b.fidoCborInfoOptionsValuePtr(ci);

      for (var i = 0; i < optCount; i++) {
        final name = namesPtr[i].toDartString();
        final value = valuesPtr[i];
        if (name == 'clientPin' && value) {
          return true;
        }
      }

      return false;
    } finally {
      b.fidoCborInfoFree(ciPtr);
      calloc.free(ciPtr);
    }
  }

  /// Returns the number of PIN retries remaining on the device.
  /// Returns 8 (default) if the query fails.
  int _getRetryCount(LibFido2Bindings b, Pointer dev) {
    final retriesPtr = calloc<Int32>();
    try {
      final savedMask = _blockProfilerSignal();
      final rc = b.fidoDevGetRetryCnt(dev, retriesPtr);
      _restoreSignals(savedMask);

      if (rc != fidoOk) {
        _logger.warn(
          'Could not retrieve PIN retry count (error: $rc). '
          'Assuming 8 retries remaining.',
        );
        return 8;
      }
      return retriesPtr.value;
    } finally {
      calloc.free(retriesPtr);
    }
  }

  /// Prompts the user for a PIN after a failed attempt, showing an error
  /// message and the updated retry count.
  ///
  /// Uses [pinProvider] if set, otherwise shows the built-in dialog.
  /// Throws [PasskeyCancelledException] if the user cancels.
  Future<Pointer<Utf8>> _promptForPin({
    required int retries,
    required String errorMessage,
  }) async {
    final String? pin;
    if (pinProvider != null) {
      // Custom providers don't support errorMessage yet — just pass retries.
      pin = await pinProvider!(retriesRemaining: retries);
    } else {
      pin = await showFidoPinDialog(
        retriesRemaining: retries,
        errorMessage: errorMessage,
      );
    }
    if (pin == null || pin.isEmpty) {
      _logger.info('User cancelled PIN re-entry.');
      throw const PasskeyCancelledException(
        'PIN entry was cancelled by the user.',
      );
    }
    _logger.debug('New PIN obtained from user (${pin.length} chars).');
    return pin.toNativeUtf8();
  }

  /// Zeroes and frees a native PIN string. Uses `memset` to prevent
  /// compiler optimization from eliding the zeroing.
  void _sanitizePin(Pointer<Utf8> pinNative) {
    if (pinNative == nullptr) return;
    // Calculate the length of the native UTF-8 string.
    final ptr = pinNative.cast<Uint8>();
    var len = 0;
    while (ptr[len] != 0) {
      len++;
    }
    if (len > 0) {
      _memset(pinNative.cast(), 0, len);
    }
    calloc.free(pinNative);
  }

  // ── Device discovery ───────────────────────────────────────────────────────

  /// Discovers connected FIDO2 devices and opens the first one found.
  ///
  /// If a previous operation was cancelled and the background isolate is
  /// still holding the device open (deferred cleanup), this method waits
  /// for that cleanup to finish before attempting to open the device.
  /// Without this wait, `fido_dev_open` would fail with error -9 (device
  /// busy) because the old isolate still has the HID file descriptor open.
  ///
  /// Returns a [_DeviceResult] containing the opened device pointer and the
  /// device info list (which the caller must free).
  Future<_DeviceResult> _discoverAndOpenDevice(LibFido2Bindings b) async {
    // Wait for any pending deferred cleanup from a previous cancelled
    // operation. The background isolate may still be holding the device
    // open (blocked in fido_dev_make_cred/fido_dev_get_assert until the
    // ~30s CTAP timeout fires).
    if (_pendingDeviceCleanup != null) {
      _logger.info(
        'Waiting for pending device cleanup from previous '
        'cancelled operation before opening device...',
      );
      // Show a "Preparing..." dialog so the user knows what's happening
      // instead of staring at an unexplained loading spinner.
      final dismissPreparing = showFidoPreparingDialog();
      try {
        await _pendingDeviceCleanup;
      } on Object {
        // Cleanup future may have completed with an error — that's fine,
        // the resources were freed in the catchError handler.
      }
      _pendingDeviceCleanup = null;
      dismissPreparing();
      _logger.debug('Pending device cleanup complete. Proceeding...');
    }

    _logger.debug('Discovering connected FIDO2 devices...');
    final devInfoList = b.fidoDevInfoNew(_maxDevices);
    final found = calloc<Size>();

    try {
      final manifestRc = b.fidoDevInfoManifest(devInfoList, _maxDevices, found);
      if (manifestRc != fidoOk) {
        _logger.error(
          'FIDO2 device manifest failed (libfido2 error: $manifestRc).',
        );
        throw const PasskeyNotSupportedException(
          'Failed to discover FIDO2 devices.',
        );
      }

      final deviceCount = found.value;
      if (deviceCount == 0) {
        _logger.error(
          'No FIDO2 devices found. A USB security key must be connected.',
        );
        throw const PasskeyNotSupportedException(
          'No FIDO2 security key detected. '
          'Please insert a FIDO2 USB key.',
        );
      }

      _logger.debug('Found $deviceCount FIDO2 device(s). Trying each...');

      // Try each discovered device. Some security keys (e.g. YubiKey) expose
      // multiple HID interfaces (OTP and FIDO). Only the FIDO interface
      // will successfully complete the CTAPHID_INIT handshake. The manifest
      // may list all of them, so we iterate until one opens successfully.
      int? lastError;
      String? lastPath;
      for (var i = 0; i < deviceCount; i++) {
        final entry = b.fidoDevInfoPtr(devInfoList, i);
        final path = b.fidoDevInfoPath(entry);
        final pathStr = path.toDartString();
        _logger.debug('Trying FIDO2 device [$i]: $pathStr');

        final dev = b.fidoDevNew();
        // Block signals during fido_dev_open to prevent Dart VM's
        // SIGPROF from interrupting libfido2's ppoll() with EINTR.
        final savedMask = _blockProfilerSignal();
        final openRc = b.fidoDevOpen(dev, path);
        _restoreSignals(savedMask);
        if (openRc == fidoOk) {
          _logger.info('FIDO2 device at $pathStr opened successfully.');
          return _DeviceResult(device: dev, devInfoList: devInfoList);
        }

        // Open failed — free this handle and try the next device.
        _logger.debug(
          'Could not open $pathStr (libfido2 error: $openRc). '
          'Trying next device...',
        );
        final devPtr = calloc<Pointer>();
        devPtr.value = dev;
        b.fidoDevFree(devPtr);
        calloc.free(devPtr);
        lastError = openRc;
        lastPath = pathStr;
      }

      // None of the discovered devices could be opened.
      _logger.error(
        'None of the $deviceCount discovered FIDO2 device(s) could be '
        'opened. Last device tried: $lastPath '
        '(libfido2 error: $lastError). '
        'If the error is -2 (RX), the device may expose multiple HID '
        'interfaces and none responded to the FIDO2 protocol. '
        'If the error is -1 (TX) or related to permissions, '
        'ensure the current user has read/write access to the hidraw device '
        'files (add udev rules if needed).',
      );
      throw PasskeyNotSupportedException(
        'Could not open any of the $deviceCount discovered FIDO2 device(s). '
        'Last error: $lastError on $lastPath.',
      );
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
    _logger.error(
      'libfido2 operation "$operation" failed with error code $rc.',
    );
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
      case fidoErrPinInvalid:
        return const PasskeyAssertionFailedException(
          'The PIN entered is incorrect.',
        );
      case fidoErrPinAuthBlocked:
        return const PasskeyAssertionFailedException(
          'PIN authentication blocked — too many failed attempts. '
          'Remove and re-insert the key, then try again.',
        );
      case fidoErrUvBlocked:
        return const PasskeyAssertionFailedException(
          'User verification blocked.',
        );
      case fidoErrPinPolicyViolation:
        return const PasskeyAssertionFailedException(
          'PIN does not meet authenticator policy requirements.',
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
  /// Maps a WebAuthn `userVerification` preference to a libfido2 UV option.
  ///
  /// For USB security keys, `preferred` should map to `fidoOptOmit` (not
  /// `fidoOptTrue`) because setting `uv: true` tells the authenticator
  /// that the platform has already collected PIN/UV auth, which requires
  /// providing a `pinUvAuthParam`. Since we handle PIN collection
  /// separately via [pinProvider], we omit UV and let the authenticator
  /// handle it through the PIN protocol.
  static int _parseUserVerification(String? uv) {
    switch (uv) {
      case 'required':
        return fidoOptTrue;
      case 'preferred':
        // Omit UV for USB keys — the authenticator will prompt for
        // PIN/biometric if needed, without requiring pinUvAuthParam.
        return fidoOptOmit;
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

  /// Builds a CBOR-encoded attestation object matching the format produced
  /// by CTAP2 authenticators.
  ///
  /// **IMPORTANT**: The CTAP2 `authenticatorMakeCredential` response uses
  /// **integer keys** (not text strings) for the top-level map:
  ///   - 0x01 = fmt (text string value)
  ///   - 0x02 = authData (byte string value)
  ///   - 0x03 = attStmt (map value)
  ///
  /// Browsers pass this raw CBOR directly as `attestationObject` to the
  /// relying party. Cognito (and other servers) expect this exact format.
  /// Our previous implementation used text string keys ("fmt", "attStmt",
  /// "authData") which caused Cognito to reject with "Credential data is
  /// not valid".
  ///
  /// The inner `attStmt` map uses text string keys per the WebAuthn spec:
  ///   - "alg": COSE algorithm identifier
  ///   - "sig": signature bytes
  ///   - "x5c": array of certificate bytes (optional)
  static Uint8List _buildCborAttestationObject({
    required String fmt,
    required Uint8List authData,
    required Uint8List sig,
    required Uint8List x5c,
    required int algorithm,
  }) {
    final out = BytesBuilder();

    // CBOR map with 3 entries
    out.addByte(0xa3);

    // Key "fmt" (text string key per WebAuthn spec §6.5.4)
    // NOTE: The WebAuthn spec defines attestationObject with text string
    // keys, NOT CTAP2 integer keys. Browsers translate the CTAP2 integer
    // keys (1,2,3) to text string keys ("fmt","authData","attStmt") when
    // constructing the attestationObject returned to the relying party.
    _cborWriteTextString(out, 'fmt');
    _cborWriteTextString(out, fmt);

    // Key "attStmt"
    _cborWriteTextString(out, 'attStmt');
    // Value: map with 2 or 3 entries
    if (x5c.isNotEmpty) {
      out.addByte(0xa3); // 3 entries: alg, sig, x5c
    } else {
      out.addByte(0xa2); // 2 entries: alg, sig
    }

    // attStmt.alg (text key + negative int value)
    _cborWriteTextString(out, 'alg');
    _cborWriteNegativeInt(out, algorithm); // e.g. -7

    // attStmt.sig (text key + byte string value)
    _cborWriteTextString(out, 'sig');
    _cborWriteByteString(out, sig);

    // attStmt.x5c (text key + array of byte strings)
    if (x5c.isNotEmpty) {
      _cborWriteTextString(out, 'x5c');
      out.addByte(0x81); // array of 1 item
      _cborWriteByteString(out, x5c);
    }

    // Key "authData"
    _cborWriteTextString(out, 'authData');
    // Value: byte string (raw authenticator data)
    _cborWriteByteString(out, authData);

    return Uint8List.fromList(out.toBytes());
  }

  /// Writes a CBOR text string (major type 3).
  static void _cborWriteTextString(BytesBuilder out, String s) {
    final bytes = utf8.encode(s);
    _cborWriteTypeAndLength(out, 3, bytes.length);
    out.add(bytes);
  }

  /// Writes a CBOR byte string (major type 2).
  static void _cborWriteByteString(BytesBuilder out, Uint8List bytes) {
    _cborWriteTypeAndLength(out, 2, bytes.length);
    out.add(bytes);
  }

  /// Writes a CBOR negative integer (major type 1).
  /// For COSE algorithm IDs like -7, CBOR encodes as 1-based: value = -1 - n.
  static void _cborWriteNegativeInt(BytesBuilder out, int value) {
    if (value >= 0) {
      // Positive int (major type 0)
      _cborWriteTypeAndLength(out, 0, value);
    } else {
      // Negative int (major type 1): encode -1-value
      _cborWriteTypeAndLength(out, 1, -1 - value);
    }
  }

  /// Writes the CBOR major type + length header.
  static void _cborWriteTypeAndLength(
    BytesBuilder out,
    int majorType,
    int length,
  ) {
    final mt = majorType << 5;
    if (length < 24) {
      out.addByte(mt | length);
    } else if (length < 256) {
      out.addByte(mt | 24);
      out.addByte(length);
    } else if (length < 65536) {
      out.addByte(mt | 25);
      out.addByte((length >> 8) & 0xff);
      out.addByte(length & 0xff);
    } else {
      out.addByte(mt | 26);
      out.addByte((length >> 24) & 0xff);
      out.addByte((length >> 16) & 0xff);
      out.addByte((length >> 8) & 0xff);
      out.addByte(length & 0xff);
    }
  }

  /// Strips the CBOR byte string header from data returned by libfido2.
  ///
  /// libfido2's `fido_cred_authdata_ptr()` returns the authenticator data
  /// wrapped in a CBOR byte string (major type 2). For example, 180 bytes
  /// of raw authData are returned as:
  ///   `58 b4` + 180 raw bytes  (0x58 = byte string with 1-byte length)
  ///
  /// We need to strip this CBOR header to get the raw authenticator data
  /// bytes for use in both:
  ///  1. Our reconstructed attestation object
  ///  2. The `authenticatorData` field in the W3C response JSON
  ///
  /// CBOR byte string encoding (major type 2 = 0x40):
  ///   - 0x40..0x57: length 0..23 encoded in the initial byte
  ///   - 0x58 + 1 byte: length 24..255
  ///   - 0x59 + 2 bytes: length 256..65535
  ///   - 0x5a + 4 bytes: length 65536..2^32-1
  static Uint8List _stripCborByteStringHeader(Uint8List cborBytes) {
    if (cborBytes.isEmpty) return cborBytes;

    final firstByte = cborBytes[0];
    final majorType = firstByte >> 5;

    // If it's not a CBOR byte string (major type 2), return as-is.
    if (majorType != 2) return cborBytes;

    final additionalInfo = firstByte & 0x1f;
    int headerLen;
    if (additionalInfo < 24) {
      headerLen = 1; // length encoded in initial byte
    } else if (additionalInfo == 24) {
      headerLen = 2; // 1 byte length follows
    } else if (additionalInfo == 25) {
      headerLen = 3; // 2 byte length follows
    } else if (additionalInfo == 26) {
      headerLen = 5; // 4 byte length follows
    } else {
      // Unknown encoding — return as-is.
      return cborBytes;
    }

    if (cborBytes.length <= headerLen) return cborBytes;
    return Uint8List.sublistView(cborBytes, headerLen);
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

  /// Runs `fido_dev_make_cred` synchronously on the current thread using the
  /// instance's [_bindings]. Used in test mode (when [_useIsolate] is false)
  /// so mock bindings are exercised instead of spawning an isolate.
  int _makeCred(
    LibFido2Bindings b,
    Pointer dev,
    Pointer cred,
    Pointer<Utf8> pin,
  ) {
    final savedMask = _blockProfilerSignal();
    final rc = b.fidoDevMakeCred(dev, cred, pin);
    _restoreSignals(savedMask);
    return rc;
  }

  /// Runs `fido_dev_get_assert` synchronously on the current thread using the
  /// instance's [_bindings]. Used in test mode (when [_useIsolate] is false)
  /// so mock bindings are exercised instead of spawning an isolate.
  int _getAssert(
    LibFido2Bindings b,
    Pointer dev,
    Pointer assert_,
    Pointer<Utf8> pin,
  ) {
    final savedMask = _blockProfilerSignal();
    final rc = b.fidoDevGetAssert(dev, assert_, pin);
    _restoreSignals(savedMask);
    return rc;
  }
}

// ── Isolate helpers for non-blocking FIDO2 operations ────────────────────────
//
// The libfido2 functions fido_dev_make_cred() and fido_dev_get_assert() block
// for several seconds while waiting for the user to touch the security key.
// Running them on the main isolate freezes the Flutter UI (no animations,
// no Cancel button). These top-level functions are designed to run inside
// Isolate.run() — they re-open libfido2.so (since DynamicLibrary handles
// are per-isolate), reconstruct the native pointers from integer addresses
// (which are valid across isolates in the same process), block SIGPROF, and
// call the blocking FFI function.

/// Runs `fido_dev_make_cred` in a background isolate via `compute()`.
/// [addrs] is `[devAddr, credAddr, pinAddr]` — raw pointer addresses from the
/// main isolate. Returns the libfido2 result code.
int _isolateMakeCred(List<int> addrs) {
  final lib = DynamicLibrary.open('libfido2.so');
  final bindings = LibFido2Bindings(lib);

  final dev = Pointer.fromAddress(addrs[0]);
  final cred = Pointer.fromAddress(addrs[1]);
  final pin = Pointer<Utf8>.fromAddress(addrs[2]);

  final savedMask = _blockProfilerSignal();
  final rc = bindings.fidoDevMakeCred(dev, cred, pin);
  _restoreSignals(savedMask);

  return rc;
}

/// Runs `fido_dev_get_assert` in a background isolate via `compute()`.
/// [addrs] is `[devAddr, assertAddr, pinAddr]` — raw pointer addresses from
/// the main isolate. Returns the libfido2 result code.
int _isolateGetAssert(List<int> addrs) {
  final lib = DynamicLibrary.open('libfido2.so');
  final bindings = LibFido2Bindings(lib);

  final dev = Pointer.fromAddress(addrs[0]);
  final assert_ = Pointer.fromAddress(addrs[1]);
  final pin = Pointer<Utf8>.fromAddress(addrs[2]);

  final savedMask = _blockProfilerSignal();
  final rc = bindings.fidoDevGetAssert(dev, assert_, pin);
  _restoreSignals(savedMask);

  return rc;
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
