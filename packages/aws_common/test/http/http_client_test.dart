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
