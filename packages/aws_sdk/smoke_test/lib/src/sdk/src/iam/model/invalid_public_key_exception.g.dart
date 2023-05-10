// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.invalid_public_key_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidPublicKeyException extends InvalidPublicKeyException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidPublicKeyException(
          [void Function(InvalidPublicKeyExceptionBuilder)? updates]) =>
      (new InvalidPublicKeyExceptionBuilder()..update(updates))._build();

  _$InvalidPublicKeyException._({this.message, this.headers}) : super._();

  @override
  InvalidPublicKeyException rebuild(
          void Function(InvalidPublicKeyExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidPublicKeyExceptionBuilder toBuilder() =>
      new InvalidPublicKeyExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidPublicKeyException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidPublicKeyExceptionBuilder
    implements
        Builder<InvalidPublicKeyException, InvalidPublicKeyExceptionBuilder> {
  _$InvalidPublicKeyException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidPublicKeyExceptionBuilder() {
    InvalidPublicKeyException._init(this);
  }

  InvalidPublicKeyExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidPublicKeyException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidPublicKeyException;
  }

  @override
  void update(void Function(InvalidPublicKeyExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidPublicKeyException build() => _build();

  _$InvalidPublicKeyException _build() {
    final _$result = _$v ??
        new _$InvalidPublicKeyException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
