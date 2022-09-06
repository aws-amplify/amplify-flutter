// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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
