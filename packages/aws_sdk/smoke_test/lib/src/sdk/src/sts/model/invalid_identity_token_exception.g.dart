// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.invalid_identity_token_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidIdentityTokenException extends InvalidIdentityTokenException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidIdentityTokenException(
          [void Function(InvalidIdentityTokenExceptionBuilder)? updates]) =>
      (new InvalidIdentityTokenExceptionBuilder()..update(updates))._build();

  _$InvalidIdentityTokenException._({this.message, this.headers}) : super._();

  @override
  InvalidIdentityTokenException rebuild(
          void Function(InvalidIdentityTokenExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidIdentityTokenExceptionBuilder toBuilder() =>
      new InvalidIdentityTokenExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidIdentityTokenException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidIdentityTokenExceptionBuilder
    implements
        Builder<InvalidIdentityTokenException,
            InvalidIdentityTokenExceptionBuilder> {
  _$InvalidIdentityTokenException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidIdentityTokenExceptionBuilder() {
    InvalidIdentityTokenException._init(this);
  }

  InvalidIdentityTokenExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidIdentityTokenException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidIdentityTokenException;
  }

  @override
  void update(void Function(InvalidIdentityTokenExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidIdentityTokenException build() => _build();

  _$InvalidIdentityTokenException _build() {
    final _$result = _$v ??
        new _$InvalidIdentityTokenException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
