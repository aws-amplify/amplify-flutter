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
