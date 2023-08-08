// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tls_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TlsConfig extends TlsConfig {
  @override
  final bool insecureSkipVerification;

  factory _$TlsConfig([void Function(TlsConfigBuilder)? updates]) =>
      (new TlsConfigBuilder()..update(updates))._build();

  _$TlsConfig._({required this.insecureSkipVerification}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        insecureSkipVerification, r'TlsConfig', 'insecureSkipVerification');
  }

  @override
  TlsConfig rebuild(void Function(TlsConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TlsConfigBuilder toBuilder() => new TlsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TlsConfig &&
        insecureSkipVerification == other.insecureSkipVerification;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, insecureSkipVerification.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TlsConfigBuilder implements Builder<TlsConfig, TlsConfigBuilder> {
  _$TlsConfig? _$v;

  bool? _insecureSkipVerification;
  bool? get insecureSkipVerification => _$this._insecureSkipVerification;
  set insecureSkipVerification(bool? insecureSkipVerification) =>
      _$this._insecureSkipVerification = insecureSkipVerification;

  TlsConfigBuilder() {
    TlsConfig._init(this);
  }

  TlsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _insecureSkipVerification = $v.insecureSkipVerification;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TlsConfig other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TlsConfig;
  }

  @override
  void update(void Function(TlsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TlsConfig build() => _build();

  _$TlsConfig _build() {
    final _$result = _$v ??
        new _$TlsConfig._(
            insecureSkipVerification: BuiltValueNullFieldError.checkNotNull(
                insecureSkipVerification,
                r'TlsConfig',
                'insecureSkipVerification'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
