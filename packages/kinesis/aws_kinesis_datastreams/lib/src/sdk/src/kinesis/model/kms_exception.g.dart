// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kms_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$KmsException extends KmsException {
  @override
  final String? message;
  @override
  final int? statusCode;
  @override
  final Map<String, String>? headers;

  factory _$KmsException([void Function(KmsExceptionBuilder)? updates]) =>
      (new KmsExceptionBuilder()..update(updates))._build();

  _$KmsException._({this.message, this.statusCode, this.headers}) : super._();

  @override
  KmsException rebuild(void Function(KmsExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KmsExceptionBuilder toBuilder() => new KmsExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KmsException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class KmsExceptionBuilder
    implements Builder<KmsException, KmsExceptionBuilder> {
  _$KmsException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _statusCode;
  int? get statusCode => _$this._statusCode;
  set statusCode(int? statusCode) => _$this._statusCode = statusCode;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  KmsExceptionBuilder();

  KmsExceptionBuilder get _$this {
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
  void replace(KmsException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$KmsException;
  }

  @override
  void update(void Function(KmsExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  KmsException build() => _build();

  _$KmsException _build() {
    final _$result = _$v ??
        new _$KmsException._(
          message: message,
          statusCode: statusCode,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
