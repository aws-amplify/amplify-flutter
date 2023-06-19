// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:ffi';

import 'package:amplify_auth_cognito_dart/src/platform/macos_bindings.g.dart';
import 'package:ffi/ffi.dart';

/// Helpers for [CFData].
extension CFDataRefX on Pointer<CFData> {
  /// Converts a [CFData] to a Dart String.
  String? toDartString(NativeMacOsFramework lib) {
    if (this == nullptr) return null;
    final bytePtr = lib.CFDataGetBytePtr(this);
    if (bytePtr == nullptr) return null;
    return bytePtr.cast<Utf8>().toDartString();
  }
}

/// Helpers for [CFString].
extension CFStringPointerX on Pointer<CFString> {
  /// Converts a [CFString] to a Dart String.
  String? toDartString(NativeMacOsFramework lib) {
    if (this == nullptr) return null;
    final cStringPtr = lib.CFStringGetCStringPtr(
      this,
      CFStringBuiltInEncodings.kCFStringEncodingUTF8,
    );
    if (cStringPtr != nullptr) {
      return cStringPtr.cast<Utf8>().toDartString();
    }
    // Call CFStringGetCString as a backup.
    // See: https://developer.apple.com/documentation/corefoundation/1542133-cfstringgetcstringptr
    final strLen = lib.CFStringGetLength(this);
    final maxLen = lib.CFStringGetMaximumSizeForEncoding(
          strLen,
          CFStringBuiltInEncodings.kCFStringEncodingUTF8,
        ) +
        1 /* terminating NUL byte */;
    final buffer = calloc<Char>(maxLen);
    try {
      final ret = lib.CFStringGetCString(
        this,
        buffer,
        maxLen,
        CFStringBuiltInEncodings.kCFStringEncodingUTF8,
      );
      if (ret == 0 /* FALSE */) {
        return null;
      }
      return buffer.cast<Utf8>().toDartString();
    } finally {
      calloc.free(buffer);
    }
  }
}

/// Helper to create a [CFString] from a Dart [String].
extension CFStringCreate on String {
  /// Creates a [CFString] from this.
  Pointer<CFString> toCFString({
    required NativeMacOsFramework lib,
    required Arena arena,
  }) {
    final cfString = lib.CFStringCreateWithCString(
      nullptr,
      toNativeUtf8(allocator: arena).cast(),
      CFStringBuiltInEncodings.kCFStringEncodingUTF8,
    );
    arena.onReleaseAll(() {
      lib.CFRelease(cfString.cast());
    });
    return cfString;
  }
}
