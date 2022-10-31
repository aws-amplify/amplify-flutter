// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.tls_config;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TlsConfig extends TlsConfig {
  @override
  final bool? insecureSkipVerification;

  factory _$TlsConfig([void Function(TlsConfigBuilder)? updates]) =>
      (new TlsConfigBuilder()..update(updates))._build();

  _$TlsConfig._({this.insecureSkipVerification}) : super._();

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
    return $jf($jc(0, insecureSkipVerification.hashCode));
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
        new _$TlsConfig._(insecureSkipVerification: insecureSkipVerification);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
