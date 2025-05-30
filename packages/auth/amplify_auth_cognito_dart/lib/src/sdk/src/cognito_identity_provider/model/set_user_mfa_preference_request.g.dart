// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_user_mfa_preference_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetUserMfaPreferenceRequest extends SetUserMfaPreferenceRequest {
  @override
  final SmsMfaSettingsType? smsMfaSettings;
  @override
  final SoftwareTokenMfaSettingsType? softwareTokenMfaSettings;
  @override
  final EmailMfaSettingsType? emailMfaSettings;
  @override
  final String accessToken;

  factory _$SetUserMfaPreferenceRequest([
    void Function(SetUserMfaPreferenceRequestBuilder)? updates,
  ]) => (SetUserMfaPreferenceRequestBuilder()..update(updates))._build();

  _$SetUserMfaPreferenceRequest._({
    this.smsMfaSettings,
    this.softwareTokenMfaSettings,
    this.emailMfaSettings,
    required this.accessToken,
  }) : super._();
  @override
  SetUserMfaPreferenceRequest rebuild(
    void Function(SetUserMfaPreferenceRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SetUserMfaPreferenceRequestBuilder toBuilder() =>
      SetUserMfaPreferenceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetUserMfaPreferenceRequest &&
        smsMfaSettings == other.smsMfaSettings &&
        softwareTokenMfaSettings == other.softwareTokenMfaSettings &&
        emailMfaSettings == other.emailMfaSettings &&
        accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, smsMfaSettings.hashCode);
    _$hash = $jc(_$hash, softwareTokenMfaSettings.hashCode);
    _$hash = $jc(_$hash, emailMfaSettings.hashCode);
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetUserMfaPreferenceRequestBuilder
    implements
        Builder<
          SetUserMfaPreferenceRequest,
          SetUserMfaPreferenceRequestBuilder
        > {
  _$SetUserMfaPreferenceRequest? _$v;

  SmsMfaSettingsTypeBuilder? _smsMfaSettings;
  SmsMfaSettingsTypeBuilder get smsMfaSettings =>
      _$this._smsMfaSettings ??= SmsMfaSettingsTypeBuilder();
  set smsMfaSettings(SmsMfaSettingsTypeBuilder? smsMfaSettings) =>
      _$this._smsMfaSettings = smsMfaSettings;

  SoftwareTokenMfaSettingsTypeBuilder? _softwareTokenMfaSettings;
  SoftwareTokenMfaSettingsTypeBuilder get softwareTokenMfaSettings =>
      _$this._softwareTokenMfaSettings ??=
          SoftwareTokenMfaSettingsTypeBuilder();
  set softwareTokenMfaSettings(
    SoftwareTokenMfaSettingsTypeBuilder? softwareTokenMfaSettings,
  ) => _$this._softwareTokenMfaSettings = softwareTokenMfaSettings;

  EmailMfaSettingsTypeBuilder? _emailMfaSettings;
  EmailMfaSettingsTypeBuilder get emailMfaSettings =>
      _$this._emailMfaSettings ??= EmailMfaSettingsTypeBuilder();
  set emailMfaSettings(EmailMfaSettingsTypeBuilder? emailMfaSettings) =>
      _$this._emailMfaSettings = emailMfaSettings;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  SetUserMfaPreferenceRequestBuilder();

  SetUserMfaPreferenceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _smsMfaSettings = $v.smsMfaSettings?.toBuilder();
      _softwareTokenMfaSettings = $v.softwareTokenMfaSettings?.toBuilder();
      _emailMfaSettings = $v.emailMfaSettings?.toBuilder();
      _accessToken = $v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetUserMfaPreferenceRequest other) {
    _$v = other as _$SetUserMfaPreferenceRequest;
  }

  @override
  void update(void Function(SetUserMfaPreferenceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetUserMfaPreferenceRequest build() => _build();

  _$SetUserMfaPreferenceRequest _build() {
    _$SetUserMfaPreferenceRequest _$result;
    try {
      _$result =
          _$v ??
          _$SetUserMfaPreferenceRequest._(
            smsMfaSettings: _smsMfaSettings?.build(),
            softwareTokenMfaSettings: _softwareTokenMfaSettings?.build(),
            emailMfaSettings: _emailMfaSettings?.build(),
            accessToken: BuiltValueNullFieldError.checkNotNull(
              accessToken,
              r'SetUserMfaPreferenceRequest',
              'accessToken',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'smsMfaSettings';
        _smsMfaSettings?.build();
        _$failedField = 'softwareTokenMfaSettings';
        _softwareTokenMfaSettings?.build();
        _$failedField = 'emailMfaSettings';
        _emailMfaSettings?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SetUserMfaPreferenceRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
