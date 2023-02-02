// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.no_such_conformance_pack_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NoSuchConformancePackException extends NoSuchConformancePackException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$NoSuchConformancePackException(
          [void Function(NoSuchConformancePackExceptionBuilder)? updates]) =>
      (new NoSuchConformancePackExceptionBuilder()..update(updates))._build();

  _$NoSuchConformancePackException._(
      {this.message, this.statusCode, this.headers})
      : super._();

  @override
  NoSuchConformancePackException rebuild(
          void Function(NoSuchConformancePackExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoSuchConformancePackExceptionBuilder toBuilder() =>
      new NoSuchConformancePackExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoSuchConformancePackException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class NoSuchConformancePackExceptionBuilder
    implements
        Builder<NoSuchConformancePackException,
            NoSuchConformancePackExceptionBuilder> {
  _$NoSuchConformancePackException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  NoSuchConformancePackExceptionBuilder() {
    NoSuchConformancePackException._init(this);
  }

  NoSuchConformancePackExceptionBuilder get _$this {
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
  void replace(NoSuchConformancePackException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoSuchConformancePackException;
  }

  @override
  void update(void Function(NoSuchConformancePackExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NoSuchConformancePackException build() => _build();

  _$NoSuchConformancePackException _build() {
    final _$result = _$v ??
        new _$NoSuchConformancePackException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
