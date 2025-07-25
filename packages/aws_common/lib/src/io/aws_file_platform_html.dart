// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:js_interop';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:http/browser_client.dart';
import 'package:http/http.dart' as http;
import 'package:web/web.dart';

// Dart io.File openRead chunk size
const _readStreamChunkSize = 64 * 1024;

/// The html implementation of [AWSFile].
class AWSFilePlatform extends AWSFile {
  /// Creates an [AWSFile] from html [File].
  AWSFilePlatform.fromFile(File file, {super.contentType})
    : _stream = null,
      _inputFile = file,
      _inputBlob = null,
      _size = file.size,
      super.protected();

  /// Creates an [AWSFile] from html [Blob].
  AWSFilePlatform.fromBlob(Blob blob, {super.contentType})
    : _stream = null,
      _inputBlob = blob,
      _inputFile = null,
      _size = blob.size,
      super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromPath(String path, {super.name, super.contentType})
    : _stream = null,
      _inputFile = null,
      _inputBlob = null,
      _size = null,
      super.protected(path: path);

  /// {@macro amplify_core.io.aws_file.from_stream}
  AWSFilePlatform.fromStream(
    Stream<List<int>> stream, {
    super.name,
    super.contentType,
    required int size,
  }) : _stream = stream,
       _inputFile = null,
       _inputBlob = null,
       _size = size,
       super.protected();

  /// {@macro amplify_core.io.aws_file.from_path}
  AWSFilePlatform.fromData(List<int> data, {super.name, super.contentType})
    : _stream = null,
      _inputBlob = null,
      _inputFile = null,
      _size = data.length,
      super.protected(bytes: data);

  final _contentTypeMemo = AsyncMemoizer<String?>();
  final File? _inputFile;
  final Blob? _inputBlob;
  final Stream<List<int>>? _stream;
  int? _size;
  Blob? _resolvedBlobFromPath;

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

  @override
  Future<int> get size async {
    final size = _size;
    if (size != null) {
      return size;
    }

    final resolvedBlob = await _resolvedBlob;
    return resolvedBlob.size;
  }

  @override
  Future<String?> get contentType => _contentTypeMemo.runOnce(() async {
    final externalContentType = await super.contentType;
    if (externalContentType != null) {
      return externalContentType;
    }

    String? blobType;

    final file = _inputFile ?? _inputBlob;
    final path = super.path;

    if (file != null) {
      blobType = file.type;
    } else if (path != null) {
      blobType = (await _resolvedBlob).type;
    }

    // on Web blob.type may return an empty string
    // https://developer.mozilla.org/en-US/docs/Web/API/Blob/type#value
    if (blobType != null) {
      return blobType.isEmpty ? null : blobType;
    }

    return blobType;
  });

  @override
  ChunkedStreamReader<int> getChunkedStreamReader() {
    return ChunkedStreamReader(stream);
  }

  @override
  Stream<List<int>> openRead([int? start, int? end]) {
    final file = _inputFile ?? _inputBlob;
    if (file != null) {
      return _getReadStream(file, start: start, end: end);
    }

    final inputBytes = super.bytes;
    if (inputBytes != null) {
      return Stream.value(inputBytes.sublist(start ?? 0, end));
    }

    final path = super.path;
    if (path != null) {
      return _getReadStream(_resolvedBlob, start: start, end: end);
    }

    throw const InvalidFileException(
      recoverySuggestion:
          'Cannot use `openRead` with an AWSFile that is initiated with a stream.',
    );
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

  Future<Blob> _resolveBlobFromPath() async {
    final path = super.path;
    if (path == null) {
      throw const InvalidFileException();
    }

    late http.Response response;
    try {
      response = await BrowserClient().get(Uri.parse(path));
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

    final blobParts = [response.bodyBytes.toJS].toJS;
    final type = response.headers['content-type'] ?? '';
    final options = BlobPropertyBag(type: type);
    final retrievedBlob = Blob(blobParts, options);

    _size = retrievedBlob.size;

    return retrievedBlob;
  }

  static Stream<List<int>> _getReadStream(
    FutureOr<Blob> sourceBlob, {
    int? start,
    int? end,
  }) async* {
    var blob = await sourceBlob;
    if (start != null) {
      blob = blob.slice(start, end ?? blob.size);
    }
    final fileReader = FileReader();
    var currentPosition = 0;

    while (currentPosition < blob.size) {
      final readRange = currentPosition + _readStreamChunkSize > blob.size
          ? blob.size
          : currentPosition + _readStreamChunkSize;
      final blobToRead = blob.slice(currentPosition, readRange);

      final loaded = Completer<void>();
      void onLoadEnd() {
        loaded.complete();
      }

      fileReader
        ..onloadend = onLoadEnd.toJS
        ..readAsArrayBuffer(blobToRead);

      await loaded.future;
      final jsResult = fileReader.result;
      jsResult as JSArrayBuffer;

      final bytebuffer = jsResult.toDart;
      yield bytebuffer.asUint8List().toList();

      currentPosition += _readStreamChunkSize;
    }
  }
}
