// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:mime/mime.dart';

/// The io implementation of [AWSFile].
class AWSFilePlatform extends AWSFile {
  /// Creates an [AWSFile] from io [File].
  AWSFilePlatform.fromFile(
    File file, {
    super.contentType,
  })  : _stream = null,
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
        _inputFile = null,
        _size = size,
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

  final _contentTypeMemo = AsyncMemoizer<String?>();
  final File? _inputFile;
  final int? _size;
  final Stream<List<int>>? _stream;

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
  Future<String?> get contentType => _contentTypeMemo.runOnce(() async {
        final externalContentType = await super.contentType;
        if (externalContentType != null) {
          return externalContentType;
        }

        final file = _inputFile;
        if (file != null) {
          return lookupMimeType(file.path);
        }

        return null;
      });

  @override
  ChunkedStreamReader<int> getChunkedStreamReader() {
    return ChunkedStreamReader(stream);
  }

  @override
  Stream<List<int>> openRead([int? start, int? end]) {
    final file = _inputFile;
    if (file != null) {
      return File(file.path).openRead(start, end);
    }

    final bytes = super.bytes;
    if (bytes != null) {
      return Stream.value(
        bytes.sublist(start ?? 0, end),
      );
    }

    throw const InvalidFileException(
      recoverySuggestion:
          'Cannot use `openRead` with an AWSFile that is initiated with a stream.',
    );
  }
}
