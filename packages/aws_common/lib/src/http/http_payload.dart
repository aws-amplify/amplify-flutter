// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';

/// {@template aws_common.http.http_payload}
/// An HTTP request's payload.
/// {@endtemplate}
final class HttpPayload extends StreamView<List<int>> {
  /// A constructor that wraps [HttpPayload.empty], [HttpPayload.string],
  /// [HttpPayload.bytes], [HttpPayload.streaming], and [HttpPayload.formFields]
  /// based on the body type.
  ///
  /// Use [HttpPayload.json] to automatically encode the body as a JSON string.
  factory HttpPayload([Object? body, String? contentType]) {
    if (body == null) {
      return HttpPayload.empty(contentType: contentType);
    }
    if (body is String) {
      return HttpPayload.string(body, contentType: contentType);
    }
    if (body is List<int>) {
      return HttpPayload.bytes(body, contentType: contentType);
    }
    if (body is Stream<List<int>>) {
      return HttpPayload.streaming(body, contentType: contentType);
    }
    if (body is Map<String, String>) {
      return HttpPayload.formFields(body, contentType: contentType);
    }
    throw ArgumentError('Invalid HTTP payload type: ${body.runtimeType}');
  }

  /// An empty HTTP body.
  const HttpPayload.empty({this.contentType}) : super(const Stream.empty());

  /// A UTF-8 encoded HTTP body.
  HttpPayload.string(
    String body, {
    Encoding encoding = utf8,
    String? contentType,
  })  : contentType = contentType ?? 'text/plain; charset=${encoding.name}',
        super(LazyStream(() => Stream.value(encoding.encode(body))));

  /// A byte buffer HTTP body.
  HttpPayload.bytes(
    List<int> body, {
    this.contentType,
  }) : super(Stream.value(body));

  /// A form-encoded body of `key=value` pairs.
  HttpPayload.formFields(
    Map<String, String> body, {
    Encoding encoding = utf8,
    String? contentType,
  })  : contentType = contentType ??
            'application/x-www-form-urlencoded; charset=${encoding.name}',
        super(
          LazyStream(
            () => Stream.value(
              encoding.encode(_encodeFormValues(body, encoding: encoding)),
            ),
          ),
        );

  /// Encodes body as a JSON string and sets Content-Type to 'application/json'.
  HttpPayload.json(
    Object? body, {
    Encoding encoding = utf8,
    String? contentType,
  })  : contentType =
            contentType ?? 'application/json; charset=${encoding.name}',
        super(
          LazyStream(
            () => Stream.value(encoding.encode(json.encode(body))),
          ),
        );

  /// A streaming HTTP body.
  const HttpPayload.streaming(
    super.body, {
    this.contentType,
  });

  /// A data url HTTP body.
  factory HttpPayload.dataUrl(String dataUrl) {
    if (!dataUrl.startsWith(_dataUrlMatcher)) {
      throw ArgumentError('Invalid data url: $dataUrl');
    }

    final dataUrlParts = dataUrl.split(',');
    final mediaTypeEncoding = dataUrlParts.first.replaceFirst('data:', '');
    final body = dataUrlParts.skip(1).join(',');

    if (mediaTypeEncoding.endsWith(';base64')) {
      return HttpPayload.bytes(
        base64Decode(body),
        contentType: mediaTypeEncoding.replaceFirst(';base64', ''),
      );
    }

    return HttpPayload.bytes(
      // data url encodes body, need to decode before converting it into bytes
      utf8.encode(Uri.decodeComponent(body)),
      contentType: mediaTypeEncoding,
    );
  }

  /// The content type of the body.
  final String? contentType;

  /// Converts a [Map] from parameter names to values to a URL query string.
  ///
  ///     _mapToQuery({"foo": "bar", "baz": "bang"});
  ///     //=> "foo=bar&baz=bang"
  ///
  /// Similar util at https://github.com/dart-lang/http/blob/06649afbb5847dbb0293816ba8348766b116e419/pkgs/http/lib/src/utils.dart#L15
  static String _encodeFormValues(
    Map<String, String> params, {
    required Encoding encoding,
  }) =>
      params.entries
          .map(
            (e) => [
              Uri.encodeQueryComponent(e.key, encoding: encoding),
              Uri.encodeQueryComponent(e.value, encoding: encoding),
            ].join('='),
          )
          .join('&');

  static final _dataUrlMatcher = RegExp(r'^data:.*,');
}
