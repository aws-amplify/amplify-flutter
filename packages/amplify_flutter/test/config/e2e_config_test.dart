//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
//

import 'dart:convert';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:test/test.dart';

import 'testdata/e2e/latest/amplifyconfiguration.dart' as vlatest;
import 'testdata/e2e/v4/amplifyconfiguration.dart' as v4;
import 'testdata/e2e/v5/amplifyconfiguration.dart' as v5;
import 'testdata/e2e/v6/amplifyconfiguration.dart' as v6;
import 'testdata/e2e/v7/amplifyconfiguration.dart' as v7;

class E2ETest {
  const E2ETest(this.version, this.config);

  final String version;
  final String config;
}

const tests = [
  E2ETest('4', v4.amplifyconfig),
  E2ETest('5', v5.amplifyconfig),
  E2ETest('6', v6.amplifyconfig),
  E2ETest('7', v7.amplifyconfig),
  E2ETest('Latest', vlatest.amplifyconfig),
];

void main() {
  group('Config', () {
    for (var e2eTest in tests) {
      test('v${e2eTest.version}', () {
        final json = jsonDecode(e2eTest.config) as Map<String, Object?>;
        final parsed = AmplifyConfig.fromJson(json.cast());
        expect(parsed.toJson(), equals(json));
      });
    }
  });
}
