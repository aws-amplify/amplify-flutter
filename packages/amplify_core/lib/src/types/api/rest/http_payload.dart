/*
 * Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */
import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';

/// {@template amplify_core.http_payload}
/// An HTTP request's payload.
/// {@endtemplate}
class HttpPayload extends StreamView<List<int>> {
  /// {@macro amplify_core.http_payload}
  factory HttpPayload([Object? body]) {
    if (body == null) {
      return const HttpPayload.empty();
    }
    if (body is String) {
      return HttpPayload.string(body);
    }
    if (body is List<int>) {
      return HttpPayload.bytes(body);
    }
    if (body is Stream<List<int>>) {
      return HttpPayload.streaming(body);
    }
    if (body is Map) {
      return HttpPayload.fields(body.cast<String, String>());
    }
    throw ArgumentError('Invalid HTTP payload type: ${body.runtimeType}');
  }

  /// An empty HTTP body.
  const HttpPayload.empty() : super(const Stream.empty());

  /// A UTF-8 encoded HTTP body.
  HttpPayload.string(String body, {Encoding encoding = utf8})
      : super(LazyStream(() => Stream.value(encoding.encode(body))));

  /// A byte buffer HTTP body.
  HttpPayload.bytes(List<int> body) : super(Stream.value(body));

  /// Form-encodes the body.
  HttpPayload.fields(Map<String, String> body, {Encoding encoding = utf8})
      : super(LazyStream(() => Stream.value(
            encoding.encode(_mapToQuery(body, encoding: encoding)))));

  /// A streaming HTTP body.
  const HttpPayload.streaming(Stream<List<int>> body) : super(body);
}

/// Converts a [Map] from parameter names to values to a URL query string.
///
///     mapToQuery({"foo": "bar", "baz": "bang"});
///     //=> "foo=bar&baz=bang"
///
/// Copied from similar util. https://github.com/dart-lang/http/blob/06649afbb5847dbb0293816ba8348766b116e419/pkgs/http/lib/src/utils.dart#L15
String _mapToQuery(Map<String, String> map, {Encoding? encoding}) {
  var pairs = <List<String>>[];
  map.forEach((key, value) => pairs.add([
        Uri.encodeQueryComponent(key, encoding: encoding ?? utf8),
        Uri.encodeQueryComponent(value, encoding: encoding ?? utf8)
      ]));
  return pairs.map((pair) => '${pair[0]}=${pair[1]}').join('&');
}
