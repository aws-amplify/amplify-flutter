// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_payload_structure_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestPayloadStructureInputOutput
    extends TestPayloadStructureInputOutput {
  @override
  final String? testId;
  @override
  final PayloadConfig? payloadConfig;

  factory _$TestPayloadStructureInputOutput(
          [void Function(TestPayloadStructureInputOutputBuilder)? updates]) =>
      (new TestPayloadStructureInputOutputBuilder()..update(updates))._build();

  _$TestPayloadStructureInputOutput._({this.testId, this.payloadConfig})
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
        testId == other.testId &&
        payloadConfig == other.payloadConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, payloadConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestPayloadStructureInputOutputBuilder
    implements
        Builder<TestPayloadStructureInputOutput,
            TestPayloadStructureInputOutputBuilder> {
  _$TestPayloadStructureInputOutput? _$v;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  PayloadConfigBuilder? _payloadConfig;
  PayloadConfigBuilder get payloadConfig =>
      _$this._payloadConfig ??= new PayloadConfigBuilder();
  set payloadConfig(PayloadConfigBuilder? payloadConfig) =>
      _$this._payloadConfig = payloadConfig;

  TestPayloadStructureInputOutputBuilder();

  TestPayloadStructureInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testId = $v.testId;
      _payloadConfig = $v.payloadConfig?.toBuilder();
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
              testId: testId, payloadConfig: _payloadConfig?.build());
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
