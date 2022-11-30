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

import 'dart:async';
import 'dart:html';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';

// Dart io.File openRead chunk size
const _readStreamChunkSize = 64 * 1024;

/// The html implementation of [AWSFile].
class AWSFilePlatform extends AWSFile {
  /// Creates an [AWSFile] from html [File].
  AWSFilePlatform.fromFile(File file)
      : _stream = null,
        _inputFile = file,
        _inputBlob = null,
        _size = file.size,
        super.protected();

  /// Creates an [AWSFile] from html [Blob].
  AWSFilePlatform.fromBlob(Blob blob)
      : _stream = null,
        _inputBlob = blob,
        _inputFile = null,
        _size = blob.size,
        super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromPath(
    String path, {
    super.name,
    super.contentType,
  })  : _stream = null,
        _inputFile = null,
        _inputBlob = null,
        _size = null,
        super.protected(
          path: path,
        );

  /// {@macro amplify_core.io.aws_file.from_stream}
  AWSFilePlatform.fromStream(
    Stream<List<int>> stream, {
    super.name,
    super.contentType,
    required int size,
  })  : _stream = stream,
        _inputFile = null,
        _inputBlob = null,
        _size = size,
        super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromData(
    List<int> data, {
    super.name,
    super.contentType,
  })  : _stream = null,
        _inputBlob = Blob([data], contentType),
        _inputFile = null,
        _size = data.length,
        super.protected(
          bytes: data,
        );

  final File? _inputFile;
  final Blob? _inputBlob;
  final Stream<List<int>>? _stream;
  int? _size;
  Blob? _resolvedBlobFromPath;
  String? _resolvedContentType;
  bool _hasResolvedContentType = false;

  @override
  Future<String?> get contentType async {
    if (_hasResolvedContentType) {
      return _resolvedContentType;
    }

    final externalContentType = await super.contentType;
    if (externalContentType != null) {
      _resolvedContentType = externalContentType;
    } else {
      final file = _inputFile ?? _inputBlob;
      final path = super.path;
      if (file != null) {
        _resolvedContentType = file.type;
      } else if (path != null) {
        _resolvedContentType = (await _resolvedBlob).type;
      }

      // html Blob may return empty string as mime type when the type cannot
      // be determined, in this case we set the contentType as null
      if (_resolvedContentType?.isEmpty ?? false) {
        _resolvedContentType = null;
      }
    }

    _hasResolvedContentType = true;
    return _resolvedContentType;
  }

  @override
  Stream<List<int>> get stream {
    final file = _inputFile ?? _inputBlob;
    if (file != null) {
      return _getReadStream(file);
    }

    final inputStream = _stream;
    if (inputStream != null) {
      return inputStream;
    }

    final inputBytes = super.bytes;
    if (inputBytes != null) {
      return Stream.value(inputBytes);
    }

    final path = super.path;
    if (path != null) {
      return _getReadStream(_resolvedBlob);
    }

    throw const InvalidFileException();
  }

  Future<Blob> get _resolvedBlob async {
    final resolvedBlobFromPath = _resolvedBlobFromPath;
    if (resolvedBlobFromPath != null) {
      return resolvedBlobFromPath;
    }

    final resolvedBlob = await _resolveBlobFromPath();
    _size = resolvedBlob.size;
    _resolvedBlobFromPath = resolvedBlob;

    return resolvedBlob;
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

    final resolvedBlob = await _resolvedBlob;
    return resolvedBlob.size;
  }

  static Stream<List<int>> _getReadStream(FutureOr<Blob> sourceBlob) async* {
    final blob = await sourceBlob;
    final fileReader = FileReader();
    var currentPosition = 0;

    while (currentPosition < blob.size) {
      final readRange = currentPosition + _readStreamChunkSize > blob.size
          ? blob.size
          : currentPosition + _readStreamChunkSize;
      final blobToRead = blob.slice(currentPosition, readRange);
      fileReader.readAsArrayBuffer(blobToRead);
      await fileReader.onLoad.first;
      yield fileReader.result as List<int>;
      currentPosition += _readStreamChunkSize;
    }
  }

  Future<Blob> _resolveBlobFromPath() async {
    final path = super.path;
    if (path == null) {
      throw const InvalidFileException();
    }

    late HttpRequest request;
    try {
      request = await HttpRequest.request(path, responseType: 'blob');
    } on ProgressEvent catch (e) {
      if (e.type == 'error') {
        throw const InvalidFileException(
          message: 'Could resolve file blob from provide path.',
          recoverySuggestion:
              'Ensure the file `path` in Web is an accessible url.',
        );
      }
      rethrow;
    }

    final retrievedBlob = request.response as Blob?;

    if (retrievedBlob == null) {
      throw const InvalidFileException(
        message: 'The retrieved blob cannot be null.',
        recoverySuggestion:
            'Ensure the file `path` in Web is a valid source to retrieve content blob.',
      );
    }

    _size = retrievedBlob.size;

    return retrievedBlob;
  }
}
