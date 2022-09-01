// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

final _crypt32 = DynamicLibrary.open('crypt32.dll');

/// Performs encryption on the data in a DATA_BLOB structure.
///
/// Typically, only a user with the same logon credential as the
/// user who encrypted the data can decrypt the data. In addition,
/// the encryption and decryption usually must be done on the same
/// computer.
///
/// Reference: https://docs.microsoft.com/en-us/windows/win32/api/dpapi/nf-dpapi-cryptprotectdata
int CryptProtectData(
  Pointer<DATA_BLOB> data,
  Pointer<Utf16> desciption,
  Pointer<DATA_BLOB> entroypy,
  Pointer reserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> promtStructure,
  int flags,
  Pointer<DATA_BLOB> encryptedData,
) =>
    _CryptProtectData(
      data,
      desciption,
      entroypy,
      reserved,
      promtStructure,
      flags,
      encryptedData,
    );

final _CryptProtectData = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<DATA_BLOB> data,
  Pointer<Utf16> desciption,
  Pointer<DATA_BLOB> entroypy,
  Pointer reserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> promtStructure,
  Uint32 flags,
  Pointer<DATA_BLOB> encryptedData,
),
    int Function(
  Pointer<DATA_BLOB> data,
  Pointer<Utf16> desciption,
  Pointer<DATA_BLOB> entroypy,
  Pointer reserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> promtStructure,
  int flags,
  Pointer<DATA_BLOB> encryptedData,
)>('CryptProtectData');

/// decrypts and does an integrity check of the data in a DATA_BLOB structure.
///
/// Usually, the only user who can decrypt the data is a user with the same logon
/// credentials as the user who encrypted the data. In addition, the encryption and
/// decryption must be done on the same computer.
///
/// Reference: https://docs.microsoft.com/en-us/windows/win32/api/dpapi/nf-dpapi-cryptunprotectdata
int CryptUnprotectData(
  Pointer<DATA_BLOB> data,
  Pointer<Utf16> desciption,
  Pointer<DATA_BLOB> entroypy,
  Pointer reserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> promtStructure,
  int flags,
  Pointer<DATA_BLOB> unencryptedData,
) =>
    _CryptUnprotectData(
      data,
      desciption,
      entroypy,
      reserved,
      promtStructure,
      flags,
      unencryptedData,
    );

final _CryptUnprotectData = _crypt32.lookupFunction<
    Int32 Function(
  Pointer<DATA_BLOB> data,
  Pointer<Utf16> desciption,
  Pointer<DATA_BLOB> entroypy,
  Pointer reserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> promtStructure,
  Uint32 flags,
  Pointer<DATA_BLOB> unencryptedData,
),
    int Function(
  Pointer<DATA_BLOB> data,
  Pointer<Utf16> desciption,
  Pointer<DATA_BLOB> entroypy,
  Pointer reserved,
  Pointer<CRYPTPROTECT_PROMPTSTRUCT> promtStructure,
  int flags,
  Pointer<DATA_BLOB> unencryptedData,
)>('CryptUnprotectData');

class DATA_BLOB extends Struct {
  /// The count, in bytes, of data.
  @Uint32()
  external int cbData;

  /// A pointer to the data buffer.
  external Pointer<Uint8> pbData;
}

class CRYPTPROTECT_PROMPTSTRUCT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwPromptFlags;

  @Uint32()
  external int hwnd;

  external Pointer<Utf16> szPrompt;
}
