// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.test_no_payload_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestNoPayloadInputOutput extends TestNoPayloadInputOutput {
  @override
  final String? testId;

  factory _$TestNoPayloadInputOutput(
          [void Function(TestNoPayloadInputOutputBuilder)? updates]) =>
      (new TestNoPayloadInputOutputBuilder()..update(updates))._build();

  _$TestNoPayloadInputOutput._({this.testId}) : super._();

  @override
  TestNoPayloadInputOutput rebuild(
          void Function(TestNoPayloadInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestNoPayloadInputOutputBuilder toBuilder() =>
      new TestNoPayloadInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNoPayloadInputOutput && testId == other.testId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, testId.hashCode));
  }
}

class TestNoPayloadInputOutputBuilder
    implements
        Builder<TestNoPayloadInputOutput, TestNoPayloadInputOutputBuilder> {
  _$TestNoPayloadInputOutput? _$v;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestNoPayloadInputOutputBuilder() {
    TestNoPayloadInputOutput._init(this);
  }

  TestNoPayloadInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testId = $v.testId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestNoPayloadInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestNoPayloadInputOutput;
  }

  @override
  void update(void Function(TestNoPayloadInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestNoPayloadInputOutput build() => _build();

  _$TestNoPayloadInputOutput _build() {
    final _$result = _$v ?? new _$TestNoPayloadInputOutput._(testId: testId);
    replace(_$result);
    return _$result;
  }
}

class _$TestNoPayloadInputOutputPayload
    extends TestNoPayloadInputOutputPayload {
  factory _$TestNoPayloadInputOutputPayload(
          [void Function(TestNoPayloadInputOutputPayloadBuilder)? updates]) =>
      (new TestNoPayloadInputOutputPayloadBuilder()..update(updates))._build();

  _$TestNoPayloadInputOutputPayload._() : super._();

  @override
  TestNoPayloadInputOutputPayload rebuild(
          void Function(TestNoPayloadInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestNoPayloadInputOutputPayloadBuilder toBuilder() =>
      new TestNoPayloadInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestNoPayloadInputOutputPayload;
  }

  @override
  int get hashCode {
    return 22767573;
  }
}

class TestNoPayloadInputOutputPayloadBuilder
    implements
        Builder<TestNoPayloadInputOutputPayload,
            TestNoPayloadInputOutputPayloadBuilder> {
  _$TestNoPayloadInputOutputPayload? _$v;

  TestNoPayloadInputOutputPayloadBuilder() {
    TestNoPayloadInputOutputPayload._init(this);
  }

  @override
  void replace(TestNoPayloadInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestNoPayloadInputOutputPayload;
  }

  @override
  void update(void Function(TestNoPayloadInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestNoPayloadInputOutputPayload build() => _build();

  _$TestNoPayloadInputOutputPayload _build() {
    final _$result = _$v ?? new _$TestNoPayloadInputOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
