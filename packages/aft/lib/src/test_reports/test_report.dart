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

import 'package:aft/src/test_reports/test_result.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'test_report.g.dart';

/// Encapsulates test information for display in the terminal
abstract class TestReport implements Built<TestReport, TestReportBuilder> {
  factory TestReport([void Function(TestReportBuilder) updates]) = _$TestReport;
  TestReport._();

  /// The file under test
  String get fileName;

  /// The name of the test.
  String get testName;

  /// Displays messages related to test failures
  BuiltList<String> get failures;

  /// The testId from the test run
  int? get testId;

  /// The test result
  TestResult get result;
}
