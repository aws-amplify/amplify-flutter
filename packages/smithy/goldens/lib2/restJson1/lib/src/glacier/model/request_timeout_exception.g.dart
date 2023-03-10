// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.glacier.model.request_timeout_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestTimeoutException extends RequestTimeoutException {
  @override
  final String? code;
  @override
  final String? message;
  @override
  final String? type;
  @override
  final Map<String, String>? headers;

  factory _$RequestTimeoutException(
          [void Function(RequestTimeoutExceptionBuilder)? updates]) =>
      (new RequestTimeoutExceptionBuilder()..update(updates))._build();

  _$RequestTimeoutException._(
      {this.code, this.message, this.type, this.headers})
      : super._();

  @override
  RequestTimeoutException rebuild(
          void Function(RequestTimeoutExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestTimeoutExceptionBuilder toBuilder() =>
      new RequestTimeoutExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestTimeoutException &&
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

class RequestTimeoutExceptionBuilder
    implements
        Builder<RequestTimeoutException, RequestTimeoutExceptionBuilder> {
  _$RequestTimeoutException? _$v;

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

  RequestTimeoutExceptionBuilder() {
    RequestTimeoutException._init(this);
  }

  RequestTimeoutExceptionBuilder get _$this {
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
  void replace(RequestTimeoutException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestTimeoutException;
  }

  @override
  void update(void Function(RequestTimeoutExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestTimeoutException build() => _build();

  _$RequestTimeoutException _build() {
    final _$result = _$v ??
        new _$RequestTimeoutException._(
            code: code, message: message, type: type, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
