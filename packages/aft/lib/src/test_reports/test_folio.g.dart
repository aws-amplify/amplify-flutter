// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_folio.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestFolio extends TestFolio {
  @override
  final TestType testType;
  @override
  final BuiltListMultimap<String, TestReport> testReports;

  factory _$TestFolio([void Function(TestFolioBuilder)? updates]) =>
      (new TestFolioBuilder()..update(updates))._build();

  _$TestFolio._({required this.testType, required this.testReports})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(testType, r'TestFolio', 'testType');
    BuiltValueNullFieldError.checkNotNull(
        testReports, r'TestFolio', 'testReports');
  }

  @override
  TestFolio rebuild(void Function(TestFolioBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestFolioBuilder toBuilder() => new TestFolioBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestFolio &&
        testType == other.testType &&
        testReports == other.testReports;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, testType.hashCode), testReports.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestFolio')
          ..add('testType', testType)
          ..add('testReports', testReports))
        .toString();
  }
}

class TestFolioBuilder implements Builder<TestFolio, TestFolioBuilder> {
  _$TestFolio? _$v;

  TestType? _testType;
  TestType? get testType => _$this._testType;
  set testType(TestType? testType) => _$this._testType = testType;

  ListMultimapBuilder<String, TestReport>? _testReports;
  ListMultimapBuilder<String, TestReport> get testReports =>
      _$this._testReports ??= new ListMultimapBuilder<String, TestReport>();
  set testReports(ListMultimapBuilder<String, TestReport>? testReports) =>
      _$this._testReports = testReports;

  TestFolioBuilder();

  TestFolioBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testType = $v.testType;
      _testReports = $v.testReports.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestFolio other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestFolio;
  }

  @override
  void update(void Function(TestFolioBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestFolio build() => _build();

  _$TestFolio _build() {
    _$TestFolio _$result;
    try {
      _$result = _$v ??
          new _$TestFolio._(
              testType: BuiltValueNullFieldError.checkNotNull(
                  testType, r'TestFolio', 'testType'),
              testReports: testReports.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'testReports';
        testReports.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestFolio', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
