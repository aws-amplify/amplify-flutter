// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:win32/win32.dart';

extension Uint8ListBlobConversion on Uint8List {
  /// Alternative to [allocatePointer] from win32, which accepts an allocator
  Pointer<Uint8> allocatePointerWith(Allocator allocator) {
    final blob = allocator<Uint8>(length);
    blob.asTypedList(length).setAll(0, this);
    return blob;
  }
}

/// Returns a [SecureStorageException] from the Win32 error code
SecureStorageException getExceptionFromErrorCode(int errorCode) {
  final underlying = WindowsException(
    HRESULT_FROM_WIN32(errorCode),
  );
  return UnknownException(
    'An unknown exception occurred.',
    recoverySuggestion: SecureStorageException.missingRecovery,
    underlyingException: underlying,
  );
}
