// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_body_structure_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestBodyStructureInputOutput extends TestBodyStructureInputOutput {
  @override
  final String? testId;
  @override
  final TestConfig? testConfig;

  factory _$TestBodyStructureInputOutput(
          [void Function(TestBodyStructureInputOutputBuilder)? updates]) =>
      (new TestBodyStructureInputOutputBuilder()..update(updates))._build();

  _$TestBodyStructureInputOutput._({this.testId, this.testConfig}) : super._();

  @override
  TestBodyStructureInputOutput rebuild(
          void Function(TestBodyStructureInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestBodyStructureInputOutputBuilder toBuilder() =>
      new TestBodyStructureInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestBodyStructureInputOutput &&
        testId == other.testId &&
        testConfig == other.testConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testId.hashCode);
    _$hash = $jc(_$hash, testConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestBodyStructureInputOutputBuilder
    implements
        Builder<TestBodyStructureInputOutput,
            TestBodyStructureInputOutputBuilder> {
  _$TestBodyStructureInputOutput? _$v;

  String? _testId;
  String? get testId => _$this._testId;
  set testId(String? testId) => _$this._testId = testId;

  TestConfigBuilder? _testConfig;
  TestConfigBuilder get testConfig =>
      _$this._testConfig ??= new TestConfigBuilder();
  set testConfig(TestConfigBuilder? testConfig) =>
      _$this._testConfig = testConfig;

  TestBodyStructureInputOutputBuilder();

  TestBodyStructureInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testId = $v.testId;
      _testConfig = $v.testConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestBodyStructureInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestBodyStructureInputOutput;
  }

  @override
  void update(void Function(TestBodyStructureInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestBodyStructureInputOutput build() => _build();

  _$TestBodyStructureInputOutput _build() {
    _$TestBodyStructureInputOutput _$result;
    try {
      _$result = _$v ??
          new _$TestBodyStructureInputOutput._(
              testId: testId, testConfig: _testConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'testConfig';
        _testConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestBodyStructureInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TestBodyStructureInputOutputPayload
    extends TestBodyStructureInputOutputPayload {
  @override
  final TestConfig? testConfig;

  factory _$TestBodyStructureInputOutputPayload(
          [void Function(TestBodyStructureInputOutputPayloadBuilder)?
              updates]) =>
      (new TestBodyStructureInputOutputPayloadBuilder()..update(updates))
          ._build();

  _$TestBodyStructureInputOutputPayload._({this.testConfig}) : super._();

  @override
  TestBodyStructureInputOutputPayload rebuild(
          void Function(TestBodyStructureInputOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestBodyStructureInputOutputPayloadBuilder toBuilder() =>
      new TestBodyStructureInputOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestBodyStructureInputOutputPayload &&
        testConfig == other.testConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, testConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestBodyStructureInputOutputPayloadBuilder
    implements
        Builder<TestBodyStructureInputOutputPayload,
            TestBodyStructureInputOutputPayloadBuilder> {
  _$TestBodyStructureInputOutputPayload? _$v;

  TestConfigBuilder? _testConfig;
  TestConfigBuilder get testConfig =>
      _$this._testConfig ??= new TestConfigBuilder();
  set testConfig(TestConfigBuilder? testConfig) =>
      _$this._testConfig = testConfig;

  TestBodyStructureInputOutputPayloadBuilder();

  TestBodyStructureInputOutputPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _testConfig = $v.testConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestBodyStructureInputOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestBodyStructureInputOutputPayload;
  }

  @override
  void update(
      void Function(TestBodyStructureInputOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestBodyStructureInputOutputPayload build() => _build();

  _$TestBodyStructureInputOutputPayload _build() {
    _$TestBodyStructureInputOutputPayload _$result;
    try {
      _$result = _$v ??
          new _$TestBodyStructureInputOutputPayload._(
              testConfig: _testConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'testConfig';
        _testConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestBodyStructureInputOutputPayload',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
