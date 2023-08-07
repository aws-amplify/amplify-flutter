// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserResponse extends GetUserResponse {
  @override
  final String username;
  @override
  final _i2.BuiltList<AttributeType> userAttributes;
  @override
  final _i2.BuiltList<MfaOptionType>? mfaOptions;
  @override
  final String? preferredMfaSetting;
  @override
  final _i2.BuiltList<String>? userMfaSettingList;

  factory _$GetUserResponse([void Function(GetUserResponseBuilder)? updates]) =>
      (new GetUserResponseBuilder()..update(updates))._build();

  _$GetUserResponse._(
      {required this.username,
      required this.userAttributes,
      this.mfaOptions,
      this.preferredMfaSetting,
      this.userMfaSettingList})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'GetUserResponse', 'username');
    BuiltValueNullFieldError.checkNotNull(
        userAttributes, r'GetUserResponse', 'userAttributes');
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
        username == other.username &&
        userAttributes == other.userAttributes &&
        mfaOptions == other.mfaOptions &&
        preferredMfaSetting == other.preferredMfaSetting &&
        userMfaSettingList == other.userMfaSettingList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, userAttributes.hashCode);
    _$hash = $jc(_$hash, mfaOptions.hashCode);
    _$hash = $jc(_$hash, preferredMfaSetting.hashCode);
    _$hash = $jc(_$hash, userMfaSettingList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUserResponseBuilder
    implements Builder<GetUserResponse, GetUserResponseBuilder> {
  _$GetUserResponse? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  _i2.ListBuilder<AttributeType>? _userAttributes;
  _i2.ListBuilder<AttributeType> get userAttributes =>
      _$this._userAttributes ??= new _i2.ListBuilder<AttributeType>();
  set userAttributes(_i2.ListBuilder<AttributeType>? userAttributes) =>
      _$this._userAttributes = userAttributes;

  _i2.ListBuilder<MfaOptionType>? _mfaOptions;
  _i2.ListBuilder<MfaOptionType> get mfaOptions =>
      _$this._mfaOptions ??= new _i2.ListBuilder<MfaOptionType>();
  set mfaOptions(_i2.ListBuilder<MfaOptionType>? mfaOptions) =>
      _$this._mfaOptions = mfaOptions;

  String? _preferredMfaSetting;
  String? get preferredMfaSetting => _$this._preferredMfaSetting;
  set preferredMfaSetting(String? preferredMfaSetting) =>
      _$this._preferredMfaSetting = preferredMfaSetting;

  _i2.ListBuilder<String>? _userMfaSettingList;
  _i2.ListBuilder<String> get userMfaSettingList =>
      _$this._userMfaSettingList ??= new _i2.ListBuilder<String>();
  set userMfaSettingList(_i2.ListBuilder<String>? userMfaSettingList) =>
      _$this._userMfaSettingList = userMfaSettingList;

  GetUserResponseBuilder();

  GetUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _userAttributes = $v.userAttributes.toBuilder();
      _mfaOptions = $v.mfaOptions?.toBuilder();
      _preferredMfaSetting = $v.preferredMfaSetting;
      _userMfaSettingList = $v.userMfaSettingList?.toBuilder();
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
              username: BuiltValueNullFieldError.checkNotNull(
                  username, r'GetUserResponse', 'username'),
              userAttributes: userAttributes.build(),
              mfaOptions: _mfaOptions?.build(),
              preferredMfaSetting: preferredMfaSetting,
              userMfaSettingList: _userMfaSettingList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userAttributes';
        userAttributes.build();
        _$failedField = 'mfaOptions';
        _mfaOptions?.build();

        _$failedField = 'userMfaSettingList';
        _userMfaSettingList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
