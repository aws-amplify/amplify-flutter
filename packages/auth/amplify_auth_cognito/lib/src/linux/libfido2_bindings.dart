// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: comment_references

import 'dart:ffi';

import 'package:ffi/ffi.dart';

// ── Error constants ──────────────────────────────────────────────────────────

/// libfido2 return code: success.
const int fidoOk = 0;

/// libfido2 return code: transmission error.
const int fidoErrTx = -1;

/// libfido2 return code: operation not allowed (user cancelled on some devices).
const int fidoErrNotAllowed = 0x27;

/// libfido2 return code: action timed out.
const int fidoErrActionTimeout = 0x2F;

/// libfido2 return code: PIN invalid (wrong PIN).
const int fidoErrPinInvalid = 0x31;

/// libfido2 return code: PIN auth blocked (too many consecutive failures).
const int fidoErrPinAuthBlocked = 0x34;

/// libfido2 return code: PIN required.
const int fidoErrPinRequired = 0x36;

/// libfido2 return code: user verification blocked.
const int fidoErrUvBlocked = 0x3C;

/// libfido2 return code: PIN policy violation (too short/long/simple).
const int fidoErrPinPolicyViolation = 0x6b;

/// COSE algorithm identifier for ES256 (ECDSA w/ SHA-256).
const int coseEs256 = -7;

// ── User verification option constants ───────────────────────────────────────

/// Omit user verification option.
const int fidoOptOmit = 0;

/// Explicitly disable user verification.
const int fidoOptFalse = 1;

/// Require user verification.
const int fidoOptTrue = 2;

// ── Native function typedefs ─────────────────────────────────────────────────

// Init
typedef _FidoInitC = Void Function(Int32 flags);
typedef _FidoInitDart = void Function(int flags);

// Device info
typedef _FidoDevInfoNewC = Pointer Function(Size n);
typedef _FidoDevInfoNewDart = Pointer Function(int n);

typedef _FidoDevInfoFreeC = Void Function(Pointer<Pointer> devlist, Size n);
typedef _FidoDevInfoFreeDart = void Function(Pointer<Pointer> devlist, int n);

typedef _FidoDevInfoManifestC =
    Int32 Function(Pointer devlist, Size n, Pointer<Size> found);
typedef _FidoDevInfoManifestDart =
    int Function(Pointer devlist, int n, Pointer<Size> found);

typedef _FidoDevInfoPathC = Pointer<Utf8> Function(Pointer di);
typedef _FidoDevInfoPathDart = Pointer<Utf8> Function(Pointer di);

typedef _FidoDevInfoPtrC = Pointer Function(Pointer devlist, Size idx);
typedef _FidoDevInfoPtrDart = Pointer Function(Pointer devlist, int idx);

// Device management
typedef _FidoDevNewC = Pointer Function();
typedef _FidoDevNewDart = Pointer Function();

typedef _FidoDevFreeC = Void Function(Pointer<Pointer> dev);
typedef _FidoDevFreeDart = void Function(Pointer<Pointer> dev);

typedef _FidoDevOpenC = Int32 Function(Pointer dev, Pointer<Utf8> path);
typedef _FidoDevOpenDart = int Function(Pointer dev, Pointer<Utf8> path);

typedef _FidoDevCloseC = Int32 Function(Pointer dev);
typedef _FidoDevCloseDart = int Function(Pointer dev);

// Device cancel — sends CTAPHID_CANCEL to abort a pending operation
typedef _FidoDevCancelC = Int32 Function(Pointer dev);
typedef _FidoDevCancelDart = int Function(Pointer dev);

// Credential creation
typedef _FidoCredNewC = Pointer Function();
typedef _FidoCredNewDart = Pointer Function();

typedef _FidoCredFreeC = Void Function(Pointer<Pointer> cred);
typedef _FidoCredFreeDart = void Function(Pointer<Pointer> cred);

typedef _FidoCredSetTypeC = Int32 Function(Pointer cred, Int32 type);
typedef _FidoCredSetTypeDart = int Function(Pointer cred, int type);

typedef _FidoCredSetClientdataHashC =
    Int32 Function(Pointer cred, Pointer<Uint8> hash, Size hashLen);
typedef _FidoCredSetClientdataHashDart =
    int Function(Pointer cred, Pointer<Uint8> hash, int hashLen);

typedef _FidoCredSetRpC =
    Int32 Function(Pointer cred, Pointer<Utf8> rpId, Pointer<Utf8> rpName);
typedef _FidoCredSetRpDart =
    int Function(Pointer cred, Pointer<Utf8> rpId, Pointer<Utf8> rpName);

typedef _FidoCredSetUserC =
    Int32 Function(
      Pointer cred,
      Pointer<Uint8> userId,
      Size userIdLen,
      Pointer<Utf8> userName,
      Pointer<Utf8> displayName,
      Pointer<Utf8> icon,
    );
typedef _FidoCredSetUserDart =
    int Function(
      Pointer cred,
      Pointer<Uint8> userId,
      int userIdLen,
      Pointer<Utf8> userName,
      Pointer<Utf8> displayName,
      Pointer<Utf8> icon,
    );

typedef _FidoCredSetRkC = Int32 Function(Pointer cred, Int32 rk);
typedef _FidoCredSetRkDart = int Function(Pointer cred, int rk);

typedef _FidoCredSetUvC = Int32 Function(Pointer cred, Int32 uv);
typedef _FidoCredSetUvDart = int Function(Pointer cred, int uv);

typedef _FidoDevMakeCredC =
    Int32 Function(Pointer dev, Pointer cred, Pointer<Utf8> pin);
typedef _FidoDevMakeCredDart =
    int Function(Pointer dev, Pointer cred, Pointer<Utf8> pin);

// Credential result getters
typedef _FidoCredPtrGetterC = Pointer<Uint8> Function(Pointer cred);
typedef _FidoCredPtrGetterDart = Pointer<Uint8> Function(Pointer cred);

typedef _FidoCredLenGetterC = Size Function(Pointer cred);
typedef _FidoCredLenGetterDart = int Function(Pointer cred);

typedef _FidoCredFmtC = Pointer<Utf8> Function(Pointer cred);
typedef _FidoCredFmtDart = Pointer<Utf8> Function(Pointer cred);

// Assertion
typedef _FidoAssertNewC = Pointer Function();
typedef _FidoAssertNewDart = Pointer Function();

typedef _FidoAssertFreeC = Void Function(Pointer<Pointer> assert_);
typedef _FidoAssertFreeDart = void Function(Pointer<Pointer> assert_);

typedef _FidoAssertSetClientdataHashC =
    Int32 Function(Pointer assert_, Pointer<Uint8> hash, Size len);
typedef _FidoAssertSetClientdataHashDart =
    int Function(Pointer assert_, Pointer<Uint8> hash, int len);

typedef _FidoAssertSetRpC = Int32 Function(Pointer assert_, Pointer<Utf8> rpId);
typedef _FidoAssertSetRpDart =
    int Function(Pointer assert_, Pointer<Utf8> rpId);

typedef _FidoAssertSetUvC = Int32 Function(Pointer assert_, Int32 uv);
typedef _FidoAssertSetUvDart = int Function(Pointer assert_, int uv);

typedef _FidoAssertAllowCredC =
    Int32 Function(Pointer assert_, Pointer<Uint8> credId, Size len);
typedef _FidoAssertAllowCredDart =
    int Function(Pointer assert_, Pointer<Uint8> credId, int len);

typedef _FidoDevGetAssertC =
    Int32 Function(Pointer dev, Pointer assert_, Pointer<Utf8> pin);
typedef _FidoDevGetAssertDart =
    int Function(Pointer dev, Pointer assert_, Pointer<Utf8> pin);

typedef _FidoAssertCountC = Size Function(Pointer assert_);
typedef _FidoAssertCountDart = int Function(Pointer assert_);

// Assertion result getters (with index)
typedef _FidoAssertIdxPtrGetterC =
    Pointer<Uint8> Function(Pointer assert_, Size idx);
typedef _FidoAssertIdxPtrGetterDart =
    Pointer<Uint8> Function(Pointer assert_, int idx);

typedef _FidoAssertIdxLenGetterC = Size Function(Pointer assert_, Size idx);
typedef _FidoAssertIdxLenGetterDart = int Function(Pointer assert_, int idx);

// CBOR info (device capabilities)
typedef _FidoCborInfoNewC = Pointer Function();
typedef _FidoCborInfoNewDart = Pointer Function();

typedef _FidoCborInfoFreeC = Void Function(Pointer<Pointer> ci);
typedef _FidoCborInfoFreeDart = void Function(Pointer<Pointer> ci);

typedef _FidoDevGetCborInfoC = Int32 Function(Pointer dev, Pointer ci);
typedef _FidoDevGetCborInfoDart = int Function(Pointer dev, Pointer ci);

typedef _FidoCborInfoOptionsNamePtrC =
    Pointer<Pointer<Utf8>> Function(Pointer ci);
typedef _FidoCborInfoOptionsNamePtrDart =
    Pointer<Pointer<Utf8>> Function(Pointer ci);

typedef _FidoCborInfoOptionsValuePtrC = Pointer<Bool> Function(Pointer ci);
typedef _FidoCborInfoOptionsValuePtrDart = Pointer<Bool> Function(Pointer ci);

typedef _FidoCborInfoOptionsLenC = Size Function(Pointer ci);
typedef _FidoCborInfoOptionsLenDart = int Function(Pointer ci);

// CBOR info — remaining resident key slots
typedef _FidoCborInfoRkRemainingC = Int64 Function(Pointer ci);
typedef _FidoCborInfoRkRemainingDart = int Function(Pointer ci);

// CBOR info — supported protocol versions
typedef _FidoCborInfoVersionsPtrC = Pointer<Pointer<Utf8>> Function(Pointer ci);
typedef _FidoCborInfoVersionsPtrDart =
    Pointer<Pointer<Utf8>> Function(Pointer ci);

typedef _FidoCborInfoVersionsLenC = Size Function(Pointer ci);
typedef _FidoCborInfoVersionsLenDart = int Function(Pointer ci);

// PIN retry count
typedef _FidoDevGetRetryCntC =
    Int32 Function(Pointer dev, Pointer<Int32> retries);
typedef _FidoDevGetRetryCntDart =
    int Function(Pointer dev, Pointer<Int32> retries);

// ── Bindings class ───────────────────────────────────────────────────────────

/// FFI bindings to `libfido2.so` for Linux FIDO2 security key operations.
///
/// All function lookups are performed eagerly as `late final` fields, resolved
/// from a [DynamicLibrary] provided at construction time. The caller is
/// responsible for loading the dynamic library (e.g. via
/// `DynamicLibrary.open('libfido2.so')`).
class LibFido2Bindings {
  /// Creates bindings from a loaded `libfido2.so` dynamic library.
  LibFido2Bindings(this._lib);

  final DynamicLibrary _lib;

  // ── Init ─────────────────────────────────────────────────────────────────

  /// Initialize libfido2. Call with `flags = 0`.
  late final fidoInit = _lib.lookupFunction<_FidoInitC, _FidoInitDart>(
    'fido_init',
  );

  // ── Device info ──────────────────────────────────────────────────────────

  /// Allocate a device info list for up to [n] entries.
  late final fidoDevInfoNew = _lib
      .lookupFunction<_FidoDevInfoNewC, _FidoDevInfoNewDart>(
        'fido_dev_info_new',
      );

  /// Free a device info list.
  late final fidoDevInfoFree = _lib
      .lookupFunction<_FidoDevInfoFreeC, _FidoDevInfoFreeDart>(
        'fido_dev_info_free',
      );

  /// Discover connected FIDO2 devices. Returns error code.
  late final fidoDevInfoManifest = _lib
      .lookupFunction<_FidoDevInfoManifestC, _FidoDevInfoManifestDart>(
        'fido_dev_info_manifest',
      );

  /// Get the device path from a device info entry.
  late final fidoDevInfoPath = _lib
      .lookupFunction<_FidoDevInfoPathC, _FidoDevInfoPathDart>(
        'fido_dev_info_path',
      );

  /// Get the device info entry at [idx] from the list.
  late final fidoDevInfoPtr = _lib
      .lookupFunction<_FidoDevInfoPtrC, _FidoDevInfoPtrDart>(
        'fido_dev_info_ptr',
      );

  // ── Device management ────────────────────────────────────────────────────

  /// Allocate a new device handle.
  late final fidoDevNew = _lib.lookupFunction<_FidoDevNewC, _FidoDevNewDart>(
    'fido_dev_new',
  );

  /// Free a device handle.
  late final fidoDevFree = _lib.lookupFunction<_FidoDevFreeC, _FidoDevFreeDart>(
    'fido_dev_free',
  );

  /// Open a FIDO2 device at [path]. Returns error code.
  late final fidoDevOpen = _lib.lookupFunction<_FidoDevOpenC, _FidoDevOpenDart>(
    'fido_dev_open',
  );

  /// Close a FIDO2 device. Returns error code.
  late final fidoDevClose = _lib
      .lookupFunction<_FidoDevCloseC, _FidoDevCloseDart>('fido_dev_close');

  /// Send a CTAPHID_CANCEL command to the device, causing any pending
  /// blocking operation (e.g. `fido_dev_make_cred`, `fido_dev_get_assert`)
  /// to abort and return immediately. Returns error code.
  late final fidoDevCancel = _lib
      .lookupFunction<_FidoDevCancelC, _FidoDevCancelDart>('fido_dev_cancel');

  // ── Credential creation ──────────────────────────────────────────────────

  /// Allocate a new credential object.
  late final fidoCredNew = _lib.lookupFunction<_FidoCredNewC, _FidoCredNewDart>(
    'fido_cred_new',
  );

  /// Free a credential object.
  late final fidoCredFree = _lib
      .lookupFunction<_FidoCredFreeC, _FidoCredFreeDart>('fido_cred_free');

  /// Set the credential algorithm type (e.g. [coseEs256]).
  late final fidoCredSetType = _lib
      .lookupFunction<_FidoCredSetTypeC, _FidoCredSetTypeDart>(
        'fido_cred_set_type',
      );

  /// Set the client data hash on the credential.
  late final fidoCredSetClientdataHash = _lib
      .lookupFunction<
        _FidoCredSetClientdataHashC,
        _FidoCredSetClientdataHashDart
      >('fido_cred_set_clientdata_hash');

  /// Set the relying party ID and name on the credential.
  late final fidoCredSetRp = _lib
      .lookupFunction<_FidoCredSetRpC, _FidoCredSetRpDart>('fido_cred_set_rp');

  /// Set the user ID, name, display name, and icon on the credential.
  late final fidoCredSetUser = _lib
      .lookupFunction<_FidoCredSetUserC, _FidoCredSetUserDart>(
        'fido_cred_set_user',
      );

  /// Set the resident key requirement on the credential.
  late final fidoCredSetRk = _lib
      .lookupFunction<_FidoCredSetRkC, _FidoCredSetRkDart>('fido_cred_set_rk');

  /// Set the user verification requirement on the credential.
  late final fidoCredSetUv = _lib
      .lookupFunction<_FidoCredSetUvC, _FidoCredSetUvDart>('fido_cred_set_uv');

  /// Perform the credential creation ceremony on a device. Returns error code.
  late final fidoDevMakeCred = _lib
      .lookupFunction<_FidoDevMakeCredC, _FidoDevMakeCredDart>(
        'fido_dev_make_cred',
      );

  // ── Credential result getters ────────────────────────────────────────────

  /// Pointer to the credential ID bytes.
  late final fidoCredIdPtr = _lib
      .lookupFunction<_FidoCredPtrGetterC, _FidoCredPtrGetterDart>(
        'fido_cred_id_ptr',
      );

  /// Length of the credential ID in bytes.
  late final fidoCredIdLen = _lib
      .lookupFunction<_FidoCredLenGetterC, _FidoCredLenGetterDart>(
        'fido_cred_id_len',
      );

  /// Pointer to the authenticator data bytes.
  late final fidoCredAuthdataPtr = _lib
      .lookupFunction<_FidoCredPtrGetterC, _FidoCredPtrGetterDart>(
        'fido_cred_authdata_ptr',
      );

  /// Length of the authenticator data in bytes.
  late final fidoCredAuthdataLen = _lib
      .lookupFunction<_FidoCredLenGetterC, _FidoCredLenGetterDart>(
        'fido_cred_authdata_len',
      );

  /// Pointer to the attestation certificate (x5c) bytes.
  late final fidoCredX5cPtr = _lib
      .lookupFunction<_FidoCredPtrGetterC, _FidoCredPtrGetterDart>(
        'fido_cred_x5c_ptr',
      );

  /// Length of the attestation certificate in bytes.
  late final fidoCredX5cLen = _lib
      .lookupFunction<_FidoCredLenGetterC, _FidoCredLenGetterDart>(
        'fido_cred_x5c_len',
      );

  /// Pointer to the attestation signature bytes.
  late final fidoCredSigPtr = _lib
      .lookupFunction<_FidoCredPtrGetterC, _FidoCredPtrGetterDart>(
        'fido_cred_sig_ptr',
      );

  /// Length of the attestation signature in bytes.
  late final fidoCredSigLen = _lib
      .lookupFunction<_FidoCredLenGetterC, _FidoCredLenGetterDart>(
        'fido_cred_sig_len',
      );

  /// Pointer to the client data hash bytes.
  late final fidoCredClientdataHashPtr = _lib
      .lookupFunction<_FidoCredPtrGetterC, _FidoCredPtrGetterDart>(
        'fido_cred_clientdata_hash_ptr',
      );

  /// Length of the client data hash in bytes.
  late final fidoCredClientdataHashLen = _lib
      .lookupFunction<_FidoCredLenGetterC, _FidoCredLenGetterDart>(
        'fido_cred_clientdata_hash_len',
      );

  /// Attestation format string (e.g. "packed", "none").
  late final fidoCredFmt = _lib.lookupFunction<_FidoCredFmtC, _FidoCredFmtDart>(
    'fido_cred_fmt',
  );

  // ── Assertion ────────────────────────────────────────────────────────────

  /// Allocate a new assertion object.
  late final fidoAssertNew = _lib
      .lookupFunction<_FidoAssertNewC, _FidoAssertNewDart>('fido_assert_new');

  /// Free an assertion object.
  late final fidoAssertFree = _lib
      .lookupFunction<_FidoAssertFreeC, _FidoAssertFreeDart>(
        'fido_assert_free',
      );

  /// Set the client data hash on the assertion.
  late final fidoAssertSetClientdataHash = _lib
      .lookupFunction<
        _FidoAssertSetClientdataHashC,
        _FidoAssertSetClientdataHashDart
      >('fido_assert_set_clientdata_hash');

  /// Set the relying party ID on the assertion.
  late final fidoAssertSetRp = _lib
      .lookupFunction<_FidoAssertSetRpC, _FidoAssertSetRpDart>(
        'fido_assert_set_rp',
      );

  /// Set the user verification requirement on the assertion.
  late final fidoAssertSetUv = _lib
      .lookupFunction<_FidoAssertSetUvC, _FidoAssertSetUvDart>(
        'fido_assert_set_uv',
      );

  /// Add an allowed credential ID to the assertion.
  late final fidoAssertAllowCred = _lib
      .lookupFunction<_FidoAssertAllowCredC, _FidoAssertAllowCredDart>(
        'fido_assert_allow_cred',
      );

  /// Perform the assertion ceremony on a device. Returns error code.
  late final fidoDevGetAssert = _lib
      .lookupFunction<_FidoDevGetAssertC, _FidoDevGetAssertDart>(
        'fido_dev_get_assert',
      );

  /// Number of assertions returned.
  late final fidoAssertCount = _lib
      .lookupFunction<_FidoAssertCountC, _FidoAssertCountDart>(
        'fido_assert_count',
      );

  // ── Assertion result getters ─────────────────────────────────────────────

  /// Pointer to the authenticator data bytes for assertion at [idx].
  late final fidoAssertAuthdataPtr = _lib
      .lookupFunction<_FidoAssertIdxPtrGetterC, _FidoAssertIdxPtrGetterDart>(
        'fido_assert_authdata_ptr',
      );

  /// Length of the authenticator data for assertion at [idx].
  late final fidoAssertAuthdataLen = _lib
      .lookupFunction<_FidoAssertIdxLenGetterC, _FidoAssertIdxLenGetterDart>(
        'fido_assert_authdata_len',
      );

  /// Pointer to the signature bytes for assertion at [idx].
  late final fidoAssertSigPtr = _lib
      .lookupFunction<_FidoAssertIdxPtrGetterC, _FidoAssertIdxPtrGetterDart>(
        'fido_assert_sig_ptr',
      );

  /// Length of the signature for assertion at [idx].
  late final fidoAssertSigLen = _lib
      .lookupFunction<_FidoAssertIdxLenGetterC, _FidoAssertIdxLenGetterDart>(
        'fido_assert_sig_len',
      );

  /// Pointer to the user ID bytes for assertion at [idx].
  late final fidoAssertUserIdPtr = _lib
      .lookupFunction<_FidoAssertIdxPtrGetterC, _FidoAssertIdxPtrGetterDart>(
        'fido_assert_user_id_ptr',
      );

  /// Length of the user ID for assertion at [idx].
  late final fidoAssertUserIdLen = _lib
      .lookupFunction<_FidoAssertIdxLenGetterC, _FidoAssertIdxLenGetterDart>(
        'fido_assert_user_id_len',
      );

  /// Pointer to the credential ID bytes for assertion at [idx].
  late final fidoAssertIdPtr = _lib
      .lookupFunction<_FidoAssertIdxPtrGetterC, _FidoAssertIdxPtrGetterDart>(
        'fido_assert_id_ptr',
      );

  /// Length of the credential ID for assertion at [idx].
  late final fidoAssertIdLen = _lib
      .lookupFunction<_FidoAssertIdxLenGetterC, _FidoAssertIdxLenGetterDart>(
        'fido_assert_id_len',
      );

  // ── CBOR info (device capabilities) ──────────────────────────────────────

  /// Allocate a new CBOR info object.
  late final fidoCborInfoNew = _lib
      .lookupFunction<_FidoCborInfoNewC, _FidoCborInfoNewDart>(
        'fido_cbor_info_new',
      );

  /// Free a CBOR info object.
  late final fidoCborInfoFree = _lib
      .lookupFunction<_FidoCborInfoFreeC, _FidoCborInfoFreeDart>(
        'fido_cbor_info_free',
      );

  /// Retrieve CBOR info from an open device. Returns error code.
  late final fidoDevGetCborInfo = _lib
      .lookupFunction<_FidoDevGetCborInfoC, _FidoDevGetCborInfoDart>(
        'fido_dev_get_cbor_info',
      );

  /// Pointer to array of option name strings in CBOR info.
  late final fidoCborInfoOptionsNamePtr = _lib
      .lookupFunction<
        _FidoCborInfoOptionsNamePtrC,
        _FidoCborInfoOptionsNamePtrDart
      >('fido_cbor_info_options_name_ptr');

  /// Pointer to array of option boolean values in CBOR info.
  late final fidoCborInfoOptionsValuePtr = _lib
      .lookupFunction<
        _FidoCborInfoOptionsValuePtrC,
        _FidoCborInfoOptionsValuePtrDart
      >('fido_cbor_info_options_value_ptr');

  /// Number of options in CBOR info.
  late final fidoCborInfoOptionsLen = _lib
      .lookupFunction<_FidoCborInfoOptionsLenC, _FidoCborInfoOptionsLenDart>(
        'fido_cbor_info_options_len',
      );

  /// Number of remaining resident key (discoverable credential) slots.
  ///
  /// Returns the value of `remainingDiscoverableCredentials` from the
  /// authenticator's CBOR info. A value of 0 means the key has no capacity
  /// for resident credentials — even if the `rk` option is `true`.
  /// Some keys (e.g. ZUKEY 2 FIDO) advertise `rk: true` but have 0
  /// remaining slots and cannot actually store discoverable credentials.
  /// Returns -1 if the information is not available (e.g. CTAP 2.0 keys
  /// that don't report this field).
  late final fidoCborInfoRkRemaining = _lib
      .lookupFunction<
        _FidoCborInfoRkRemainingC,
        _FidoCborInfoRkRemainingDart
      >('fido_cbor_info_rk_remaining');

  // ── CBOR info (protocol versions) ────────────────────────────────────────

  /// Pointer to an array of version strings from CBOR info.
  ///
  /// Each entry is a NUL-terminated string such as `"FIDO_2_0"`,
  /// `"FIDO_2_1_PRE"`, `"FIDO_2_1"`, or `"U2F_V2"`. Use together
  /// with [fidoCborInfoVersionsLen] to iterate the array.
  late final fidoCborInfoVersionsPtr = _lib
      .lookupFunction<
        _FidoCborInfoVersionsPtrC,
        _FidoCborInfoVersionsPtrDart
      >('fido_cbor_info_versions_ptr');

  /// Number of version strings in the CBOR info.
  late final fidoCborInfoVersionsLen = _lib
      .lookupFunction<
        _FidoCborInfoVersionsLenC,
        _FidoCborInfoVersionsLenDart
      >('fido_cbor_info_versions_len');

  // ── PIN retry count ──────────────────────────────────────────────────────

  /// Get the number of PIN retries remaining. Returns error code.
  late final fidoDevGetRetryCnt = _lib
      .lookupFunction<_FidoDevGetRetryCntC, _FidoDevGetRetryCntDart>(
        'fido_dev_get_retry_count',
      );
}
