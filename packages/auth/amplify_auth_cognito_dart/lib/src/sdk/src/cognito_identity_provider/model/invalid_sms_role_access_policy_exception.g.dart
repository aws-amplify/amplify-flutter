// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_sms_role_access_policy_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidSmsRoleAccessPolicyException
    extends InvalidSmsRoleAccessPolicyException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidSmsRoleAccessPolicyException(
          [void Function(InvalidSmsRoleAccessPolicyExceptionBuilder)?
              updates]) =>
      (new InvalidSmsRoleAccessPolicyExceptionBuilder()..update(updates))
          ._build();

  _$InvalidSmsRoleAccessPolicyException._({this.message, this.headers})
      : super._();

  @override
  InvalidSmsRoleAccessPolicyException rebuild(
          void Function(InvalidSmsRoleAccessPolicyExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidSmsRoleAccessPolicyExceptionBuilder toBuilder() =>
      new InvalidSmsRoleAccessPolicyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidSmsRoleAccessPolicyException &&
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

class InvalidSmsRoleAccessPolicyExceptionBuilder
    implements
        Builder<InvalidSmsRoleAccessPolicyException,
            InvalidSmsRoleAccessPolicyExceptionBuilder> {
  _$InvalidSmsRoleAccessPolicyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidSmsRoleAccessPolicyExceptionBuilder() {
    InvalidSmsRoleAccessPolicyException._init(this);
  }

  InvalidSmsRoleAccessPolicyExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidSmsRoleAccessPolicyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidSmsRoleAccessPolicyException;
  }

  @override
  void update(
      void Function(InvalidSmsRoleAccessPolicyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidSmsRoleAccessPolicyException build() => _build();

  _$InvalidSmsRoleAccessPolicyException _build() {
    final _$result = _$v ??
        new _$InvalidSmsRoleAccessPolicyException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
