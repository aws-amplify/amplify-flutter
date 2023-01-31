// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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
