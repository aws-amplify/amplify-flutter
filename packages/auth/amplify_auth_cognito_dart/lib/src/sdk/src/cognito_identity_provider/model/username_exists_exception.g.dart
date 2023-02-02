// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.username_exists_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UsernameExistsException extends UsernameExistsException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UsernameExistsException(
          [void Function(UsernameExistsExceptionBuilder)? updates]) =>
      (new UsernameExistsExceptionBuilder()..update(updates))._build();

  _$UsernameExistsException._({this.message, this.headers}) : super._();

  @override
  UsernameExistsException rebuild(
          void Function(UsernameExistsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsernameExistsExceptionBuilder toBuilder() =>
      new UsernameExistsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsernameExistsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UsernameExistsExceptionBuilder
    implements
        Builder<UsernameExistsException, UsernameExistsExceptionBuilder> {
  _$UsernameExistsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UsernameExistsExceptionBuilder() {
    UsernameExistsException._init(this);
  }

  UsernameExistsExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsernameExistsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsernameExistsException;
  }

  @override
  void update(void Function(UsernameExistsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsernameExistsException build() => _build();

  _$UsernameExistsException _build() {
    final _$result = _$v ??
        new _$UsernameExistsException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
