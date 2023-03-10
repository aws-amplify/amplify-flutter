// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_with_namespace_v1.rest_xml_protocol_namespace.model.aws_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AwsConfig extends AwsConfig {
  @override
  final DateTime? clockTime;
  @override
  final _i2.ScopedConfig? scopedConfig;

  factory _$AwsConfig([void Function(AwsConfigBuilder)? updates]) =>
      (new AwsConfigBuilder()..update(updates))._build();

  _$AwsConfig._({this.clockTime, this.scopedConfig}) : super._();

  @override
  AwsConfig rebuild(void Function(AwsConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AwsConfigBuilder toBuilder() => new AwsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AwsConfig &&
        clockTime == other.clockTime &&
        scopedConfig == other.scopedConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, clockTime.hashCode);
    _$hash = $jc(_$hash, scopedConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AwsConfigBuilder implements Builder<AwsConfig, AwsConfigBuilder> {
  _$AwsConfig? _$v;

  DateTime? _clockTime;
  DateTime? get clockTime => _$this._clockTime;
  set clockTime(DateTime? clockTime) => _$this._clockTime = clockTime;

  _i2.ScopedConfigBuilder? _scopedConfig;
  _i2.ScopedConfigBuilder get scopedConfig =>
      _$this._scopedConfig ??= new _i2.ScopedConfigBuilder();
  set scopedConfig(_i2.ScopedConfigBuilder? scopedConfig) =>
      _$this._scopedConfig = scopedConfig;

  AwsConfigBuilder() {
    AwsConfig._init(this);
  }

  AwsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _clockTime = $v.clockTime;
      _scopedConfig = $v.scopedConfig?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwsConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AwsConfig;
  }

  @override
  void update(void Function(AwsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AwsConfig build() => _build();

  _$AwsConfig _build() {
    _$AwsConfig _$result;
    try {
      _$result = _$v ??
          new _$AwsConfig._(
              clockTime: clockTime, scopedConfig: _scopedConfig?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'scopedConfig';
        _scopedConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AwsConfig', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
