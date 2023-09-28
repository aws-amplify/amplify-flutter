// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:actions/src/node/process_manager.dart';
import 'package:test/test.dart';

import '../bin/deputy_scan.dart';

void main() {
  test('Extracts PR number from gh output', () {
    const output = '''
Creating draft pull request for test/test into main in aws-amplify/amplify-flutter

remote: 
remote: 
To https://github.com/aws-amplify/amplify-flutter.git
 * [new branch]            HEAD -> test/test
branch 'test/test' set up to track 'upstream/test/test'.
https://github.com/aws-amplify/amplify-flutter/pull/3871
''';
    final result = ProcessResult(0, 0, output, '');
    expect(result.prNumber, 3871);
  });
}
