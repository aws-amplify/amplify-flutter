// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')

import 'package:test/test.dart';

import 'c_test_suite/c_test_suite.dart' as c_test_suite;

Future<void> main() async {
  await c_test_suite.main();
}
