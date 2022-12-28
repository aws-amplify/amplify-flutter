// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('browser')

import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:aws_common/aws_common.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

import 'c_test_suite/test_data.dart';

Future<void> main() async {
  test('C Test Suite', () async {
    final channel = spawnHybridUri('c_test_suite/c_test_suite.dart');
    final stream = StreamSplitter<dynamic>(channel.stream);

    final numTests = await stream.split().first as int;
    final testCases = stream.split().skip(1).cast<String>().take(numTests);

    await for (final testCaseJson in testCases) {
      final signerTest =
          SignerTest.fromJson((jsonDecode(testCaseJson) as Map).cast());
      safePrint('Running test: ${signerTest.name}');
      await runZoned(
        signerTest.run,
        zoneValues: {
          zSigningTest: true,
        },
      );
    }
  });
}
