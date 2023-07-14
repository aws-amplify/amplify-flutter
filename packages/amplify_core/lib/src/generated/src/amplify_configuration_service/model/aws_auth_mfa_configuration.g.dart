// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_mfa_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthMfaConfiguration extends AWSAuthMfaConfiguration {
  @override
  final _i2.MfaConfiguration status;
  @override
  final _i3.BuiltList<_i2.MfaType> enabledTypes;

  factory _$AWSAuthMfaConfiguration(
          [void Function(AWSAuthMfaConfigurationBuilder)? updates]) =>
      (new AWSAuthMfaConfigurationBuilder()..update(updates))._build();

  _$AWSAuthMfaConfiguration._(
      {required this.status, required this.enabledTypes})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        status, r'AWSAuthMfaConfiguration', 'status');
    BuiltValueNullFieldError.checkNotNull(
        enabledTypes, r'AWSAuthMfaConfiguration', 'enabledTypes');
  }

  @override
  AWSAuthMfaConfiguration rebuild(
          void Function(AWSAuthMfaConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthMfaConfigurationBuilder toBuilder() =>
      new AWSAuthMfaConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthMfaConfiguration &&
        status == other.status &&
        enabledTypes == other.enabledTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, enabledTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAuthMfaConfigurationBuilder
    implements
        Builder<AWSAuthMfaConfiguration, AWSAuthMfaConfigurationBuilder> {
  _$AWSAuthMfaConfiguration? _$v;

  _i2.MfaConfiguration? _status;
  _i2.MfaConfiguration? get status => _$this._status;
  set status(_i2.MfaConfiguration? status) => _$this._status = status;

  _i3.ListBuilder<_i2.MfaType>? _enabledTypes;
  _i3.ListBuilder<_i2.MfaType> get enabledTypes =>
      _$this._enabledTypes ??= new _i3.ListBuilder<_i2.MfaType>();
  set enabledTypes(_i3.ListBuilder<_i2.MfaType>? enabledTypes) =>
      _$this._enabledTypes = enabledTypes;

  AWSAuthMfaConfigurationBuilder() {
    AWSAuthMfaConfiguration._init(this);
  }

  AWSAuthMfaConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _enabledTypes = $v.enabledTypes.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthMfaConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthMfaConfiguration;
  }

  @override
  void update(void Function(AWSAuthMfaConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthMfaConfiguration build() => _build();

  _$AWSAuthMfaConfiguration _build() {
    _$AWSAuthMfaConfiguration _$result;
    try {
      _$result = _$v ??
          new _$AWSAuthMfaConfiguration._(
              status: BuiltValueNullFieldError.checkNotNull(
                  status, r'AWSAuthMfaConfiguration', 'status'),
              enabledTypes: enabledTypes.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'enabledTypes';
        enabledTypes.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSAuthMfaConfiguration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
