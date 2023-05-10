// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.password_policy_violation_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordPolicyViolationException
    extends PasswordPolicyViolationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PasswordPolicyViolationException(
          [void Function(PasswordPolicyViolationExceptionBuilder)? updates]) =>
      (new PasswordPolicyViolationExceptionBuilder()..update(updates))._build();

  _$PasswordPolicyViolationException._({this.message, this.headers})
      : super._();

  @override
  PasswordPolicyViolationException rebuild(
          void Function(PasswordPolicyViolationExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordPolicyViolationExceptionBuilder toBuilder() =>
      new PasswordPolicyViolationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordPolicyViolationException &&
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

class PasswordPolicyViolationExceptionBuilder
    implements
        Builder<PasswordPolicyViolationException,
            PasswordPolicyViolationExceptionBuilder> {
  _$PasswordPolicyViolationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PasswordPolicyViolationExceptionBuilder() {
    PasswordPolicyViolationException._init(this);
  }

  PasswordPolicyViolationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordPolicyViolationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordPolicyViolationException;
  }

  @override
  void update(void Function(PasswordPolicyViolationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordPolicyViolationException build() => _build();

  _$PasswordPolicyViolationException _build() {
    final _$result = _$v ??
        new _$PasswordPolicyViolationException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
