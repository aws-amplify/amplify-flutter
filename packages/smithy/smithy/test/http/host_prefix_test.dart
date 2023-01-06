// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
      final req = await op
          .createRequest(
            op.buildRequest(input),
            GenericJsonProtocol(),
            input,
          )
          .transformRequest();
      expect(
        req.uri.host,
        equalsIgnoringCase('data.service.us-west-2.amazonaws.com'),
      );
    });

    test('Test Case 2', () async {
      final op = TestOp2();
      const input = TestOp2Input();
      final req = await op
          .createRequest(
            op.buildRequest(input),
            GenericJsonProtocol(),
            input,
          )
          .transformRequest();
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

  @override
  String get runtimeTypeName => 'TestOp1';
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

  @override
  String get runtimeTypeName => 'TestOp2';
}
