// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:js_interop';

@JS()
external ToolCache get toolCache;

// https://www.npmjs.com/package/@actions/tool-cache
@JS()
extension type ToolCache(JSObject it) {
  @JS('find')
  external String _find(
    String toolName,
    String versionSpec,
  );

  /// Finds the path to a tool version in the local installed tool cache.
  ///
  /// @param toolName      name of the tool
  /// @param versionSpec   version of the tool
  /// @param arch          optional arch.  defaults to arch of computer
  String? find(String toolName, String versionSpec) {
    try {
      final path = _find(toolName, versionSpec).trim();
      return path.isNotEmpty ? path : null;
    } on Object {
      return null;
    }
  }

  @JS('downloadTool')
  external JSPromise _downloadTool(String url);

  /// Download a tool from an url and stream it into a file.
  ///
  /// @param url       url of tool to download
  /// @returns         path to downloaded tool
  Future<String> downloadTool(String url) async {
    final path = await _downloadTool(url).toDart;
    return (path as JSString).toDart;
  }

  @JS('extractZip')
  external JSPromise _extractZip(String file, [String? dest]);

  /// Extract a zip.
  ///
  /// @param file     path to the zip
  /// @returns        path to the destination directory
  Future<String> extractZip(String file, [String? dest]) async {
    final path = await _extractZip(file, dest).toDart;
    return (path as JSString).toDart;
  }

  @JS('cacheDir')
  external JSPromise _cacheDir(
    String sourceDir,
    String tool,
    String version, [
    String? arch,
  ]);

  /// Caches a directory and installs it into the tool cacheDir
  ///
  /// @param sourceDir     the directory to cache into tools
  /// @param tool          tool name
  /// @param version       version of the tool.  semver format
  /// @param arch          architecture of the tool.  Optional.
  ///                      Defaults to machine architecture
  Future<String> cacheDir(
    String sourceDir, 
    String tool, 
    String version, [
    String? arch,
  ]) async {
    final cachePath = await _cacheDir(sourceDir, tool, version, arch).toDart;
    return (cachePath as JSString).toDart;
  }
}
