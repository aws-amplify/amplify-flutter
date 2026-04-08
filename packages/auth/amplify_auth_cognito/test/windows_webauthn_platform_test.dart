// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:ffi';

import 'package:amplify_auth_cognito/src/windows/webauthn_bindings.dart';
import 'package:amplify_auth_cognito/src/windows/windows_webauthn_platform.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter_test/flutter_test.dart';

/// Mock WebAuthnBindings for testing.
class MockWebAuthnBindings extends WebAuthnBindings {
  MockWebAuthnBindings({
    this.mockApiVersion = 4,
    this.mockIsAvailable = true,
    this.mockMakeCredentialResult = S_OK,
    this.mockGetAssertionResult = S_OK,
    this.mockActiveWindow = 1,
  }) : super(
         webauthnLib: DynamicLibrary.process(),
         user32Lib: DynamicLibrary.process(),
         kernel32Lib: DynamicLibrary.process(),
       );

  final int mockApiVersion;
  final bool mockIsAvailable;
  final int mockMakeCredentialResult;
  final int mockGetAssertionResult;
  final int mockActiveWindow;

  @override
  int Function() get getApiVersionNumber =>
      () => mockApiVersion;

  @override
  int Function(Pointer<Int32>)
  get isUserVerifyingPlatformAuthenticatorAvailable => (pbIsAvailable) {
    pbIsAvailable.value = mockIsAvailable ? 1 : 0;
    return S_OK;
  };

  @override
  int Function() get getActiveWindow =>
      () => mockActiveWindow;

  @override
  int Function(
    int hWnd,
    Pointer rpInfo,
    Pointer userInfo,
    Pointer pubKeyCredParams,
    Pointer clientData,
    Pointer options,
    Pointer<Pointer> ppResult,
  )
  get makeCredential =>
      (
        hWnd,
        rpInfo,
        userInfo,
        pubKeyCredParams,
        clientData,
        options,
        ppResult,
      ) {
        if (mockMakeCredentialResult == S_OK) {
          // Allocate a mock result struct with JSON response.
          // Structure layout: we write the JSON response at expected offsets.
          final mockStruct = calloc<Uint8>(256);
          const jsonResponse = '{"id":"mock-credential-id"}';
          final jsonBytes = utf8.encode(jsonResponse);

          // Write cbRegistrationResponseJSON at offset 176 (DWORD = Uint32)
          (mockStruct + CredentialAttestationOffsets.cbRegistrationResponseJSON)
                  .cast<Uint32>()
                  .value =
              jsonBytes.length;

          // Allocate JSON bytes buffer and write pointer at offset 184
          final jsonBuffer = calloc<Uint8>(jsonBytes.length);
          for (var i = 0; i < jsonBytes.length; i++) {
            (jsonBuffer + i).value = jsonBytes[i];
          }
          (mockStruct + CredentialAttestationOffsets.pbRegistrationResponseJSON)
                  .cast<Pointer<Uint8>>()
                  .value =
              jsonBuffer;

          ppResult.value = mockStruct.cast();
        }
        return mockMakeCredentialResult;
      };

  @override
  int Function(
    int hWnd,
    Pointer<Utf16> rpId,
    Pointer clientData,
    Pointer options,
    Pointer<Pointer> ppResult,
  )
  get getAssertion => (hWnd, rpId, clientData, options, ppResult) {
    if (mockGetAssertionResult == S_OK) {
      // Allocate a mock result struct with JSON response.
      final mockStruct = calloc<Uint8>(256);
      const jsonResponse = '{"id":"mock-assertion-id"}';
      final jsonBytes = utf8.encode(jsonResponse);

      // Write cbAuthenticationResponseJSON at offset 136 (DWORD = Uint32)
      (mockStruct + AssertionOffsets.cbAuthenticationResponseJSON)
              .cast<Uint32>()
              .value =
          jsonBytes.length;

      // Allocate JSON bytes buffer and write pointer at offset 144
      final jsonBuffer = calloc<Uint8>(jsonBytes.length);
      for (var i = 0; i < jsonBytes.length; i++) {
        (jsonBuffer + i).value = jsonBytes[i];
      }
      (mockStruct + AssertionOffsets.pbAuthenticationResponseJSON)
              .cast<Pointer<Uint8>>()
              .value =
          jsonBuffer;

      ppResult.value = mockStruct.cast();
    }
    return mockGetAssertionResult;
  };

  @override
  void Function(Pointer) get freeCredentialAttestation => (pAttestation) {
    // Free the mock struct and JSON buffer we allocated.
    if (pAttestation != nullptr) {
      final pbJson =
          (pAttestation.cast<Uint8>() +
                  CredentialAttestationOffsets.pbRegistrationResponseJSON)
              .cast<Pointer<Uint8>>()
              .value;
      if (pbJson != nullptr) {
        calloc.free(pbJson);
      }
      calloc.free(pAttestation);
    }
  };

  @override
  void Function(Pointer) get freeAssertion => (pAssertion) {
    // Free the mock struct and JSON buffer we allocated.
    if (pAssertion != nullptr) {
      final pbJson =
          (pAssertion.cast<Uint8>() +
                  AssertionOffsets.pbAuthenticationResponseJSON)
              .cast<Pointer<Uint8>>()
              .value;
      if (pbJson != nullptr) {
        calloc.free(pbJson);
      }
      calloc.free(pAssertion);
    }
  };

  // ── user32 / kernel32 stubs (not available on Linux CI) ─────────────

  @override
  int Function() get getForegroundWindow =>
      () => mockActiveWindow;

  @override
  int Function(int hWnd) get setForegroundWindow =>
      (_) => 1;

  @override
  int Function(int dwProcessId) get allowSetForegroundWindow =>
      (_) => 1;

  @override
  int Function(Pointer<Utf16>, Pointer<Utf16>) get findWindowW =>
      (_, _) => mockActiveWindow;

  @override
  int Function(int hWnd, int gaFlags) get getAncestor =>
      (hWnd, _) => hWnd;

  @override
  int Function(int hWnd, Pointer<Uint32>) get getWindowThreadProcessId =>
      (_, _) => 1;

  @override
  int Function() get getCurrentThreadId =>
      () => 1;

  @override
  int Function(int, int, int) get attachThreadInput =>
      (_, _, _) => 1;

  @override
  int Function(int hWnd) get bringWindowToTop =>
      (_) => 1;

  @override
  int Function(int hWnd, int nCmdShow) get showWindow =>
      (_, _) => 1;

  @override
  int Function(int hWnd, int bEnable) get enableWindow =>
      (_, _) => 1;

  @override
  int Function(int, int, int, int, int, int, int) get setWindowPos =>
      (_, _, _, _, _, _, _) => 1;
}

void main() {
  group('WindowsWebAuthnPlatform', () {
    group('isPasskeySupported', () {
      test('returns false when API version < 4', () async {
        final bindings = MockWebAuthnBindings(mockApiVersion: 3);
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        expect(await platform.isPasskeySupported(), isFalse);
      });

      test('returns true when API version >= 4', () async {
        final bindings = MockWebAuthnBindings(mockApiVersion: 4);
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        expect(await platform.isPasskeySupported(), isTrue);
      });

      test('returns true when API version >= 4 regardless of '
          'IsUserVerifyingPlatformAuthenticatorAvailable', () async {
        // On some Windows machines, Windows Hello is configured with PIN only
        // (no biometrics), causing IsUserVerifyingPlatformAuthenticatorAvailable
        // to return false even though passkeys work via the PIN prompt.
        // The API version check alone is sufficient.
        final bindings = MockWebAuthnBindings(
          mockApiVersion: 9,
          mockIsAvailable: false,
        );
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        expect(await platform.isPasskeySupported(), isTrue);
      });

      test('returns false on exception', () async {
        // Create bindings that will throw when querying availability
        final bindings = _ThrowingMockBindings();
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        expect(await platform.isPasskeySupported(), isFalse);
      });
    });

    group('createCredential', () {
      test('returns JSON response on success', () async {
        final bindings = MockWebAuthnBindings(mockApiVersion: 4);
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "user123", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": [{"type": "public-key", "alg": -7}]
}
''';

        final result = await platform.createCredential(optionsJson);
        expect(result, contains('mock-credential-id'));
      });

      test('throws PasskeyCancelledException for NTE_USER_CANCELLED', () async {
        final bindings = MockWebAuthnBindings(
          mockApiVersion: 4,
          mockMakeCredentialResult: NTE_USER_CANCELLED,
        );
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "user123", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": []
}
''';

        expect(
          () => platform.createCredential(optionsJson),
          throwsA(isA<PasskeyCancelledException>()),
        );
      });

      test(
        'throws PasskeyRegistrationFailedException for NTE_INVALID_PARAMETER',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockMakeCredentialResult: NTE_INVALID_PARAMETER,
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "user123", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": []
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyRegistrationFailedException>()),
          );
        },
      );

      test(
        'throws PasskeyRegistrationFailedException for unknown HRESULT',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockMakeCredentialResult: 0x80004005, // E_FAIL
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "user123", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": []
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyRegistrationFailedException>()),
          );
        },
      );

      test(
        'throws PasskeyNotSupportedException when API version < 4',
        () async {
          final bindings = MockWebAuthnBindings(mockApiVersion: 3);
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "user123", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": []
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyNotSupportedException>()),
          );
        },
      );

      test(
        'throws PasskeyRegistrationFailedException when no active window',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockActiveWindow: 0,
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rp": {"id": "example.com", "name": "Example"},
  "user": {"id": "user123", "name": "testuser", "displayName": "Test User"},
  "challenge": "Y2hhbGxlbmdl",
  "pubKeyCredParams": []
}
''';

          expect(
            () => platform.createCredential(optionsJson),
            throwsA(isA<PasskeyRegistrationFailedException>()),
          );
        },
      );
    });

    group('getCredential', () {
      test('returns JSON response on success', () async {
        final bindings = MockWebAuthnBindings(mockApiVersion: 4);
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

        const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

        final result = await platform.getCredential(optionsJson);
        expect(result, contains('mock-assertion-id'));
      });

      test('throws PasskeyCancelledException for NTE_USER_CANCELLED', () async {
        final bindings = MockWebAuthnBindings(
          mockApiVersion: 4,
          mockGetAssertionResult: NTE_USER_CANCELLED,
        );
        final platform = WindowsWebAuthnPlatform(bindings: bindings);

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
        'throws PasskeyAssertionFailedException for NTE_NOT_FOUND',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockGetAssertionResult: NTE_NOT_FOUND,
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

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
        'throws PasskeyAssertionFailedException for NTE_INVALID_PARAMETER',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockGetAssertionResult: NTE_INVALID_PARAMETER,
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

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
        'throws PasskeyAssertionFailedException for unknown HRESULT',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockGetAssertionResult: 0x80004005, // E_FAIL
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

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
        'throws PasskeyNotSupportedException when API version < 4',
        () async {
          final bindings = MockWebAuthnBindings(mockApiVersion: 3);
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

          const optionsJson = '''
{
  "rpId": "example.com",
  "challenge": "Y2hhbGxlbmdl",
  "allowCredentials": []
}
''';

          expect(
            () => platform.getCredential(optionsJson),
            throwsA(isA<PasskeyNotSupportedException>()),
          );
        },
      );

      test(
        'throws PasskeyAssertionFailedException when no active window',
        () async {
          final bindings = MockWebAuthnBindings(
            mockApiVersion: 4,
            mockActiveWindow: 0,
          );
          final platform = WindowsWebAuthnPlatform(bindings: bindings);

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

/// Mock bindings that throw an exception when queried.
class _ThrowingMockBindings extends WebAuthnBindings {
  _ThrowingMockBindings()
    : super(
        webauthnLib: DynamicLibrary.process(),
        user32Lib: DynamicLibrary.process(),
        kernel32Lib: DynamicLibrary.process(),
      );

  @override
  int Function() get getApiVersionNumber =>
      () => throw Exception('Test error');
}
