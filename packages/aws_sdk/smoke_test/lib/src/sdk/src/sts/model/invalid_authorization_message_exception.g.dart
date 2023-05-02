// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.sts.model.invalid_authorization_message_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidAuthorizationMessageException
    extends InvalidAuthorizationMessageException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidAuthorizationMessageException(
          [void Function(InvalidAuthorizationMessageExceptionBuilder)?
              updates]) =>
      (new InvalidAuthorizationMessageExceptionBuilder()..update(updates))
          ._build();

  _$InvalidAuthorizationMessageException._({this.message, this.headers})
      : super._();

  @override
  InvalidAuthorizationMessageException rebuild(
          void Function(InvalidAuthorizationMessageExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidAuthorizationMessageExceptionBuilder toBuilder() =>
      new InvalidAuthorizationMessageExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidAuthorizationMessageException &&
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

class InvalidAuthorizationMessageExceptionBuilder
    implements
        Builder<InvalidAuthorizationMessageException,
            InvalidAuthorizationMessageExceptionBuilder> {
  _$InvalidAuthorizationMessageException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidAuthorizationMessageExceptionBuilder() {
    InvalidAuthorizationMessageException._init(this);
  }

  InvalidAuthorizationMessageExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidAuthorizationMessageException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidAuthorizationMessageException;
  }

  @override
  void update(
      void Function(InvalidAuthorizationMessageExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidAuthorizationMessageException build() => _build();

  _$InvalidAuthorizationMessageException _build() {
    final _$result = _$v ??
        new _$InvalidAuthorizationMessageException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
