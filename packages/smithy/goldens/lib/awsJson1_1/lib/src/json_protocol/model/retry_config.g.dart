// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.retry_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RetryConfig extends RetryConfig {
  @override
  final _i2.RetryMode? mode;
  @override
  final int? maxAttempts;

  factory _$RetryConfig([void Function(RetryConfigBuilder)? updates]) =>
      (new RetryConfigBuilder()..update(updates))._build();

  _$RetryConfig._({this.mode, this.maxAttempts}) : super._();

  @override
  RetryConfig rebuild(void Function(RetryConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetryConfigBuilder toBuilder() => new RetryConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetryConfig &&
        mode == other.mode &&
        maxAttempts == other.maxAttempts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mode.hashCode);
    _$hash = $jc(_$hash, maxAttempts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RetryConfigBuilder implements Builder<RetryConfig, RetryConfigBuilder> {
  _$RetryConfig? _$v;

  _i2.RetryMode? _mode;
  _i2.RetryMode? get mode => _$this._mode;
  set mode(_i2.RetryMode? mode) => _$this._mode = mode;

  int? _maxAttempts;
  int? get maxAttempts => _$this._maxAttempts;
  set maxAttempts(int? maxAttempts) => _$this._maxAttempts = maxAttempts;

  RetryConfigBuilder() {
    RetryConfig._init(this);
  }

  RetryConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mode = $v.mode;
      _maxAttempts = $v.maxAttempts;
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
        _$v ?? new _$RetryConfig._(mode: mode, maxAttempts: maxAttempts);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
