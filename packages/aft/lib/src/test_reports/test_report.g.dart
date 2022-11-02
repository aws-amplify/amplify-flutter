// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestReport extends TestReport {
  @override
  final String fileName;
  @override
  final String testName;
  @override
  final BuiltList<String> failures;
  @override
  final int? testId;
  @override
  final TestResult result;

  factory _$TestReport([void Function(TestReportBuilder)? updates]) =>
      (new TestReportBuilder()..update(updates))._build();

  _$TestReport._(
      {required this.fileName,
      required this.testName,
      required this.failures,
      this.testId,
      required this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(fileName, r'TestReport', 'fileName');
    BuiltValueNullFieldError.checkNotNull(testName, r'TestReport', 'testName');
    BuiltValueNullFieldError.checkNotNull(failures, r'TestReport', 'failures');
    BuiltValueNullFieldError.checkNotNull(result, r'TestReport', 'result');
  }

  @override
  TestReport rebuild(void Function(TestReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestReportBuilder toBuilder() => new TestReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestReport &&
        fileName == other.fileName &&
        testName == other.testName &&
        failures == other.failures &&
        testId == other.testId &&
        result == other.result;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, fileName.hashCode), testName.hashCode),
                failures.hashCode),
            testId.hashCode),
        result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestReport')
          ..add('fileName', fileName)
          ..add('testName', testName)
          ..add('failures', failures)
          ..add('testId', testId)
          ..add('result', result))
        .toString();
  }
}

class TestReportBuilder implements Builder<TestReport, TestReportBuilder> {
  _$TestReport? _$v;

  String? _fileName;
  String? get fileName => _$this._fileName;
  set fileName(String? fileName) => _$this._fileName = fileName;

  String? _testName;
  String? get testName => _$this._testName;
  set testName(String? testName) => _$this._testName = testName;

  ListBuilder<String>? _failures;
  ListBuilder<String> get failures =>
      _$this._failures ??= new ListBuilder<String>();
  set failures(ListBuilder<String>? failures) => _$this._failures = failures;

  int? _testId;
  int? get testId => _$this._testId;
  set testId(int? testId) => _$this._testId = testId;

  TestResult? _result;
  TestResult? get result => _$this._result;
  set result(TestResult? result) => _$this._result = result;

  TestReportBuilder();

  TestReportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fileName = $v.fileName;
      _testName = $v.testName;
      _failures = $v.failures.toBuilder();
      _testId = $v.testId;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestReport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestReport;
  }

  @override
  void update(void Function(TestReportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestReport build() => _build();

  _$TestReport _build() {
    _$TestReport _$result;
    try {
      _$result = _$v ??
          new _$TestReport._(
              fileName: BuiltValueNullFieldError.checkNotNull(
                  fileName, r'TestReport', 'fileName'),
              testName: BuiltValueNullFieldError.checkNotNull(
                  testName, r'TestReport', 'testName'),
              failures: failures.build(),
              testId: testId,
              result: BuiltValueNullFieldError.checkNotNull(
                  result, r'TestReport', 'result'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'failures';
        failures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
