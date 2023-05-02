// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.invalid_certificate_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidCertificateException extends InvalidCertificateException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidCertificateException(
          [void Function(InvalidCertificateExceptionBuilder)? updates]) =>
      (new InvalidCertificateExceptionBuilder()..update(updates))._build();

  _$InvalidCertificateException._({this.message, this.headers}) : super._();

  @override
  InvalidCertificateException rebuild(
          void Function(InvalidCertificateExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidCertificateExceptionBuilder toBuilder() =>
      new InvalidCertificateExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidCertificateException && message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidCertificateExceptionBuilder
    implements
        Builder<InvalidCertificateException,
            InvalidCertificateExceptionBuilder> {
  _$InvalidCertificateException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidCertificateExceptionBuilder() {
    InvalidCertificateException._init(this);
  }

  InvalidCertificateExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidCertificateException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidCertificateException;
  }

  @override
  void update(void Function(InvalidCertificateExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidCertificateException build() => _build();

  _$InvalidCertificateException _build() {
    final _$result = _$v ??
        new _$InvalidCertificateException._(message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
