// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.test_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestConfig extends TestConfig {
  @override
  final int? timeout;

  factory _$TestConfig([void Function(TestConfigBuilder)? updates]) =>
      (new TestConfigBuilder()..update(updates))._build();

  _$TestConfig._({this.timeout}) : super._();

  @override
  TestConfig rebuild(void Function(TestConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestConfigBuilder toBuilder() => new TestConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestConfig && timeout == other.timeout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, timeout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TestConfigBuilder implements Builder<TestConfig, TestConfigBuilder> {
  _$TestConfig? _$v;

  int? _timeout;
  int? get timeout => _$this._timeout;
  set timeout(int? timeout) => _$this._timeout = timeout;

  TestConfigBuilder() {
    TestConfig._init(this);
  }

  TestConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timeout = $v.timeout;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestConfig;
  }

  @override
  void update(void Function(TestConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestConfig build() => _build();

  _$TestConfig _build() {
    final _$result = _$v ?? new _$TestConfig._(timeout: timeout);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
