// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:aws_signature_v4/aws_signature_v4.dart';
import 'package:test/scaffolding.dart';

import 'testdata/multiple_chunks_testdata.dart';

// From: https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-streaming.html#example-signature-calculations-streaming

void main() {
  group('S3 Multiple Chunks', () {
    test('PUT Object', () {
      runZoned(
        putObjectTest.run,
        zoneValues: {
          zSigningTest: true,
        },
      );
    });
  });
}
