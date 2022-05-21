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

import 'dart:convert';

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

void main() {
  const body = 'abc';
  final bodyBytes = utf8.encode(body);

  group('AWSHttpResponse', () {
    test('bodyBytes', () {
      final resp = AWSHttpResponse(statusCode: 200);
      final bodyBytes = resp.bodyBytes;
      expect(bodyBytes, isEmpty);
    });

    test('body', () {
      final resp = AWSHttpResponse(statusCode: 200, body: bodyBytes);
      expect(resp.decodeBody(), equals(body));
    });
  });

  group('AWSStreamedHttpResponse', () {
    test('bodyBytes', () async {
      final streamingReq = AWSStreamedHttpResponse(
        statusCode: 200,
        body: const Stream.empty(),
      );
      final bodyBytes = await streamingReq.bodyBytes;
      expect(bodyBytes, isEmpty);
    });

    test('body', () async {
      final resp = AWSStreamedHttpResponse(
        statusCode: 200,
        body: Stream.value(bodyBytes),
      )..split(); // Split the stream so following calls use splitter.
      expect(resp.bodyBytes, completion(orderedEquals(bodyBytes)));
      expect(resp.decodeBody(), completion(body));
    });
  });
}
