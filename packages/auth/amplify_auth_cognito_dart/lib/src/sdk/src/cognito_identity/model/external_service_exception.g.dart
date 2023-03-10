// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity.model.external_service_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExternalServiceException extends ExternalServiceException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$ExternalServiceException(
          [void Function(ExternalServiceExceptionBuilder)? updates]) =>
      (new ExternalServiceExceptionBuilder()..update(updates))._build();

  _$ExternalServiceException._({this.message, this.headers}) : super._();

  @override
  ExternalServiceException rebuild(
          void Function(ExternalServiceExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExternalServiceExceptionBuilder toBuilder() =>
      new ExternalServiceExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExternalServiceException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExternalServiceExceptionBuilder
    implements
        Builder<ExternalServiceException, ExternalServiceExceptionBuilder> {
  _$ExternalServiceException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ExternalServiceExceptionBuilder() {
    ExternalServiceException._init(this);
  }

  ExternalServiceExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExternalServiceException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExternalServiceException;
  }

  @override
  void update(void Function(ExternalServiceExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExternalServiceException build() => _build();

  _$ExternalServiceException _build() {
    final _$result = _$v ??
        new _$ExternalServiceException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
