// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

@TestOn('vm')
@Tags(['build'])
library;

import 'package:build_verify/build_verify.dart';
import 'package:test/test.dart';

void main() {
  test(
    'ensure_build',
    () =>
        expectBuildClean(packageRelativeDirectory: 'packages/aws_signature_v4'),
    timeout: const Timeout(Duration(minutes: 3)),
  );
}
