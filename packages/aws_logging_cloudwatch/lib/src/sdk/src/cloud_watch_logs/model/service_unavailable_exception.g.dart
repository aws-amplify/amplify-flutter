// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_unavailable_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceUnavailableException extends ServiceUnavailableException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$ServiceUnavailableException(
          [void Function(ServiceUnavailableExceptionBuilder)? updates]) =>
      (new ServiceUnavailableExceptionBuilder()..update(updates))._build();

  _$ServiceUnavailableException._({this.message, this.statusCode, this.headers})
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
    return other is ServiceUnavailableException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
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

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

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
      _statusCode = $v.statusCode;
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
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
