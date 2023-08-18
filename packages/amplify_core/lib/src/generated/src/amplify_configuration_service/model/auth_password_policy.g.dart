// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_password_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthPasswordPolicy extends AuthPasswordPolicy {
  @override
  final int? minLength;
  @override
  final bool requiresLowercase;
  @override
  final bool requiresUppercase;
  @override
  final bool requiresNumbers;
  @override
  final bool requiresSymbols;

  factory _$AuthPasswordPolicy(
          [void Function(AuthPasswordPolicyBuilder)? updates]) =>
      (new AuthPasswordPolicyBuilder()..update(updates))._build();

  _$AuthPasswordPolicy._(
      {this.minLength,
      required this.requiresLowercase,
      required this.requiresUppercase,
      required this.requiresNumbers,
      required this.requiresSymbols})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        requiresLowercase, r'AuthPasswordPolicy', 'requiresLowercase');
    BuiltValueNullFieldError.checkNotNull(
        requiresUppercase, r'AuthPasswordPolicy', 'requiresUppercase');
    BuiltValueNullFieldError.checkNotNull(
        requiresNumbers, r'AuthPasswordPolicy', 'requiresNumbers');
    BuiltValueNullFieldError.checkNotNull(
        requiresSymbols, r'AuthPasswordPolicy', 'requiresSymbols');
  }

  @override
  AuthPasswordPolicy rebuild(
          void Function(AuthPasswordPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthPasswordPolicyBuilder toBuilder() =>
      new AuthPasswordPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthPasswordPolicy &&
        minLength == other.minLength &&
        requiresLowercase == other.requiresLowercase &&
        requiresUppercase == other.requiresUppercase &&
        requiresNumbers == other.requiresNumbers &&
        requiresSymbols == other.requiresSymbols;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minLength.hashCode);
    _$hash = $jc(_$hash, requiresLowercase.hashCode);
    _$hash = $jc(_$hash, requiresUppercase.hashCode);
    _$hash = $jc(_$hash, requiresNumbers.hashCode);
    _$hash = $jc(_$hash, requiresSymbols.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AuthPasswordPolicyBuilder
    implements Builder<AuthPasswordPolicy, AuthPasswordPolicyBuilder> {
  _$AuthPasswordPolicy? _$v;

  int? _minLength;
  int? get minLength => _$this._minLength;
  set minLength(int? minLength) => _$this._minLength = minLength;

  bool? _requiresLowercase;
  bool? get requiresLowercase => _$this._requiresLowercase;
  set requiresLowercase(bool? requiresLowercase) =>
      _$this._requiresLowercase = requiresLowercase;

  bool? _requiresUppercase;
  bool? get requiresUppercase => _$this._requiresUppercase;
  set requiresUppercase(bool? requiresUppercase) =>
      _$this._requiresUppercase = requiresUppercase;

  bool? _requiresNumbers;
  bool? get requiresNumbers => _$this._requiresNumbers;
  set requiresNumbers(bool? requiresNumbers) =>
      _$this._requiresNumbers = requiresNumbers;

  bool? _requiresSymbols;
  bool? get requiresSymbols => _$this._requiresSymbols;
  set requiresSymbols(bool? requiresSymbols) =>
      _$this._requiresSymbols = requiresSymbols;

  AuthPasswordPolicyBuilder() {
    AuthPasswordPolicy._init(this);
  }

  AuthPasswordPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minLength = $v.minLength;
      _requiresLowercase = $v.requiresLowercase;
      _requiresUppercase = $v.requiresUppercase;
      _requiresNumbers = $v.requiresNumbers;
      _requiresSymbols = $v.requiresSymbols;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthPasswordPolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthPasswordPolicy;
  }

  @override
  void update(void Function(AuthPasswordPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthPasswordPolicy build() => _build();

  _$AuthPasswordPolicy _build() {
    final _$result = _$v ??
        new _$AuthPasswordPolicy._(
            minLength: minLength,
            requiresLowercase: BuiltValueNullFieldError.checkNotNull(
                requiresLowercase, r'AuthPasswordPolicy', 'requiresLowercase'),
            requiresUppercase: BuiltValueNullFieldError.checkNotNull(
                requiresUppercase, r'AuthPasswordPolicy', 'requiresUppercase'),
            requiresNumbers: BuiltValueNullFieldError.checkNotNull(
                requiresNumbers, r'AuthPasswordPolicy', 'requiresNumbers'),
            requiresSymbols: BuiltValueNullFieldError.checkNotNull(
                requiresSymbols, r'AuthPasswordPolicy', 'requiresSymbols'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
