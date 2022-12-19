// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
@Tags(['build'])

import 'package:build_verify/build_verify.dart';
import 'package:test/test.dart';

void main() {
  test(
    'Ensure Build',
    () => expectBuildClean(
      packageRelativeDirectory: 'packages/storage/amplify_storage_s3_dart',
    ),
    timeout: const Timeout(Duration(minutes: 5)),
  );
}
