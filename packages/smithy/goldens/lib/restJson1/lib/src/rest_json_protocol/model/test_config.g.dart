// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.test_config;

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
    return $jf($jc(0, timeout.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
