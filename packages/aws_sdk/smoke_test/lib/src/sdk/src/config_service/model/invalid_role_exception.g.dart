// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.invalid_role_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidRoleException extends InvalidRoleException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InvalidRoleException(
          [void Function(InvalidRoleExceptionBuilder)? updates]) =>
      (new InvalidRoleExceptionBuilder()..update(updates))._build();

  _$InvalidRoleException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InvalidRoleException rebuild(
          void Function(InvalidRoleExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidRoleExceptionBuilder toBuilder() =>
      new InvalidRoleExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidRoleException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidRoleExceptionBuilder
    implements Builder<InvalidRoleException, InvalidRoleExceptionBuilder> {
  _$InvalidRoleException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidRoleExceptionBuilder() {
    InvalidRoleException._init(this);
  }

  InvalidRoleExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _statusCode = $v.statusCode;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidRoleException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidRoleException;
  }

  @override
  void update(void Function(InvalidRoleExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidRoleException build() => _build();

  _$InvalidRoleException _build() {
    final _$result = _$v ??
        new _$InvalidRoleException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
