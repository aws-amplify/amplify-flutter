// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_mfa_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthMfaConfiguration extends AuthMfaConfiguration {
  @override
  final _i2.MfaStatus enforcementLevel;
  @override
  final bool sms;
  @override
  final bool totp;

  factory _$AuthMfaConfiguration(
          [void Function(AuthMfaConfigurationBuilder)? updates]) =>
      (new AuthMfaConfigurationBuilder()..update(updates))._build();

  _$AuthMfaConfiguration._(
      {required this.enforcementLevel, required this.sms, required this.totp})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enforcementLevel, r'AuthMfaConfiguration', 'enforcementLevel');
    BuiltValueNullFieldError.checkNotNull(sms, r'AuthMfaConfiguration', 'sms');
    BuiltValueNullFieldError.checkNotNull(
        totp, r'AuthMfaConfiguration', 'totp');
  }

  @override
  AuthMfaConfiguration rebuild(
          void Function(AuthMfaConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthMfaConfigurationBuilder toBuilder() =>
      new AuthMfaConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthMfaConfiguration &&
        enforcementLevel == other.enforcementLevel &&
        sms == other.sms &&
        totp == other.totp;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enforcementLevel.hashCode);
    _$hash = $jc(_$hash, sms.hashCode);
    _$hash = $jc(_$hash, totp.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthMfaConfigurationBuilder
    implements Builder<AuthMfaConfiguration, AuthMfaConfigurationBuilder> {
  _$AuthMfaConfiguration? _$v;

  _i2.MfaStatus? _enforcementLevel;
  _i2.MfaStatus? get enforcementLevel => _$this._enforcementLevel;
  set enforcementLevel(_i2.MfaStatus? enforcementLevel) =>
      _$this._enforcementLevel = enforcementLevel;

  bool? _sms;
  bool? get sms => _$this._sms;
  set sms(bool? sms) => _$this._sms = sms;

  bool? _totp;
  bool? get totp => _$this._totp;
  set totp(bool? totp) => _$this._totp = totp;

  AuthMfaConfigurationBuilder() {
    AuthMfaConfiguration._init(this);
  }

  AuthMfaConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enforcementLevel = $v.enforcementLevel;
      _sms = $v.sms;
      _totp = $v.totp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthMfaConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthMfaConfiguration;
  }

  @override
  void update(void Function(AuthMfaConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthMfaConfiguration build() => _build();

  _$AuthMfaConfiguration _build() {
    final _$result = _$v ??
        new _$AuthMfaConfiguration._(
            enforcementLevel: BuiltValueNullFieldError.checkNotNull(
                enforcementLevel, r'AuthMfaConfiguration', 'enforcementLevel'),
            sms: BuiltValueNullFieldError.checkNotNull(
                sms, r'AuthMfaConfiguration', 'sms'),
            totp: BuiltValueNullFieldError.checkNotNull(
                totp, r'AuthMfaConfiguration', 'totp'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
