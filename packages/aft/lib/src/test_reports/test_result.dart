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

import 'package:aft/src/utils/emphasize_text.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'test_result.g.dart';

/// The result of a single unit/integration test.
class TestResult extends EnumClass {
  const TestResult._(super.name);

  /// The test passed.
  static const TestResult pass = _$pass;

  /// The test was skipped.
  static const TestResult skip = _$skip;

  /// The test failed.
  static const TestResult fail = _$fail;

  static BuiltSet<TestResult> get values => _$TestResultValues;
  static TestResult valueOf(String name) => _$TestResultValueOf(name);

  /// Formatted display string for output in a console.
  String get formattedString {
    switch (this) {
      case TestResult.fail:
        return formatException('FAILED');
      case TestResult.pass:
        return formatSuccess('PASSED');
      case TestResult.skip:
        return formatWarning('SKIPPED');
    }
    throw ArgumentError(this);
  }
}
