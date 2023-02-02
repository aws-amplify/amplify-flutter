// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.too_many_failed_attempts_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TooManyFailedAttemptsException extends TooManyFailedAttemptsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$TooManyFailedAttemptsException(
          [void Function(TooManyFailedAttemptsExceptionBuilder)? updates]) =>
      (new TooManyFailedAttemptsExceptionBuilder()..update(updates))._build();

  _$TooManyFailedAttemptsException._({this.message, this.headers}) : super._();

  @override
  TooManyFailedAttemptsException rebuild(
          void Function(TooManyFailedAttemptsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TooManyFailedAttemptsExceptionBuilder toBuilder() =>
      new TooManyFailedAttemptsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TooManyFailedAttemptsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TooManyFailedAttemptsExceptionBuilder
    implements
        Builder<TooManyFailedAttemptsException,
            TooManyFailedAttemptsExceptionBuilder> {
  _$TooManyFailedAttemptsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  TooManyFailedAttemptsExceptionBuilder() {
    TooManyFailedAttemptsException._init(this);
  }

  TooManyFailedAttemptsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TooManyFailedAttemptsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TooManyFailedAttemptsException;
  }

  @override
  void update(void Function(TooManyFailedAttemptsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TooManyFailedAttemptsException build() => _build();

  _$TooManyFailedAttemptsException _build() {
    final _$result = _$v ??
        new _$TooManyFailedAttemptsException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
