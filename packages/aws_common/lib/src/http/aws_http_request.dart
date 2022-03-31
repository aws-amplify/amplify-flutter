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

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// {@template aws_common.aws_http_request}
/// A parameterized HTTP request.
///
/// The request is typically passed to a signer for signing, although it can be
/// used unsigned as well for sending unauthenticated requests.
/// {@endtemplate}
///
/// See also:
/// - [AWSHttpRequest]
/// - [AWSStreamedHttpRequest]
abstract class AWSBaseHttpRequest {
  /// The method of the request.
  final HttpMethod method;

  /// The host for the request.
  final String host;

  /// The path of the request.
  final String path;
  final Map<String, Object> _queryParameters;

  /// Query parameters for the request.
  ///
  /// Parameters with multiple values will have a comma-delimited string.
  Map<String, String> get queryParameters => uri.queryParameters;

  /// All query parameters for the request.
  Map<String, List<String>> get queryParametersAll => uri.queryParametersAll;

  /// The case-insensitive headers of the request.
  final Map<String, String> headers;

  /// The request's body.
  Stream<List<int>> get body;

  /// The request's content length.
  ///
  /// It is recommended to check [hasContentLength] first for large requests,
  /// since calling this getter will result in reading the request's full body
  /// if the content length is not known statically.
  FutureOr<int> get contentLength;

  /// Whether the request has a known content length.
  ///
  /// If `false`, calling [contentLength] will require reading the body.
  bool get hasContentLength;

  /// The URI of the request.
  late final Uri uri = Uri(
    scheme: 'https',
    host: host,
    path: path,
    queryParameters: _queryParameters,
  );

  /// Creates a `package:http` request from this request.
  http.StreamedRequest get httpRequest {
    final request = http.StreamedRequest(method.value, uri);
    request.headers.addAll(headers);
    if (hasContentLength) {
      request.contentLength = contentLength as int;
    }

    body.listen(request.sink.add,
        onError: request.sink.addError,
        onDone: request.sink.close,
        cancelOnError: true);

    return request;
  }

  /// Sends the HTTP request.
  ///
  /// If [client] is not provided, a short-lived one is created for this request.
  Future<http.StreamedResponse> send([http.Client? client]) async {
    final _client = client ?? http.Client();
    try {
      return await _client.send(httpRequest);
    } finally {
      // Only close a client we created.
      if (client == null) {
        _client.close();
      }
    }
  }

  AWSBaseHttpRequest._({
    required this.method,
    required this.host,
    required this.path,
    Map<String, Object>? queryParameters,
    Map<String, String>? headers,
  })  : _queryParameters = queryParameters ?? {},
        headers = CaseInsensitiveMap(headers ?? {});

  @override
  String toString() => uri.toString();
}

/// {@macro aws_common.aws_http_request}
@immutable
class AWSHttpRequest extends AWSBaseHttpRequest {
  /// {@macro aws_common.aws_http_request}
  AWSHttpRequest({
    required HttpMethod method,
    required String host,
    required String path,
    Map<String, Object>? queryParameters,
    Map<String, String>? headers,
    List<int>? body,
  })  : bodyBytes = body ?? const [],
        contentLength = body?.length ?? 0,
        super._(
          method: method,
          host: host,
          path: path,
          queryParameters: queryParameters,
          headers: headers,
        );

  @override
  Stream<List<int>> get body =>
      bodyBytes.isEmpty ? const Stream.empty() : Stream.value(bodyBytes);

  @override
  final int contentLength;

  @override
  bool get hasContentLength => true;

  /// The body bytes.
  final List<int> bodyBytes;
}

/// {@template aws_common.aws_http_streamed_request}
/// A streaming HTTP request.
/// {@endtemplate}
class AWSStreamedHttpRequest extends AWSBaseHttpRequest
    implements StreamSplitter<List<int>> {
  /// @{macro aws_common.aws_http_streamed_request}
  ///
  /// For signed requests, [body] is read once, in chunks, as it is sent to AWS.
  /// It is recommended that [contentLength] be provided so that [body] does not
  /// have to be read twice, since the content length must be known when
  /// calculating the signature.
  AWSStreamedHttpRequest({
    required HttpMethod method,
    required String host,
    required String path,
    Map<String, Object>? queryParameters,
    Map<String, String>? headers,
    required Stream<List<int>> body,
    int? contentLength,
  })  : _body = body,
        _contentLength = contentLength,
        super._(
          method: method,
          host: host,
          path: path,
          queryParameters: queryParameters,
          headers: headers,
        );

  /// Handles splitting [_body] into multiple single-subscription streams.
  StreamSplitter<List<int>>? _splitter;

  /// The original body.
  final Stream<List<int>> _body;

  @override
  Stream<List<int>> get body => _splitter == null ? _body : split();

  /// The number of times the body stream has been split.
  @visibleForTesting
  int debugNumSplits = 0;

  /// Returns a copy of [body] in cases where the stream must be read multiple
  /// times, e.g. when [contentLength] is not provided and the service requires
  /// it.
  @override
  Stream<List<int>> split() {
    debugNumSplits++;
    return (_splitter ??= StreamSplitter(body)).split();
  }

  final int? _contentLength;

  @override
  bool get hasContentLength => _contentLength != null;

  @override
  late final FutureOr<int> contentLength = () {
    var length = _contentLength;
    if (length != null) {
      return length;
    }
    return split().fold<int>(0, (prev, el) => prev + el.length);
  }() as FutureOr<int>;

  @override
  Future<void> close() => _splitter?.close() ?? Future.value();
}
