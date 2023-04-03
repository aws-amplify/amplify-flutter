// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.token_already_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TokenAlreadyExistsException extends TokenAlreadyExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$TokenAlreadyExistsException(
          [void Function(TokenAlreadyExistsExceptionBuilder)? updates]) =>
      (new TokenAlreadyExistsExceptionBuilder()..update(updates))._build();

  _$TokenAlreadyExistsException._({this.message, this.headers}) : super._();

  @override
  TokenAlreadyExistsException rebuild(
          void Function(TokenAlreadyExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenAlreadyExistsExceptionBuilder toBuilder() =>
      new TokenAlreadyExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenAlreadyExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TokenAlreadyExistsExceptionBuilder
    implements
        Builder<TokenAlreadyExistsException,
            TokenAlreadyExistsExceptionBuilder> {
  _$TokenAlreadyExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TokenAlreadyExistsExceptionBuilder() {
    TokenAlreadyExistsException._init(this);
  }

  TokenAlreadyExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenAlreadyExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenAlreadyExistsException;
  }

  @override
  void update(void Function(TokenAlreadyExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenAlreadyExistsException build() => _build();

  _$TokenAlreadyExistsException _build() {
    final _$result = _$v ??
        new _$TokenAlreadyExistsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
