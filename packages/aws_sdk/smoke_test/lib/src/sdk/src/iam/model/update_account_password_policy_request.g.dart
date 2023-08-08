// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_account_password_policy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAccountPasswordPolicyRequest
    extends UpdateAccountPasswordPolicyRequest {
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
  final int? maxPasswordAge;
  @override
  final int? passwordReusePrevention;
  @override
  final bool? hardExpiry;

  factory _$UpdateAccountPasswordPolicyRequest(
          [void Function(UpdateAccountPasswordPolicyRequestBuilder)?
              updates]) =>
      (new UpdateAccountPasswordPolicyRequestBuilder()..update(updates))
          ._build();

  _$UpdateAccountPasswordPolicyRequest._(
      {this.minimumPasswordLength,
      required this.requireSymbols,
      required this.requireNumbers,
      required this.requireUppercaseCharacters,
      required this.requireLowercaseCharacters,
      required this.allowUsersToChangePassword,
      this.maxPasswordAge,
      this.passwordReusePrevention,
      this.hardExpiry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(requireSymbols,
        r'UpdateAccountPasswordPolicyRequest', 'requireSymbols');
    BuiltValueNullFieldError.checkNotNull(requireNumbers,
        r'UpdateAccountPasswordPolicyRequest', 'requireNumbers');
    BuiltValueNullFieldError.checkNotNull(requireUppercaseCharacters,
        r'UpdateAccountPasswordPolicyRequest', 'requireUppercaseCharacters');
    BuiltValueNullFieldError.checkNotNull(requireLowercaseCharacters,
        r'UpdateAccountPasswordPolicyRequest', 'requireLowercaseCharacters');
    BuiltValueNullFieldError.checkNotNull(allowUsersToChangePassword,
        r'UpdateAccountPasswordPolicyRequest', 'allowUsersToChangePassword');
  }

  @override
  UpdateAccountPasswordPolicyRequest rebuild(
          void Function(UpdateAccountPasswordPolicyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateAccountPasswordPolicyRequestBuilder toBuilder() =>
      new UpdateAccountPasswordPolicyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAccountPasswordPolicyRequest &&
        minimumPasswordLength == other.minimumPasswordLength &&
        requireSymbols == other.requireSymbols &&
        requireNumbers == other.requireNumbers &&
        requireUppercaseCharacters == other.requireUppercaseCharacters &&
        requireLowercaseCharacters == other.requireLowercaseCharacters &&
        allowUsersToChangePassword == other.allowUsersToChangePassword &&
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
    _$hash = $jc(_$hash, maxPasswordAge.hashCode);
    _$hash = $jc(_$hash, passwordReusePrevention.hashCode);
    _$hash = $jc(_$hash, hardExpiry.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateAccountPasswordPolicyRequestBuilder
    implements
        Builder<UpdateAccountPasswordPolicyRequest,
            UpdateAccountPasswordPolicyRequestBuilder> {
  _$UpdateAccountPasswordPolicyRequest? _$v;

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

  UpdateAccountPasswordPolicyRequestBuilder() {
    UpdateAccountPasswordPolicyRequest._init(this);
  }

  UpdateAccountPasswordPolicyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minimumPasswordLength = $v.minimumPasswordLength;
      _requireSymbols = $v.requireSymbols;
      _requireNumbers = $v.requireNumbers;
      _requireUppercaseCharacters = $v.requireUppercaseCharacters;
      _requireLowercaseCharacters = $v.requireLowercaseCharacters;
      _allowUsersToChangePassword = $v.allowUsersToChangePassword;
      _maxPasswordAge = $v.maxPasswordAge;
      _passwordReusePrevention = $v.passwordReusePrevention;
      _hardExpiry = $v.hardExpiry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAccountPasswordPolicyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateAccountPasswordPolicyRequest;
  }

  @override
  void update(
      void Function(UpdateAccountPasswordPolicyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAccountPasswordPolicyRequest build() => _build();

  _$UpdateAccountPasswordPolicyRequest _build() {
    final _$result = _$v ??
        new _$UpdateAccountPasswordPolicyRequest._(
            minimumPasswordLength: minimumPasswordLength,
            requireSymbols: BuiltValueNullFieldError.checkNotNull(
                requireSymbols, r'UpdateAccountPasswordPolicyRequest', 'requireSymbols'),
            requireNumbers: BuiltValueNullFieldError.checkNotNull(
                requireNumbers,
                r'UpdateAccountPasswordPolicyRequest',
                'requireNumbers'),
            requireUppercaseCharacters: BuiltValueNullFieldError.checkNotNull(
                requireUppercaseCharacters,
                r'UpdateAccountPasswordPolicyRequest',
                'requireUppercaseCharacters'),
            requireLowercaseCharacters: BuiltValueNullFieldError.checkNotNull(
                requireLowercaseCharacters,
                r'UpdateAccountPasswordPolicyRequest',
                'requireLowercaseCharacters'),
            allowUsersToChangePassword: BuiltValueNullFieldError.checkNotNull(
                allowUsersToChangePassword,
                r'UpdateAccountPasswordPolicyRequest',
                'allowUsersToChangePassword'),
            maxPasswordAge: maxPasswordAge,
            passwordReusePrevention: passwordReusePrevention,
            hardExpiry: hardExpiry);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
