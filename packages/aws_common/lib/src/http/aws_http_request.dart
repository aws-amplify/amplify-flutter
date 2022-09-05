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
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';
import 'package:stream_transform/stream_transform.dart';

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
abstract class AWSBaseHttpRequest
    implements StreamSplitter<List<int>>, Closeable {
  AWSBaseHttpRequest._({
    required this.method,
    this.scheme = 'https',
    required this.host,
    this.port,
    required this.path,
    Map<String, Object>? queryParameters,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  })  : _queryParameters = queryParameters,
        headers = CaseInsensitiveMap(headers ?? {}),
        followRedirects = followRedirects ?? true,
        maxRedirects = maxRedirects ?? 5;

  /// The method of the request.
  final AWSHttpMethod method;

  /// The scheme of the request, e.g. `https`.
  final String scheme;

  /// The host for the request.
  final String host;

  /// The port of the request.
  final int? port;

  /// The path of the request.
  final String path;
  final Map<String, Object>? _queryParameters;

  /// Query parameters for the request.
  ///
  /// Parameters with multiple values will have a comma-delimited string.
  Map<String, String> get queryParameters => uri.queryParameters;

  /// All query parameters for the request.
  Map<String, List<String>> get queryParametersAll => uri.queryParametersAll;

  /// The case-insensitive headers of the request.
  final Map<String, String> headers;

  /// The request's body stream.
  Stream<List<int>> get body;

  /// The collected bytes of the [body] stream.
  FutureOr<List<int>> get bodyBytes;

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
    scheme: scheme,
    host: host,
    port: port,
    path: path,
    queryParameters: _queryParameters,
  );

  /// Whether to automatically follow redirects.
  ///
  /// Defaults to `true`. The behavior when `false` depends on the platform:
  ///
  /// - On Web, this will result in an empty [AWSStreamedHttpResponse] being
  /// returned, with no headers or body available. This is due to the
  /// [Fetch Standard](https://fetch.spec.whatwg.org/#concept-request-redirect-mode)
  /// disallowing anything but transparent follows.
  ///
  // ignore: comment_references
  /// - On VM, this follows the semantics of [HttpClientRequest.followRedirects]
  /// from `dart:io`.
  final bool followRedirects;

  /// If [followRedirects] is `true`, sets the maximum number of redirects
  /// before the request is terminated and an exception is thrown.
  ///
  /// If `followRedirects` is `false`, this has no effect. On Web, this has no
  /// effect, except in the case `followRedirects = true` and `maxRedirects = 0`
  /// which causes an error to be thrown if any redirect occurs.
  final int maxRedirects;

  /// Sends the HTTP request.
  ///
  /// If [client] is not provided, a short-lived one is created for this
  /// request.
  AWSHttpOperation send([
    AWSHttpClient? client,
  ]) {
    final useClient = client ?? AWSHttpClient();

    // Closes the HTTP client, but only if we created it.
    void closeClient() {
      if (client == null) {
        useClient.close();
      }
    }

    final awsOperation = useClient.send(this, onCancel: closeClient);
    return AWSHttpOperation(
      awsOperation.operation.then(
        (resp) {
          resp.body.tap(
            null,
            // Wait until the body has been read before closing the client,
            // since chunked requests require that the client not be closed
            // until they're complete.
            onDone: closeClient,
          );
          return resp;
        },
        onError: (e, st) {
          closeClient();
          Error.throwWithStackTrace(e, st);
        },
      ),
      requestProgress: awsOperation.requestProgress,
      responseProgress: awsOperation.responseProgress,
    );
  }

  @override
  String toString() => uri.toString();
}

/// {@macro aws_common.aws_http_request}
@immutable
class AWSHttpRequest extends AWSBaseHttpRequest {
  /// {@macro aws_common.aws_http_request}
  AWSHttpRequest({
    required super.method,
    required Uri uri,
    super.headers,
    List<int>? body,
    super.followRedirects,
    super.maxRedirects,
  })  : bodyBytes = body ?? const [],
        contentLength = body?.length ?? 0,
        super._(
          scheme: uri.scheme,
          host: uri.host,
          port: uri.hasPort ? uri.port : null,
          path: uri.path,
          queryParameters: uri.hasQuery ? uri.queryParametersAll : null,
        );

  /// Creates a "raw", or unprocessed, HTTP request. Since the [Uri] constructor
  /// will normalize paths by default, this constructor provides an escape hatch
  /// for situations when paths are already normalized and further processing
  /// could interfere with downstream activities like signing.
  ///
  /// If you're unsure, it's likely safe to use [AWSHttpRequest.new] and [Uri].
  AWSHttpRequest.raw({
    required super.method,
    super.scheme,
    required super.host,
    super.port,
    required super.path,
    super.queryParameters,
    super.headers,
    List<int>? body,
    super.followRedirects,
    super.maxRedirects,
  })  : bodyBytes = body ?? const [],
        contentLength = body?.length ?? 0,
        super._();

  /// Creates a `GET` request for [uri].
  AWSHttpRequest.get(
    Uri uri, {
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.get,
          uri: uri,
          headers: headers,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `HEAD` request for [uri].
  AWSHttpRequest.head(
    Uri uri, {
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.head,
          uri: uri,
          headers: headers,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `PUT` request for [uri].
  AWSHttpRequest.put(
    Uri uri, {
    List<int>? body,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.put,
          uri: uri,
          body: body,
          headers: headers,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `POST` request for [uri].
  AWSHttpRequest.post(
    Uri uri, {
    List<int>? body,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.post,
          uri: uri,
          body: body,
          headers: headers,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `PATCH` request for [uri].
  AWSHttpRequest.patch(
    Uri uri, {
    List<int>? body,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.patch,
          uri: uri,
          body: body,
          headers: headers,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `DELETE` request for [uri].
  AWSHttpRequest.delete(
    Uri uri, {
    List<int>? body,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.delete,
          uri: uri,
          body: body,
          headers: headers,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  @override
  Stream<List<int>> get body =>
      bodyBytes.isEmpty ? const Stream.empty() : Stream.value(bodyBytes);

  @override
  Stream<List<int>> split() => body;

  @override
  final int contentLength;

  @override
  bool get hasContentLength => true;

  @override
  final List<int> bodyBytes;

  @override
  Future<void> close() async {}
}

/// {@template aws_common.aws_http_streamed_request}
/// A streaming HTTP request.
/// {@endtemplate}
class AWSStreamedHttpRequest extends AWSBaseHttpRequest {
  /// @{macro aws_common.aws_http_streamed_request}
  ///
  /// {@template aws_common.aws_http_streamed_request_desc}
  /// For signed requests, [body] is read once, in chunks, as it is sent to AWS.
  /// It is recommended that [contentLength] be provided so that [body] does not
  /// have to be read twice, since the content length must be known when
  /// calculating the signature.
  /// {@endtemplate}
  AWSStreamedHttpRequest({
    required super.method,
    required Uri uri,
    super.headers,
    Stream<List<int>>? body,
    int? contentLength,
    super.followRedirects,
    super.maxRedirects,
  })  : _body = body ?? const Stream.empty(),
        _contentLength = contentLength,
        super._(
          scheme: uri.scheme,
          host: uri.host,
          port: uri.hasPort ? uri.port : null,
          path: uri.path,
          queryParameters: uri.hasQuery ? uri.queryParametersAll : null,
        ) {
    _setContentTypeIfProvided(body);
  }

  /// Creates a "raw", or unprocessed, streaming HTTP request. Since the [Uri]
  /// constructor will normalize paths by default, this constructor provides an
  /// escape hatch for situations when paths are already normalized and further
  /// processing could interfere with downstream activities like signing.
  ///
  /// If you're unsure, it's likely safe to use [AWSStreamedHttpRequest.new] and
  /// [Uri].
  ///
  /// @{macro aws_common.aws_http_streamed_request_desc}
  AWSStreamedHttpRequest.raw({
    required super.method,
    super.scheme,
    required super.host,
    super.port,
    required super.path,
    super.queryParameters,
    super.headers,
    Stream<List<int>>? body,
    int? contentLength,
    super.followRedirects,
    super.maxRedirects,
  })  : _body = body ?? const Stream.empty(),
        _contentLength = contentLength,
        super._() {
    _setContentTypeIfProvided(body);
  }

  /// Creates a `GET` request for [uri].
  AWSStreamedHttpRequest.get(
    Uri uri, {
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.get,
          uri: uri,
          headers: headers,
          contentLength: 0,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `HEAD` request for [uri].
  AWSStreamedHttpRequest.head(
    Uri uri, {
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.head,
          uri: uri,
          headers: headers,
          contentLength: 0,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `POST` request for [uri].
  AWSStreamedHttpRequest.post(
    Uri uri, {
    Stream<List<int>>? body,
    int? contentLength,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.post,
          uri: uri,
          headers: headers,
          body: body,
          contentLength: contentLength,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `PUT` request for [uri].
  AWSStreamedHttpRequest.put(
    Uri uri, {
    Stream<List<int>>? body,
    int? contentLength,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.put,
          uri: uri,
          headers: headers,
          body: body,
          contentLength: contentLength,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `PATCH` request for [uri].
  AWSStreamedHttpRequest.patch(
    Uri uri, {
    Stream<List<int>>? body,
    int? contentLength,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.patch,
          uri: uri,
          headers: headers,
          body: body,
          contentLength: contentLength,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  /// Creates a `DELETE` request for [uri].
  AWSStreamedHttpRequest.delete(
    Uri uri, {
    Stream<List<int>>? body,
    int? contentLength,
    Map<String, String>? headers,
    bool? followRedirects,
    int? maxRedirects,
  }) : this(
          method: AWSHttpMethod.delete,
          uri: uri,
          headers: headers,
          body: body,
          contentLength: contentLength,
          followRedirects: followRedirects,
          maxRedirects: maxRedirects,
        );

  void _setContentTypeIfProvided(Stream<List<int>>? body) {
    if (body is HttpPayload && body.contentType != null) {
      headers[AWSHeaders.contentType] = body.contentType!;
    }
  }

  /// Handles splitting [_body] into multiple single-subscription streams.
  StreamSplitter<List<int>>? _splitter;

  /// The original body, cleared on [close].
  final Stream<List<int>> _body;

  @override
  Stream<List<int>> get body => _splitter == null ? _body : split();

  @override
  Future<Uint8List> get bodyBytes => collectBytes(split());

  /// Reads [body] fully and returns a flattened [AWSHttpRequest].
  ///
  /// `this` will no longer be usable after this completes.
  Future<AWSHttpRequest> read() async {
    try {
      return AWSHttpRequest(
        method: method,
        uri: uri,
        headers: headers,
        body: await bodyBytes,
        followRedirects: followRedirects,
        maxRedirects: maxRedirects,
      );
    } finally {
      unawaited(close());
    }
  }

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
  late final FutureOr<int> contentLength = (_contentLength ??
          split().fold<int>(0, (length, el) => length + el.length))
      as FutureOr<int>;

  @override
  Future<void> close() => _splitter?.close() ?? Future.value();
}
