// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.expired_code_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExpiredCodeException extends ExpiredCodeException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ExpiredCodeException(
          [void Function(ExpiredCodeExceptionBuilder)? updates]) =>
      (new ExpiredCodeExceptionBuilder()..update(updates))._build();

  _$ExpiredCodeException._({this.message, this.headers}) : super._();

  @override
  ExpiredCodeException rebuild(
          void Function(ExpiredCodeExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpiredCodeExceptionBuilder toBuilder() =>
      new ExpiredCodeExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpiredCodeException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExpiredCodeExceptionBuilder
    implements Builder<ExpiredCodeException, ExpiredCodeExceptionBuilder> {
  _$ExpiredCodeException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ExpiredCodeExceptionBuilder() {
    ExpiredCodeException._init(this);
  }

  ExpiredCodeExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpiredCodeException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpiredCodeException;
  }

  @override
  void update(void Function(ExpiredCodeExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpiredCodeException build() => _build();

  _$ExpiredCodeException _build() {
    final _$result =
        _$v ?? new _$ExpiredCodeException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
