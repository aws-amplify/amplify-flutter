// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Account extends Account {
  @override
  final String? cloudwatchRoleArn;
  @override
  final _i2.ThrottleSettings? throttleSettings;
  @override
  final _i3.BuiltList<String>? features;
  @override
  final String? apiKeyVersion;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates))._build();

  _$Account._(
      {this.cloudwatchRoleArn,
      this.throttleSettings,
      this.features,
      this.apiKeyVersion})
      : super._();

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        cloudwatchRoleArn == other.cloudwatchRoleArn &&
        throttleSettings == other.throttleSettings &&
        features == other.features &&
        apiKeyVersion == other.apiKeyVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cloudwatchRoleArn.hashCode);
    _$hash = $jc(_$hash, throttleSettings.hashCode);
    _$hash = $jc(_$hash, features.hashCode);
    _$hash = $jc(_$hash, apiKeyVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  String? _cloudwatchRoleArn;
  String? get cloudwatchRoleArn => _$this._cloudwatchRoleArn;
  set cloudwatchRoleArn(String? cloudwatchRoleArn) =>
      _$this._cloudwatchRoleArn = cloudwatchRoleArn;

  _i2.ThrottleSettingsBuilder? _throttleSettings;
  _i2.ThrottleSettingsBuilder get throttleSettings =>
      _$this._throttleSettings ??= new _i2.ThrottleSettingsBuilder();
  set throttleSettings(_i2.ThrottleSettingsBuilder? throttleSettings) =>
      _$this._throttleSettings = throttleSettings;

  _i3.ListBuilder<String>? _features;
  _i3.ListBuilder<String> get features =>
      _$this._features ??= new _i3.ListBuilder<String>();
  set features(_i3.ListBuilder<String>? features) =>
      _$this._features = features;

  String? _apiKeyVersion;
  String? get apiKeyVersion => _$this._apiKeyVersion;
  set apiKeyVersion(String? apiKeyVersion) =>
      _$this._apiKeyVersion = apiKeyVersion;

  AccountBuilder();

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cloudwatchRoleArn = $v.cloudwatchRoleArn;
      _throttleSettings = $v.throttleSettings?.toBuilder();
      _features = $v.features?.toBuilder();
      _apiKeyVersion = $v.apiKeyVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Account build() => _build();

  _$Account _build() {
    _$Account _$result;
    try {
      _$result = _$v ??
          new _$Account._(
              cloudwatchRoleArn: cloudwatchRoleArn,
              throttleSettings: _throttleSettings?.build(),
              features: _features?.build(),
              apiKeyVersion: apiKeyVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'throttleSettings';
        _throttleSettings?.build();
        _$failedField = 'features';
        _features?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Account', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
