// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: non_constant_identifier_names, constant_identifier_names, public_member_api_docs

import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// HRESULT success code.
const int S_OK = 0;

/// The user cancelled the operation.
const int NTE_USER_CANCELLED = 0x80090036;

/// The specified item was not found.
const int NTE_NOT_FOUND = 0x80090011;

/// An invalid parameter was passed to the function.
const int NTE_INVALID_PARAMETER = 0x80090027;

/// Minimum API version required for JSON pass-through support.
const int WEBAUTHN_API_VERSION_4 = 4;

/// Current API version for MakeCredential options struct (version 7).
const int WEBAUTHN_MAKE_CREDENTIAL_OPTIONS_VERSION = 7;

/// Current API version for GetAssertion options struct (version 7).
const int WEBAUTHN_GET_ASSERTION_OPTIONS_VERSION = 7;

/// Version for RP entity information struct.
const int WEBAUTHN_RP_ENTITY_INFORMATION_VERSION = 1;

/// Version for user entity information struct.
const int WEBAUTHN_USER_ENTITY_INFORMATION_VERSION = 1;

/// Version for client data struct.
const int WEBAUTHN_CLIENT_DATA_VERSION = 1;

/// Version for COSE credential parameter struct.
const int WEBAUTHN_COSE_CREDENTIAL_PARAMETER_VERSION = 1;

/// SHA-256 hash algorithm identifier.
const String WEBAUTHN_HASH_ALGORITHM_SHA_256 = 'SHA-256';

/// Public key credential type string.
const String WEBAUTHN_CREDENTIAL_TYPE_PUBLIC_KEY = 'public-key';

// --- Native function typedefs ---

/// `DWORD WebAuthNGetApiVersionNumber(void)`
typedef WebAuthNGetApiVersionNumberNative = Uint32 Function();
typedef WebAuthNGetApiVersionNumberDart = int Function();

/// `HRESULT WebAuthNIsUserVerifyingPlatformAuthenticatorAvailable(
///   BOOL *pbIsUserVerifyingPlatformAuthenticatorAvailable
/// )`
typedef WebAuthNIsUserVerifyingPlatformAuthenticatorAvailableNative =
    Int32 Function(Pointer<Int32> pbIsAvailable);
typedef WebAuthNIsUserVerifyingPlatformAuthenticatorAvailableDart =
    int Function(Pointer<Int32> pbIsAvailable);

/// `HRESULT WebAuthNAuthenticatorMakeCredential(
///   HWND hWnd,
///   PCWEBAUTHN_RP_ENTITY_INFORMATION pRpInformation,
///   PCWEBAUTHN_USER_ENTITY_INFORMATION pUserInformation,
///   PCWEBAUTHN_COSE_CREDENTIAL_PARAMETERS pPubKeyCredParams,
///   PCWEBAUTHN_CLIENT_DATA pWebAuthNClientData,
///   PCWEBAUTHN_AUTHENTICATOR_MAKE_CREDENTIAL_OPTIONS pWebAuthNMakeCredentialOptions,
///   PWEBAUTHN_CREDENTIAL_ATTESTATION *ppWebAuthNCredentialAttestation
/// )`
typedef WebAuthNAuthenticatorMakeCredentialNative =
    Int32 Function(
      IntPtr hWnd,
      Pointer rpInfo,
      Pointer userInfo,
      Pointer pubKeyCredParams,
      Pointer clientData,
      Pointer options,
      Pointer<Pointer> ppResult,
    );
typedef WebAuthNAuthenticatorMakeCredentialDart =
    int Function(
      int hWnd,
      Pointer rpInfo,
      Pointer userInfo,
      Pointer pubKeyCredParams,
      Pointer clientData,
      Pointer options,
      Pointer<Pointer> ppResult,
    );

/// `HRESULT WebAuthNAuthenticatorGetAssertion(
///   HWND hWnd,
///   LPCWSTR pwszRpId,
///   PCWEBAUTHN_CLIENT_DATA pWebAuthNClientData,
///   PCWEBAUTHN_AUTHENTICATOR_GET_ASSERTION_OPTIONS pWebAuthNGetAssertionOptions,
///   PWEBAUTHN_ASSERTION *ppWebAuthNAssertion
/// )`
typedef WebAuthNGetAssertionNative =
    Int32 Function(
      IntPtr hWnd,
      Pointer<Utf16> rpId,
      Pointer clientData,
      Pointer options,
      Pointer<Pointer> ppResult,
    );
typedef WebAuthNGetAssertionDart =
    int Function(
      int hWnd,
      Pointer<Utf16> rpId,
      Pointer clientData,
      Pointer options,
      Pointer<Pointer> ppResult,
    );

/// `void WebAuthNFreeCredentialAttestation(
///   PWEBAUTHN_CREDENTIAL_ATTESTATION pWebAuthNCredentialAttestation
/// )`
typedef WebAuthNFreeCredentialAttestationNative =
    Void Function(Pointer pAttestation);
typedef WebAuthNFreeCredentialAttestationDart =
    void Function(Pointer pAttestation);

/// `void WebAuthNFreeAssertion(PWEBAUTHN_ASSERTION pWebAuthNAssertion)`
typedef WebAuthNFreeAssertionNative = Void Function(Pointer pAssertion);
typedef WebAuthNFreeAssertionDart = void Function(Pointer pAssertion);

/// `HWND GetActiveWindow(void)` from user32.dll
typedef GetActiveWindowNative = IntPtr Function();
typedef GetActiveWindowDart = int Function();

/// `HWND GetForegroundWindow(void)` from user32.dll
///
/// Returns the handle to the foreground window — the window with which
/// the user is currently working. Unlike `GetActiveWindow`, which only
/// returns the active window of the calling thread's message queue,
/// this function returns the system-wide foreground window regardless
/// of which thread owns it.
typedef GetForegroundWindowNative = IntPtr Function();
typedef GetForegroundWindowDart = int Function();

/// `BOOL SetForegroundWindow(HWND hWnd)` from user32.dll
///
/// Brings the specified window to the foreground and activates it.
/// The system restricts which processes can call this function
/// successfully — the calling process must currently be the foreground
/// process, or the foreground process must have started the calling
/// process, among other conditions.
typedef SetForegroundWindowNative = Int32 Function(IntPtr hWnd);
typedef SetForegroundWindowDart = int Function(int hWnd);

/// `BOOL AllowSetForegroundWindow(DWORD dwProcessId)` from user32.dll
///
/// Enables the specified process to set the foreground window using
/// `SetForegroundWindow`. Pass `ASFW_ANY` (0xFFFFFFFF / -1) to allow
/// any process to set the foreground window.
///
/// This is useful before calling WebAuthn APIs, as the Windows Hello
/// dialog is created by a system process that needs permission to
/// bring itself to the foreground.
typedef AllowSetForegroundWindowNative = Int32 Function(Uint32 dwProcessId);
typedef AllowSetForegroundWindowDart = int Function(int dwProcessId);

/// Special value for [AllowSetForegroundWindowDart] that allows any
/// process to set the foreground window.
const int ASFW_ANY = -1;

/// `HWND FindWindowW(LPCWSTR lpClassName, LPCWSTR lpWindowName)` from
/// user32.dll.
///
/// Finds a top-level window by class name and/or window name.
/// Pass `nullptr` for either parameter to match any value.
typedef FindWindowWNative =
    IntPtr Function(Pointer<Utf16> lpClassName, Pointer<Utf16> lpWindowName);
typedef FindWindowWDart =
    int Function(Pointer<Utf16> lpClassName, Pointer<Utf16> lpWindowName);

/// `HWND GetAncestor(HWND hwnd, UINT gaFlags)` from user32.dll.
///
/// Retrieves the handle to the ancestor of the specified window.
/// Use [GA_ROOT] to get the top-level window in the parent chain.
typedef GetAncestorNative = IntPtr Function(IntPtr hwnd, Uint32 gaFlags);
typedef GetAncestorDart = int Function(int hwnd, int gaFlags);

/// Flag for [GetAncestorDart]: retrieves the root (top-level) window.
const int GA_ROOT = 2;

/// `DWORD GetWindowThreadProcessId(HWND hWnd, LPDWORD lpdwProcessId)`
/// from user32.dll.
///
/// Returns the thread ID that created the specified window.
/// Optionally writes the process ID to the provided pointer.
typedef GetWindowThreadProcessIdNative =
    Uint32 Function(IntPtr hWnd, Pointer<Uint32> lpdwProcessId);
typedef GetWindowThreadProcessIdDart =
    int Function(int hWnd, Pointer<Uint32> lpdwProcessId);

/// `DWORD GetCurrentThreadId(void)` from kernel32.dll.
typedef GetCurrentThreadIdNative = Uint32 Function();
typedef GetCurrentThreadIdDart = int Function();

/// `BOOL AttachThreadInput(DWORD idAttach, DWORD idAttachTo, BOOL fAttach)`
/// from user32.dll.
///
/// Attaches or detaches the input processing mechanism of one thread
/// to that of another thread. This allows a thread to call
/// `SetForegroundWindow` on a window owned by another thread.
typedef AttachThreadInputNative =
    Int32 Function(Uint32 idAttach, Uint32 idAttachTo, Int32 fAttach);
typedef AttachThreadInputDart =
    int Function(int idAttach, int idAttachTo, int fAttach);

/// `BOOL BringWindowToTop(HWND hWnd)` from user32.dll.
typedef BringWindowToTopNative = Int32 Function(IntPtr hWnd);
typedef BringWindowToTopDart = int Function(int hWnd);

/// `BOOL EnableWindow(HWND hWnd, BOOL bEnable)` from user32.dll.
///
/// Enables or disables mouse and keyboard input to the specified window.
/// When disabled, the window does not receive input such as mouse clicks
/// and key presses. Use this to simulate modal dialog behavior by
/// disabling the application window while the WebAuthn dialog is open.
typedef EnableWindowNative = Int32 Function(IntPtr hWnd, Int32 bEnable);
typedef EnableWindowDart = int Function(int hWnd, int bEnable);

/// `BOOL ShowWindow(HWND hWnd, int nCmdShow)` from user32.dll.
typedef ShowWindowNative = Int32 Function(IntPtr hWnd, Int32 nCmdShow);
typedef ShowWindowDart = int Function(int hWnd, int nCmdShow);

/// `BOOL SetWindowPos(HWND hWnd, HWND hWndInsertAfter, int X, int Y,
///   int cx, int cy, UINT uFlags)` from user32.dll.
///
/// Changes the size, position, and Z order of a window.
/// Use with [HWND_TOPMOST] to make a window always-on-top.
typedef SetWindowPosNative =
    Int32 Function(
      IntPtr hWnd,
      IntPtr hWndInsertAfter,
      Int32 x,
      Int32 y,
      Int32 cx,
      Int32 cy,
      Uint32 uFlags,
    );
typedef SetWindowPosDart =
    int Function(
      int hWnd,
      int hWndInsertAfter,
      int x,
      int y,
      int cx,
      int cy,
      int uFlags,
    );

/// Special HWND value: places the window above all non-topmost windows.
const int HWND_TOPMOST = -1;

/// Special HWND value: places the window above all non-topmost windows
/// but behind any topmost windows (removes topmost status).
const int HWND_NOTOPMOST = -2;

/// Special HWND value: places the window at the bottom of the Z order.
///
/// Use before calling WebAuthn APIs to push the Flutter window behind
/// the Windows Security dialog, preventing it from covering the dialog
/// when the user clicks on it.
const int HWND_BOTTOM = 1;

/// SetWindowPos flag: retains the current position (ignores X and Y).
const int SWP_NOMOVE = 0x0002;

/// SetWindowPos flag: retains the current size (ignores cx and cy).
const int SWP_NOSIZE = 0x0001;

/// SetWindowPos flag: displays the window.
const int SWP_SHOWWINDOW = 0x0040;

/// SetWindowPos flag: does not activate the window.
///
/// Use with [HWND_BOTTOM] to push a window to the back of the Z order
/// without changing which window has input focus.
const int SWP_NOACTIVATE = 0x0010;

/// ShowWindow command: activates and displays the window.
const int SW_SHOW = 5;

/// ShowWindow command: activates the window and displays it as restored.
const int SW_RESTORE = 9;

/// The class name used by the Flutter Windows runner for its top-level
/// window. Used with `FindWindowW` to locate the Flutter application
/// window from Dart FFI.
const String kFlutterWindowClassName = 'FLUTTER_RUNNER_WIN32_WINDOW';

/// {@template amplify_auth_cognito.webauthn_bindings}
/// FFI bindings to `webauthn.dll` and `user32.dll` for Windows WebAuthn
/// (Windows Hello FIDO2) API access.
///
/// Wraps function lookups in lazy final fields for testability. The
/// constructor accepts optional [DynamicLibrary] parameters to allow
/// injection in tests.
/// {@endtemplate}
class WebAuthnBindings {
  /// {@macro amplify_auth_cognito.webauthn_bindings}
  WebAuthnBindings({
    DynamicLibrary? webauthnLib,
    DynamicLibrary? user32Lib,
    DynamicLibrary? kernel32Lib,
  }) : _webauthn = webauthnLib ?? DynamicLibrary.open('webauthn.dll'),
       _user32 = user32Lib ?? DynamicLibrary.open('user32.dll'),
       _kernel32 = kernel32Lib ?? DynamicLibrary.open('kernel32.dll');

  final DynamicLibrary _webauthn;
  final DynamicLibrary _user32;
  final DynamicLibrary _kernel32;

  /// Returns the API version number supported by the platform.
  late final WebAuthNGetApiVersionNumberDart getApiVersionNumber = _webauthn
      .lookupFunction<
        WebAuthNGetApiVersionNumberNative,
        WebAuthNGetApiVersionNumberDart
      >('WebAuthNGetApiVersionNumber');

  /// Checks whether a user-verifying platform authenticator is available.
  ///
  /// Writes a boolean value (as `Int32`) to the provided pointer.
  /// Returns an HRESULT indicating success or failure.
  late final WebAuthNIsUserVerifyingPlatformAuthenticatorAvailableDart
  isUserVerifyingPlatformAuthenticatorAvailable = _webauthn
      .lookupFunction<
        WebAuthNIsUserVerifyingPlatformAuthenticatorAvailableNative,
        WebAuthNIsUserVerifyingPlatformAuthenticatorAvailableDart
      >('WebAuthNIsUserVerifyingPlatformAuthenticatorAvailable');

  /// Initiates a WebAuthn credential creation (registration) ceremony.
  ///
  /// Returns an HRESULT. On success, `ppResult` points to a
  /// `WEBAUTHN_CREDENTIAL_ATTESTATION` struct that must be freed with
  /// [freeCredentialAttestation].
  late final WebAuthNAuthenticatorMakeCredentialDart makeCredential = _webauthn
      .lookupFunction<
        WebAuthNAuthenticatorMakeCredentialNative,
        WebAuthNAuthenticatorMakeCredentialDart
      >('WebAuthNAuthenticatorMakeCredential');

  /// Initiates a WebAuthn assertion (authentication) ceremony.
  ///
  /// Returns an HRESULT. On success, `ppResult` points to a
  /// `WEBAUTHN_ASSERTION` struct that must be freed with [freeAssertion].
  late final WebAuthNGetAssertionDart getAssertion = _webauthn
      .lookupFunction<WebAuthNGetAssertionNative, WebAuthNGetAssertionDart>(
        'WebAuthNAuthenticatorGetAssertion',
      );

  /// Frees a `WEBAUTHN_CREDENTIAL_ATTESTATION` struct returned by
  /// [makeCredential].
  late final WebAuthNFreeCredentialAttestationDart freeCredentialAttestation =
      _webauthn.lookupFunction<
        WebAuthNFreeCredentialAttestationNative,
        WebAuthNFreeCredentialAttestationDart
      >('WebAuthNFreeCredentialAttestation');

  /// Frees a `WEBAUTHN_ASSERTION` struct returned by [getAssertion].
  late final WebAuthNFreeAssertionDart freeAssertion = _webauthn
      .lookupFunction<WebAuthNFreeAssertionNative, WebAuthNFreeAssertionDart>(
        'WebAuthNFreeAssertion',
      );

  /// Returns the handle to the active window (from `user32.dll`).
  ///
  /// Returns the active window attached to the calling thread's message
  /// queue. May return 0 if the calling thread has no active window.
  ///
  /// **Note:** Prefer [getForegroundWindow] for obtaining the HWND to pass
  /// to WebAuthn APIs, as it returns the system-wide foreground window
  /// regardless of thread affinity.
  late final GetActiveWindowDart getActiveWindow = _user32
      .lookupFunction<GetActiveWindowNative, GetActiveWindowDart>(
        'GetActiveWindow',
      );

  /// Returns the handle to the foreground window (from `user32.dll`).
  ///
  /// Returns the window the user is currently interacting with. Unlike
  /// [getActiveWindow], this works across threads and returns the
  /// system-wide foreground window.
  ///
  /// This is the preferred HWND source for WebAuthn API calls, as it
  /// ensures the Windows Hello security dialog appears as a child of
  /// the foreground window and is displayed in front of the application.
  late final GetForegroundWindowDart getForegroundWindow = _user32
      .lookupFunction<GetForegroundWindowNative, GetForegroundWindowDart>(
        'GetForegroundWindow',
      );

  /// Brings the specified window to the foreground and activates it.
  late final SetForegroundWindowDart setForegroundWindow = _user32
      .lookupFunction<SetForegroundWindowNative, SetForegroundWindowDart>(
        'SetForegroundWindow',
      );

  /// Enables the specified process to set the foreground window.
  ///
  /// Call with [ASFW_ANY] before WebAuthn API calls to allow the
  /// Windows Hello system process to bring its dialog to the foreground.
  late final AllowSetForegroundWindowDart allowSetForegroundWindow = _user32
      .lookupFunction<
        AllowSetForegroundWindowNative,
        AllowSetForegroundWindowDart
      >('AllowSetForegroundWindow');

  /// Finds a top-level window by class name.
  ///
  /// Used to locate the Flutter application window by its well-known
  /// class name [kFlutterWindowClassName].
  late final FindWindowWDart findWindowW = _user32
      .lookupFunction<FindWindowWNative, FindWindowWDart>('FindWindowW');

  /// Retrieves the ancestor of the specified window.
  ///
  /// Use with [GA_ROOT] to get the top-level (root) window.
  late final GetAncestorDart getAncestor = _user32
      .lookupFunction<GetAncestorNative, GetAncestorDart>('GetAncestor');

  /// Returns the thread ID that created the specified window.
  late final GetWindowThreadProcessIdDart getWindowThreadProcessId = _user32
      .lookupFunction<
        GetWindowThreadProcessIdNative,
        GetWindowThreadProcessIdDart
      >('GetWindowThreadProcessId');

  /// Returns the calling thread's ID.
  late final GetCurrentThreadIdDart getCurrentThreadId = _kernel32
      .lookupFunction<GetCurrentThreadIdNative, GetCurrentThreadIdDart>(
        'GetCurrentThreadId',
      );

  /// Attaches or detaches the input processing of two threads.
  ///
  /// Used with the `AttachThreadInput` trick to allow cross-thread
  /// `SetForegroundWindow` calls.
  late final AttachThreadInputDart attachThreadInput = _user32
      .lookupFunction<AttachThreadInputNative, AttachThreadInputDart>(
        'AttachThreadInput',
      );

  /// Brings the specified window to the top of the Z order.
  late final BringWindowToTopDart bringWindowToTop = _user32
      .lookupFunction<BringWindowToTopNative, BringWindowToTopDart>(
        'BringWindowToTop',
      );

  /// Sets the specified window's show state.
  late final ShowWindowDart showWindow = _user32
      .lookupFunction<ShowWindowNative, ShowWindowDart>('ShowWindow');

  /// Enables or disables mouse and keyboard input to the specified window.
  ///
  /// Pass `0` (FALSE) to disable, `1` (TRUE) to enable.
  /// Used to simulate modal dialog behavior by disabling the Flutter
  /// window while the WebAuthn security dialog is open.
  late final EnableWindowDart enableWindow = _user32
      .lookupFunction<EnableWindowNative, EnableWindowDart>('EnableWindow');

  /// Changes the size, position, and Z order of a window.
  ///
  /// Use with [HWND_BOTTOM] to push the Flutter window to the back of
  /// the Z order before a WebAuthn call, preventing it from covering
  /// the Windows Security dialog. Use with [HWND_NOTOPMOST] to restore
  /// normal Z order after the call completes.
  late final SetWindowPosDart setWindowPos = _user32
      .lookupFunction<SetWindowPosNative, SetWindowPosDart>('SetWindowPos');
}

// ---------------------------------------------------------------------------
// Struct layout helpers
//
// The Windows WebAuthn structs are large and version-dependent. Rather than
// defining full `Struct` subclasses (which would require correctly aligning
// 20+ fields including nested pointers across versions), we allocate raw
// memory and write fields at known byte offsets for the JSON pass-through
// fields we need.
//
// All sizes assume 64-bit Windows (LLP64: int=4, pointer=8, DWORD=4).
// ---------------------------------------------------------------------------

/// Byte offsets within `WEBAUTHN_RP_ENTITY_INFORMATION` (version 1).
///
/// Layout:
/// ```
/// DWORD dwVersion;          // offset 0, size 4
/// // 4 bytes padding
/// PCWSTR pwszId;             // offset 8, size 8
/// PCWSTR pwszName;           // offset 16, size 8
/// PCWSTR pwszIcon;           // offset 24, size 8
/// ```
abstract final class RpEntityOffsets {
  static const int dwVersion = 0;
  static const int pwszId = 8;
  static const int pwszName = 16;
  static const int pwszIcon = 24;
  static const int structSize = 32;
}

/// Byte offsets within `WEBAUTHN_USER_ENTITY_INFORMATION` (version 1).
///
/// Layout:
/// ```
/// DWORD dwVersion;          // offset 0, size 4
/// DWORD cbId;               // offset 4, size 4
/// PBYTE pbId;               // offset 8, size 8
/// PCWSTR pwszName;           // offset 16, size 8
/// PCWSTR pwszIcon;           // offset 24, size 8
/// PCWSTR pwszDisplayName;    // offset 32, size 8
/// ```
abstract final class UserEntityOffsets {
  static const int dwVersion = 0;
  static const int cbId = 4;
  static const int pbId = 8;
  static const int pwszName = 16;
  static const int pwszIcon = 24;
  static const int pwszDisplayName = 32;
  static const int structSize = 40;
}

/// Byte offsets within `WEBAUTHN_COSE_CREDENTIAL_PARAMETER` (version 1).
///
/// Layout:
/// ```
/// DWORD dwVersion;           // offset 0, size 4
/// // 4 bytes padding
/// PCWSTR pwszCredentialType;  // offset 8, size 8
/// LONG lAlg;                 // offset 16, size 4
/// // 4 bytes padding (to align struct to 8)
/// ```
abstract final class CoseCredentialParameterOffsets {
  static const int dwVersion = 0;
  static const int pwszCredentialType = 8;
  static const int lAlg = 16;
  static const int structSize = 24;
}

/// Byte offsets within `WEBAUTHN_COSE_CREDENTIAL_PARAMETERS`.
///
/// Layout:
/// ```
/// DWORD cCredentialParameters;                        // offset 0, size 4
/// // 4 bytes padding
/// PWEBAUTHN_COSE_CREDENTIAL_PARAMETER pCredParams;   // offset 8, size 8
/// ```
abstract final class CoseCredentialParametersOffsets {
  static const int cCredentialParameters = 0;
  static const int pCredentialParameters = 8;
  static const int structSize = 16;
}

/// Byte offsets within `WEBAUTHN_CLIENT_DATA` (version 1).
///
/// Layout:
/// ```
/// DWORD dwVersion;           // offset 0, size 4
/// DWORD cbClientDataJSON;    // offset 4, size 4
/// PBYTE pbClientDataJSON;    // offset 8, size 8
/// PCWSTR pwszHashAlgId;      // offset 16, size 8
/// ```
abstract final class ClientDataOffsets {
  static const int dwVersion = 0;
  static const int cbClientDataJSON = 4;
  static const int pbClientDataJSON = 8;
  static const int pwszHashAlgId = 16;
  static const int structSize = 24;
}

/// Size and key offsets for `WEBAUTHN_AUTHENTICATOR_MAKE_CREDENTIAL_OPTIONS`
/// version 7 struct.
///
/// This is a large struct (~200+ bytes). We only define offsets for fields
/// we actively set: the version, timeout, and the JSON pass-through fields
/// added in version 5.
///
/// The JSON pass-through fields are at the END of the struct (after all
/// v1-v4 fields). Exact offsets are calculated from the Windows SDK
/// `webauthn.h` header for the 64-bit ABI.
abstract final class MakeCredentialOptionsOffsets {
  /// `DWORD dwVersion` at offset 0.
  static const int dwVersion = 0;

  /// `DWORD dwTimeoutMilliseconds` at offset 4.
  static const int dwTimeoutMilliseconds = 4;

  // Version 1 fields (needed as fallback when JSON pass-through is ignored):

  /// `DWORD dwAuthenticatorAttachment` at offset 40.
  ///
  /// Set to 0 (WEBAUTHN_AUTHENTICATOR_ATTACHMENT_ANY) or specific value.
  static const int dwAuthenticatorAttachment = 40;

  /// `BOOL bRequireResidentKey` at offset 44.
  ///
  /// Must be set to 1 (TRUE) to ensure the authenticator creates a
  /// discoverable/resident credential that persists on the device.
  /// Without this, Windows Hello may create a non-resident credential
  /// that is not stored and cannot be used for passkey sign-in.
  static const int bRequireResidentKey = 44;

  /// `DWORD dwUserVerificationRequirement` at offset 48.
  static const int dwUserVerificationRequirement = 48;

  // Version 5 JSON pass-through fields (appended after v4 fields):

  /// `DWORD cbPublicKeyCredentialCreationOptionsJSON` — byte length of JSON.
  static const int cbJsonOptions = 192;

  /// `PBYTE pbPublicKeyCredentialCreationOptionsJSON` — pointer to JSON bytes.
  static const int pbJsonOptions = 200;

  /// Total struct size for version 7 (rounded up to pointer alignment).
  static const int structSize = 208;
}

/// Size and key offsets for `WEBAUTHN_AUTHENTICATOR_GET_ASSERTION_OPTIONS`
/// version 7 struct.
///
/// Similar to [MakeCredentialOptionsOffsets], we only populate the version,
/// timeout, and JSON pass-through fields (added in version 6).
abstract final class GetAssertionOptionsOffsets {
  /// `DWORD dwVersion` at offset 0.
  static const int dwVersion = 0;

  /// `DWORD dwTimeoutMilliseconds` at offset 4.
  static const int dwTimeoutMilliseconds = 4;

  // Version 6 JSON pass-through fields:

  /// `DWORD cbPublicKeyCredentialRequestOptionsJSON` — byte length of JSON.
  static const int cbJsonOptions = 160;

  /// `PBYTE pbPublicKeyCredentialRequestOptionsJSON` — pointer to JSON bytes.
  static const int pbJsonOptions = 168;

  /// Total struct size for version 7 (rounded up to pointer alignment).
  static const int structSize = 176;
}

/// Key offsets within `WEBAUTHN_CREDENTIAL_ATTESTATION` for reading the
/// JSON registration response.
///
/// The struct has many fields; we only need the JSON response fields
/// added in version 4:
/// - `cbRegistrationResponseJSON` (DWORD)
/// - `pbRegistrationResponseJSON` (PBYTE)
///
/// These are at the end of the v3 struct + extensions.
abstract final class CredentialAttestationOffsets {
  /// `DWORD cbRegistrationResponseJSON` — byte length of JSON response.
  ///
  /// Empirically determined offset for version 8 of the attestation struct
  /// on 64-bit Windows. Verified by scanning the struct for a plausible
  /// (length, pointer-to-JSON) pair after a successful MakeCredential call.
  static const int cbRegistrationResponseJSON = 176;

  /// `PBYTE pbRegistrationResponseJSON` — pointer to JSON response bytes.
  ///
  /// Immediately follows [cbRegistrationResponseJSON] with 4 bytes of
  /// padding to reach 8-byte pointer alignment.
  static const int pbRegistrationResponseJSON = 184;
}

/// Key offsets within `WEBAUTHN_ASSERTION` for reading the JSON
/// authentication response.
///
/// - `cbAuthenticationResponseJSON` (DWORD)
/// - `pbAuthenticationResponseJSON` (PBYTE)
///
/// Added in version 3 of the assertion struct.
abstract final class AssertionOffsets {
  /// `DWORD cbAuthenticationResponseJSON` — byte length of JSON response.
  ///
  /// Empirically determined offset for version 6 of the assertion struct
  /// on 64-bit Windows. Verified by dumping DWORD values at all offsets
  /// after a successful GetAssertion call and identifying the plausible
  /// (length, pointer-to-JSON) pair.
  static const int cbAuthenticationResponseJSON = 136;

  /// `PBYTE pbAuthenticationResponseJSON` — pointer to JSON response bytes.
  ///
  /// Immediately follows [cbAuthenticationResponseJSON] with 4 bytes of
  /// padding to reach 8-byte pointer alignment.
  static const int pbAuthenticationResponseJSON = 144;
}
