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

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_secure_storage_dart/src/exception/secure_storage_exception.dart';
import 'package:amplify_secure_storage_dart/src/exception/unknown_exception.dart';
import 'package:amplify_secure_storage_dart/src/ffi/win32/utils.dart';
import 'package:amplify_secure_storage_dart/src/interfaces/amplify_secure_storage_interface.dart';
import 'package:amplify_secure_storage_dart/src/types/amplify_secure_storage_config.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// The windows implementation of [SecureStorageInterface].
class AmplifySecureStorageWindows extends AmplifySecureStorageInterface {
  const AmplifySecureStorageWindows({
    required AmplifySecureStorageConfig config,
  }) : super(config: config);

  /// The user name of the account used to connect to the "TargetName".
  ///
  /// Reference: https://docs.microsoft.com/en-us/windows/win32/api/wincred/ns-wincred-credentiala
  String get _username => config.windowsOptions.targetNamePrefix != null
      ? config.windowsOptions.targetNamePrefix!
      : config.defaultNamespace;

  /// The name of the credential.
  ///
  /// The TargetName and Type members uniquely identify the credential.
  ///
  /// Reference: https://docs.microsoft.com/en-us/windows/win32/api/wincred/ns-wincred-credentiala
  String _getTargetName(String key) => '$_username/$key';

  @override
  void write({required String key, required String value}) {
    return using((Arena arena) {
      final utf8Value = utf8.encode(value) as Uint8List;
      final blob = utf8Value.allocatePointerWith(arena);
      final targetName = _getTargetName(key).toNativeUtf16(allocator: arena);
      final userName = _username.toNativeUtf16(allocator: arena);
      final credential = arena<CREDENTIAL>()
        ..ref.Type = CRED_TYPE_GENERIC
        ..ref.TargetName = targetName
        ..ref.Persist = CRED_PERSIST_LOCAL_MACHINE
        ..ref.UserName = userName
        ..ref.CredentialBlob = blob
        ..ref.CredentialBlobSize = utf8Value.length;
      final result = CredWrite(credential, CRED_FLAG_DEFAULT);
      if (result != TRUE) {
        final errorCode = GetLastError();
        if (errorCode != ERROR_SUCCESS) {
          throw _getExceptionFromErrorCode(errorCode);
        }
      }
    });
  }

  @override
  String? read({required String key}) {
    return using((Arena arena) {
      final credential = arena<Pointer<CREDENTIAL>>();
      final targetName = _getTargetName(key).toNativeUtf16(allocator: arena);
      final result = CredRead(
        targetName,
        CRED_TYPE_GENERIC,
        CRED_FLAG_DEFAULT,
        credential,
      );
      if (result != TRUE) {
        final errorCode = GetLastError();
        if (errorCode == ERROR_NOT_FOUND || errorCode == ERROR_SUCCESS) {
          // return null if the key is not found
          return null;
        } else {
          throw _getExceptionFromErrorCode(errorCode);
        }
      }
      final cred = credential.value.ref;
      final blob = cred.CredentialBlob.asTypedList(cred.CredentialBlobSize);
      CredFree(credential.value);
      return utf8.decode(blob);
    });
  }

  @override
  void delete({required String key}) {
    return using((Arena arena) {
      final targetName = _getTargetName(key).toNativeUtf16(allocator: arena);
      final result = CredDelete(
        targetName,
        CRED_TYPE_GENERIC,
        CRED_FLAG_DEFAULT,
      );
      if (result != TRUE) {
        final errorCode = GetLastError();
        if (errorCode == ERROR_NOT_FOUND || errorCode == ERROR_SUCCESS) {
          // return successfully if the key does not exist
          return;
        } else {
          throw _getExceptionFromErrorCode(errorCode);
        }
      }
    });
  }

  /// Returns a [SecureStorageException] from the Win32 error code
  SecureStorageException _getExceptionFromErrorCode(int errorCode) {
    final underlying = WindowsException(
      HRESULT_FROM_WIN32(errorCode),
    ).toString();
    return UnknownException(
      'An unknown exception occurred.',
      recoverySuggestion: SecureStorageException.missingRecovery,
      underlyingException: underlying,
    );
  }
}
