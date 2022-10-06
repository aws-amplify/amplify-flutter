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
import 'aws_file_platform.dart'
    if (dart.library.html) 'aws_file_platform_html.dart'
    if (dart.library.io) 'aws_file_platform_io.dart';

/// {@template amplify_core.io.aws_file}
/// A read only abstraction over File interface cross platforms. This
/// abstraction supports Amplify libraries to read file content.
///
/// If you are using `XFile` of the
/// [cross_file](https://pub.dev/packages/cross_file) package, you can initiate
/// an [AWSFile] using the [AWSFile.fromStream] factory, e.g.
///
/// ```dart
/// final xFile = XFile('path/to/file.txt');
/// final awsFile = AWSFile.fromStream(xFile.openRead());
/// ```
/// ----
/// If you are using `PlatformFile` of the
/// [file_picker](https://pub.dev/packages/file_picker) package, you can
/// initiate an [AWSFile] using the [AWSFile.fromStream] factory, e.g.
///
/// ```dart
/// final pickResult = await FilePicker.platform.pickFiles();
/// final pickedFile = pickResult.first;
/// final awsFile = AWSFile.fromStream(pickedFile.readStream);
/// ```
/// ----
/// You can also initiate an [AWSFile] by provides file path or file bytes
/// by using [AWSFile.fromPath] and [AWSFile.fromData] respectively.
/// ----
/// If you are developing a _**Web only**_ App, and seeking to operate on html
/// `File` or `Blob` you can import [AWSFilePlatform] directly from
/// `'package:amplify_core/src/io/aws_file_platform_html.dart'` which provides
/// `fromFile` and `fromBlob` factories to initiate an [AWSFile], e.g.
///
/// ```dart
/// import 'dart:html' as html;
/// import 'package:amplify_core/src/io/aws_file_platform_html.dart';
///
/// AWSFile convertHtmlFileOrBlob(html.Blob file) {
///   return AWSFilePlatform.fromBlob(file);
/// }
/// ```
/// ----
/// If you are developing a _**native only**_ App, and seeking to operate on
/// io `File`, you can import [AWSFilePlatform] directly from
/// `'package:amplify_core/src/io/aws_file_platform_io.dart'` which provides
/// `fromFile` factory to initiate an [AWSFile], e.g.
///
/// ```dart
/// import 'dart:html' as io;
/// import 'package:amplify_core/src/io/aws_file_platform_io.dart';
///
/// AWSFile convertIOFile(io.File file) {
///   return AWSFilePlatform.fromFile(file);
/// }
/// ```
///
/// {@endtemplate}
abstract class AWSFile {
  /// {@template amplify_core.io.aws_file.from_stream}
  /// Creates an [AWSFile] from a stream of bytes, optionally specifying file a
  /// [name] and [contentType].
  /// {@endtemplate}
  factory AWSFile.fromStream(
    Stream<List<int>> stream, {
    String? name,
    String? contentType,
    required int size,
  }) = AWSFilePlatform.fromStream;

  /// {@template amplify_core.io.aws_file.from_path}
  /// Creates an [AWSFile] from a path, optionally specifying file name.
  ///
  /// In native, the [path] is the absolute path to a file in the file system.
  ///
  /// In Web, the [path] can be an object url created by
  /// [`URL.createObjectURL()`](https://developer.mozilla.org/en-US/docs/Web/API/URL/createObjectURL)
  /// . When passing object url, it's recommended to set a value for [name].
  ///
  /// Throws [S3StorageException] if the file is not readable.
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

  AWSFile.protected({
    this.stream,
    this.path,
    this.bytes,
    this.name,
    this.contentType,
  });

  final Stream<List<int>>? stream;
  final List<int>? bytes;
  final String? name;
  final String? path;
  final String? contentType;

  /// {@template amplify_core.io.aws_file.chunked_reader}
  /// Returns a [ChunkedStreamReader] over the stream of bytes of the file.
  /// {@endtemplate}
  ChunkedStreamReader<int> getChunkedStreamReader();

  Future<int> get size;
}
