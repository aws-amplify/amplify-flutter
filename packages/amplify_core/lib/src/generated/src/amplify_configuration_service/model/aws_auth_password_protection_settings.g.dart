// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aws_auth_password_protection_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AWSAuthPasswordProtectionSettings
    extends AWSAuthPasswordProtectionSettings {
  @override
  final int? passwordPolicyMinLength;
  @override
  final _i3.BuiltList<_i2.PasswordPolicyCharacters>? passwordPolicyCharacters;

  factory _$AWSAuthPasswordProtectionSettings(
          [void Function(AWSAuthPasswordProtectionSettingsBuilder)? updates]) =>
      (new AWSAuthPasswordProtectionSettingsBuilder()..update(updates))
          ._build();

  _$AWSAuthPasswordProtectionSettings._(
      {this.passwordPolicyMinLength, this.passwordPolicyCharacters})
      : super._();

  @override
  AWSAuthPasswordProtectionSettings rebuild(
          void Function(AWSAuthPasswordProtectionSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AWSAuthPasswordProtectionSettingsBuilder toBuilder() =>
      new AWSAuthPasswordProtectionSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AWSAuthPasswordProtectionSettings &&
        passwordPolicyMinLength == other.passwordPolicyMinLength &&
        passwordPolicyCharacters == other.passwordPolicyCharacters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passwordPolicyMinLength.hashCode);
    _$hash = $jc(_$hash, passwordPolicyCharacters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AWSAuthPasswordProtectionSettingsBuilder
    implements
        Builder<AWSAuthPasswordProtectionSettings,
            AWSAuthPasswordProtectionSettingsBuilder> {
  _$AWSAuthPasswordProtectionSettings? _$v;

  int? _passwordPolicyMinLength;
  int? get passwordPolicyMinLength => _$this._passwordPolicyMinLength;
  set passwordPolicyMinLength(int? passwordPolicyMinLength) =>
      _$this._passwordPolicyMinLength = passwordPolicyMinLength;

  _i3.ListBuilder<_i2.PasswordPolicyCharacters>? _passwordPolicyCharacters;
  _i3.ListBuilder<_i2.PasswordPolicyCharacters> get passwordPolicyCharacters =>
      _$this._passwordPolicyCharacters ??=
          new _i3.ListBuilder<_i2.PasswordPolicyCharacters>();
  set passwordPolicyCharacters(
          _i3.ListBuilder<_i2.PasswordPolicyCharacters>?
              passwordPolicyCharacters) =>
      _$this._passwordPolicyCharacters = passwordPolicyCharacters;

  AWSAuthPasswordProtectionSettingsBuilder();

  AWSAuthPasswordProtectionSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passwordPolicyMinLength = $v.passwordPolicyMinLength;
      _passwordPolicyCharacters = $v.passwordPolicyCharacters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AWSAuthPasswordProtectionSettings other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AWSAuthPasswordProtectionSettings;
  }

  @override
  void update(
      void Function(AWSAuthPasswordProtectionSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AWSAuthPasswordProtectionSettings build() => _build();

  _$AWSAuthPasswordProtectionSettings _build() {
    _$AWSAuthPasswordProtectionSettings _$result;
    try {
      _$result = _$v ??
          new _$AWSAuthPasswordProtectionSettings._(
              passwordPolicyMinLength: passwordPolicyMinLength,
              passwordPolicyCharacters: _passwordPolicyCharacters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'passwordPolicyCharacters';
        _passwordPolicyCharacters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AWSAuthPasswordProtectionSettings', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
