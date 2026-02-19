// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

/// A helper class for taking screenshots during integration tests.
///
/// Screenshots are saved to a directory on disk so they can be collected
/// as CI artifacts after the test run.
class ScreenshotHelper {
  ScreenshotHelper({required this.binding, required this.testName});

  final IntegrationTestWidgetsFlutterBinding binding;
  final String testName;
  int _stepIndex = 0;

  /// The directory where screenshots are written.
  static final Directory screenshotDir = () {
    // Use a well-known path that the CI workflow can pick up.
    final dir = Directory('/tmp/screenshots');
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }
    return dir;
  }();

  /// Takes a screenshot of the current app state and saves it to disk.
  ///
  /// [stepName] is a human-readable label used in the file name.
  Future<void> takeScreenshot(String stepName) async {
    _stepIndex++;
    final sanitizedTestName =
        testName.replaceAll(RegExp(r'[^a-zA-Z0-9_-]'), '_');
    final sanitizedStepName =
        stepName.replaceAll(RegExp(r'[^a-zA-Z0-9_-]'), '_');
    final fileName =
        '${sanitizedTestName}_${_stepIndex.toString().padLeft(2, '0')}_$sanitizedStepName.png';

    try {
      // convertFlutterSurfaceToImage is required on iOS/native platforms
      // before takeScreenshot can capture the rendered content.
      await binding.convertFlutterSurfaceToImage();

      final List<int> bytes = await binding.takeScreenshot(fileName);
      final file = File('${screenshotDir.path}/$fileName');
      await file.writeAsBytes(bytes);
      // ignore: avoid_print
      print('📸 Screenshot saved: ${file.path}');
    } on Exception catch (e) {
      // Don't let screenshot failures break the test.
      // ignore: avoid_print
      print('⚠️ Screenshot failed for step "$stepName": $e');
    }
  }
}
