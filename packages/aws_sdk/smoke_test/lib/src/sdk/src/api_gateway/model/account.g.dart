// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.account;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Account extends Account {
  @override
  final String? apiKeyVersion;
  @override
  final String? cloudwatchRoleArn;
  @override
  final _i3.BuiltList<String>? features;
  @override
  final _i2.ThrottleSettings? throttleSettings;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates))._build();

  _$Account._(
      {this.apiKeyVersion,
      this.cloudwatchRoleArn,
      this.features,
      this.throttleSettings})
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
        apiKeyVersion == other.apiKeyVersion &&
        cloudwatchRoleArn == other.cloudwatchRoleArn &&
        features == other.features &&
        throttleSettings == other.throttleSettings;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, apiKeyVersion.hashCode), cloudwatchRoleArn.hashCode),
            features.hashCode),
        throttleSettings.hashCode));
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  String? _apiKeyVersion;
  String? get apiKeyVersion => _$this._apiKeyVersion;
  set apiKeyVersion(String? apiKeyVersion) =>
      _$this._apiKeyVersion = apiKeyVersion;

  String? _cloudwatchRoleArn;
  String? get cloudwatchRoleArn => _$this._cloudwatchRoleArn;
  set cloudwatchRoleArn(String? cloudwatchRoleArn) =>
      _$this._cloudwatchRoleArn = cloudwatchRoleArn;

  _i3.ListBuilder<String>? _features;
  _i3.ListBuilder<String> get features =>
      _$this._features ??= new _i3.ListBuilder<String>();
  set features(_i3.ListBuilder<String>? features) =>
      _$this._features = features;

  _i2.ThrottleSettingsBuilder? _throttleSettings;
  _i2.ThrottleSettingsBuilder get throttleSettings =>
      _$this._throttleSettings ??= new _i2.ThrottleSettingsBuilder();
  set throttleSettings(_i2.ThrottleSettingsBuilder? throttleSettings) =>
      _$this._throttleSettings = throttleSettings;

  AccountBuilder() {
    Account._init(this);
  }

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKeyVersion = $v.apiKeyVersion;
      _cloudwatchRoleArn = $v.cloudwatchRoleArn;
      _features = $v.features?.toBuilder();
      _throttleSettings = $v.throttleSettings?.toBuilder();
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
              apiKeyVersion: apiKeyVersion,
              cloudwatchRoleArn: cloudwatchRoleArn,
              features: _features?.build(),
              throttleSettings: _throttleSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'features';
        _features?.build();
        _$failedField = 'throttleSettings';
        _throttleSettings?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
