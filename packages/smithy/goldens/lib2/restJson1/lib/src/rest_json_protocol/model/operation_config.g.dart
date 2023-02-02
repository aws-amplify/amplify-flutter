// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.operation_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationConfig extends OperationConfig {
  @override
  final _i2.S3Config? s3;

  factory _$OperationConfig([void Function(OperationConfigBuilder)? updates]) =>
      (new OperationConfigBuilder()..update(updates))._build();

  _$OperationConfig._({this.s3}) : super._();

  @override
  OperationConfig rebuild(void Function(OperationConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationConfigBuilder toBuilder() =>
      new OperationConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationConfig && s3 == other.s3;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, s3.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class OperationConfigBuilder
    implements Builder<OperationConfig, OperationConfigBuilder> {
  _$OperationConfig? _$v;

  _i2.S3ConfigBuilder? _s3;
  _i2.S3ConfigBuilder get s3 => _$this._s3 ??= new _i2.S3ConfigBuilder();
  set s3(_i2.S3ConfigBuilder? s3) => _$this._s3 = s3;

  OperationConfigBuilder() {
    OperationConfig._init(this);
  }

  OperationConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _s3 = $v.s3?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationConfig;
  }

  @override
  void update(void Function(OperationConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationConfig build() => _build();

  _$OperationConfig _build() {
    _$OperationConfig _$result;
    try {
      _$result = _$v ?? new _$OperationConfig._(s3: _s3?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 's3';
        _s3?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OperationConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
