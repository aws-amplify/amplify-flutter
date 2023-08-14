// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_account_password_policy_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAccountPasswordPolicyResponse
    extends GetAccountPasswordPolicyResponse {
  @override
  final PasswordPolicy passwordPolicy;

  factory _$GetAccountPasswordPolicyResponse(
          [void Function(GetAccountPasswordPolicyResponseBuilder)? updates]) =>
      (new GetAccountPasswordPolicyResponseBuilder()..update(updates))._build();

  _$GetAccountPasswordPolicyResponse._({required this.passwordPolicy})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        passwordPolicy, r'GetAccountPasswordPolicyResponse', 'passwordPolicy');
  }

  @override
  GetAccountPasswordPolicyResponse rebuild(
          void Function(GetAccountPasswordPolicyResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAccountPasswordPolicyResponseBuilder toBuilder() =>
      new GetAccountPasswordPolicyResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAccountPasswordPolicyResponse &&
        passwordPolicy == other.passwordPolicy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passwordPolicy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAccountPasswordPolicyResponseBuilder
    implements
        Builder<GetAccountPasswordPolicyResponse,
            GetAccountPasswordPolicyResponseBuilder> {
  _$GetAccountPasswordPolicyResponse? _$v;

  PasswordPolicyBuilder? _passwordPolicy;
  PasswordPolicyBuilder get passwordPolicy =>
      _$this._passwordPolicy ??= new PasswordPolicyBuilder();
  set passwordPolicy(PasswordPolicyBuilder? passwordPolicy) =>
      _$this._passwordPolicy = passwordPolicy;

  GetAccountPasswordPolicyResponseBuilder();

  GetAccountPasswordPolicyResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passwordPolicy = $v.passwordPolicy.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAccountPasswordPolicyResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAccountPasswordPolicyResponse;
  }

  @override
  void update(void Function(GetAccountPasswordPolicyResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAccountPasswordPolicyResponse build() => _build();

  _$GetAccountPasswordPolicyResponse _build() {
    _$GetAccountPasswordPolicyResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAccountPasswordPolicyResponse._(
              passwordPolicy: passwordPolicy.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'passwordPolicy';
        passwordPolicy.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAccountPasswordPolicyResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
