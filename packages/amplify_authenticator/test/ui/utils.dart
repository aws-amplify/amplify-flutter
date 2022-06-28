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

import 'dart:typed_data';

import 'package:aws_common/aws_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

// Allow a 1.5% difference to account for font smoothing discrepancies between
// macOS and Linux (CI).
const double _kGoldenDiffTolerance = 0.015;

Future<void> expectGoldenMatches(
  dynamic actual,
  String goldenFileKey, {
  String? reason,
  dynamic skip = false, // true or a String
}) {
  final String goldenPath = path.join('goldens', goldenFileKey);
  goldenFileComparator = AuthenticatorGoldenComparator(path.join(
    (goldenFileComparator as LocalFileComparator).basedir.toString(),
    goldenFileKey,
  ));
  return expectLater(
    actual,
    matchesGoldenFile(goldenPath),
    reason: reason,
    skip: skip,
  );
}

class AuthenticatorGoldenComparator extends LocalFileComparator {
  AuthenticatorGoldenComparator(String testFile) : super(Uri.parse(testFile));

  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    final ComparisonResult result = await GoldenFileComparator.compareLists(
      imageBytes,
      await getGoldenBytes(golden),
    );

    if (!result.passed && result.diffPercent > _kGoldenDiffTolerance) {
      final String error = await generateFailureOutput(result, golden, basedir);
      throw FlutterError(error);
    }
    if (!result.passed) {
      safePrint(
        'A tolerable difference of ${result.diffPercent * 100}% was found when '
        'comparing $golden.',
      );
    }
    return result.passed || result.diffPercent <= _kGoldenDiffTolerance;
  }
}

/// Runs a set of tests for a given set of Enum values.
void enumGroup<E extends Enum>(List<E> values, void Function(E) cb) {
  for (final value in values) {
    group(value.name, () => cb(value));
  }
}

/// Runs a 2-dimensional test matrix, using the two Enum lists as the matrix
/// dimensions.
void testMatrix2<D1 extends Enum, D2 extends Enum>(
  List<D1> values1,
  List<D2> values2,
  void Function(D1, D2) cb,
) {
  enumGroup<D1>(values1, (a) {
    enumGroup<D2>(values2, (b) => cb(a, b));
  });
}

/// Runs a 3-dimensional test matrix, using the three Enum lists as the matrix
/// dimensions.
void testMatrix3<D1 extends Enum, D2 extends Enum, D3 extends Enum>(
  List<D1> values1,
  List<D2> values2,
  List<D3> values3,
  void Function(D1, D2, D3) cb,
) {
  enumGroup<D1>(values1, (a) {
    enumGroup<D2>(values2, (b) {
      enumGroup<D3>(values3, (c) => cb(a, b, c));
    });
  });
}
