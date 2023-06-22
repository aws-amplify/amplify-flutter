// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_login_profile_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateLoginProfileRequest extends CreateLoginProfileRequest {
  @override
  final String userName;
  @override
  final String password;
  @override
  final bool passwordResetRequired;

  factory _$CreateLoginProfileRequest(
          [void Function(CreateLoginProfileRequestBuilder)? updates]) =>
      (new CreateLoginProfileRequestBuilder()..update(updates))._build();

  _$CreateLoginProfileRequest._(
      {required this.userName,
      required this.password,
      required this.passwordResetRequired})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'CreateLoginProfileRequest', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        password, r'CreateLoginProfileRequest', 'password');
    BuiltValueNullFieldError.checkNotNull(passwordResetRequired,
        r'CreateLoginProfileRequest', 'passwordResetRequired');
  }

  @override
  CreateLoginProfileRequest rebuild(
          void Function(CreateLoginProfileRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateLoginProfileRequestBuilder toBuilder() =>
      new CreateLoginProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateLoginProfileRequest &&
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

class CreateLoginProfileRequestBuilder
    implements
        Builder<CreateLoginProfileRequest, CreateLoginProfileRequestBuilder> {
  _$CreateLoginProfileRequest? _$v;

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

  CreateLoginProfileRequestBuilder() {
    CreateLoginProfileRequest._init(this);
  }

  CreateLoginProfileRequestBuilder get _$this {
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
  void replace(CreateLoginProfileRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateLoginProfileRequest;
  }

  @override
  void update(void Function(CreateLoginProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateLoginProfileRequest build() => _build();

  _$CreateLoginProfileRequest _build() {
    final _$result = _$v ??
        new _$CreateLoginProfileRequest._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'CreateLoginProfileRequest', 'userName'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'CreateLoginProfileRequest', 'password'),
            passwordResetRequired: BuiltValueNullFieldError.checkNotNull(
                passwordResetRequired,
                r'CreateLoginProfileRequest',
                'passwordResetRequired'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
