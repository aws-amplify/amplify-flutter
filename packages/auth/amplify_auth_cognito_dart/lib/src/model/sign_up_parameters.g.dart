// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.model.sign_up_parameters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpParameters extends SignUpParameters {
  @override
  final String username;
  @override
  final String password;

  factory _$SignUpParameters(
          [void Function(SignUpParametersBuilder)? updates]) =>
      (new SignUpParametersBuilder()..update(updates))._build();

  _$SignUpParameters._({required this.username, required this.password})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, r'SignUpParameters', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, r'SignUpParameters', 'password');
  }

  @override
  SignUpParameters rebuild(void Function(SignUpParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpParametersBuilder toBuilder() =>
      new SignUpParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpParameters &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignUpParameters')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class SignUpParametersBuilder
    implements Builder<SignUpParameters, SignUpParametersBuilder> {
  _$SignUpParameters? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SignUpParametersBuilder();

  SignUpParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpParameters;
  }

  @override
  void update(void Function(SignUpParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpParameters build() => _build();

  _$SignUpParameters _build() {
    final _$result = _$v ??
        new _$SignUpParameters._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, r'SignUpParameters', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, r'SignUpParameters', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
