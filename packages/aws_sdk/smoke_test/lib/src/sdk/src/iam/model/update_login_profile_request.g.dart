// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_login_profile_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateLoginProfileRequest extends UpdateLoginProfileRequest {
  @override
  final String userName;
  @override
  final String? password;
  @override
  final bool? passwordResetRequired;

  factory _$UpdateLoginProfileRequest(
          [void Function(UpdateLoginProfileRequestBuilder)? updates]) =>
      (new UpdateLoginProfileRequestBuilder()..update(updates))._build();

  _$UpdateLoginProfileRequest._(
      {required this.userName, this.password, this.passwordResetRequired})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'UpdateLoginProfileRequest', 'userName');
  }

  @override
  UpdateLoginProfileRequest rebuild(
          void Function(UpdateLoginProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateLoginProfileRequestBuilder toBuilder() =>
      new UpdateLoginProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateLoginProfileRequest &&
        userName == other.userName &&
        password == other.password &&
        passwordResetRequired == other.passwordResetRequired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, passwordResetRequired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateLoginProfileRequestBuilder
    implements
        Builder<UpdateLoginProfileRequest, UpdateLoginProfileRequestBuilder> {
  _$UpdateLoginProfileRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _passwordResetRequired;
  bool? get passwordResetRequired => _$this._passwordResetRequired;
  set passwordResetRequired(bool? passwordResetRequired) =>
      _$this._passwordResetRequired = passwordResetRequired;

  UpdateLoginProfileRequestBuilder() {
    UpdateLoginProfileRequest._init(this);
  }

  UpdateLoginProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _password = $v.password;
      _passwordResetRequired = $v.passwordResetRequired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateLoginProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateLoginProfileRequest;
  }

  @override
  void update(void Function(UpdateLoginProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateLoginProfileRequest build() => _build();

  _$UpdateLoginProfileRequest _build() {
    final _$result = _$v ??
        new _$UpdateLoginProfileRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'UpdateLoginProfileRequest', 'userName'),
            password: password,
            passwordResetRequired: passwordResetRequired);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
