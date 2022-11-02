// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.api_gateway.model.retry_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetryConfig extends RetryConfig {
  @override
  final int? maxAttempts;
  @override
  final _i2.RetryMode? mode;

  factory _$RetryConfig([void Function(RetryConfigBuilder)? updates]) =>
      (new RetryConfigBuilder()..update(updates))._build();

  _$RetryConfig._({this.maxAttempts, this.mode}) : super._();

  @override
  RetryConfig rebuild(void Function(RetryConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetryConfigBuilder toBuilder() => new RetryConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetryConfig &&
        maxAttempts == other.maxAttempts &&
        mode == other.mode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, maxAttempts.hashCode), mode.hashCode));
  }
}

class RetryConfigBuilder implements Builder<RetryConfig, RetryConfigBuilder> {
  _$RetryConfig? _$v;

  int? _maxAttempts;
  int? get maxAttempts => _$this._maxAttempts;
  set maxAttempts(int? maxAttempts) => _$this._maxAttempts = maxAttempts;

  _i2.RetryMode? _mode;
  _i2.RetryMode? get mode => _$this._mode;
  set mode(_i2.RetryMode? mode) => _$this._mode = mode;

  RetryConfigBuilder() {
    RetryConfig._init(this);
  }

  RetryConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxAttempts = $v.maxAttempts;
      _mode = $v.mode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetryConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RetryConfig;
  }

  @override
  void update(void Function(RetryConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetryConfig build() => _build();

  _$RetryConfig _build() {
    final _$result =
        _$v ?? new _$RetryConfig._(maxAttempts: maxAttempts, mode: mode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
