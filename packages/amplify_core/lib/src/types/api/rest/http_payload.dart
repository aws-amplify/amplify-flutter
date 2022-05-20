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

/// {@template amplify_common.http_payload}
/// An HTTP request's payload.
/// {@endtemplate}
class HttpPayload extends StreamView<List<int>> {
  /// {@macro amplify_common.http_payload}
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
    throw ArgumentError('Invalid HTTP payload type: ${body.runtimeType}');
  }

  /// An empty HTTP body.
  const HttpPayload.empty() : super(const Stream.empty());

  /// A UTF-8 encoded HTTP body.
  HttpPayload.string(String body, {Encoding encoding = utf8})
      : super(LazyStream(() => Stream.value(encoding.encode(body))));

  /// A byte buffer HTTP body.
  HttpPayload.bytes(List<int> body) : super(Stream.value(body));

  /// A streaming HTTP body.
  const HttpPayload.streaming(Stream<List<int>> body) : super(body);
}
