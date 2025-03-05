// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@internal
library amplify_secure_storage_dart.ffi.linux_utils;

import 'dart:ffi';
import 'dart:io';

import 'package:amplify_secure_storage_dart/src/ffi/gio/gio.dart';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;

/// Returns the Application ID if available, with the executable
/// name as a fallback.
///
/// A wrapper around Gio functions.
Future<String> getApplicationId() async {
  final application = gio.g_application_get_default();
  if (application == nullptr) {
    return _getExecutableName();
  }
  final id = gio.g_application_get_application_id(application);
  return id.toDartString();
}

/// Gets the name of this executable.
///
/// Based off of path_provider.
///
/// Reference: https://github.com/flutter/plugins/blob/a124dcb33b620f2908aae4f28af6487163b7d8ea/packages/path_provider/path_provider_linux/lib/src/path_provider_linux.dart#L79-L84
Future<String> _getExecutableName() async {
  final executableName = path.basenameWithoutExtension(
    await File('/proc/self/exe').resolveSymbolicLinks(),
  );
  return executableName;
}
