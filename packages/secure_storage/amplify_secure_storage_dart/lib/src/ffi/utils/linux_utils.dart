import 'dart:ffi';
import 'dart:io';

import 'package:amplify_secure_storage_dart/src/ffi/gio/gio.dart';
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as path;
import 'package:xdg_directories/xdg_directories.dart' as xdg;

/// Returns a path to a directory where the application may place application support
/// files.
///
/// Based off of path_provider.
///
/// Reference: https://github.com/flutter/plugins/blob/a124dcb33b620f2908aae4f28af6487163b7d8ea/packages/path_provider/path_provider_linux/lib/src/path_provider_linux.dart#L48-L67
@internal
Future<String> getApplicationSupportPath(String appId) async {
  final directory = Directory(
    path.join(
      xdg.dataHome.path,
      appId,
    ),
  );
  if (directory.existsSync()) {
    return directory.path;
  }

  await directory.create(recursive: true);
  return directory.path;
}

/// Returns the Application ID if available, with the executable
/// name as a fallback.
///
/// A wrapper around Gio functions.
@internal
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
