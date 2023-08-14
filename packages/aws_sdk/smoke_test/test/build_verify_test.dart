// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
@Tags(['build'])

import 'package:build_verify/build_verify.dart';
import 'package:test/test.dart';

void main() {
  test(
    'ensure_build',
    () => expectBuildClean(
      packageRelativeDirectory: 'packages/aws_sdk/smoke_test',
    ),
    timeout: const Timeout(Duration(minutes: 10)),
    // TODO(dnys1): Re-enable when we have larger runners
    skip: 'Skipping until we have larger runners',
  );
}
