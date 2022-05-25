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
import 'dart:convert';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:collection/collection.dart';
import 'package:meta/meta.dart';

/// {@template aws_common.aws_http_response}
/// A parameterized HTTP response.
/// {@endtemplate}
///
/// See also:
/// - [AWSHttpResponse]
/// - [AWSStreamedHttpResponse]
abstract class AWSBaseHttpResponse implements Closeable {
  AWSBaseHttpResponse._({
    required this.statusCode,
    Map<String, String>? headers,
  }) : headers = UnmodifiableMapView(
          CaseInsensitiveMap(headers ?? const {}),
        );

  /// The response's status code.
  final int statusCode;

  /// The response's headers.
  final Map<String, String> headers;

  /// The response's body.
  Stream<List<int>> get body;

  /// The collected bytes of the response [body].
  FutureOr<List<int>> get bodyBytes;

  /// Decodes the response body using [encoding] (defaults to UTF-8).
  FutureOr<String> decodeBody({Encoding encoding = utf8});
}

/// {@macro aws_common.aws_http_response}
@immutable
class AWSHttpResponse extends AWSBaseHttpResponse {
  /// {@macro aws_common.aws_http_response}
  AWSHttpResponse({
    required super.statusCode,
    super.headers,
    List<int>? body,
  })  : bodyBytes = body ?? const [],
        super._();

  @override
  Stream<List<int>> get body =>
      bodyBytes.isEmpty ? const Stream.empty() : Stream.value(bodyBytes);

  @override
  final List<int> bodyBytes;

  @override
  String decodeBody({Encoding encoding = utf8}) => encoding.decode(bodyBytes);

  @override
  void close() {}
}

/// {@template aws_common.aws_http_streamed_response}
/// A streaming HTTP response.
/// {@endtemplate}
class AWSStreamedHttpResponse extends AWSBaseHttpResponse
    implements StreamSplitter<List<int>> {
  /// @{macro aws_common.aws_http_streamed_response}
  AWSStreamedHttpResponse({
    required super.statusCode,
    super.headers,
    required Stream<List<int>> body,
  })  : _body = body,
        super._();

  /// Handles splitting [_body] into multiple single-subscription streams.
  StreamSplitter<List<int>>? _splitter;

  /// The original body.
  final Stream<List<int>> _body;

  @override
  Stream<List<int>> get body => _splitter == null ? _body : split();

  @override
  Future<String> decodeBody({Encoding encoding = utf8}) =>
      encoding.decodeStream(body);

  @override
  Future<Uint8List> get bodyBytes {
    final completer = Completer<Uint8List>();
    final sink = ByteConversionSink.withCallback(
      (bytes) => completer.complete(Uint8List.fromList(bytes)),
    );
    body.listen(
      sink.add,
      onError: completer.completeError,
      onDone: sink.close,
      cancelOnError: true,
    );
    return completer.future;
  }

  /// The number of times the body stream has been split.
  @visibleForTesting
  int debugNumSplits = 0;

  /// Returns a copy of [body] in cases where the stream must be read multiple
  /// times.
  @override
  Stream<List<int>> split() {
    debugNumSplits++;
    return (_splitter ??= StreamSplitter(body)).split();
  }

  @override
  Future<void> close() => _splitter?.close() ?? Future.value();
}
