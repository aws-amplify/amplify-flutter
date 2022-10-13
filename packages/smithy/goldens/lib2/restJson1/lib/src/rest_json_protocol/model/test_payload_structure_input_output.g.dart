// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.test_payload_structure_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestPayloadStructureInputOutput
    extends TestPayloadStructureInputOutput {
  @override
  final _i2.PayloadConfig? payloadConfig;
  @override
  final String? testId;

  factory _$TestPayloadStructureInputOutput(
          [void Function(TestPayloadStructureInputOutputBuilder)? updates]) =>
      (new TestPayloadStructureInputOutputBuilder()..update(updates))._build();

  _$TestPayloadStructureInputOutput._({this.payloadConfig, this.testId})
      : super._();

  @override
  TestPayloadStructureInputOutput rebuild(
          void Function(TestPayloadStructureInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestPayloadStructureInputOutputBuilder toBuilder() =>
      new TestPayloadStructureInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestPayloadStructureInputOutput &&
        payloadConfig == other.payloadConfig &&
        testId == other.testId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, payloadConfig.hashCode), testId.hashCode));
  }
}

class TestPayloadStructureInputOutputBuilder
    implements
        Builder<TestPayloadStructureInputOutput,
            TestPayloadStructureInputOutputBuilder> {
  _$TestPayloadStructureInputOutput? _$v;

  _i2.PayloadConfigBuilder? _payloadConfig;
  _i2.PayloadConfigBuilder get payloadConfig =>
      _$this._payloadConfig ??= new _i2.PayloadConfigBuilder();
  set payloadConfig(_i2.PayloadConfigBuilder? payloadConfig) =>
      _$this._payloadConfig = payloadConfig;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestPayloadStructureInputOutputBuilder() {
    TestPayloadStructureInputOutput._init(this);
  }

  TestPayloadStructureInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payloadConfig = $v.payloadConfig?.toBuilder();
      _testId = $v.testId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestPayloadStructureInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestPayloadStructureInputOutput;
  }

  @override
  void update(void Function(TestPayloadStructureInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestPayloadStructureInputOutput build() => _build();

  _$TestPayloadStructureInputOutput _build() {
    _$TestPayloadStructureInputOutput _$result;
    try {
      _$result = _$v ??
          new _$TestPayloadStructureInputOutput._(
              payloadConfig: _payloadConfig?.build(), testId: testId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payloadConfig';
        _payloadConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestPayloadStructureInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
