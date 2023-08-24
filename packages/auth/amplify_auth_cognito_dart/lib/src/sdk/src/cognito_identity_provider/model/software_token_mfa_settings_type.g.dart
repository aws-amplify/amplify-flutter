// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'software_token_mfa_settings_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SoftwareTokenMfaSettingsType extends SoftwareTokenMfaSettingsType {
  @override
  final bool enabled;
  @override
  final bool preferredMfa;

  factory _$SoftwareTokenMfaSettingsType(
          [void Function(SoftwareTokenMfaSettingsTypeBuilder)? updates]) =>
      (new SoftwareTokenMfaSettingsTypeBuilder()..update(updates))._build();

  _$SoftwareTokenMfaSettingsType._(
      {required this.enabled, required this.preferredMfa})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'SoftwareTokenMfaSettingsType', 'enabled');
    BuiltValueNullFieldError.checkNotNull(
        preferredMfa, r'SoftwareTokenMfaSettingsType', 'preferredMfa');
  }

  @override
  SoftwareTokenMfaSettingsType rebuild(
          void Function(SoftwareTokenMfaSettingsTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SoftwareTokenMfaSettingsTypeBuilder toBuilder() =>
      new SoftwareTokenMfaSettingsTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SoftwareTokenMfaSettingsType &&
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

class SoftwareTokenMfaSettingsTypeBuilder
    implements
        Builder<SoftwareTokenMfaSettingsType,
            SoftwareTokenMfaSettingsTypeBuilder> {
  _$SoftwareTokenMfaSettingsType? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _preferredMfa;
  bool? get preferredMfa => _$this._preferredMfa;
  set preferredMfa(bool? preferredMfa) => _$this._preferredMfa = preferredMfa;

  SoftwareTokenMfaSettingsTypeBuilder() {
    SoftwareTokenMfaSettingsType._init(this);
  }

  SoftwareTokenMfaSettingsTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _preferredMfa = $v.preferredMfa;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SoftwareTokenMfaSettingsType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SoftwareTokenMfaSettingsType;
  }

  @override
  void update(void Function(SoftwareTokenMfaSettingsTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SoftwareTokenMfaSettingsType build() => _build();

  _$SoftwareTokenMfaSettingsType _build() {
    final _$result = _$v ??
        new _$SoftwareTokenMfaSettingsType._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'SoftwareTokenMfaSettingsType', 'enabled'),
            preferredMfa: BuiltValueNullFieldError.checkNotNull(
                preferredMfa, r'SoftwareTokenMfaSettingsType', 'preferredMfa'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
