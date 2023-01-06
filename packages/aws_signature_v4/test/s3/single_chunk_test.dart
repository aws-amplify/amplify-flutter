// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/test.dart';

import 'testdata/single_chunk_testdata.dart';

// From: https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-header-based-auth.html

void main() {
  group('S3', () {
    group('Single Chunk', () {
      for (final signerTest in testCases) {
        test(signerTest.name, () {
          runZoned(
            signerTest.run,
            zoneValues: {
              zSigningTest: true,
            },
          );
        });
      }
    });
  });
}
