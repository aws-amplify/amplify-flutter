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

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_common/src/io/aws_file_platform.dart'
    if (dart.library.html) 'aws_file_platform_html.dart'
    if (dart.library.io) 'aws_file_platform_io.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.io.aws_file}
/// A cross-platform abstraction over a read-only file.
///
/// If you are using `XFile` from the
/// [cross_file](https://pub.dev/packages/cross_file) package, you can create
/// an [AWSFile] using the [AWSFile.fromStream] factory, e.g.
///
/// ```dart
/// final xFile = XFile('path/to/file.txt');
/// final awsFile = AWSFile.fromStream(xFile.openRead());
/// ```
/// ----
/// If you are using `PlatformFile` from the
/// [file_picker](https://pub.dev/packages/file_picker) package, you can
/// create an [AWSFile] using the [AWSFile.fromStream] factory, e.g.
///
/// ```dart
/// final pickResult = await FilePicker.platform.pickFiles();
/// final pickedFile = pickResult.first;
/// final awsFile = AWSFile.fromStream(pickedFile.readStream);
/// ```
/// ----
/// 
/// You can also create an [AWSFile] by providing a file path or file bytes
/// to [AWSFile.fromPath] or [AWSFile.fromData], respectively.
/// 
/// ----
/// If you are developing a _**Web only**_ App, and want to use the `dart:html`
/// `File` or `Blob` types, you can import [AWSFilePlatform] directly which provides
/// `fromFile` and `fromBlob` factories to create an [AWSFile], e.g.
///
/// ```dart
/// import 'dart:html' as html;
/// import 'package:aws_common/web.dart';
///
/// AWSFile convertHtmlFileOrBlob(html.Blob file) {
///   return AWSFilePlatform.fromBlob(file);
/// }
/// ```
/// ----
/// If you are developing a _**native only**_ App, and want to use a `dart:io`
/// `File`, you can import [AWSFilePlatform] directly which provides a
/// `fromFile` factory to create an [AWSFile], e.g.
///
/// ```dart
/// import 'dart:html' as io;
/// import 'package:aws_common/vm.dart';
///
/// AWSFile convertIOFile(io.File file) {
///   return AWSFilePlatform.fromFile(file);
/// }
/// ```
///
/// {@endtemplate}
abstract class AWSFile {
  /// {@template amplify_core.io.aws_file.from_stream}
  /// Creates an [AWSFile] from a stream of bytes, optionally specifying a file
  /// [name] and [contentType].
  /// {@endtemplate}
  factory AWSFile.fromStream(
    Stream<List<int>> stream, {
    String? name,
    String? contentType,
    required int size,
  }) = AWSFilePlatform.fromStream;

  /// {@template amplify_core.io.aws_file.from_path}
  /// Creates an [AWSFile] from a path, optionally specifying a file [name].
  ///
  /// On VM platforms, the [path] is the absolute path to a file in the file
  /// system.
  ///
  /// On Web, the [path] can be an object url created by
  /// [`URL.createObjectURL()`](https://developer.mozilla.org/en-US/docs/Web/API/URL/createObjectURL)
  /// . When passing an object url, it's recommended to set a value for [name].
  ///
  /// Throws [InvalidFileException] if cannot get a file content stream from the
  /// [path].
  /// {@endtemplate}
  factory AWSFile.fromPath(
    String path, {
    String? name,
  }) = AWSFilePlatform.fromPath;

  /// {@template amplify_core.io.aws_file.from_data}
  /// Create an [AWSFile] from a list of bytes.
  /// {@endtemplate}
  factory AWSFile.fromData(
    List<int> data, {
    String? name,
    String? contentType,
  }) = AWSFilePlatform.fromData;

  /// Protected constructor of [AWSFile].
  @protected
  AWSFile.protected({
    this.path,
    this.bytes,
    this.name,
    this.contentType,
  });

  /// Stream of the file content.
  Stream<List<int>> get stream;

  /// The cached bytes content of the file.
  final List<int>? bytes;

  /// The name of the file if provided or read from OS.
  final String? name;

  /// The path of the file if provided.
  final String? path;

  /// The content type of the file if provided.
  final String? contentType;

  /// {@template amplify_core.io.aws_file.chunked_reader}
  /// Returns a [ChunkedStreamReader] over the stream of bytes of the file.
  /// {@endtemplate}
  ChunkedStreamReader<int> getChunkedStreamReader();

  /// Size of the file.
  Future<int> get size;
}
