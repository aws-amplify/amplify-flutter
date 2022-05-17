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
