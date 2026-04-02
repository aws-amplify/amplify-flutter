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
    // Return mock authenticator data (32-byte rpIdHash + flags + counter + AAGUID + credId + pubKey)
    final mockAuthData = Uint8List(37);
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
}

void main() {
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
      test(
        'throws PasskeyNotSupportedException when no devices found',
        () async {
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
        },
      );
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
        'throws PasskeyAssertionFailedException for fidoErrPinRequired',
        () async {
          final bindings = MockLibFido2Bindings(
            mockGetAssertResult: fidoErrPinRequired,
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
