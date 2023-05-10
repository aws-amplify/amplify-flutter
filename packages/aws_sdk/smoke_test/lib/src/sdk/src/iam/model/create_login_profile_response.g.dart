// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_login_profile_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLoginProfileResponse extends CreateLoginProfileResponse {
  @override
  final _i2.LoginProfile loginProfile;

  factory _$CreateLoginProfileResponse(
          [void Function(CreateLoginProfileResponseBuilder)? updates]) =>
      (new CreateLoginProfileResponseBuilder()..update(updates))._build();

  _$CreateLoginProfileResponse._({required this.loginProfile}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        loginProfile, r'CreateLoginProfileResponse', 'loginProfile');
  }

  @override
  CreateLoginProfileResponse rebuild(
          void Function(CreateLoginProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLoginProfileResponseBuilder toBuilder() =>
      new CreateLoginProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLoginProfileResponse &&
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

class CreateLoginProfileResponseBuilder
    implements
        Builder<CreateLoginProfileResponse, CreateLoginProfileResponseBuilder> {
  _$CreateLoginProfileResponse? _$v;

  _i2.LoginProfileBuilder? _loginProfile;
  _i2.LoginProfileBuilder get loginProfile =>
      _$this._loginProfile ??= new _i2.LoginProfileBuilder();
  set loginProfile(_i2.LoginProfileBuilder? loginProfile) =>
      _$this._loginProfile = loginProfile;

  CreateLoginProfileResponseBuilder() {
    CreateLoginProfileResponse._init(this);
  }

  CreateLoginProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _loginProfile = $v.loginProfile.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateLoginProfileResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLoginProfileResponse;
  }

  @override
  void update(void Function(CreateLoginProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLoginProfileResponse build() => _build();

  _$CreateLoginProfileResponse _build() {
    _$CreateLoginProfileResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateLoginProfileResponse._(
              loginProfile: loginProfile.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loginProfile';
        loginProfile.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateLoginProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
