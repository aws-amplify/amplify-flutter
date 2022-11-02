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
