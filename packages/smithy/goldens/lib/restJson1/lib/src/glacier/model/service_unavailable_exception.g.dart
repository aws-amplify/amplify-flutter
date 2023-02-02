// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.glacier.model.service_unavailable_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceUnavailableException extends ServiceUnavailableException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? type;
  @override
  final Map<String, String>? headers;

  factory _$ServiceUnavailableException(
          [void Function(ServiceUnavailableExceptionBuilder)? updates]) =>
      (new ServiceUnavailableExceptionBuilder()..update(updates))._build();

  _$ServiceUnavailableException._(
      {this.code, this.message, this.type, this.headers})
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
        code == other.code &&
        message == other.message &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServiceUnavailableExceptionBuilder
    implements
        Builder<ServiceUnavailableException,
            ServiceUnavailableExceptionBuilder> {
  _$ServiceUnavailableException? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  ServiceUnavailableExceptionBuilder() {
    ServiceUnavailableException._init(this);
  }

  ServiceUnavailableExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _type = $v.type;
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
            code: code, message: message, type: type, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
