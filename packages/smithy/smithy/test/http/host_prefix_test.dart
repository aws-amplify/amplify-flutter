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

import 'package:aws_common/src/http/aws_http_response.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

const bucket = 'SomeName';
const accountId = '1234567890';

void main() {
  group('hostPrefix', () {
    test('Test Case 1', () async {
      final op = TestOp1();
      const input = Unit();
      final req = await op.createRequest(
        op.buildRequest(input),
        GenericJsonProtocol(),
        input,
      );
      expect(
        req.uri.host,
        equalsIgnoringCase('data.service.us-west-2.amazonaws.com'),
      );
    });

    test('Test Case 2', () async {
      final op = TestOp2();
      const input = TestOp2Input();
      final req = await op.createRequest(
        op.buildRequest(input),
        GenericJsonProtocol(),
        input,
      );
      expect(
        req.uri.host,
        equalsIgnoringCase(
          'SomeName-1234567890.service.us-west-2.amazonaws.com',
        ),
      );
    });
  });
}

class TestOp1 extends HttpOperation<Unit, Unit, Unit, Unit> {
  @override
  Uri get baseUri => Uri.parse('https://service.us-west-2.amazonaws.com/');

  @override
  HttpRequest buildRequest(Unit input) => HttpRequest((b) {
        b.method = 'GET';
        b.path = '/';
        b.hostPrefix = 'data.';
      });

  @override
  Unit buildOutput(
    Unit payload,
    AWSBaseHttpResponse response,
  ) =>
      payload;

  @override
  List<SmithyError> get errorTypes => const [];

  @override
  Iterable<HttpProtocol<Unit, Unit, Unit, Unit>> get protocols => [
        GenericJsonProtocol(),
      ];

  @override
  int successCode([Unit? output]) => 200;
}

class TestOp2Input with HasLabel {
  const TestOp2Input();

  @override
  String labelFor(String key) {
    switch (key) {
      case 'Bucket':
        return bucket;
      case 'AccountId':
        return accountId;
      default:
        throw MissingLabelException(this, key);
    }
  }
}

class TestOp2 extends HttpOperation<TestOp2Input, TestOp2Input, Unit, Unit> {
  @override
  Uri get baseUri => Uri.parse('https://service.us-west-2.amazonaws.com/');

  @override
  HttpRequest buildRequest(TestOp2Input input) => HttpRequest((b) {
        b.method = 'GET';
        b.path = '/';
        b.hostPrefix = '{Bucket}-{AccountId}.';
      });

  @override
  Unit buildOutput(
    Unit payload,
    AWSBaseHttpResponse response,
  ) =>
      payload;

  @override
  List<SmithyError> get errorTypes => const [];

  @override
  Iterable<HttpProtocol<TestOp2Input, TestOp2Input, Unit, Unit>>
      get protocols => [
            GenericJsonProtocol(),
          ];

  @override
  int successCode([Unit? output]) => 200;
}
