// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.get_user_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserResponse extends GetUserResponse {
  @override
  final _i2.BuiltList<_i3.MfaOptionType>? mfaOptions;
  @override
  final String? preferredMfaSetting;
  @override
  final _i2.BuiltList<_i4.AttributeType> userAttributes;
  @override
  final _i2.BuiltList<String>? userMfaSettingList;
  @override
  final String username;

  factory _$GetUserResponse([void Function(GetUserResponseBuilder)? updates]) =>
      (new GetUserResponseBuilder()..update(updates))._build();

  _$GetUserResponse._(
      {this.mfaOptions,
      this.preferredMfaSetting,
      required this.userAttributes,
      this.userMfaSettingList,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userAttributes, 'GetUserResponse', 'userAttributes');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GetUserResponse', 'username');
  }

  @override
  GetUserResponse rebuild(void Function(GetUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserResponseBuilder toBuilder() =>
      new GetUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserResponse &&
        mfaOptions == other.mfaOptions &&
        preferredMfaSetting == other.preferredMfaSetting &&
        userAttributes == other.userAttributes &&
        userMfaSettingList == other.userMfaSettingList &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, mfaOptions.hashCode), preferredMfaSetting.hashCode),
                userAttributes.hashCode),
            userMfaSettingList.hashCode),
        username.hashCode));
  }
}

class GetUserResponseBuilder
    implements Builder<GetUserResponse, GetUserResponseBuilder> {
  _$GetUserResponse? _$v;

  _i2.ListBuilder<_i3.MfaOptionType>? _mfaOptions;
  _i2.ListBuilder<_i3.MfaOptionType> get mfaOptions =>
      _$this._mfaOptions ??= new _i2.ListBuilder<_i3.MfaOptionType>();
  set mfaOptions(_i2.ListBuilder<_i3.MfaOptionType>? mfaOptions) =>
      _$this._mfaOptions = mfaOptions;

  String? _preferredMfaSetting;
  String? get preferredMfaSetting => _$this._preferredMfaSetting;
  set preferredMfaSetting(String? preferredMfaSetting) =>
      _$this._preferredMfaSetting = preferredMfaSetting;

  _i2.ListBuilder<_i4.AttributeType>? _userAttributes;
  _i2.ListBuilder<_i4.AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i2.ListBuilder<_i4.AttributeType>();
  set userAttributes(_i2.ListBuilder<_i4.AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  _i2.ListBuilder<String>? _userMfaSettingList;
  _i2.ListBuilder<String> get userMfaSettingList =>
      _$this._userMfaSettingList ??= new _i2.ListBuilder<String>();
  set userMfaSettingList(_i2.ListBuilder<String>? userMfaSettingList) =>
      _$this._userMfaSettingList = userMfaSettingList;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GetUserResponseBuilder() {
    GetUserResponse._init(this);
  }

  GetUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mfaOptions = $v.mfaOptions?.toBuilder();
      _preferredMfaSetting = $v.preferredMfaSetting;
      _userAttributes = $v.userAttributes.toBuilder();
      _userMfaSettingList = $v.userMfaSettingList?.toBuilder();
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserResponse;
  }

  @override
  void update(void Function(GetUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserResponse build() => _build();

  _$GetUserResponse _build() {
    _$GetUserResponse _$result;
    try {
      _$result = _$v ??
          new _$GetUserResponse._(
              mfaOptions: _mfaOptions?.build(),
              preferredMfaSetting: preferredMfaSetting,
              userAttributes: userAttributes.build(),
              userMfaSettingList: _userMfaSettingList?.build(),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GetUserResponse', 'username'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mfaOptions';
        _mfaOptions?.build();

        _$failedField = 'userAttributes';
        userAttributes.build();
        _$failedField = 'userMfaSettingList';
        _userMfaSettingList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
