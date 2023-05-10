// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.expired_token_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpiredTokenException extends ExpiredTokenException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ExpiredTokenException(
          [void Function(ExpiredTokenExceptionBuilder)? updates]) =>
      (new ExpiredTokenExceptionBuilder()..update(updates))._build();

  _$ExpiredTokenException._({this.message, this.headers}) : super._();

  @override
  ExpiredTokenException rebuild(
          void Function(ExpiredTokenExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpiredTokenExceptionBuilder toBuilder() =>
      new ExpiredTokenExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpiredTokenException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExpiredTokenExceptionBuilder
    implements Builder<ExpiredTokenException, ExpiredTokenExceptionBuilder> {
  _$ExpiredTokenException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ExpiredTokenExceptionBuilder() {
    ExpiredTokenException._init(this);
  }

  ExpiredTokenExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpiredTokenException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpiredTokenException;
  }

  @override
  void update(void Function(ExpiredTokenExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpiredTokenException build() => _build();

  _$ExpiredTokenException _build() {
    final _$result = _$v ??
        new _$ExpiredTokenException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
