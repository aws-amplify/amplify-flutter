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
import 'package:aft/src/test_score.dart';
import 'package:aft/src/utils/emphasize_text.dart';

import 'test_report.dart';

enum TestType {
  integ,
  unit,
}

/// Encapsulates test information for display in the terminal
class TestReportFolio {
  TestReportFolio(
    this._testType,
  );

  /// Specifies whether the test is a unit test or integration test
  final TestType _testType;
  TestType get testType {
    return _testType;
  }

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

  TestScore aggregateScoreByPackage(PackageInfo package) {
    final totalScore = TestScore();
    for (final report in reportsByPackage(package)) {
      totalScore
        ..passed += report.testScore.passed
        ..skipped += report.testScore.skipped
        ..failed += report.testScore.failed;
    }
    return totalScore;
  }

  TestScore aggregateScore() {
    final totalScore = TestScore();
    for (final package in availablePackages()) {
      final packageScore = aggregateScoreByPackage(package);
      totalScore
        ..passed += packageScore.passed
        ..skipped += packageScore.skipped
        ..failed += packageScore.failed;
    }
    return totalScore;
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
