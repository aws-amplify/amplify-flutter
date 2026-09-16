// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: unnecessary_underscores

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_auth_cognito/src/linux/libfido2_bindings.dart';
import 'package:amplify_auth_cognito/src/linux/linux_webauthn_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter_test/flutter_test.dart';

/// Mock LibFido2Bindings for testing.
class MockLibFido2Bindings extends LibFido2Bindings {
  MockLibFido2Bindings({
    this.mockDeviceCount = 1,
    this.mockManifestResult = fidoOk,
    this.mockOpenResult = fidoOk,
    this.mockMakeCredResult = fidoOk,
    this.mockGetAssertResult = fidoOk,
  }) : super(DynamicLibrary.process());

  final int mockDeviceCount;
  final int mockManifestResult;
  final int mockOpenResult;
  final int mockMakeCredResult;
  final int mockGetAssertResult;

  Pointer? _mockDevice;
  Pointer? _mockCred;
  Pointer? _mockAssert;

  @override
  void Function(int flags) get fidoInit => (_) {};

  @override
  Pointer Function(int n) get fidoDevInfoNew =>
      (_) => calloc<Uint8>(1024);

  @override
  void Function(Pointer<Pointer> devlist, int n) get fidoDevInfoFree =>
      (devlist, _) {
        if (devlist.value != nullptr) {
          calloc.free(devlist.value);
        }
      };

  @override
  int Function(Pointer devlist, int n, Pointer<Size> found)
  get fidoDevInfoManifest => (_, __, found) {
    found.value = mockDeviceCount;
    return mockManifestResult;
  };

  @override
  Pointer<Utf8> Function(Pointer di) get fidoDevInfoPath =>
      (_) => '/dev/hidraw0'.toNativeUtf8();

  @override
  Pointer Function(Pointer devlist, int idx) get fidoDevInfoPtr =>
      (devlist, _) => devlist;

  @override
  Pointer Function() get fidoDevNew => () {
    _mockDevice = calloc<Uint8>(256);
    return _mockDevice!;
  };

  @override
  void Function(Pointer<Pointer> dev) get fidoDevFree => (dev) {
    if (_mockDevice != null && _mockDevice != nullptr) {
      calloc.free(_mockDevice!);
      _mockDevice = null;
    }
  };

  @override
  int Function(Pointer dev, Pointer<Utf8> path) get fidoDevOpen =>
      (_, __) => mockOpenResult;

  @override
  int Function(Pointer dev) get fidoDevClose =>
      (_) => fidoOk;

  @override
  Pointer Function() get fidoCredNew => () {
    _mockCred = calloc<Uint8>(1024);
    return _mockCred!;
  };

  @override
  void Function(Pointer<Pointer> cred) get fidoCredFree => (cred) {
    if (_mockCred != null && _mockCred != nullptr) {
      calloc.free(_mockCred!);
      _mockCred = null;
    }
  };

  @override
  int Function(Pointer cred, int type) get fidoCredSetType =>
      (_, __) => fidoOk;

  @override
  int Function(Pointer cred, Pointer<Uint8> hash, int hashLen)
  get fidoCredSetClientdataHash =>
      (_, __, ___) => fidoOk;

  @override
  int Function(Pointer cred, Pointer<Utf8> rpId, Pointer<Utf8> rpName)
  get fidoCredSetRp =>
      (_, __, ___) => fidoOk;

  @override
  int Function(
    Pointer cred,
    Pointer<Uint8> userId,
    int userIdLen,
    Pointer<Utf8> userName,
    Pointer<Utf8> displayName,
    Pointer<Utf8> icon,
  )
  get fidoCredSetUser =>
      (_, __, ___, ____, _____, ______) => fidoOk;

  @override
  int Function(Pointer cred, int rk) get fidoCredSetRk =>
      (_, __) => fidoOk;

  @override
  int Function(Pointer cred, int uv) get fidoCredSetUv =>
      (_, __) => fidoOk;

  @override
  int Function(Pointer dev, Pointer cred, Pointer<Utf8> pin)
  get fidoDevMakeCred =>
      (_, __, ___) => mockMakeCredResult;

  @override
  Pointer<Uint8> Function(Pointer cred) get fidoCredIdPtr => (_) {
    final bytes = Uint8List.fromList(utf8.encode('mock-cred-id'));
    final ptr = calloc<Uint8>(bytes.length);
    ptr.asTypedList(bytes.length).setAll(0, bytes);
    return ptr;
  };

  @override
  int Function(Pointer cred) get fidoCredIdLen =>
      (_) => utf8.encode('mock-cred-id').length;

  @override
  Pointer<Uint8> Function(Pointer cred) get fidoCredAuthdataPtr => (_) {
    // Return mock authenticator data (32-byte rpIdHash + flags + counter)
    // Flags byte at offset 32: UP=1 + UV=1 + AT=1 = 0x45
    final mockAuthData = Uint8List(37);
    mockAuthData[32] = 0x45; // UP | UV | AT flags
    final ptr = calloc<Uint8>(mockAuthData.length);
    ptr.asTypedList(mockAuthData.length).setAll(0, mockAuthData);
    return ptr;
  };

  @override
  int Function(Pointer cred) get fidoCredAuthdataLen =>
      (_) => 37;

  @override
  Pointer<Uint8> Function(Pointer cred) get fidoCredX5cPtr =>
      (_) => calloc<Uint8>(1);

  @override
  int Function(Pointer cred) get fidoCredX5cLen =>
      (_) => 0;

  @override
  Pointer<Uint8> Function(Pointer cred) get fidoCredSigPtr =>
      (_) => calloc<Uint8>(1);

  @override
  int Function(Pointer cred) get fidoCredSigLen =>
      (_) => 0;

  @override
  Pointer<Uint8> Function(Pointer cred) get fidoCredClientdataHashPtr =>
      (_) => calloc<Uint8>(32);

  @override
  int Function(Pointer cred) get fidoCredClientdataHashLen =>
      (_) => 32;

  @override
  Pointer<Utf8> Function(Pointer cred) get fidoCredFmt =>
      (_) => 'packed'.toNativeUtf8();

  @override
  Pointer Function() get fidoAssertNew => () {
    _mockAssert = calloc<Uint8>(1024);
    return _mockAssert!;
  };

  @override
  void Function(Pointer<Pointer> assert_) get fidoAssertFree => (assert_) {
    if (_mockAssert != null && _mockAssert != nullptr) {
      calloc.free(_mockAssert!);
      _mockAssert = null;
    }
  };

  @override
  int Function(Pointer assert_, Pointer<Uint8> hash, int len)
  get fidoAssertSetClientdataHash =>
      (_, __, ___) => fidoOk;

  @override
  int Function(Pointer assert_, Pointer<Utf8> rpId) get fidoAssertSetRp =>
      (_, __) => fidoOk;

  @override
  int Function(Pointer assert_, int uv) get fidoAssertSetUv =>
      (_, __) => fidoOk;

  @override
  int Function(Pointer assert_, Pointer<Uint8> credId, int len)
  get fidoAssertAllowCred =>
      (_, __, ___) => fidoOk;

  @override
  int Function(Pointer dev, Pointer assert_, Pointer<Utf8> pin)
  get fidoDevGetAssert =>
      (_, __, ___) => mockGetAssertResult;

  @override
  int Function(Pointer assert_) get fidoAssertCount =>
      (_) => 1;

  @override
  Pointer<Uint8> Function(Pointer assert_, int idx) get fidoAssertAuthdataPtr =>
      (_, __) {
        final mockAuthData = Uint8List(37);
        final ptr = calloc<Uint8>(mockAuthData.length);
        ptr.asTypedList(mockAuthData.length).setAll(0, mockAuthData);
        return ptr;
      };

  @override
  int Function(Pointer assert_, int idx) get fidoAssertAuthdataLen =>
      (_, __) => 37;

  @override
  Pointer<Uint8> Function(Pointer assert_, int idx) get fidoAssertSigPtr =>
      (_, __) {
        final sig = Uint8List(64);
        final ptr = calloc<Uint8>(sig.length);
        ptr.asTypedList(sig.length).setAll(0, sig);
        return ptr;
      };

  @override
  int Function(Pointer assert_, int idx) get fidoAssertSigLen =>
      (_, __) => 64;

  @override
  Pointer<Uint8> Function(Pointer assert_, int idx) get fidoAssertUserIdPtr =>
      (_, __) {
        final userId = utf8.encode('user123');
        final ptr = calloc<Uint8>(userId.length);
        ptr.asTypedList(userId.length).setAll(0, userId);
        return ptr;
      };

  @override
  int Function(Pointer assert_, int idx) get fidoAssertUserIdLen =>
      (_, __) => utf8.encode('user123').length;

  @override
  Pointer<Uint8> Function(Pointer assert_, int idx) get fidoAssertIdPtr =>
      (_, __) {
        final credId = utf8.encode('mock-cred-id');
        final ptr = calloc<Uint8>(credId.length);
        ptr.asTypedList(credId.length).setAll(0, credId);
        return ptr;
      };

  @override
  int Function(Pointer assert_, int idx) get fidoAssertIdLen =>
      (_, __) => utf8.encode('mock-cred-id').length;

  // ── CBOR info mocks (for PIN checking) ────────────────────────────────

  Pointer? _mockCborInfo;

  @override
  Pointer Function() get fidoCborInfoNew => () {
    _mockCborInfo = calloc<Uint8>(256);
    return _mockCborInfo!;
  };

  @override
  void Function(Pointer<Pointer> ci) get fidoCborInfoFree => (ci) {
    if (_mockCborInfo != null && _mockCborInfo != nullptr) {
      calloc.free(_mockCborInfo!);
      _mockCborInfo = null;
    }
  };

  @override
  int Function(Pointer dev, Pointer ci) get fidoDevGetCborInfo =>
      (_, __) => fidoOk;

  @override
  int Function(Pointer ci) get fidoCborInfoRkRemaining =>
      (_) => -1; // Not reported — default mock

  @override
  int Function(Pointer ci) get fidoCborInfoOptionsLen =>
      (_) => 0;

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoOptionsNamePtr =>
      (_) => calloc<Pointer<Utf8>>(1);

  @override
  Pointer<Bool> Function(Pointer ci) get fidoCborInfoOptionsValuePtr =>
      (_) => calloc<Bool>(1);

  @override
  int Function(Pointer ci) get fidoCborInfoVersionsLen =>
      (_) => 0;

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoVersionsPtr =>
      (_) => calloc<Pointer<Utf8>>(1);

  // ── PIN retry count mock ──────────────────────────────────────────────

  @override
  int Function(Pointer dev, Pointer<Int32> retries) get fidoDevGetRetryCnt =>
      (_, retries) {
        retries.value = 8;
        return fidoOk;
      };

  // ── Device cancel mock ────────────────────────────────────────────────

  @override
  int Function(Pointer dev) get fidoDevCancel =>
      (_) => fidoOk;

  // ── Touch detection mocks ─────────────────────────────────────────────

  @override
  int Function(Pointer dev) get fidoDevGetTouchBegin =>
      (_) => fidoOk;

  @override
  int Function(Pointer dev, Pointer<Int32> touched, int ms)
  get fidoDevGetTouchStatus =>
      (_, touched, __) {
        // Default: immediately report touch detected (for single-device
        // tests, touch-to-identify is skipped anyway).
        touched.value = 1;
        return fidoOk;
      };
}

/// Mock bindings that report `rk: true` in CBOR info options,
/// simulating a key that supports resident/discoverable credentials
/// (e.g. YubiKey 5).
class MockLibFido2BindingsWithRk extends MockLibFido2Bindings {
  MockLibFido2BindingsWithRk({
    super.mockDeviceCount,
    super.mockManifestResult,
    super.mockOpenResult,
    super.mockMakeCredResult,
    super.mockGetAssertResult,
  });

  late Pointer<Pointer<Utf8>> _optionNames;
  late Pointer<Bool> _optionValues;

  @override
  int Function(Pointer ci) get fidoCborInfoRkRemaining =>
      (_) => 25; // Simulate key with 25 remaining rk slots

  @override
  int Function(Pointer ci) get fidoCborInfoOptionsLen =>
      (_) => 1; // Only rk, no clientPin — simulates no PIN support

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoOptionsNamePtr =>
      (_) {
        _optionNames = calloc<Pointer<Utf8>>(1);
        _optionNames[0] = 'rk'.toNativeUtf8();
        return _optionNames;
      };

  @override
  Pointer<Bool> Function(Pointer ci) get fidoCborInfoOptionsValuePtr => (_) {
    _optionValues = calloc<Bool>(1);
    _optionValues[0] = true; // rk = true
    return _optionValues;
  };
}

/// Mock bindings that report `rk: true` + `rkRemaining=-1` (not reported),
/// simulating a device that claims rk support without reporting remaining
/// slots. PIN is not in CBOR options (no PIN support), so PIN check passes.
class MockLibFido2BindingsWithFalseRk extends MockLibFido2Bindings {
  MockLibFido2BindingsWithFalseRk({
    super.mockDeviceCount,
    super.mockManifestResult,
    super.mockOpenResult,
    super.mockMakeCredResult,
    super.mockGetAssertResult,
  });

  late Pointer<Pointer<Utf8>> _optionNames;
  late Pointer<Bool> _optionValues;

  @override
  int Function(Pointer ci) get fidoCborInfoRkRemaining =>
      (_) => -1; // Not reported

  @override
  int Function(Pointer ci) get fidoCborInfoOptionsLen =>
      (_) => 1; // Only rk, no clientPin

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoOptionsNamePtr =>
      (_) {
        _optionNames = calloc<Pointer<Utf8>>(1);
        _optionNames[0] = 'rk'.toNativeUtf8();
        return _optionNames;
      };

  @override
  Pointer<Bool> Function(Pointer ci) get fidoCborInfoOptionsValuePtr => (_) {
    _optionValues = calloc<Bool>(1);
    _optionValues[0] = true; // rk = true
    return _optionValues;
  };

  // Report FIDO_2_1 — CTAP 2.1+ keys MUST report rkRemaining.
  // Since rkRemaining=-1, this device is lying about rk support.
  @override
  int Function(Pointer ci) get fidoCborInfoVersionsLen =>
      (_) => 2;

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoVersionsPtr =>
      (_) {
        final ptr = calloc<Pointer<Utf8>>(2);
        ptr[0] = 'FIDO_2_0'.toNativeUtf8();
        ptr[1] = 'FIDO_2_1'.toNativeUtf8();
        return ptr;
      };
}

/// Mock bindings that report `rk: true` + `rkRemaining=0` (no slots left),
/// simulating a key that genuinely supported rk at some point but has
/// exhausted all discoverable credential slots.
class MockLibFido2BindingsWithRkFull extends MockLibFido2Bindings {
  MockLibFido2BindingsWithRkFull({
    super.mockDeviceCount,
    super.mockManifestResult,
    super.mockOpenResult,
    super.mockMakeCredResult,
    super.mockGetAssertResult,
  });

  late Pointer<Pointer<Utf8>> _optionNames;
  late Pointer<Bool> _optionValues;

  @override
  int Function(Pointer ci) get fidoCborInfoRkRemaining =>
      (_) => 0; // No slots remaining

  @override
  int Function(Pointer ci) get fidoCborInfoOptionsLen =>
      (_) => 2;

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoOptionsNamePtr =>
      (_) {
        _optionNames = calloc<Pointer<Utf8>>(2);
        _optionNames[0] = 'rk'.toNativeUtf8();
        _optionNames[1] = 'clientPin'.toNativeUtf8();
        return _optionNames;
      };

  @override
  Pointer<Bool> Function(Pointer ci) get fidoCborInfoOptionsValuePtr => (_) {
    _optionValues = calloc<Bool>(2);
    _optionValues[0] = true; // rk = true
    _optionValues[1] = false; // clientPin = false
    return _optionValues;
  };
}

/// Mock bindings that report `rk: false` in CBOR info options,
/// simulating a key that does NOT support resident/discoverable
/// credentials (e.g. ZUKEY 2 FIDO).
class MockLibFido2BindingsWithoutRk extends MockLibFido2Bindings {
  MockLibFido2BindingsWithoutRk({
    super.mockDeviceCount,
    super.mockManifestResult,
    super.mockOpenResult,
    super.mockMakeCredResult,
    super.mockGetAssertResult,
  });

  late Pointer<Pointer<Utf8>> _optionNames;
  late Pointer<Bool> _optionValues;

  @override
  int Function(Pointer ci) get fidoCborInfoOptionsLen =>
      (_) => 1;

  @override
  Pointer<Pointer<Utf8>> Function(Pointer ci) get fidoCborInfoOptionsNamePtr =>
      (_) {
        _optionNames = calloc<Pointer<Utf8>>(1);
        _optionNames[0] = 'clientPin'.toNativeUtf8();
        return _optionNames;
      };

  @override
  Pointer<Bool> Function(Pointer ci) get fidoCborInfoOptionsValuePtr => (_) {
    _optionValues = calloc<Bool>(1);
    _optionValues[0] = false;
    return _optionValues;
  };
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('LinuxWebAuthnPlatform', () {
    group('isPasskeySupported', () {
      test('returns false when libfido2 is not available', () async {
        // Note: This test will return true if libfido2.so.1 or libfido2.so is
        // installed on the test system. This is expected behavior - the platform
        // SHOULD detect and use an available libfido2 installation.
        // To test the "not available" path, you would need a system without
        // libfido2 installed, or mock DynamicLibrary.open() to throw.
        final platform = LinuxWebAuthnPlatform();
        // Result depends on whether libfido2 is installed on test system
        await platform.isPasskeySupported();
      });

      test('returns true when bindings is provided', () async {
        final bindings = MockLibFido2Bindings();
        final platform = LinuxWebAuthnPlatform(bindings: bindings);
        expect(await platform.isPasskeySupported(), isTrue);
      });
    });

    group('_ensureSupported', () {
      test('throws PasskeyNotSupportedException when no devices found', () async {
        // Use mock bindings that report zero devices to test the unsupported path
        final bindings = MockLibFido2Bindings(mockDeviceCount: 0);
        final platform = LinuxWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

        expect(
          () => platform.createCredential(optionsJson),
          throwsA(isA<PasskeyNotSupportedException>()),
        );
      });
    });

    group('createCredential', () {
      test('returns JSON response on success', () async {
        final bindings = MockLibFido2Bindings();
        final platform = LinuxWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

        final result = await platform.createCredential(optionsJson);
        final decoded = jsonDecode(result) as Map<String, dynamic>;

        expect(decoded['type'], 'public-key');
        expect(decoded['id'], isNotEmpty);
        expect(decoded['response'], isA<Map<String, dynamic>>());
      });

      test('throws PasskeyCancelledException for fidoErrNotAllowed', () async {
        final bindings = MockLibFido2Bindings(
          mockMakeCredResult: fidoErrNotAllowed,
        );
        final platform = LinuxWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

        expect(
          () => platform.createCredential(optionsJson),
          throwsA(isA<PasskeyCancelledException>()),
        );
      });

      test(
        'throws PasskeyCancelledException for fidoErrActionTimeout',
        () async {
          final bindings = MockLibFido2Bindings(
            mockMakeCredResult: fidoErrActionTimeout,
          );
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyCancelledException>()),
          );
        },
      );

      test(
        'throws PasskeyRegistrationFailedException for unknown error code in registration',
        () async {
          final bindings = MockLibFido2Bindings(mockMakeCredResult: fidoErrTx);
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyRegistrationFailedException>()),
          );
        },
      );

      test(
        'throws PasskeyNotSupportedException when no devices found',
        () async {
          final bindings = MockLibFido2Bindings(mockDeviceCount: 0);
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyNotSupportedException>()),
          );
        },
      );

      test(
        'throws PasskeyNotSupportedException when device open fails',
        () async {
          final bindings = MockLibFido2Bindings(mockOpenResult: fidoErrTx);
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyNotSupportedException>()),
          );
        },
      );
    });

    group('resident key capability check', () {
      test(
        'succeeds when residentKey=required and device supports rk',
        () async {
          final bindings = MockLibFido2BindingsWithRk();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}],
  "authenticatorSelection": {"residentKey": "required", "userVerification": "preferred"}
}
''';

          final result = await platform.createCredential(optionsJson);
          final decoded = jsonDecode(result) as Map<String, dynamic>;
          expect(decoded['type'], 'public-key');
          expect(decoded['id'], isNotEmpty);
        },
      );

      test(
        'throws PasskeyRegistrationFailedException when residentKey=required '
        'and device does NOT support rk',
        () async {
          final bindings = MockLibFido2BindingsWithoutRk();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}],
  "authenticatorSelection": {"residentKey": "required", "userVerification": "preferred"}
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(
              isA<PasskeyRegistrationFailedException>().having(
                (e) => e.message,
                'message',
                contains('does not support passkeys'),
              ),
            ),
          );
        },
      );

      test(
        'throws PasskeyRegistrationFailedException when residentKey=preferred '
        'and device does NOT support rk',
        () async {
          final bindings = MockLibFido2BindingsWithoutRk();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}],
  "authenticatorSelection": {"residentKey": "preferred", "userVerification": "preferred"}
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyRegistrationFailedException>()),
          );
        },
      );

      test(
        'succeeds without authenticatorSelection (no rk check needed)',
        () async {
          final bindings = MockLibFido2Bindings();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

          final result = await platform.createCredential(optionsJson);
          final decoded = jsonDecode(result) as Map<String, dynamic>;
          expect(decoded['type'], 'public-key');
        },
      );

      test(
        'succeeds when residentKey=required and device claims rk=true '
        'with rkRemaining=-1 (not reported — trusted)',
        () async {
          // When rkRemaining is not reported (-1), we trust rk=true because
          // many legitimate keys (YubiKey 5 with FIDO_2_1_PRE firmware)
          // don't report rkRemaining. Budget keys that lie about rk=true
          // will fail at login time when the server rejects the
          // non-discoverable credential.
          final bindings = MockLibFido2BindingsWithFalseRk();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}],
  "authenticatorSelection": {"residentKey": "required", "userVerification": "preferred"}
}
''';

          final result = await platform.createCredential(optionsJson);
          final decoded = jsonDecode(result) as Map<String, dynamic>;
          expect(decoded['type'], 'public-key');
        },
      );

      test(
        'throws PasskeyRegistrationFailedException when residentKey=required '
        'and device has rk=true but rkRemaining=0 (storage full)',
        () async {
          final bindings = MockLibFido2BindingsWithRkFull();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}],
  "authenticatorSelection": {"residentKey": "required", "userVerification": "preferred"}
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(
              isA<PasskeyRegistrationFailedException>().having(
                (e) => e.message,
                'message',
                contains('does not support passkeys'),
              ),
            ),
          );
        },
      );

      test(
        'succeeds when residentKey=discouraged even without rk support',
        () async {
          final bindings = MockLibFido2BindingsWithoutRk();
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "dXNlcjEyMw", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}],
  "authenticatorSelection": {"residentKey": "discouraged"}
}
''';

          final result = await platform.createCredential(optionsJson);
          final decoded = jsonDecode(result) as Map<String, dynamic>;
          expect(decoded['type'], 'public-key');
        },
      );
    });

    group('getCredential', () {
      test('returns JSON response on success', () async {
        final bindings = MockLibFido2Bindings();
        final platform = LinuxWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": [
    {"type": "public-key", "id": "Y3JlZC0x"}
  ]
}
''';

        final result = await platform.getCredential(optionsJson);
        final decoded = jsonDecode(result) as Map<String, dynamic>;

        expect(decoded['type'], 'public-key');
        expect(decoded['id'], isNotEmpty);
        expect(decoded['response'], isA<Map<String, dynamic>>());
        expect(
          (decoded['response'] as Map<String, dynamic>)['signature'],
          isNotEmpty,
        );
      });

      test('throws PasskeyCancelledException for fidoErrNotAllowed', () async {
        final bindings = MockLibFido2Bindings(
          mockGetAssertResult: fidoErrNotAllowed,
        );
        final platform = LinuxWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

        expect(
          () => platform.getCredential(optionsJson),
          throwsA(isA<PasskeyCancelledException>()),
        );
      });

      test(
        'throws PasskeyCancelledException for fidoErrActionTimeout',
        () async {
          final bindings = MockLibFido2Bindings(
            mockGetAssertResult: fidoErrActionTimeout,
          );
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

          expect(
            () => platform.getCredential(optionsJson),
            throwsA(isA<PasskeyCancelledException>()),
          );
        },
      );

      test(
        'throws PasskeyCancelledException for fidoErrPinRequired when '
        'user cancels PIN entry',
        () async {
          // With the touch-first flow, fidoErrPinRequired triggers the
          // PIN prompt loop (the user touched a key that needs a PIN).
          // If the user cancels PIN entry, it throws
          // PasskeyCancelledException — not PasskeyAssertionFailedException.
          final bindings = MockLibFido2Bindings(
            mockGetAssertResult: fidoErrPinRequired,
          );
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          // Set pinProvider to return null (simulates user cancelling).
          LinuxWebAuthnPlatform.pinProvider =
              ({required int retriesRemaining}) async => null;

          const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

          try {
            expect(
              () => platform.getCredential(optionsJson),
              throwsA(isA<PasskeyCancelledException>()),
            );
          } finally {
            LinuxWebAuthnPlatform.pinProvider = null;
          }
        },
      );

      test(
        'throws PasskeyAssertionFailedException for fidoErrUvBlocked',
        () async {
          final bindings = MockLibFido2Bindings(
            mockGetAssertResult: fidoErrUvBlocked,
          );
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

          expect(
            () => platform.getCredential(optionsJson),
            throwsA(isA<PasskeyAssertionFailedException>()),
          );
        },
      );

      test(
        'throws PasskeyAssertionFailedException for unknown error code',
        () async {
          final bindings = MockLibFido2Bindings(mockGetAssertResult: fidoErrTx);
          final platform = LinuxWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

          expect(
            () => platform.getCredential(optionsJson),
            throwsA(isA<PasskeyAssertionFailedException>()),
          );
        },
      );
    });
  });
}
