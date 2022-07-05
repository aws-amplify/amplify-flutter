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
import 'package:aft/src/utils/emphasize_text.dart';

/// Subclass of [TestReport] for tests which do not emit specific quantities
/// of passed, skipped and failed tests.
///
/// This should be used for integration tests on web browsers.
class TestReportPassFail extends TestReport {
  TestReportPassFail(super.package, super.fileName);

  /// Whether all tests passed
  late bool allPassed;

  String get testResultMessage {
    return allPassed
        ? formatSuccess('All tests passed!')
        : formatException('Some tests failed.');
  }
}
