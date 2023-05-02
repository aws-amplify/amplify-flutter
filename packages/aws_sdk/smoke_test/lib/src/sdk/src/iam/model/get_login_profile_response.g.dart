// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_login_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetLoginProfileResponse extends GetLoginProfileResponse {
  @override
  final _i2.LoginProfile loginProfile;

  factory _$GetLoginProfileResponse(
          [void Function(GetLoginProfileResponseBuilder)? updates]) =>
      (new GetLoginProfileResponseBuilder()..update(updates))._build();

  _$GetLoginProfileResponse._({required this.loginProfile}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loginProfile, r'GetLoginProfileResponse', 'loginProfile');
  }

  @override
  GetLoginProfileResponse rebuild(
          void Function(GetLoginProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetLoginProfileResponseBuilder toBuilder() =>
      new GetLoginProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetLoginProfileResponse &&
        loginProfile == other.loginProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, loginProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetLoginProfileResponseBuilder
    implements
        Builder<GetLoginProfileResponse, GetLoginProfileResponseBuilder> {
  _$GetLoginProfileResponse? _$v;

  _i2.LoginProfileBuilder? _loginProfile;
  _i2.LoginProfileBuilder get loginProfile =>
      _$this._loginProfile ??= new _i2.LoginProfileBuilder();
  set loginProfile(_i2.LoginProfileBuilder? loginProfile) =>
      _$this._loginProfile = loginProfile;

  GetLoginProfileResponseBuilder() {
    GetLoginProfileResponse._init(this);
  }

  GetLoginProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginProfile = $v.loginProfile.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetLoginProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetLoginProfileResponse;
  }

  @override
  void update(void Function(GetLoginProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetLoginProfileResponse build() => _build();

  _$GetLoginProfileResponse _build() {
    _$GetLoginProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$GetLoginProfileResponse._(loginProfile: loginProfile.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginProfile';
        loginProfile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetLoginProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
