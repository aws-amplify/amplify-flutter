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

import 'dart:io';

import 'package:amplify_core/src/io/aws_file.dart';
import 'package:amplify_core/src/io/exception/invalid_file.dart';
import 'package:async/async.dart';

/// The io implementation of [AWSFile].
class AWSFilePlatform extends AWSFile {
  /// Creates an [AWSFile] from io [File].
  AWSFilePlatform.fromFile(File file)
      : _inputFile = file,
        _size = null,
        super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromPath(
    String path, {
    String? name,
  })  : _inputFile = File(path),
        _size = null,
        super.protected(
          name: name,
          path: path,
        );

  /// {@macro amplify_core.io.aws_file.from_stream}
  AWSFilePlatform.fromStream(
    Stream<List<int>> inputStream, {
    String? name,
    String? contentType,
    required int size,
  })  : _size = size,
        _inputFile = null,
        super.protected(
          name: name,
          stream: inputStream,
          contentType: contentType,
        );

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromData(
    List<int> data, {
    String? name,
    String? contentType,
  })  : _inputFile = null,
        _size = data.length,
        super.protected(
          bytes: data,
          name: name,
          contentType: contentType,
          stream: Stream.value(data),
        );

  final File? _inputFile;
  final int? _size;

  /// {@macro amplify_core.io.aws_file.chunked_reader}
  @override
  ChunkedStreamReader<int> getChunkedStreamReader() {
    final file = _inputFile;
    if (file != null) {
      return ChunkedStreamReader(file.openRead());
    }

    final inputStream = super.stream;
    if (inputStream != null) {
      return ChunkedStreamReader(inputStream);
    }

    final inputBytes = super.bytes;
    if (inputBytes != null) {
      return ChunkedStreamReader(Stream.value(inputBytes));
    }

    throw const InvalidFileException();
  }

  @override
  Future<int> get size async {
    final size = _size;
    if (size != null) {
      return size;
    }

    final file = _inputFile;
    if (file != null) {
      return file.length();
    }

    // the constructors ensures it won't reach to this point, but just in case
    throw const InvalidFileException();
  }
}
