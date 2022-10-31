import 'package:aft/src/utils/emphasize_text.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'test_result.g.dart';

class TestResult extends EnumClass {
  const TestResult._(super.name);

  static const TestResult pass = _$pass;
  static const TestResult skip = _$skip;
  static const TestResult fail = _$fail;

  static BuiltSet<TestResult> get values => _$TestResultValues;
  static TestResult valueOf(String name) => _$TestResultValueOf(name);

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
