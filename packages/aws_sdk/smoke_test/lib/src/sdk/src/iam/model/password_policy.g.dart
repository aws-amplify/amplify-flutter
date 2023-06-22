// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordPolicy extends PasswordPolicy {
  @override
  final int? minimumPasswordLength;
  @override
  final bool requireSymbols;
  @override
  final bool requireNumbers;
  @override
  final bool requireUppercaseCharacters;
  @override
  final bool requireLowercaseCharacters;
  @override
  final bool allowUsersToChangePassword;
  @override
  final bool expirePasswords;
  @override
  final int? maxPasswordAge;
  @override
  final int? passwordReusePrevention;
  @override
  final bool? hardExpiry;

  factory _$PasswordPolicy([void Function(PasswordPolicyBuilder)? updates]) =>
      (new PasswordPolicyBuilder()..update(updates))._build();

  _$PasswordPolicy._(
      {this.minimumPasswordLength,
      required this.requireSymbols,
      required this.requireNumbers,
      required this.requireUppercaseCharacters,
      required this.requireLowercaseCharacters,
      required this.allowUsersToChangePassword,
      required this.expirePasswords,
      this.maxPasswordAge,
      this.passwordReusePrevention,
      this.hardExpiry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requireSymbols, r'PasswordPolicy', 'requireSymbols');
    BuiltValueNullFieldError.checkNotNull(
        requireNumbers, r'PasswordPolicy', 'requireNumbers');
    BuiltValueNullFieldError.checkNotNull(requireUppercaseCharacters,
        r'PasswordPolicy', 'requireUppercaseCharacters');
    BuiltValueNullFieldError.checkNotNull(requireLowercaseCharacters,
        r'PasswordPolicy', 'requireLowercaseCharacters');
    BuiltValueNullFieldError.checkNotNull(allowUsersToChangePassword,
        r'PasswordPolicy', 'allowUsersToChangePassword');
    BuiltValueNullFieldError.checkNotNull(
        expirePasswords, r'PasswordPolicy', 'expirePasswords');
  }

  @override
  PasswordPolicy rebuild(void Function(PasswordPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordPolicyBuilder toBuilder() =>
      new PasswordPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordPolicy &&
        minimumPasswordLength == other.minimumPasswordLength &&
        requireSymbols == other.requireSymbols &&
        requireNumbers == other.requireNumbers &&
        requireUppercaseCharacters == other.requireUppercaseCharacters &&
        requireLowercaseCharacters == other.requireLowercaseCharacters &&
        allowUsersToChangePassword == other.allowUsersToChangePassword &&
        expirePasswords == other.expirePasswords &&
        maxPasswordAge == other.maxPasswordAge &&
        passwordReusePrevention == other.passwordReusePrevention &&
        hardExpiry == other.hardExpiry;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minimumPasswordLength.hashCode);
    _$hash = $jc(_$hash, requireSymbols.hashCode);
    _$hash = $jc(_$hash, requireNumbers.hashCode);
    _$hash = $jc(_$hash, requireUppercaseCharacters.hashCode);
    _$hash = $jc(_$hash, requireLowercaseCharacters.hashCode);
    _$hash = $jc(_$hash, allowUsersToChangePassword.hashCode);
    _$hash = $jc(_$hash, expirePasswords.hashCode);
    _$hash = $jc(_$hash, maxPasswordAge.hashCode);
    _$hash = $jc(_$hash, passwordReusePrevention.hashCode);
    _$hash = $jc(_$hash, hardExpiry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PasswordPolicyBuilder
    implements Builder<PasswordPolicy, PasswordPolicyBuilder> {
  _$PasswordPolicy? _$v;

  int? _minimumPasswordLength;
  int? get minimumPasswordLength => _$this._minimumPasswordLength;
  set minimumPasswordLength(int? minimumPasswordLength) =>
      _$this._minimumPasswordLength = minimumPasswordLength;

  bool? _requireSymbols;
  bool? get requireSymbols => _$this._requireSymbols;
  set requireSymbols(bool? requireSymbols) =>
      _$this._requireSymbols = requireSymbols;

  bool? _requireNumbers;
  bool? get requireNumbers => _$this._requireNumbers;
  set requireNumbers(bool? requireNumbers) =>
      _$this._requireNumbers = requireNumbers;

  bool? _requireUppercaseCharacters;
  bool? get requireUppercaseCharacters => _$this._requireUppercaseCharacters;
  set requireUppercaseCharacters(bool? requireUppercaseCharacters) =>
      _$this._requireUppercaseCharacters = requireUppercaseCharacters;

  bool? _requireLowercaseCharacters;
  bool? get requireLowercaseCharacters => _$this._requireLowercaseCharacters;
  set requireLowercaseCharacters(bool? requireLowercaseCharacters) =>
      _$this._requireLowercaseCharacters = requireLowercaseCharacters;

  bool? _allowUsersToChangePassword;
  bool? get allowUsersToChangePassword => _$this._allowUsersToChangePassword;
  set allowUsersToChangePassword(bool? allowUsersToChangePassword) =>
      _$this._allowUsersToChangePassword = allowUsersToChangePassword;

  bool? _expirePasswords;
  bool? get expirePasswords => _$this._expirePasswords;
  set expirePasswords(bool? expirePasswords) =>
      _$this._expirePasswords = expirePasswords;

  int? _maxPasswordAge;
  int? get maxPasswordAge => _$this._maxPasswordAge;
  set maxPasswordAge(int? maxPasswordAge) =>
      _$this._maxPasswordAge = maxPasswordAge;

  int? _passwordReusePrevention;
  int? get passwordReusePrevention => _$this._passwordReusePrevention;
  set passwordReusePrevention(int? passwordReusePrevention) =>
      _$this._passwordReusePrevention = passwordReusePrevention;

  bool? _hardExpiry;
  bool? get hardExpiry => _$this._hardExpiry;
  set hardExpiry(bool? hardExpiry) => _$this._hardExpiry = hardExpiry;

  PasswordPolicyBuilder() {
    PasswordPolicy._init(this);
  }

  PasswordPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minimumPasswordLength = $v.minimumPasswordLength;
      _requireSymbols = $v.requireSymbols;
      _requireNumbers = $v.requireNumbers;
      _requireUppercaseCharacters = $v.requireUppercaseCharacters;
      _requireLowercaseCharacters = $v.requireLowercaseCharacters;
      _allowUsersToChangePassword = $v.allowUsersToChangePassword;
      _expirePasswords = $v.expirePasswords;
      _maxPasswordAge = $v.maxPasswordAge;
      _passwordReusePrevention = $v.passwordReusePrevention;
      _hardExpiry = $v.hardExpiry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordPolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordPolicy;
  }

  @override
  void update(void Function(PasswordPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordPolicy build() => _build();

  _$PasswordPolicy _build() {
    final _$result = _$v ??
        new _$PasswordPolicy._(
            minimumPasswordLength: minimumPasswordLength,
            requireSymbols: BuiltValueNullFieldError.checkNotNull(
                requireSymbols, r'PasswordPolicy', 'requireSymbols'),
            requireNumbers: BuiltValueNullFieldError.checkNotNull(
                requireNumbers, r'PasswordPolicy', 'requireNumbers'),
            requireUppercaseCharacters: BuiltValueNullFieldError.checkNotNull(
                requireUppercaseCharacters, r'PasswordPolicy', 'requireUppercaseCharacters'),
            requireLowercaseCharacters: BuiltValueNullFieldError.checkNotNull(
                requireLowercaseCharacters,
                r'PasswordPolicy',
                'requireLowercaseCharacters'),
            allowUsersToChangePassword: BuiltValueNullFieldError.checkNotNull(
                allowUsersToChangePassword,
                r'PasswordPolicy',
                'allowUsersToChangePassword'),
            expirePasswords: BuiltValueNullFieldError.checkNotNull(
                expirePasswords, r'PasswordPolicy', 'expirePasswords'),
            maxPasswordAge: maxPasswordAge,
            passwordReusePrevention: passwordReusePrevention,
            hardExpiry: hardExpiry);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
