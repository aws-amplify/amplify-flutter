// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_mfa_settings_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailMfaSettingsType extends EmailMfaSettingsType {
  @override
  final bool enabled;
  @override
  final bool preferredMfa;

  factory _$EmailMfaSettingsType(
          [void Function(EmailMfaSettingsTypeBuilder)? updates]) =>
      (new EmailMfaSettingsTypeBuilder()..update(updates))._build();

  _$EmailMfaSettingsType._({required this.enabled, required this.preferredMfa})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'EmailMfaSettingsType', 'enabled');
    BuiltValueNullFieldError.checkNotNull(
        preferredMfa, r'EmailMfaSettingsType', 'preferredMfa');
  }

  @override
  EmailMfaSettingsType rebuild(
          void Function(EmailMfaSettingsTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailMfaSettingsTypeBuilder toBuilder() =>
      new EmailMfaSettingsTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailMfaSettingsType &&
        enabled == other.enabled &&
        preferredMfa == other.preferredMfa;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, preferredMfa.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EmailMfaSettingsTypeBuilder
    implements Builder<EmailMfaSettingsType, EmailMfaSettingsTypeBuilder> {
  _$EmailMfaSettingsType? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _preferredMfa;
  bool? get preferredMfa => _$this._preferredMfa;
  set preferredMfa(bool? preferredMfa) => _$this._preferredMfa = preferredMfa;

  EmailMfaSettingsTypeBuilder() {
    EmailMfaSettingsType._init(this);
  }

  EmailMfaSettingsTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _preferredMfa = $v.preferredMfa;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailMfaSettingsType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailMfaSettingsType;
  }

  @override
  void update(void Function(EmailMfaSettingsTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailMfaSettingsType build() => _build();

  _$EmailMfaSettingsType _build() {
    final _$result = _$v ??
        new _$EmailMfaSettingsType._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'EmailMfaSettingsType', 'enabled'),
            preferredMfa: BuiltValueNullFieldError.checkNotNull(
                preferredMfa, r'EmailMfaSettingsType', 'preferredMfa'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
