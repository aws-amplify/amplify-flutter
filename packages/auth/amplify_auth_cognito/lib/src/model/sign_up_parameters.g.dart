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
        username, 'SignUpParameters', 'username');
    BuiltValueNullFieldError.checkNotNull(
        password, 'SignUpParameters', 'password');
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
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUpParameters')
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
                username, 'SignUpParameters', 'username'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'SignUpParameters', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
