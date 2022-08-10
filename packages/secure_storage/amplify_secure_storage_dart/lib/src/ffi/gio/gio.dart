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

// ignore_for_file: constant_identifier_names

import 'dart:ffi';
import 'dart:io';

import 'package:amplify_secure_storage_dart/src/ffi/gio/gio.bindings.g.dart';
import 'package:amplify_secure_storage_dart/src/ffi/utils/dynamic_library_utils.dart';
import 'package:ffi/ffi.dart';
import 'package:path/path.dart' as path;

export 'gio.bindings.g.dart' hide Gio;

final DynamicLibrary glibDyLib = openDynamicLibrary('libgio-2.0');

final Gio gio = Gio(glibDyLib);

extension GioX on Gio {
  /// Returns the Application ID if available, with the executable
  /// name as a fallback.
  ///
  /// A wrapper around Gio functions.
  Future<String> getApplicationID() async {
    final application = g_application_get_default();
    if (application == nullptr) {
      return _getExecutableName();
    }
    final id = g_application_get_application_id(application);
    return id.toDartString();
  }
}

/// Gets the name of this executable.
///
/// Reference: https://github.com/flutter/plugins/blob/main/packages/path_provider/path_provider_linux/lib/src/path_provider_linux.dart
Future<String> _getExecutableName() async {
  final executableName = path.basenameWithoutExtension(
    await File('/proc/self/exe').resolveSymbolicLinks(),
  );
  return executableName;
}
