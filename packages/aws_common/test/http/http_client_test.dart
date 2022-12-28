// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'package:aws_common/aws_common.dart';
import 'package:test/test.dart';

class OverrideTransformRequestClient extends AWSBaseHttpClient {
  @override
  Future<AWSBaseHttpRequest> transformRequest(
    AWSBaseHttpRequest request,
  ) async {
    return request;
  }
}

void main() {
  group('AWSBaseHttpClient', () {
    test('can leave baseClient unspecified', () async {
      final client = OverrideTransformRequestClient()
        ..supportedProtocols = SupportedProtocols.http1;
      final request = AWSHttpRequest.get(
        Uri.parse('https://amazon.com/ping'),
      );
      expect(request.send(client: client).response, completes);
    });
  });
}
