// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginProfile extends LoginProfile {
  @override
  final String userName;
  @override
  final DateTime createDate;
  @override
  final bool passwordResetRequired;

  factory _$LoginProfile([void Function(LoginProfileBuilder)? updates]) =>
      (new LoginProfileBuilder()..update(updates))._build();

  _$LoginProfile._(
      {required this.userName,
      required this.createDate,
      required this.passwordResetRequired})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userName, r'LoginProfile', 'userName');
    BuiltValueNullFieldError.checkNotNull(
        createDate, r'LoginProfile', 'createDate');
    BuiltValueNullFieldError.checkNotNull(
        passwordResetRequired, r'LoginProfile', 'passwordResetRequired');
  }

  @override
  LoginProfile rebuild(void Function(LoginProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginProfileBuilder toBuilder() => new LoginProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginProfile &&
        userName == other.userName &&
        createDate == other.createDate &&
        passwordResetRequired == other.passwordResetRequired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, passwordResetRequired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class LoginProfileBuilder
    implements Builder<LoginProfile, LoginProfileBuilder> {
  _$LoginProfile? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  bool? _passwordResetRequired;
  bool? get passwordResetRequired => _$this._passwordResetRequired;
  set passwordResetRequired(bool? passwordResetRequired) =>
      _$this._passwordResetRequired = passwordResetRequired;

  LoginProfileBuilder() {
    LoginProfile._init(this);
  }

  LoginProfileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _createDate = $v.createDate;
      _passwordResetRequired = $v.passwordResetRequired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginProfile other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginProfile;
  }

  @override
  void update(void Function(LoginProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginProfile build() => _build();

  _$LoginProfile _build() {
    final _$result = _$v ??
        new _$LoginProfile._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, r'LoginProfile', 'userName'),
            createDate: BuiltValueNullFieldError.checkNotNull(
                createDate, r'LoginProfile', 'createDate'),
            passwordResetRequired: BuiltValueNullFieldError.checkNotNull(
                passwordResetRequired,
                r'LoginProfile',
                'passwordResetRequired'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
