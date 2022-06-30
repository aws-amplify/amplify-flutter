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

import 'package:aft/src/utils/emphasize_text.dart';
import 'package:path/path.dart';

import 'models.dart';
import 'test_score.dart';

/// Encapsulates test information for display in the terminal
class TestReport {
  TestReport(
    this._package,
    this._fileName,
  );

  /// The file under test
  final String _fileName;
  String get fileName {
    return _fileName;
  }

  /// The package under test
  final PackageInfo _package;
  PackageInfo get package {
    return _package;
  }

  /// Displays non-zero exit code messages or other exceptions that are not simply test failures
  List<String> exceptions = [];

  /// Displays messages related to test failures
  List<String> failures = [];

  /// The test score
  TestScore testScore = TestScore();

  /// The testId from the test run
  int? testId;

  // void printResults() {
  //   stdout.writeln(
  //     '$fileName: ${testScore.prettyTotal}',
  //   );

  //   if (testScore.passed + testScore.skipped + testScore.failed == 0) {
  //     stderr.writeln(
  //       formatException(
  //         'It appears that 0 tests were invoked. This could indicate a problem.',
  //       ),
  //     );
  //   }
  // }

  String? get prettyExceptions {
    String? joinedExceptions;
    if (exceptions.isNotEmpty) {
      joinedExceptions = exceptions.join('\n');
    }
    return joinedExceptions;
  }

  String? get prettyFailures {
    String? joinedFailures;
    if (failures.isNotEmpty) {
      joinedFailures = failures.join('\n');
    }
    return joinedFailures;
  }
}
