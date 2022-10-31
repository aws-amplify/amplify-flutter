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

import 'package:aft/src/test_reports/test_report.dart';
import 'package:aft/src/test_reports/test_result.dart';
import 'package:aft/src/test_reports/test_score.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'test_folio.g.dart';

enum TestType {
  integVM,
  integWeb,
  unit,
}

/// Encapsulates test information for display in the terminal
abstract class TestFolio implements Built<TestFolio, TestFolioBuilder> {
  factory TestFolio([void Function(TestFolioBuilder) updates]) = _$TestFolio;
  TestFolio._();

  /// Specifies whether the test is a unit test or integration test
  TestType get testType;

  /// The test reports by filename.
  BuiltListMultimap<String, TestReport> get testReports;

  /// Aggregated test scores by filename.
  Map<String, TestScore> get scores {
    return BuiltMap<String, TestScore>.build((b) {
      testReports.forEachKey((filename, reports) {
        final totalScore = TestScoreBuilder();
        for (final report in reports) {
          switch (report.result) {
            case TestResult.fail:
              totalScore.failed = totalScore.failed! + 1;
              break;
            case TestResult.pass:
              totalScore.passed = totalScore.passed! + 1;
              break;
            case TestResult.skip:
              totalScore.skipped = totalScore.skipped! + 1;
              break;
          }
        }
        b[filename] = totalScore.build();
      });
    }).toMap();
  }

  /// The exit code to use given the aggregate results.
  int get exitCode {
    var exitCode = 0;
    testReports.forEach((_, report) {
      if (report.result == TestResult.fail) {
        exitCode = 1;
      }
    });
    return exitCode;
  }
}

extension TestFolioBuilderHelpers on TestFolioBuilder {
  void addReports(Iterable<TestReport> reports) {
    for (final report in reports) {
      testReports.add(report.fileName, report);
    }
  }
}
