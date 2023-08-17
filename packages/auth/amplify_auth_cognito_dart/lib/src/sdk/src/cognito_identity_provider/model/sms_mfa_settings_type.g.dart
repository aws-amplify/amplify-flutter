// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_mfa_settings_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmsMfaSettingsType extends SmsMfaSettingsType {
  @override
  final bool enabled;
  @override
  final bool preferredMfa;

  factory _$SmsMfaSettingsType(
          [void Function(SmsMfaSettingsTypeBuilder)? updates]) =>
      (new SmsMfaSettingsTypeBuilder()..update(updates))._build();

  _$SmsMfaSettingsType._({required this.enabled, required this.preferredMfa})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        enabled, r'SmsMfaSettingsType', 'enabled');
    BuiltValueNullFieldError.checkNotNull(
        preferredMfa, r'SmsMfaSettingsType', 'preferredMfa');
  }

  @override
  SmsMfaSettingsType rebuild(
          void Function(SmsMfaSettingsTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SmsMfaSettingsTypeBuilder toBuilder() =>
      new SmsMfaSettingsTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmsMfaSettingsType &&
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

class SmsMfaSettingsTypeBuilder
    implements Builder<SmsMfaSettingsType, SmsMfaSettingsTypeBuilder> {
  _$SmsMfaSettingsType? _$v;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _preferredMfa;
  bool? get preferredMfa => _$this._preferredMfa;
  set preferredMfa(bool? preferredMfa) => _$this._preferredMfa = preferredMfa;

  SmsMfaSettingsTypeBuilder() {
    SmsMfaSettingsType._init(this);
  }

  SmsMfaSettingsTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _enabled = $v.enabled;
      _preferredMfa = $v.preferredMfa;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SmsMfaSettingsType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SmsMfaSettingsType;
  }

  @override
  void update(void Function(SmsMfaSettingsTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmsMfaSettingsType build() => _build();

  _$SmsMfaSettingsType _build() {
    final _$result = _$v ??
        new _$SmsMfaSettingsType._(
            enabled: BuiltValueNullFieldError.checkNotNull(
                enabled, r'SmsMfaSettingsType', 'enabled'),
            preferredMfa: BuiltValueNullFieldError.checkNotNull(
                preferredMfa, r'SmsMfaSettingsType', 'preferredMfa'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
