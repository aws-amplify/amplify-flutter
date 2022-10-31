// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_score.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestScore extends TestScore {
  @override
  final int passed;
  @override
  final int failed;
  @override
  final int skipped;

  factory _$TestScore([void Function(TestScoreBuilder)? updates]) =>
      (new TestScoreBuilder()..update(updates))._build();

  _$TestScore._(
      {required this.passed, required this.failed, required this.skipped})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(passed, r'TestScore', 'passed');
    BuiltValueNullFieldError.checkNotNull(failed, r'TestScore', 'failed');
    BuiltValueNullFieldError.checkNotNull(skipped, r'TestScore', 'skipped');
  }

  @override
  TestScore rebuild(void Function(TestScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestScoreBuilder toBuilder() => new TestScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestScore &&
        passed == other.passed &&
        failed == other.failed &&
        skipped == other.skipped;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, passed.hashCode), failed.hashCode), skipped.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestScore')
          ..add('passed', passed)
          ..add('failed', failed)
          ..add('skipped', skipped))
        .toString();
  }
}

class TestScoreBuilder implements Builder<TestScore, TestScoreBuilder> {
  _$TestScore? _$v;

  int? _passed;
  int? get passed => _$this._passed;
  set passed(int? passed) => _$this._passed = passed;

  int? _failed;
  int? get failed => _$this._failed;
  set failed(int? failed) => _$this._failed = failed;

  int? _skipped;
  int? get skipped => _$this._skipped;
  set skipped(int? skipped) => _$this._skipped = skipped;

  TestScoreBuilder() {
    TestScore._init(this);
  }

  TestScoreBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passed = $v.passed;
      _failed = $v.failed;
      _skipped = $v.skipped;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestScore other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestScore;
  }

  @override
  void update(void Function(TestScoreBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestScore build() => _build();

  _$TestScore _build() {
    final _$result = _$v ??
        new _$TestScore._(
            passed: BuiltValueNullFieldError.checkNotNull(
                passed, r'TestScore', 'passed'),
            failed: BuiltValueNullFieldError.checkNotNull(
                failed, r'TestScore', 'failed'),
            skipped: BuiltValueNullFieldError.checkNotNull(
                skipped, r'TestScore', 'skipped'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
