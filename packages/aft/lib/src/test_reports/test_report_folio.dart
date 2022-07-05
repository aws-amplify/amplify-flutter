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

import 'dart:io';

import 'package:aft/src/models.dart';
import 'package:aft/src/test_reports/test_report_pass_fail.dart';
import 'package:aft/src/test_reports/test_report_scored.dart';
import 'package:aft/src/test_reports/test_score.dart';
import 'package:aft/src/utils/constants.dart';
import 'package:aft/src/utils/emphasize_text.dart';

import 'test_report.dart';

enum TestType {
  integVM,
  integWeb,
  unit,
}

/// Encapsulates test information for display in the terminal
class TestReportFolio {
  TestReportFolio();

  /// Specifies whether the test is a unit test or integration test
  late TestType testType;

  /// The test reports included in the folio
  final List<TestReport> testReports = [];

  /// Packages within the folio with test runs that exited with non-zero code
  final List<PackageInfo> packegesWithExitExceptions = [];

  List<TestReport> reportsByPackage(PackageInfo package) {
    final reports =
        testReports.where((report) => report.package == package).toList();

    if (reports.isEmpty) {
      stderr.writeln(
        formatException(
          'reportsByPackage: No reports found for ${package.name}.',
        ),
      );
    }
    return reports;
  }

  List<PackageInfo> availablePackages() {
    final availablePackages = <PackageInfo>[];
    for (final report in testReports) {
      if (!availablePackages.contains(report.package)) {
        availablePackages.add(report.package);
      }
    }
    if (availablePackages.isEmpty) {
      stderr.writeln(
        formatException(
          'availablePackages: No packages found in TestReportFolio.',
        ),
      );
    }
    return availablePackages;
  }

  List<String> availableFilesByPackage(PackageInfo package) {
    final reports = reportsByPackage(package);
    final fileNames = <String>[];
    for (final report in reports) {
      if (!fileNames.contains(report.fileName)) {
        fileNames.add(report.fileName);
      }
    }
    if (fileNames.isEmpty) {
      stderr.writeln(
        formatException(
          'availableFilesByPackage: No files found for ${package.name}.',
        ),
      );
    }
    return fileNames;
  }

  TestReport reportByFile(PackageInfo package, String fileName) {
    return testReports.firstWhere(
      (report) => report.package == package && report.fileName == fileName,
    );
  }

  /// Returns a test report by test id.
  ///
  /// Will only return a report for Flutter or Dart unit tests.
  TestReport? reportByTestId(PackageInfo package, int testId) {
    TestReport? report;
    try {
      report = testReports.firstWhere(
        (report) => report.package == package && report.testId == testId,
      );
    } on StateError {
      // no-op
    }
    return report;
  }

  /// Returns a readable test result string for the entire folio
  String aggregateResult() {
    String result;
    switch (testType) {
      case TestType.integVM:
      case TestType.unit:
        result = _aggregateScore().prettyTotal;
        break;
      case TestType.integWeb:
        result = _aggregatePassFail()
            ? formatSuccess(testsPassed)
            : formatException(testsFailed);
        break;
    }
    return result;
  }

  /// Returns a readable test result string by package
  String aggregateResultByPackage(PackageInfo package) {
    String result;
    switch (testType) {
      case TestType.integVM:
      case TestType.unit:
        result = _aggregateScoreByPackage(package).prettyTotal;
        break;
      case TestType.integWeb:
        result = _passFailByPackage(package)
            ? formatSuccess(testsPassed)
            : formatException(testsFailed);
        break;
    }
    return result;
  }

  /// Returns the aggregate score for all files across one package.
  ///
  /// Should only be used for folios with test reports
  /// that are [TestReportScored].
  TestScore _aggregateScoreByPackage(PackageInfo package) {
    final totalScore = TestScore();
    for (final report in reportsByPackage(package)) {
      if (report is TestReportScored) {
        totalScore
          ..passed += report.testScore.passed
          ..skipped += report.testScore.skipped
          ..failed += report.testScore.failed;
      }
    }
    return totalScore;
  }

  /// Returns the aggregate score across the test folio.
  ///
  /// Should only be used for folios with test reports
  /// that are [TestReportScored].
  TestScore _aggregateScore() {
    final totalScore = TestScore();
    for (final package in availablePackages()) {
      final packageScore = _aggregateScoreByPackage(package);
      totalScore
        ..passed += packageScore.passed
        ..skipped += packageScore.skipped
        ..failed += packageScore.failed;
    }
    return totalScore;
  }

  /// Returns true if there are no failing tests
  /// for any files within the package.
  ///
  /// Should only be used for folios with test reports
  /// that are [TestReportPassFail], i.e. Web integration tests.
  bool _passFailByPackage(PackageInfo package) {
    var allPassed = true;
    for (final report in reportsByPackage(package)) {
      if (report is TestReportPassFail && !report.allPassed) {
        allPassed = false;
      }
    }
    return allPassed;
  }

  /// Returns true if there are not failing tests across the test folio.
  ///
  /// Should only be used for folios with test reports
  /// that are [TestReportPassFail], i.e. Web integration tests.
  bool _aggregatePassFail() {
    var allPassed = true;
    for (final package in availablePackages()) {
      if (!_passFailByPackage(package)) {
        allPassed = false;
      }
    }
    return allPassed;
  }

  bool packageHasFailures(PackageInfo package) {
    return reportsByPackage(package)
        .where((report) => report.failures.isNotEmpty)
        .isNotEmpty;
  }

  bool packageHasExceptions(PackageInfo package) {
    return reportsByPackage(package)
        .where((report) => report.exceptions.isNotEmpty)
        .isNotEmpty;
  }
}
