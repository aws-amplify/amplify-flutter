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

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:mime/mime.dart' as mime;

/// The io implementation of [AWSFile].
class AWSFilePlatform extends AWSFile {
  /// Creates an [AWSFile] from io [File].
  AWSFilePlatform.fromFile(File file)
      : _stream = null,
        _inputFile = file,
        _size = null,
        super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromPath(
    String path, {
    super.name,
    super.contentType,
  })  : _stream = null,
        _inputFile = File(path),
        _size = null,
        super.protected(
          path: path,
        );

  /// {@macro amplify_core.io.aws_file.from_stream}
  AWSFilePlatform.fromStream(
    Stream<List<int>> inputStream, {
    super.name,
    super.contentType,
    required int size,
  })  : _stream = inputStream,
        _size = size,
        _inputFile = null,
        super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromData(
    List<int> data, {
    super.name,
    super.contentType,
  })  : _stream = null,
        _inputFile = null,
        _size = data.length,
        super.protected(
          bytes: data,
        );

  final File? _inputFile;
  final int? _size;
  final Stream<List<int>>? _stream;
  String? _resolvedContentType;
  bool _hasResolvedContentType = false;

  @override
  Stream<List<int>> get stream {
    final file = _inputFile;
    if (file != null) {
      return file.openRead();
    }

    final stream = _stream;
    if (stream != null) {
      return stream;
    }

    final bytes = super.bytes;
    if (bytes != null) {
      return Stream.value(bytes);
    }

    throw const InvalidFileException();
  }

  @override
  ChunkedStreamReader<int> getChunkedStreamReader() {
    return ChunkedStreamReader(stream);
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

  @override
  Future<String?> get contentType async {
    if (_hasResolvedContentType) {
      return _resolvedContentType;
    }

    final externalContentType = await super.contentType;
    if (externalContentType != null) {
      _resolvedContentType = externalContentType;
    } else {
      final file = _inputFile;
      if (file != null) {
        final headerBytes =
            (await file.openRead(0, mime.defaultMagicNumbersMaxLength).toList())
                .expand((e) => e)
                .toList();
        // Mime type will be null if the header bytes doesn't match the
        // predefined magic numbers in the mime package.
        // https://github.com/dart-lang/mime/blob/master/lib/src/magic_number.dart
        // Then it falls back to determine mime type by looking up the file
        // extension name. If none works, the it falls to null.
        _resolvedContentType =
            mime.lookupMimeType(file.path, headerBytes: headerBytes);
      }
    }

    _hasResolvedContentType = true;
    return _resolvedContentType;
  }
}
