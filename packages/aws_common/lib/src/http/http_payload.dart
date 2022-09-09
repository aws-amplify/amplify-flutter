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

import 'package:async/async.dart';

/// {@template aws_common.http.http_payload}
/// An HTTP request's payload.
/// {@endtemplate}
class HttpPayload extends StreamView<List<int>> {
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
}
