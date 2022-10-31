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

import 'package:aft/src/test_reports/test_folio.dart';
import 'package:aft/src/test_reports/test_report.dart';

void printResult(
  TestReport report, {
  required bool verbose,
}) {
  stdout.writeln(
    '  ${report.fileName} ${report.testName}: ${report.result.formattedString}',
  );
  for (final exception in report.failures) {
    stderr.writeln(exception);
  }
}

void printResults(TestFolio folio, {required bool verbose}) {
  stdout.writeln('\nTest Results:');
  folio.scores.forEach((filename, scores) {
    stdout.writeln('  $filename: ${scores.prettyTotal}');
  });
}
