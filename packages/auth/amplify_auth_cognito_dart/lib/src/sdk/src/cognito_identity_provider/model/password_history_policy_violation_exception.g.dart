// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_history_policy_violation_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PasswordHistoryPolicyViolationException
    extends PasswordHistoryPolicyViolationException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$PasswordHistoryPolicyViolationException(
          [void Function(PasswordHistoryPolicyViolationExceptionBuilder)?
              updates]) =>
      (new PasswordHistoryPolicyViolationExceptionBuilder()..update(updates))
          ._build();

  _$PasswordHistoryPolicyViolationException._({this.message, this.headers})
      : super._();

  @override
  PasswordHistoryPolicyViolationException rebuild(
          void Function(PasswordHistoryPolicyViolationExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordHistoryPolicyViolationExceptionBuilder toBuilder() =>
      new PasswordHistoryPolicyViolationExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordHistoryPolicyViolationException &&
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

class PasswordHistoryPolicyViolationExceptionBuilder
    implements
        Builder<PasswordHistoryPolicyViolationException,
            PasswordHistoryPolicyViolationExceptionBuilder> {
  _$PasswordHistoryPolicyViolationException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  PasswordHistoryPolicyViolationExceptionBuilder();

  PasswordHistoryPolicyViolationExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordHistoryPolicyViolationException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordHistoryPolicyViolationException;
  }

  @override
  void update(
      void Function(PasswordHistoryPolicyViolationExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PasswordHistoryPolicyViolationException build() => _build();

  _$PasswordHistoryPolicyViolationException _build() {
    final _$result = _$v ??
        new _$PasswordHistoryPolicyViolationException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
