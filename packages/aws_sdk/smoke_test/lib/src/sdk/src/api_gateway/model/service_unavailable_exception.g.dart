// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.service_unavailable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceUnavailableException extends ServiceUnavailableException {
  @override
  final String? message;
  @override
  final String? retryAfterSeconds;
  @override
  final Map<String, String>? headers;

  factory _$ServiceUnavailableException(
          [void Function(ServiceUnavailableExceptionBuilder)? updates]) =>
      (new ServiceUnavailableExceptionBuilder()..update(updates))._build();

  _$ServiceUnavailableException._(
      {this.message, this.retryAfterSeconds, this.headers})
      : super._();

  @override
  ServiceUnavailableException rebuild(
          void Function(ServiceUnavailableExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceUnavailableExceptionBuilder toBuilder() =>
      new ServiceUnavailableExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceUnavailableException &&
        message == other.message &&
        retryAfterSeconds == other.retryAfterSeconds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, retryAfterSeconds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceUnavailableExceptionBuilder
    implements
        Builder<ServiceUnavailableException,
            ServiceUnavailableExceptionBuilder> {
  _$ServiceUnavailableException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _retryAfterSeconds;
  String? get retryAfterSeconds => _$this._retryAfterSeconds;
  set retryAfterSeconds(String? retryAfterSeconds) =>
      _$this._retryAfterSeconds = retryAfterSeconds;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ServiceUnavailableExceptionBuilder() {
    ServiceUnavailableException._init(this);
  }

  ServiceUnavailableExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _retryAfterSeconds = $v.retryAfterSeconds;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceUnavailableException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceUnavailableException;
  }

  @override
  void update(void Function(ServiceUnavailableExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceUnavailableException build() => _build();

  _$ServiceUnavailableException _build() {
    final _$result = _$v ??
        new _$ServiceUnavailableException._(
            message: message,
            retryAfterSeconds: retryAfterSeconds,
            headers: headers);
    replace(_$result);
    return _$result;
  }
}

class _$ServiceUnavailableExceptionPayload
    extends ServiceUnavailableExceptionPayload {
  @override
  final String? message;

  factory _$ServiceUnavailableExceptionPayload(
          [void Function(ServiceUnavailableExceptionPayloadBuilder)?
              updates]) =>
      (new ServiceUnavailableExceptionPayloadBuilder()..update(updates))
          ._build();

  _$ServiceUnavailableExceptionPayload._({this.message}) : super._();

  @override
  ServiceUnavailableExceptionPayload rebuild(
          void Function(ServiceUnavailableExceptionPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceUnavailableExceptionPayloadBuilder toBuilder() =>
      new ServiceUnavailableExceptionPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceUnavailableExceptionPayload &&
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

class ServiceUnavailableExceptionPayloadBuilder
    implements
        Builder<ServiceUnavailableExceptionPayload,
            ServiceUnavailableExceptionPayloadBuilder> {
  _$ServiceUnavailableExceptionPayload? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ServiceUnavailableExceptionPayloadBuilder() {
    ServiceUnavailableExceptionPayload._init(this);
  }

  ServiceUnavailableExceptionPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceUnavailableExceptionPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceUnavailableExceptionPayload;
  }

  @override
  void update(
      void Function(ServiceUnavailableExceptionPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceUnavailableExceptionPayload build() => _build();

  _$ServiceUnavailableExceptionPayload _build() {
    final _$result =
        _$v ?? new _$ServiceUnavailableExceptionPayload._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
