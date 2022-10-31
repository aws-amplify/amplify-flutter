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

import 'dart:async';
import 'dart:io';

import 'package:aft/aft.dart';
import 'package:aft/src/test_reports/print_results.dart';
import 'package:aft/src/test_reports/test_folio.dart';

/// Command to run Flutter and Dart unit tests.
class UnitTestCommand extends BaseTestCommand {
  @override
  String get description => 'Runs Flutter and Dart unit tests';

  @override
  String get name => 'unit';

  @override
  Future<void> run() async {
    final packageToTest = await this.packageToTest;

    final folioBuilder = TestFolioBuilder()..testType = TestType.unit;

    final testReports = await executeTest(packageToTest);
    folioBuilder.addReports(testReports);

    final folio = folioBuilder.build();
    printResults(folio, verbose: verbose);
    exitCode = folio.exitCode;
  }
}
