// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.too_many_requests_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TooManyRequestsException extends TooManyRequestsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$TooManyRequestsException(
          [void Function(TooManyRequestsExceptionBuilder)? updates]) =>
      (new TooManyRequestsExceptionBuilder()..update(updates))._build();

  _$TooManyRequestsException._({this.message, this.headers}) : super._();

  @override
  TooManyRequestsException rebuild(
          void Function(TooManyRequestsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TooManyRequestsExceptionBuilder toBuilder() =>
      new TooManyRequestsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TooManyRequestsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TooManyRequestsExceptionBuilder
    implements
        Builder<TooManyRequestsException, TooManyRequestsExceptionBuilder> {
  _$TooManyRequestsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TooManyRequestsExceptionBuilder() {
    TooManyRequestsException._init(this);
  }

  TooManyRequestsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TooManyRequestsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TooManyRequestsException;
  }

  @override
  void update(void Function(TooManyRequestsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TooManyRequestsException build() => _build();

  _$TooManyRequestsException _build() {
    final _$result = _$v ??
        new _$TooManyRequestsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
