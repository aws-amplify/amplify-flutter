// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import 'package:amplify_api/src/util.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('addContentTypeToHeaders', () {
    test('adds Content-Type header from payload', () {
      final resultHeaders = addContentTypeToHeaders(
          null, HttpPayload.json({'name': 'now the lawn'}));
      expect(resultHeaders?['Content-Type'], 'application/json; charset=utf-8');
    });

    test('no-op when payload null', () {
      final inputHeaders = {'foo': 'bar'};
      final resultHeaders = addContentTypeToHeaders(inputHeaders, null);
      expect(resultHeaders, inputHeaders);
    });

    test('does not change input headers', () {
      final inputHeaders = {'foo': 'bar'};
      final resultHeaders = addContentTypeToHeaders(
          inputHeaders, HttpPayload.json({'name': 'now the lawn'}));
      expect(resultHeaders?['Content-Type'], 'application/json; charset=utf-8');
      expect(inputHeaders['Content-Type'], isNull);
    });
  });
}
