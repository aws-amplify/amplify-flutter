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

import 'package:stream_channel/stream_channel.dart';
import 'package:test/test.dart';

import 'test_data_loader.dart';

Future<void> hybridMain(StreamChannel<dynamic> channel) async {
  final testCases = await loadAllTests();

  channel.sink.add(testCases.length);

  for (final testCase in testCases) {
    final json = await testCase.toJson();
    channel.sink.add(jsonEncode(json));
  }

  unawaited(channel.sink.close());
}

/// Runs all tests in the C signer test suite.
Future<void> main() async {
  final testCases = await loadAllTests();

  group('C Test Suite', () {
    for (final testCase in testCases) {
      test(testCase.name, testCase.run);
    }
  });
}
