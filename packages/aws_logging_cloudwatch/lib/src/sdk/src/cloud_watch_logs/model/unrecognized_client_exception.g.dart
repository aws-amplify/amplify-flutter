// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unrecognized_client_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnrecognizedClientException extends UnrecognizedClientException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$UnrecognizedClientException(
          [void Function(UnrecognizedClientExceptionBuilder)? updates]) =>
      (new UnrecognizedClientExceptionBuilder()..update(updates))._build();

  _$UnrecognizedClientException._({this.message, this.statusCode, this.headers})
      : super._();

  @override
  UnrecognizedClientException rebuild(
          void Function(UnrecognizedClientExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnrecognizedClientExceptionBuilder toBuilder() =>
      new UnrecognizedClientExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnrecognizedClientException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnrecognizedClientExceptionBuilder
    implements
        Builder<UnrecognizedClientException,
            UnrecognizedClientExceptionBuilder> {
  _$UnrecognizedClientException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UnrecognizedClientExceptionBuilder() {
    UnrecognizedClientException._init(this);
  }

  UnrecognizedClientExceptionBuilder get _$this {
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
  void replace(UnrecognizedClientException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnrecognizedClientException;
  }

  @override
  void update(void Function(UnrecognizedClientExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnrecognizedClientException build() => _build();

  _$UnrecognizedClientException _build() {
    final _$result = _$v ??
        new _$UnrecognizedClientException._(
            message: message, statusCode: statusCode, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
