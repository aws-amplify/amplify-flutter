// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: implementation_imports

import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path_provider_windows/src/folders.dart';
import 'package:path_provider_windows/src/path_provider_windows_real.dart';

/// A version of [PathProviderWindows] that uses the
/// [WindowsKnownFolder.LocalAppData] directory in place of the
/// [WindowsKnownFolder.RoamingAppData] directory.
class PathProviderWindowsLocal extends PathProviderWindows {
  @override
  Future<String?> getPath(String folderID) {
    if (folderID == WindowsKnownFolder.RoamingAppData) {
      return super.getPath(WindowsKnownFolder.LocalAppData);
    }
    return super.getPath(folderID);
  }
}

/// Returns version of [getApplicationSupportDirectory] that returns the Local
/// App Data directory on Windows.
Future<Directory> getApplicationLocalSupportDirectory() async {
  if (!Platform.isWindows) throw UnsupportedError('Only supported on Windows');
  final path = await PathProviderWindowsLocal().getApplicationSupportPath();
  if (path == null) {
    throw MissingPlatformDirectoryException(
      'Unable to get application support directory',
    );
  }
  return Directory(path);
}
