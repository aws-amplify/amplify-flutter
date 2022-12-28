// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

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

/// Runs a 1-dimensional test matrix, using the Enum values as the only
/// dimension.
void testMatrix1<E extends Enum>(List<E> values, void Function(E) cb) {
  for (final value in values) {
    group(value.name, () => cb(value));
  }
}

/// Runs a 2-dimensional test matrix, using the two Enum values as the matrix
/// dimensions.
void testMatrix2<D1 extends Enum, D2 extends Enum>(
  List<D1> values1,
  List<D2> values2,
  void Function(D1, D2) cb,
) {
  testMatrix1<D1>(values1, (a) {
    testMatrix1<D2>(
      values2,
      (b) => cb(a, b),
    );
  });
}

/// Runs a 3-dimensional test matrix, using the three Enum values as the matrix
/// dimensions.
void testMatrix3<D1 extends Enum, D2 extends Enum, D3 extends Enum>(
  List<D1> values1,
  List<D2> values2,
  List<D3> values3,
  void Function(D1, D2, D3) cb,
) {
  testMatrix1<D1>(values1, (a) {
    testMatrix2<D2, D3>(
      values2,
      values3,
      (b, c) => cb(a, b, c),
    );
  });
}

/// Runs a 4-dimensional test matrix, using the three Enum values as the matrix
/// dimensions.
void testMatrix4<D1 extends Enum, D2 extends Enum, D3 extends Enum,
    D4 extends Enum>(
  List<D1> values1,
  List<D2> values2,
  List<D3> values3,
  List<D4> values4,
  void Function(D1, D2, D3, D4) cb,
) {
  testMatrix1<D1>(values1, (a) {
    testMatrix3<D2, D3, D4>(
      values2,
      values3,
      values4,
      (b, c, d) => cb(a, b, c, d),
    );
  });
}

/// Runs a 5-dimensional test matrix, using the three Enum values as the matrix
/// dimensions.
void testMatrix5<D1 extends Enum, D2 extends Enum, D3 extends Enum,
    D4 extends Enum, D5 extends Enum>(
  List<D1> values1,
  List<D2> values2,
  List<D3> values3,
  List<D4> values4,
  List<D5> values5,
  void Function(D1, D2, D3, D4, D5) cb,
) {
  testMatrix1<D1>(values1, (a) {
    testMatrix4<D2, D3, D4, D5>(
      values2,
      values3,
      values4,
      values5,
      (b, c, d, e) => cb(a, b, c, d, e),
    );
  });
}
