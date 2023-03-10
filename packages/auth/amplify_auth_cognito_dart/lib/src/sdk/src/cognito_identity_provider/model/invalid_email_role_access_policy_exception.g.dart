// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.invalid_email_role_access_policy_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidEmailRoleAccessPolicyException
    extends InvalidEmailRoleAccessPolicyException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidEmailRoleAccessPolicyException(
          [void Function(InvalidEmailRoleAccessPolicyExceptionBuilder)?
              updates]) =>
      (new InvalidEmailRoleAccessPolicyExceptionBuilder()..update(updates))
          ._build();

  _$InvalidEmailRoleAccessPolicyException._({this.message, this.headers})
      : super._();

  @override
  InvalidEmailRoleAccessPolicyException rebuild(
          void Function(InvalidEmailRoleAccessPolicyExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidEmailRoleAccessPolicyExceptionBuilder toBuilder() =>
      new InvalidEmailRoleAccessPolicyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidEmailRoleAccessPolicyException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidEmailRoleAccessPolicyExceptionBuilder
    implements
        Builder<InvalidEmailRoleAccessPolicyException,
            InvalidEmailRoleAccessPolicyExceptionBuilder> {
  _$InvalidEmailRoleAccessPolicyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidEmailRoleAccessPolicyExceptionBuilder() {
    InvalidEmailRoleAccessPolicyException._init(this);
  }

  InvalidEmailRoleAccessPolicyExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidEmailRoleAccessPolicyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidEmailRoleAccessPolicyException;
  }

  @override
  void update(
      void Function(InvalidEmailRoleAccessPolicyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidEmailRoleAccessPolicyException build() => _build();

  _$InvalidEmailRoleAccessPolicyException _build() {
    final _$result = _$v ??
        new _$InvalidEmailRoleAccessPolicyException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
