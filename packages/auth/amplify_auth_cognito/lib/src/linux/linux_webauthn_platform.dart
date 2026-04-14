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

/// Polling interval for touch detection (milliseconds).
const int _touchPollIntervalMs = 200;

/// Timeout for touch detection (milliseconds).
const int _touchTimeoutMs = 30000;

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
/// ## Multi-Device Flow (Touch-to-Identify)
///
/// When multiple FIDO2 keys are connected, we use libfido2's touch detection
/// API (`fido_dev_get_touch_begin`/`fido_dev_get_touch_status`) to identify
/// which device the user wants to use — **without requiring a PIN**. All
/// connected keys blink simultaneously; the first one the user touches is
/// selected. Then, if that device requires a PIN, we prompt for it. Finally,
/// the actual CTAP2 operation runs on the selected device (requiring a
/// second touch).
///
/// **Flow:**
/// 1. Touch dialog: "Touch your security key"
/// 2. All devices blink (touch detection, no PIN)
/// 3. User touches a key → device identified
/// 4. If device needs PIN → PIN dialog → user enters PIN
/// 5. Touch dialog: "Touch your security key again"
/// 6. CTAP2 operation runs on selected device → success
///
/// ## Single-Device Flow
///
/// With only one device, we skip touch-to-identify and run the CTAP2
/// operation directly. If it returns `PIN_REQUIRED`, we prompt for PIN
/// and retry (requiring a second touch).
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

    // Discover and open ALL devices (awaits pending cleanup from cancelled ops).
    final multiResult = await _discoverAndOpenAllDevices(b);
    final allDevices = multiResult.devices;
    final devInfoList = multiResult.devInfoList;

    // For registration, filter to devices that support resident keys if
    // required.
    final candidateDevices = <_OpenedDevice>[];
    if (residentKey == 'required' || residentKey == 'preferred') {
      for (final opened in allDevices) {
        if (_checkDeviceSupportsResidentKey(b, opened.device, opened.path)) {
          candidateDevices.add(opened);
        } else {
          _logger.debug(
            'Device ${opened.path} does not support resident keys — '
            'skipping for registration.',
          );
        }
      }
      if (candidateDevices.isEmpty) {
        _closeAllDevices(b, allDevices);
        _freeDevInfoList(b, devInfoList);
        _logger.error(
          'No connected security key supports resident/discoverable '
          'credentials (rk option missing or false in CBOR info). '
          'residentKey=$residentKey.',
        );
        throw const PasskeyRegistrationFailedException(
          'This security key does not support passkeys (discoverable '
          'credentials). Please use a compatible key such as a '
          'YubiKey 5 or similar FIDO2 key with resident key support.',
        );
      }
    } else {
      candidateDevices.addAll(allDevices);
    }

    // ── Phase 1: Touch-to-Identify (multi-device only) ──────────────────
    // When multiple candidate devices are connected, use touch detection
    // to identify which device the user wants. All keys blink; user
    // touches one to select it. No PIN needed for this step.
    //
    // For single device, skip this phase — we use it directly.
    var selectedIdx = 0;
    if (candidateDevices.length > 1) {
      try {
        selectedIdx = await _identifyDeviceByTouch(b, candidateDevices);
      } on Object {
        // Touch-to-identify failed or was cancelled. Close ALL devices
        // and free the device info list so the next attempt starts fresh.
        _logger.info(
          'Touch-to-identify cancelled/failed. Closing all devices...',
        );
        _closeAllDevices(b, allDevices);
        _freeDevInfoList(b, devInfoList);
        rethrow;
      }
      _logger.info(
        'Touch-to-identify: user selected device '
        '${candidateDevices[selectedIdx].path}.',
      );
    }
    final selectedDevice = candidateDevices[selectedIdx];

    // Cancel touch detection on all devices and close non-selected ones.
    // fido_dev_cancel() is needed to clear the pending touch state from
    // fido_dev_get_touch_begin(). Without this, the HID-level touch state
    // persists and on retry the previously-touched key immediately reports
    // touched=1 again, preventing the user from switching keys.
    for (var i = 0; i < allDevices.length; i++) {
      final opened = allDevices[i];
      b.fidoDevCancel(opened.device);
      if (opened.device.address != selectedDevice.device.address) {
        b.fidoDevClose(opened.device);
        final devPtr = calloc<Pointer>();
        devPtr.value = opened.device;
        b.fidoDevFree(devPtr);
        calloc.free(devPtr);
      }
    }

    // Allocate a credential object for the selected device.
    final cred = b.fidoCredNew();
    final credFreePtr = calloc<Pointer>();
    credFreePtr.value = cred;

    // When the user cancels, we must NOT free native resources immediately
    // because the background isolate may still be using them.
    var deferredCleanup = false;

    try {
      return await using((Arena arena) async {
        final hashPtr = arena<Uint8>(clientDataHash.length);
        for (var i = 0; i < clientDataHash.length; i++) {
          hashPtr[i] = clientDataHash[i];
        }
        final rpIdNative = rpId.toNativeUtf8(allocator: arena);
        final rpNameNative = rpName.toNativeUtf8(allocator: arena);
        final userIdPtr = arena<Uint8>(userId.length);
        for (var i = 0; i < userId.length; i++) {
          userIdPtr[i] = userId[i];
        }
        final userNameNative = userName.toNativeUtf8(allocator: arena);
        final displayNameNative = displayName.toNativeUtf8(allocator: arena);

        final uvOpt = _parseUserVerification(userVerification);

        // Configure the credential object.
        _checkFido(b.fidoCredSetType(cred, algorithm), 'set type', true);
        _checkFido(
          b.fidoCredSetClientdataHash(cred, hashPtr, clientDataHash.length),
          'set clientdata hash',
          true,
        );
        _checkFido(
          b.fidoCredSetRp(cred, rpIdNative, rpNameNative),
          'set rp',
          true,
        );
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
        if (residentKey == 'required' || residentKey == 'preferred') {
          _checkFido(b.fidoCredSetRk(cred, fidoOptTrue), 'set rk', true);
        }
        if (uvOpt != fidoOptOmit) {
          _checkFido(b.fidoCredSetUv(cred, uvOpt), 'set uv', true);
        }

        // ── Phase 2: PIN (if needed) ────────────────────────────────────
        // Check if the selected device requires a PIN. If so, prompt now
        // — before the CTAP2 operation. This ensures the operation can
        // block for touch instead of returning PIN_REQUIRED instantly.
        var pinNative = nullptr.cast<Utf8>();
        final needsPin = _getDevicePinStatus(b, selectedDevice.device) ==
            _PinStatus.configured;
        if (needsPin) {
          final retries = _getRetryCount(b, selectedDevice.device);
          _logger.info(
            'Selected device ${selectedDevice.path} requires a PIN. '
            'Retries remaining: $retries',
          );
          if (retries <= 0) {
            throw const PasskeyAssertionFailedException(
              'PIN retries exhausted. The authenticator PIN is locked.',
            );
          }
          pinNative = await _promptForPin(
            retries: retries,
            errorMessage: 'Enter PIN for your security key',
          );
        }

        _logger.debug(
          'createCredential: params ready — '
          'algorithm=$algorithm, rpId=$rpId, '
          'userId=${userId.length}B, '
          'clientDataHash=${clientDataHash.length}B, '
          'residentKey=$residentKey, uv=$userVerification (opt=$uvOpt), '
          'selectedDevice=${selectedDevice.path}',
        );

        // ── Phase 3: CTAP2 Operation ────────────────────────────────────
        // Run fido_dev_make_cred on the selected device. This blocks
        // until the user touches the key (or timeout).
        // PIN retry loop: if PIN was wrong, re-prompt and retry.
        var rc = fidoOk;
        while (true) {
          final touchHandle = showFidoTouchDialog();
          await Future<void>.delayed(const Duration(milliseconds: 50));

          final dev = selectedDevice.device;
          final addrs = [dev.address, cred.address, pinNative.address];
          final Future<int> f;
          if (_useIsolate) {
            f = compute(_isolateMakeCred, addrs);
          } else {
            f = Future(() => _makeCred(b, dev, cred, pinNative));
          }

          // Race against cancel.
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
            f.then((result) {
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
            b.fidoDevCancel(selectedDevice.device);
            deferredCleanup = true;
            _pendingDeviceCleanup = f.then((_) {
              _logger.debug(
                'Deferred cleanup: isolate finished after cancel.',
              );
              _sanitizePin(pinNative);
              _closeDevice(b, selectedDevice);
              b.fidoCredFree(credFreePtr);
              calloc.free(credFreePtr);
              _freeDevInfoList(b, devInfoList);
            }).catchError((Object e) {
              _logger.warn('Deferred cleanup error: $e. Freeing anyway...');
              _sanitizePin(pinNative);
              _closeDevice(b, selectedDevice);
              b.fidoCredFree(credFreePtr);
              calloc.free(credFreePtr);
              _freeDevInfoList(b, devInfoList);
            });
            rethrow;
          }
          touchHandle.dismiss();

          // Handle PIN errors with retry loop.
          if (rc == fidoErrPinRequired || rc == fidoErrPinInvalid) {
            if (rc == fidoErrPinRequired) {
              _logger.info(
                'Device ${selectedDevice.path} requires a PIN. '
                'Prompting user...',
              );
            } else {
              _logger.warn('Wrong PIN entered. Re-prompting user...');
            }
            _sanitizePin(pinNative);
            final retries = _getRetryCount(b, selectedDevice.device);
            _logger.info('PIN retries remaining: $retries');
            if (retries <= 0) {
              throw const PasskeyAssertionFailedException(
                'PIN retries exhausted. The authenticator PIN is locked.',
              );
            }
            pinNative = await _promptForPin(
              retries: retries,
              errorMessage: rc == fidoErrPinInvalid
                  ? 'Wrong PIN — please try again'
                  : 'Enter PIN for your security key',
            );
            continue;
          }

          if (rc == fidoErrPinAuthBlocked) {
            _sanitizePin(pinNative);
            throw const PasskeyAssertionFailedException(
              'PIN authentication blocked — too many failed attempts. '
              'Remove and re-insert the key, then try again.',
            );
          }

          break;
        }

        _sanitizePin(pinNative);
        _checkFido(rc, 'make credential', true);

        // Read result fields from the credential object.
        final credIdPtr = b.fidoCredIdPtr(cred);
        final credIdLen = b.fidoCredIdLen(cred);
        final credIdBytes = _copyNativeBytes(credIdPtr, credIdLen);

        final authdataPtr = b.fidoCredAuthdataPtr(cred);
        final authdataLen = b.fidoCredAuthdataLen(cred);
        final authdataCborBytes = _copyNativeBytes(authdataPtr, authdataLen);
        final authdataBytes = _stripCborByteStringHeader(authdataCborBytes);

        // Post-creation verification: check authenticator data flags.
        if ((residentKey == 'required' || residentKey == 'preferred') &&
            authdataBytes.length > 32) {
          final flags = authdataBytes[32];
          final uvSet = (flags & 0x04) != 0;
          final upSet = (flags & 0x01) != 0;
          _logger.debug(
            'Authenticator data flags: 0x${flags.toRadixString(16).padLeft(2, '0')} '
            '(UP=${upSet ? 1 : 0}, UV=${uvSet ? 1 : 0})',
          );
          if (!uvSet) {
            final winnerPinStatus = _getDevicePinStatus(
              b,
              selectedDevice.device,
            );
            _logger.warn(
              'Credential created with rk=$residentKey but UV flag is '
              'NOT set (flags=0x${flags.toRadixString(16)}). '
              'PIN status: $winnerPinStatus.',
            );

            if (winnerPinStatus == _PinStatus.supportedButNotSet) {
              throw const PasskeyRegistrationFailedException(
                'This security key did not perform user verification, '
                'so the passkey was not stored as a discoverable '
                'credential. This can happen if:\n\n'
                '• Your key needs a PIN configured — set one using '
                '"ykman fido access change-pin" and try again.\n\n'
                '• Your key does not actually support passkeys despite '
                'claiming to — use a different key such as a YubiKey 5.',
              );
            }

            throw const PasskeyRegistrationFailedException(
              'This security key does not support passkeys (discoverable '
              'credentials). It silently created a non-discoverable '
              'credential that will not work for login. Please use a '
              'compatible key such as a YubiKey 5.',
            );
          }
        }

        final sigPtr = b.fidoCredSigPtr(cred);
        final sigLen = b.fidoCredSigLen(cred);
        final sigBytes = _copyNativeBytes(sigPtr, sigLen);

        final x5cPtr = b.fidoCredX5cPtr(cred);
        final x5cLen = b.fidoCredX5cLen(cred);
        final x5cBytes = _copyNativeBytes(x5cPtr, x5cLen);

        final fmtPtr = b.fidoCredFmt(cred);
        final fmt = fmtPtr.toDartString();

        _logger.debug(
          'createCredential: result from device ${selectedDevice.path} — '
          'credId=${credIdBytes.length}B, authdata=${authdataBytes.length}B, '
          'sig=${sigBytes.length}B, x5c=${x5cBytes.length}B, fmt=$fmt',
        );

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

        final responseDict = <String, dynamic>{
          'clientDataJSON': clientDataJsonB64,
          'attestationObject': attestationObjectB64,
          'transports': ['usb'],
        };
        responseDict['authenticatorData'] = _base64UrlEncode(authdataBytes);
        responseDict['publicKeyAlgorithm'] = algorithm;

        final response = jsonEncode({
          'id': credIdB64,
          'rawId': credIdB64,
          'type': 'public-key',
          'response': responseDict,
          'clientExtensionResults': <String, dynamic>{},
          'authenticatorAttachment': 'cross-platform',
        });

        return response;
      });
    } finally {
      if (!deferredCleanup) {
        _closeDevice(b, selectedDevice);
        b.fidoCredFree(credFreePtr);
        calloc.free(credFreePtr);
        _freeDevInfoList(b, devInfoList);
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
    final challengeB64 = options['challenge'] as String;
    final userVerification = options['userVerification'] as String?;
    final allowCredentials =
        options['allowCredentials'] as List<dynamic>? ?? [];

    // Build clientDataJSON and hash.
    final clientData = _buildClientDataJson(
      type: 'webauthn.get',
      challenge: challengeB64,
      origin: 'https://$rpId',
    );
    final clientDataBytes = utf8.encode(clientData);
    final clientDataHash = sha256.convert(clientDataBytes).bytes;

    // Discover and open ALL devices.
    final multiResult = await _discoverAndOpenAllDevices(b);
    final allDevices = multiResult.devices;
    final devInfoList = multiResult.devInfoList;

    // ── Phase 1: Touch-to-Identify (multi-device only) ──────────────────
    var selectedIdx = 0;
    if (allDevices.length > 1) {
      try {
        selectedIdx = await _identifyDeviceByTouch(b, allDevices);
      } on Object {
        // Touch-to-identify failed or was cancelled. Close ALL devices
        // and free the device info list so the next attempt starts fresh.
        _logger.info(
          'Touch-to-identify cancelled/failed. Closing all devices...',
        );
        _closeAllDevices(b, allDevices);
        _freeDevInfoList(b, devInfoList);
        rethrow;
      }
      _logger.info(
        'Touch-to-identify: user selected device '
        '${allDevices[selectedIdx].path}.',
      );
    }
    final selectedDevice = allDevices[selectedIdx];

    // Cancel touch detection on all devices and close non-selected ones.
    // fido_dev_cancel() clears the pending touch state from
    // fido_dev_get_touch_begin() so retries start fresh.
    for (var i = 0; i < allDevices.length; i++) {
      final opened = allDevices[i];
      b.fidoDevCancel(opened.device);
      if (opened.device.address != selectedDevice.device.address) {
        b.fidoDevClose(opened.device);
        final devPtr = calloc<Pointer>();
        devPtr.value = opened.device;
        b.fidoDevFree(devPtr);
        calloc.free(devPtr);
      }
    }

    // Allocate an assertion object for the selected device.
    final assert_ = b.fidoAssertNew();
    final assertFreePtr = calloc<Pointer>();
    assertFreePtr.value = assert_;

    var deferredCleanup = false;

    try {
      return await using((Arena arena) async {
        final hashPtr = arena<Uint8>(clientDataHash.length);
        for (var i = 0; i < clientDataHash.length; i++) {
          hashPtr[i] = clientDataHash[i];
        }
        final rpIdNative = rpId.toNativeUtf8(allocator: arena);
        final uvOpt = _parseUserVerification(userVerification);

        // Configure the assertion object.
        _checkFido(
          b.fidoAssertSetClientdataHash(
            assert_,
            hashPtr,
            clientDataHash.length,
          ),
          'set clientdata hash',
          false,
        );
        _checkFido(
          b.fidoAssertSetRp(assert_, rpIdNative),
          'set rp',
          false,
        );
        _checkFido(
          b.fidoAssertSetUv(assert_, uvOpt),
          'set uv',
          false,
        );

        // Add allowed credentials.
        for (final cred in allowCredentials) {
          final credMap = cred as Map<String, dynamic>;
          final credIdBytes = _base64UrlDecode(credMap['id'] as String);
          final credIdPtr = arena<Uint8>(credIdBytes.length);
          for (var j = 0; j < credIdBytes.length; j++) {
            credIdPtr[j] = credIdBytes[j];
          }
          _checkFido(
            b.fidoAssertAllowCred(assert_, credIdPtr, credIdBytes.length),
            'allow cred',
            false,
          );
        }

        // ── Phase 2: PIN (if needed) ────────────────────────────────────
        var pinNative = nullptr.cast<Utf8>();
        final needsPin = _getDevicePinStatus(b, selectedDevice.device) ==
            _PinStatus.configured;
        if (needsPin) {
          final retries = _getRetryCount(b, selectedDevice.device);
          _logger.info(
            'Selected device ${selectedDevice.path} requires a PIN. '
            'Retries remaining: $retries',
          );
          if (retries <= 0) {
            throw const PasskeyAssertionFailedException(
              'PIN retries exhausted. The authenticator PIN is locked.',
            );
          }
          pinNative = await _promptForPin(
            retries: retries,
            errorMessage: 'Enter PIN for your security key',
          );
        }

        // ── Phase 3: CTAP2 Operation ────────────────────────────────────
        var rc = fidoOk;
        while (true) {
          final touchHandle = showFidoTouchDialog();
          await Future<void>.delayed(const Duration(milliseconds: 50));

          final dev = selectedDevice.device;
          final addrs = [dev.address, assert_.address, pinNative.address];
          final Future<int> f;
          if (_useIsolate) {
            f = compute(_isolateGetAssert, addrs);
          } else {
            f = Future(() => _getAssert(b, dev, assert_, pinNative));
          }

          // Race against cancel.
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
            f.then((result) {
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
            b.fidoDevCancel(selectedDevice.device);
            deferredCleanup = true;
            _pendingDeviceCleanup = f.then((_) {
              _logger.debug(
                'Deferred cleanup (assert): isolate finished after cancel.',
              );
              _sanitizePin(pinNative);
              _closeDevice(b, selectedDevice);
              b.fidoAssertFree(assertFreePtr);
              calloc.free(assertFreePtr);
              _freeDevInfoList(b, devInfoList);
            }).catchError((Object e) {
              _logger.warn(
                'Deferred cleanup (assert): error: $e. Freeing anyway...',
              );
              _sanitizePin(pinNative);
              _closeDevice(b, selectedDevice);
              b.fidoAssertFree(assertFreePtr);
              calloc.free(assertFreePtr);
              _freeDevInfoList(b, devInfoList);
            });
            rethrow;
          }
          touchHandle.dismiss();

          // Handle PIN errors with retry loop.
          if (rc == fidoErrPinRequired || rc == fidoErrPinInvalid) {
            if (rc == fidoErrPinRequired) {
              _logger.info(
                'Device ${selectedDevice.path} requires a PIN. '
                'Prompting user...',
              );
            } else {
              _logger.warn('Wrong PIN entered (assert). Re-prompting...');
            }
            _sanitizePin(pinNative);
            final retries = _getRetryCount(b, selectedDevice.device);
            _logger.info('PIN retries remaining: $retries');
            if (retries <= 0) {
              throw const PasskeyAssertionFailedException(
                'PIN retries exhausted. The authenticator PIN is locked.',
              );
            }
            pinNative = await _promptForPin(
              retries: retries,
              errorMessage: rc == fidoErrPinInvalid
                  ? 'Wrong PIN — please try again'
                  : 'Enter PIN for your security key',
            );
            continue;
          }

          if (rc == fidoErrPinAuthBlocked) {
            _sanitizePin(pinNative);
            throw const PasskeyAssertionFailedException(
              'PIN authentication blocked — too many failed attempts. '
              'Remove and re-insert the key, then try again.',
            );
          }

          break;
        }

        _sanitizePin(pinNative);
        _checkFido(rc, 'get assertion', false);

        // Read result from the assertion object.
        const idx = 0;
        final authdataPtr = b.fidoAssertAuthdataPtr(assert_, idx);
        final authdataLen = b.fidoAssertAuthdataLen(assert_, idx);
        final authdataCborBytes = _copyNativeBytes(authdataPtr, authdataLen);
        final authdataBytes = _stripCborByteStringHeader(authdataCborBytes);

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

        _logger.debug(
          'getCredential: result from device ${selectedDevice.path}',
        );

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
          'clientExtensionResults': <String, dynamic>{},
          'authenticatorAttachment': 'cross-platform',
        };

        return jsonEncode(responseMap);
      });
    } finally {
      if (!deferredCleanup) {
        _closeDevice(b, selectedDevice);
        b.fidoAssertFree(assertFreePtr);
        calloc.free(assertFreePtr);
        _freeDevInfoList(b, devInfoList);
      }
    }
  }

  // ── Touch-to-Identify ──────────────────────────────────────────────────────

  /// Identifies which FIDO2 device the user wants by using libfido2's
  /// touch detection API.
  ///
  /// Calls `fido_dev_get_touch_begin()` on all devices (causing them all
  /// to blink), then polls `fido_dev_get_touch_status()` in a round-robin
  /// loop. The first device where `touched == 1` is the winner.
  ///
  /// **No PIN is required** — this is purely a physical presence check.
  ///
  /// Returns the index of the touched device in [devices].
  /// Throws [PasskeyCancelledException] if the user cancels or times out.
  Future<int> _identifyDeviceByTouch(
    LibFido2Bindings b,
    List<_OpenedDevice> devices,
  ) async {
    _logger.debug(
      'Touch-to-identify: starting on ${devices.length} devices...',
    );

    final touchHandle = showFidoTouchDialog();
    await Future<void>.delayed(const Duration(milliseconds: 50));

    try {
      // Start touch detection on all devices.
      final touchActive = List<bool>.filled(devices.length, false);
      for (var i = 0; i < devices.length; i++) {
        final savedMask = _blockProfilerSignal();
        final rc = b.fidoDevGetTouchBegin(devices[i].device);
        _restoreSignals(savedMask);
        if (rc == fidoOk) {
          touchActive[i] = true;
          _logger.debug(
            'Touch detection started on ${devices[i].path}.',
          );
        } else {
          _logger.warn(
            'Touch detection failed on ${devices[i].path} '
            '(error: $rc). Skipping.',
          );
        }
      }

      if (!touchActive.contains(true)) {
        _logger.warn(
          'Touch detection not supported on any device. '
          'Falling back to first device.',
        );
        return 0;
      }

      // Poll for touch in round-robin.
      final touchedPtr = calloc<Int32>();
      try {
        var elapsed = 0;
        while (elapsed < _touchTimeoutMs) {
          // Check for cancel from touch dialog.
          final cancelled = await Future.any([
            touchHandle.cancelled,
            Future.delayed(
              const Duration(milliseconds: 1),
              () => false,
            ),
          ]);
          if (cancelled) {
            throw const PasskeyCancelledException(
              'User cancelled device selection.',
            );
          }

          for (var i = 0; i < devices.length; i++) {
            if (!touchActive[i]) continue;

            touchedPtr.value = 0;
            final savedMask = _blockProfilerSignal();
            final rc = b.fidoDevGetTouchStatus(
              devices[i].device,
              touchedPtr,
              _touchPollIntervalMs,
            );
            _restoreSignals(savedMask);

            if (rc != fidoOk) {
              _logger.warn(
                'Lost contact with ${devices[i].path} '
                '(error: $rc). Removing from poll.',
              );
              touchActive[i] = false;
              continue;
            }

            if (touchedPtr.value != 0) {
              _logger.info(
                'Touch detected on device [$i]: ${devices[i].path}.',
              );
              return i;
            }
          }

          elapsed += _touchPollIntervalMs;

          if (!touchActive.contains(true)) {
            _logger.error('All devices lost during touch polling.');
            throw const PasskeyNotSupportedException(
              'All security keys disconnected during device selection.',
            );
          }
        }
      } finally {
        calloc.free(touchedPtr);
      }

      // Timeout — no touch detected.
      throw const PasskeyCancelledException(
        'No touch detected within timeout. Please try again.',
      );
    } finally {
      touchHandle.dismiss();
    }
  }

  // ── PIN helpers ────────────────────────────────────────────────────────────

  /// Returns the PIN status of a device by examining CBOR info options.
  ///
  /// The `clientPin` option in CBOR info indicates:
  ///   - **absent** → device does not support PIN at all
  ///     (e.g. budget keys like ZUKEY 2 FIDO).
  ///   - **`true`** → PIN is configured and required for operations.
  ///   - **`false`** → PIN is supported but **not yet configured**.
  ///     The device cannot perform user verification until a PIN is set.
  ///     This is the state Chrome warns about: "Your security key is not
  ///     protected with a PIN."
  _PinStatus _getDevicePinStatus(LibFido2Bindings b, Pointer dev) {
    final ci = b.fidoCborInfoNew();
    final ciPtr = calloc<Pointer>();
    ciPtr.value = ci;

    try {
      final savedMask = _blockProfilerSignal();
      final rc = b.fidoDevGetCborInfo(dev, ci);
      _restoreSignals(savedMask);

      if (rc != fidoOk) {
        return _PinStatus.unknown;
      }

      final optCount = b.fidoCborInfoOptionsLen(ci);
      final namesPtr = b.fidoCborInfoOptionsNamePtr(ci);
      final valuesPtr = b.fidoCborInfoOptionsValuePtr(ci);

      for (var i = 0; i < optCount; i++) {
        final name = namesPtr[i].toDartString();
        if (name == 'clientPin') {
          return valuesPtr[i]
              ? _PinStatus.configured
              : _PinStatus.supportedButNotSet;
        }
      }

      return _PinStatus.notSupported;
    } finally {
      b.fidoCborInfoFree(ciPtr);
      calloc.free(ciPtr);
    }
  }

  /// Queries the device's CBOR info to check if it supports resident
  /// (discoverable) credentials via the `rk` option.
  bool _checkDeviceSupportsResidentKey(
    LibFido2Bindings b,
    Pointer dev,
    String devicePath,
  ) {
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
          'Cannot determine resident key support.',
        );
        return false;
      }

      final optCount = b.fidoCborInfoOptionsLen(ci);
      final namesPtr = b.fidoCborInfoOptionsNamePtr(ci);
      final valuesPtr = b.fidoCborInfoOptionsValuePtr(ci);

      var rkOption = false;
      String clientPinStatus = 'absent';
      for (var i = 0; i < optCount; i++) {
        final name = namesPtr[i].toDartString();
        final value = valuesPtr[i];
        if (name == 'rk') {
          rkOption = value;
        } else if (name == 'clientPin') {
          clientPinStatus = value ? 'true (configured)' : 'false (not set)';
        }
      }

      if (!rkOption) {
        _logger.debug(
          'Device CBOR info does not include "rk" option or rk=false — '
          'resident credentials are not supported.',
        );
        return false;
      }

      final rkRemaining = b.fidoCborInfoRkRemaining(ci);

      final versionsLen = b.fidoCborInfoVersionsLen(ci);
      final versionsPtr = b.fidoCborInfoVersionsPtr(ci);
      final versions = <String>[];
      for (var i = 0; i < versionsLen; i++) {
        versions.add(versionsPtr[i].toDartString());
      }

      _logger.debug(
        'Device $devicePath CBOR info: rk=true, rkRemaining=$rkRemaining, '
        'clientPin=$clientPinStatus, versions=$versions',
      );

      if (rkRemaining == 0) {
        _logger.warn(
          'Device $devicePath reports rk=true but rkRemaining=0 '
          '(no slots left). This key cannot store new passkeys.',
        );
        return false;
      }

      return true;
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

  /// Prompts the user for a PIN, showing an error message and retry count.
  ///
  /// Uses [pinProvider] if set, otherwise shows the built-in dialog.
  /// Throws [PasskeyCancelledException] if the user cancels.
  Future<Pointer<Utf8>> _promptForPin({
    required int retries,
    required String errorMessage,
  }) async {
    final String? pin;
    if (pinProvider != null) {
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

  /// Discovers connected FIDO2 devices and opens **all** that respond to the
  /// CTAPHID_INIT handshake.
  Future<_MultiDeviceResult> _discoverAndOpenAllDevices(
    LibFido2Bindings b,
  ) async {
    // Wait for any pending deferred cleanup from a previous cancelled
    // operation.
    if (_pendingDeviceCleanup != null) {
      _logger.info(
        'Waiting for pending device cleanup from previous '
        'cancelled operation before opening device...',
      );
      final dismissPreparing = showFidoPreparingDialog();
      try {
        await _pendingDeviceCleanup;
      } on Object {
        // Cleanup future may have completed with an error — that's fine.
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

      _logger.debug('Found $deviceCount FIDO2 device(s). Opening all...');

      final openedDevices = <_OpenedDevice>[];
      int? lastError;
      String? lastPath;
      for (var i = 0; i < deviceCount; i++) {
        final entry = b.fidoDevInfoPtr(devInfoList, i);
        final path = b.fidoDevInfoPath(entry);
        final pathStr = path.toDartString();
        _logger.debug('Trying FIDO2 device [$i]: $pathStr');

        final dev = b.fidoDevNew();
        final savedMask = _blockProfilerSignal();
        final openRc = b.fidoDevOpen(dev, path);
        _restoreSignals(savedMask);
        if (openRc == fidoOk) {
          _logger.info('FIDO2 device at $pathStr opened successfully.');
          openedDevices.add(_OpenedDevice(device: dev, path: pathStr));
        } else {
          _logger.debug(
            'Could not open $pathStr (libfido2 error: $openRc). '
            'Skipping...',
          );
          final devPtr = calloc<Pointer>();
          devPtr.value = dev;
          b.fidoDevFree(devPtr);
          calloc.free(devPtr);
          lastError = openRc;
          lastPath = pathStr;
        }
      }

      if (openedDevices.isEmpty) {
        _logger.error(
          'None of the $deviceCount discovered FIDO2 device(s) could be '
          'opened. Last device tried: $lastPath '
          '(libfido2 error: $lastError).',
        );
        throw PasskeyNotSupportedException(
          'Could not open any of the $deviceCount discovered FIDO2 '
          'device(s). Last error: $lastError on $lastPath.',
        );
      }

      _logger.info(
        'Successfully opened ${openedDevices.length} FIDO2 device(s).',
      );
      return _MultiDeviceResult(
        devices: openedDevices,
        devInfoList: devInfoList,
      );
    } finally {
      calloc.free(found);
    }
  }

  /// Frees the device info list allocated by [_discoverAndOpenAllDevices].
  void _freeDevInfoList(LibFido2Bindings b, Pointer devInfoList) {
    final listPtr = calloc<Pointer>();
    listPtr.value = devInfoList;
    b.fidoDevInfoFree(listPtr, _maxDevices);
    calloc.free(listPtr);
  }

  /// Closes and frees all opened device handles.
  void _closeAllDevices(LibFido2Bindings b, List<_OpenedDevice> devices) {
    for (final opened in devices) {
      _closeDevice(b, opened);
    }
  }

  /// Closes and frees a single device handle.
  void _closeDevice(LibFido2Bindings b, _OpenedDevice opened) {
    b.fidoDevClose(opened.device);
    final devPtr = calloc<Pointer>();
    devPtr.value = opened.device;
    b.fidoDevFree(devPtr);
    calloc.free(devPtr);
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

  /// Maps a WebAuthn `userVerification` preference to a libfido2 UV option.
  static int _parseUserVerification(String? uv) {
    switch (uv) {
      case 'required':
        return fidoOptTrue;
      case 'preferred':
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

    // Key "fmt"
    _cborWriteTextString(out, 'fmt');
    _cborWriteTextString(out, fmt);

    // Key "attStmt"
    _cborWriteTextString(out, 'attStmt');
    if (x5c.isNotEmpty) {
      out.addByte(0xa3); // 3 entries: alg, sig, x5c
    } else {
      out.addByte(0xa2); // 2 entries: alg, sig
    }

    _cborWriteTextString(out, 'alg');
    _cborWriteNegativeInt(out, algorithm);

    _cborWriteTextString(out, 'sig');
    _cborWriteByteString(out, sig);

    if (x5c.isNotEmpty) {
      _cborWriteTextString(out, 'x5c');
      out.addByte(0x81); // array of 1 item
      _cborWriteByteString(out, x5c);
    }

    // Key "authData"
    _cborWriteTextString(out, 'authData');
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
  static void _cborWriteNegativeInt(BytesBuilder out, int value) {
    if (value >= 0) {
      _cborWriteTypeAndLength(out, 0, value);
    } else {
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
  static Uint8List _stripCborByteStringHeader(Uint8List cborBytes) {
    if (cborBytes.isEmpty) return cborBytes;

    final firstByte = cborBytes[0];
    final majorType = firstByte >> 5;

    if (majorType != 2) return cborBytes;

    final additionalInfo = firstByte & 0x1f;
    int headerLen;
    if (additionalInfo < 24) {
      headerLen = 1;
    } else if (additionalInfo == 24) {
      headerLen = 2;
    } else if (additionalInfo == 25) {
      headerLen = 3;
    } else if (additionalInfo == 26) {
      headerLen = 5;
    } else {
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
    var padded = input;
    final remainder = padded.length % 4;
    if (remainder != 0) {
      padded = padded.padRight(padded.length + (4 - remainder), '=');
    }
    return base64Url.decode(padded);
  }

  /// Runs `fido_dev_make_cred` synchronously using the instance's [_bindings].
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

  /// Runs `fido_dev_get_assert` synchronously using the instance's [_bindings].
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

/// Runs `fido_dev_make_cred` in a background isolate via `compute()`.
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

/// A single opened FIDO2 device handle with its HID path.
class _OpenedDevice {
  const _OpenedDevice({required this.device, required this.path});

  /// The opened FIDO2 device handle (`fido_dev_t *`).
  final Pointer device;

  /// The device path (e.g. `/dev/hidraw5`), for logging.
  final String path;
}

/// Result of multi-device discovery containing all opened device handles
/// and the device info list that must be freed by the caller.
class _MultiDeviceResult {
  const _MultiDeviceResult({required this.devices, required this.devInfoList});

  /// All successfully opened FIDO2 devices.
  final List<_OpenedDevice> devices;

  /// The device info list (must be freed with `fido_dev_info_free`).
  final Pointer devInfoList;
}

/// PIN configuration status of a FIDO2 device.
enum _PinStatus {
  /// PIN is configured and active (`clientPin: true`).
  configured,

  /// Device supports PIN but none has been set yet (`clientPin: false`).
  supportedButNotSet,

  /// Device does not support PIN (no `clientPin` option in CBOR info).
  notSupported,

  /// Could not determine PIN status (CBOR info retrieval failed).
  unknown,
}
