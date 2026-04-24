// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:amplify_secure_storage_dart/src/ffi/win32/utils.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    show
        CryptProtectData,
        CryptUnprotectData,
        CRYPT_INTEGER_BLOB,
        ERROR_SUCCESS;

/// Encrypts the provided string as a [Uint8List].
Uint8List encryptString(String value) {
  final encodedValue = const Utf8Encoder().convert(value);
  return encrypt(encodedValue);
}

/// Decrypts the provided [Uint8List] as a String.
String decryptString(Uint8List data) {
  final decryptedData = decrypt(data);
  return utf8.decode(decryptedData);
}

/// A wrapper around [CryptProtectData] for encrypting [Uint8List].
Uint8List encrypt(Uint8List list) {
  return using((Arena arena) {
    final blob = list.allocatePointerWith(arena);
    final dataPtr = arena<CRYPT_INTEGER_BLOB>()
      ..ref.cbData = list.length
      ..ref.pbData = blob;
    final encryptedPtr = arena<CRYPT_INTEGER_BLOB>();
    final result = CryptProtectData(
      dataPtr,
      null, // no label
      null, // no added entropy
      null, // no prompt
      0, // default flag
      encryptedPtr,
    );
    if (result.error != ERROR_SUCCESS) {
      throw getExceptionFromErrorCode(result.error);
    }
    final encryptedBlob = encryptedPtr.ref;
    return encryptedBlob.pbData.asTypedList(encryptedBlob.cbData);
  });
}

/// A wrapper around [CryptUnprotectData] for decrypting [Uint8List].
Uint8List decrypt(Uint8List list) {
  return using((Arena arena) {
    final blob = list.allocatePointerWith(arena);
    final dataPtr = arena<CRYPT_INTEGER_BLOB>()
      ..ref.cbData = list.length
      ..ref.pbData = blob;
    final unencryptedPtr = arena<CRYPT_INTEGER_BLOB>();
    final result = CryptUnprotectData(
      dataPtr,
      null, // no label
      null, // no added entropy
      null, // no prompt
      0, // default flag
      unencryptedPtr,
    );
    if (result.error != ERROR_SUCCESS) {
      throw getExceptionFromErrorCode(result.error);
    }
    final unencryptedDataBlob = unencryptedPtr.ref;
    final unencryptedBlob = unencryptedDataBlob.pbData.asTypedList(
      unencryptedDataBlob.cbData,
    );
    return unencryptedBlob;
  });
}
