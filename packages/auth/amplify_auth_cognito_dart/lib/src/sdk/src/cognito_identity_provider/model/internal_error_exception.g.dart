// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.internal_error_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InternalErrorException extends InternalErrorException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$InternalErrorException(
          [void Function(InternalErrorExceptionBuilder)? updates]) =>
      (new InternalErrorExceptionBuilder()..update(updates))._build();

  _$InternalErrorException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  InternalErrorException rebuild(
          void Function(InternalErrorExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InternalErrorExceptionBuilder toBuilder() =>
      new InternalErrorExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InternalErrorException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InternalErrorExceptionBuilder
    implements Builder<InternalErrorException, InternalErrorExceptionBuilder> {
  _$InternalErrorException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InternalErrorExceptionBuilder() {
    InternalErrorException._init(this);
  }

  InternalErrorExceptionBuilder get _$this {
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
  void replace(InternalErrorException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InternalErrorException;
  }

  @override
  void update(void Function(InternalErrorExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InternalErrorException build() => _build();

  _$InternalErrorException _build() {
    final _$result = _$v ??
        new _$InternalErrorException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
